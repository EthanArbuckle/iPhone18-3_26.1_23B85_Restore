@interface WDUninstalledAppSourcesViewController
- (UIImage)uninistalledAppImage;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)dealloc;
- (void)setDataSource:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateUninstalledSources;
@end

@implementation WDUninstalledAppSourcesViewController

- (void)dealloc
{
  [(HKSourceListDataSource *)self->_dataSource unregisterObserver:self];
  v3.receiver = self;
  v3.super_class = WDUninstalledAppSourcesViewController;
  [(WDUninstalledAppSourcesViewController *)&v3 dealloc];
}

- (void)setDataSource:(id)a3
{
  v5 = a3;
  dataSource = self->_dataSource;
  if (dataSource != v5)
  {
    v7 = v5;
    [(HKSourceListDataSource *)dataSource unregisterObserver:self];
    objc_storeStrong(&self->_dataSource, a3);
    dataSource = [(HKSourceListDataSource *)v7 registerObserver:self];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](dataSource, v5);
}

- (UIImage)uninistalledAppImage
{
  if (uninistalledAppImage_onceToken != -1)
  {
    [WDUninstalledAppSourcesViewController uninistalledAppImage];
  }

  v3 = uninistalledAppImage_uninistalledAppImage;

  return v3;
}

void __61__WDUninstalledAppSourcesViewController_uninistalledAppImage__block_invoke()
{
  v0 = MEMORY[0x277D755B8];
  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 scale];
  v1 = [v0 _applicationIconImageForBundleIdentifier:@"com.apple.health.i.dont.exist" format:0 scale:?];
  v2 = uninistalledAppImage_uninistalledAppImage;
  uninistalledAppImage_uninistalledAppImage = v1;
}

- (void)updateUninstalledSources
{
  v3 = [(WDUninstalledAppSourcesViewController *)self dataSource];
  v4 = [v3 sources];

  if (v4)
  {
    v5 = [(WDUninstalledAppSourcesViewController *)self dataSource];
    v6 = [v5 sources];
    v12 = [v6 orderedUninstalledAppSources];

    v7 = [(WDUninstalledAppSourcesViewController *)self profile];
    v8 = [v7 presentationContext];

    if (v8 == @"SettingsPrivacy")
    {
      v9 = [(WDUninstalledAppSourcesViewController *)self dataSource];
      v10 = [v9 fetchFilteredSourcesWithAuthorizationRecordsForSources:v12];
      [(WDUninstalledAppSourcesViewController *)self setUninstalledSources:v10];
    }

    else
    {
      [(WDUninstalledAppSourcesViewController *)self setUninstalledSources:v12];
    }

    v11 = [(WDUninstalledAppSourcesViewController *)self tableView];
    [v11 reloadData];
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(WDUninstalledAppSourcesViewController *)self uninstalledSources:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"WDUninstalledAppSourcesViewCell"];
  if (!v7)
  {
    v7 = [[WDSourcesListTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"WDUninstalledAppSourcesViewCell"];
    [(WDSourcesListTableViewCell *)v7 setAccessoryType:1];
  }

  v8 = [(WDUninstalledAppSourcesViewController *)self uninstalledSources];
  v9 = [v6 row];

  v10 = [v8 objectAtIndexedSubscript:v9];
  [(WDSourcesListTableViewCell *)v7 setSourceModel:v10];

  v11 = [MEMORY[0x277D74300] hk_preferredFontForTextStyle:*MEMORY[0x277D76918]];
  v12 = [(WDSourcesListTableViewCell *)v7 textLabel];
  [v12 setFont:v11];

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [v5 row];
  v7 = [(WDUninstalledAppSourcesViewController *)self uninstalledSources];
  v8 = [v7 count] - 1;

  if (v6 <= v8)
  {
    v10 = objc_alloc_init(WDSourceStoredDataViewController);
    v11 = [(WDUninstalledAppSourcesViewController *)self uninstalledSources];
    v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(v5, "row")}];
    v13 = [v12 source];
    [(WDSourceStoredDataViewController *)v10 setSource:v13];

    v14 = [(WDUninstalledAppSourcesViewController *)self profile];
    [(WDStoredDataByCategoryViewController *)v10 setProfile:v14];

    v15 = [(WDUninstalledAppSourcesViewController *)self navigationController];
    [v15 pushViewController:v10 animated:1];
  }

  else
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC2B0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_FAULT))
    {
      [WDUninstalledAppSourcesViewController tableView:v9 didSelectRowAtIndexPath:self];
    }
  }
}

- (void)tableView:(void *)a1 didSelectRowAtIndexPath:(void *)a2 .cold.1(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 uninstalledSources];
  v6 = 134217984;
  v7 = [v4 count];
  _os_log_fault_impl(&dword_251E85000, v3, OS_LOG_TYPE_FAULT, "The count of uninstalledSources in WDUninstalledAppSourcesViewController is unexpectedly %lu", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end