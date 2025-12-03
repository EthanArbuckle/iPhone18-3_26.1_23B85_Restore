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
    contentViewController = [(MSDLearnMoreViewController *)v2 contentViewController];
    [contentViewController addBulletedListItemWithTitle:v4 description:&stru_286AE2298 image:v7];

    contentViewController2 = [(MSDLearnMoreViewController *)v2 contentViewController];
    [contentViewController2 addBulletedListItemWithTitle:v5 description:&stru_286AE2298 image:v8];

    contentViewController3 = [(MSDLearnMoreViewController *)v2 contentViewController];
    [contentViewController3 addBulletedListItemWithTitle:v6 description:&stru_286AE2298 image:v9];

    contentViewController4 = [(MSDLearnMoreViewController *)v2 contentViewController];
    navigationItem = [contentViewController4 navigationItem];
    [navigationItem setHidesBackButton:1];

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
  contentViewController = [(MSDLearnMoreViewController *)self contentViewController];
  [(MSDLearnMoreViewController *)self addChildViewController:contentViewController];

  contentViewController2 = [(MSDLearnMoreViewController *)self contentViewController];
  view = [contentViewController2 view];

  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(MSDLearnMoreViewController *)self view];
  [view2 addSubview:view];

  topAnchor = [view topAnchor];
  view3 = [(MSDLearnMoreViewController *)self view];
  safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v25 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v31[0] = v25;
  bottomAnchor = [view bottomAnchor];
  view4 = [(MSDLearnMoreViewController *)self view];
  safeAreaLayoutGuide2 = [view4 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide2 bottomAnchor];
  v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v31[1] = v20;
  leftAnchor = [view leftAnchor];
  view5 = [(MSDLearnMoreViewController *)self view];
  safeAreaLayoutGuide3 = [view5 safeAreaLayoutGuide];
  leftAnchor2 = [safeAreaLayoutGuide3 leftAnchor];
  v9 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v31[2] = v9;
  rightAnchor = [view rightAnchor];
  view6 = [(MSDLearnMoreViewController *)self view];
  safeAreaLayoutGuide4 = [view6 safeAreaLayoutGuide];
  rightAnchor2 = [safeAreaLayoutGuide4 rightAnchor];
  v14 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v31[3] = v14;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];

  [MEMORY[0x277CCAAD0] activateConstraints:v18];
  contentViewController3 = [(MSDLearnMoreViewController *)self contentViewController];
  [contentViewController3 didMoveToParentViewController:self];

  v16 = *MEMORY[0x277D85DE8];
}

@end