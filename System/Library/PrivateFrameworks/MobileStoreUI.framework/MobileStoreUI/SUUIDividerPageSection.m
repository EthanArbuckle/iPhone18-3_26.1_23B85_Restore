@interface SUUIDividerPageSection
- (BOOL)updateCellWithIndexPath:(id)a3 itemState:(id)a4 animated:(BOOL)a5;
- (CGSize)cellSizeForIndexPath:(id)a3;
- (SUUIDividerPageSection)initWithPageComponent:(id)a3;
- (UIEdgeInsets)sectionContentInset;
- (id)backgroundColorForIndexPath:(id)a3;
- (id)cellForIndexPath:(id)a3;
- (void)_enumerateVisibleCellsUsingBlock:(id)a3;
- (void)_requestCellLayout;
- (void)addImpressionsForIndexPath:(id)a3 toSession:(id)a4;
- (void)artworkRequest:(id)a3 didLoadImage:(id)a4;
- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)a3;
- (void)collectionViewWillDisplayCellForItemAtIndexPath:(id)a3;
- (void)dealloc;
- (void)willAppearInContext:(id)a3;
- (void)willTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SUUIDividerPageSection

- (SUUIDividerPageSection)initWithPageComponent:(id)a3
{
  v4.receiver = self;
  v4.super_class = SUUIDividerPageSection;
  return [(SUUIStorePageSection *)&v4 initWithPageComponent:a3];
}

- (void)dealloc
{
  [(SUUIViewElementLayoutContext *)self->_layoutContext setArtworkRequestDelegate:0];
  v3.receiver = self;
  v3.super_class = SUUIDividerPageSection;
  [(SUUIStorePageSection *)&v3 dealloc];
}

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
    v13.super_class = SUUIDividerPageSection;
    v10 = [(SUUIStorePageSection *)&v13 backgroundColorForIndexPath:v4];
  }

  v11 = v10;

  return v11;
}

- (id)cellForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SUUIStorePageSection *)self context];
  v6 = [(SUUIStorePageSection *)self pageComponent];
  v7 = [v6 dividerTitle];
  v8 = [v6 viewElement];
  [v5 activePageWidth];
  v10 = v9;
  v11 = [v8 text];

  if (v11)
  {
    v12 = [v5 collectionView];
    v13 = [v12 dequeueReusableCellWithReuseIdentifier:0x286AF6F20 forIndexPath:v4];

    [v13 reloadWithViewElement:v8 width:self->_layoutContext context:v10];
    v14 = 0.0;
LABEL_5:
    [v13 setTopEdgeInset:v14];
    goto LABEL_6;
  }

  v15 = [v5 collectionView];
  v16 = v15;
  if (v7)
  {
    v13 = [v15 dequeueReusableCellWithReuseIdentifier:0x286AF6F20 forIndexPath:v4];

    [v13 reloadWithViewElement:0 width:self->_layoutContext context:v10];
    [v13 setDividerTitle:v7];
    v17 = [v5 colorScheme];
    [v13 setColoringWithColorScheme:v17];

    v14 = 15.0;
    goto LABEL_5;
  }

  v13 = [v15 dequeueReusableCellWithReuseIdentifier:0x286AF0BA0 forIndexPath:v4];

  [v13 reloadWithViewElement:v8 width:self->_layoutContext context:v10];
  if (v8)
  {
    if ([v8 dividerType] == 2)
    {
      [v13 setDividerType:2];
      [SUUIPageTitledDividerCollectionViewCell viewElementInsetDividerHeight:v8];
      [v13 setDividerHeight:?];
      v19 = [v8 style];
      v20 = [v19 ikColor];

      v21 = [v20 color];
      [v13 setInsetColor:v21];
    }

    else
    {
      if ([v8 dividerType] != 1)
      {
        [v13 setDividerType:0];
        v23 = 15.0;
        goto LABEL_17;
      }

      [v13 setDividerType:1];
    }

    v23 = 0.0;
LABEL_17:
    v22 = [v8 style];
    [v13 setColoringWithStyle:v22];
    goto LABEL_18;
  }

  v22 = [v5 colorScheme];
  [v13 setColoringWithColorScheme:v22];
  v23 = 15.0;
LABEL_18:

  [v13 setLeftEdgeInset:v23];
  [v13 setRightEdgeInset:0.0];
  [v13 setVerticalAlignment:0];
LABEL_6:

  return v13;
}

- (CGSize)cellSizeForIndexPath:(id)a3
{
  v4 = [(SUUIStorePageSection *)self context];
  [v4 activePageWidth];
  v6 = v5;

  v7 = [(SUUIStorePageSection *)self pageComponent];
  v8 = [v7 viewElement];
  if (v8)
  {
    [SUUIPageTitledDividerCollectionViewCell sizeThatFitsWidth:v8 viewElement:self->_layoutContext context:v6];
    v10 = v9;
  }

  else
  {
    v11 = [v7 dividerTitle];
    layoutContext = self->_layoutContext;
    if (v11)
    {
      [SUUIPageTitledDividerCollectionViewCell sizeThatFitsWidth:v11 dividerTitle:layoutContext context:v6];
      if (v13 >= 47.0)
      {
        v10 = v13;
      }

      else
      {
        v10 = 47.0;
      }
    }

    else
    {
      [SUUIPageDividerCollectionViewCell sizeThatFitsWidth:0 viewElement:layoutContext context:v6];
      v10 = v14;
    }
  }

  v15 = v6;
  v16 = ceil(v10);
  result.height = v16;
  result.width = v15;
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
  v9.super_class = SUUIDividerPageSection;
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
  v9.super_class = SUUIDividerPageSection;
  [(SUUIStorePageSection *)&v9 collectionViewDidEndDisplayingCellForItemAtIndexPath:v4];
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

- (BOOL)updateCellWithIndexPath:(id)a3 itemState:(id)a4 animated:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __69__SUUIDividerPageSection_updateCellWithIndexPath_itemState_animated___block_invoke;
  v16 = &unk_2798F8B00;
  v10 = v9;
  v17 = v10;
  v18 = self;
  v20 = a5;
  v19 = &v21;
  [(SUUIDividerPageSection *)self _enumerateVisibleCellsUsingBlock:&v13];
  if (*(v22 + 24) == 1)
  {
    [(SUUIDividerPageSection *)self _requestCellLayout:v13];
    v11 = *(v22 + 24);
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v21, 8);
  return v11 & 1;
}

void __69__SUUIDividerPageSection_updateCellWithIndexPath_itemState_animated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_286BDBC58])
  {
    *(*(*(a1 + 48) + 8) + 24) = (*(*(*(a1 + 48) + 8) + 24) | [v3 updateWithItemState:*(a1 + 32) context:*(*(a1 + 40) + 88) animated:*(a1 + 56)]) & 1;
  }
}

- (void)willAppearInContext:(id)a3
{
  v4 = a3;
  v5 = [v4 collectionView];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AF0BA0];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AF6F20];
  v6 = self->_layoutContext;
  [(SUUIViewElementLayoutContext *)v6 setArtworkRequestDelegate:0];
  v7 = [[SUUIViewElementLayoutContext alloc] initWithStorePageSectionContext:v4 previousLayoutContext:v6];
  layoutContext = self->_layoutContext;
  self->_layoutContext = v7;

  [(SUUIViewElementLayoutContext *)self->_layoutContext setArtworkRequestDelegate:self];
  [(SUUIDividerPageSection *)self _requestCellLayout];
  v9.receiver = self;
  v9.super_class = SUUIDividerPageSection;
  [(SUUIStorePageSection *)&v9 willAppearInContext:v4];
}

- (void)willTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  layoutContext = self->_layoutContext;
  v8 = a4;
  [(SUUIViewElementLayoutContext *)layoutContext invalidateAllEditorialLayouts];
  [(SUUIViewElementLayoutContext *)self->_layoutContext setActivePageWidth:width];
  [(SUUIDividerPageSection *)self _requestCellLayout];
  v9.receiver = self;
  v9.super_class = SUUIDividerPageSection;
  [(SUUIStorePageSection *)&v9 willTransitionToSize:v8 withTransitionCoordinator:width, height];
}

- (void)artworkRequest:(id)a3 didLoadImage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__SUUIDividerPageSection_artworkRequest_didLoadImage___block_invoke;
  v10[3] = &unk_2798F8B28;
  v11 = v7;
  v12 = v6;
  v13 = self;
  v8 = v6;
  v9 = v7;
  [(SUUIDividerPageSection *)self _enumerateVisibleCellsUsingBlock:v10];
}

void __54__SUUIDividerPageSection_artworkRequest_didLoadImage___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_286BDBC58])
  {
    [v3 setImage:a1[4] forArtworkRequest:a1[5] context:*(a1[6] + 88)];
  }
}

- (void)_enumerateVisibleCellsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(SUUIStorePageSection *)self context];
  v6 = [v5 collectionView];

  v7 = [v6 visibleCells];
  v8 = [(SUUIStorePageSection *)self sectionIndex];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__SUUIDividerPageSection__enumerateVisibleCellsUsingBlock___block_invoke;
  v11[3] = &unk_2798F8B50;
  v13 = v4;
  v14 = v8;
  v12 = v6;
  v9 = v4;
  v10 = v6;
  [v7 enumerateObjectsUsingBlock:v11];
}

void __59__SUUIDividerPageSection__enumerateVisibleCellsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) indexPathForCell:?];
  v4 = v3;
  if (v3 && [v3 section] == *(a1 + 48))
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)_requestCellLayout
{
  v3 = [(SUUIStorePageSection *)self pageComponent];
  v8 = [v3 viewElement];

  v4 = [(SUUIStorePageSection *)self context];
  [v4 activePageWidth];
  v6 = v5;

  v7 = v8;
  if (v8)
  {
    [SUUIPageTitledDividerCollectionViewCell requestLayoutForViewElement:v8 width:self->_layoutContext context:v6];
    v7 = v8;
  }
}

@end