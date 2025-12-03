@interface MBPrebuddyDoneViewController
+ (id)_phoneTransferImage;
- (MBPrebuddyDoneViewController)initWithFlow:(id)flow;
- (MBViewControllerFlow)flow;
- (void)_setUp;
- (void)didTapHighlightedText:(id)text;
- (void)didTapPrimaryButton:(id)button;
- (void)viewDidLoad;
@end

@implementation MBPrebuddyDoneViewController

+ (id)_phoneTransferImage
{
  v3 = +[MBPrebuddyManager twoDeviceImageName];
  v4 = [NSBundle bundleForClass:self];
  v5 = [UIImage imageNamed:v3 inBundle:v4];
  v6 = [v5 imageWithRenderingMode:2];

  return v6;
}

- (MBPrebuddyDoneViewController)initWithFlow:(id)flow
{
  flowCopy = flow;
  v5 = MBLocalizedStringFromTable();
  v6 = MBLocalizedStringFromTable();
  v9.receiver = self;
  v9.super_class = MBPrebuddyDoneViewController;
  v7 = [(MBPrebuddyDoneViewController *)&v9 initWithTitle:v5 detailText:v6 icon:0];

  if (v7)
  {
    objc_storeWeak(&v7->_flow, flowCopy);
  }

  return v7;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = MBPrebuddyDoneViewController;
  [(MBPrebuddyDoneViewController *)&v4 viewDidLoad];
  [(MBPrebuddyDoneViewController *)self _setUp];
  navigationItem = [(MBPrebuddyDoneViewController *)self navigationItem];
  [navigationItem setHidesBackButton:1];
}

- (void)_setUp
{
  v3 = +[OBBoldTrayButton boldButton];
  v4 = MBLocalizedStringFromTable();
  [v3 setTitle:v4 forState:0];

  [v3 addTarget:self action:"didTapPrimaryButton:" forEvents:0x2000];
  v54 = v3;
  titleLabel = [v3 titleLabel];
  LODWORD(v6) = 1036831949;
  [titleLabel _setHyphenationFactor:v6];

  buttonTray = [(MBPrebuddyDoneViewController *)self buttonTray];
  [buttonTray addButton:v3];

  v8 = [MBPrebuddyBulletedIconTextView alloc];
  v9 = [UIImage systemImageNamed:@"icloud.and.arrow.up"];
  v10 = MBLocalizedStringFromTable();
  v11 = MBLocalizedStringFromTable();
  v12 = [(MBPrebuddyBulletedIconTextView *)v8 initWithImage:v9 title:v10 detail:v11 tappableText:0];

  v13 = v12;
  v53 = v12;
  [(MBPrebuddyBulletedIconTextView *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [MBPrebuddyBulletedIconTextView alloc];
  _phoneTransferImage = [objc_opt_class() _phoneTransferImage];
  v16 = MBLocalizedStringFromTable();
  v17 = MBLocalizedStringFromTable();
  v18 = [(MBPrebuddyBulletedIconTextView *)v14 initWithImage:_phoneTransferImage title:v16 detail:v17 tappableText:0];

  v19 = v18;
  v52 = v18;
  [(MBPrebuddyBulletedIconTextView *)v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  v20 = [MBPrebuddyBulletedIconTextView alloc];
  v21 = [UIImage systemImageNamed:@"arrow.3.trianglepath"];
  v22 = MBLocalizedStringFromTable();
  v23 = MBLocalizedStringFromTable();
  v24 = MBLocalizedStringFromTable();
  v25 = [(MBPrebuddyBulletedIconTextView *)v20 initWithImage:v21 title:v22 detail:v23 tappableText:v24];

  v26 = +[UIColor systemBlueColor];
  [(MBPrebuddyBulletedIconTextView *)v25 setTintColor:v26];

  [(MBPrebuddyBulletedIconTextView *)v25 setDelegate:self];
  v51 = v25;
  [(MBPrebuddyBulletedIconTextView *)v25 setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = [UIStackView alloc];
  v56[0] = v13;
  v56[1] = v19;
  v56[2] = v25;
  v28 = [NSArray arrayWithObjects:v56 count:3];
  v29 = [v27 initWithArrangedSubviews:v28];
  bulletedStack = self->_bulletedStack;
  self->_bulletedStack = v29;

  [(UIStackView *)self->_bulletedStack setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_bulletedStack setSpacing:25.0];
  [(UIStackView *)self->_bulletedStack setAxis:1];
  contentView = [(MBPrebuddyDoneViewController *)self contentView];
  [contentView addSubview:self->_bulletedStack];

  leadingAnchor = [(UIStackView *)self->_bulletedStack leadingAnchor];
  contentView2 = [(MBPrebuddyDoneViewController *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v47 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v55[0] = v47;
  topAnchor = [(UIStackView *)self->_bulletedStack topAnchor];
  contentView3 = [(MBPrebuddyDoneViewController *)self contentView];
  topAnchor2 = [contentView3 topAnchor];
  v43 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v55[1] = v43;
  trailingAnchor = [(UIStackView *)self->_bulletedStack trailingAnchor];
  contentView4 = [(MBPrebuddyDoneViewController *)self contentView];
  trailingAnchor2 = [contentView4 trailingAnchor];
  v35 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v55[2] = v35;
  bottomAnchor = [(UIStackView *)self->_bulletedStack bottomAnchor];
  contentView5 = [(MBPrebuddyDoneViewController *)self contentView];
  bottomAnchor2 = [contentView5 bottomAnchor];
  [(UIStackView *)self->_bulletedStack spacing];
  v40 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v39 * -2.0];
  v55[3] = v40;
  v41 = [NSArray arrayWithObjects:v55 count:4];
  [NSLayoutConstraint activateConstraints:v41];

  navigationItem = [(MBPrebuddyDoneViewController *)self navigationItem];
  [navigationItem _setBackgroundHidden:1];
}

- (void)didTapPrimaryButton:(id)button
{
  navigationController = [(MBPrebuddyDoneViewController *)self navigationController];
  view = [navigationController view];
  [view setUserInteractionEnabled:0];

  WeakRetained = objc_loadWeakRetained(&self->_flow);
  [WeakRetained mb_didTapNextFromViewController:self];
}

- (void)didTapHighlightedText:(id)text
{
  v3 = MBLocalizedStringFromTable();
  v5 = [NSURL URLWithString:v3];

  v4 = +[LSApplicationWorkspace defaultWorkspace];
  [v4 openURL:v5 withOptions:0];
}

- (MBViewControllerFlow)flow
{
  WeakRetained = objc_loadWeakRetained(&self->_flow);

  return WeakRetained;
}

@end