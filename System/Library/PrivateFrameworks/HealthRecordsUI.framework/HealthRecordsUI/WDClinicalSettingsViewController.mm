@interface WDClinicalSettingsViewController
+ (id)tableViewSectionClasses;
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation WDClinicalSettingsViewController

+ (id)tableViewSectionClasses
{
  v4[2] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];

  return v2;
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = WDClinicalSettingsViewController;
  [(HRWDTableViewController *)&v13 viewDidLoad];
  v3 = HRLocalizedString(@"CLINICAL_ACCOUNTS_SETTINGS_TITLE");
  [(WDClinicalSettingsViewController *)self setTitle:v3];

  navigationItem = [(WDClinicalSettingsViewController *)self navigationItem];
  [navigationItem setLargeTitleDisplayMode:2];

  v5 = objc_alloc_init(WDClinicalSettingsOptInNib);
  [(WDClinicalSettingsOptInNib *)v5 setTextViewDelegate:self];
  tableView = [(WDClinicalSettingsViewController *)self tableView];
  [tableView _setSectionContentInset:{0.0, 16.0, 0.0, 16.0}];

  tableView2 = [(WDClinicalSettingsViewController *)self tableView];
  [tableView2 _setSectionCornerRadius:*MEMORY[0x1E69A40E0]];

  tableView3 = [(WDClinicalSettingsViewController *)self tableView];
  [tableView3 registerNib:v5 forHeaderFooterViewReuseIdentifier:@"_OptInSectionFooterCell"];

  tableView4 = [(WDClinicalSettingsViewController *)self tableView];
  [tableView4 registerClass:objc_opt_class() forCellReuseIdentifier:@"_OptInCell"];

  tableView5 = [(WDClinicalSettingsViewController *)self tableView];
  v11 = objc_opt_class();
  v12 = +[WDClinicalSettingsViewAnalyticsDataCell defaultReuseIdentifier];
  [tableView5 registerClass:v11 forCellReuseIdentifier:v12];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = WDClinicalSettingsViewController;
  [(WDClinicalSettingsViewController *)&v4 viewDidAppear:appear];
  v3 = +[CHRAnalyticsManager shared];
  [v3 postPrivacyInteractionEventWithType:1 context:1 action:0];
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  if (section)
  {
    v6 = 0;
  }

  else
  {
    v6 = [view dequeueReusableHeaderFooterViewWithIdentifier:{@"_OptInSectionFooterCell", v4}];
  }

  return v6;
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  lCopy = l;
  scheme = [lCopy scheme];
  internalSettingsAppURLScheme = [MEMORY[0x1E69A2D68] internalSettingsAppURLScheme];
  v10 = [scheme isEqualToString:internalSettingsAppURLScheme];

  if (!interaction && v10)
  {
    defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
    [defaultWorkspace openSensitiveURL:lCopy withOptions:0];
  }

  return 0;
}

@end