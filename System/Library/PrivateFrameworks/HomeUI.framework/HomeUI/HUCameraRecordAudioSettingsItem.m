@interface HUCameraRecordAudioSettingsItem
- (BOOL)_canReadWriteCameraRecordingSettings;
- (HUCameraRecordAudioSettingsItem)init;
- (HUCameraRecordAudioSettingsItem)initWithCameraProfile:(id)a3;
- (HUServiceDetailsCameraSettingsReaderWriter)settingsReaderWriter;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)cameraSettings;
- (id)characteristicValueManager;
- (id)itemTitle;
- (id)updateRecordAudioSettingWithValue:(BOOL)a3;
@end

@implementation HUCameraRecordAudioSettingsItem

- (HUCameraRecordAudioSettingsItem)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HUCameraRecordAudioSettingsItem.m" lineNumber:23 description:@"Use -initWithSourceServiceItem:"];

  return 0;
}

- (HUCameraRecordAudioSettingsItem)initWithCameraProfile:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HUCameraRecordAudioSettingsItem;
  v5 = [(HUCameraRecordAudioSettingsItem *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(HUCameraRecordAudioSettingsItem *)v5 setCameraProfile:v4];
    v7 = [v4 accessory];
    v8 = [v7 home];
    [(HUCameraRecordAudioSettingsItem *)v6 setHome:v8];
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

- (id)_subclass_updateWithOptions:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HUCameraRecordAudioSettingsItem *)self _canReadWriteCameraRecordingSettings])
  {
    v5 = [(HUCameraRecordAudioSettingsItem *)self settingsReaderWriter];
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

- (id)updateRecordAudioSettingWithValue:(BOOL)a3
{
  v3 = a3;
  if ([(HUCameraRecordAudioSettingsItem *)self _canReadWriteCameraRecordingSettings])
  {
    v5 = [(HUCameraRecordAudioSettingsItem *)self settingsReaderWriter];
    v6 = [v5 updateUserSettingsWithValue:v3];
  }

  else
  {
    v6 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v6;
}

- (BOOL)_canReadWriteCameraRecordingSettings
{
  v2 = [(HUCameraRecordAudioSettingsItem *)self cameraProfile];
  v3 = [v2 userSettings];
  v4 = ([v3 supportedFeatures] >> 1) & 1;

  return v4;
}

- (id)cameraSettings
{
  v2 = [(HUCameraRecordAudioSettingsItem *)self cameraProfile];
  v3 = [v2 userSettings];

  return v3;
}

- (id)itemTitle
{
  v2 = [(HUCameraRecordAudioSettingsItem *)self itemTitleLocalizationKey];
  v3 = _HULocalizedStringWithDefaultValue(v2, v2, 1);

  return v3;
}

- (id)characteristicValueManager
{
  v2 = [(HUCameraRecordAudioSettingsItem *)self home];
  v3 = [v2 hf_characteristicValueManager];

  return v3;
}

@end