@interface MBPrebuddyIntroExtraStorageOfferViewController
+ (id)_backupToCloudImage;
- (MBPrebuddyIntroExtraStorageOfferViewController)initWithFlow:(id)flow daysUntilExpiration:(int64_t)expiration;
- (MBViewControllerFlow)flow;
- (void)_setUp;
- (void)didTapCancelBarButtonItem:(id)item;
- (void)didTapPrimaryButton:(id)button;
- (void)didTapSecondaryButton:(id)button;
- (void)viewDidLoad;
@end

@implementation MBPrebuddyIntroExtraStorageOfferViewController

+ (id)_backupToCloudImage
{
  v3 = +[MBPrebuddyManager backupToCloudImageName];
  v4 = [NSBundle bundleForClass:self];
  v5 = [UIImage imageNamed:v3 inBundle:v4];
  v6 = [v5 imageWithRenderingMode:2];

  return v6;
}

- (MBPrebuddyIntroExtraStorageOfferViewController)initWithFlow:(id)flow daysUntilExpiration:(int64_t)expiration
{
  flowCopy = flow;
  v7 = MBLocalizedStringFromTable();
  v8 = MBLocalizedStringFromTable();
  _backupToCloudImage = [objc_opt_class() _backupToCloudImage];
  v12.receiver = self;
  v12.super_class = MBPrebuddyIntroExtraStorageOfferViewController;
  v10 = [(MBPrebuddyIntroExtraStorageOfferViewController *)&v12 initWithTitle:v7 detailText:v8 icon:_backupToCloudImage];

  if (v10)
  {
    objc_storeWeak(&v10->_flow, flowCopy);
    v10->_daysUntilExpiration = expiration;
  }

  return v10;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = MBPrebuddyIntroExtraStorageOfferViewController;
  [(MBPrebuddyIntroExtraStorageOfferViewController *)&v4 viewDidLoad];
  [(MBPrebuddyIntroExtraStorageOfferViewController *)self _setUp];
  navigationItem = [(MBPrebuddyIntroExtraStorageOfferViewController *)self navigationItem];
  [navigationItem setHidesBackButton:1];
}

- (void)_setUp
{
  headerView = [(MBPrebuddyIntroExtraStorageOfferViewController *)self headerView];
  LODWORD(v4) = 1036831949;
  [headerView setTitleHyphenationFactor:v4];

  v25 = +[OBBoldTrayButton boldButton];
  v5 = MBLocalizedStringFromTable();
  [v25 setTitle:v5 forState:0];

  [v25 addTarget:self action:"didTapPrimaryButton:" forEvents:0x2000];
  titleLabel = [v25 titleLabel];
  LODWORD(v7) = 1036831949;
  [titleLabel _setHyphenationFactor:v7];

  buttonTray = [(MBPrebuddyIntroExtraStorageOfferViewController *)self buttonTray];
  [buttonTray addButton:v25];

  v9 = +[OBLinkTrayButton linkButton];
  v10 = MBLocalizedStringFromTable();
  [v9 setTitle:v10 forState:0];

  [v9 addTarget:self action:"didTapSecondaryButton:" forEvents:0x2000];
  titleLabel2 = [v9 titleLabel];
  LODWORD(v12) = 1036831949;
  [titleLabel2 _setHyphenationFactor:v12];

  buttonTray2 = [(MBPrebuddyIntroExtraStorageOfferViewController *)self buttonTray];
  [buttonTray2 addButton:v9];

  v14 = objc_alloc_init(NSDateComponentsFormatter);
  [v14 setUnitsStyle:3];
  [v14 setAllowedUnits:16];
  [v14 setMaximumUnitCount:1];
  [v14 setFormattingContext:5];
  v15 = objc_alloc_init(NSDateComponents);
  [v15 setDay:self->_daysUntilExpiration];
  v16 = [v14 stringFromDateComponents:v15];
  v17 = [[NSURL alloc] initWithString:@"https://support.apple.com/KB/HT212732"];
  buttonTray3 = [(MBPrebuddyIntroExtraStorageOfferViewController *)self buttonTray];
  v19 = MBLocalizedStringWithSubstitutionsFromTable();
  [buttonTray3 setCaptionText:v19 learnMoreURL:{v17, v16, v16}];

  navigationItem = [(MBPrebuddyIntroExtraStorageOfferViewController *)self navigationItem];
  [navigationItem _setBackgroundHidden:1];

  navigationController = [(MBPrebuddyIntroExtraStorageOfferViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  backItem = [navigationBar backItem];
  if (backItem)
  {
  }

  else
  {
    v24 = +[MBPrebuddyManager hasPrebuddyFollowUp];

    if (!v24)
    {
      goto LABEL_6;
    }

    navigationController = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"didTapCancelBarButtonItem:"];
    navigationBar = [(MBPrebuddyIntroExtraStorageOfferViewController *)self navigationItem];
    [navigationBar setLeftBarButtonItem:navigationController];
  }

LABEL_6:
}

- (void)didTapPrimaryButton:(id)button
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

- (void)didTapSecondaryButton:(id)button
{
  navigationController = [(MBPrebuddyIntroExtraStorageOfferViewController *)self navigationController];
  view = [navigationController view];
  [view setUserInteractionEnabled:0];

  WeakRetained = objc_loadWeakRetained(&self->_flow);
  [WeakRetained mb_didTapCancelFromViewController:self];

  v7 = objc_opt_new();
  v10 = 0;
  LOBYTE(view) = [v7 setMegaBackupTurnOniCloudBackupTelemetry:0 error:&v10];
  v8 = v10;
  if ((view & 1) == 0)
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

- (void)didTapCancelBarButtonItem:(id)item
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