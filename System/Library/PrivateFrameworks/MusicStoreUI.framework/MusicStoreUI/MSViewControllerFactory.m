@interface MSViewControllerFactory
- (id)newDownloadManagerOptions;
- (id)newNetworkLockoutViewControllerWithSection:(id)a3;
- (id)newPlaceholderViewController;
- (id)newViewControllerForPage:(id)a3 ofType:(int64_t)a4;
- (id)newViewControllerForTrackList:(id)a3;
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

- (id)newNetworkLockoutViewControllerWithSection:(id)a3
{
  v3 = [objc_alloc(MEMORY[0x277D7FE38]) initWithSection:a3];
  [v3 setLocalizationBundle:{objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class())}];
  return v3;
}

- (id)newPlaceholderViewController
{
  v4.receiver = self;
  v4.super_class = MSViewControllerFactory;
  v2 = [(SUViewControllerFactory *)&v4 newPlaceholderViewController];
  [v2 setDefaultBackgroundGradient:{objc_msgSend(MEMORY[0x277D7FDD8], "gradientWithColor:", objc_msgSend(MEMORY[0x277D75348], "systemBackgroundColor"))}];
  return v2;
}

- (id)newViewControllerForPage:(id)a3 ofType:(int64_t)a4
{
  if (a4)
  {
    v8.receiver = self;
    v8.super_class = MSViewControllerFactory;
    return [(SUViewControllerFactory *)&v8 newViewControllerForPage:a3 ofType:?];
  }

  v6 = [a3 type];
  if (v6 == 2)
  {
    v4 = objc_alloc_init(MEMORY[0x277D7FE68]);
    [v4 setDataSourceClass:objc_opt_class()];
    return v4;
  }

  if (v6 == 1)
  {
    v7 = MSTrackListViewController;
  }

  else
  {
    v7 = MSStructuredPageViewController;
  }

  return objc_alloc_init(v7);
}

- (id)newViewControllerForTrackList:(id)a3
{
  v4 = objc_alloc_init(MSTrackListViewController);
  [(MSStructuredPageViewController *)v4 reloadWithStorePage:a3 forURL:0];
  return v4;
}

@end