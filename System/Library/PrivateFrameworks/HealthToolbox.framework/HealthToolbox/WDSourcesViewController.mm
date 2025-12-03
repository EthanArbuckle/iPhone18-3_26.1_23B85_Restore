@interface WDSourcesViewController
+ (id)tableViewSectionClasses;
- (HKHealthSettingsNavigationDonating)settingsNavigationDonatingDelegate;
- (void)applicationWillEnterForeground;
- (void)viewDidLoad;
@end

@implementation WDSourcesViewController

+ (id)tableViewSectionClasses
{
  v5[3] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)viewDidLoad
{
  v23 = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = WDSourcesViewController;
  [(WDTableViewController *)&v21 viewDidLoad];
  tableView = [(WDSourcesViewController *)self tableView];
  v4 = objc_opt_class();
  v5 = +[WDSpinnerTableViewCell defaultReuseIdentifier];
  [tableView registerClass:v4 forCellReuseIdentifier:v5];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [(WDTableViewController *)self tableSections];
  v6 = [obj countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        tableSections = [(WDTableViewController *)self tableSections];
        [v10 setShouldHideHeader:{objc_msgSend(tableSections, "count") == 1}];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = &OBJC_IVAR___WDSourcesViewController__devicesDataSource;
        }

        else
        {
          v12 = &OBJC_IVAR___WDSourcesViewController__appsDataSource;
        }

        restorationSourceBundleIdentifier = self->_restorationSourceBundleIdentifier;
        v14 = *(&self->super.super.super.super.super.super.super.isa + *v12);
        [v10 setRestorationSourceBundleIdentifier:restorationSourceBundleIdentifier];
        [v10 setSourceListDataSource:v14];

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)applicationWillEnterForeground
{
  v3.receiver = self;
  v3.super_class = WDSourcesViewController;
  [(WDTableViewController *)&v3 applicationWillEnterForeground];
  [(HKSourceListDataSource *)self->_appsDataSource fetchSources];
  [(HKSourceListDataSource *)self->_devicesDataSource fetchSources];
}

- (HKHealthSettingsNavigationDonating)settingsNavigationDonatingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsNavigationDonatingDelegate);

  return WeakRetained;
}

@end