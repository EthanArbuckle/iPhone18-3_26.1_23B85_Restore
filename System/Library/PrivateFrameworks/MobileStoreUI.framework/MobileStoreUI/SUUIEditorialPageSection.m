@interface SUUIEditorialPageSection
- (CGSize)cellSizeForIndexPath:(id)a3;
- (SUUIEditorialPageSection)initWithPageComponent:(id)a3;
- (id)_colorScheme;
- (id)_editorialLayout;
- (id)cellForIndexPath:(id)a3;
- (int64_t)applyUpdateType:(int64_t)a3;
- (void)addImpressionsForIndexPath:(id)a3 toSession:(id)a4;
- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)a3;
- (void)collectionViewDidSelectItemAtIndexPath:(id)a3;
- (void)collectionViewWillDisplayCellForItemAtIndexPath:(id)a3;
- (void)reloadCellWithIndexPath:(id)a3 reason:(int64_t)a4;
- (void)willAppearInContext:(id)a3;
- (void)willTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SUUIEditorialPageSection

- (SUUIEditorialPageSection)initWithPageComponent:(id)a3
{
  v4.receiver = self;
  v4.super_class = SUUIEditorialPageSection;
  return [(SUUIStorePageSection *)&v4 initWithPageComponent:a3];
}

- (void)addImpressionsForIndexPath:(id)a3 toSession:(id)a4
{
  v5 = a4;
  v7 = [(SUUIStorePageSection *)self pageComponent];
  v6 = [v7 viewElement];
  [v5 addItemViewElement:v6];
}

- (int64_t)applyUpdateType:(int64_t)a3
{
  editorialLayout = self->_editorialLayout;
  self->_editorialLayout = 0;

  colorScheme = self->_colorScheme;
  self->_colorScheme = 0;

  self->_hasValidColorScheme = 0;
  v8.receiver = self;
  v8.super_class = SUUIEditorialPageSection;
  return [(SUUIStorePageSection *)&v8 applyUpdateType:a3];
}

- (id)cellForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SUUIStorePageSection *)self context];
  v6 = [v5 collectionView];
  v7 = [v6 dequeueReusableCellWithReuseIdentifier:0x286AFFD40 forIndexPath:v4];

  v8 = [v7 layout];
  v9 = [(SUUIEditorialPageSection *)self _colorScheme];
  [v8 setColoringWithColorScheme:v9];

  [v8 resetContentInset];
  if (![(SUUIStorePageSection *)self isTopSection])
  {
    [v8 contentInset];
    v10 = [(SUUIStorePageSection *)self context];
    [v10 horizontalPadding];
    v12 = v11;

    v13 = [(SUUIStorePageSection *)self context];
    [v13 horizontalPadding];
    v15 = v14;

    [v8 setContentInset:{0.0, v15, 0.0, v12}];
  }

  v16 = [(SUUIEditorialPageSection *)self _editorialLayout];
  [v8 applyEditorialLayout:v16 withOrientation:0 expanded:self->_isExpanded];

  v17 = [v8 textBoxView];
  v18 = [v5 parentViewController];
  v19 = [v18 clientContext];
  v20 = v19;
  if (v19)
  {
    [v19 localizedStringForKey:@"MORE_BUTTON"];
  }

  else
  {
    [SUUIClientContext localizedStringForKey:@"MORE_BUTTON" inBundles:0];
  }
  v21 = ;
  [v17 setMoreButtonTitle:v21];

  if (self->_isExpanded)
  {
    v22 = 0;
  }

  else
  {
    v23 = [(SUUIStorePageSection *)self pageComponent];
    v22 = [v23 maximumBodyLines];
  }

  [v17 setNumberOfVisibleLines:v22];

  return v7;
}

- (CGSize)cellSizeForIndexPath:(id)a3
{
  v4 = [(SUUIStorePageSection *)self context];
  [v4 activePageWidth];
  v6 = v5;

  v7 = [(SUUIEditorialPageSection *)self _editorialLayout];
  [v7 layoutHeightForOrientation:0 expanded:self->_isExpanded];
  v9 = v8;
  v10 = [v7 bodyTextLayoutForOrientation:0];
  v11 = [v7 titleTextLayoutForOrientation:0];
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

- (void)collectionViewDidSelectItemAtIndexPath:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = [(SUUIStorePageSection *)self context];
  v5 = [v4 collectionView];

  v6 = [(SUUIEditorialPageSection *)self _editorialLayout];
  v7 = [v6 bodyTextLayoutForOrientation:0];

  if (!self->_isExpanded && [v7 requiresTruncation])
  {
    self->_isExpanded = 1;
    v8 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:{-[SUUIStorePageSection sectionIndex](self, "sectionIndex")}];
    v10[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    [v5 reloadItemsAtIndexPaths:v9];
  }
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
  v9.super_class = SUUIEditorialPageSection;
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
  v9.super_class = SUUIEditorialPageSection;
  [(SUUIStorePageSection *)&v9 collectionViewDidEndDisplayingCellForItemAtIndexPath:v4];
}

- (void)reloadCellWithIndexPath:(id)a3 reason:(int64_t)a4
{
  v5 = a3;
  v6 = [(SUUIStorePageSection *)self context];
  v7 = [v6 collectionView];
  v11 = [v7 cellForItemAtIndexPath:v5];

  v8 = v11;
  if (v11)
  {
    v9 = [v11 layout];
    v10 = [(SUUIEditorialPageSection *)self _editorialLayout];
    [v9 applyEditorialLayout:v10 withOrientation:0 expanded:self->_isExpanded];

    v8 = v11;
  }
}

- (void)willAppearInContext:(id)a3
{
  v4 = a3;
  colorScheme = self->_colorScheme;
  self->_colorScheme = 0;

  self->_hasValidColorScheme = 0;
  v6 = [v4 collectionView];
  [v6 registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AFFD40];

  v7 = [v4 textLayoutCache];
  v8 = [(SUUIEditorialLayout *)self->_editorialLayout layoutCache];

  if (v8 != v7)
  {
    editorialLayout = self->_editorialLayout;
    self->_editorialLayout = 0;
  }

  v10 = [(SUUIEditorialPageSection *)self _editorialLayout];
  [v10 enqueueLayoutRequests];

  v11 = self->_layoutContext;
  v12 = [[SUUIViewElementLayoutContext alloc] initWithStorePageSectionContext:v4 previousLayoutContext:v11];
  layoutContext = self->_layoutContext;
  self->_layoutContext = v12;

  v14.receiver = self;
  v14.super_class = SUUIEditorialPageSection;
  [(SUUIStorePageSection *)&v14 willAppearInContext:v4];
}

- (void)willTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  editorialLayout = self->_editorialLayout;
  self->_editorialLayout = 0;
  v8 = a4;

  v9 = [(SUUIEditorialPageSection *)self _editorialLayout];
  [v9 enqueueLayoutRequests];

  v10.receiver = self;
  v10.super_class = SUUIEditorialPageSection;
  [(SUUIStorePageSection *)&v10 willTransitionToSize:v8 withTransitionCoordinator:width, height];
}

- (id)_colorScheme
{
  if (!self->_hasValidColorScheme)
  {
    self->_hasValidColorScheme = 1;
    v3 = [(SUUIStorePageSection *)self pageComponent];
    v4 = [v3 viewElement];
    v5 = [v4 style];

    v6 = [(SUUIViewElementLayoutContext *)self->_layoutContext tintColor];
    v7 = SUUIViewElementPlainColorWithStyle(v5, v6);

    if (v7)
    {
      v8 = objc_alloc_init(SUUIColorScheme);
      colorScheme = self->_colorScheme;
      self->_colorScheme = v8;

      [(SUUIColorScheme *)self->_colorScheme setPrimaryTextColor:v7];
    }

    else
    {
      v10 = [(SUUIStorePageSection *)self context];
      v11 = [v10 colorScheme];
      v12 = self->_colorScheme;
      self->_colorScheme = v11;
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
    v4 = [(SUUIStorePageSection *)self context];
    v5 = [SUUIEditorialLayout alloc];
    v6 = [(SUUIStorePageSection *)self pageComponent];
    v7 = [(SUUIStorePageSection *)self context];
    v8 = [v7 textLayoutCache];
    v9 = [(SUUIEditorialLayout *)v5 initWithEditorial:v6 layoutCache:v8];
    v10 = self->_editorialLayout;
    self->_editorialLayout = v9;

    v11 = self->_editorialLayout;
    [v4 activePageWidth];
    v13 = v12;
    v14 = [(SUUIStorePageSection *)self context];
    [v14 horizontalPadding];
    [(SUUIEditorialLayout *)v11 setLayoutWidth:0 forOrientation:v13 + v15 * -2.0];

    editorialLayout = self->_editorialLayout;
  }

  return editorialLayout;
}

@end