@interface MBPrebuddyDisabledDataclassesViewController
- (MBPrebuddyDisabledDataclassesViewController)initWithFlow:(id)a3 disabledSyncCategories:(id)a4 disabledBackupDomains:(id)a5 needsTemporaryStorage:(BOOL)a6;
- (MBViewControllerFlow)flow;
- (id)_iconForBackupDomain:(id)a3;
- (id)_localizedTitleForBackupDomain:(id)a3;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (void)_presentKeychainError:(id)a3;
- (void)_presentUnknownError;
- (void)_setUp;
- (void)_updateTableView:(BOOL)a3;
- (void)didTapPrimaryButton:(id)a3;
- (void)didTapSecondaryButton:(id)a3;
- (void)viewDidLoad;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation MBPrebuddyDisabledDataclassesViewController

- (MBPrebuddyDisabledDataclassesViewController)initWithFlow:(id)a3 disabledSyncCategories:(id)a4 disabledBackupDomains:(id)a5 needsTemporaryStorage:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = MBLocalizedStringFromTable();
  v14 = MBLocalizedStringFromTable();
  v17.receiver = self;
  v17.super_class = MBPrebuddyDisabledDataclassesViewController;
  v15 = [(MBPrebuddyDisabledDataclassesViewController *)&v17 initWithTitle:v14 detailText:v13 icon:0 adoptTableViewScrollView:1];

  if (v15)
  {
    objc_storeWeak(&v15->_flow, v10);
    objc_storeStrong(&v15->_disabledSyncCategories, a4);
    objc_storeStrong(&v15->_disabledBackupDomains, a5);
    v15->_needsTemporaryStorage = a6;
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
  v3 = [(MBPrebuddyDisabledDataclassesViewController *)self traitCollection];
  self->_currentAppearance = [v3 mb_appearance];

  v4 = +[OBBoldTrayButton boldButton];
  v5 = MBLocalizedStringFromTable();
  [v4 setTitle:v5 forState:0];

  [v4 addTarget:self action:"didTapPrimaryButton:" forEvents:0x2000];
  v6 = [v4 titleLabel];
  LODWORD(v7) = 1036831949;
  [v6 _setHyphenationFactor:v7];

  v8 = [(MBPrebuddyDisabledDataclassesViewController *)self buttonTray];
  [v8 addButton:v4];

  v9 = +[OBLinkTrayButton linkButton];
  v10 = MBLocalizedStringFromTable();
  [v9 setTitle:v10 forState:0];

  [v9 addTarget:self action:"didTapSecondaryButton:" forEvents:0x2000];
  v11 = [v9 titleLabel];
  LODWORD(v12) = 1036831949;
  [v11 _setHyphenationFactor:v12];

  v13 = [(MBPrebuddyDisabledDataclassesViewController *)self buttonTray];
  [v13 addButton:v9];

  v14 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v14 setDelegate:self];
  [v14 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"SectionHeaderView"];
  [v14 registerClass:objc_opt_class() forCellReuseIdentifier:@"AppItemCell"];
  [(MBPrebuddyDisabledDataclassesViewController *)self setTableView:v14];
  v15 = +[UIColor clearColor];
  v16 = [(MBPrebuddyDisabledDataclassesViewController *)self tableView];
  [v16 setBackgroundColor:v15];

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
  v20 = [(MBPrebuddyDisabledDataclassesViewController *)self navigationItem];
  [v20 _setBackgroundHidden:1];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

- (void)didTapPrimaryButton:(id)a3
{
  v4 = [(MBPrebuddyDisabledDataclassesViewController *)self navigationController];
  v5 = [v4 view];
  [v5 setUserInteractionEnabled:0];

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
    v11 = [(MBPrebuddyDisabledDataclassesViewController *)self navigationController];
    v12 = [v11 view];
    [v12 setUserInteractionEnabled:1];

    WeakRetained = objc_loadWeakRetained(&self->_flow);
    [WeakRetained mb_didTapNextFromViewController:self];
  }
}

- (void)didTapSecondaryButton:(id)a3
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

- (void)_updateTableView:(BOOL)a3
{
  v3 = a3;
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

    v5 = [(UITableViewDiffableDataSource *)self->_dataSource snapshot];
    [v5 deleteAllItems];
    [v5 appendSectionsWithIdentifiers:v10];
    if ([(NSArray *)self->_disabledSyncCategories count])
    {
      [v5 appendItemsWithIdentifiers:self->_disabledSyncCategories intoSectionWithIdentifier:MBDisabledDataclassTableViewSectionHeaderDisabledSyncCategories];
    }

    if ([(NSArray *)self->_disabledBackupDomains count])
    {
      [v5 appendItemsWithIdentifiers:self->_disabledBackupDomains intoSectionWithIdentifier:MBDisabledDataclassTableViewSectionHeaderDisabledBackupDomains];
    }

    dataSource = self->_dataSource;
    v7 = [(MBPrebuddyDisabledDataclassesViewController *)self tableView];
    v8 = [v7 window];
    if (v8)
    {
      v9 = v3;
    }

    else
    {
      v9 = 0;
    }

    [(UITableViewDiffableDataSource *)dataSource applySnapshot:v5 animatingDifferences:v9];
  }
}

- (void)_presentKeychainError:(id)a3
{
  v4 = a3;
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
  v13 = v4;
  v10 = v4;
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

- (id)_iconForBackupDomain:(id)a3
{
  v4 = a3;
  v5 = [v4 bundleID];
  if ([v4 isCameraRollDomain])
  {
    v6 = @"com.apple.camera";
  }

  else
  {
    v7 = [v4 domainName];
    v8 = [v7 isEqualToString:@"KeyboardDomain"];

    if (v8)
    {
      v6 = @"com.apple.keyboard";
    }

    else
    {
      v9 = [v4 domainName];
      v10 = [v9 isEqualToString:@"HealthDomain"];

      if (!v10)
      {
        goto LABEL_8;
      }

      v6 = @"com.apple.Health";
    }
  }

  v5 = v6;
LABEL_8:
  v11 = [[ISIcon alloc] initWithBundleIdentifier:v5];
  v12 = [ISImageDescriptor imageDescriptorNamed:kISImageDescriptorTableUIName];
  [v12 setAppearance:self->_currentAppearance];
  v13 = [v11 prepareImageForDescriptor:v12];
  v14 = [v13 CGImage];
  v15 = +[UIScreen mainScreen];
  [v15 scale];
  v16 = [UIImage imageWithCGImage:v14 scale:0 orientation:?];

  return v16;
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v5 = [a3 mb_appearance];
  if (v5 != self->_currentAppearance)
  {
    self->_currentAppearance = v5;
    v6 = [(MBPrebuddyDisabledDataclassesViewController *)self tableView];
    [v6 reloadData];
  }
}

- (id)_localizedTitleForBackupDomain:(id)a3
{
  v3 = a3;
  if ([v3 isCameraRollDomain])
  {
    goto LABEL_4;
  }

  v4 = [v3 domainName];
  v5 = [v4 isEqualToString:@"KeyboardDomain"];

  if (v5 || ([v3 domainName], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", @"HealthDomain"), v6, v7))
  {
LABEL_4:
    v8 = MBLocalizedStringFromTable();
  }

  else
  {
    v10 = [v3 bundleID];
    v11 = [LSApplicationProxy applicationProxyForIdentifier:v10];

    v8 = [v11 localizedNameForContext:0];
  }

  return v8;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    goto LABEL_4;
  }

  if (!a4)
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
  v9 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:@"SectionHeaderView"];
  [v9 setContentConfiguration:v8];

  return v9;
}

- (MBViewControllerFlow)flow
{
  WeakRetained = objc_loadWeakRetained(&self->_flow);

  return WeakRetained;
}

@end