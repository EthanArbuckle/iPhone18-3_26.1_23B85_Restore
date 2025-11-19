@interface HKDataMetadataDeviceSection
- (HKDataMetadataDeviceSection)initWithSample:(id)a3 regulatedFeatureInfoProvider:(id)a4;
- (void)_loadDetailsForSample:(id)a3 regulatedFeatureInfoProvider:(id)a4;
@end

@implementation HKDataMetadataDeviceSection

- (HKDataMetadataDeviceSection)initWithSample:(id)a3 regulatedFeatureInfoProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v9 = [v8 localizedStringForKey:@"DEVICE_DETAILS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v13.receiver = self;
  v13.super_class = HKDataMetadataDeviceSection;
  v10 = [(HKDataMetadataSimpleSection *)&v13 initWithTitle:v9];

  if (!v10)
  {
    goto LABEL_5;
  }

  v11 = [v6 device];

  if (v11)
  {
    [(HKDataMetadataDeviceSection *)v10 _loadDetailsForSample:v6 regulatedFeatureInfoProvider:v7];
    if ([(HKDataMetadataSimpleSection *)v10 numberOfRowsInSection])
    {
      v11 = v10;
      goto LABEL_6;
    }

LABEL_5:
    v11 = 0;
  }

LABEL_6:

  return v11;
}

- (void)_loadDetailsForSample:(id)a3 regulatedFeatureInfoProvider:(id)a4
{
  v74[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v65 = a4;
  v7 = [v6 device];
  v8 = [v6 sampleType];
  v9 = [v8 identifier];

  v10 = [v7 name];

  if (v10)
  {
    v11 = [v7 name];
    v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v13 = [v12 localizedStringForKey:@"DEVICE_NAME" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v74[0] = v9;
    v74[1] = @"DeviceName";
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:2];
    v15 = HKUIJoinStringsForAutomationIdentifier(v14);
    [(HKDataMetadataSimpleSection *)self addText:v11 detail:v13 baseIdentifier:v15];
  }

  v16 = [v7 manufacturer];

  if (v16)
  {
    v17 = [v7 manufacturer];
    v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v19 = [v18 localizedStringForKey:@"DEVICE_MANUFACTURER" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v73[0] = v9;
    v73[1] = @"DeviceManufacturer";
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:2];
    v21 = HKUIJoinStringsForAutomationIdentifier(v20);
    [(HKDataMetadataSimpleSection *)self addText:v17 detail:v19 baseIdentifier:v21];
  }

  v22 = [v7 model];

  if (v22)
  {
    v23 = [v7 _connectedGymDeviceTypeName];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = [v7 model];
    }

    v26 = v25;

    v27 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v28 = [v27 localizedStringForKey:@"DEVICE_MODEL" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v72[0] = v9;
    v72[1] = @"DeviceModel";
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:2];
    v30 = HKUIJoinStringsForAutomationIdentifier(v29);
    [(HKDataMetadataSimpleSection *)self addText:v26 detail:v28 baseIdentifier:v30];
  }

  v31 = [v7 hardwareVersion];

  if (v31)
  {
    v32 = [v7 hardwareVersion];
    v33 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v34 = [v33 localizedStringForKey:@"DEVICE_HARDWARE_VERS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v71[0] = v9;
    v71[1] = @"DeviceHardwareVersion";
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:2];
    v36 = HKUIJoinStringsForAutomationIdentifier(v35);
    [(HKDataMetadataSimpleSection *)self addText:v32 detail:v34 baseIdentifier:v36];
  }

  v37 = [v7 firmwareVersion];

  if (v37)
  {
    v38 = [v7 firmwareVersion];
    v39 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v40 = [v39 localizedStringForKey:@"DEVICE_FIRMWARE_VERS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v70[0] = v9;
    v70[1] = @"DeviceFirmwareVersion";
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:2];
    v42 = HKUIJoinStringsForAutomationIdentifier(v41);
    [(HKDataMetadataSimpleSection *)self addText:v38 detail:v40 baseIdentifier:v42];
  }

  v43 = [v7 softwareVersion];

  if (v43)
  {
    v44 = [v7 softwareVersion];
    v45 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v46 = [v45 localizedStringForKey:@"DEVICE_SOFTWARE_VERS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v69[0] = v9;
    v69[1] = @"DeviceSoftwareVersion";
    v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:2];
    v48 = HKUIJoinStringsForAutomationIdentifier(v47);
    [(HKDataMetadataSimpleSection *)self addText:v44 detail:v46 baseIdentifier:v48];
  }

  v49 = [v7 UDIDeviceIdentifier];

  if (v49)
  {
    v50 = [v7 UDIDeviceIdentifier];
    v51 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v52 = [v51 localizedStringForKey:@"DEVICE_FDA_UDI" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v68[0] = v9;
    v68[1] = @"DeviceUDI";
    v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:2];
    v54 = HKUIJoinStringsForAutomationIdentifier(v53);
    [(HKDataMetadataSimpleSection *)self addText:v50 detail:v52 baseIdentifier:v54];
  }

  v55 = [v65 featureVersionForSample:v6];
  if (v55)
  {
    v56 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v57 = [v56 localizedStringForKey:@"DEVICE_REGULATED_FEATURE_VERS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v67[0] = v9;
    v67[1] = @"DeviceFeatureVersion";
    v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:2];
    v59 = HKUIJoinStringsForAutomationIdentifier(v58);
    [(HKDataMetadataSimpleSection *)self addText:v55 detail:v57 baseIdentifier:v59];
  }

  v60 = [v65 updateVersionForSample:v6];
  if (v60)
  {
    v61 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v62 = [v61 localizedStringForKey:@"DEVICE_REGULATED_UPDATE_VERS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v66[0] = v9;
    v66[1] = @"DeviceUpdateVersion";
    v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:2];
    v64 = HKUIJoinStringsForAutomationIdentifier(v63);
    [(HKDataMetadataSimpleSection *)self addText:v60 detail:v62 baseIdentifier:v64];
  }
}

@end