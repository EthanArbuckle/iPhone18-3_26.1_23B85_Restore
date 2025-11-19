@interface HUCameraStorageDurationHeaderItemProvider
- (HUCameraStorageDurationHeaderItemProvider)initWithCameraProfiles:(id)a3 displayStyle:(unint64_t)a4;
- (HUCameraStorageDurationHeaderItemProvider)initWithItems:(id)a3;
- (id)invalidationReasons;
@end

@implementation HUCameraStorageDurationHeaderItemProvider

- (HUCameraStorageDurationHeaderItemProvider)initWithCameraProfiles:(id)a3 displayStyle:(unint64_t)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  v7 = objc_alloc(MEMORY[0x277D14B38]);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __81__HUCameraStorageDurationHeaderItemProvider_initWithCameraProfiles_displayStyle___block_invoke;
  v15[3] = &unk_277DB7448;
  objc_copyWeak(&v16, &location);
  v8 = [v7 initWithResultsBlock:v15];
  v9 = [MEMORY[0x277CBEB98] setWithObject:v8];
  v14.receiver = self;
  v14.super_class = HUCameraStorageDurationHeaderItemProvider;
  v10 = [(HFStaticItemProvider *)&v14 initWithItems:v9];

  if (v10)
  {
    v11 = [v6 copy];
    cameraProfiles = v10->_cameraProfiles;
    v10->_cameraProfiles = v11;

    v10->_displayStyle = a4;
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v10;
}

id __81__HUCameraStorageDurationHeaderItemProvider_initWithCameraProfiles_displayStyle___block_invoke(uint64_t a1)
{
  v14[3] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained displayStyle];

  switch(v2)
  {
    case 1:
      v3 = _HULocalizedStringWithDefaultValue(@"HUCameraRecordingSettingsHeaderDisplayStyleOnboarding_Header", @"HUCameraRecordingSettingsHeaderDisplayStyleOnboarding_Header", 1);
      v5 = _HULocalizedStringWithDefaultValue(@"HUCameraRecordingSettingsHeaderDisplayStyleOnboarding_Body", @"HUCameraRecordingSettingsHeaderDisplayStyleOnboarding_Body", 1);
      v6 = 1;
      goto LABEL_7;
    case 2:
      v3 = _HULocalizedStringWithDefaultValue(@"HUCameraRecordingSettingsHeaderDisplayStyleSetup_Header", @"HUCameraRecordingSettingsHeaderDisplayStyleSetup_Header", 1);
      v5 = _HULocalizedStringWithDefaultValue(@"HUCameraRecordingSettingsHeaderDisplayStyleSetup_Body", @"HUCameraRecordingSettingsHeaderDisplayStyleSetup_Body", 1);
      v6 = 2;
LABEL_7:
      v4 = HUCameraBuildHeaderAttributedString(v6, v3, v5);

      goto LABEL_8;
    case 3:
      v3 = _HULocalizedStringWithDefaultValue(@"HUCameraRecordingSettingsHeaderDisplayStyleServiceDetails", @"HUCameraRecordingSettingsHeaderDisplayStyleServiceDetails", 1);
      v4 = HUCameraBuildHeaderAttributedString(3, v3, 0);
LABEL_8:

      goto LABEL_10;
  }

  v4 = objc_opt_new();
LABEL_10:
  v7 = *MEMORY[0x277D13E20];
  v14[0] = v4;
  v8 = *MEMORY[0x277D13FB8];
  v13[0] = v7;
  v13[1] = v8;
  v9 = [MEMORY[0x277CCABB0] numberWithInt:v2 == 0];
  v13[2] = *MEMORY[0x277D13FF0];
  v14[1] = v9;
  v14[2] = &unk_282492258;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];

  v11 = [MEMORY[0x277D2C900] futureWithResult:v10];

  return v11;
}

- (HUCameraStorageDurationHeaderItemProvider)initWithItems:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithCameraProfiles_displayStyle_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUCameraStorageDurationHeaderItemProvider.m" lineNumber:67 description:{@"%s is unavailable; use %@ instead", "-[HUCameraStorageDurationHeaderItemProvider initWithItems:]", v6}];

  return 0;
}

- (id)invalidationReasons
{
  v5.receiver = self;
  v5.super_class = HUCameraStorageDurationHeaderItemProvider;
  v2 = [(HFItemProvider *)&v5 invalidationReasons];
  v3 = [v2 setByAddingObject:*MEMORY[0x277D13B28]];

  return v3;
}

@end