@interface MBPrebuddyGettingStartedViewController
+ (id)_phoneTransferImage;
- (CGSize)_normalizeSize:(CGSize)size to:(CGSize)to scale:(double)scale;
- (MBPrebuddyGettingStartedViewController)initWithFlow:(id)flow entryPoint:(int64_t)point deepLinkURL:(id)l needsAccountSignIn:(BOOL)in altDSIDForHSA2Upgrade:(id)upgrade;
- (MBViewControllerFlow)flow;
- (id)_iconOfSystemImageName:(id)name glyphScale:(double)scale nudge:(CGPoint)nudge colored:(id)colored backgroundGradientStart:(id)start backgroundGradientEnd:(id)end sized:(double)sized;
- (id)_xpcQueue;
- (void)_checkEligibility:(id)eligibility;
- (void)_checkEligibilityAndUpgradeHSA2IfNeeded:(id)needed;
- (void)_configureButtonTray;
- (void)_enableBackupIfNeeded:(id)needed;
- (void)_hideLoadingStatusView;
- (void)_presentError:(id)error completion:(id)completion;
- (void)_setUp;
- (void)_showLoadingStatusView;
- (void)_signInAccountIfNeeded:(id)needed;
- (void)_upgradeHSA2IfNeeded:(id)needed;
- (void)didTapCancelBarButtonItem:(id)item;
- (void)didTapPrimaryButton:(id)button;
- (void)didTapSecondaryButton:(id)button;
- (void)signInControllerDidCancel:(id)cancel;
- (void)viewDidLoad;
@end

@implementation MBPrebuddyGettingStartedViewController

+ (id)_phoneTransferImage
{
  v3 = +[MBPrebuddyManager twoDeviceImageName];
  v4 = [NSBundle bundleForClass:self];
  v5 = [UIImage imageNamed:v3 inBundle:v4];
  v6 = [v5 imageWithRenderingMode:2];

  return v6;
}

- (MBPrebuddyGettingStartedViewController)initWithFlow:(id)flow entryPoint:(int64_t)point deepLinkURL:(id)l needsAccountSignIn:(BOOL)in altDSIDForHSA2Upgrade:(id)upgrade
{
  flowCopy = flow;
  lCopy = l;
  upgradeCopy = upgrade;
  v15 = MBLocalizedStringFromTable();
  v16 = MBLocalizedStringFromTable();
  _phoneTransferImage = [objc_opt_class() _phoneTransferImage];
  v26.receiver = self;
  v26.super_class = MBPrebuddyGettingStartedViewController;
  v18 = [(MBPrebuddyGettingStartedViewController *)&v26 initWithTitle:v15 detailText:v16 icon:_phoneTransferImage];

  if (v18)
  {
    objc_storeWeak(&v18->_flow, flowCopy);
    v18->_entryPoint = point;
    v19 = [lCopy copy];
    deepLinkURL = v18->_deepLinkURL;
    v18->_deepLinkURL = v19;

    v18->_needsAccountSignIn = in;
    objc_storeStrong(&v18->_altDSIDForHSA2Upgrade, upgrade);
    v21 = [MBLoadingStatusView alloc];
    v22 = MBLocalizedStringFromTable();
    v23 = [(MBLoadingStatusView *)v21 initWithStatusText:v22 backgroundColor:0];
    statusView = v18->_statusView;
    v18->_statusView = v23;
  }

  return v18;
}

- (id)_xpcQueue
{
  if (qword_100022D08 != -1)
  {
    sub_10000EC1C();
  }

  v3 = qword_100022D00;

  return v3;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = MBPrebuddyGettingStartedViewController;
  [(MBPrebuddyGettingStartedViewController *)&v4 viewDidLoad];
  [(MBPrebuddyGettingStartedViewController *)self _setUp];
  navigationItem = [(MBPrebuddyGettingStartedViewController *)self navigationItem];
  [navigationItem setHidesBackButton:1];
}

- (void)_setUp
{
  [(MBPrebuddyGettingStartedViewController *)self _configureButtonTray];
  if (!self->_needsAccountSignIn)
  {
    self->_altDSIDForHSA2Upgrade;
  }

  v3 = MBLocalizedStringFromTable();
  v4 = MBLocalizedStringFromTable();
  v5 = [UIImage systemImageNamed:@"icloud.and.arrow.up"];
  v37 = v3;
  [(MBPrebuddyGettingStartedViewController *)self addBulletedListItemWithTitle:v4 description:v3 image:v5];

  v6 = MBLocalizedStringFromTable();
  v7 = MBLocalizedStringFromTable();
  v8 = [UIImage systemImageNamed:@"arrow.3.trianglepath"];
  [(MBPrebuddyGettingStartedViewController *)self addBulletedListItemWithTitle:v6 description:v7 image:v8];

  view = [(MBPrebuddyGettingStartedViewController *)self view];
  statusView = [(MBPrebuddyGettingStartedViewController *)self statusView];
  [view addSubview:statusView];

  statusView2 = [(MBPrebuddyGettingStartedViewController *)self statusView];
  leadingAnchor = [statusView2 leadingAnchor];
  view2 = [(MBPrebuddyGettingStartedViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v32 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v38[0] = v32;
  statusView3 = [(MBPrebuddyGettingStartedViewController *)self statusView];
  topAnchor = [statusView3 topAnchor];
  view3 = [(MBPrebuddyGettingStartedViewController *)self view];
  topAnchor2 = [view3 topAnchor];
  v27 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v38[1] = v27;
  statusView4 = [(MBPrebuddyGettingStartedViewController *)self statusView];
  trailingAnchor = [statusView4 trailingAnchor];
  view4 = [(MBPrebuddyGettingStartedViewController *)self view];
  trailingAnchor2 = [view4 trailingAnchor];
  v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v38[2] = v13;
  statusView5 = [(MBPrebuddyGettingStartedViewController *)self statusView];
  bottomAnchor = [statusView5 bottomAnchor];
  view5 = [(MBPrebuddyGettingStartedViewController *)self view];
  bottomAnchor2 = [view5 bottomAnchor];
  v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v38[3] = v18;
  v19 = [NSArray arrayWithObjects:v38 count:4];
  [NSLayoutConstraint activateConstraints:v19];

  navigationItem = [(MBPrebuddyGettingStartedViewController *)self navigationItem];
  [navigationItem _setBackgroundHidden:1];

  navigationController = [(MBPrebuddyGettingStartedViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  backItem = [navigationBar backItem];
  if (backItem)
  {

LABEL_7:
    goto LABEL_8;
  }

  v24 = +[MBPrebuddyManager hasPrebuddyFollowUp];

  if (v24)
  {
    navigationController = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"didTapCancelBarButtonItem:"];
    navigationBar = [(MBPrebuddyGettingStartedViewController *)self navigationItem];
    [navigationBar setLeftBarButtonItem:navigationController];
    goto LABEL_7;
  }

LABEL_8:
}

- (void)_configureButtonTray
{
  v12 = +[OBBoldTrayButton boldButton];
  v3 = MBLocalizedStringFromTable();
  [v12 setTitle:v3 forState:0];

  [v12 addTarget:self action:"didTapPrimaryButton:" forEvents:0x2000];
  titleLabel = [v12 titleLabel];
  LODWORD(v5) = 1036831949;
  [titleLabel _setHyphenationFactor:v5];

  buttonTray = [(MBPrebuddyGettingStartedViewController *)self buttonTray];
  [buttonTray addButton:v12];

  v7 = +[OBLinkTrayButton linkButton];
  v8 = MBLocalizedStringFromTable();
  [v7 setTitle:v8 forState:0];

  [v7 addTarget:self action:"didTapSecondaryButton:" forEvents:0x2000];
  titleLabel2 = [v7 titleLabel];
  LODWORD(v10) = 1036831949;
  [titleLabel2 _setHyphenationFactor:v10];

  buttonTray2 = [(MBPrebuddyGettingStartedViewController *)self buttonTray];
  [buttonTray2 addButton:v7];
}

- (void)_showLoadingStatusView
{
  navigationController = [(MBPrebuddyGettingStartedViewController *)self navigationController];
  view = [navigationController view];
  [view setUserInteractionEnabled:0];

  statusView = [(MBPrebuddyGettingStartedViewController *)self statusView];
  [statusView startAnimating];

  buttonTray = [(MBPrebuddyGettingStartedViewController *)self buttonTray];
  [buttonTray removeAllButtons];
}

- (void)_hideLoadingStatusView
{
  statusView = [(MBPrebuddyGettingStartedViewController *)self statusView];
  [statusView stopAnimating];

  buttonTray = [(MBPrebuddyGettingStartedViewController *)self buttonTray];
  [buttonTray removeAllButtons];

  [(MBPrebuddyGettingStartedViewController *)self _configureButtonTray];
  navigationController = [(MBPrebuddyGettingStartedViewController *)self navigationController];
  view = [navigationController view];
  [view setUserInteractionEnabled:1];
}

- (void)didTapPrimaryButton:(id)button
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000061C0;
  v3[3] = &unk_10001C6D0;
  v3[4] = self;
  [(MBPrebuddyGettingStartedViewController *)self _signInAccountIfNeeded:v3];
}

- (void)didTapSecondaryButton:(id)button
{
  navigationController = [(MBPrebuddyGettingStartedViewController *)self navigationController];
  view = [navigationController view];
  [view setUserInteractionEnabled:0];

  WeakRetained = objc_loadWeakRetained(&self->_flow);
  [WeakRetained mb_didTapCancelFromViewController:self];
}

- (void)didTapCancelBarButtonItem:(id)item
{
  v4 = +[MBPrebuddyManager sharedManager];
  [v4 cancelPrebuddy];

  WeakRetained = objc_loadWeakRetained(&self->_flow);
  [WeakRetained mb_didTapCancelFromViewController:self];
}

- (void)_enableBackupIfNeeded:(id)needed
{
  neededCopy = needed;
  v5 = neededCopy;
  if (self->_needsBackupEnabled)
  {
    v6 = MBLocalizedStringFromTable();
    v7 = MBLocalizedStringFromTable();
    v8 = [UIAlertController alertControllerWithTitle:v6 message:v7 preferredStyle:1];

    v9 = MBLocalizedStringFromTable();
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100006694;
    v24[3] = &unk_10001C8C0;
    v24[4] = self;
    v10 = v8;
    v25 = v10;
    v11 = v5;
    v26 = v11;
    v12 = [UIAlertAction actionWithTitle:v9 style:0 handler:v24];

    v13 = MBLocalizedStringFromTable();
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_100006944;
    v20 = &unk_10001C8C0;
    selfCopy = self;
    v22 = v10;
    v23 = v11;
    v14 = v10;
    v15 = [UIAlertAction actionWithTitle:v13 style:1 handler:&v17];

    [v14 addAction:{v12, v17, v18, v19, v20, selfCopy}];
    [v14 addAction:v15];
    [v14 setPreferredAction:v12];
    v16 = MBPrebuddyAlertIcon();
    [v14 setImage:v16];

    [(MBPrebuddyGettingStartedViewController *)self presentViewController:v14 animated:1 completion:0];
  }

  else
  {
    (*(neededCopy + 2))(neededCopy, 1);
  }
}

- (id)_iconOfSystemImageName:(id)name glyphScale:(double)scale nudge:(CGPoint)nudge colored:(id)colored backgroundGradientStart:(id)start backgroundGradientEnd:(id)end sized:(double)sized
{
  y = nudge.y;
  x = nudge.x;
  endCopy = end;
  startCopy = start;
  coloredCopy = colored;
  nameCopy = name;
  v34.width = sized;
  v34.height = sized;
  UIGraphicsBeginImageContextWithOptions(v34, 0, 1.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  v35.origin.x = 0.0;
  v35.origin.y = 0.0;
  v35.size.width = sized;
  v35.size.height = sized;
  v36 = CGRectInset(v35, 1.0, 1.0);
  CGContextAddEllipseInRect(CurrentContext, v36);
  CGContextClip(CurrentContext);
  v22 = +[CAGradientLayer layer];
  [v22 setFrame:{0.0, 0.0, sized, sized}];
  cGColor = [startCopy CGColor];

  v32[0] = cGColor;
  cGColor2 = [endCopy CGColor];

  v32[1] = cGColor2;
  v25 = [NSArray arrayWithObjects:v32 count:2];
  [v22 setColors:v25];

  [v22 renderInContext:CurrentContext];
  v26 = [UIImage systemImageNamed:nameCopy];

  v27 = [v26 imageWithTintColor:coloredCopy];

  [v27 size];
  [MBPrebuddyGettingStartedViewController _normalizeSize:"_normalizeSize:to:scale:" to:? scale:?];
  [v27 drawInRect:{(sized - v28) * 0.5 + x * scale, (sized - v29) * 0.5 + y * scale, v28}];
  v30 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v30;
}

- (CGSize)_normalizeSize:(CGSize)size to:(CGSize)to scale:(double)scale
{
  v5 = fmin(to.width, to.height) * scale / fmax(size.width, size.height);
  v6 = size.width * v5;
  v7 = size.height * v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)_signInAccountIfNeeded:(id)needed
{
  neededCopy = needed;
  v5 = neededCopy;
  if (self->_needsAccountSignIn && !self->_didSignIn)
  {
    v6 = objc_alloc_init(AAUISignInController);
    signInController = self->_signInController;
    self->_signInController = v6;

    [(AAUISignInController *)self->_signInController setDelegate:self];
    [(AAUISignInController *)self->_signInController _setShouldForceOperation:1];
    v8 = self->_signInController;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100006F54;
    v9[3] = &unk_10001C630;
    v9[4] = self;
    v10 = v5;
    [(AAUISignInController *)v8 prepareInViewController:self completion:v9];
  }

  else
  {
    (*(neededCopy + 2))(neededCopy, 1);
  }
}

- (void)_checkEligibilityAndUpgradeHSA2IfNeeded:(id)needed
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100007170;
  v4[3] = &unk_10001C8E8;
  selfCopy = self;
  neededCopy = needed;
  v3 = neededCopy;
  [(MBPrebuddyGettingStartedViewController *)selfCopy _checkEligibility:v4];
}

- (void)_upgradeHSA2IfNeeded:(id)needed
{
  neededCopy = needed;
  altDSIDForHSA2Upgrade = self->_altDSIDForHSA2Upgrade;
  if (altDSIDForHSA2Upgrade && !self->_didHSA2Upgrade)
  {
    if ([(NSString *)altDSIDForHSA2Upgrade length])
    {
      flow = [[CDPUIDeviceToDeviceEncryptionFlowContext alloc] initWithAltDSID:self->_altDSIDForHSA2Upgrade];
      [flow setPresentingViewController:self];
      [flow setDeviceToDeviceEncryptionUpgradeUIStyle:1];
      v7 = [[CDPUIDeviceToDeviceEncryptionHelper alloc] initWithContext:flow];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000073D8;
      v11[3] = &unk_10001C910;
      v11[4] = self;
      v12 = neededCopy;
      [v7 performDeviceToDeviceEncryptionStateRepairWithCompletion:v11];
    }

    else
    {
      v8 = MBGetDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Have an empty alt DSID, so cannot do HSA2 upgrade.", buf, 2u);
        _MBLog();
      }

      (*(neededCopy + 2))(neededCopy, 0);
      navigationController = [(MBPrebuddyGettingStartedViewController *)self navigationController];
      view = [navigationController view];
      [view setUserInteractionEnabled:0];

      flow = [(MBPrebuddyGettingStartedViewController *)self flow];
      [flow mb_didTapCancelFromViewController:self];
    }
  }

  else
  {
    (*(neededCopy + 2))(neededCopy, 1);
  }
}

- (void)_checkEligibility:(id)eligibility
{
  eligibilityCopy = eligibility;
  [(MBPrebuddyGettingStartedViewController *)self _showLoadingStatusView];
  v5 = objc_alloc_init(MBManager);
  v6 = [v5 isBackupEnabled] ^ 1;
  backupDeviceUUID = [v5 backupDeviceUUID];
  v8 = objc_alloc_init(MBMegaBackupEligibilityManager);
  entryPoint = self->_entryPoint;
  deepLinkURL = self->_deepLinkURL;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100007608;
  v12[3] = &unk_10001C938;
  v14 = v6;
  v12[4] = self;
  v13 = eligibilityCopy;
  v11 = eligibilityCopy;
  [(MBMegaBackupEligibilityManager *)v8 checkMegaBackupEligibility:entryPoint deepLinkURL:deepLinkURL backupDeviceUUID:backupDeviceUUID queue:&_dispatch_main_q completion:v12];
}

- (void)_presentError:(id)error completion:(id)completion
{
  errorCopy = error;
  completionCopy = completion;
  v8 = MBLocalizedStringFromTable();
  v9 = MBLocalizedStringFromTable();
  v10 = MBLocalizedStringFromTable();
  domain = [errorCopy domain];
  v12 = _ICQMegaBackupErrorDomain;
  if ([domain isEqualToString:_ICQMegaBackupErrorDomain])
  {
    code = [errorCopy code];

    if (code == 5)
    {
      v14 = MGGetBoolAnswer();
      v15 = @"WIFI";
      if (v14)
      {
        v15 = @"WLAN";
      }

      v16 = [NSString stringWithFormat:@"MB_PREBUDDY_NETWORK_%@_ERROR_TITLE", v15];
      v17 = MBLocalizedStringFromTable();

      v18 = 0;
      domain5 = v9;
      v8 = v17;
      v9 = 0;
      goto LABEL_26;
    }
  }

  else
  {
  }

  domain2 = [errorCopy domain];
  if ([domain2 isEqualToString:v12])
  {
    code2 = [errorCopy code];

    if (code2 == 6)
    {
LABEL_24:
      v24 = MBLocalizedStringFromTable();

      v25 = MBLocalizedStringFromTable();

      v26 = MBLocalizedStringFromTable();
      v18 = 0;
      domain5 = v10;
      goto LABEL_25;
    }
  }

  else
  {
  }

  domain3 = [errorCopy domain];
  if ([domain3 isEqualToString:@"MBMegaBackupEligibilityErrorDomain"])
  {
    code3 = [errorCopy code];

    if (code3 == 6)
    {
      v24 = MBLocalizedStringFromTable();

      v25 = MBLocalizedStringFromTable();

      v26 = MBLocalizedStringFromTable();
      domain5 = v10;
      v18 = 1;
LABEL_25:
      v10 = v26;
      v9 = v25;
      v8 = v24;
      goto LABEL_26;
    }
  }

  else
  {
  }

  domain4 = [errorCopy domain];
  if ([domain4 isEqualToString:@"MBMegaBackupEligibilityErrorDomain"])
  {
    code4 = [errorCopy code];

    if (code4 == 2)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  domain5 = [errorCopy domain];
  if ([domain5 isEqualToString:@"MBMegaBackupEligibilityErrorDomain"])
  {
    if ([errorCopy code] == 3)
    {
    }

    else
    {
      code5 = [errorCopy code];

      if (code5 != 4)
      {
        v18 = 0;
        goto LABEL_27;
      }
    }

    goto LABEL_24;
  }

  v18 = 0;
LABEL_26:

LABEL_27:
  v30 = [UIAlertController alertControllerWithTitle:v8 message:v9 preferredStyle:1];
  v31 = MBPrebuddyAlertIcon();
  [v30 setImage:v31];

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100007F00;
  v34[3] = &unk_10001C960;
  v36 = v18;
  v35 = completionCopy;
  v32 = completionCopy;
  v33 = [UIAlertAction actionWithTitle:v10 style:0 handler:v34];
  [v30 addAction:v33];
  [(MBPrebuddyGettingStartedViewController *)self presentViewController:v30 animated:1 completion:0];
}

- (void)signInControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "signInControllerDidCancel:", v5, 2u);
    _MBLog();
  }

  [cancelCopy dismissViewControllerAnimated:1 completion:0];
}

- (MBViewControllerFlow)flow
{
  WeakRetained = objc_loadWeakRetained(&self->_flow);

  return WeakRetained;
}

@end