@interface HUServiceDetailsCameraStatusLightItem
- (BOOL)_canReadWriteAccessModeIndicator;
- (HUServiceDetailsCameraSettingsReaderWriter)settingsReaderWriter;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)cameraSettings;
- (id)characteristicValueManager;
- (id)itemTitle;
- (id)updateUserSettingsWithValue:(BOOL)a3;
@end

@implementation HUServiceDetailsCameraStatusLightItem

- (HUServiceDetailsCameraSettingsReaderWriter)settingsReaderWriter
{
  settingsReaderWriter = self->_settingsReaderWriter;
  if (!settingsReaderWriter)
  {
    v4 = [[HUServiceDetailsCameraSettingsReaderWriter alloc] initWithConfigurator:self];
    v5 = self->_settingsReaderWriter;
    self->_settingsReaderWriter = v4;

    settingsReaderWriter = self->_settingsReaderWriter;
  }

  v6 = settingsReaderWriter;

  return v6;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HUServiceDetailsCameraStatusLightItem *)self _canReadWriteAccessModeIndicator])
  {
    v5 = [(HUServiceDetailsCameraStatusLightItem *)self settingsReaderWriter];
    v6 = [v5 readWithOptions:v4];
  }

  else
  {
    v7 = MEMORY[0x277D2C900];
    v8 = MEMORY[0x277D14780];
    v12 = *MEMORY[0x277D13FB8];
    v13[0] = MEMORY[0x277CBEC38];
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v10 = [v8 outcomeWithResults:v9];
    v6 = [v7 futureWithResult:v10];
  }

  return v6;
}

- (id)updateUserSettingsWithValue:(BOOL)a3
{
  v3 = a3;
  if ([(HUServiceDetailsCameraStatusLightItem *)self _canReadWriteAccessModeIndicator])
  {
    v5 = [(HUServiceDetailsCameraStatusLightItem *)self settingsReaderWriter];
    v6 = [v5 updateUserSettingsWithValue:v3];
  }

  else
  {
    v6 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v6;
}

- (BOOL)_canReadWriteAccessModeIndicator
{
  objc_opt_class();
  v3 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 profile];
    v7 = [v6 userSettings];
    v8 = ([v7 supportedFeatures] >> 4) & 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)cameraSettings
{
  objc_opt_class();
  v3 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 profile];

  v7 = [v6 userSettings];

  return v7;
}

- (id)itemTitle
{
  v2 = [(HUServiceDetailsCameraStatusLightItem *)self itemTitleLocalizationKey];
  v3 = _HULocalizedStringWithDefaultValue(v2, v2, 1);

  return v3;
}

- (id)characteristicValueManager
{
  v2 = [(HUServiceDetailsAbstractItem *)self home];
  v3 = [v2 hf_characteristicValueManager];

  return v3;
}

@end