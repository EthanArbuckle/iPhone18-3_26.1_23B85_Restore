@interface SUUIViewElementPageSection
- (BOOL)_stretchesToFitCollectionViewBounds;
- (BOOL)collectionViewShouldHighlightItemAtIndexPath:(id)path;
- (BOOL)collectionViewShouldSelectItemAtIndexPath:(id)path;
- (BOOL)updateCellWithIndexPath:(id)path itemState:(id)state animated:(BOOL)animated;
- (CGSize)cellSizeForIndexPath:(id)path;
- (CGSize)preferredContentSize;
- (SUUIViewElementPageSection)initWithPageComponent:(id)component;
- (UIEdgeInsets)pinningContentInsetForItemAtIndexPath:(id)path;
- (UIEdgeInsets)sectionContentInset;
- (double)contentInsetAdjustmentForCollectionView:(id)view;
- (double)defaultVerticalInset;
- (id)backgroundColorForIndexPath:(id)path;
- (id)cellForIndexPath:(id)path;
- (id)previewingContext:(id)context viewControllerForLocation:(CGPoint)location;
- (int64_t)applyUpdateType:(int64_t)type;
- (int64_t)defaultItemPinningStyle;
- (void)_reloadViewElementProperties;
- (void)_requestCellLayout;
- (void)addImpressionsForIndexPath:(id)path toSession:(id)session;
- (void)artworkRequest:(id)request didLoadImage:(id)image;
- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)path;
- (void)collectionViewDidSelectItemAtIndexPath:(id)path;
- (void)collectionViewWillApplyLayoutAttributes:(id)attributes;
- (void)collectionViewWillDisplayCellForItemAtIndexPath:(id)path;
- (void)entityProvider:(id)provider didInvalidateWithContext:(id)context;
- (void)expandEditorialForLabelElement:(id)element indexPath:(id)path;
- (void)getModalSourceViewForViewElement:(id)element completionBlock:(id)block;
- (void)prefetchResourcesWithReason:(int64_t)reason;
- (void)reloadCellWithIndexPath:(id)path reason:(int64_t)reason;
- (void)willAppearInContext:(id)context;
- (void)willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SUUIViewElementPageSection

- (SUUIViewElementPageSection)initWithPageComponent:(id)component
{
  v6.receiver = self;
  v6.super_class = SUUIViewElementPageSection;
  v3 = [(SUUIStorePageSection *)&v6 initWithPageComponent:component];
  v4 = v3;
  if (v3)
  {
    [(SUUIViewElementPageSection *)v3 _reloadViewElementProperties];
  }

  return v4;
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
  if (type != 2)
  {
    [(SUUIViewElementPageSection *)self _reloadViewElementProperties];
  }

  v6.receiver = self;
  v6.super_class = SUUIViewElementPageSection;
  return [(SUUIStorePageSection *)&v6 applyUpdateType:type];
}

- (id)backgroundColorForIndexPath:(id)path
{
  pathCopy = path;
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  handlesBackgroundColorDirectly = [viewElement handlesBackgroundColorDirectly];

  if (handlesBackgroundColorDirectly)
  {
    v8 = 0;
  }

  else
  {
    pageComponent2 = [(SUUIStorePageSection *)self pageComponent];
    viewElement2 = [pageComponent2 viewElement];
    style = [viewElement2 style];

    ikBackgroundColor = [style ikBackgroundColor];
    color = [ikBackgroundColor color];

    if (color)
    {
      v14 = color;
    }

    else
    {
      v16.receiver = self;
      v16.super_class = SUUIViewElementPageSection;
      v14 = [(SUUIStorePageSection *)&v16 backgroundColorForIndexPath:pathCopy];
    }

    v8 = v14;
  }

  return v8;
}

- (id)cellForIndexPath:(id)path
{
  pathCopy = path;
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];
  v7 = [collectionView dequeueReusableCellWithReuseIdentifier:self->_reuseIdentifier forIndexPath:pathCopy];

  [v7 setContentInset:{self->_cellContentInset.top, self->_cellContentInset.left, self->_cellContentInset.bottom, self->_cellContentInset.right}];
  [v7 setSeparatorStyle:0];
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  if ([viewElement elementType] == 49)
  {
    [v7 setShowsReflectionImage:{-[SUUIViewElementPageSection _showsImageReflection](self, "_showsImageReflection")}];
  }

  [context activePageWidth];
  v11 = v10 - self->_cellContentInset.left - self->_cellContentInset.right;
  style = [viewElement style];
  visibility = [style visibility];
  v14 = [visibility isEqualToString:@"hidden"];

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = viewElement;
  }

  [v7 reloadWithViewElement:v15 width:self->_cellLayoutContext context:v11];
  if (self->_rendersWithPerspective && [v7 conformsToProtocol:&unk_286C2FC68])
  {
    v16 = v7;
    context2 = [(SUUIStorePageSection *)self context];
    parentViewController = [context2 parentViewController];
    view = [parentViewController view];

    [v16 setPerspectiveTargetView:view];
    [view bounds];
    [v16 setVanishingPoint:{CGRectGetMidX(v22), -800.0}];
  }

  objc_storeWeak(&self->_lastCell, v7);

  return v7;
}

- (CGSize)cellSizeForIndexPath:(id)path
{
  context = [(SUUIStorePageSection *)self context];
  [context activePageWidth];
  v6 = v5;

  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  [(objc_class *)self->_cellClass sizeThatFitsWidth:viewElement viewElement:self->_cellLayoutContext context:v6 - self->_cellContentInset.left - self->_cellContentInset.right];
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

- (void)collectionViewDidSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__SUUIViewElementPageSection_collectionViewDidSelectItemAtIndexPath___block_invoke;
  v8[3] = &unk_2798F8378;
  objc_copyWeak(&v10, &location);
  v7 = viewElement;
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

- (BOOL)collectionViewShouldHighlightItemAtIndexPath:(id)path
{
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  isEnabled = [viewElement isEnabled];

  return isEnabled;
}

- (BOOL)collectionViewShouldSelectItemAtIndexPath:(id)path
{
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  isEnabled = [viewElement isEnabled];

  return isEnabled;
}

- (void)collectionViewWillApplyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  if ([(SUUIViewElementPageSection *)self _stretchesToFitCollectionViewBounds])
  {
    context = [(SUUIStorePageSection *)self context];
    collectionView = [context collectionView];

    [collectionView bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [collectionView contentInset];
    v16 = v15;
    [attributesCopy frame];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v32.origin.x = v8;
    v32.origin.y = v10;
    v32.size.width = v12;
    v32.size.height = v14;
    v23 = CGRectGetMaxY(v32) - v16 - v20 - self->_sectionBottomInset;
    pageComponent = [(SUUIStorePageSection *)self pageComponent];
    viewElement = [pageComponent viewElement];
    style = [viewElement style];

    maxHeight = [style maxHeight];

    if (maxHeight)
    {
      maxHeight2 = [style maxHeight];
      [maxHeight2 floatValue];
      v30 = v29;

      if (v23 < v30)
      {
        v23 = v30;
      }
    }

    [attributesCopy setFrame:{v18, v20, v22, v23}];
    [attributesCopy setSize:{v22, v23}];
  }

  v31.receiver = self;
  v31.super_class = SUUIViewElementPageSection;
  [(SUUIStorePageSection *)&v31 collectionViewWillApplyLayoutAttributes:attributesCopy];
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
  v9.super_class = SUUIViewElementPageSection;
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
  v9.super_class = SUUIViewElementPageSection;
  [(SUUIStorePageSection *)&v9 collectionViewDidEndDisplayingCellForItemAtIndexPath:pathCopy];
}

- (double)contentInsetAdjustmentForCollectionView:(id)view
{
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  v6 = 0.0;
  if ([(SUUIViewElementPageSection *)self _showsImageReflection])
  {
    cellClass = self->_cellClass;
    context = [(SUUIStorePageSection *)self context];
    [context activePageWidth];
    [(objc_class *)cellClass sizeThatFitsWidth:viewElement viewElement:self->_cellLayoutContext context:v9 - self->_cellContentInset.left - self->_cellContentInset.right];
    v11 = v10;

    v6 = -v11;
  }

  return v6;
}

- (int64_t)defaultItemPinningStyle
{
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  if ([viewElement elementType] == 49)
  {
    isTopSection = [(SUUIStorePageSection *)self isTopSection];

    if (isTopSection)
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

- (void)entityProvider:(id)provider didInvalidateWithContext:(id)context
{
  contextCopy = context;
  providerCopy = provider;
  [(SUUIViewElementPageSection *)self _requestCellLayout];
  v8.receiver = self;
  v8.super_class = SUUIViewElementPageSection;
  [(SUUIStorePageSection *)&v8 entityProvider:providerCopy didInvalidateWithContext:contextCopy];
}

- (void)expandEditorialForLabelElement:(id)element indexPath:(id)path
{
  v11[1] = *MEMORY[0x277D85DE8];
  cellLayoutContext = self->_cellLayoutContext;
  pathCopy = path;
  [(SUUIViewElementLayoutContext *)cellLayoutContext expandEditorialForLabelElement:element];
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];
  v11[0] = pathCopy;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];

  [collectionView reloadItemsAtIndexPaths:v10];
}

- (void)getModalSourceViewForViewElement:(id)element completionBlock:(id)block
{
  elementCopy = element;
  blockCopy = block;
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  v9 = [elementCopy isDescendentFromViewElement:viewElement];

  if (v9)
  {
    v10 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:{-[SUUIStorePageSection sectionIndex](self, "sectionIndex")}];
    context = [(SUUIStorePageSection *)self context];
    collectionView = [context collectionView];
    v13 = [collectionView cellForItemAtIndexPath:v10];

    itmlID = [elementCopy itmlID];
    v15 = [v13 viewForElementIdentifier:itmlID];

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

  blockCopy[2](blockCopy, v17);
}

- (UIEdgeInsets)pinningContentInsetForItemAtIndexPath:(id)path
{
  pathCopy = path;
  firstSectionTopInset = self->_firstSectionTopInset;
  left = self->_cellContentInset.left;
  sectionBottomInset = self->_sectionBottomInset;
  right = self->_cellContentInset.right;
  v19 = 0;
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  style = [viewElement style];
  v12 = SUUIViewElementPaddingForStyle(style, &v19);
  v14 = v13;

  if (v19 == 1)
  {
    firstSectionTopInset = v12;
  }

  else
  {
    v14 = 0.0;
    if ([(SUUIStorePageSection *)self pinningStyleForItemAtIndexPath:pathCopy]!= 3 && self->_cellContentInset.bottom <= 0.00000011920929)
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
    pageComponent = [(SUUIStorePageSection *)self pageComponent];
    viewElement = [pageComponent viewElement];

    [(objc_class *)self->_cellClass preferredSizeForViewElement:viewElement context:self->_cellLayoutContext];
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

- (void)prefetchResourcesWithReason:(int64_t)reason
{
  cellClass = self->_cellClass;
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  [(objc_class *)cellClass prefetchResourcesForViewElement:viewElement reason:reason context:self->_cellLayoutContext];

  v8.receiver = self;
  v8.super_class = SUUIViewElementPageSection;
  [(SUUIStorePageSection *)&v8 prefetchResourcesWithReason:reason];
}

- (id)previewingContext:(id)context viewControllerForLocation:(CGPoint)location
{
  v5 = [(SUUIStorePageSection *)self pageComponent:context];
  viewElement = [v5 viewElement];

  context = [(SUUIStorePageSection *)self context];
  clientContext = [context clientContext];
  v9 = [clientContext previewViewControllerForViewElement:viewElement];

  return v9;
}

- (void)reloadCellWithIndexPath:(id)path reason:(int64_t)reason
{
  pathCopy = path;
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];
  v7 = [collectionView cellForItemAtIndexPath:pathCopy];

  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  [context activePageWidth];
  [v7 reloadWithViewElement:viewElement width:self->_cellLayoutContext context:v10 - self->_cellContentInset.left - self->_cellContentInset.right];
}

- (UIEdgeInsets)sectionContentInset
{
  sectionBottomInset = self->_sectionBottomInset;
  v14 = 0;
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  style = [viewElement style];
  firstSectionTopInset = SUUIViewElementPaddingForStyle(style, &v14);
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

- (BOOL)updateCellWithIndexPath:(id)path itemState:(id)state animated:(BOOL)animated
{
  animatedCopy = animated;
  stateCopy = state;
  WeakRetained = objc_loadWeakRetained(&self->_lastCell);
  v9 = [WeakRetained updateWithItemState:stateCopy context:self->_cellLayoutContext animated:animatedCopy];

  if (v9)
  {
    [(SUUIViewElementPageSection *)self _requestCellLayout];
  }

  return v9;
}

- (void)willAppearInContext:(id)context
{
  contextCopy = context;
  collectionView = [contextCopy collectionView];
  [collectionView registerClass:self->_cellClass forCellWithReuseIdentifier:self->_reuseIdentifier];
  v6 = self->_cellLayoutContext;
  v7 = [[SUUIViewElementLayoutContext alloc] initWithStorePageSectionContext:contextCopy previousLayoutContext:v6];
  cellLayoutContext = self->_cellLayoutContext;
  self->_cellLayoutContext = v7;

  [(SUUIViewElementLayoutContext *)self->_cellLayoutContext setArtworkRequestDelegate:self];
  [(SUUIViewElementPageSection *)self _reloadViewElementProperties];
  [(SUUIViewElementPageSection *)self _requestCellLayout];
  v9.receiver = self;
  v9.super_class = SUUIViewElementPageSection;
  [(SUUIStorePageSection *)&v9 willAppearInContext:contextCopy];
}

- (void)willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  cellLayoutContext = self->_cellLayoutContext;
  coordinatorCopy = coordinator;
  [(SUUIViewElementLayoutContext *)cellLayoutContext invalidateAllEditorialLayouts];
  [(SUUIViewElementLayoutContext *)self->_cellLayoutContext setActivePageWidth:width];
  [(SUUIViewElementPageSection *)self _requestCellLayout];
  v9.receiver = self;
  v9.super_class = SUUIViewElementPageSection;
  [(SUUIStorePageSection *)&v9 willTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

- (void)artworkRequest:(id)request didLoadImage:(id)image
{
  imageCopy = image;
  requestCopy = request;
  WeakRetained = objc_loadWeakRetained(&self->_lastCell);
  [WeakRetained setImage:imageCopy forArtworkRequest:requestCopy context:self->_cellLayoutContext];
}

- (double)defaultVerticalInset
{
  keyWindow = [MEMORY[0x277D75DA0] keyWindow];
  [keyWindow bounds];
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
  context = [(SUUIStorePageSection *)self context];
  [context horizontalPadding];
  v6 = v5;
  context2 = [(SUUIStorePageSection *)self context];
  [context2 horizontalPadding];
  p_cellContentInset->top = 0.0;
  p_cellContentInset->left = v6;
  p_cellContentInset->bottom = 0.0;
  p_cellContentInset->right = v8;

  [(SUUIViewElementPageSection *)self defaultVerticalInset];
  self->_sectionBottomInset = v9;
  self->_firstSectionTopInset = v9;
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  self->_rendersWithPerspective = [viewElement rendersWithPerspective];
  elementType = [viewElement elementType];
  if (elementType > 49)
  {
    if (elementType <= 108)
    {
      if (elementType <= 65)
      {
        if (elementType != 50)
        {
          if (elementType != 62)
          {
            goto LABEL_47;
          }

          self->_cellClass = objc_opt_class();
          v12 = @"SUUIHorizontalListReuseIdentifier";
          goto LABEL_46;
        }

        goto LABEL_30;
      }

      if (elementType != 66)
      {
        if (elementType != 77)
        {
          goto LABEL_47;
        }

        self->_cellClass = objc_opt_class();
        v12 = @"SUUIOfferReuseIdentifier";
        goto LABEL_46;
      }

      lockupViewType = [viewElement lockupViewType];
      if (lockupViewType <= 3)
      {
        if (lockupViewType < 3)
        {
          goto LABEL_45;
        }

        if (lockupViewType != 3)
        {
          goto LABEL_47;
        }

        self->_cellClass = objc_opt_class();
        v12 = @"SUUIProductLockupReuseIdentifier";
      }

      else
      {
        if (lockupViewType > 5)
        {
          if (lockupViewType != 6)
          {
            if (lockupViewType != 7)
            {
              if (lockupViewType != 8)
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

        if (lockupViewType != 4)
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

    if (elementType <= 133)
    {
      if (elementType != 109)
      {
        if (elementType != 131)
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
      bottomDivider = [viewElement bottomDivider];

      if (!bottomDivider)
      {
        self->_sectionBottomInset = 7.0;
      }

      goto LABEL_47;
    }

    if (elementType == 134)
    {
      self->_cellClass = objc_opt_class();
      v12 = @"SUUIStarHistogramCellReuseIdentifier";
      goto LABEL_46;
    }

    if (elementType != 141)
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

  if (elementType <= 26)
  {
    if (elementType == 4)
    {
      self->_cellClass = objc_opt_class();
      v12 = @"SUUIActivityIndicatorReuseIdentifier";
      goto LABEL_46;
    }

    if (elementType != 12)
    {
      if (elementType == 14)
      {
        self->_cellClass = objc_opt_class();
        objc_storeStrong(&self->_reuseIdentifier, @"SUUICardViewElementReuseIdentifier");
        self->_firstSectionTopInset = 0.0;
      }

      goto LABEL_47;
    }

    goto LABEL_30;
  }

  if (elementType <= 47)
  {
    if (elementType == 27)
    {
      self->_cellClass = objc_opt_class();
      v12 = @"SUUIContentUnavailableReuseIdentifier";
    }

    else
    {
      if (elementType != 40)
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

  if (elementType == 48)
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
  style = [viewElement style];
  imageTreatment = [style imageTreatment];
  v15 = [imageTreatment isEqualToString:@"uber"];

  if (v15)
  {
    self->_sectionBottomInset = 0.0;
  }

  style2 = [viewElement style];
  imageTreatment2 = [style2 imageTreatment];
  v18 = [imageTreatment2 isEqualToString:@"uber-banner"];

  if (v18)
  {
    goto LABEL_24;
  }

LABEL_47:
}

- (void)_requestCellLayout
{
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  context = [(SUUIStorePageSection *)self context];
  [context activePageWidth];
  v6 = v5 - self->_cellContentInset.left - self->_cellContentInset.right;

  [(objc_class *)self->_cellClass requestLayoutForViewElement:viewElement width:self->_cellLayoutContext context:v6];
}

- (BOOL)_stretchesToFitCollectionViewBounds
{
  isBottomSection = [(SUUIStorePageSection *)self isBottomSection];
  if (isBottomSection)
  {
    pageComponent = [(SUUIStorePageSection *)self pageComponent];
    viewElement = [pageComponent viewElement];
    elementType = [viewElement elementType];

    LOBYTE(isBottomSection) = elementType == 4 || elementType == 27;
  }

  return isBottomSection;
}

@end