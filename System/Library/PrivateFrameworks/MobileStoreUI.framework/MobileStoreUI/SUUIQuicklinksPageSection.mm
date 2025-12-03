@interface SUUIQuicklinksPageSection
- (CGSize)cellSizeForIndexPath:(id)path;
- (SUUIQuicklinksPageSection)initWithPageComponent:(id)component;
- (id)_quicklinksViewController;
- (id)cellForIndexPath:(id)path;
- (void)dealloc;
- (void)quicklinksViewController:(id)controller didSelectLink:(id)link atIndex:(int64_t)index;
- (void)willAppearInContext:(id)context;
- (void)willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SUUIQuicklinksPageSection

- (SUUIQuicklinksPageSection)initWithPageComponent:(id)component
{
  v4.receiver = self;
  v4.super_class = SUUIQuicklinksPageSection;
  return [(SUUIStorePageSection *)&v4 initWithPageComponent:component];
}

- (void)dealloc
{
  [(SUUIQuicklinksViewController *)self->_quicklinksViewController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SUUIQuicklinksPageSection;
  [(SUUIStorePageSection *)&v3 dealloc];
}

- (void)willAppearInContext:(id)context
{
  contextCopy = context;
  collectionView = [contextCopy collectionView];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"SUUIQuicklinksPageSectionReuseIdentifier"];
  _quicklinksViewController = [(SUUIQuicklinksPageSection *)self _quicklinksViewController];
  collectionView2 = [contextCopy collectionView];

  [collectionView2 bounds];
  [_quicklinksViewController willTransitionToSize:0 withTransitionCoordinator:{v7, v8}];
}

- (id)cellForIndexPath:(id)path
{
  pathCopy = path;
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];
  v7 = [collectionView dequeueReusableCellWithReuseIdentifier:@"SUUIQuicklinksPageSectionReuseIdentifier" forIndexPath:pathCopy];

  _quicklinksViewController = [(SUUIQuicklinksPageSection *)self _quicklinksViewController];
  view = [_quicklinksViewController view];

  contentChildView = [v7 contentChildView];

  if (view != contentChildView)
  {
    [v7 setContentInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
    [v7 setContentChildView:view];
  }

  return v7;
}

- (CGSize)cellSizeForIndexPath:(id)path
{
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];
  [collectionView bounds];
  v7 = v6;

  _quicklinksViewController = [(SUUIQuicklinksPageSection *)self _quicklinksViewController];
  view = [_quicklinksViewController view];
  [view bounds];
  v11 = v10;

  v12 = v7;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)quicklinksViewController:(id)controller didSelectLink:(id)link atIndex:(int64_t)index
{
  controllerCopy = controller;
  linkCopy = link;
  v9 = [(SUUIStorePageSection *)self clickEventWithLink:linkCopy elementName:*MEMORY[0x277D6A4D0] index:index];
  if (v9)
  {
    [controllerCopy frameForLinkAtIndex:index];
    SUUIMetricsSetClickEventPositionWithPoint(v9, v10, v11);
    context = [(SUUIStorePageSection *)self context];
    metricsController = [context metricsController];
    [metricsController recordEvent:v9];
  }

  [(SUUIStorePageSection *)self showPageWithLink:linkCopy];
}

- (void)willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  quicklinksViewController = self->_quicklinksViewController;
  coordinatorCopy = coordinator;
  [(SUUIQuicklinksViewController *)quicklinksViewController willTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v9.receiver = self;
  v9.super_class = SUUIQuicklinksPageSection;
  [(SUUIStorePageSection *)&v9 willTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

- (id)_quicklinksViewController
{
  quicklinksViewController = self->_quicklinksViewController;
  if (!quicklinksViewController)
  {
    context = [(SUUIStorePageSection *)self context];
    v5 = objc_alloc_init(SUUIQuicklinksViewController);
    v6 = self->_quicklinksViewController;
    self->_quicklinksViewController = v5;

    [(SUUIQuicklinksViewController *)self->_quicklinksViewController setDelegate:self];
    pageComponent = [(SUUIStorePageSection *)self pageComponent];
    v8 = self->_quicklinksViewController;
    colorScheme = [context colorScheme];
    [(SUUIQuicklinksViewController *)v8 setColoringWithColorScheme:colorScheme];

    v10 = self->_quicklinksViewController;
    links = [pageComponent links];
    [(SUUIQuicklinksViewController *)v10 setLinks:links];

    v12 = self->_quicklinksViewController;
    title = [pageComponent title];
    [(SUUIQuicklinksViewController *)v12 setTitle:title];

    parentViewController = [context parentViewController];
    [parentViewController addChildViewController:self->_quicklinksViewController];

    quicklinksViewController = self->_quicklinksViewController;
  }

  return quicklinksViewController;
}

@end