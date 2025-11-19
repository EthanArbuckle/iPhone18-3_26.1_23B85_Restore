@interface SUUIViewElementPageSection
- (BOOL)_stretchesToFitCollectionViewBounds;
- (BOOL)collectionViewShouldHighlightItemAtIndexPath:(id)a3;
- (BOOL)collectionViewShouldSelectItemAtIndexPath:(id)a3;
- (BOOL)updateCellWithIndexPath:(id)a3 itemState:(id)a4 animated:(BOOL)a5;
- (CGSize)cellSizeForIndexPath:(id)a3;
- (CGSize)preferredContentSize;
- (SUUIViewElementPageSection)initWithPageComponent:(id)a3;
- (UIEdgeInsets)pinningContentInsetForItemAtIndexPath:(id)a3;
- (UIEdgeInsets)sectionContentInset;
- (double)contentInsetAdjustmentForCollectionView:(id)a3;
- (double)defaultVerticalInset;
- (id)backgroundColorForIndexPath:(id)a3;
- (id)cellForIndexPath:(id)a3;
- (id)previewingContext:(id)a3 viewControllerForLocation:(CGPoint)a4;
- (int64_t)applyUpdateType:(int64_t)a3;
- (int64_t)defaultItemPinningStyle;
- (void)_reloadViewElementProperties;
- (void)_requestCellLayout;
- (void)addImpressionsForIndexPath:(id)a3 toSession:(id)a4;
- (void)artworkRequest:(id)a3 didLoadImage:(id)a4;
- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)a3;
- (void)collectionViewDidSelectItemAtIndexPath:(id)a3;
- (void)collectionViewWillApplyLayoutAttributes:(id)a3;
- (void)collectionViewWillDisplayCellForItemAtIndexPath:(id)a3;
- (void)entityProvider:(id)a3 didInvalidateWithContext:(id)a4;
- (void)expandEditorialForLabelElement:(id)a3 indexPath:(id)a4;
- (void)getModalSourceViewForViewElement:(id)a3 completionBlock:(id)a4;
- (void)prefetchResourcesWithReason:(int64_t)a3;
- (void)reloadCellWithIndexPath:(id)a3 reason:(int64_t)a4;
- (void)willAppearInContext:(id)a3;
- (void)willTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SUUIViewElementPageSection

- (SUUIViewElementPageSection)initWithPageComponent:(id)a3
{
  v6.receiver = self;
  v6.super_class = SUUIViewElementPageSection;
  v3 = [(SUUIStorePageSection *)&v6 initWithPageComponent:a3];
  v4 = v3;
  if (v3)
  {
    [(SUUIViewElementPageSection *)v3 _reloadViewElementProperties];
  }

  return v4;
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
  if (a3 != 2)
  {
    [(SUUIViewElementPageSection *)self _reloadViewElementProperties];
  }

  v6.receiver = self;
  v6.super_class = SUUIViewElementPageSection;
  return [(SUUIStorePageSection *)&v6 applyUpdateType:a3];
}

- (id)backgroundColorForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SUUIStorePageSection *)self pageComponent];
  v6 = [v5 viewElement];
  v7 = [v6 handlesBackgroundColorDirectly];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = [(SUUIStorePageSection *)self pageComponent];
    v10 = [v9 viewElement];
    v11 = [v10 style];

    v12 = [v11 ikBackgroundColor];
    v13 = [v12 color];

    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v16.receiver = self;
      v16.super_class = SUUIViewElementPageSection;
      v14 = [(SUUIStorePageSection *)&v16 backgroundColorForIndexPath:v4];
    }

    v8 = v14;
  }

  return v8;
}

- (id)cellForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SUUIStorePageSection *)self context];
  v6 = [v5 collectionView];
  v7 = [v6 dequeueReusableCellWithReuseIdentifier:self->_reuseIdentifier forIndexPath:v4];

  [v7 setContentInset:{self->_cellContentInset.top, self->_cellContentInset.left, self->_cellContentInset.bottom, self->_cellContentInset.right}];
  [v7 setSeparatorStyle:0];
  v8 = [(SUUIStorePageSection *)self pageComponent];
  v9 = [v8 viewElement];

  if ([v9 elementType] == 49)
  {
    [v7 setShowsReflectionImage:{-[SUUIViewElementPageSection _showsImageReflection](self, "_showsImageReflection")}];
  }

  [v5 activePageWidth];
  v11 = v10 - self->_cellContentInset.left - self->_cellContentInset.right;
  v12 = [v9 style];
  v13 = [v12 visibility];
  v14 = [v13 isEqualToString:@"hidden"];

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v9;
  }

  [v7 reloadWithViewElement:v15 width:self->_cellLayoutContext context:v11];
  if (self->_rendersWithPerspective && [v7 conformsToProtocol:&unk_286C2FC68])
  {
    v16 = v7;
    v17 = [(SUUIStorePageSection *)self context];
    v18 = [v17 parentViewController];
    v19 = [v18 view];

    [v16 setPerspectiveTargetView:v19];
    [v19 bounds];
    [v16 setVanishingPoint:{CGRectGetMidX(v22), -800.0}];
  }

  objc_storeWeak(&self->_lastCell, v7);

  return v7;
}

- (CGSize)cellSizeForIndexPath:(id)a3
{
  v4 = [(SUUIStorePageSection *)self context];
  [v4 activePageWidth];
  v6 = v5;

  v7 = [(SUUIStorePageSection *)self pageComponent];
  v8 = [v7 viewElement];

  [(objc_class *)self->_cellClass sizeThatFitsWidth:v8 viewElement:self->_cellLayoutContext context:v6 - self->_cellContentInset.left - self->_cellContentInset.right];
  v10 = v9 + self->_cellContentInset.top + self->_cellContentInset.bottom;
  if ([(SUUIViewElementPageSection *)self _showsImageReflection])
  {
    v10 = v10 + v10;
  }

  v11 = v6;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)collectionViewDidSelectItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SUUIStorePageSection *)self pageComponent];
  v6 = [v5 viewElement];

  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__SUUIViewElementPageSection_collectionViewDidSelectItemAtIndexPath___block_invoke;
  v8[3] = &unk_2798F8378;
  objc_copyWeak(&v10, &location);
  v7 = v6;
  v9 = v7;
  [v7 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __69__SUUIViewElementPageSection_collectionViewDidSelectItemAtIndexPath___block_invoke(uint64_t a1, char a2, char a3)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__SUUIViewElementPageSection_collectionViewDidSelectItemAtIndexPath___block_invoke_2;
  block[3] = &unk_2798F8350;
  v7 = a2;
  v8 = a3;
  objc_copyWeak(&v6, (a1 + 40));
  v5 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v6);
}

void __69__SUUIViewElementPageSection_collectionViewDidSelectItemAtIndexPath___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) != 1 || (*(a1 + 49) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained performDefaultActionForViewElement:*(a1 + 32)];
  }
}

- (BOOL)collectionViewShouldHighlightItemAtIndexPath:(id)a3
{
  v3 = [(SUUIStorePageSection *)self pageComponent];
  v4 = [v3 viewElement];
  v5 = [v4 isEnabled];

  return v5;
}

- (BOOL)collectionViewShouldSelectItemAtIndexPath:(id)a3
{
  v3 = [(SUUIStorePageSection *)self pageComponent];
  v4 = [v3 viewElement];
  v5 = [v4 isEnabled];

  return v5;
}

- (void)collectionViewWillApplyLayoutAttributes:(id)a3
{
  v4 = a3;
  if ([(SUUIViewElementPageSection *)self _stretchesToFitCollectionViewBounds])
  {
    v5 = [(SUUIStorePageSection *)self context];
    v6 = [v5 collectionView];

    [v6 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [v6 contentInset];
    v16 = v15;
    [v4 frame];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v32.origin.x = v8;
    v32.origin.y = v10;
    v32.size.width = v12;
    v32.size.height = v14;
    v23 = CGRectGetMaxY(v32) - v16 - v20 - self->_sectionBottomInset;
    v24 = [(SUUIStorePageSection *)self pageComponent];
    v25 = [v24 viewElement];
    v26 = [v25 style];

    v27 = [v26 maxHeight];

    if (v27)
    {
      v28 = [v26 maxHeight];
      [v28 floatValue];
      v30 = v29;

      if (v23 < v30)
      {
        v23 = v30;
      }
    }

    [v4 setFrame:{v18, v20, v22, v23}];
    [v4 setSize:{v22, v23}];
  }

  v31.receiver = self;
  v31.super_class = SUUIViewElementPageSection;
  [(SUUIStorePageSection *)&v31 collectionViewWillApplyLayoutAttributes:v4];
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
  v9.super_class = SUUIViewElementPageSection;
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
  v9.super_class = SUUIViewElementPageSection;
  [(SUUIStorePageSection *)&v9 collectionViewDidEndDisplayingCellForItemAtIndexPath:v4];
}

- (double)contentInsetAdjustmentForCollectionView:(id)a3
{
  v4 = [(SUUIStorePageSection *)self pageComponent];
  v5 = [v4 viewElement];

  v6 = 0.0;
  if ([(SUUIViewElementPageSection *)self _showsImageReflection])
  {
    cellClass = self->_cellClass;
    v8 = [(SUUIStorePageSection *)self context];
    [v8 activePageWidth];
    [(objc_class *)cellClass sizeThatFitsWidth:v5 viewElement:self->_cellLayoutContext context:v9 - self->_cellContentInset.left - self->_cellContentInset.right];
    v11 = v10;

    v6 = -v11;
  }

  return v6;
}

- (int64_t)defaultItemPinningStyle
{
  v3 = [(SUUIStorePageSection *)self pageComponent];
  v4 = [v3 viewElement];
  if ([v4 elementType] == 49)
  {
    v5 = [(SUUIStorePageSection *)self isTopSection];

    if (v5)
    {
      return 3;
    }
  }

  else
  {
  }

  v7.receiver = self;
  v7.super_class = SUUIViewElementPageSection;
  return [(SUUIStorePageSection *)&v7 defaultItemPinningStyle];
}

- (void)entityProvider:(id)a3 didInvalidateWithContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(SUUIViewElementPageSection *)self _requestCellLayout];
  v8.receiver = self;
  v8.super_class = SUUIViewElementPageSection;
  [(SUUIStorePageSection *)&v8 entityProvider:v7 didInvalidateWithContext:v6];
}

- (void)expandEditorialForLabelElement:(id)a3 indexPath:(id)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  cellLayoutContext = self->_cellLayoutContext;
  v7 = a4;
  [(SUUIViewElementLayoutContext *)cellLayoutContext expandEditorialForLabelElement:a3];
  v8 = [(SUUIStorePageSection *)self context];
  v9 = [v8 collectionView];
  v11[0] = v7;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];

  [v9 reloadItemsAtIndexPaths:v10];
}

- (void)getModalSourceViewForViewElement:(id)a3 completionBlock:(id)a4
{
  v19 = a3;
  v6 = a4;
  v7 = [(SUUIStorePageSection *)self pageComponent];
  v8 = [v7 viewElement];
  v9 = [v19 isDescendentFromViewElement:v8];

  if (v9)
  {
    v10 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:{-[SUUIStorePageSection sectionIndex](self, "sectionIndex")}];
    v11 = [(SUUIStorePageSection *)self context];
    v12 = [v11 collectionView];
    v13 = [v12 cellForItemAtIndexPath:v10];

    v14 = [v19 itmlID];
    v15 = [v13 viewForElementIdentifier:v14];

    v16 = objc_alloc_init(SUUIModalSourceViewProvider);
    v17 = v16;
    if (v15)
    {
      v18 = v15;
    }

    else
    {
      v18 = v13;
    }

    [(SUUIModalSourceViewProvider *)v16 setOriginalSourceView:v18];
  }

  else
  {
    v17 = 0;
  }

  v6[2](v6, v17);
}

- (UIEdgeInsets)pinningContentInsetForItemAtIndexPath:(id)a3
{
  v4 = a3;
  firstSectionTopInset = self->_firstSectionTopInset;
  left = self->_cellContentInset.left;
  sectionBottomInset = self->_sectionBottomInset;
  right = self->_cellContentInset.right;
  v19 = 0;
  v9 = [(SUUIStorePageSection *)self pageComponent];
  v10 = [v9 viewElement];
  v11 = [v10 style];
  v12 = SUUIViewElementPaddingForStyle(v11, &v19);
  v14 = v13;

  if (v19 == 1)
  {
    firstSectionTopInset = v12;
  }

  else
  {
    v14 = 0.0;
    if ([(SUUIStorePageSection *)self pinningStyleForItemAtIndexPath:v4]!= 3 && self->_cellContentInset.bottom <= 0.00000011920929)
    {
      v14 = sectionBottomInset;
    }
  }

  v15 = firstSectionTopInset;
  v16 = left;
  v17 = v14;
  v18 = right;
  result.right = v18;
  result.bottom = v17;
  result.left = v16;
  result.top = v15;
  return result;
}

- (CGSize)preferredContentSize
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(SUUIStorePageSection *)self pageComponent];
    v4 = [v3 viewElement];

    [(objc_class *)self->_cellClass preferredSizeForViewElement:v4 context:self->_cellLayoutContext];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v6 = *MEMORY[0x277CBF3A8];
    v8 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)prefetchResourcesWithReason:(int64_t)a3
{
  cellClass = self->_cellClass;
  v6 = [(SUUIStorePageSection *)self pageComponent];
  v7 = [v6 viewElement];
  [(objc_class *)cellClass prefetchResourcesForViewElement:v7 reason:a3 context:self->_cellLayoutContext];

  v8.receiver = self;
  v8.super_class = SUUIViewElementPageSection;
  [(SUUIStorePageSection *)&v8 prefetchResourcesWithReason:a3];
}

- (id)previewingContext:(id)a3 viewControllerForLocation:(CGPoint)a4
{
  v5 = [(SUUIStorePageSection *)self pageComponent:a3];
  v6 = [v5 viewElement];

  v7 = [(SUUIStorePageSection *)self context];
  v8 = [v7 clientContext];
  v9 = [v8 previewViewControllerForViewElement:v6];

  return v9;
}

- (void)reloadCellWithIndexPath:(id)a3 reason:(int64_t)a4
{
  v5 = a3;
  v11 = [(SUUIStorePageSection *)self context];
  v6 = [v11 collectionView];
  v7 = [v6 cellForItemAtIndexPath:v5];

  v8 = [(SUUIStorePageSection *)self pageComponent];
  v9 = [v8 viewElement];

  [v11 activePageWidth];
  [v7 reloadWithViewElement:v9 width:self->_cellLayoutContext context:v10 - self->_cellContentInset.left - self->_cellContentInset.right];
}

- (UIEdgeInsets)sectionContentInset
{
  sectionBottomInset = self->_sectionBottomInset;
  v14 = 0;
  v4 = [(SUUIStorePageSection *)self pageComponent];
  v5 = [v4 viewElement];
  v6 = [v5 style];
  firstSectionTopInset = SUUIViewElementPaddingForStyle(v6, &v14);
  v9 = v8;

  if (v14 == 1)
  {
    sectionBottomInset = v9;
  }

  else
  {
    firstSectionTopInset = 0.0;
    if ([(SUUIStorePageSection *)self isTopSection])
    {
      firstSectionTopInset = self->_firstSectionTopInset;
    }
  }

  v10 = 0.0;
  v11 = 0.0;
  v12 = firstSectionTopInset;
  v13 = sectionBottomInset;
  result.right = v11;
  result.bottom = v13;
  result.left = v10;
  result.top = v12;
  return result;
}

- (BOOL)updateCellWithIndexPath:(id)a3 itemState:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_lastCell);
  v9 = [WeakRetained updateWithItemState:v7 context:self->_cellLayoutContext animated:v5];

  if (v9)
  {
    [(SUUIViewElementPageSection *)self _requestCellLayout];
  }

  return v9;
}

- (void)willAppearInContext:(id)a3
{
  v4 = a3;
  v5 = [v4 collectionView];
  [v5 registerClass:self->_cellClass forCellWithReuseIdentifier:self->_reuseIdentifier];
  v6 = self->_cellLayoutContext;
  v7 = [[SUUIViewElementLayoutContext alloc] initWithStorePageSectionContext:v4 previousLayoutContext:v6];
  cellLayoutContext = self->_cellLayoutContext;
  self->_cellLayoutContext = v7;

  [(SUUIViewElementLayoutContext *)self->_cellLayoutContext setArtworkRequestDelegate:self];
  [(SUUIViewElementPageSection *)self _reloadViewElementProperties];
  [(SUUIViewElementPageSection *)self _requestCellLayout];
  v9.receiver = self;
  v9.super_class = SUUIViewElementPageSection;
  [(SUUIStorePageSection *)&v9 willAppearInContext:v4];
}

- (void)willTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  cellLayoutContext = self->_cellLayoutContext;
  v8 = a4;
  [(SUUIViewElementLayoutContext *)cellLayoutContext invalidateAllEditorialLayouts];
  [(SUUIViewElementLayoutContext *)self->_cellLayoutContext setActivePageWidth:width];
  [(SUUIViewElementPageSection *)self _requestCellLayout];
  v9.receiver = self;
  v9.super_class = SUUIViewElementPageSection;
  [(SUUIStorePageSection *)&v9 willTransitionToSize:v8 withTransitionCoordinator:width, height];
}

- (void)artworkRequest:(id)a3 didLoadImage:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_lastCell);
  [WeakRetained setImage:v6 forArtworkRequest:v7 context:self->_cellLayoutContext];
}

- (double)defaultVerticalInset
{
  v2 = [MEMORY[0x277D75DA0] keyWindow];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v12.origin.x = v4;
  v12.origin.y = v6;
  v12.size.width = v8;
  v12.size.height = v10;
  if (CGRectGetWidth(v12) < 1024.0)
  {
    return 15.0;
  }

  v13.origin.x = v4;
  v13.origin.y = v6;
  v13.size.width = v8;
  v13.size.height = v10;
  if (CGRectGetHeight(v13) <= 768.0)
  {
    return 15.0;
  }

  else
  {
    return 35.0;
  }
}

- (void)_reloadViewElementProperties
{
  p_cellContentInset = &self->_cellContentInset;
  v4 = [(SUUIStorePageSection *)self context];
  [v4 horizontalPadding];
  v6 = v5;
  v7 = [(SUUIStorePageSection *)self context];
  [v7 horizontalPadding];
  p_cellContentInset->top = 0.0;
  p_cellContentInset->left = v6;
  p_cellContentInset->bottom = 0.0;
  p_cellContentInset->right = v8;

  [(SUUIViewElementPageSection *)self defaultVerticalInset];
  self->_sectionBottomInset = v9;
  self->_firstSectionTopInset = v9;
  v10 = [(SUUIStorePageSection *)self pageComponent];
  v22 = [v10 viewElement];

  self->_rendersWithPerspective = [v22 rendersWithPerspective];
  v11 = [v22 elementType];
  if (v11 > 49)
  {
    if (v11 <= 108)
    {
      if (v11 <= 65)
      {
        if (v11 != 50)
        {
          if (v11 != 62)
          {
            goto LABEL_47;
          }

          self->_cellClass = objc_opt_class();
          v12 = @"SUUIHorizontalListReuseIdentifier";
          goto LABEL_46;
        }

        goto LABEL_30;
      }

      if (v11 != 66)
      {
        if (v11 != 77)
        {
          goto LABEL_47;
        }

        self->_cellClass = objc_opt_class();
        v12 = @"SUUIOfferReuseIdentifier";
        goto LABEL_46;
      }

      v21 = [v22 lockupViewType];
      if (v21 <= 3)
      {
        if (v21 < 3)
        {
          goto LABEL_45;
        }

        if (v21 != 3)
        {
          goto LABEL_47;
        }

        self->_cellClass = objc_opt_class();
        v12 = @"SUUIProductLockupReuseIdentifier";
      }

      else
      {
        if (v21 > 5)
        {
          if (v21 != 6)
          {
            if (v21 != 7)
            {
              if (v21 != 8)
              {
                goto LABEL_47;
              }

              goto LABEL_45;
            }

            p_cellContentInset->left = 0.0;
            p_cellContentInset->right = 0.0;
            self->_cellClass = objc_opt_class();
            objc_storeStrong(&self->_reuseIdentifier, @"SUUIHorizontalLockupReuseID");
            self->_firstSectionTopInset = 0.0;
LABEL_24:
            self->_sectionBottomInset = 0.0;
            goto LABEL_47;
          }

LABEL_45:
          self->_cellClass = objc_opt_class();
          v12 = @"SUUIHorizontalLockupReuseID";
          goto LABEL_46;
        }

        if (v21 != 4)
        {
          p_cellContentInset->right = 0.0;
          self->_cellClass = objc_opt_class();
          objc_storeStrong(&self->_reuseIdentifier, @"SUUIHorizontalLockupReuseID");
          v19 = 1.0;
          self->_firstSectionTopInset = 1.0;
          goto LABEL_33;
        }

        self->_cellClass = objc_opt_class();
        v12 = @"SUUIVerticalLockupReuseIdentifier";
      }

LABEL_46:
      objc_storeStrong(&self->_reuseIdentifier, v12);
      goto LABEL_47;
    }

    if (v11 <= 133)
    {
      if (v11 != 109)
      {
        if (v11 != 131)
        {
          goto LABEL_47;
        }

        self->_cellClass = objc_opt_class();
        v12 = @"SUUIStackListReuseIdentifier";
        goto LABEL_46;
      }

      self->_cellClass = objc_opt_class();
      p_cellContentInset->bottom = 8.0;
      p_cellContentInset->top = 0.0;
      self->_firstSectionTopInset = 7.0;
      objc_storeStrong(&self->_reuseIdentifier, @"SUUISegmentedControlReuseIdentifier");
      v20 = [v22 bottomDivider];

      if (!v20)
      {
        self->_sectionBottomInset = 7.0;
      }

      goto LABEL_47;
    }

    if (v11 == 134)
    {
      self->_cellClass = objc_opt_class();
      v12 = @"SUUIStarHistogramCellReuseIdentifier";
      goto LABEL_46;
    }

    if (v11 != 141)
    {
      goto LABEL_47;
    }

LABEL_30:
    self->_cellClass = objc_opt_class();
    objc_storeStrong(&self->_reuseIdentifier, @"SUUIButtonReuseIdentifier");
    v19 = 12.0;
LABEL_33:
    self->_sectionBottomInset = v19;
    goto LABEL_47;
  }

  if (v11 <= 26)
  {
    if (v11 == 4)
    {
      self->_cellClass = objc_opt_class();
      v12 = @"SUUIActivityIndicatorReuseIdentifier";
      goto LABEL_46;
    }

    if (v11 != 12)
    {
      if (v11 == 14)
      {
        self->_cellClass = objc_opt_class();
        objc_storeStrong(&self->_reuseIdentifier, @"SUUICardViewElementReuseIdentifier");
        self->_firstSectionTopInset = 0.0;
      }

      goto LABEL_47;
    }

    goto LABEL_30;
  }

  if (v11 <= 47)
  {
    if (v11 == 27)
    {
      self->_cellClass = objc_opt_class();
      v12 = @"SUUIContentUnavailableReuseIdentifier";
    }

    else
    {
      if (v11 != 40)
      {
        goto LABEL_47;
      }

      *&p_cellContentInset->top = xmmword_259FCC1F0;
      *&p_cellContentInset->bottom = xmmword_259FCC1F0;
      self->_cellClass = objc_opt_class();
      self->_firstSectionTopInset = 0.0;
      v12 = @"SUUIFilterBarReuseIdentifier";
    }

    goto LABEL_46;
  }

  if (v11 == 48)
  {
    self->_cellClass = objc_opt_class();
    objc_storeStrong(&self->_reuseIdentifier, @"SUUISectionHeaderReuseIdentifier");
    v19 = 10.0;
    goto LABEL_33;
  }

  self->_cellClass = objc_opt_class();
  p_cellContentInset->right = 0.0;
  p_cellContentInset->left = 0.0;
  self->_firstSectionTopInset = 0.0;
  objc_storeStrong(&self->_reuseIdentifier, @"SUUIImageReuseIdentifier");
  v13 = [v22 style];
  v14 = [v13 imageTreatment];
  v15 = [v14 isEqualToString:@"uber"];

  if (v15)
  {
    self->_sectionBottomInset = 0.0;
  }

  v16 = [v22 style];
  v17 = [v16 imageTreatment];
  v18 = [v17 isEqualToString:@"uber-banner"];

  if (v18)
  {
    goto LABEL_24;
  }

LABEL_47:
}

- (void)_requestCellLayout
{
  v3 = [(SUUIStorePageSection *)self pageComponent];
  v7 = [v3 viewElement];

  v4 = [(SUUIStorePageSection *)self context];
  [v4 activePageWidth];
  v6 = v5 - self->_cellContentInset.left - self->_cellContentInset.right;

  [(objc_class *)self->_cellClass requestLayoutForViewElement:v7 width:self->_cellLayoutContext context:v6];
}

- (BOOL)_stretchesToFitCollectionViewBounds
{
  v3 = [(SUUIStorePageSection *)self isBottomSection];
  if (v3)
  {
    v4 = [(SUUIStorePageSection *)self pageComponent];
    v5 = [v4 viewElement];
    v6 = [v5 elementType];

    LOBYTE(v3) = v6 == 4 || v6 == 27;
  }

  return v3;
}

@end