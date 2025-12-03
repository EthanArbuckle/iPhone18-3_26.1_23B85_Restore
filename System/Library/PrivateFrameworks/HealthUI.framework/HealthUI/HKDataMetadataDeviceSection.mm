@interface HKDataMetadataDeviceSection
- (HKDataMetadataDeviceSection)initWithSample:(id)sample regulatedFeatureInfoProvider:(id)provider;
- (void)_loadDetailsForSample:(id)sample regulatedFeatureInfoProvider:(id)provider;
@end

@implementation HKDataMetadataDeviceSection

- (HKDataMetadataDeviceSection)initWithSample:(id)sample regulatedFeatureInfoProvider:(id)provider
{
  sampleCopy = sample;
  providerCopy = provider;
  v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v9 = [v8 localizedStringForKey:@"DEVICE_DETAILS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v13.receiver = self;
  v13.super_class = HKDataMetadataDeviceSection;
  v10 = [(HKDataMetadataSimpleSection *)&v13 initWithTitle:v9];

  if (!v10)
  {
    goto LABEL_5;
  }

  device = [sampleCopy device];

  if (device)
  {
    [(HKDataMetadataDeviceSection *)v10 _loadDetailsForSample:sampleCopy regulatedFeatureInfoProvider:providerCopy];
    if ([(HKDataMetadataSimpleSection *)v10 numberOfRowsInSection])
    {
      device = v10;
      goto LABEL_6;
    }

LABEL_5:
    device = 0;
  }

LABEL_6:

  return device;
}

- (void)_loadDetailsForSample:(id)sample regulatedFeatureInfoProvider:(id)provider
{
  v74[2] = *MEMORY[0x1E69E9840];
  sampleCopy = sample;
  providerCopy = provider;
  device = [sampleCopy device];
  sampleType = [sampleCopy sampleType];
  identifier = [sampleType identifier];

  name = [device name];

  if (name)
  {
    name2 = [device name];
    v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v13 = [v12 localizedStringForKey:@"DEVICE_NAME" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v74[0] = identifier;
    v74[1] = @"DeviceName";
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:2];
    v15 = HKUIJoinStringsForAutomationIdentifier(v14);
    [(HKDataMetadataSimpleSection *)self addText:name2 detail:v13 baseIdentifier:v15];
  }

  manufacturer = [device manufacturer];

  if (manufacturer)
  {
    manufacturer2 = [device manufacturer];
    v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v19 = [v18 localizedStringForKey:@"DEVICE_MANUFACTURER" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v73[0] = identifier;
    v73[1] = @"DeviceManufacturer";
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:2];
    v21 = HKUIJoinStringsForAutomationIdentifier(v20);
    [(HKDataMetadataSimpleSection *)self addText:manufacturer2 detail:v19 baseIdentifier:v21];
  }

  model = [device model];

  if (model)
  {
    _connectedGymDeviceTypeName = [device _connectedGymDeviceTypeName];
    v24 = _connectedGymDeviceTypeName;
    if (_connectedGymDeviceTypeName)
    {
      model2 = _connectedGymDeviceTypeName;
    }

    else
    {
      model2 = [device model];
    }

    v26 = model2;

    v27 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v28 = [v27 localizedStringForKey:@"DEVICE_MODEL" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v72[0] = identifier;
    v72[1] = @"DeviceModel";
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:2];
    v30 = HKUIJoinStringsForAutomationIdentifier(v29);
    [(HKDataMetadataSimpleSection *)self addText:v26 detail:v28 baseIdentifier:v30];
  }

  hardwareVersion = [device hardwareVersion];

  if (hardwareVersion)
  {
    hardwareVersion2 = [device hardwareVersion];
    v33 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v34 = [v33 localizedStringForKey:@"DEVICE_HARDWARE_VERS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v71[0] = identifier;
    v71[1] = @"DeviceHardwareVersion";
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:2];
    v36 = HKUIJoinStringsForAutomationIdentifier(v35);
    [(HKDataMetadataSimpleSection *)self addText:hardwareVersion2 detail:v34 baseIdentifier:v36];
  }

  firmwareVersion = [device firmwareVersion];

  if (firmwareVersion)
  {
    firmwareVersion2 = [device firmwareVersion];
    v39 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v40 = [v39 localizedStringForKey:@"DEVICE_FIRMWARE_VERS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v70[0] = identifier;
    v70[1] = @"DeviceFirmwareVersion";
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:2];
    v42 = HKUIJoinStringsForAutomationIdentifier(v41);
    [(HKDataMetadataSimpleSection *)self addText:firmwareVersion2 detail:v40 baseIdentifier:v42];
  }

  softwareVersion = [device softwareVersion];

  if (softwareVersion)
  {
    softwareVersion2 = [device softwareVersion];
    v45 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v46 = [v45 localizedStringForKey:@"DEVICE_SOFTWARE_VERS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v69[0] = identifier;
    v69[1] = @"DeviceSoftwareVersion";
    v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:2];
    v48 = HKUIJoinStringsForAutomationIdentifier(v47);
    [(HKDataMetadataSimpleSection *)self addText:softwareVersion2 detail:v46 baseIdentifier:v48];
  }

  uDIDeviceIdentifier = [device UDIDeviceIdentifier];

  if (uDIDeviceIdentifier)
  {
    uDIDeviceIdentifier2 = [device UDIDeviceIdentifier];
    v51 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v52 = [v51 localizedStringForKey:@"DEVICE_FDA_UDI" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v68[0] = identifier;
    v68[1] = @"DeviceUDI";
    v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:2];
    v54 = HKUIJoinStringsForAutomationIdentifier(v53);
    [(HKDataMetadataSimpleSection *)self addText:uDIDeviceIdentifier2 detail:v52 baseIdentifier:v54];
  }

  v55 = [providerCopy featureVersionForSample:sampleCopy];
  if (v55)
  {
    v56 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v57 = [v56 localizedStringForKey:@"DEVICE_REGULATED_FEATURE_VERS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v67[0] = identifier;
    v67[1] = @"DeviceFeatureVersion";
    v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:2];
    v59 = HKUIJoinStringsForAutomationIdentifier(v58);
    [(HKDataMetadataSimpleSection *)self addText:v55 detail:v57 baseIdentifier:v59];
  }

  v60 = [providerCopy updateVersionForSample:sampleCopy];
  if (v60)
  {
    v61 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v62 = [v61 localizedStringForKey:@"DEVICE_REGULATED_UPDATE_VERS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v66[0] = identifier;
    v66[1] = @"DeviceUpdateVersion";
    v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:2];
    v64 = HKUIJoinStringsForAutomationIdentifier(v63);
    [(HKDataMetadataSimpleSection *)self addText:v60 detail:v62 baseIdentifier:v64];
  }
}

@end