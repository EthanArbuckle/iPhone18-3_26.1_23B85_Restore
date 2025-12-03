@interface MBPrebuddyLoadingViewController
- (void)startAnimating;
- (void)stopAnimating;
- (void)viewDidLoad;
@end

@implementation MBPrebuddyLoadingViewController

- (void)viewDidLoad
{
  v25.receiver = self;
  v25.super_class = MBPrebuddyLoadingViewController;
  [(MBPrebuddyLoadingViewController *)&v25 viewDidLoad];
  navigationItem = [(MBPrebuddyLoadingViewController *)self navigationItem];
  [navigationItem setHidesBackButton:1];

  v4 = [MBLoadingStatusView alloc];
  v5 = MBLocalizedStringFromTable();
  v6 = [(MBLoadingStatusView *)v4 initWithStatusText:v5 backgroundColor:0];

  [(MBPrebuddyLoadingViewController *)self setStatusView:v6];
  view = [(MBPrebuddyLoadingViewController *)self view];
  [view addSubview:v6];

  leadingAnchor = [(MBLoadingStatusView *)v6 leadingAnchor];
  view2 = [(MBPrebuddyLoadingViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v26[0] = v21;
  topAnchor = [(MBLoadingStatusView *)v6 topAnchor];
  view3 = [(MBPrebuddyLoadingViewController *)self view];
  topAnchor2 = [view3 topAnchor];
  v17 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v26[1] = v17;
  trailingAnchor = [(MBLoadingStatusView *)v6 trailingAnchor];
  view4 = [(MBPrebuddyLoadingViewController *)self view];
  trailingAnchor2 = [view4 trailingAnchor];
  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v26[2] = v11;
  bottomAnchor = [(MBLoadingStatusView *)v6 bottomAnchor];
  view5 = [(MBPrebuddyLoadingViewController *)self view];
  bottomAnchor2 = [view5 bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v26[3] = v15;
  v16 = [NSArray arrayWithObjects:v26 count:4];
  [NSLayoutConstraint activateConstraints:v16];

  [(MBLoadingStatusView *)v6 startAnimating];
}

- (void)startAnimating
{
  statusView = [(MBPrebuddyLoadingViewController *)self statusView];
  [statusView startAnimating];
}

- (void)stopAnimating
{
  statusView = [(MBPrebuddyLoadingViewController *)self statusView];
  [statusView stopAnimating];
}

@end