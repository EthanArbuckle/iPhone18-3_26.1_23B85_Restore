@interface CSAttSiriAssetDownloadPromptIOS
- (BOOL)_requireNewAssetsForJSGivenCurrentVTAsset:(id)a3 mitigationAsset:(id)a4;
- (BOOL)_requireNewAssetsForMagusGivenCurrentAsset:(id)a3;
- (BOOL)checkIfNewAssetRequiredGivenCurrentVTAsset:(id)a3 mitigationAsset:(id)a4;
- (CSAttSiriAssetDownloadPromptIOS)initWithDelegate:(id)a3;
- (CSAttSiriAssetDownloadPromptIOSDelegate)delegate;
@end

@implementation CSAttSiriAssetDownloadPromptIOS

- (CSAttSiriAssetDownloadPromptIOSDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_requireNewAssetsForJSGivenCurrentVTAsset:(id)a3 mitigationAsset:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [CSUtils getSiriLanguageWithFallback:@"en-US"];
  v8 = +[CSUtils supportMph];
  v9 = [CSUtils supportsMphForLanguageCode:v7];
  v10 = [CSVoiceTriggerSecondPassConfigDecoder decodeConfigFrom:v6 forFirstPassSource:1];

  v11 = [v10 phraseConfigs];
  v12 = [v11 count];

  LOBYTE(v11) = [v5 isJSSupported] ^ 1;
  return v8 & v9 & ((v12 < 2) | v11);
}

- (BOOL)_requireNewAssetsForMagusGivenCurrentAsset:(id)a3
{
  v3 = a3;
  v4 = [CSUtils getSiriLanguageWithFallback:@"en-US"];
  v5 = +[CSUtils isIOSDeviceSupportingBargeIn];
  v6 = [CSUtils supportsMagusForLanguageCode:v4];
  v7 = [v3 isMagusSupported];

  v8 = +[CSFPreferences sharedPreferences];
  v9 = [v8 isFlexibleFollowupsUserDisabled];

  return ~(v7 | ~(v5 & v6) | v9);
}

- (BOOL)checkIfNewAssetRequiredGivenCurrentVTAsset:(id)a3 mitigationAsset:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CSAttSiriAssetDownloadPromptIOS *)self _requireNewAssetsForJSGivenCurrentVTAsset:v6 mitigationAsset:v7]|| [(CSAttSiriAssetDownloadPromptIOS *)self _requireNewAssetsForMagusGivenCurrentAsset:v7])
  {
    v8 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [v6 configVersion];
      v11 = [v7 configVersion];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v20 = 136315906;
      v21 = "[CSAttSiriAssetDownloadPromptIOS checkIfNewAssetRequiredGivenCurrentVTAsset:mitigationAsset:]";
      v22 = 2112;
      v23 = v10;
      v24 = 2112;
      v25 = v11;
      v26 = 2112;
      v27 = WeakRetained;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s Requesting asset update, VT asset version: %@ Mitigation asset version: %@, sending to delegate %@", &v20, 0x2Au);
    }

    v13 = objc_loadWeakRetained(&self->_delegate);
    if (v13)
    {
      v14 = v13;
      v15 = objc_loadWeakRetained(&self->_delegate);
      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        v17 = objc_loadWeakRetained(&self->_delegate);
        [v17 assetUpdatedRequired];
      }
    }

    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (CSAttSiriAssetDownloadPromptIOS)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CSAttSiriAssetDownloadPromptIOS;
  v5 = [(CSAttSiriAssetDownloadPromptIOS *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

@end