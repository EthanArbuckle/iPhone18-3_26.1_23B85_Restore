@interface MBPrebuddyIntroExtraStorageOfferViewController
+ (id)_backupToCloudImage;
- (MBPrebuddyIntroExtraStorageOfferViewController)initWithFlow:(id)a3 daysUntilExpiration:(int64_t)a4;
- (MBViewControllerFlow)flow;
- (void)_setUp;
- (void)didTapCancelBarButtonItem:(id)a3;
- (void)didTapPrimaryButton:(id)a3;
- (void)didTapSecondaryButton:(id)a3;
- (void)viewDidLoad;
@end

@implementation MBPrebuddyIntroExtraStorageOfferViewController

+ (id)_backupToCloudImage
{
  v3 = +[MBPrebuddyManager backupToCloudImageName];
  v4 = [NSBundle bundleForClass:a1];
  v5 = [UIImage imageNamed:v3 inBundle:v4];
  v6 = [v5 imageWithRenderingMode:2];

  return v6;
}

- (MBPrebuddyIntroExtraStorageOfferViewController)initWithFlow:(id)a3 daysUntilExpiration:(int64_t)a4
{
  v6 = a3;
  v7 = MBLocalizedStringFromTable();
  v8 = MBLocalizedStringFromTable();
  v9 = [objc_opt_class() _backupToCloudImage];
  v12.receiver = self;
  v12.super_class = MBPrebuddyIntroExtraStorageOfferViewController;
  v10 = [(MBPrebuddyIntroExtraStorageOfferViewController *)&v12 initWithTitle:v7 detailText:v8 icon:v9];

  if (v10)
  {
    objc_storeWeak(&v10->_flow, v6);
    v10->_daysUntilExpiration = a4;
  }

  return v10;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = MBPrebuddyIntroExtraStorageOfferViewController;
  [(MBPrebuddyIntroExtraStorageOfferViewController *)&v4 viewDidLoad];
  [(MBPrebuddyIntroExtraStorageOfferViewController *)self _setUp];
  v3 = [(MBPrebuddyIntroExtraStorageOfferViewController *)self navigationItem];
  [v3 setHidesBackButton:1];
}

- (void)_setUp
{
  v3 = [(MBPrebuddyIntroExtraStorageOfferViewController *)self headerView];
  LODWORD(v4) = 1036831949;
  [v3 setTitleHyphenationFactor:v4];

  v25 = +[OBBoldTrayButton boldButton];
  v5 = MBLocalizedStringFromTable();
  [v25 setTitle:v5 forState:0];

  [v25 addTarget:self action:"didTapPrimaryButton:" forEvents:0x2000];
  v6 = [v25 titleLabel];
  LODWORD(v7) = 1036831949;
  [v6 _setHyphenationFactor:v7];

  v8 = [(MBPrebuddyIntroExtraStorageOfferViewController *)self buttonTray];
  [v8 addButton:v25];

  v9 = +[OBLinkTrayButton linkButton];
  v10 = MBLocalizedStringFromTable();
  [v9 setTitle:v10 forState:0];

  [v9 addTarget:self action:"didTapSecondaryButton:" forEvents:0x2000];
  v11 = [v9 titleLabel];
  LODWORD(v12) = 1036831949;
  [v11 _setHyphenationFactor:v12];

  v13 = [(MBPrebuddyIntroExtraStorageOfferViewController *)self buttonTray];
  [v13 addButton:v9];

  v14 = objc_alloc_init(NSDateComponentsFormatter);
  [v14 setUnitsStyle:3];
  [v14 setAllowedUnits:16];
  [v14 setMaximumUnitCount:1];
  [v14 setFormattingContext:5];
  v15 = objc_alloc_init(NSDateComponents);
  [v15 setDay:self->_daysUntilExpiration];
  v16 = [v14 stringFromDateComponents:v15];
  v17 = [[NSURL alloc] initWithString:@"https://support.apple.com/KB/HT212732"];
  v18 = [(MBPrebuddyIntroExtraStorageOfferViewController *)self buttonTray];
  v19 = MBLocalizedStringWithSubstitutionsFromTable();
  [v18 setCaptionText:v19 learnMoreURL:{v17, v16, v16}];

  v20 = [(MBPrebuddyIntroExtraStorageOfferViewController *)self navigationItem];
  [v20 _setBackgroundHidden:1];

  v21 = [(MBPrebuddyIntroExtraStorageOfferViewController *)self navigationController];
  v22 = [v21 navigationBar];
  v23 = [v22 backItem];
  if (v23)
  {
  }

  else
  {
    v24 = +[MBPrebuddyManager hasPrebuddyFollowUp];

    if (!v24)
    {
      goto LABEL_6;
    }

    v21 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"didTapCancelBarButtonItem:"];
    v22 = [(MBPrebuddyIntroExtraStorageOfferViewController *)self navigationItem];
    [v22 setLeftBarButtonItem:v21];
  }

LABEL_6:
}

- (void)didTapPrimaryButton:(id)a3
{
  v4 = objc_alloc_init(MBManager);
  if (([v4 isBackupEnabled] & 1) == 0)
  {
    [v4 setBackupEnabled:1];
    [v4 saveBackupEnabledForMegaBackup];
    v9 = 0;
    v5 = [v4 setMegaBackupTurnOniCloudBackupTelemetry:1 error:&v9];
    v6 = v9;
    if ((v5 & 1) == 0)
    {
      v7 = MBGetDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v11 = @"MegaBackupTurnOniCloudBackup";
        v12 = 2114;
        v13 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to set %{public}@: %{public}@", buf, 0x16u);
        _MBLog();
      }
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_flow);
  [WeakRetained mb_didTapNextFromViewController:self];
}

- (void)didTapSecondaryButton:(id)a3
{
  v4 = [(MBPrebuddyIntroExtraStorageOfferViewController *)self navigationController];
  v5 = [v4 view];
  [v5 setUserInteractionEnabled:0];

  WeakRetained = objc_loadWeakRetained(&self->_flow);
  [WeakRetained mb_didTapCancelFromViewController:self];

  v7 = objc_opt_new();
  v10 = 0;
  LOBYTE(v5) = [v7 setMegaBackupTurnOniCloudBackupTelemetry:0 error:&v10];
  v8 = v10;
  if ((v5 & 1) == 0)
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v12 = @"MegaBackupTurnOniCloudBackup";
      v13 = 2114;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to set %{public}@: %{public}@", buf, 0x16u);
      _MBLog();
    }
  }
}

- (void)didTapCancelBarButtonItem:(id)a3
{
  v4 = +[MBPrebuddyManager sharedManager];
  [v4 cancelPrebuddy];

  WeakRetained = objc_loadWeakRetained(&self->_flow);
  [WeakRetained mb_didTapCancelFromViewController:self];
}

- (MBViewControllerFlow)flow
{
  WeakRetained = objc_loadWeakRetained(&self->_flow);

  return WeakRetained;
}

@end