@interface SUUISearchBarPageSection
- (CGSize)cellSizeForIndexPath:(id)a3;
- (UIEdgeInsets)sectionContentInset;
- (id)_searchBarController;
- (id)backgroundColorForIndexPath:(id)a3;
- (id)cellForIndexPath:(id)a3;
- (void)addImpressionsForIndexPath:(id)a3 toSession:(id)a4;
- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)a3;
- (void)collectionViewWillDisplayCellForItemAtIndexPath:(id)a3;
- (void)willAppearInContext:(id)a3;
@end

@implementation SUUISearchBarPageSection

- (void)addImpressionsForIndexPath:(id)a3 toSession:(id)a4
{
  v5 = a4;
  v7 = [(SUUIStorePageSection *)self pageComponent];
  v6 = [v7 viewElement];
  [v5 addItemViewElement:v6];
}

- (id)backgroundColorForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SUUIStorePageSection *)self pageComponent];
  v6 = [v5 viewElement];
  v7 = [v6 style];

  v8 = [v7 ikBackgroundColor];
  v9 = [v8 color];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SUUISearchBarPageSection;
    v10 = [(SUUIStorePageSection *)&v13 backgroundColorForIndexPath:v4];
  }

  v11 = v10;

  return v11;
}

- (id)cellForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SUUIStorePageSection *)self context];
  v6 = [v5 collectionView];
  v7 = [v6 dequeueReusableCellWithReuseIdentifier:@"SUUISearchBarReuseIdentifier" forIndexPath:v4];

  v8 = [(SUUISearchBarPageSection *)self _searchBarController];
  v9 = [v8 searchBar];

  [v9 setContentInset:{0.0, 15.0, 0.0, 15.0}];
  [v7 setContentChildView:v9];
  [v7 setContentInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];

  return v7;
}

- (CGSize)cellSizeForIndexPath:(id)a3
{
  v4 = [(SUUIStorePageSection *)self context];
  [v4 activePageWidth];
  v6 = v5;

  v7 = [(SUUISearchBarPageSection *)self _searchBarController];
  v8 = [v7 searchBar];

  [v8 sizeThatFits:{v6, 1.79769313e308}];
  v10 = v9;

  v11 = v6;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)collectionViewWillDisplayCellForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SUUIStorePageSection *)self pageComponent];
  v6 = [v5 viewElement];

  v7 = [(SUUIStorePageSection *)self context];
  v8 = [v7 activeMetricsImpressionSession];
  [v8 beginActiveImpressionForViewElement:v6];

  v9.receiver = self;
  v9.super_class = SUUISearchBarPageSection;
  [(SUUIStorePageSection *)&v9 collectionViewWillDisplayCellForItemAtIndexPath:v4];
}

- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SUUIStorePageSection *)self pageComponent];
  v6 = [v5 viewElement];

  v7 = [(SUUIStorePageSection *)self context];
  v8 = [v7 activeMetricsImpressionSession];
  [v8 endActiveImpressionForViewElement:v6];

  v9.receiver = self;
  v9.super_class = SUUISearchBarPageSection;
  [(SUUIStorePageSection *)&v9 collectionViewDidEndDisplayingCellForItemAtIndexPath:v4];
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

- (void)willAppearInContext:(id)a3
{
  v4 = a3;
  v5 = [v4 collectionView];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"SUUISearchBarReuseIdentifier"];
  v6.receiver = self;
  v6.super_class = SUUISearchBarPageSection;
  [(SUUIStorePageSection *)&v6 willAppearInContext:v4];
}

- (id)_searchBarController
{
  v28 = *MEMORY[0x277D85DE8];
  searchBarController = self->_searchBarController;
  if (!searchBarController)
  {
    v4 = [(SUUIStorePageSection *)self pageComponent];
    v5 = [v4 viewElement];

    v6 = [[SUUISearchBarController alloc] initWithSearchBarViewElement:v5];
    v7 = self->_searchBarController;
    self->_searchBarController = v6;

    v8 = [(SUUIStorePageSection *)self context];
    v9 = [v8 parentViewController];

    v10 = self->_searchBarController;
    v11 = [v9 clientContext];
    [(SUUISearchBarController *)v10 setClientContext:v11];

    v12 = v9;
    v13 = [v12 navigationController];
    v14 = [v13 viewControllers];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v15 = v14;
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