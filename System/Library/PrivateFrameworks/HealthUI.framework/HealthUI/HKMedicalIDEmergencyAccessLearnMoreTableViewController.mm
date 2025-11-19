@interface HKMedicalIDEmergencyAccessLearnMoreTableViewController
- (HKMedicalIDEmergencyAccessLearnMoreTableViewController)init;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation HKMedicalIDEmergencyAccessLearnMoreTableViewController

- (HKMedicalIDEmergencyAccessLearnMoreTableViewController)init
{
  v3.receiver = self;
  v3.super_class = HKMedicalIDEmergencyAccessLearnMoreTableViewController;
  return [(HKMedicalIDEmergencyAccessLearnMoreTableViewController *)&v3 initWithStyle:2];
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = HKMedicalIDEmergencyAccessLearnMoreTableViewController;
  [(HKMedicalIDEmergencyAccessLearnMoreTableViewController *)&v10 viewDidLoad];
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v4 = [v3 localizedStringForKey:@"emergency_access_learn_more_navigation_title" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [(HKMedicalIDEmergencyAccessLearnMoreTableViewController *)self setTitle:v4];

  v5 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  v6 = [(HKMedicalIDEmergencyAccessLearnMoreTableViewController *)self view];
  [v6 setBackgroundColor:v5];

  v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_didTapDone_];
  v8 = [(HKMedicalIDEmergencyAccessLearnMoreTableViewController *)self navigationItem];
  [v8 setRightBarButtonItem:v7];

  v9 = [(HKMedicalIDEmergencyAccessLearnMoreTableViewController *)self tableView];
  [v9 registerClass:objc_opt_class() forCellReuseIdentifier:@"LearnMoreCell"];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v20[2] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(LearnMoreItem);
  v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v9 = [v8 localizedStringForKey:@"emergency_access_learn_more_share_title" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [(LearnMoreItem *)v7 setTitle:v9];

  v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v11 = [v10 localizedStringForKey:@"emergency_access_learn_more_share_body" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [(LearnMoreItem *)v7 setBody:v11];

  v12 = objc_alloc_init(LearnMoreItem);
  v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v14 = [v13 localizedStringForKey:@"emergency_access_learn_more_privacy_title" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [(LearnMoreItem *)v12 setTitle:v14];

  v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v16 = [v15 localizedStringForKey:@"emergency_access_learn_more_privacy_body" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  [(LearnMoreItem *)v12 setBody:v16];

  v17 = [v6 dequeueReusableCellWithIdentifier:@"LearnMoreCell" forIndexPath:v5];

  v20[0] = v7;
  v20[1] = v12;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  [v17 setItems:v18];

  return v17;
}

@end