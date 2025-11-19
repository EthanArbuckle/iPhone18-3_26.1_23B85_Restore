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
  v3 = [(MBPrebuddyLoadingViewController *)self navigationItem];
  [v3 setHidesBackButton:1];

  v4 = [MBLoadingStatusView alloc];
  v5 = MBLocalizedStringFromTable();
  v6 = [(MBLoadingStatusView *)v4 initWithStatusText:v5 backgroundColor:0];

  [(MBPrebuddyLoadingViewController *)self setStatusView:v6];
  v7 = [(MBPrebuddyLoadingViewController *)self view];
  [v7 addSubview:v6];

  v23 = [(MBLoadingStatusView *)v6 leadingAnchor];
  v24 = [(MBPrebuddyLoadingViewController *)self view];
  v22 = [v24 leadingAnchor];
  v21 = [v23 constraintEqualToAnchor:v22];
  v26[0] = v21;
  v19 = [(MBLoadingStatusView *)v6 topAnchor];
  v20 = [(MBPrebuddyLoadingViewController *)self view];
  v18 = [v20 topAnchor];
  v17 = [v19 constraintEqualToAnchor:v18];
  v26[1] = v17;
  v8 = [(MBLoadingStatusView *)v6 trailingAnchor];
  v9 = [(MBPrebuddyLoadingViewController *)self view];
  v10 = [v9 trailingAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v26[2] = v11;
  v12 = [(MBLoadingStatusView *)v6 bottomAnchor];
  v13 = [(MBPrebuddyLoadingViewController *)self view];
  v14 = [v13 bottomAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  v26[3] = v15;
  v16 = [NSArray arrayWithObjects:v26 count:4];
  [NSLayoutConstraint activateConstraints:v16];

  [(MBLoadingStatusView *)v6 startAnimating];
}

- (void)startAnimating
{
  v2 = [(MBPrebuddyLoadingViewController *)self statusView];
  [v2 startAnimating];
}

- (void)stopAnimating
{
  v2 = [(MBPrebuddyLoadingViewController *)self statusView];
  [v2 stopAnimating];
}

@end