@interface HUCameraRecordAudioSettingsItem
- (BOOL)_canReadWriteCameraRecordingSettings;
- (HUCameraRecordAudioSettingsItem)init;
- (HUCameraRecordAudioSettingsItem)initWithCameraProfile:(id)profile;
- (HUServiceDetailsCameraSettingsReaderWriter)settingsReaderWriter;
- (id)_subclass_updateWithOptions:(id)options;
- (id)cameraSettings;
- (id)characteristicValueManager;
- (id)itemTitle;
- (id)updateRecordAudioSettingWithValue:(BOOL)value;
@end

@implementation HUCameraRecordAudioSettingsItem

- (HUCameraRecordAudioSettingsItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUCameraRecordAudioSettingsItem.m" lineNumber:23 description:@"Use -initWithSourceServiceItem:"];

  return 0;
}

- (HUCameraRecordAudioSettingsItem)initWithCameraProfile:(id)profile
{
  profileCopy = profile;
  v10.receiver = self;
  v10.super_class = HUCameraRecordAudioSettingsItem;
  v5 = [(HUCameraRecordAudioSettingsItem *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(HUCameraRecordAudioSettingsItem *)v5 setCameraProfile:profileCopy];
    accessory = [profileCopy accessory];
    home = [accessory home];
    [(HUCameraRecordAudioSettingsItem *)v6 setHome:home];
  }

  return v6;
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
  if ([(HUCameraRecordAudioSettingsItem *)self _canReadWriteCameraRecordingSettings])
  {
    settingsReaderWriter = [(HUCameraRecordAudioSettingsItem *)self settingsReaderWriter];
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

- (id)updateRecordAudioSettingWithValue:(BOOL)value
{
  valueCopy = value;
  if ([(HUCameraRecordAudioSettingsItem *)self _canReadWriteCameraRecordingSettings])
  {
    settingsReaderWriter = [(HUCameraRecordAudioSettingsItem *)self settingsReaderWriter];
    futureWithNoResult = [settingsReaderWriter updateUserSettingsWithValue:valueCopy];
  }

  else
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return futureWithNoResult;
}

- (BOOL)_canReadWriteCameraRecordingSettings
{
  cameraProfile = [(HUCameraRecordAudioSettingsItem *)self cameraProfile];
  userSettings = [cameraProfile userSettings];
  v4 = ([userSettings supportedFeatures] >> 1) & 1;

  return v4;
}

- (id)cameraSettings
{
  cameraProfile = [(HUCameraRecordAudioSettingsItem *)self cameraProfile];
  userSettings = [cameraProfile userSettings];

  return userSettings;
}

- (id)itemTitle
{
  itemTitleLocalizationKey = [(HUCameraRecordAudioSettingsItem *)self itemTitleLocalizationKey];
  v3 = _HULocalizedStringWithDefaultValue(itemTitleLocalizationKey, itemTitleLocalizationKey, 1);

  return v3;
}

- (id)characteristicValueManager
{
  home = [(HUCameraRecordAudioSettingsItem *)self home];
  hf_characteristicValueManager = [home hf_characteristicValueManager];

  return hf_characteristicValueManager;
}

@end