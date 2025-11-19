@interface SUUIQuicklinksPageSection
- (CGSize)cellSizeForIndexPath:(id)a3;
- (SUUIQuicklinksPageSection)initWithPageComponent:(id)a3;
- (id)_quicklinksViewController;
- (id)cellForIndexPath:(id)a3;
- (void)dealloc;
- (void)quicklinksViewController:(id)a3 didSelectLink:(id)a4 atIndex:(int64_t)a5;
- (void)willAppearInContext:(id)a3;
- (void)willTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SUUIQuicklinksPageSection

- (SUUIQuicklinksPageSection)initWithPageComponent:(id)a3
{
  v4.receiver = self;
  v4.super_class = SUUIQuicklinksPageSection;
  return [(SUUIStorePageSection *)&v4 initWithPageComponent:a3];
}

- (void)dealloc
{
  [(SUUIQuicklinksViewController *)self->_quicklinksViewController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SUUIQuicklinksPageSection;
  [(SUUIStorePageSection *)&v3 dealloc];
}

- (void)willAppearInContext:(id)a3
{
  v4 = a3;
  v9 = [v4 collectionView];
  [v9 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"SUUIQuicklinksPageSectionReuseIdentifier"];
  v5 = [(SUUIQuicklinksPageSection *)self _quicklinksViewController];
  v6 = [v4 collectionView];

  [v6 bounds];
  [v5 willTransitionToSize:0 withTransitionCoordinator:{v7, v8}];
}

- (id)cellForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SUUIStorePageSection *)self context];
  v6 = [v5 collectionView];
  v7 = [v6 dequeueReusableCellWithReuseIdentifier:@"SUUIQuicklinksPageSectionReuseIdentifier" forIndexPath:v4];

  v8 = [(SUUIQuicklinksPageSection *)self _quicklinksViewController];
  v9 = [v8 view];

  v10 = [v7 contentChildView];

  if (v9 != v10)
  {
    [v7 setContentInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
    [v7 setContentChildView:v9];
  }

  return v7;
}

- (CGSize)cellSizeForIndexPath:(id)a3
{
  v4 = [(SUUIStorePageSection *)self context];
  v5 = [v4 collectionView];
  [v5 bounds];
  v7 = v6;

  v8 = [(SUUIQuicklinksPageSection *)self _quicklinksViewController];
  v9 = [v8 view];
  [v9 bounds];
  v11 = v10;

  v12 = v7;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)quicklinksViewController:(id)a3 didSelectLink:(id)a4 atIndex:(int64_t)a5
{
  v14 = a3;
  v8 = a4;
  v9 = [(SUUIStorePageSection *)self clickEventWithLink:v8 elementName:*MEMORY[0x277D6A4D0] index:a5];
  if (v9)
  {
    [v14 frameForLinkAtIndex:a5];
    SUUIMetricsSetClickEventPositionWithPoint(v9, v10, v11);
    v12 = [(SUUIStorePageSection *)self context];
    v13 = [v12 metricsController];
    [v13 recordEvent:v9];
  }

  [(SUUIStorePageSection *)self showPageWithLink:v8];
}

- (void)willTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  quicklinksViewController = self->_quicklinksViewController;
  v8 = a4;
  [(SUUIQuicklinksViewController *)quicklinksViewController willTransitionToSize:v8 withTransitionCoordinator:width, height];
  v9.receiver = self;
  v9.super_class = SUUIQuicklinksPageSection;
  [(SUUIStorePageSection *)&v9 willTransitionToSize:v8 withTransitionCoordinator:width, height];
}

- (id)_quicklinksViewController
{
  quicklinksViewController = self->_quicklinksViewController;
  if (!quicklinksViewController)
  {
    v4 = [(SUUIStorePageSection *)self context];
    v5 = objc_alloc_init(SUUIQuicklinksViewController);
    v6 = self->_quicklinksViewController;
    self->_quicklinksViewController = v5;

    [(SUUIQuicklinksViewController *)self->_quicklinksViewController setDelegate:self];
    v7 = [(SUUIStorePageSection *)self pageComponent];
    v8 = self->_quicklinksViewController;
    v9 = [v4 colorScheme];
    [(SUUIQuicklinksViewController *)v8 setColoringWithColorScheme:v9];

    v10 = self->_quicklinksViewController;
    v11 = [v7 links];
    [(SUUIQuicklinksViewController *)v10 setLinks:v11];

    v12 = self->_quicklinksViewController;
    v13 = [v7 title];
    [(SUUIQuicklinksViewController *)v12 setTitle:v13];

    v14 = [v4 parentViewController];
    [v14 addChildViewController:self->_quicklinksViewController];

    quicklinksViewController = self->_quicklinksViewController;
  }

  return quicklinksViewController;
}

@end