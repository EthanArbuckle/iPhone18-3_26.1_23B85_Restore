@interface MSViewControllerFactory
- (id)newDownloadManagerOptions;
- (id)newNetworkLockoutViewControllerWithSection:(id)section;
- (id)newPlaceholderViewController;
- (id)newViewControllerForPage:(id)page ofType:(int64_t)type;
- (id)newViewControllerForTrackList:(id)list;
@end

@implementation MSViewControllerFactory

- (id)newDownloadManagerOptions
{
  v2 = objc_alloc_init(MEMORY[0x277D69AC8]);
  [v2 setDownloadKinds:{objc_msgSend(MEMORY[0x277D69AB8], "ITunesDownloadKinds")}];
  [v2 setPrefetchedDownloadExternalProperties:{objc_msgSend(MEMORY[0x277D7FD88], "downloadExternalProperties")}];
  [v2 setPrefetchedDownloadProperties:{objc_msgSend(MEMORY[0x277D7FD88], "downloadProperties")}];
  return v2;
}

- (id)newNetworkLockoutViewControllerWithSection:(id)section
{
  v3 = [objc_alloc(MEMORY[0x277D7FE38]) initWithSection:section];
  [v3 setLocalizationBundle:{objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class())}];
  return v3;
}

- (id)newPlaceholderViewController
{
  v4.receiver = self;
  v4.super_class = MSViewControllerFactory;
  newPlaceholderViewController = [(SUViewControllerFactory *)&v4 newPlaceholderViewController];
  [newPlaceholderViewController setDefaultBackgroundGradient:{objc_msgSend(MEMORY[0x277D7FDD8], "gradientWithColor:", objc_msgSend(MEMORY[0x277D75348], "systemBackgroundColor"))}];
  return newPlaceholderViewController;
}

- (id)newViewControllerForPage:(id)page ofType:(int64_t)type
{
  if (type)
  {
    v8.receiver = self;
    v8.super_class = MSViewControllerFactory;
    return [(SUViewControllerFactory *)&v8 newViewControllerForPage:page ofType:?];
  }

  type = [page type];
  if (type == 2)
  {
    v4 = objc_alloc_init(MEMORY[0x277D7FE68]);
    [v4 setDataSourceClass:objc_opt_class()];
    return v4;
  }

  if (type == 1)
  {
    v7 = MSTrackListViewController;
  }

  else
  {
    v7 = MSStructuredPageViewController;
  }

  return objc_alloc_init(v7);
}

- (id)newViewControllerForTrackList:(id)list
{
  v4 = objc_alloc_init(MSTrackListViewController);
  [(MSStructuredPageViewController *)v4 reloadWithStorePage:list forURL:0];
  return v4;
}

@end