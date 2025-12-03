@interface SUUIEditorialPageSection
- (CGSize)cellSizeForIndexPath:(id)path;
- (SUUIEditorialPageSection)initWithPageComponent:(id)component;
- (id)_colorScheme;
- (id)_editorialLayout;
- (id)cellForIndexPath:(id)path;
- (int64_t)applyUpdateType:(int64_t)type;
- (void)addImpressionsForIndexPath:(id)path toSession:(id)session;
- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)path;
- (void)collectionViewDidSelectItemAtIndexPath:(id)path;
- (void)collectionViewWillDisplayCellForItemAtIndexPath:(id)path;
- (void)reloadCellWithIndexPath:(id)path reason:(int64_t)reason;
- (void)willAppearInContext:(id)context;
- (void)willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SUUIEditorialPageSection

- (SUUIEditorialPageSection)initWithPageComponent:(id)component
{
  v4.receiver = self;
  v4.super_class = SUUIEditorialPageSection;
  return [(SUUIStorePageSection *)&v4 initWithPageComponent:component];
}

- (void)addImpressionsForIndexPath:(id)path toSession:(id)session
{
  sessionCopy = session;
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  [sessionCopy addItemViewElement:viewElement];
}

- (int64_t)applyUpdateType:(int64_t)type
{
  editorialLayout = self->_editorialLayout;
  self->_editorialLayout = 0;

  colorScheme = self->_colorScheme;
  self->_colorScheme = 0;

  self->_hasValidColorScheme = 0;
  v8.receiver = self;
  v8.super_class = SUUIEditorialPageSection;
  return [(SUUIStorePageSection *)&v8 applyUpdateType:type];
}

- (id)cellForIndexPath:(id)path
{
  pathCopy = path;
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];
  v7 = [collectionView dequeueReusableCellWithReuseIdentifier:0x286AFFD40 forIndexPath:pathCopy];

  layout = [v7 layout];
  _colorScheme = [(SUUIEditorialPageSection *)self _colorScheme];
  [layout setColoringWithColorScheme:_colorScheme];

  [layout resetContentInset];
  if (![(SUUIStorePageSection *)self isTopSection])
  {
    [layout contentInset];
    context2 = [(SUUIStorePageSection *)self context];
    [context2 horizontalPadding];
    v12 = v11;

    context3 = [(SUUIStorePageSection *)self context];
    [context3 horizontalPadding];
    v15 = v14;

    [layout setContentInset:{0.0, v15, 0.0, v12}];
  }

  _editorialLayout = [(SUUIEditorialPageSection *)self _editorialLayout];
  [layout applyEditorialLayout:_editorialLayout withOrientation:0 expanded:self->_isExpanded];

  textBoxView = [layout textBoxView];
  parentViewController = [context parentViewController];
  clientContext = [parentViewController clientContext];
  v20 = clientContext;
  if (clientContext)
  {
    [clientContext localizedStringForKey:@"MORE_BUTTON"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"MORE_BUTTON" inBundles:0];
  }
  v21 = ;
  [textBoxView setMoreButtonTitle:v21];

  if (self->_isExpanded)
  {
    maximumBodyLines = 0;
  }

  else
  {
    pageComponent = [(SUUIStorePageSection *)self pageComponent];
    maximumBodyLines = [pageComponent maximumBodyLines];
  }

  [textBoxView setNumberOfVisibleLines:maximumBodyLines];

  return v7;
}

- (CGSize)cellSizeForIndexPath:(id)path
{
  context = [(SUUIStorePageSection *)self context];
  [context activePageWidth];
  v6 = v5;

  _editorialLayout = [(SUUIEditorialPageSection *)self _editorialLayout];
  [_editorialLayout layoutHeightForOrientation:0 expanded:self->_isExpanded];
  v9 = v8;
  v10 = [_editorialLayout bodyTextLayoutForOrientation:0];
  v11 = [_editorialLayout titleTextLayoutForOrientation:0];
  if (v11)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v9 = v9 + 17.0;
  }

  v13 = v6;
  v14 = v9;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)collectionViewDidSelectItemAtIndexPath:(id)path
{
  v10[1] = *MEMORY[0x277D85DE8];
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];

  _editorialLayout = [(SUUIEditorialPageSection *)self _editorialLayout];
  v7 = [_editorialLayout bodyTextLayoutForOrientation:0];

  if (!self->_isExpanded && [v7 requiresTruncation])
  {
    self->_isExpanded = 1;
    v8 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:{-[SUUIStorePageSection sectionIndex](self, "sectionIndex")}];
    v10[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    [collectionView reloadItemsAtIndexPaths:v9];
  }
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
  v9.super_class = SUUIEditorialPageSection;
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
  v9.super_class = SUUIEditorialPageSection;
  [(SUUIStorePageSection *)&v9 collectionViewDidEndDisplayingCellForItemAtIndexPath:pathCopy];
}

- (void)reloadCellWithIndexPath:(id)path reason:(int64_t)reason
{
  pathCopy = path;
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];
  v11 = [collectionView cellForItemAtIndexPath:pathCopy];

  v8 = v11;
  if (v11)
  {
    layout = [v11 layout];
    _editorialLayout = [(SUUIEditorialPageSection *)self _editorialLayout];
    [layout applyEditorialLayout:_editorialLayout withOrientation:0 expanded:self->_isExpanded];

    v8 = v11;
  }
}

- (void)willAppearInContext:(id)context
{
  contextCopy = context;
  colorScheme = self->_colorScheme;
  self->_colorScheme = 0;

  self->_hasValidColorScheme = 0;
  collectionView = [contextCopy collectionView];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AFFD40];

  textLayoutCache = [contextCopy textLayoutCache];
  layoutCache = [(SUUIEditorialLayout *)self->_editorialLayout layoutCache];

  if (layoutCache != textLayoutCache)
  {
    editorialLayout = self->_editorialLayout;
    self->_editorialLayout = 0;
  }

  _editorialLayout = [(SUUIEditorialPageSection *)self _editorialLayout];
  [_editorialLayout enqueueLayoutRequests];

  v11 = self->_layoutContext;
  v12 = [[SUUIViewElementLayoutContext alloc] initWithStorePageSectionContext:contextCopy previousLayoutContext:v11];
  layoutContext = self->_layoutContext;
  self->_layoutContext = v12;

  v14.receiver = self;
  v14.super_class = SUUIEditorialPageSection;
  [(SUUIStorePageSection *)&v14 willAppearInContext:contextCopy];
}

- (void)willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  editorialLayout = self->_editorialLayout;
  self->_editorialLayout = 0;
  coordinatorCopy = coordinator;

  _editorialLayout = [(SUUIEditorialPageSection *)self _editorialLayout];
  [_editorialLayout enqueueLayoutRequests];

  v10.receiver = self;
  v10.super_class = SUUIEditorialPageSection;
  [(SUUIStorePageSection *)&v10 willTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

- (id)_colorScheme
{
  if (!self->_hasValidColorScheme)
  {
    self->_hasValidColorScheme = 1;
    pageComponent = [(SUUIStorePageSection *)self pageComponent];
    viewElement = [pageComponent viewElement];
    style = [viewElement style];

    tintColor = [(SUUIViewElementLayoutContext *)self->_layoutContext tintColor];
    v7 = SUUIViewElementPlainColorWithStyle(style, tintColor);

    if (v7)
    {
      v8 = objc_alloc_init(SUUIColorScheme);
      colorScheme = self->_colorScheme;
      self->_colorScheme = v8;

      [(SUUIColorScheme *)self->_colorScheme setPrimaryTextColor:v7];
    }

    else
    {
      context = [(SUUIStorePageSection *)self context];
      colorScheme = [context colorScheme];
      v12 = self->_colorScheme;
      self->_colorScheme = colorScheme;
    }
  }

  v13 = self->_colorScheme;

  return v13;
}

- (id)_editorialLayout
{
  editorialLayout = self->_editorialLayout;
  if (!editorialLayout)
  {
    context = [(SUUIStorePageSection *)self context];
    v5 = [SUUIEditorialLayout alloc];
    pageComponent = [(SUUIStorePageSection *)self pageComponent];
    context2 = [(SUUIStorePageSection *)self context];
    textLayoutCache = [context2 textLayoutCache];
    v9 = [(SUUIEditorialLayout *)v5 initWithEditorial:pageComponent layoutCache:textLayoutCache];
    v10 = self->_editorialLayout;
    self->_editorialLayout = v9;

    v11 = self->_editorialLayout;
    [context activePageWidth];
    v13 = v12;
    context3 = [(SUUIStorePageSection *)self context];
    [context3 horizontalPadding];
    [(SUUIEditorialLayout *)v11 setLayoutWidth:0 forOrientation:v13 + v15 * -2.0];

    editorialLayout = self->_editorialLayout;
  }

  return editorialLayout;
}

@end