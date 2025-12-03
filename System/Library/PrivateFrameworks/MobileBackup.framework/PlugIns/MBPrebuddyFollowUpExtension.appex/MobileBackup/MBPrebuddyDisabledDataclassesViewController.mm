@interface MBPrebuddyDisabledDataclassesViewController
- (MBPrebuddyDisabledDataclassesViewController)initWithFlow:(id)flow disabledSyncCategories:(id)categories disabledBackupDomains:(id)domains needsTemporaryStorage:(BOOL)storage;
- (MBViewControllerFlow)flow;
- (id)_iconForBackupDomain:(id)domain;
- (id)_localizedTitleForBackupDomain:(id)domain;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)_presentKeychainError:(id)error;
- (void)_presentUnknownError;
- (void)_setUp;
- (void)_updateTableView:(BOOL)view;
- (void)didTapPrimaryButton:(id)button;
- (void)didTapSecondaryButton:(id)button;
- (void)viewDidLoad;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation MBPrebuddyDisabledDataclassesViewController

- (MBPrebuddyDisabledDataclassesViewController)initWithFlow:(id)flow disabledSyncCategories:(id)categories disabledBackupDomains:(id)domains needsTemporaryStorage:(BOOL)storage
{
  flowCopy = flow;
  categoriesCopy = categories;
  domainsCopy = domains;
  v13 = MBLocalizedStringFromTable();
  v14 = MBLocalizedStringFromTable();
  v17.receiver = self;
  v17.super_class = MBPrebuddyDisabledDataclassesViewController;
  v15 = [(MBPrebuddyDisabledDataclassesViewController *)&v17 initWithTitle:v14 detailText:v13 icon:0 adoptTableViewScrollView:1];

  if (v15)
  {
    objc_storeWeak(&v15->_flow, flowCopy);
    objc_storeStrong(&v15->_disabledSyncCategories, categories);
    objc_storeStrong(&v15->_disabledBackupDomains, domains);
    v15->_needsTemporaryStorage = storage;
  }

  return v15;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = MBPrebuddyDisabledDataclassesViewController;
  [(MBPrebuddyDisabledDataclassesViewController *)&v3 viewDidLoad];
  [(MBPrebuddyDisabledDataclassesViewController *)self _setUp];
}

- (void)_setUp
{
  traitCollection = [(MBPrebuddyDisabledDataclassesViewController *)self traitCollection];
  self->_currentAppearance = [traitCollection mb_appearance];

  v4 = +[OBBoldTrayButton boldButton];
  v5 = MBLocalizedStringFromTable();
  [v4 setTitle:v5 forState:0];

  [v4 addTarget:self action:"didTapPrimaryButton:" forEvents:0x2000];
  titleLabel = [v4 titleLabel];
  LODWORD(v7) = 1036831949;
  [titleLabel _setHyphenationFactor:v7];

  buttonTray = [(MBPrebuddyDisabledDataclassesViewController *)self buttonTray];
  [buttonTray addButton:v4];

  v9 = +[OBLinkTrayButton linkButton];
  v10 = MBLocalizedStringFromTable();
  [v9 setTitle:v10 forState:0];

  [v9 addTarget:self action:"didTapSecondaryButton:" forEvents:0x2000];
  titleLabel2 = [v9 titleLabel];
  LODWORD(v12) = 1036831949;
  [titleLabel2 _setHyphenationFactor:v12];

  buttonTray2 = [(MBPrebuddyDisabledDataclassesViewController *)self buttonTray];
  [buttonTray2 addButton:v9];

  v14 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v14 setDelegate:self];
  [v14 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"SectionHeaderView"];
  [v14 registerClass:objc_opt_class() forCellReuseIdentifier:@"AppItemCell"];
  [(MBPrebuddyDisabledDataclassesViewController *)self setTableView:v14];
  v15 = +[UIColor clearColor];
  tableView = [(MBPrebuddyDisabledDataclassesViewController *)self tableView];
  [tableView setBackgroundColor:v15];

  objc_initWeak(&location, self);
  v17 = [UITableViewDiffableDataSource alloc];
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_10000341C;
  v24 = &unk_10001C6A8;
  objc_copyWeak(&v25, &location);
  v18 = [v17 initWithTableView:v14 cellProvider:&v21];
  dataSource = self->_dataSource;
  self->_dataSource = v18;

  [(UITableViewDiffableDataSource *)self->_dataSource setDefaultRowAnimation:0, v21, v22, v23, v24];
  [(MBPrebuddyDisabledDataclassesViewController *)self _updateTableView:0];
  navigationItem = [(MBPrebuddyDisabledDataclassesViewController *)self navigationItem];
  [navigationItem _setBackgroundHidden:1];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

- (void)didTapPrimaryButton:(id)button
{
  navigationController = [(MBPrebuddyDisabledDataclassesViewController *)self navigationController];
  view = [navigationController view];
  [view setUserInteractionEnabled:0];

  v6 = objc_opt_new();
  v17 = 0;
  v7 = [v6 setMegaBackupTurnOnAllAppsSyncTelemetry:1 error:&v17];
  v8 = v17;
  if ((v7 & 1) == 0)
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v19 = @"MegaBackupTurnOnAllAppsSync";
      v20 = 2114;
      v21 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to set %{public}@: %{public}@", buf, 0x16u);
      v14 = @"MegaBackupTurnOnAllAppsSync";
      v15 = v8;
      _MBLog();
    }
  }

  v10 = objc_alloc_init(MBPrebuddyDisabledCategoriesManager);
  if ([(NSArray *)self->_disabledBackupDomains count])
  {
    [(MBPrebuddyDisabledCategoriesManager *)v10 enableDisabledBackupDomains:self->_needsTemporaryStorage];
  }

  if ([(NSArray *)self->_disabledSyncCategories count:v14])
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100003860;
    v16[3] = &unk_10001C6F8;
    v16[4] = self;
    [(MBPrebuddyDisabledCategoriesManager *)v10 enableDisabledSyncCategories:&_dispatch_main_q completion:v16];
  }

  else
  {
    navigationController2 = [(MBPrebuddyDisabledDataclassesViewController *)self navigationController];
    view2 = [navigationController2 view];
    [view2 setUserInteractionEnabled:1];

    WeakRetained = objc_loadWeakRetained(&self->_flow);
    [WeakRetained mb_didTapNextFromViewController:self];
  }
}

- (void)didTapSecondaryButton:(id)button
{
  WeakRetained = objc_loadWeakRetained(&self->_flow);
  [WeakRetained mb_didTapCancelFromViewController:self];

  v5 = objc_opt_new();
  v9 = 0;
  v6 = [v5 setMegaBackupTurnOnAllAppsSyncTelemetry:0 error:&v9];
  v7 = v9;
  if ((v6 & 1) == 0)
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v11 = @"MegaBackupTurnOnAllAppsSync";
      v12 = 2114;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to set %{public}@: %{public}@", buf, 0x16u);
      _MBLog();
    }
  }
}

- (void)_updateTableView:(BOOL)view
{
  viewCopy = view;
  if ([(MBPrebuddyDisabledDataclassesViewController *)self isViewLoaded])
  {
    v10 = [[NSMutableArray alloc] initWithCapacity:2];
    if ([(NSArray *)self->_disabledSyncCategories count])
    {
      [v10 addObject:MBDisabledDataclassTableViewSectionHeaderDisabledSyncCategories];
    }

    if ([(NSArray *)self->_disabledBackupDomains count])
    {
      [v10 addObject:MBDisabledDataclassTableViewSectionHeaderDisabledBackupDomains];
    }

    snapshot = [(UITableViewDiffableDataSource *)self->_dataSource snapshot];
    [snapshot deleteAllItems];
    [snapshot appendSectionsWithIdentifiers:v10];
    if ([(NSArray *)self->_disabledSyncCategories count])
    {
      [snapshot appendItemsWithIdentifiers:self->_disabledSyncCategories intoSectionWithIdentifier:MBDisabledDataclassTableViewSectionHeaderDisabledSyncCategories];
    }

    if ([(NSArray *)self->_disabledBackupDomains count])
    {
      [snapshot appendItemsWithIdentifiers:self->_disabledBackupDomains intoSectionWithIdentifier:MBDisabledDataclassTableViewSectionHeaderDisabledBackupDomains];
    }

    dataSource = self->_dataSource;
    tableView = [(MBPrebuddyDisabledDataclassesViewController *)self tableView];
    window = [tableView window];
    if (window)
    {
      v9 = viewCopy;
    }

    else
    {
      v9 = 0;
    }

    [(UITableViewDiffableDataSource *)dataSource applySnapshot:snapshot animatingDifferences:v9];
  }
}

- (void)_presentKeychainError:(id)error
{
  errorCopy = error;
  v5 = MBLocalizedStringFromTable();
  v6 = MBLocalizedStringFromTable();
  v7 = [UIAlertController alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  v8 = MBPrebuddyAlertIcon();
  [v7 setImage:v8];

  v9 = MBLocalizedStringFromTable();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100003ED8;
  v12[3] = &unk_10001C720;
  v13 = errorCopy;
  v10 = errorCopy;
  v11 = [UIAlertAction actionWithTitle:v9 style:0 handler:v12];

  [v7 addAction:v11];
  [(MBPrebuddyDisabledDataclassesViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)_presentUnknownError
{
  v3 = MBLocalizedStringFromTable();
  v4 = MBLocalizedStringFromTable();
  v8 = [UIAlertController alertControllerWithTitle:v3 message:v4 preferredStyle:1];

  v5 = MBPrebuddyAlertIcon();
  [v8 setImage:v5];

  v6 = MBLocalizedStringFromTable();
  v7 = [UIAlertAction actionWithTitle:v6 style:0 handler:&stru_10001C760];

  [v8 addAction:v7];
  [(MBPrebuddyDisabledDataclassesViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (id)_iconForBackupDomain:(id)domain
{
  domainCopy = domain;
  bundleID = [domainCopy bundleID];
  if ([domainCopy isCameraRollDomain])
  {
    v6 = @"com.apple.camera";
  }

  else
  {
    domainName = [domainCopy domainName];
    v8 = [domainName isEqualToString:@"KeyboardDomain"];

    if (v8)
    {
      v6 = @"com.apple.keyboard";
    }

    else
    {
      domainName2 = [domainCopy domainName];
      v10 = [domainName2 isEqualToString:@"HealthDomain"];

      if (!v10)
      {
        goto LABEL_8;
      }

      v6 = @"com.apple.Health";
    }
  }

  bundleID = v6;
LABEL_8:
  v11 = [[ISIcon alloc] initWithBundleIdentifier:bundleID];
  v12 = [ISImageDescriptor imageDescriptorNamed:kISImageDescriptorTableUIName];
  [v12 setAppearance:self->_currentAppearance];
  v13 = [v11 prepareImageForDescriptor:v12];
  cGImage = [v13 CGImage];
  v15 = +[UIScreen mainScreen];
  [v15 scale];
  v16 = [UIImage imageWithCGImage:cGImage scale:0 orientation:?];

  return v16;
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  mb_appearance = [collection mb_appearance];
  if (mb_appearance != self->_currentAppearance)
  {
    self->_currentAppearance = mb_appearance;
    tableView = [(MBPrebuddyDisabledDataclassesViewController *)self tableView];
    [tableView reloadData];
  }
}

- (id)_localizedTitleForBackupDomain:(id)domain
{
  domainCopy = domain;
  if ([domainCopy isCameraRollDomain])
  {
    goto LABEL_4;
  }

  domainName = [domainCopy domainName];
  v5 = [domainName isEqualToString:@"KeyboardDomain"];

  if (v5 || ([domainCopy domainName], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", @"HealthDomain"), v6, v7))
  {
LABEL_4:
    v8 = MBLocalizedStringFromTable();
  }

  else
  {
    bundleID = [domainCopy bundleID];
    v11 = [LSApplicationProxy applicationProxyForIdentifier:bundleID];

    v8 = [v11 localizedNameForContext:0];
  }

  return v8;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if (section == 1)
  {
    goto LABEL_4;
  }

  if (!section)
  {
    [(NSArray *)self->_disabledSyncCategories count];
LABEL_4:
    v7 = MBLocalizedStringFromTable();
    goto LABEL_6;
  }

  v7 = 0;
LABEL_6:
  v8 = +[UIListContentConfiguration extraProminentInsetGroupedHeaderConfiguration];
  [v8 setText:v7];
  v9 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:@"SectionHeaderView"];
  [v9 setContentConfiguration:v8];

  return v9;
}

- (MBViewControllerFlow)flow
{
  WeakRetained = objc_loadWeakRetained(&self->_flow);

  return WeakRetained;
}

@end