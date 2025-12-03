@interface HUServiceDetailsCameraAllowSnapshotsItem
- (BOOL)_canReadWriteHMCameraSnapshotsControl;
- (HUServiceDetailsCameraAllowSnapshotsItem)initWithSourceServiceItem:(id)item home:(id)home shouldBeHidden:(BOOL)hidden;
- (HUServiceDetailsCameraSettingsReaderWriter)settingsReaderWriter;
- (id)_subclass_updateWithOptions:(id)options;
- (id)cameraSettings;
- (id)characteristicValueManager;
- (id)itemTitle;
- (id)updateUserSettingsWithValue:(BOOL)value;
@end

@implementation HUServiceDetailsCameraAllowSnapshotsItem

- (HUServiceDetailsCameraAllowSnapshotsItem)initWithSourceServiceItem:(id)item home:(id)home shouldBeHidden:(BOOL)hidden
{
  v7.receiver = self;
  v7.super_class = HUServiceDetailsCameraAllowSnapshotsItem;
  result = [(HUServiceDetailsAbstractItem *)&v7 initWithSourceServiceItem:item home:home];
  if (result)
  {
    result->_shouldBeHidden = hidden;
  }

  return result;
}

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

- (id)_subclass_updateWithOptions:(id)options
{
  v13[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  if ([(HUServiceDetailsCameraAllowSnapshotsItem *)self _canReadWriteHMCameraSnapshotsControl])
  {
    settingsReaderWriter = [(HUServiceDetailsCameraAllowSnapshotsItem *)self settingsReaderWriter];
    v6 = [settingsReaderWriter readWithOptions:optionsCopy];
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

- (id)updateUserSettingsWithValue:(BOOL)value
{
  valueCopy = value;
  if ([(HUServiceDetailsCameraAllowSnapshotsItem *)self _canReadWriteHMCameraSnapshotsControl])
  {
    settingsReaderWriter = [(HUServiceDetailsCameraAllowSnapshotsItem *)self settingsReaderWriter];
    futureWithNoResult = [settingsReaderWriter updateUserSettingsWithValue:valueCopy];
  }

  else
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return futureWithNoResult;
}

- (BOOL)_canReadWriteHMCameraSnapshotsControl
{
  objc_opt_class();
  sourceServiceItem = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = sourceServiceItem;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  shouldBeHidden = [(HUServiceDetailsCameraAllowSnapshotsItem *)self shouldBeHidden];
  LOBYTE(self) = 0;
  if (!shouldBeHidden && v5)
  {
    profile = [v5 profile];
    userSettings = [profile userSettings];
    self = (([userSettings supportedFeatures] >> 5) & 1);
  }

  return self;
}

- (id)cameraSettings
{
  objc_opt_class();
  sourceServiceItem = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = sourceServiceItem;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  profile = [v5 profile];

  userSettings = [profile userSettings];

  return userSettings;
}

- (id)itemTitle
{
  itemTitleLocalizationKey = [(HUServiceDetailsCameraAllowSnapshotsItem *)self itemTitleLocalizationKey];
  v3 = _HULocalizedStringWithDefaultValue(itemTitleLocalizationKey, itemTitleLocalizationKey, 1);

  return v3;
}

- (id)characteristicValueManager
{
  home = [(HUServiceDetailsAbstractItem *)self home];
  hf_characteristicValueManager = [home hf_characteristicValueManager];

  return hf_characteristicValueManager;
}

@end