@interface SUUIBrowseItemPageSection
- (CGSize)cellSizeForIndexPath:(id)path;
- (SUUIBrowseItemPageSection)initWithPageComponent:(id)component;
- (UIEdgeInsets)sectionContentInset;
- (id)_imageForImageViewElement:(id)element styleColor:(id)color;
- (id)cellForIndexPath:(id)path;
- (void)addImpressionsForIndexPath:(id)path toSession:(id)session;
- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)path;
- (void)collectionViewDidSelectItemAtIndexPath:(id)path;
- (void)collectionViewWillDisplayCellForItemAtIndexPath:(id)path;
- (void)willAppearInContext:(id)context;
@end

@implementation SUUIBrowseItemPageSection

- (SUUIBrowseItemPageSection)initWithPageComponent:(id)component
{
  componentCopy = component;
  v9.receiver = self;
  v9.super_class = SUUIBrowseItemPageSection;
  v6 = [(SUUIStorePageSection *)&v9 initWithPageComponent:componentCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_component, component);
  }

  return v7;
}

- (void)addImpressionsForIndexPath:(id)path toSession:(id)session
{
  sessionCopy = session;
  pageComponent = [(SUUIBrowseItemPageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  [sessionCopy addItemViewElement:viewElement];
}

- (void)willAppearInContext:(id)context
{
  contextCopy = context;
  collectionView = [contextCopy collectionView];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"SUUIBrowseItemPageSectionReuseIdentifier"];
  v5 = self->_layoutContext;
  v6 = [[SUUIViewElementLayoutContext alloc] initWithStorePageSectionContext:contextCopy previousLayoutContext:v5];

  layoutContext = self->_layoutContext;
  self->_layoutContext = v6;
}

- (id)cellForIndexPath:(id)path
{
  pathCopy = path;
  pageComponent = [(SUUIBrowseItemPageSection *)self pageComponent];
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];
  v8 = [collectionView dequeueReusableCellWithReuseIdentifier:@"SUUIBrowseItemPageSectionReuseIdentifier" forIndexPath:pathCopy];

  title = [pageComponent title];
  [v8 setTitle:title];

  subtitle = [pageComponent subtitle];
  [v8 setSubtitle:subtitle];

  decorationImage = [pageComponent decorationImage];
  style = [decorationImage style];
  tintColor = [(SUUIViewElementLayoutContext *)self->_layoutContext tintColor];
  v14 = SUUIViewElementPlainColorWithStyle(style, tintColor);

  v15 = [(SUUIBrowseItemPageSection *)self _imageForImageViewElement:decorationImage styleColor:v14];
  [v8 setDecorationImage:v15];
  [v8 setShowTopBorder:{objc_msgSend(pageComponent, "showTopBorder")}];
  context2 = [(SUUIStorePageSection *)self context];
  layoutStyle = [context2 layoutStyle];

  [v8 setHasBlueBackgroundWhenSelected:layoutStyle == 2];

  return v8;
}

- (CGSize)cellSizeForIndexPath:(id)path
{
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];
  [collectionView bounds];
  v6 = v5;

  v7 = 44.0;
  v8 = v6;
  result.height = v7;
  result.width = v8;
  return result;
}

- (void)collectionViewWillDisplayCellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  pageComponent = [(SUUIBrowseItemPageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  context = [(SUUIStorePageSection *)self context];
  activeMetricsImpressionSession = [context activeMetricsImpressionSession];
  [activeMetricsImpressionSession beginActiveImpressionForViewElement:viewElement];

  v9.receiver = self;
  v9.super_class = SUUIBrowseItemPageSection;
  [(SUUIStorePageSection *)&v9 collectionViewWillDisplayCellForItemAtIndexPath:pathCopy];
}

- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  pageComponent = [(SUUIBrowseItemPageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  context = [(SUUIStorePageSection *)self context];
  activeMetricsImpressionSession = [context activeMetricsImpressionSession];
  [activeMetricsImpressionSession endActiveImpressionForViewElement:viewElement];

  v9.receiver = self;
  v9.super_class = SUUIBrowseItemPageSection;
  [(SUUIStorePageSection *)&v9 collectionViewDidEndDisplayingCellForItemAtIndexPath:pathCopy];
}

- (UIEdgeInsets)sectionContentInset
{
  v2 = *MEMORY[0x277D768C8];
  v3 = *(MEMORY[0x277D768C8] + 8);
  v4 = *(MEMORY[0x277D768C8] + 16);
  v5 = *(MEMORY[0x277D768C8] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)collectionViewDidSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  context = [(SUUIStorePageSection *)self context];
  parentViewController = [context parentViewController];

  v6 = parentViewController;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      parentViewController2 = [v8 parentViewController];

      v8 = parentViewController2;
      if (!parentViewController2)
      {
        goto LABEL_7;
      }
    }

    context2 = [(SUUIStorePageSection *)self context];
    collectionView = [context2 collectionView];
    v12 = [collectionView cellForItemAtIndexPath:pathCopy];

    view = [v8 view];
    [v12 bounds];
    [view convertRect:v12 fromView:?];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v25.origin.x = v15;
    v25.origin.y = v17;
    v25.size.width = v19;
    v25.size.height = v21;
    [v7 setSUUIStackedBarSplit:CGRectGetMaxY(v25)];
    pageComponent = [(SUUIBrowseItemPageSection *)self pageComponent];
    [v8 selectGenreListComponent:pageComponent];
  }

LABEL_7:
}

- (id)_imageForImageViewElement:(id)element styleColor:(id)color
{
  colorCopy = color;
  resourceName = [element resourceName];
  v7 = resourceName;
  if (resourceName)
  {
    v8 = SUUIImageWithResourceName(resourceName);
    v9 = v8;
    if (colorCopy)
    {
      v10 = [v8 _flatImageWithColor:colorCopy];

      v9 = v10;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end