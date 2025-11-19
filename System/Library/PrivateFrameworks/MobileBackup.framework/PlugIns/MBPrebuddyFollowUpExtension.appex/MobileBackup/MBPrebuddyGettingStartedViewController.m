@interface MBPrebuddyGettingStartedViewController
+ (id)_phoneTransferImage;
- (CGSize)_normalizeSize:(CGSize)a3 to:(CGSize)a4 scale:(double)a5;
- (MBPrebuddyGettingStartedViewController)initWithFlow:(id)a3 entryPoint:(int64_t)a4 deepLinkURL:(id)a5 needsAccountSignIn:(BOOL)a6 altDSIDForHSA2Upgrade:(id)a7;
- (MBViewControllerFlow)flow;
- (id)_iconOfSystemImageName:(id)a3 glyphScale:(double)a4 nudge:(CGPoint)a5 colored:(id)a6 backgroundGradientStart:(id)a7 backgroundGradientEnd:(id)a8 sized:(double)a9;
- (id)_xpcQueue;
- (void)_checkEligibility:(id)a3;
- (void)_checkEligibilityAndUpgradeHSA2IfNeeded:(id)a3;
- (void)_configureButtonTray;
- (void)_enableBackupIfNeeded:(id)a3;
- (void)_hideLoadingStatusView;
- (void)_presentError:(id)a3 completion:(id)a4;
- (void)_setUp;
- (void)_showLoadingStatusView;
- (void)_signInAccountIfNeeded:(id)a3;
- (void)_upgradeHSA2IfNeeded:(id)a3;
- (void)didTapCancelBarButtonItem:(id)a3;
- (void)didTapPrimaryButton:(id)a3;
- (void)didTapSecondaryButton:(id)a3;
- (void)signInControllerDidCancel:(id)a3;
- (void)viewDidLoad;
@end

@implementation MBPrebuddyGettingStartedViewController

+ (id)_phoneTransferImage
{
  v3 = +[MBPrebuddyManager twoDeviceImageName];
  v4 = [NSBundle bundleForClass:a1];
  v5 = [UIImage imageNamed:v3 inBundle:v4];
  v6 = [v5 imageWithRenderingMode:2];

  return v6;
}

- (MBPrebuddyGettingStartedViewController)initWithFlow:(id)a3 entryPoint:(int64_t)a4 deepLinkURL:(id)a5 needsAccountSignIn:(BOOL)a6 altDSIDForHSA2Upgrade:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v15 = MBLocalizedStringFromTable();
  v16 = MBLocalizedStringFromTable();
  v17 = [objc_opt_class() _phoneTransferImage];
  v26.receiver = self;
  v26.super_class = MBPrebuddyGettingStartedViewController;
  v18 = [(MBPrebuddyGettingStartedViewController *)&v26 initWithTitle:v15 detailText:v16 icon:v17];

  if (v18)
  {
    objc_storeWeak(&v18->_flow, v12);
    v18->_entryPoint = a4;
    v19 = [v13 copy];
    deepLinkURL = v18->_deepLinkURL;
    v18->_deepLinkURL = v19;

    v18->_needsAccountSignIn = a6;
    objc_storeStrong(&v18->_altDSIDForHSA2Upgrade, a7);
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
  v3 = [(MBPrebuddyGettingStartedViewController *)self navigationItem];
  [v3 setHidesBackButton:1];
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

  v9 = [(MBPrebuddyGettingStartedViewController *)self view];
  v10 = [(MBPrebuddyGettingStartedViewController *)self statusView];
  [v9 addSubview:v10];

  v36 = [(MBPrebuddyGettingStartedViewController *)self statusView];
  v34 = [v36 leadingAnchor];
  v35 = [(MBPrebuddyGettingStartedViewController *)self view];
  v33 = [v35 leadingAnchor];
  v32 = [v34 constraintEqualToAnchor:v33];
  v38[0] = v32;
  v31 = [(MBPrebuddyGettingStartedViewController *)self statusView];
  v29 = [v31 topAnchor];
  v30 = [(MBPrebuddyGettingStartedViewController *)self view];
  v28 = [v30 topAnchor];
  v27 = [v29 constraintEqualToAnchor:v28];
  v38[1] = v27;
  v26 = [(MBPrebuddyGettingStartedViewController *)self statusView];
  v25 = [v26 trailingAnchor];
  v11 = [(MBPrebuddyGettingStartedViewController *)self view];
  v12 = [v11 trailingAnchor];
  v13 = [v25 constraintEqualToAnchor:v12];
  v38[2] = v13;
  v14 = [(MBPrebuddyGettingStartedViewController *)self statusView];
  v15 = [v14 bottomAnchor];
  v16 = [(MBPrebuddyGettingStartedViewController *)self view];
  v17 = [v16 bottomAnchor];
  v18 = [v15 constraintEqualToAnchor:v17];
  v38[3] = v18;
  v19 = [NSArray arrayWithObjects:v38 count:4];
  [NSLayoutConstraint activateConstraints:v19];

  v20 = [(MBPrebuddyGettingStartedViewController *)self navigationItem];
  [v20 _setBackgroundHidden:1];

  v21 = [(MBPrebuddyGettingStartedViewController *)self navigationController];
  v22 = [v21 navigationBar];
  v23 = [v22 backItem];
  if (v23)
  {

LABEL_7:
    goto LABEL_8;
  }

  v24 = +[MBPrebuddyManager hasPrebuddyFollowUp];

  if (v24)
  {
    v21 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"didTapCancelBarButtonItem:"];
    v22 = [(MBPrebuddyGettingStartedViewController *)self navigationItem];
    [v22 setLeftBarButtonItem:v21];
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
  v4 = [v12 titleLabel];
  LODWORD(v5) = 1036831949;
  [v4 _setHyphenationFactor:v5];

  v6 = [(MBPrebuddyGettingStartedViewController *)self buttonTray];
  [v6 addButton:v12];

  v7 = +[OBLinkTrayButton linkButton];
  v8 = MBLocalizedStringFromTable();
  [v7 setTitle:v8 forState:0];

  [v7 addTarget:self action:"didTapSecondaryButton:" forEvents:0x2000];
  v9 = [v7 titleLabel];
  LODWORD(v10) = 1036831949;
  [v9 _setHyphenationFactor:v10];

  v11 = [(MBPrebuddyGettingStartedViewController *)self buttonTray];
  [v11 addButton:v7];
}

- (void)_showLoadingStatusView
{
  v3 = [(MBPrebuddyGettingStartedViewController *)self navigationController];
  v4 = [v3 view];
  [v4 setUserInteractionEnabled:0];

  v5 = [(MBPrebuddyGettingStartedViewController *)self statusView];
  [v5 startAnimating];

  v6 = [(MBPrebuddyGettingStartedViewController *)self buttonTray];
  [v6 removeAllButtons];
}

- (void)_hideLoadingStatusView
{
  v3 = [(MBPrebuddyGettingStartedViewController *)self statusView];
  [v3 stopAnimating];

  v4 = [(MBPrebuddyGettingStartedViewController *)self buttonTray];
  [v4 removeAllButtons];

  [(MBPrebuddyGettingStartedViewController *)self _configureButtonTray];
  v6 = [(MBPrebuddyGettingStartedViewController *)self navigationController];
  v5 = [v6 view];
  [v5 setUserInteractionEnabled:1];
}

- (void)didTapPrimaryButton:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000061C0;
  v3[3] = &unk_10001C6D0;
  v3[4] = self;
  [(MBPrebuddyGettingStartedViewController *)self _signInAccountIfNeeded:v3];
}

- (void)didTapSecondaryButton:(id)a3
{
  v4 = [(MBPrebuddyGettingStartedViewController *)self navigationController];
  v5 = [v4 view];
  [v5 setUserInteractionEnabled:0];

  WeakRetained = objc_loadWeakRetained(&self->_flow);
  [WeakRetained mb_didTapCancelFromViewController:self];
}

- (void)didTapCancelBarButtonItem:(id)a3
{
  v4 = +[MBPrebuddyManager sharedManager];
  [v4 cancelPrebuddy];

  WeakRetained = objc_loadWeakRetained(&self->_flow);
  [WeakRetained mb_didTapCancelFromViewController:self];
}

- (void)_enableBackupIfNeeded:(id)a3
{
  v4 = a3;
  v5 = v4;
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
    v21 = self;
    v22 = v10;
    v23 = v11;
    v14 = v10;
    v15 = [UIAlertAction actionWithTitle:v13 style:1 handler:&v17];

    [v14 addAction:{v12, v17, v18, v19, v20, v21}];
    [v14 addAction:v15];
    [v14 setPreferredAction:v12];
    v16 = MBPrebuddyAlertIcon();
    [v14 setImage:v16];

    [(MBPrebuddyGettingStartedViewController *)self presentViewController:v14 animated:1 completion:0];
  }

  else
  {
    (*(v4 + 2))(v4, 1);
  }
}

- (id)_iconOfSystemImageName:(id)a3 glyphScale:(double)a4 nudge:(CGPoint)a5 colored:(id)a6 backgroundGradientStart:(id)a7 backgroundGradientEnd:(id)a8 sized:(double)a9
{
  y = a5.y;
  x = a5.x;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a3;
  v34.width = a9;
  v34.height = a9;
  UIGraphicsBeginImageContextWithOptions(v34, 0, 1.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  v35.origin.x = 0.0;
  v35.origin.y = 0.0;
  v35.size.width = a9;
  v35.size.height = a9;
  v36 = CGRectInset(v35, 1.0, 1.0);
  CGContextAddEllipseInRect(CurrentContext, v36);
  CGContextClip(CurrentContext);
  v22 = +[CAGradientLayer layer];
  [v22 setFrame:{0.0, 0.0, a9, a9}];
  v23 = [v18 CGColor];

  v32[0] = v23;
  v24 = [v17 CGColor];

  v32[1] = v24;
  v25 = [NSArray arrayWithObjects:v32 count:2];
  [v22 setColors:v25];

  [v22 renderInContext:CurrentContext];
  v26 = [UIImage systemImageNamed:v20];

  v27 = [v26 imageWithTintColor:v19];

  [v27 size];
  [MBPrebuddyGettingStartedViewController _normalizeSize:"_normalizeSize:to:scale:" to:? scale:?];
  [v27 drawInRect:{(a9 - v28) * 0.5 + x * a4, (a9 - v29) * 0.5 + y * a4, v28}];
  v30 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v30;
}

- (CGSize)_normalizeSize:(CGSize)a3 to:(CGSize)a4 scale:(double)a5
{
  v5 = fmin(a4.width, a4.height) * a5 / fmax(a3.width, a3.height);
  v6 = a3.width * v5;
  v7 = a3.height * v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)_signInAccountIfNeeded:(id)a3
{
  v4 = a3;
  v5 = v4;
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
    (*(v4 + 2))(v4, 1);
  }
}

- (void)_checkEligibilityAndUpgradeHSA2IfNeeded:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100007170;
  v4[3] = &unk_10001C8E8;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(MBPrebuddyGettingStartedViewController *)v5 _checkEligibility:v4];
}

- (void)_upgradeHSA2IfNeeded:(id)a3
{
  v4 = a3;
  altDSIDForHSA2Upgrade = self->_altDSIDForHSA2Upgrade;
  if (altDSIDForHSA2Upgrade && !self->_didHSA2Upgrade)
  {
    if ([(NSString *)altDSIDForHSA2Upgrade length])
    {
      v6 = [[CDPUIDeviceToDeviceEncryptionFlowContext alloc] initWithAltDSID:self->_altDSIDForHSA2Upgrade];
      [v6 setPresentingViewController:self];
      [v6 setDeviceToDeviceEncryptionUpgradeUIStyle:1];
      v7 = [[CDPUIDeviceToDeviceEncryptionHelper alloc] initWithContext:v6];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000073D8;
      v11[3] = &unk_10001C910;
      v11[4] = self;
      v12 = v4;
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

      (*(v4 + 2))(v4, 0);
      v9 = [(MBPrebuddyGettingStartedViewController *)self navigationController];
      v10 = [v9 view];
      [v10 setUserInteractionEnabled:0];

      v6 = [(MBPrebuddyGettingStartedViewController *)self flow];
      [v6 mb_didTapCancelFromViewController:self];
    }
  }

  else
  {
    (*(v4 + 2))(v4, 1);
  }
}

- (void)_checkEligibility:(id)a3
{
  v4 = a3;
  [(MBPrebuddyGettingStartedViewController *)self _showLoadingStatusView];
  v5 = objc_alloc_init(MBManager);
  v6 = [v5 isBackupEnabled] ^ 1;
  v7 = [v5 backupDeviceUUID];
  v8 = objc_alloc_init(MBMegaBackupEligibilityManager);
  entryPoint = self->_entryPoint;
  deepLinkURL = self->_deepLinkURL;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100007608;
  v12[3] = &unk_10001C938;
  v14 = v6;
  v12[4] = self;
  v13 = v4;
  v11 = v4;
  [(MBMegaBackupEligibilityManager *)v8 checkMegaBackupEligibility:entryPoint deepLinkURL:deepLinkURL backupDeviceUUID:v7 queue:&_dispatch_main_q completion:v12];
}

- (void)_presentError:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MBLocalizedStringFromTable();
  v9 = MBLocalizedStringFromTable();
  v10 = MBLocalizedStringFromTable();
  v11 = [v6 domain];
  v12 = _ICQMegaBackupErrorDomain;
  if ([v11 isEqualToString:_ICQMegaBackupErrorDomain])
  {
    v13 = [v6 code];

    if (v13 == 5)
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
      v19 = v9;
      v8 = v17;
      v9 = 0;
      goto LABEL_26;
    }
  }

  else
  {
  }

  v20 = [v6 domain];
  if ([v20 isEqualToString:v12])
  {
    v21 = [v6 code];

    if (v21 == 6)
    {
LABEL_24:
      v24 = MBLocalizedStringFromTable();

      v25 = MBLocalizedStringFromTable();

      v26 = MBLocalizedStringFromTable();
      v18 = 0;
      v19 = v10;
      goto LABEL_25;
    }
  }

  else
  {
  }

  v22 = [v6 domain];
  if ([v22 isEqualToString:@"MBMegaBackupEligibilityErrorDomain"])
  {
    v23 = [v6 code];

    if (v23 == 6)
    {
      v24 = MBLocalizedStringFromTable();

      v25 = MBLocalizedStringFromTable();

      v26 = MBLocalizedStringFromTable();
      v19 = v10;
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

  v27 = [v6 domain];
  if ([v27 isEqualToString:@"MBMegaBackupEligibilityErrorDomain"])
  {
    v28 = [v6 code];

    if (v28 == 2)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  v19 = [v6 domain];
  if ([v19 isEqualToString:@"MBMegaBackupEligibilityErrorDomain"])
  {
    if ([v6 code] == 3)
    {
    }

    else
    {
      v29 = [v6 code];

      if (v29 != 4)
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
  v35 = v7;
  v32 = v7;
  v33 = [UIAlertAction actionWithTitle:v10 style:0 handler:v34];
  [v30 addAction:v33];
  [(MBPrebuddyGettingStartedViewController *)self presentViewController:v30 animated:1 completion:0];
}

- (void)signInControllerDidCancel:(id)a3
{
  v3 = a3;
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "signInControllerDidCancel:", v5, 2u);
    _MBLog();
  }

  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (MBViewControllerFlow)flow
{
  WeakRetained = objc_loadWeakRetained(&self->_flow);

  return WeakRetained;
}

@end