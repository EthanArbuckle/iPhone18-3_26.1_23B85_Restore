@interface HKHealthSettingsMedicalIDCallToActionTableViewController
- (HKHealthSettingsMedicalIDCallToActionTableViewController)initWithHealthSettingsProfile:(id)profile;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_createMedicalIDTapped:(id)tapped;
- (void)viewDidLoad;
@end

@implementation HKHealthSettingsMedicalIDCallToActionTableViewController

- (HKHealthSettingsMedicalIDCallToActionTableViewController)initWithHealthSettingsProfile:(id)profile
{
  profileCopy = profile;
  v11.receiver = self;
  v11.super_class = HKHealthSettingsMedicalIDCallToActionTableViewController;
  v6 = [(HKHealthSettingsMedicalIDCallToActionTableViewController *)&v11 initWithStyle:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthSettingsProfile, profile);
    healthStore = [profileCopy healthStore];
    healthStore = v7->_healthStore;
    v7->_healthStore = healthStore;
  }

  return v7;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = HKHealthSettingsMedicalIDCallToActionTableViewController;
  [(HKHealthSettingsMedicalIDCallToActionTableViewController *)&v10 viewDidLoad];
  tableView = [(HKHealthSettingsMedicalIDCallToActionTableViewController *)self tableView];
  [tableView _setSectionContentInsetFollowsLayoutMargins:1];

  v4 = *MEMORY[0x277D12798];
  tableView2 = [(HKHealthSettingsMedicalIDCallToActionTableViewController *)self tableView];
  [tableView2 _setSectionCornerRadius:v4];

  tableView3 = [(HKHealthSettingsMedicalIDCallToActionTableViewController *)self tableView];
  [tableView3 setPreservesSuperviewLayoutMargins:1];

  tableView4 = [(HKHealthSettingsMedicalIDCallToActionTableViewController *)self tableView];
  v8 = objc_opt_class();
  defaultReuseIdentifier = [MEMORY[0x277D12928] defaultReuseIdentifier];
  [tableView4 registerClass:v8 forCellReuseIdentifier:defaultReuseIdentifier];
}

- (void)_createMedicalIDTapped:(id)tapped
{
  profileIdentifier = [(HKHealthStore *)self->_healthStore profileIdentifier];
  type = [profileIdentifier type];

  if (type == 3)
  {
    standardConfiguration = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"bridge:root=ActiveWatch"];
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    [defaultWorkspace openSensitiveURL:standardConfiguration withOptions:0];
  }

  else
  {
    standardConfiguration = [MEMORY[0x277D27FC8] standardConfiguration];
    [standardConfiguration setAccessPoint:7];
    [standardConfiguration setShouldShowDoneButton:1];
    defaultWorkspace = [objc_alloc(MEMORY[0x277D27FD8]) initWithHealthStore:self->_healthStore displayConfiguration:standardConfiguration];
    v7 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:defaultWorkspace];
    parentViewController = [(HKHealthSettingsMedicalIDCallToActionTableViewController *)self parentViewController];
    [parentViewController presentViewController:v7 animated:1 completion:0];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v5 = MEMORY[0x277D12928];
  viewCopy = view;
  defaultReuseIdentifier = [v5 defaultReuseIdentifier];
  v8 = [viewCopy dequeueReusableCellWithIdentifier:defaultReuseIdentifier];

  actionButton = [v8 actionButton];
  [actionButton addTarget:self action:sel__createMedicalIDTapped_ forControlEvents:64];

  profileIdentifier = [(HKHealthStore *)self->_healthStore profileIdentifier];
  type = [profileIdentifier type];

  if (type == 3)
  {
    actionButton2 = [v8 actionButton];
    v13 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v14 = [v13 localizedStringForKey:@"MEDICAL_ID_SETUP_OPEN_BRIDGE" value:&stru_28641BB60 table:@"HealthUI-Localizable-tinker"];
    [actionButton2 setTitle:v14 forState:0];

    nameComponents = [(HKHealthSettingsProfile *)self->_healthSettingsProfile nameComponents];
    givenName = [nameComponents givenName];

    if (givenName)
    {
      v17 = MEMORY[0x277CCACA8];
      v18 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v19 = [v18 localizedStringForKey:@"%@_MEDICAL_ID_SETUP_BRIDGE_BODY" value:&stru_28641BB60 table:@"HealthUI-Localizable-tinker"];
      nameComponents2 = [(HKHealthSettingsProfile *)self->_healthSettingsProfile nameComponents];
      givenName2 = [nameComponents2 givenName];
      v22 = [v17 localizedStringWithFormat:v19, givenName2];
      callToActionLabel = [v8 callToActionLabel];
      [callToActionLabel setText:v22];
    }

    else
    {
      v18 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v19 = [v18 localizedStringForKey:@"MEDICAL_ID_SETUP_BRIDGE_BODY" value:&stru_28641BB60 table:@"HealthUI-Localizable-tinker"];
      nameComponents2 = [v8 callToActionLabel];
      [nameComponents2 setText:v19];
    }
  }

  return v8;
}

@end