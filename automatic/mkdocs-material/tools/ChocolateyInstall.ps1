﻿Update-SessionEnvironment

$version = '9.0.5'

$proxy = Get-EffectiveProxy
if ($proxy) {
  Write-Host "Setting CLI proxy: $proxy"
  $env:http_proxy = $env:https_proxy = $proxy
}
python -m pip install mkdocs-material==$version
