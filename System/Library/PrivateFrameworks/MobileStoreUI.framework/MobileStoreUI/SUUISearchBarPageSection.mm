@interface SUUISearchBarPageSection
- (CGSize)cellSizeForIndexPath:(id)path;
- (UIEdgeInsets)sectionContentInset;
- (id)_searchBarController;
- (id)backgroundColorForIndexPath:(id)path;
- (id)cellForIndexPath:(id)path;
- (void)addImpressionsForIndexPath:(id)path toSession:(id)session;
- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)path;
- (void)collectionViewWillDisplayCellForItemAtIndexPath:(id)path;
- (void)willAppearInContext:(id)context;
@end

@implementation SUUISearchBarPageSection

- (void)addImpressionsForIndexPath:(id)path toSession:(id)session
{
  sessionCopy = session;
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  [sessionCopy addItemViewElement:viewElement];
}

- (id)backgroundColorForIndexPath:(id)path
{
  pathCopy = path;
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  style = [viewElement style];

  ikBackgroundColor = [style ikBackgroundColor];
  color = [ikBackgroundColor color];

  if (color)
  {
    v10 = color;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SUUISearchBarPageSection;
    v10 = [(SUUIStorePageSection *)&v13 backgroundColorForIndexPath:pathCopy];
  }

  v11 = v10;

  return v11;
}

- (id)cellForIndexPath:(id)path
{
  pathCopy = path;
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];
  v7 = [collectionView dequeueReusableCellWithReuseIdentifier:@"SUUISearchBarReuseIdentifier" forIndexPath:pathCopy];

  _searchBarController = [(SUUISearchBarPageSection *)self _searchBarController];
  searchBar = [_searchBarController searchBar];

  [searchBar setContentInset:{0.0, 15.0, 0.0, 15.0}];
  [v7 setContentChildView:searchBar];
  [v7 setContentInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];

  return v7;
}

- (CGSize)cellSizeForIndexPath:(id)path
{
  context = [(SUUIStorePageSection *)self context];
  [context activePageWidth];
  v6 = v5;

  _searchBarController = [(SUUISearchBarPageSection *)self _searchBarController];
  searchBar = [_searchBarController searchBar];

  [searchBar sizeThatFits:{v6, 1.79769313e308}];
  v10 = v9;

  v11 = v6;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)collectionViewWillDisplayCellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  context = [(SUUIStorePageSection *)self context];
  activeMetricsImpressionSession = [context activeMetricsImpressionSession];
  [activeMetricsImpressionSession beginActiveImpressionForViewElement:viewElement];

  v9.receiver = self;
  v9.super_class = SUUISearchBarPageSection;
  [(SUUIStorePageSection *)&v9 collectionViewWillDisplayCellForItemAtIndexPath:pathCopy];
}

- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  context = [(SUUIStorePageSection *)self context];
  activeMetricsImpressionSession = [context activeMetricsImpressionSession];
  [activeMetricsImpressionSession endActiveImpressionForViewElement:viewElement];

  v9.receiver = self;
  v9.super_class = SUUISearchBarPageSection;
  [(SUUIStorePageSection *)&v9 collectionViewDidEndDisplayingCellForItemAtIndexPath:pathCopy];
}

- (UIEdgeInsets)sectionContentInset
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 6.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)willAppearInContext:(id)context
{
  contextCopy = context;
  collectionView = [contextCopy collectionView];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"SUUISearchBarReuseIdentifier"];
  v6.receiver = self;
  v6.super_class = SUUISearchBarPageSection;
  [(SUUIStorePageSection *)&v6 willAppearInContext:contextCopy];
}

- (id)_searchBarController
{
  v28 = *MEMORY[0x277D85DE8];
  searchBarController = self->_searchBarController;
  if (!searchBarController)
  {
    pageComponent = [(SUUIStorePageSection *)self pageComponent];
    viewElement = [pageComponent viewElement];

    v6 = [[SUUISearchBarController alloc] initWithSearchBarViewElement:viewElement];
    v7 = self->_searchBarController;
    self->_searchBarController = v6;

    context = [(SUUIStorePageSection *)self context];
    parentViewController = [context parentViewController];

    v10 = self->_searchBarController;
    clientContext = [parentViewController clientContext];
    [(SUUISearchBarController *)v10 setClientContext:clientContext];

    v12 = parentViewController;
    navigationController = [v12 navigationController];
    viewControllers = [navigationController viewControllers];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v15 = viewControllers;
    v16 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    v17 = v12;
    if (v16)
    {
      v18 = v16;
      v19 = *v24;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v24 != v19)
          {
            objc_enumerationMutation(v15);
          }

          v21 = *(*(&v23 + 1) + 8 * i);
          if (SUUIViewControllerIsDescendent(v12, v21))
          {
            v17 = v21;

            goto LABEL_12;
          }
        }

        v18 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }

      v17 = v12;
    }

LABEL_12:

    [(SUUISearchBarController *)self->_searchBarController setParentViewController:v17, v23];
    searchBarController = self->_searchBarController;
  }

  return searchBarController;
}

@end