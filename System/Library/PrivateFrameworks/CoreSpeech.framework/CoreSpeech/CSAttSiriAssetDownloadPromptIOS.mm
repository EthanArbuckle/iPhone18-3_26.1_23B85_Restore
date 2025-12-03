@interface CSAttSiriAssetDownloadPromptIOS
- (BOOL)_requireNewAssetsForJSGivenCurrentVTAsset:(id)asset mitigationAsset:(id)mitigationAsset;
- (BOOL)_requireNewAssetsForMagusGivenCurrentAsset:(id)asset;
- (BOOL)checkIfNewAssetRequiredGivenCurrentVTAsset:(id)asset mitigationAsset:(id)mitigationAsset;
- (CSAttSiriAssetDownloadPromptIOS)initWithDelegate:(id)delegate;
- (CSAttSiriAssetDownloadPromptIOSDelegate)delegate;
@end

@implementation CSAttSiriAssetDownloadPromptIOS

- (CSAttSiriAssetDownloadPromptIOSDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_requireNewAssetsForJSGivenCurrentVTAsset:(id)asset mitigationAsset:(id)mitigationAsset
{
  mitigationAssetCopy = mitigationAsset;
  assetCopy = asset;
  v7 = [CSUtils getSiriLanguageWithFallback:@"en-US"];
  v8 = +[CSUtils supportMph];
  v9 = [CSUtils supportsMphForLanguageCode:v7];
  v10 = [CSVoiceTriggerSecondPassConfigDecoder decodeConfigFrom:assetCopy forFirstPassSource:1];

  phraseConfigs = [v10 phraseConfigs];
  v12 = [phraseConfigs count];

  LOBYTE(phraseConfigs) = [mitigationAssetCopy isJSSupported] ^ 1;
  return v8 & v9 & ((v12 < 2) | phraseConfigs);
}

- (BOOL)_requireNewAssetsForMagusGivenCurrentAsset:(id)asset
{
  assetCopy = asset;
  v4 = [CSUtils getSiriLanguageWithFallback:@"en-US"];
  v5 = +[CSUtils isIOSDeviceSupportingBargeIn];
  v6 = [CSUtils supportsMagusForLanguageCode:v4];
  isMagusSupported = [assetCopy isMagusSupported];

  v8 = +[CSFPreferences sharedPreferences];
  isFlexibleFollowupsUserDisabled = [v8 isFlexibleFollowupsUserDisabled];

  return ~(isMagusSupported | ~(v5 & v6) | isFlexibleFollowupsUserDisabled);
}

- (BOOL)checkIfNewAssetRequiredGivenCurrentVTAsset:(id)asset mitigationAsset:(id)mitigationAsset
{
  assetCopy = asset;
  mitigationAssetCopy = mitigationAsset;
  if ([(CSAttSiriAssetDownloadPromptIOS *)self _requireNewAssetsForJSGivenCurrentVTAsset:assetCopy mitigationAsset:mitigationAssetCopy]|| [(CSAttSiriAssetDownloadPromptIOS *)self _requireNewAssetsForMagusGivenCurrentAsset:mitigationAssetCopy])
  {
    v8 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      configVersion = [assetCopy configVersion];
      configVersion2 = [mitigationAssetCopy configVersion];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v20 = 136315906;
      v21 = "[CSAttSiriAssetDownloadPromptIOS checkIfNewAssetRequiredGivenCurrentVTAsset:mitigationAsset:]";
      v22 = 2112;
      v23 = configVersion;
      v24 = 2112;
      v25 = configVersion2;
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

- (CSAttSiriAssetDownloadPromptIOS)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = CSAttSiriAssetDownloadPromptIOS;
  v5 = [(CSAttSiriAssetDownloadPromptIOS *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

@end