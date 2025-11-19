@interface HKHealthSettingsMedicalIDCallToActionTableViewController
- (HKHealthSettingsMedicalIDCallToActionTableViewController)initWithHealthSettingsProfile:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_createMedicalIDTapped:(id)a3;
- (void)viewDidLoad;
@end

@implementation HKHealthSettingsMedicalIDCallToActionTableViewController

- (HKHealthSettingsMedicalIDCallToActionTableViewController)initWithHealthSettingsProfile:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HKHealthSettingsMedicalIDCallToActionTableViewController;
  v6 = [(HKHealthSettingsMedicalIDCallToActionTableViewController *)&v11 initWithStyle:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthSettingsProfile, a3);
    v8 = [v5 healthStore];
    healthStore = v7->_healthStore;
    v7->_healthStore = v8;
  }

  return v7;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = HKHealthSettingsMedicalIDCallToActionTableViewController;
  [(HKHealthSettingsMedicalIDCallToActionTableViewController *)&v10 viewDidLoad];
  v3 = [(HKHealthSettingsMedicalIDCallToActionTableViewController *)self tableView];
  [v3 _setSectionContentInsetFollowsLayoutMargins:1];

  v4 = *MEMORY[0x277D12798];
  v5 = [(HKHealthSettingsMedicalIDCallToActionTableViewController *)self tableView];
  [v5 _setSectionCornerRadius:v4];

  v6 = [(HKHealthSettingsMedicalIDCallToActionTableViewController *)self tableView];
  [v6 setPreservesSuperviewLayoutMargins:1];

  v7 = [(HKHealthSettingsMedicalIDCallToActionTableViewController *)self tableView];
  v8 = objc_opt_class();
  v9 = [MEMORY[0x277D12928] defaultReuseIdentifier];
  [v7 registerClass:v8 forCellReuseIdentifier:v9];
}

- (void)_createMedicalIDTapped:(id)a3
{
  v4 = [(HKHealthStore *)self->_healthStore profileIdentifier];
  v5 = [v4 type];

  if (v5 == 3)
  {
    v9 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"bridge:root=ActiveWatch"];
    v6 = [MEMORY[0x277CC1E80] defaultWorkspace];
    [v6 openSensitiveURL:v9 withOptions:0];
  }

  else
  {
    v9 = [MEMORY[0x277D27FC8] standardConfiguration];
    [v9 setAccessPoint:7];
    [v9 setShouldShowDoneButton:1];
    v6 = [objc_alloc(MEMORY[0x277D27FD8]) initWithHealthStore:self->_healthStore displayConfiguration:v9];
    v7 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v6];
    v8 = [(HKHealthSettingsMedicalIDCallToActionTableViewController *)self parentViewController];
    [v8 presentViewController:v7 animated:1 completion:0];
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = MEMORY[0x277D12928];
  v6 = a3;
  v7 = [v5 defaultReuseIdentifier];
  v8 = [v6 dequeueReusableCellWithIdentifier:v7];

  v9 = [v8 actionButton];
  [v9 addTarget:self action:sel__createMedicalIDTapped_ forControlEvents:64];

  v10 = [(HKHealthStore *)self->_healthStore profileIdentifier];
  v11 = [v10 type];

  if (v11 == 3)
  {
    v12 = [v8 actionButton];
    v13 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v14 = [v13 localizedStringForKey:@"MEDICAL_ID_SETUP_OPEN_BRIDGE" value:&stru_28641BB60 table:@"HealthUI-Localizable-tinker"];
    [v12 setTitle:v14 forState:0];

    v15 = [(HKHealthSettingsProfile *)self->_healthSettingsProfile nameComponents];
    v16 = [v15 givenName];

    if (v16)
    {
      v17 = MEMORY[0x277CCACA8];
      v18 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v19 = [v18 localizedStringForKey:@"%@_MEDICAL_ID_SETUP_BRIDGE_BODY" value:&stru_28641BB60 table:@"HealthUI-Localizable-tinker"];
      v20 = [(HKHealthSettingsProfile *)self->_healthSettingsProfile nameComponents];
      v21 = [v20 givenName];
      v22 = [v17 localizedStringWithFormat:v19, v21];
      v23 = [v8 callToActionLabel];
      [v23 setText:v22];
    }

    else
    {
      v18 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v19 = [v18 localizedStringForKey:@"MEDICAL_ID_SETUP_BRIDGE_BODY" value:&stru_28641BB60 table:@"HealthUI-Localizable-tinker"];
      v20 = [v8 callToActionLabel];
      [v20 setText:v19];
    }
  }

  return v8;
}

@end