@interface CSSmartSiriVolumeUserIntent
- (CSSmartSiriVolumeUserIntent)initWithStoredInformationAndAsset:(id)asset;
- (double)applyLowerAndUpperBoundsToVolume:(float)volume;
- (double)applyLowerAndUpperBoundsToVolumeOffset:(float)offset;
- (float)decreaseSiriVolumeBasedOnUserIntent;
- (float)increaseSiriVolumeBasedOnUserIntent;
- (void)storeASVStateInformation;
@end

@implementation CSSmartSiriVolumeUserIntent

- (double)applyLowerAndUpperBoundsToVolumeOffset:(float)offset
{
  v3 = fminf(fmaxf(offset, self->kSSVCAUserIntentPermanentOffsetFactorLowerBound), self->kSSVCAUserIntentPermanentOffsetFactorUpperBound);
  v4 = CSLogCategoryASV;
  if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[CSSmartSiriVolumeUserIntent applyLowerAndUpperBoundsToVolumeOffset:]";
    v8 = 2050;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s TTS volume offset post lower and upper bounds is: %{public}f", &v6, 0x16u);
  }

  return v3;
}

- (void)storeASVStateInformation
{
  v3 = +[CSFPreferences sharedPreferences];
  [v3 setASVUserIntent:self];
}

- (float)decreaseSiriVolumeBasedOnUserIntent
{
  *&v2 = self->_latestVolume * self->kSSVCAUserIntentVolumeDecreaseFactor;
  [(CSSmartSiriVolumeUserIntent *)self applyLowerAndUpperBoundsToVolume:v2];
  return v3;
}

- (float)increaseSiriVolumeBasedOnUserIntent
{
  *&v2 = self->_latestVolume * self->kSSVCAUserIntentVolumeIncreaseFactor;
  [(CSSmartSiriVolumeUserIntent *)self applyLowerAndUpperBoundsToVolume:v2];
  return v3;
}

- (CSSmartSiriVolumeUserIntent)initWithStoredInformationAndAsset:(id)asset
{
  assetCopy = asset;
  self->kSSVCAUserIntentValidForSeconds = [assetCopy SSVCAUserIntentValidForSeconds];
  [assetCopy SSVCAUserIntentVolumeIncreaseFactor];
  self->kSSVCAUserIntentVolumeIncreaseFactor = v5;
  [assetCopy SSVCAUserIntentVolumeDecreaseFactor];
  self->kSSVCAUserIntentVolumeDecreaseFactor = v6;
  [assetCopy SSVCAUserIntentPermanentOffsetFactorDelta];
  self->kSSVCAUserIntentPermanentOffsetFactorDelta = v7;
  [assetCopy SSVCAUserIntentPermanentOffsetFactorLowerBound];
  self->kSSVCAUserIntentPermanentOffsetFactorLowerBound = v8;
  [assetCopy SSVCAUserIntentPermanentOffsetFactorUpperBound];
  self->kSSVCAUserIntentPermanentOffsetFactorUpperBound = v9;
  [assetCopy SSVCADeviceSimpleMinTTSVolume];
  self->kSSVCA_DEVICE_SIMPLE_MIN_TTS_VOLUME = v10;
  [assetCopy SSVCADeviceSimpleMaxTTSVolume];
  self->kSSVCA_DEVICE_SIMPLE_MAX_TTS_VOLUME = v11;
  [assetCopy SSVCADeviceDefaultMinTTSVolume];
  self->kSSVCA_DEVICE_DEFAULT_MIN_TTS_VOLUME = v12;
  [assetCopy SSVCADeviceDefaultMaxTTSVolume];
  v14 = v13;

  self->kSSVCA_DEVICE_DEFAULT_MAX_TTS_VOLUME = v14;
  v15 = +[CSFPreferences sharedPreferences];
  [v15 getASVUserIntent:self];

  kSSVCAUserIntentValidForSeconds = self->kSSVCAUserIntentValidForSeconds;

  return [(CSSmartSiriVolumeUserIntent *)self setUserIntentValidForSeconds:kSSVCAUserIntentValidForSeconds];
}

- (double)applyLowerAndUpperBoundsToVolume:(float)volume
{
  v5 = +[CSUtils horsemanDeviceType];
  v6 = 36;
  if (v5 == 1)
  {
    v6 = 44;
  }

  v7 = 40;
  if (v5 == 1)
  {
    v7 = 48;
  }

  v8 = fminf(fmaxf(volume, *(&self->super.isa + v6)), *(&self->super.isa + v7));
  v9 = CSLogCategoryASV;
  if (os_log_type_enabled(CSLogCategoryASV, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[CSSmartSiriVolumeUserIntent applyLowerAndUpperBoundsToVolume:]";
    v13 = 2048;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s SmartSiriVolumeContextAware TTS volume post lower and upper bounds is: %f", &v11, 0x16u);
  }

  return v8;
}

@end