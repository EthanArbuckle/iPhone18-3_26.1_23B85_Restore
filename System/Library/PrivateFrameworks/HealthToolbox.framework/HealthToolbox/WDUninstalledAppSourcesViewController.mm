@interface WDUninstalledAppSourcesViewController
- (UIImage)uninistalledAppImage;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)dealloc;
- (void)setDataSource:(id)source;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
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

- (void)setDataSource:(id)source
{
  sourceCopy = source;
  dataSource = self->_dataSource;
  if (dataSource != sourceCopy)
  {
    v7 = sourceCopy;
    [(HKSourceListDataSource *)dataSource unregisterObserver:self];
    objc_storeStrong(&self->_dataSource, source);
    dataSource = [(HKSourceListDataSource *)v7 registerObserver:self];
    sourceCopy = v7;
  }

  MEMORY[0x2821F96F8](dataSource, sourceCopy);
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
  dataSource = [(WDUninstalledAppSourcesViewController *)self dataSource];
  sources = [dataSource sources];

  if (sources)
  {
    dataSource2 = [(WDUninstalledAppSourcesViewController *)self dataSource];
    sources2 = [dataSource2 sources];
    orderedUninstalledAppSources = [sources2 orderedUninstalledAppSources];

    profile = [(WDUninstalledAppSourcesViewController *)self profile];
    presentationContext = [profile presentationContext];

    if (presentationContext == @"SettingsPrivacy")
    {
      dataSource3 = [(WDUninstalledAppSourcesViewController *)self dataSource];
      v10 = [dataSource3 fetchFilteredSourcesWithAuthorizationRecordsForSources:orderedUninstalledAppSources];
      [(WDUninstalledAppSourcesViewController *)self setUninstalledSources:v10];
    }

    else
    {
      [(WDUninstalledAppSourcesViewController *)self setUninstalledSources:orderedUninstalledAppSources];
    }

    tableView = [(WDUninstalledAppSourcesViewController *)self tableView];
    [tableView reloadData];
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(WDUninstalledAppSourcesViewController *)self uninstalledSources:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"WDUninstalledAppSourcesViewCell"];
  if (!v7)
  {
    v7 = [[WDSourcesListTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"WDUninstalledAppSourcesViewCell"];
    [(WDSourcesListTableViewCell *)v7 setAccessoryType:1];
  }

  uninstalledSources = [(WDUninstalledAppSourcesViewController *)self uninstalledSources];
  v9 = [pathCopy row];

  v10 = [uninstalledSources objectAtIndexedSubscript:v9];
  [(WDSourcesListTableViewCell *)v7 setSourceModel:v10];

  v11 = [MEMORY[0x277D74300] hk_preferredFontForTextStyle:*MEMORY[0x277D76918]];
  textLabel = [(WDSourcesListTableViewCell *)v7 textLabel];
  [textLabel setFont:v11];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [pathCopy row];
  uninstalledSources = [(WDUninstalledAppSourcesViewController *)self uninstalledSources];
  v8 = [uninstalledSources count] - 1;

  if (v6 <= v8)
  {
    v10 = objc_alloc_init(WDSourceStoredDataViewController);
    uninstalledSources2 = [(WDUninstalledAppSourcesViewController *)self uninstalledSources];
    v12 = [uninstalledSources2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
    source = [v12 source];
    [(WDSourceStoredDataViewController *)v10 setSource:source];

    profile = [(WDUninstalledAppSourcesViewController *)self profile];
    [(WDStoredDataByCategoryViewController *)v10 setProfile:profile];

    navigationController = [(WDUninstalledAppSourcesViewController *)self navigationController];
    [navigationController pushViewController:v10 animated:1];
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