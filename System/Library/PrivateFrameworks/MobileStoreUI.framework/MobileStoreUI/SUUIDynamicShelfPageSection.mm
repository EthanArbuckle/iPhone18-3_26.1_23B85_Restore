@interface SUUIDynamicShelfPageSection
- (CGSize)cellSizeForIndexPath:(id)path;
- (SUUIDynamicShelfPageSection)initWithPageComponent:(id)component configuration:(id)configuration;
- (SUUIScrollViewDelegateObserver)scrollViewDelegateObserver;
- (UIEdgeInsets)sectionContentInset;
- (id)_normalizedShelfItemIndexPathFromActualIndexPath:(id)path;
- (id)_viewElementForEntityAtGlobalIndex:(int64_t)index;
- (id)backgroundColorForIndexPath:(id)path;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)relevantEntityProviders;
- (int64_t)applyUpdateType:(int64_t)type;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)_reloadViewElementProperties;
- (void)_setContext:(id)context;
- (void)artworkRequest:(id)request didLoadImage:(id)image;
- (void)collectionView:(id)view didConfirmButtonElement:(id)element withClickInfo:(id)info forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view layout:(id)layout willApplyLayoutAttributes:(id)attributes;
- (void)collectionViewWillApplyLayoutAttributes:(id)attributes;
- (void)dealloc;
- (void)deselectItemsAnimated:(BOOL)animated;
- (void)entityProvider:(id)provider didInvalidateWithContext:(id)context;
- (void)invalidateCachedLayoutInformation;
- (void)itemStateCenter:(id)center itemStatesChanged:(id)changed;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDecelerating:(id)decelerating;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setSectionIndex:(int64_t)index;
- (void)setTopSection:(BOOL)section;
- (void)willAppearInContext:(id)context;
- (void)willHideInContext:(id)context;
@end

@implementation SUUIDynamicShelfPageSection

- (SUUIDynamicShelfPageSection)initWithPageComponent:(id)component configuration:(id)configuration
{
  configurationCopy = configuration;
  v11.receiver = self;
  v11.super_class = SUUIDynamicShelfPageSection;
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
    [(SUUIDynamicShelfPageSection *)v7 _reloadViewElementProperties];
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[SUUIItemStateCenter defaultCenter];
  [v3 removeObserver:self];

  [(SUUIViewElementLayoutContext *)self->_cellLayoutContext setArtworkRequestDelegate:0];
  [(SUUIShelfPageSectionConfiguration *)self->_configuration setShelfCollectionViewDataSource:0];
  [(SUUIShelfPageSectionConfiguration *)self->_configuration setShelfCollectionViewDelegate:0];
  v4.receiver = self;
  v4.super_class = SUUIDynamicShelfPageSection;
  [(SUUIStorePageSection *)&v4 dealloc];
}

- (int64_t)applyUpdateType:(int64_t)type
{
  [(SUUIDynamicShelfPageSection *)self _reloadViewElementProperties];
  if (![(SUUIShelfPageSectionConfiguration *)self->_configuration needsShelfCollectionViewReload])
  {
    [(SUUIShelfPageSectionConfiguration *)self->_configuration setNeedsShelfCollectionViewReload:[(SUUIDynamicShelfViewElement *)self->_dynamicShelfViewElement updateType]!= 0];
  }

  v6.receiver = self;
  v6.super_class = SUUIDynamicShelfPageSection;
  return [(SUUIStorePageSection *)&v6 applyUpdateType:type];
}

- (id)backgroundColorForIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(SUUIShelfPageSectionConfiguration *)self->_configuration backgroundColorForShelfViewElement:self->_dynamicShelfViewElement];
  if (!v5)
  {
    v7.receiver = self;
    v7.super_class = SUUIDynamicShelfPageSection;
    v5 = [(SUUIStorePageSection *)&v7 backgroundColorForIndexPath:pathCopy];
  }

  return v5;
}

- (CGSize)cellSizeForIndexPath:(id)path
{
  configuration = self->_configuration;
  dynamicShelfViewElement = self->_dynamicShelfViewElement;
  dynamicPageSectionIndexMapper = self->_dynamicPageSectionIndexMapper;
  pathCopy = path;
  [(SUUIShelfPageSectionConfiguration *)configuration cellSizeForShelfViewElement:dynamicShelfViewElement indexPath:pathCopy numberOfShelfItems:[(SUUIDynamicPageSectionIndexMapper *)dynamicPageSectionIndexMapper totalNumberOfEntities]];
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
  v5.super_class = SUUIDynamicShelfPageSection;
  attributesCopy = attributes;
  [(SUUIStorePageSection *)&v5 collectionViewWillApplyLayoutAttributes:attributesCopy];
  [(SUUIShelfPageSectionConfiguration *)self->_configuration collectionViewWillApplyLayoutAttributes:attributesCopy, v5.receiver, v5.super_class];
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
  v11.super_class = SUUIDynamicShelfPageSection;
  [(SUUIStorePageSection *)&v11 deselectItemsAnimated:animatedCopy];
}

- (void)entityProvider:(id)provider didInvalidateWithContext:(id)context
{
  if (self->_entityProvider == provider)
  {
    [(SUUIDynamicPageSectionIndexMapper *)self->_dynamicPageSectionIndexMapper reloadData];
    existingShelfCollectionView = [(SUUIShelfPageSectionConfiguration *)self->_configuration existingShelfCollectionView];
    [existingShelfCollectionView reloadData];
  }
}

- (void)invalidateCachedLayoutInformation
{
  [(SUUIShelfPageSectionConfiguration *)self->_configuration setNeedsShelfCollectionViewLayout:1];
  existingShelfCollectionView = [(SUUIShelfPageSectionConfiguration *)self->_configuration existingShelfCollectionView];
  [existingShelfCollectionView reloadData];

  v4.receiver = self;
  v4.super_class = SUUIDynamicShelfPageSection;
  [(SUUIStorePageSection *)&v4 invalidateCachedLayoutInformation];
}

- (id)relevantEntityProviders
{
  v7.receiver = self;
  v7.super_class = SUUIDynamicShelfPageSection;
  relevantEntityProviders = [(SUUIStorePageSection *)&v7 relevantEntityProviders];
  v4 = relevantEntityProviders;
  if (self->_entityProvider)
  {
    if (relevantEntityProviders)
    {
      v5 = [relevantEntityProviders setByAddingObject:?];

      v4 = v5;
    }

    else
    {
      v4 = [MEMORY[0x277CBEB98] setWithObject:?];
    }
  }

  return v4;
}

- (UIEdgeInsets)sectionContentInset
{
  configuration = self->_configuration;
  v12.receiver = self;
  v12.super_class = SUUIDynamicShelfPageSection;
  [(SUUIStorePageSection *)&v12 sectionContentInset];
  [(SUUIShelfPageSectionConfiguration *)configuration sectionContentInsetAdjustedFromValue:self->_dynamicShelfViewElement forShelfViewElement:[(SUUIStorePageSection *)self sectionIndex] withSectionIndex:v4, v5, v6, v7];
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
  v5.super_class = SUUIDynamicShelfPageSection;
  [(SUUIStorePageSection *)&v5 setTopSection:?];
  [(SUUIShelfPageSectionConfiguration *)self->_configuration setTopSection:sectionCopy];
}

- (void)willAppearInContext:(id)context
{
  v27[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  collectionView = [contextCopy collectionView];
  [(SUUIShelfPageSectionConfiguration *)self->_configuration registerReusableClassesForCollectionView:collectionView];
  v6 = +[SUUIItemStateCenter defaultCenter];
  [v6 addObserver:self];

  v7 = [SUUIViewElementTextLayoutCache alloc];
  textLayoutCache = [contextCopy textLayoutCache];
  v9 = [(SUUIViewElementTextLayoutCache *)v7 initWithLayoutCache:textLayoutCache];
  labelLayoutCache = self->_labelLayoutCache;
  self->_labelLayoutCache = v9;

  cellLayoutContext = self->_cellLayoutContext;
  if (!cellLayoutContext)
  {
    v12 = objc_alloc_init(SUUIViewElementLayoutContext);
    v13 = self->_cellLayoutContext;
    self->_cellLayoutContext = v12;

    [(SUUIViewElementLayoutContext *)self->_cellLayoutContext setAggregateValue:MEMORY[0x277CBEC38] forKey:0x286AFC9E0];
    [(SUUIViewElementLayoutContext *)self->_cellLayoutContext setArtworkRequestDelegate:self];
    cellLayoutContext = self->_cellLayoutContext;
  }

  clientContext = [contextCopy clientContext];
  [(SUUIViewElementLayoutContext *)cellLayoutContext setClientContext:clientContext];

  [(SUUIViewElementLayoutContext *)self->_cellLayoutContext setContainerViewElementType:[(SUUIDynamicShelfViewElement *)self->_dynamicShelfViewElement elementType]];
  [(SUUIViewElementLayoutContext *)self->_cellLayoutContext setLabelLayoutCache:self->_labelLayoutCache];
  v15 = self->_cellLayoutContext;
  parentViewController = [contextCopy parentViewController];
  [(SUUIViewElementLayoutContext *)v15 setParentViewController:parentViewController];

  v17 = self->_cellLayoutContext;
  placeholderColor = [contextCopy placeholderColor];
  [(SUUIViewElementLayoutContext *)v17 setPlaceholderColor:placeholderColor];

  v19 = self->_cellLayoutContext;
  resourceLoader = [contextCopy resourceLoader];
  [(SUUIViewElementLayoutContext *)v19 setResourceLoader:resourceLoader];

  v21 = self->_cellLayoutContext;
  tintColor = [collectionView tintColor];
  [(SUUIViewElementLayoutContext *)v21 setTintColor:tintColor];

  [(SUUIShelfPageSectionConfiguration *)self->_configuration setCellLayoutContext:self->_cellLayoutContext];
  cellTemplateViewElement = [(SUUIDynamicShelfViewElement *)self->_dynamicShelfViewElement cellTemplateViewElement];
  v24 = cellTemplateViewElement;
  if (cellTemplateViewElement)
  {
    v27[0] = cellTemplateViewElement;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  }

  else
  {
    v25 = 0;
  }

  [(SUUIShelfPageSectionConfiguration *)self->_configuration reloadShelfLayoutDataForShelfViewElement:self->_dynamicShelfViewElement withShelfItemViewElements:v25 requestCellLayouts:1 numberOfShelfItems:[(SUUIDynamicPageSectionIndexMapper *)self->_dynamicPageSectionIndexMapper totalNumberOfEntities]];
  [(SUUIShelfPageSectionConfiguration *)self->_configuration setNeedsShelfCollectionViewLayout:1];
  v26.receiver = self;
  v26.super_class = SUUIDynamicShelfPageSection;
  [(SUUIStorePageSection *)&v26 willAppearInContext:contextCopy];
}

- (void)willHideInContext:(id)context
{
  contextCopy = context;
  v5 = +[SUUIItemStateCenter defaultCenter];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = SUUIDynamicShelfPageSection;
  [(SUUIStorePageSection *)&v6 willHideInContext:contextCopy];
}

- (void)setSectionIndex:(int64_t)index
{
  v5.receiver = self;
  v5.super_class = SUUIDynamicShelfPageSection;
  [(SUUIStorePageSection *)&v5 setSectionIndex:?];
  [(SUUIShelfPageSectionConfiguration *)self->_configuration setSectionIndex:index];
}

- (void)_setContext:(id)context
{
  v5.receiver = self;
  v5.super_class = SUUIDynamicShelfPageSection;
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

- (void)itemStateCenter:(id)center itemStatesChanged:(id)changed
{
  changedCopy = changed;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__SUUIDynamicShelfPageSection_itemStateCenter_itemStatesChanged___block_invoke;
  v7[3] = &unk_2798F5AF8;
  v7[4] = self;
  v8 = changedCopy;
  v6 = changedCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __65__SUUIDynamicShelfPageSection_itemStateCenter_itemStatesChanged___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 96) existingShelfCollectionView];
  v15 = [v2 indexPathsForVisibleItems];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = *(a1 + 40);
  v16 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v16)
  {
    v14 = *v23;
    do
    {
      v3 = 0;
      do
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = v3;
        v4 = *(*(&v22 + 1) + 8 * v3);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v5 = v15;
        v6 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v19;
          while (2)
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v19 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v18 + 1) + 8 * i);
              v11 = [*(*(a1 + 32) + 96) existingShelfCollectionView];
              v12 = [v11 cellForItemAtIndexPath:v10];

              if ([v12 updateWithItemState:v4 context:*(*(a1 + 32) + 88) animated:1] && (objc_msgSend(*(*(a1 + 32) + 96), "supportsDuplicateShelfItems") & 1) == 0)
              {

                goto LABEL_17;
              }
            }

            v7 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
            if (v7)
            {
              continue;
            }

            break;
          }
        }

LABEL_17:

        v3 = v17 + 1;
      }

      while (v17 + 1 != v16);
      v16 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v16);
  }
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [(SUUIDynamicShelfPageSection *)self _normalizedShelfItemIndexPathFromActualIndexPath:pathCopy];
  v7 = -[SUUIDynamicShelfPageSection _viewElementForEntityAtGlobalIndex:](self, "_viewElementForEntityAtGlobalIndex:", [v6 item]);
  v8 = [(SUUIShelfPageSectionConfiguration *)self->_configuration cellForShelfItemViewElement:v7 indexPath:pathCopy];

  return v8;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  configuration = self->_configuration;
  v5 = [(SUUIDynamicPageSectionIndexMapper *)self->_dynamicPageSectionIndexMapper totalNumberOfEntities:view];

  return [(SUUIShelfPageSectionConfiguration *)configuration numberOfCellsForNumberOfShelfItems:v5];
}

- (void)collectionView:(id)view didConfirmButtonElement:(id)element withClickInfo:(id)info forItemAtIndexPath:(id)path
{
  infoCopy = info;
  elementCopy = element;
  v12 = [(SUUIDynamicShelfPageSection *)self _normalizedShelfItemIndexPathFromActualIndexPath:path];
  v11 = [MEMORY[0x277CCAA70] indexPathForItem:objc_msgSend(v12 inSection:{"item"), -[SUUIStorePageSection sectionIndex](self, "sectionIndex")}];
  [(SUUIStorePageSection *)self collectionViewDidConfirmButtonElement:elementCopy withClickInfo:infoCopy forItemAtIndexPath:v11];
}

- (void)collectionView:(id)view layout:(id)layout willApplyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  viewCopy = view;
  indexPath = [attributesCopy indexPath];
  v12 = [(SUUIDynamicShelfPageSection *)self _normalizedShelfItemIndexPathFromActualIndexPath:indexPath];

  item = [v12 item];
  v11 = [(SUUIDynamicShelfPageSection *)self _viewElementForEntityAtGlobalIndex:item];
  [(SUUIShelfPageSectionConfiguration *)self->_configuration shelfItemsCollectionView:viewCopy willApplyLayoutAttributes:attributesCopy forViewElement:v11 withItemIndex:item];
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
  dynamicPageSectionIndexMapper = self->_dynamicPageSectionIndexMapper;
  pathCopy = path;
  v6 = [(SUUIShelfPageSectionConfiguration *)configuration normalizedShelfItemIndexPathFromActualIndexPath:pathCopy numberOfShelfItems:[(SUUIDynamicPageSectionIndexMapper *)dynamicPageSectionIndexMapper totalNumberOfEntities]];

  return v6;
}

- (void)_reloadViewElementProperties
{
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  dynamicShelfViewElement = self->_dynamicShelfViewElement;
  self->_dynamicShelfViewElement = viewElement;

  [(SUUIShelfPageSectionConfiguration *)self->_configuration setRendersWithPerspective:[(SUUIViewElement *)self->_dynamicShelfViewElement rendersWithPerspective]];
  [(SUUIShelfPageSectionConfiguration *)self->_configuration setRendersWithParallax:[(SUUIViewElement *)self->_dynamicShelfViewElement rendersWithParallax]];
  configuration = self->_configuration;
  style = [(SUUIDynamicShelfViewElement *)self->_dynamicShelfViewElement style];
  [(SUUIShelfPageSectionConfiguration *)configuration setShelfViewElementStyle:style];

  v8 = self->_configuration;
  v9 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:{-[SUUIStorePageSection sectionIndex](self, "sectionIndex")}];
  v10 = [(SUUIDynamicShelfPageSection *)self backgroundColorForIndexPath:v9];
  [(SUUIShelfPageSectionConfiguration *)v8 setShelfCollectionViewBackgroundColor:v10];

  entityProvider = [(SUUIViewElement *)self->_dynamicShelfViewElement entityProvider];
  entityProvider = self->_entityProvider;
  obj = entityProvider;
  if (entityProvider != entityProvider && ([(SUUIEntityProviding *)entityProvider isEqual:entityProvider]& 1) == 0)
  {
    objc_storeStrong(&self->_entityProvider, obj);
    dynamicPageSectionIndexMapper = self->_dynamicPageSectionIndexMapper;
    if (!dynamicPageSectionIndexMapper)
    {
      v14 = objc_alloc_init(SUUIDynamicPageSectionIndexMapper);
      v15 = self->_dynamicPageSectionIndexMapper;
      self->_dynamicPageSectionIndexMapper = v14;

      dynamicPageSectionIndexMapper = self->_dynamicPageSectionIndexMapper;
    }

    [(SUUIDynamicPageSectionIndexMapper *)dynamicPageSectionIndexMapper setEntityProvider:self->_entityProvider];
  }

  [(SUUIShelfPageSectionConfiguration *)self->_configuration reloadLockupTypeForShelfViewElement:self->_dynamicShelfViewElement];
}

- (id)_viewElementForEntityAtGlobalIndex:(int64_t)index
{
  v4 = [(SUUIDynamicPageSectionIndexMapper *)self->_dynamicPageSectionIndexMapper entityIndexPathForGlobalIndex:index];
  v5 = [(SUUIEntityProviding *)self->_entityProvider entityValueProviderAtIndexPath:v4];
  cellTemplateViewElement = [(SUUIDynamicShelfViewElement *)self->_dynamicShelfViewElement cellTemplateViewElement];
  [cellTemplateViewElement setEntityValueProvider:v5];

  return cellTemplateViewElement;
}

- (SUUIScrollViewDelegateObserver)scrollViewDelegateObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewDelegateObserver);

  return WeakRetained;
}

@end