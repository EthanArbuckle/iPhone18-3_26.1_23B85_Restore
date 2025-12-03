@interface MBPrebuddyStartTransferViewController
+ (id)_backupToCloudImage;
- (MBPrebuddyStartTransferViewController)initWithFlow:(id)flow needsTemporaryStorage:(BOOL)storage daysUntilExpiration:(int64_t)expiration;
- (MBViewControllerFlow)flow;
- (void)_setUp;
- (void)didTapPrimaryButton:(id)button;
- (void)didTapSecondaryButton:(id)button;
- (void)viewDidLoad;
@end

@implementation MBPrebuddyStartTransferViewController

+ (id)_backupToCloudImage
{
  v3 = +[MBPrebuddyManager backupToCloudImageName];
  v4 = [NSBundle bundleForClass:self];
  v5 = [UIImage imageNamed:v3 inBundle:v4];
  v6 = [v5 imageWithRenderingMode:2];

  return v6;
}

- (MBPrebuddyStartTransferViewController)initWithFlow:(id)flow needsTemporaryStorage:(BOOL)storage daysUntilExpiration:(int64_t)expiration
{
  storageCopy = storage;
  flowCopy = flow;
  v9 = objc_alloc_init(NSDateComponentsFormatter);
  [v9 setUnitsStyle:3];
  [v9 setAllowedUnits:16];
  [v9 setMaximumUnitCount:1];
  [v9 setFormattingContext:5];
  v10 = objc_alloc_init(NSDateComponents);
  [v10 setDay:expiration];
  v11 = [v9 stringFromDateComponents:v10];
  v12 = MGGetBoolAnswer();
  v13 = @"WIFI";
  if (v12)
  {
    v13 = @"WLAN";
  }

  v14 = v13;
  if (storageCopy)
  {
    v15 = [NSString stringWithFormat:@"MB_PREBUDDY_START_TRANSFER_OFFER_DETAIL_%@", v14];
    MBLocalizedStringWithSubstitutionsFromTable();
  }

  else
  {
    v15 = [NSString stringWithFormat:@"MB_PREBUDDY_START_TRANSFER_DETAIL_%@", v14];
    MBLocalizedStringFromTable();
  }
  v16 = ;

  v17 = MBLocalizedStringFromTable();
  _backupToCloudImage = [objc_opt_class() _backupToCloudImage];
  v21.receiver = self;
  v21.super_class = MBPrebuddyStartTransferViewController;
  v19 = [(MBPrebuddyStartTransferViewController *)&v21 initWithTitle:v17 detailText:v16 icon:_backupToCloudImage];

  if (v19)
  {
    objc_storeWeak(&v19->_flow, flowCopy);
  }

  return v19;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = MBPrebuddyStartTransferViewController;
  [(MBPrebuddyStartTransferViewController *)&v3 viewDidLoad];
  [(MBPrebuddyStartTransferViewController *)self _setUp];
}

- (void)_setUp
{
  v13 = +[OBBoldTrayButton boldButton];
  v3 = MBLocalizedStringFromTable();
  [v13 setTitle:v3 forState:0];

  [v13 addTarget:self action:"didTapPrimaryButton:" forEvents:0x2000];
  titleLabel = [v13 titleLabel];
  LODWORD(v5) = 1036831949;
  [titleLabel _setHyphenationFactor:v5];

  buttonTray = [(MBPrebuddyStartTransferViewController *)self buttonTray];
  [buttonTray addButton:v13];

  v7 = +[OBLinkTrayButton linkButton];
  v8 = MBLocalizedStringFromTable();
  [v7 setTitle:v8 forState:0];

  [v7 addTarget:self action:"didTapSecondaryButton:" forEvents:0x2000];
  titleLabel2 = [v7 titleLabel];
  LODWORD(v10) = 1036831949;
  [titleLabel2 _setHyphenationFactor:v10];

  buttonTray2 = [(MBPrebuddyStartTransferViewController *)self buttonTray];
  [buttonTray2 addButton:v7];

  navigationItem = [(MBPrebuddyStartTransferViewController *)self navigationItem];
  [navigationItem _setBackgroundHidden:1];
}

- (void)didTapPrimaryButton:(id)button
{
  v5 = objc_alloc_init(MBManager);
  if (([v5 isBackupEnabled] & 1) == 0)
  {
    [v5 setBackupEnabled:1];
    [v5 saveBackupEnabledForMegaBackup];
  }

  WeakRetained = objc_loadWeakRetained(&self->_flow);
  [WeakRetained mb_didTapNextFromViewController:self];
}

- (void)didTapSecondaryButton:(id)button
{
  navigationController = [(MBPrebuddyStartTransferViewController *)self navigationController];
  view = [navigationController view];
  [view setUserInteractionEnabled:0];

  WeakRetained = objc_loadWeakRetained(&self->_flow);
  [WeakRetained mb_didTapCancelFromViewController:self];
}

- (MBViewControllerFlow)flow
{
  WeakRetained = objc_loadWeakRetained(&self->_flow);

  return WeakRetained;
}

@end