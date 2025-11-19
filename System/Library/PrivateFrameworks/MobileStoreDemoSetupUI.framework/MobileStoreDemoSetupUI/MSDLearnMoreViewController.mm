@interface MSDLearnMoreViewController
- (MSDLearnMoreViewController)init;
- (void)viewDidLoad;
@end

@implementation MSDLearnMoreViewController

- (MSDLearnMoreViewController)init
{
  v19.receiver = self;
  v19.super_class = MSDLearnMoreViewController;
  v2 = [(MSDLearnMoreViewController *)&v19 init];
  if (v2)
  {
    v18 = [MSDSetupUILocalization localizedStringForKey:@"LEARN_MORE_TITLE"];
    v17 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.triangle.2.circlepath.doc.on.clipboard"];
    v3 = [objc_alloc(MEMORY[0x277D37698]) initWithTitle:v18 detailText:0 icon:v17];
    [(MSDLearnMoreViewController *)v2 setContentViewController:v3];

    v4 = [MSDSetupUILocalization localizedStringForKey:@"LATEST_APP_BULLET"];
    v5 = [MSDSetupUILocalization localizedStringForKey:@"REMOTE_MANAGEMENT_BULLET"];
    v6 = [MSDSetupUILocalization localizedStringForKey:@"PROGRAMS_BULLET"];
    v7 = [MEMORY[0x277D755B8] systemImageNamed:@"app.badge.fill"];
    v8 = [MEMORY[0x277D755B8] systemImageNamed:@"rectangle.inset.filled.and.person.filled"];
    v9 = [MEMORY[0x277D755B8] systemImageNamed:@"plus.circle.fill"];
    v10 = [(MSDLearnMoreViewController *)v2 contentViewController];
    [v10 addBulletedListItemWithTitle:v4 description:&stru_286AE2298 image:v7];

    v11 = [(MSDLearnMoreViewController *)v2 contentViewController];
    [v11 addBulletedListItemWithTitle:v5 description:&stru_286AE2298 image:v8];

    v12 = [(MSDLearnMoreViewController *)v2 contentViewController];
    [v12 addBulletedListItemWithTitle:v6 description:&stru_286AE2298 image:v9];

    v13 = [(MSDLearnMoreViewController *)v2 contentViewController];
    v14 = [v13 navigationItem];
    [v14 setHidesBackButton:1];

    v15 = [MSDSetupUILocalization localizedStringForKey:@"LEARN_MORE_HEADER"];
    [(MSDLearnMoreViewController *)v2 setTitle:v15];
  }

  return v2;
}

- (void)viewDidLoad
{
  v31[4] = *MEMORY[0x277D85DE8];
  v30.receiver = self;
  v30.super_class = MSDLearnMoreViewController;
  [(MSDLearnMoreViewController *)&v30 viewDidLoad];
  v3 = [(MSDLearnMoreViewController *)self contentViewController];
  [(MSDLearnMoreViewController *)self addChildViewController:v3];

  v4 = [(MSDLearnMoreViewController *)self contentViewController];
  v5 = [v4 view];

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [(MSDLearnMoreViewController *)self view];
  [v6 addSubview:v5];

  v28 = [v5 topAnchor];
  v29 = [(MSDLearnMoreViewController *)self view];
  v27 = [v29 safeAreaLayoutGuide];
  v26 = [v27 topAnchor];
  v25 = [v28 constraintEqualToAnchor:v26];
  v31[0] = v25;
  v23 = [v5 bottomAnchor];
  v24 = [(MSDLearnMoreViewController *)self view];
  v22 = [v24 safeAreaLayoutGuide];
  v21 = [v22 bottomAnchor];
  v20 = [v23 constraintEqualToAnchor:v21];
  v31[1] = v20;
  v17 = [v5 leftAnchor];
  v19 = [(MSDLearnMoreViewController *)self view];
  v7 = [v19 safeAreaLayoutGuide];
  v8 = [v7 leftAnchor];
  v9 = [v17 constraintEqualToAnchor:v8];
  v31[2] = v9;
  v10 = [v5 rightAnchor];
  v11 = [(MSDLearnMoreViewController *)self view];
  v12 = [v11 safeAreaLayoutGuide];
  v13 = [v12 rightAnchor];
  v14 = [v10 constraintEqualToAnchor:v13];
  v31[3] = v14;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];

  [MEMORY[0x277CCAAD0] activateConstraints:v18];
  v15 = [(MSDLearnMoreViewController *)self contentViewController];
  [v15 didMoveToParentViewController:self];

  v16 = *MEMORY[0x277D85DE8];
}

@end