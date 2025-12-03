@interface SUUIShelfPageSection
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (BOOL)updateCellWithIndexPath:(id)path itemState:(id)state animated:(BOOL)animated;
- (CGSize)cellSizeForIndexPath:(id)path;
- (SUUIScrollViewDelegateObserver)scrollViewDelegateObserver;
- (SUUIShelfPageSection)initWithPageComponent:(id)component configuration:(id)configuration;
- (UIEdgeInsets)sectionContentInset;
- (id)_normalizedShelfItemIndexPathFromActualIndexPath:(id)path;
- (id)backgroundColorForIndexPath:(id)path;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)previewingContext:(id)context viewControllerForLocation:(CGPoint)location;
- (int64_t)applyUpdateType:(int64_t)type;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)_performDefaultSelectActionForEffectiveViewElement:(id)element;
- (void)_reloadViewElementProperties;
- (void)_setContext:(id)context;
- (void)addImpressionsForIndexPath:(id)path toSession:(id)session;
- (void)artworkRequest:(id)request didLoadImage:(id)image;
- (void)collectionView:(id)view didConfirmButtonElement:(id)element withClickInfo:(id)info forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view layout:(id)layout willApplyLayoutAttributes:(id)attributes;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)path;
- (void)collectionViewWillApplyLayoutAttributes:(id)attributes;
- (void)collectionViewWillDisplayCellForItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)deselectItemsAnimated:(BOOL)animated;
- (void)entityProvider:(id)provider didInvalidateWithContext:(id)context;
- (void)getModalSourceViewForViewElement:(id)element completionBlock:(id)block;
- (void)invalidateCachedLayoutInformation;
- (void)prefetchResourcesWithReason:(int64_t)reason;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDecelerating:(id)decelerating;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setTopSection:(BOOL)section;
- (void)viewElementSlideshowWillDismiss:(id)dismiss;
- (void)willAppearInContext:(id)context;
- (void)willPresentPreviewViewController:(id)controller forLocation:(CGPoint)location inSourceView:(id)view;
@end

@implementation SUUIShelfPageSection

- (SUUIShelfPageSection)initWithPageComponent:(id)component configuration:(id)configuration
{
  configurationCopy = configuration;
  v11.receiver = self;
  v11.super_class = SUUIShelfPageSection;
  v7 = [(SUUIStorePageSection *)&v11 initWithPageComponent:component];
  if (v7)
  {
    if (configurationCopy)
    {
      v8 = configurationCopy;
    }

    else
    {
      v8 = objc_alloc_init(SUUIShelfPageSectionConfiguration);
    }

    configuration = v7->_configuration;
    v7->_configuration = v8;

    [(SUUIShelfPageSectionConfiguration *)v7->_configuration setDataSource:v7];
    [(SUUIShelfPageSectionConfiguration *)v7->_configuration setShelfCollectionViewDataSource:v7];
    [(SUUIShelfPageSectionConfiguration *)v7->_configuration setShelfCollectionViewDelegate:v7];
    [(SUUIShelfPageSection *)v7 _reloadViewElementProperties];
  }

  return v7;
}

- (void)dealloc
{
  [(SUUIViewElementLayoutContext *)self->_cellLayoutContext setArtworkRequestDelegate:0];
  [(SUUIShelfPageSectionConfiguration *)self->_configuration setShelfCollectionViewDataSource:0];
  [(SUUIShelfPageSectionConfiguration *)self->_configuration setShelfCollectionViewDelegate:0];
  [(SUUIViewElementSlideshowController *)self->_slideshowController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SUUIShelfPageSection;
  [(SUUIStorePageSection *)&v3 dealloc];
}

- (void)addImpressionsForIndexPath:(id)path toSession:(id)session
{
  v21 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  [sessionCopy addItemViewElement:viewElement];

  existingShelfCollectionView = [(SUUIShelfPageSectionConfiguration *)self->_configuration existingShelfCollectionView];
  indexPathsForVisibleItems = [existingShelfCollectionView indexPathsForVisibleItems];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = indexPathsForVisibleItems;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = -[NSArray objectAtIndex:](self->_viewElements, "objectAtIndex:", [*(*(&v16 + 1) + 8 * v14) item]);
        [sessionCopy addItemViewElement:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }
}

- (int64_t)applyUpdateType:(int64_t)type
{
  [(SUUIShelfPageSection *)self _reloadViewElementProperties];
  if (![(SUUIShelfPageSectionConfiguration *)self->_configuration needsShelfCollectionViewReload])
  {
    [(SUUIShelfPageSectionConfiguration *)self->_configuration setNeedsShelfCollectionViewReload:[(SUUIShelfViewElement *)self->_shelfViewElement updateType]!= 0];
  }

  v6.receiver = self;
  v6.super_class = SUUIShelfPageSection;
  return [(SUUIStorePageSection *)&v6 applyUpdateType:type];
}

- (id)backgroundColorForIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(SUUIShelfPageSectionConfiguration *)self->_configuration backgroundColorForShelfViewElement:self->_shelfViewElement];
  if (!v5)
  {
    v7.receiver = self;
    v7.super_class = SUUIShelfPageSection;
    v5 = [(SUUIStorePageSection *)&v7 backgroundColorForIndexPath:pathCopy];
  }

  return v5;
}

- (CGSize)cellSizeForIndexPath:(id)path
{
  configuration = self->_configuration;
  shelfViewElement = self->_shelfViewElement;
  viewElements = self->_viewElements;
  pathCopy = path;
  [(SUUIShelfPageSectionConfiguration *)configuration cellSizeForShelfViewElement:shelfViewElement indexPath:pathCopy numberOfShelfItems:[(NSArray *)viewElements count]];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)collectionViewWillApplyLayoutAttributes:(id)attributes
{
  v5.receiver = self;
  v5.super_class = SUUIShelfPageSection;
  attributesCopy = attributes;
  [(SUUIStorePageSection *)&v5 collectionViewWillApplyLayoutAttributes:attributesCopy];
  [(SUUIShelfPageSectionConfiguration *)self->_configuration collectionViewWillApplyLayoutAttributes:attributesCopy, v5.receiver, v5.super_class];
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
  v9.super_class = SUUIShelfPageSection;
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
  v9.super_class = SUUIShelfPageSection;
  [(SUUIStorePageSection *)&v9 collectionViewDidEndDisplayingCellForItemAtIndexPath:pathCopy];
}

- (void)deselectItemsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v17 = *MEMORY[0x277D85DE8];
  existingShelfCollectionView = [(SUUIShelfPageSectionConfiguration *)self->_configuration existingShelfCollectionView];
  indexPathsForSelectedItems = [existingShelfCollectionView indexPathsForSelectedItems];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [indexPathsForSelectedItems countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(indexPathsForSelectedItems);
        }

        [existingShelfCollectionView deselectItemAtIndexPath:*(*(&v12 + 1) + 8 * v10++) animated:animatedCopy];
      }

      while (v8 != v10);
      v8 = [indexPathsForSelectedItems countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11.receiver = self;
  v11.super_class = SUUIShelfPageSection;
  [(SUUIStorePageSection *)&v11 deselectItemsAnimated:animatedCopy];
}

- (void)entityProvider:(id)provider didInvalidateWithContext:(id)context
{
  configuration = self->_configuration;
  shelfViewElement = self->_shelfViewElement;
  viewElements = self->_viewElements;
  contextCopy = context;
  providerCopy = provider;
  [(SUUIShelfPageSectionConfiguration *)configuration reloadShelfLayoutDataForShelfViewElement:shelfViewElement withShelfItemViewElements:viewElements requestCellLayouts:1 numberOfShelfItems:[(NSArray *)viewElements count]];
  v11.receiver = self;
  v11.super_class = SUUIShelfPageSection;
  [(SUUIStorePageSection *)&v11 entityProvider:providerCopy didInvalidateWithContext:contextCopy];
}

- (void)getModalSourceViewForViewElement:(id)element completionBlock:(id)block
{
  elementCopy = element;
  blockCopy = block;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__64;
  v24 = __Block_byref_object_dispose__64;
  v25 = 0;
  viewElements = self->_viewElements;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __73__SUUIShelfPageSection_getModalSourceViewForViewElement_completionBlock___block_invoke;
  v17[3] = &unk_2798F6E20;
  v17[4] = self;
  v9 = elementCopy;
  v18 = v9;
  v19 = &v20;
  [(NSArray *)viewElements enumerateObjectsUsingBlock:v17];
  v10 = v21[5];
  if (v10)
  {
    v11 = [(SUUIShelfPageSectionConfiguration *)self->_configuration actualIndexPathOfShelfItemClosestToVisibleBoundsForNormalizedIndexPath:v10 numberOfShelfItems:[(NSArray *)self->_viewElements count]];
    v12 = v21[5];
    v21[5] = v11;

    v10 = objc_alloc_init(SUUIModalSourceViewProvider);
    [(SUUIModalSourceViewProvider *)v10 setUserInfo:v9];
    existingShelfCollectionView = [(SUUIShelfPageSectionConfiguration *)self->_configuration existingShelfCollectionView];
    v14 = [existingShelfCollectionView cellForItemAtIndexPath:v21[5]];

    itmlID = [v9 itmlID];
    v16 = [v14 viewForElementIdentifier:itmlID];

    if (v16)
    {
      [(SUUIModalSourceViewProvider *)v10 setOriginalSourceView:v16];
    }

    else
    {
      [(SUUIModalSourceViewProvider *)v10 setOriginalSourceView:v14];
    }
  }

  blockCopy[2](blockCopy, v10);

  _Block_object_dispose(&v20, 8);
}

void __73__SUUIShelfPageSection_getModalSourceViewForViewElement_completionBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v10 = [*(*(a1 + 32) + 96) effectiveViewElementForShelfItemViewElement:a2];
  if ([*(a1 + 40) isDescendentFromViewElement:?])
  {
    v7 = [MEMORY[0x277CCAA70] indexPathForItem:a3 inSection:0];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    *a4 = 1;
  }
}

- (void)invalidateCachedLayoutInformation
{
  [(SUUIShelfPageSectionConfiguration *)self->_configuration setNeedsShelfCollectionViewLayout:1];
  existingShelfCollectionView = [(SUUIShelfPageSectionConfiguration *)self->_configuration existingShelfCollectionView];
  [existingShelfCollectionView reloadData];

  v4.receiver = self;
  v4.super_class = SUUIShelfPageSection;
  [(SUUIStorePageSection *)&v4 invalidateCachedLayoutInformation];
}

- (void)prefetchResourcesWithReason:(int64_t)reason
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  viewElements = self->_viewElements;
  v8[3] = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__SUUIShelfPageSection_prefetchResourcesWithReason___block_invoke;
  v7[3] = &unk_2798F7768;
  v7[5] = v8;
  v7[6] = reason;
  v7[4] = self;
  [(NSArray *)viewElements enumerateObjectsUsingBlock:v7];
  v6.receiver = self;
  v6.super_class = SUUIShelfPageSection;
  [(SUUIStorePageSection *)&v6 prefetchResourcesWithReason:reason];
  _Block_object_dispose(v8, 8);
}

uint64_t __52__SUUIShelfPageSection_prefetchResourcesWithReason___block_invoke(void *a1, uint64_t a2, uint64_t a3, BOOL *a4)
{
  result = [*(a1[4] + 96) prefetchResourcesForShelfItemViewElement:a2 reason:a1[6]];
  if (result)
  {
    *a4 = ++*(*(a1[5] + 8) + 24) > 9;
  }

  return result;
}

- (id)previewingContext:(id)context viewControllerForLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  configuration = self->_configuration;
  contextCopy = context;
  existingShelfCollectionView = [(SUUIShelfPageSectionConfiguration *)configuration existingShelfCollectionView];
  sourceView = [contextCopy sourceView];

  [existingShelfCollectionView convertPoint:sourceView fromView:{x, y}];
  v11 = [existingShelfCollectionView indexPathForItemAtPoint:?];
  v12 = -[NSArray objectAtIndex:](self->_viewElements, "objectAtIndex:", [v11 item]);
  context = [(SUUIStorePageSection *)self context];
  clientContext = [context clientContext];
  v15 = [clientContext previewViewControllerForViewElement:v12];

  return v15;
}

- (void)willPresentPreviewViewController:(id)controller forLocation:(CGPoint)location inSourceView:(id)view
{
  y = location.y;
  x = location.x;
  configuration = self->_configuration;
  viewCopy = view;
  controllerCopy = controller;
  existingShelfCollectionView = [(SUUIShelfPageSectionConfiguration *)configuration existingShelfCollectionView];
  [existingShelfCollectionView convertPoint:viewCopy fromView:{x, y}];
  v12 = v11;
  v14 = v13;

  v15 = [existingShelfCollectionView indexPathForItemAtPoint:{v12, v14}];
  v16 = [existingShelfCollectionView cellForItemAtIndexPath:v15];
  presentationController = [controllerCopy presentationController];

  [presentationController setSourceView:v16];
  [v16 bounds];
  [presentationController setSourceRect:?];
}

- (UIEdgeInsets)sectionContentInset
{
  configuration = self->_configuration;
  v12.receiver = self;
  v12.super_class = SUUIShelfPageSection;
  [(SUUIStorePageSection *)&v12 sectionContentInset];
  [(SUUIShelfPageSectionConfiguration *)configuration sectionContentInsetAdjustedFromValue:self->_shelfViewElement forShelfViewElement:[(SUUIStorePageSection *)self sectionIndex] withSectionIndex:v4, v5, v6, v7];
  result.right = v11;
  result.bottom = v10;
  result.left = v9;
  result.top = v8;
  return result;
}

- (void)setTopSection:(BOOL)section
{
  sectionCopy = section;
  v5.receiver = self;
  v5.super_class = SUUIShelfPageSection;
  [(SUUIStorePageSection *)&v5 setTopSection:?];
  [(SUUIShelfPageSectionConfiguration *)self->_configuration setTopSection:sectionCopy];
}

- (BOOL)updateCellWithIndexPath:(id)path itemState:(id)state animated:(BOOL)animated
{
  animatedCopy = animated;
  v28 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  existingShelfCollectionView = [(SUUIShelfPageSectionConfiguration *)self->_configuration existingShelfCollectionView];
  [existingShelfCollectionView indexPathsForVisibleItems];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v26 = 0u;
  v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        v13 = [existingShelfCollectionView cellForItemAtIndexPath:v12];
        if ([v13 updateWithItemState:stateCopy context:self->_cellLayoutContext animated:animatedCopy])
        {
          item = [v12 item];
          v16 = [(NSArray *)self->_viewElements objectAtIndex:item];
          shelfLayoutData = [(SUUIShelfPageSectionConfiguration *)self->_configuration shelfLayoutData];
          [shelfLayoutData sizeForItemAtIndex:item];
          v19 = v18;

          [objc_opt_class() requestLayoutForViewElement:v16 width:self->_cellLayoutContext context:v19];
          v14 = 1;
          goto LABEL_11;
        }
      }

      v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)willAppearInContext:(id)context
{
  contextCopy = context;
  collectionView = [contextCopy collectionView];
  [(SUUIShelfPageSectionConfiguration *)self->_configuration registerReusableClassesForCollectionView:collectionView];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:0x286AF9C20];
  v6 = self->_cellLayoutContext;
  v7 = [[SUUIViewElementLayoutContext alloc] initWithStorePageSectionContext:contextCopy previousLayoutContext:v6];
  cellLayoutContext = self->_cellLayoutContext;
  self->_cellLayoutContext = v7;

  [(SUUIViewElementLayoutContext *)self->_cellLayoutContext setAggregateValue:MEMORY[0x277CBEC38] forKey:0x286AFC9E0];
  [(SUUIViewElementLayoutContext *)self->_cellLayoutContext setArtworkRequestDelegate:self];
  [(SUUIViewElementLayoutContext *)self->_cellLayoutContext setContainerViewElementType:[(SUUIShelfViewElement *)self->_shelfViewElement elementType]];
  [(SUUIShelfPageSectionConfiguration *)self->_configuration setCellLayoutContext:self->_cellLayoutContext];
  [(SUUIShelfPageSectionConfiguration *)self->_configuration reloadShelfLayoutDataForShelfViewElement:self->_shelfViewElement withShelfItemViewElements:self->_viewElements requestCellLayouts:1 numberOfShelfItems:[(NSArray *)self->_viewElements count]];
  [(SUUIShelfPageSectionConfiguration *)self->_configuration setNeedsShelfCollectionViewLayout:1];
  if (![(NSArray *)self->_viewElements count])
  {
    [(SUUIShelfViewElement *)self->_shelfViewElement dispatchEventOfType:16 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
  }

  v9.receiver = self;
  v9.super_class = SUUIShelfPageSection;
  [(SUUIStorePageSection *)&v9 willAppearInContext:contextCopy];
}

- (void)_setContext:(id)context
{
  v5.receiver = self;
  v5.super_class = SUUIShelfPageSection;
  contextCopy = context;
  [(SUUIStorePageSection *)&v5 _setContext:contextCopy];
  [(SUUIShelfPageSectionConfiguration *)self->_configuration setPageSectionContext:contextCopy, v5.receiver, v5.super_class];
}

- (void)artworkRequest:(id)request didLoadImage:(id)image
{
  v23 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  imageCopy = image;
  existingShelfCollectionView = [(SUUIShelfPageSectionConfiguration *)self->_configuration existingShelfCollectionView];
  indexPathsForVisibleItems = [existingShelfCollectionView indexPathsForVisibleItems];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = indexPathsForVisibleItems;
  v10 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        existingShelfCollectionView2 = [(SUUIShelfPageSectionConfiguration *)self->_configuration existingShelfCollectionView];
        v16 = [existingShelfCollectionView2 cellForItemAtIndexPath:v14];

        [v16 setImage:imageCopy forArtworkRequest:requestCopy context:self->_cellLayoutContext];
        ++v13;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }
}

- (void)viewElementSlideshowWillDismiss:(id)dismiss
{
  slideshowController = self->_slideshowController;
  if (slideshowController == dismiss)
  {
    [(SUUIViewElementSlideshowController *)slideshowController setDelegate:0];
    [(SUUIViewElementSlideshowController *)self->_slideshowController setLayoutContext:0];
    v5 = self->_slideshowController;
    self->_slideshowController = 0;
  }
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [(SUUIShelfPageSection *)self _normalizedShelfItemIndexPathFromActualIndexPath:pathCopy];
  item = [v6 item];
  v8 = [(NSArray *)self->_viewElements objectAtIndex:item];
  v9 = [(SUUIShelfPageSectionConfiguration *)self->_configuration cellForShelfItemViewElement:v8 indexPath:pathCopy];

  v10 = [(NSArray *)self->_viewElements count];
  if (self->_lastNeedsMoreCount < v10 && item + 10 > v10)
  {
    self->_lastNeedsMoreCount = v10;
    [(SUUIShelfViewElement *)self->_shelfViewElement dispatchEventOfType:16 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
  }

  return v9;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  configuration = self->_configuration;
  v5 = [(NSArray *)self->_viewElements count:view];

  return [(SUUIShelfPageSectionConfiguration *)configuration numberOfCellsForNumberOfShelfItems:v5];
}

- (void)collectionView:(id)view didConfirmButtonElement:(id)element withClickInfo:(id)info forItemAtIndexPath:(id)path
{
  infoCopy = info;
  elementCopy = element;
  v12 = [(SUUIShelfPageSection *)self _normalizedShelfItemIndexPathFromActualIndexPath:path];
  v11 = [MEMORY[0x277CCAA70] indexPathForItem:objc_msgSend(v12 inSection:{"item"), -[SUUIStorePageSection sectionIndex](self, "sectionIndex")}];
  [(SUUIStorePageSection *)self collectionViewDidConfirmButtonElement:elementCopy withClickInfo:infoCopy forItemAtIndexPath:v11];
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(SUUIShelfPageSection *)self _normalizedShelfItemIndexPathFromActualIndexPath:pathCopy];
  v9 = -[NSArray objectAtIndex:](self->_viewElements, "objectAtIndex:", [v8 item]);
  v10 = [(SUUIShelfPageSectionConfiguration *)self->_configuration effectiveViewElementForShelfItemViewElement:v9];
  v11 = v10;
  if (v10)
  {
    if ([v10 isEnabled])
    {
      objc_initWeak(&location, self);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __64__SUUIShelfPageSection_collectionView_didSelectItemAtIndexPath___block_invoke;
      v14[3] = &unk_2798F8378;
      objc_copyWeak(&v16, &location);
      v12 = v11;
      v15 = v12;
      [v12 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:v14];
      if ([v12 elementType] == 66)
      {
        v13 = [(SUUIShelfPageSectionConfiguration *)self->_configuration lockupTypeForLockup:v12]- 3;

        objc_destroyWeak(&v16);
        objc_destroyWeak(&location);
        if (v13 >= 0xFFFFFFFFFFFFFFFELL)
        {
          goto LABEL_9;
        }
      }

      else
      {

        objc_destroyWeak(&v16);
        objc_destroyWeak(&location);
      }
    }

    else
    {
      [v11 dispatchEvent:0x286AFEA60 eventAttribute:0x286AFEA80 canBubble:1 isCancelable:0 extraInfo:0 completionBlock:0];
    }
  }

  [viewCopy deselectItemAtIndexPath:pathCopy animated:1];
LABEL_9:
}

void __64__SUUIShelfPageSection_collectionView_didSelectItemAtIndexPath___block_invoke(uint64_t a1, int a2, char a3)
{
  if (!a2 || (a3 & 1) == 0)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __64__SUUIShelfPageSection_collectionView_didSelectItemAtIndexPath___block_invoke_2;
    v4[3] = &unk_2798F7560;
    objc_copyWeak(&v6, (a1 + 40));
    v5 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], v4);

    objc_destroyWeak(&v6);
  }
}

void __64__SUUIShelfPageSection_collectionView_didSelectItemAtIndexPath___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _performDefaultSelectActionForEffectiveViewElement:*(a1 + 32)];
}

- (void)collectionView:(id)view layout:(id)layout willApplyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  viewCopy = view;
  indexPath = [attributesCopy indexPath];
  v12 = [(SUUIShelfPageSection *)self _normalizedShelfItemIndexPathFromActualIndexPath:indexPath];

  item = [v12 item];
  v11 = [(NSArray *)self->_viewElements objectAtIndex:item];
  [(SUUIShelfPageSectionConfiguration *)self->_configuration shelfItemsCollectionView:viewCopy willApplyLayoutAttributes:attributesCopy forViewElement:v11 withItemIndex:item];
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  v5 = [(SUUIShelfPageSection *)self _normalizedShelfItemIndexPathFromActualIndexPath:path];
  v6 = -[NSArray objectAtIndex:](self->_viewElements, "objectAtIndex:", [v5 item]);
  v7 = [(SUUIShelfPageSectionConfiguration *)self->_configuration effectiveViewElementForShelfItemViewElement:v6];
  isEnabled = [v7 isEnabled];

  return isEnabled;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v8 = -[NSArray objectAtIndex:](self->_viewElements, "objectAtIndex:", [path item]);
  context = [(SUUIStorePageSection *)self context];
  activeMetricsImpressionSession = [context activeMetricsImpressionSession];
  [activeMetricsImpressionSession beginActiveImpressionForViewElement:v8];
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  item = [path item];
  if (item < [(NSArray *)self->_viewElements count])
  {
    v9 = [(NSArray *)self->_viewElements objectAtIndex:item];
    context = [(SUUIStorePageSection *)self context];
    activeMetricsImpressionSession = [context activeMetricsImpressionSession];
    [activeMetricsImpressionSession endActiveImpressionForViewElement:v9];
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewDelegateObserver);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained observedScrollViewDidEndDecelerating:deceleratingCopy];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  if ([(SUUIShelfPageSectionConfiguration *)self->_configuration rendersWithParallax])
  {
    existingShelfCollectionView = [(SUUIShelfPageSectionConfiguration *)self->_configuration existingShelfCollectionView];
    SUUICollectionViewUpdatePerspectiveCells(existingShelfCollectionView, 0);
  }

  [(SUUIShelfPageSectionConfiguration *)self->_configuration scrollViewDidScroll:scrollCopy];
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewDelegateObserver);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained observedScrollViewDidScroll:scrollCopy];
  }
}

- (void)scrollViewWillBeginDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewDelegateObserver);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained observedScrollViewWillBeginDecelerating:deceleratingCopy];
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewDelegateObserver);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained observedScrollViewWillBeginDragging:draggingCopy];
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  draggingCopy = dragging;
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewDelegateObserver);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained observedScrollViewWillEndDragging:draggingCopy withVelocity:x targetContentOffset:{y, offset->x, offset->y}];
  }
}

- (id)_normalizedShelfItemIndexPathFromActualIndexPath:(id)path
{
  configuration = self->_configuration;
  viewElements = self->_viewElements;
  pathCopy = path;
  v6 = [(SUUIShelfPageSectionConfiguration *)configuration normalizedShelfItemIndexPathFromActualIndexPath:pathCopy numberOfShelfItems:[(NSArray *)viewElements count]];

  return v6;
}

- (void)_performDefaultSelectActionForEffectiveViewElement:(id)element
{
  elementCopy = element;
  if (!-[SUUIStorePageSection performDefaultActionForViewElement:](self, "performDefaultActionForViewElement:") && [elementCopy elementType] == 66)
  {
    v4 = [SUUIViewElementSlideshowController alloc];
    pageComponent = [(SUUIStorePageSection *)self pageComponent];
    viewElement = [pageComponent viewElement];
    v7 = [(SUUIViewElementSlideshowController *)v4 initWithShelf:viewElement selectedLockup:elementCopy];

    if ([(SUUIViewElementSlideshowController *)v7 numberOfSlideshowItems]>= 1)
    {
      objc_storeStrong(&self->_slideshowController, v7);
      [(SUUIViewElementSlideshowController *)self->_slideshowController setDelegate:self];
      [(SUUIViewElementSlideshowController *)self->_slideshowController setLayoutContext:self->_cellLayoutContext];
      slideshowController = self->_slideshowController;
      context = [(SUUIStorePageSection *)self context];
      parentViewController = [context parentViewController];
      [(SUUIViewElementSlideshowController *)slideshowController presentFromParentViewController:parentViewController];
    }
  }
}

- (void)_reloadViewElementProperties
{
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  shelfViewElement = self->_shelfViewElement;
  self->_shelfViewElement = viewElement;

  flattenedChildren = [(SUUIViewElement *)self->_shelfViewElement flattenedChildren];
  viewElements = self->_viewElements;
  self->_viewElements = flattenedChildren;

  [(SUUIShelfPageSectionConfiguration *)self->_configuration setRendersWithPerspective:[(SUUIViewElement *)self->_shelfViewElement rendersWithPerspective]];
  [(SUUIShelfPageSectionConfiguration *)self->_configuration setRendersWithParallax:[(SUUIViewElement *)self->_shelfViewElement rendersWithParallax]];
  configuration = self->_configuration;
  v9 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:{-[SUUIStorePageSection sectionIndex](self, "sectionIndex")}];
  v10 = [(SUUIShelfPageSection *)self backgroundColorForIndexPath:v9];
  [(SUUIShelfPageSectionConfiguration *)configuration setShelfCollectionViewBackgroundColor:v10];

  v11 = self->_configuration;
  style = [(SUUIShelfViewElement *)self->_shelfViewElement style];
  [(SUUIShelfPageSectionConfiguration *)v11 setShelfViewElementStyle:style];

  v13 = self->_configuration;
  v14 = self->_shelfViewElement;

  [(SUUIShelfPageSectionConfiguration *)v13 reloadLockupTypeForShelfViewElement:v14];
}

- (SUUIScrollViewDelegateObserver)scrollViewDelegateObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewDelegateObserver);

  return WeakRetained;
}

@end