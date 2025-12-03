@interface SUUIDynamicGridViewElementPageSection
- (BOOL)_updateShowsSectionHeaders;
- (BOOL)updateCellWithIndexPath:(id)path itemState:(id)state animated:(BOOL)animated;
- (CGSize)cellSizeForIndexPath:(id)path;
- (SUUIDynamicGridViewElementPageSection)initWithPageComponent:(id)component;
- (UIEdgeInsets)pinningContentInsetForItemAtIndexPath:(id)path;
- (UIEdgeInsets)sectionContentInset;
- (id)_dynamicGridViewElement;
- (id)_entityValueProviderForGlobalIndex:(int64_t)index sectionIndex:(int64_t *)sectionIndex;
- (id)_itemTemplateViewElementForEntityValueProvider:(id)provider;
- (id)_sectionTemplateViewElementForEntityValueProvider:(id)provider;
- (id)_templateViewElementsForType:(id)type mode:(id)mode;
- (id)_viewElementAtGlobalIndex:(int64_t)index;
- (id)backgroundColorForIndexPath:(id)path;
- (id)cellForIndexPath:(id)path;
- (id)gridViewElementPageSectionConfiguration:(id)configuration viewElementForIndexPath:(id)path;
- (id)indexPathsForPinningItems;
- (id)relevantEntityProviders;
- (id)targetScrollingIndexPathForElementWithIndexBarEntryID:(id)d relativeSectionIndex:(int64_t)index;
- (int64_t)_entityGlobalIndexForGlobalIndex:(int64_t)index returningSection:(int64_t *)section;
- (int64_t)_globalIndexForEntityGlobalIndex:(int64_t)index;
- (int64_t)applyUpdateType:(int64_t)type;
- (int64_t)numberOfCells;
- (int64_t)pinningStyleForItemAtIndexPath:(id)path;
- (void)_enumerateVisibleCellsUsingBlock:(id)block;
- (void)_reloadEntityProperties;
- (void)_reloadViewElementProperties;
- (void)_reloadVisibleCellsAnimated:(BOOL)animated;
- (void)_resetLayoutProperties;
- (void)_setContext:(id)context;
- (void)_updateStyleProperties;
- (void)artworkRequest:(id)request didLoadImage:(id)image;
- (void)collectionViewDidConfirmButtonElement:(id)element withClickInfo:(id)info forItemAtIndexPath:(id)path;
- (void)collectionViewDidSelectItemAtIndexPath:(id)path;
- (void)collectionViewWillApplyLayoutAttributes:(id)attributes;
- (void)dealloc;
- (void)deselectItemsAnimated:(BOOL)animated;
- (void)entityProvider:(id)provider didInvalidateWithContext:(id)context;
- (void)gridViewElementPageSectionConfiguration:(id)configuration configurePosition:(int64_t *)position forItemAtIndexPath:(id)path;
- (void)invalidateCachedLayoutInformation;
- (void)reloadCellWithIndexPath:(id)path reason:(int64_t)reason;
- (void)reloadVisibleCellsWithReason:(int64_t)reason;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)willAppearInContext:(id)context;
- (void)willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SUUIDynamicGridViewElementPageSection

- (SUUIDynamicGridViewElementPageSection)initWithPageComponent:(id)component
{
  v9.receiver = self;
  v9.super_class = SUUIDynamicGridViewElementPageSection;
  v3 = [(SUUIStorePageSection *)&v9 initWithPageComponent:component];
  if (v3)
  {
    v4 = objc_alloc_init(SUUIMutableIntegerValue);
    reusableGlobalIndexIntegerValue = v3->_reusableGlobalIndexIntegerValue;
    v3->_reusableGlobalIndexIntegerValue = v4;

    v6 = objc_alloc_init(SUUIGridViewElementPageSectionConfiguration);
    configuration = v3->_configuration;
    v3->_configuration = v6;

    [(SUUIGridViewElementPageSectionConfiguration *)v3->_configuration setDataSource:v3];
    [(SUUIDynamicGridViewElementPageSection *)v3 _reloadViewElementProperties];
  }

  return v3;
}

- (void)dealloc
{
  [(SUUIViewElementLayoutContext *)self->_cellLayoutContext setArtworkRequestDelegate:0];
  sectionHeaderGlobalIndices = self->_sectionHeaderGlobalIndices;
  if (sectionHeaderGlobalIndices)
  {
    free(sectionHeaderGlobalIndices);
    self->_sectionHeaderGlobalIndices = 0;
  }

  v4.receiver = self;
  v4.super_class = SUUIDynamicGridViewElementPageSection;
  [(SUUIStorePageSection *)&v4 dealloc];
}

- (int64_t)applyUpdateType:(int64_t)type
{
  v9.receiver = self;
  v9.super_class = SUUIDynamicGridViewElementPageSection;
  result = [(SUUIStorePageSection *)&v9 applyUpdateType:type];
  if (result != 2)
  {
    v5 = result;
    showsEditMode = [(SUUIGridViewElementPageSectionConfiguration *)self->_configuration showsEditMode];
    totalNumberOfEntities = [(SUUIDynamicPageSectionIndexMapper *)self->_dynamicPageSectionIndexMapper totalNumberOfEntities];
    [(SUUIDynamicGridViewElementPageSection *)self _reloadViewElementProperties];
    [(SUUIDynamicGridViewElementPageSection *)self _invalidateCellSizeCache];
    if (showsEditMode == [(SUUIGridViewElementPageSectionConfiguration *)self->_configuration showsEditMode]|| totalNumberOfEntities != [(SUUIDynamicPageSectionIndexMapper *)self->_dynamicPageSectionIndexMapper totalNumberOfEntities])
    {
      v8.receiver = self;
      v8.super_class = SUUIDynamicGridViewElementPageSection;
      return [(SUUIStorePageSection *)&v8 applyUpdateType:v5];
    }

    else
    {
      [(SUUIDynamicGridViewElementPageSection *)self _resetLayoutProperties];
      return 1;
    }
  }

  return result;
}

- (id)backgroundColorForIndexPath:(id)path
{
  pathCopy = path;
  v5 = -[SUUIDynamicGridViewElementPageSection _viewElementAtGlobalIndex:](self, "_viewElementAtGlobalIndex:", [pathCopy item]);
  if (!v5 || ([(SUUIGridViewElementPageSectionConfiguration *)self->_configuration backgroundColorForViewElement:v5], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8.receiver = self;
    v8.super_class = SUUIDynamicGridViewElementPageSection;
    v6 = [(SUUIStorePageSection *)&v8 backgroundColorForIndexPath:pathCopy];
  }

  return v6;
}

- (id)cellForIndexPath:(id)path
{
  pathCopy = path;
  v5 = -[SUUIDynamicGridViewElementPageSection _viewElementAtGlobalIndex:](self, "_viewElementAtGlobalIndex:", [pathCopy item]);
  if (v5)
  {
    [(SUUIGridViewElementPageSectionConfiguration *)self->_configuration requestCellLayoutForViewElement:v5];
    labelLayoutCache = [(SUUIViewElementLayoutContext *)self->_cellLayoutContext labelLayoutCache];
    layoutCache = [labelLayoutCache layoutCache];
    [layoutCache commitLayoutRequests];

    v8 = [(SUUIGridViewElementPageSectionConfiguration *)self->_configuration cellForViewElement:v5 indexPath:pathCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_templateViewElementsForType:(id)type mode:(id)mode
{
  v31 = *MEMORY[0x277D85DE8];
  if (mode)
  {
    typeCopy = [type stringByAppendingString:mode];
  }

  else
  {
    typeCopy = type;
  }

  v8 = typeCopy;
  v9 = [(NSMutableDictionary *)self->_templateViewElementsCache objectForKey:typeCopy];
  if (!v9)
  {
    v10 = [-[SUUIDynamicGridViewElementPageSection _dynamicGridViewElement](self "_dynamicGridViewElement")];
    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v10, "count")}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v27;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v27 != v15)
          {
            objc_enumerationMutation(v12);
          }

          contentViewElement = [*(*(&v26 + 1) + 8 * i) contentViewElement];
          children = [contentViewElement children];
          firstObject = [children firstObject];

          [v11 addObject:firstObject];
        }

        v14 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v14);
    }

    templateViewElementsCache = self->_templateViewElementsCache;
    if (templateViewElementsCache)
    {
      v21 = [v11 copy];
      [(NSMutableDictionary *)templateViewElementsCache setObject:v21 forKey:v8];
    }

    else
    {
      v22 = MEMORY[0x277CBEB38];
      v21 = [v11 copy];
      v23 = [v22 dictionaryWithObject:v21 forKey:v8];
      v24 = self->_templateViewElementsCache;
      self->_templateViewElementsCache = v23;
    }

    v9 = 0;
  }

  return v9;
}

- (CGSize)cellSizeForIndexPath:(id)path
{
  v71 = *MEMORY[0x277D85DE8];
  item = [path item];
  v4 = MEMORY[0x277CBF3A8];
  usesSizingEntityValueProvider = self->_usesSizingEntityValueProvider;
  self->_usesSizingEntityValueProvider = 1;
  reusableSizeCacheKey = self->_reusableSizeCacheKey;
  if (!reusableSizeCacheKey)
  {
    v7 = objc_alloc_init(_SUUIDynamicGridSizeCacheKey);
    v8 = self->_reusableSizeCacheKey;
    self->_reusableSizeCacheKey = v7;

    reusableSizeCacheKey = self->_reusableSizeCacheKey;
  }

  v9 = *v4;
  v10 = v4[1];
  [(_SUUIDynamicGridSizeCacheKey *)reusableSizeCacheKey setPosition:0];
  if ([(SUUIGridViewElementPageSectionConfiguration *)self->_configuration numberOfColumns]== 1)
  {
    v69 = 0x7FFFFFFFFFFFFFFFLL;
    [(SUUIDynamicGridViewElementPageSection *)self _entityGlobalIndexForGlobalIndex:item returningSection:&v69];
    v11 = &SUUITemplateDefinitionViewElementTypeSection;
    if (v69 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = &SUUITemplateDefinitionViewElementTypeItem;
    }

    v12 = *v11;
    if (self->_editing)
    {
      v13 = 0x286AF2580;
    }

    else
    {
      v13 = 0;
    }

    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v14 = [(SUUIDynamicGridViewElementPageSection *)self _templateViewElementsForType:v12 mode:v13];
    v15 = [v14 countByEnumeratingWithState:&v65 objects:v70 count:16];
    if (v15)
    {
      v16 = v15;
      v56 = usesSizingEntityValueProvider;
      v17 = 0;
      v60 = 1;
      v18 = &OBJC_IVAR___SUUITableViewCell__topBorderView;
      v19 = *v66;
      v20 = v10;
      v21 = v9;
      v58 = *v66;
      v59 = v14;
      while (1)
      {
        v22 = 0;
        v62 = v16;
        do
        {
          if (*v66 != v19)
          {
            objc_enumerationMutation(v14);
          }

          v23 = *(*(&v65 + 1) + 8 * v22);
          [(_SUUIDynamicGridSizeCacheKey *)self->_reusableSizeCacheKey setViewElement:v23];
          v24 = v18[378];
          v25 = [*(&self->super.super.isa + v24) objectForKey:self->_reusableSizeCacheKey];
          if (v25)
          {
            [v25 CGSizeValue];
            v27 = v26;
            v29 = v28;
            if ((v17 & 1) == 0)
            {
              goto LABEL_24;
            }
          }

          else
          {
            v64 = [[SUUISizingEntityValueProvider alloc] initForViewElement:v23];
            [v23 setEntityValueProvider:?];
            independentlySizedViewElement = self->_independentlySizedViewElement;
            v63 = independentlySizedViewElement;
            objc_storeStrong(&self->_independentlySizedViewElement, v23);
            [(SUUIGridViewElementPageSectionConfiguration *)self->_configuration requestCellLayoutForViewElement:v23];
            labelLayoutCache = [(SUUIViewElementLayoutContext *)self->_cellLayoutContext labelLayoutCache];
            layoutCache = [labelLayoutCache layoutCache];
            [layoutCache commitLayoutRequests];

            [(SUUIGridViewElementPageSectionConfiguration *)self->_configuration cellSizeForViewElement:v23 indexPath:path];
            v27 = v34;
            v29 = v35;
            objc_storeStrong(&self->_independentlySizedViewElement, independentlySizedViewElement);
            v36 = *(&self->super.super.isa + v24);
            if (!v36)
            {
              v37 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
              v38 = *(&self->super.super.isa + v24);
              *(&self->super.super.isa + v24) = v37;

              v36 = *(&self->super.super.isa + v24);
            }

            v39 = [MEMORY[0x277CCAE60] valueWithCGSize:{v27, v29}];
            [v36 setObject:v39 forKey:self->_reusableSizeCacheKey];

            v19 = v58;
            v14 = v59;
            v16 = v62;
            v18 = &OBJC_IVAR___SUUITableViewCell__topBorderView;
            if ((v17 & 1) == 0)
            {
LABEL_24:
              v20 = v29;
              v21 = v27;
              goto LABEL_25;
            }
          }

          v26 = vabdd_f64(v29, v20);
          if (vabdd_f64(v27, v21) > 0.00000011920929 || v26 > 0.00000011920929)
          {
            v60 = 0;
          }

LABEL_25:
          ++v22;
          v17 = 1;
        }

        while (v16 != v22);
        v16 = [v14 countByEnumeratingWithState:&v65 objects:v70 count:{16, v26}];
        if (!v16)
        {

          usesSizingEntityValueProvider = v56;
          if (v60)
          {
            goto LABEL_38;
          }

          goto LABEL_30;
        }
      }
    }
  }

LABEL_30:
  v40 = [(SUUIDynamicGridViewElementPageSection *)self _viewElementAtGlobalIndex:item];
  if (v40)
  {
    [(_SUUIDynamicGridSizeCacheKey *)self->_reusableSizeCacheKey setViewElement:v40];
    v41 = [(NSMutableDictionary *)self->_sizeCacheKeyToCachedCellSize objectForKey:self->_reusableSizeCacheKey];
    v42 = v41;
    if (v41)
    {
      [v41 CGSizeValue];
      v9 = v43;
      v10 = v44;
    }

    else
    {
      v45 = usesSizingEntityValueProvider;
      [(SUUIGridViewElementPageSectionConfiguration *)self->_configuration requestCellLayoutForViewElement:v40];
      labelLayoutCache2 = [(SUUIViewElementLayoutContext *)self->_cellLayoutContext labelLayoutCache];
      layoutCache2 = [labelLayoutCache2 layoutCache];
      [layoutCache2 commitLayoutRequests];

      [(SUUIGridViewElementPageSectionConfiguration *)self->_configuration cellSizeForViewElement:v40 indexPath:path];
      v9 = v48;
      v10 = v49;
      sizeCacheKeyToCachedCellSize = self->_sizeCacheKeyToCachedCellSize;
      if (!sizeCacheKeyToCachedCellSize)
      {
        v51 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
        v52 = self->_sizeCacheKeyToCachedCellSize;
        self->_sizeCacheKeyToCachedCellSize = v51;

        sizeCacheKeyToCachedCellSize = self->_sizeCacheKeyToCachedCellSize;
      }

      v53 = [MEMORY[0x277CCAE60] valueWithCGSize:{v9, v10}];
      [(NSMutableDictionary *)sizeCacheKeyToCachedCellSize setObject:v53 forKey:self->_reusableSizeCacheKey];

      usesSizingEntityValueProvider = v45;
    }
  }

  v20 = v10;
  v21 = v9;
LABEL_38:
  self->_usesSizingEntityValueProvider = usesSizingEntityValueProvider;
  v54 = v21;
  v55 = v20;
  result.height = v55;
  result.width = v54;
  return result;
}

- (void)collectionViewDidSelectItemAtIndexPath:(id)path
{
  v16[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v5 = -[SUUIDynamicGridViewElementPageSection _viewElementAtGlobalIndex:](self, "_viewElementAtGlobalIndex:", [pathCopy item]);
  entityValueProvider = [v5 entityValueProvider];
  if (entityValueProvider)
  {
    v7 = objc_alloc(MEMORY[0x277D1B0A8]);
    context = [(SUUIStorePageSection *)self context];
    clientContext = [context clientContext];
    _scriptAppContext = [clientContext _scriptAppContext];
    v11 = [v7 initWithAppContext:_scriptAppContext];

    if (v11)
    {
      [v11 setEntityValueProvider:entityValueProvider];
      v15 = @"entityValueProvider";
      v16[0] = v11;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __80__SUUIDynamicGridViewElementPageSection_collectionViewDidSelectItemAtIndexPath___block_invoke;
      v14[3] = &unk_2798F65D0;
      v14[4] = self;
      [v5 dispatchEventOfType:2 canBubble:1 isCancelable:0 extraInfo:v12 completionBlock:v14];
    }
  }

  v13.receiver = self;
  v13.super_class = SUUIDynamicGridViewElementPageSection;
  [(SUUIStorePageSection *)&v13 collectionViewDidSelectItemAtIndexPath:pathCopy];
}

void __80__SUUIDynamicGridViewElementPageSection_collectionViewDidSelectItemAtIndexPath___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__SUUIDynamicGridViewElementPageSection_collectionViewDidSelectItemAtIndexPath___block_invoke_2;
  block[3] = &unk_2798F5BE8;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __80__SUUIDynamicGridViewElementPageSection_collectionViewDidSelectItemAtIndexPath___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v4 = [v2 parentViewController];

  if (SUUIViewControllerIsVisible(v4))
  {
    v3 = [v4 transitionCoordinator];

    if (!v3)
    {
      [*(a1 + 32) deselectItemsAnimated:1];
    }
  }
}

- (void)collectionViewDidConfirmButtonElement:(id)element withClickInfo:(id)info forItemAtIndexPath:(id)path
{
  elementCopy = element;
  infoCopy = info;
  pathCopy = path;
  context = [(SUUIStorePageSection *)self context];
  clientContext = [context clientContext];
  _scriptAppContext = [clientContext _scriptAppContext];

  if (_scriptAppContext)
  {
    v14 = -[SUUIDynamicGridViewElementPageSection _viewElementAtGlobalIndex:](self, "_viewElementAtGlobalIndex:", [pathCopy item]);
    entityValueProvider = [v14 entityValueProvider];
    if (entityValueProvider)
    {
      v16 = [objc_alloc(MEMORY[0x277D1B0A8]) initWithAppContext:_scriptAppContext];
      v17 = v16;
      if (v16)
      {
        [v16 setEntityValueProvider:entityValueProvider];
        v18 = [infoCopy mutableCopy];
        [v18 setObject:v17 forKeyedSubscript:@"entityValueProvider"];
        v19 = [v18 copy];
        [elementCopy dispatchEventOfType:2 canBubble:1 isCancelable:0 extraInfo:v19 completionBlock:0];
      }
    }
  }

  v20.receiver = self;
  v20.super_class = SUUIDynamicGridViewElementPageSection;
  [(SUUIStorePageSection *)&v20 collectionViewDidConfirmButtonElement:elementCopy withClickInfo:infoCopy forItemAtIndexPath:pathCopy];
}

- (void)collectionViewWillApplyLayoutAttributes:(id)attributes
{
  configuration = self->_configuration;
  attributesCopy = attributes;
  [(SUUIGridViewElementPageSectionConfiguration *)configuration collectionViewWillApplyLayoutAttributes:attributesCopy];
  v6.receiver = self;
  v6.super_class = SUUIDynamicGridViewElementPageSection;
  [(SUUIStorePageSection *)&v6 collectionViewWillApplyLayoutAttributes:attributesCopy];
}

- (void)deselectItemsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v21 = *MEMORY[0x277D85DE8];
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];

  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  sectionIndex = [(SUUIStorePageSection *)self sectionIndex];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = indexPathsForSelectedItems;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        if ([v14 section] == sectionIndex)
        {
          [collectionView deselectItemAtIndexPath:v14 animated:animatedCopy];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v15.receiver = self;
  v15.super_class = SUUIDynamicGridViewElementPageSection;
  [(SUUIStorePageSection *)&v15 deselectItemsAnimated:animatedCopy];
}

- (void)entityProvider:(id)provider didInvalidateWithContext:(id)context
{
  contextCopy = context;
  if (self->_entityProvider == provider)
  {
    v10 = contextCopy;
    if (([contextCopy invalidateEverything] & 1) != 0 || objc_msgSend(v10, "invalidateDataSourceCounts"))
    {
      [(SUUIDynamicGridViewElementPageSection *)self _reloadEntityProperties];
      [(SUUIDynamicGridViewElementPageSection *)self _updateStyleProperties];
      context = [(SUUIStorePageSection *)self context];
      collectionView = [context collectionView];
      v9 = [MEMORY[0x277CCAA78] indexSetWithIndex:{-[SUUIStorePageSection sectionIndex](self, "sectionIndex")}];
      [collectionView reloadSections:v9];
    }

    else
    {
      [(CPLRUDictionary *)self->_globalIndexToTemplateViewElementCache removeAllObjects];
      [(SUUIDynamicPageSectionIndexMapper *)self->_dynamicPageSectionIndexMapper reloadData];
      [(SUUIDynamicGridViewElementPageSection *)self _reloadVisibleCellsAnimated:0];
    }

    contextCopy = v10;
  }
}

- (id)indexPathsForPinningItems
{
  sectionIndex = [(SUUIStorePageSection *)self sectionIndex];
  if (self->_numberOfSections)
  {
    v4 = sectionIndex;
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
    if (self->_numberOfSections)
    {
      v6 = 0;
      do
      {
        v7 = [MEMORY[0x277CCAA70] indexPathForItem:self->_sectionHeaderGlobalIndices[v6] inSection:v4];
        [v5 addObject:v7];

        ++v6;
      }

      while (v6 < self->_numberOfSections);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)invalidateCachedLayoutInformation
{
  [(SUUIDynamicGridViewElementPageSection *)self _invalidateCellSizeCache];
  v3.receiver = self;
  v3.super_class = SUUIDynamicGridViewElementPageSection;
  [(SUUIStorePageSection *)&v3 invalidateCachedLayoutInformation];
}

- (int64_t)numberOfCells
{
  totalNumberOfEntities = [(SUUIDynamicPageSectionIndexMapper *)self->_dynamicPageSectionIndexMapper totalNumberOfEntities];
  if (self->_showsSectionHeaders)
  {
    totalNumberOfEntities += [(SUUIDynamicPageSectionIndexMapper *)self->_dynamicPageSectionIndexMapper numberOfSections];
  }

  return totalNumberOfEntities;
}

- (UIEdgeInsets)pinningContentInsetForItemAtIndexPath:(id)path
{
  v3 = *MEMORY[0x277D768C8];
  v4 = *(MEMORY[0x277D768C8] + 8);
  v5 = *(MEMORY[0x277D768C8] + 16);
  v6 = *(MEMORY[0x277D768C8] + 24);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (int64_t)pinningStyleForItemAtIndexPath:(id)path
{
  v4 = -[SUUIDynamicGridViewElementPageSection _entityValueProviderForGlobalIndex:sectionIndex:](self, "_entityValueProviderForGlobalIndex:sectionIndex:", [path item], 0);
  v5 = [(SUUIDynamicGridViewElementPageSection *)self _sectionTemplateViewElementForEntityValueProvider:v4];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_11;
  }

  pinStyle = [v5 pinStyle];
  if (pinStyle > 2)
  {
    switch(pinStyle)
    {
      case 3:
        defaultItemPinningStyle = 2;
        goto LABEL_12;
      case 4:
        defaultItemPinningStyle = 3;
        goto LABEL_12;
      case 5:
        defaultItemPinningStyle = 4;
        goto LABEL_12;
    }

LABEL_11:
    defaultItemPinningStyle = [(SUUIStorePageSection *)self defaultItemPinningStyle];
    goto LABEL_12;
  }

  if (!pinStyle)
  {
    goto LABEL_11;
  }

  if (pinStyle == 1)
  {
    defaultItemPinningStyle = 0;
    goto LABEL_12;
  }

  if (pinStyle != 2)
  {
    goto LABEL_11;
  }

  defaultItemPinningStyle = 1;
LABEL_12:

  return defaultItemPinningStyle;
}

- (id)relevantEntityProviders
{
  v7.receiver = self;
  v7.super_class = SUUIDynamicGridViewElementPageSection;
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

- (void)reloadCellWithIndexPath:(id)path reason:(int64_t)reason
{
  pathCopy = path;
  v6 = -[SUUIDynamicGridViewElementPageSection _viewElementAtGlobalIndex:](self, "_viewElementAtGlobalIndex:", [pathCopy item]);
  if (v6)
  {
    [(SUUIGridViewElementPageSectionConfiguration *)self->_configuration reloadCellWithIndexPath:pathCopy forViewElement:v6 reason:reason];
  }
}

- (void)reloadVisibleCellsWithReason:(int64_t)reason
{
  v6.receiver = self;
  v6.super_class = SUUIDynamicGridViewElementPageSection;
  [(SUUIStorePageSection *)&v6 reloadVisibleCellsWithReason:reason];
  cellLayoutContext = self->_cellLayoutContext;
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[SUUIGridViewElementPageSectionConfiguration showsEditMode](self->_configuration, "showsEditMode")}];
  [(SUUIViewElementLayoutContext *)cellLayoutContext setAggregateValue:v5 forKey:0x286AFE1A0];
}

- (UIEdgeInsets)sectionContentInset
{
  configuration = self->_configuration;
  v25.receiver = self;
  v25.super_class = SUUIDynamicGridViewElementPageSection;
  [(SUUIStorePageSection *)&v25 sectionContentInset];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  _dynamicGridViewElement = [(SUUIDynamicGridViewElementPageSection *)self _dynamicGridViewElement];
  [(SUUIGridViewElementPageSectionConfiguration *)configuration sectionContentInsetAdjustedFromValue:_dynamicGridViewElement forGridViewElement:v5, v7, v9, v11];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = v14;
  v22 = v16;
  v23 = v18;
  v24 = v20;
  result.right = v24;
  result.bottom = v23;
  result.left = v22;
  result.top = v21;
  return result;
}

- (id)targetScrollingIndexPathForElementWithIndexBarEntryID:(id)d relativeSectionIndex:(int64_t)index
{
  dCopy = d;
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  indexBarEntryID = [viewElement indexBarEntryID];
  v10 = [dCopy isEqualToString:indexBarEntryID];

  if (v10)
  {
    if (self->_showsSectionHeaders)
    {
      if (self->_numberOfSections > index)
      {
        v11 = self->_sectionHeaderGlobalIndices[index];
        v12 = MEMORY[0x277CCAA70];
        sectionIndex = [(SUUIStorePageSection *)self sectionIndex];
        v14 = v12;
        v15 = v11;
LABEL_7:
        v19 = [v14 indexPathForItem:v15 inSection:sectionIndex];
        goto LABEL_9;
      }
    }

    else if ([(SUUIDynamicPageSectionIndexMapper *)self->_dynamicPageSectionIndexMapper numberOfSections]> index)
    {
      v16 = [(SUUIDynamicPageSectionIndexMapper *)self->_dynamicPageSectionIndexMapper rangeForSectionAtIndex:index];
      v17 = MEMORY[0x277CCAA70];
      v18 = [(SUUIDynamicGridViewElementPageSection *)self _globalIndexForEntityGlobalIndex:v16];
      sectionIndex = [(SUUIStorePageSection *)self sectionIndex];
      v14 = v17;
      v15 = v18;
      goto LABEL_7;
    }
  }

  v19 = 0;
LABEL_9:

  return v19;
}

- (BOOL)updateCellWithIndexPath:(id)path itemState:(id)state animated:(BOOL)animated
{
  animatedCopy = animated;
  pathCopy = path;
  stateCopy = state;
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];
  v12 = [collectionView cellForItemAtIndexPath:pathCopy];

  v13 = [v12 updateWithItemState:stateCopy context:self->_cellLayoutContext animated:animatedCopy];
  if (v13)
  {
    v14 = -[SUUIDynamicGridViewElementPageSection _viewElementAtGlobalIndex:](self, "_viewElementAtGlobalIndex:", [pathCopy item]);
    if (v14)
    {
      [(SUUIGridViewElementPageSectionConfiguration *)self->_configuration requestCellLayoutForViewElement:v14];
    }
  }

  return v13;
}

- (void)willAppearInContext:(id)context
{
  contextCopy = context;
  collectionView = [contextCopy collectionView];
  [(SUUIGridViewElementPageSectionConfiguration *)self->_configuration registerReusableClassesForCollectionView:collectionView];
  v6 = [SUUIViewElementTextLayoutCache alloc];
  textLayoutCache = [contextCopy textLayoutCache];
  v8 = [(SUUIViewElementTextLayoutCache *)v6 initWithLayoutCache:textLayoutCache];
  labelLayoutCache = self->_labelLayoutCache;
  self->_labelLayoutCache = v8;

  cellLayoutContext = self->_cellLayoutContext;
  if (cellLayoutContext)
  {
    [(SUUIViewElementLayoutContext *)cellLayoutContext setArtworkRequestDelegate:0];
  }

  v11 = [[SUUIViewElementLayoutContext alloc] initWithStorePageSectionContext:contextCopy];
  v12 = self->_cellLayoutContext;
  self->_cellLayoutContext = v11;

  [(SUUIViewElementLayoutContext *)self->_cellLayoutContext setArtworkRequestDelegate:self];
  v13 = self->_cellLayoutContext;
  parentViewController = [contextCopy parentViewController];
  clientContext = [parentViewController clientContext];
  [(SUUIViewElementLayoutContext *)v13 setClientContext:clientContext];

  [(SUUIViewElementLayoutContext *)self->_cellLayoutContext setLabelLayoutCache:self->_labelLayoutCache];
  [(SUUIViewElementLayoutContext *)self->_cellLayoutContext setAggregateValue:MEMORY[0x277CBEC38] forKey:0x286AF73A0];
  [(SUUIViewElementLayoutContext *)self->_cellLayoutContext setAggregateValue:&unk_286BBE400 forKey:0x286AFA780];
  v16 = self->_cellLayoutContext;
  parentViewController2 = [contextCopy parentViewController];
  [(SUUIViewElementLayoutContext *)v16 setParentViewController:parentViewController2];

  v18 = self->_cellLayoutContext;
  resourceLoader = [contextCopy resourceLoader];
  [(SUUIViewElementLayoutContext *)v18 setResourceLoader:resourceLoader];

  v20 = self->_cellLayoutContext;
  tintColor = [collectionView tintColor];
  [(SUUIViewElementLayoutContext *)v20 setTintColor:tintColor];

  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  -[SUUIViewElementLayoutContext setContainerViewElementType:](self->_cellLayoutContext, "setContainerViewElementType:", [viewElement elementType]);
  [(SUUIGridViewElementPageSectionConfiguration *)self->_configuration setCellLayoutContext:self->_cellLayoutContext];
  [(SUUIDynamicGridViewElementPageSection *)self _resetLayoutProperties];
  [(SUUIDynamicGridViewElementPageSection *)self _invalidateCellSizeCache];
  v24.receiver = self;
  v24.super_class = SUUIDynamicGridViewElementPageSection;
  [(SUUIStorePageSection *)&v24 willAppearInContext:contextCopy];
}

- (void)willTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  cellLayoutContext = self->_cellLayoutContext;
  coordinatorCopy = coordinator;
  [(SUUIViewElementLayoutContext *)cellLayoutContext setActivePageWidth:width];
  [(SUUIDynamicGridViewElementPageSection *)self _resetLayoutProperties];
  [(SUUIDynamicGridViewElementPageSection *)self _invalidateCellSizeCache];
  v9.receiver = self;
  v9.super_class = SUUIDynamicGridViewElementPageSection;
  [(SUUIStorePageSection *)&v9 willTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

- (void)_setContext:(id)context
{
  v5.receiver = self;
  v5.super_class = SUUIDynamicGridViewElementPageSection;
  contextCopy = context;
  [(SUUIStorePageSection *)&v5 _setContext:contextCopy];
  [(SUUIGridViewElementPageSectionConfiguration *)self->_configuration setPageSectionContext:contextCopy, v5.receiver, v5.super_class];
}

- (void)artworkRequest:(id)request didLoadImage:(id)image
{
  requestCopy = request;
  imageCopy = image;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__SUUIDynamicGridViewElementPageSection_artworkRequest_didLoadImage___block_invoke;
  v10[3] = &unk_2798F8B28;
  v10[4] = self;
  v11 = imageCopy;
  v12 = requestCopy;
  v8 = requestCopy;
  v9 = imageCopy;
  [(SUUIDynamicGridViewElementPageSection *)self _enumerateVisibleCellsUsingBlock:v10];
}

void __69__SUUIDynamicGridViewElementPageSection_artworkRequest_didLoadImage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = [*(a1 + 32) _viewElementAtGlobalIndex:{objc_msgSend(a3, "item")}];
  v6 = [v5 elementType];
  v7 = (v6 - 14) > 0x34 || ((1 << (v6 - 14)) & 0x10001C00000001) == 0;
  if ((!v7 || v6 == 152) && [v8 conformsToProtocol:&unk_286BDBC58])
  {
    [v8 setImage:*(a1 + 40) forArtworkRequest:*(a1 + 48) context:*(*(a1 + 32) + 88)];
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  if (self->_editing != editing)
  {
    self->_editing = editing;
    [(SUUIDynamicGridViewElementPageSection *)self _reloadVisibleCellsAnimated:animated];
  }
}

- (id)gridViewElementPageSectionConfiguration:(id)configuration viewElementForIndexPath:(id)path
{
  independentlySizedViewElement = self->_independentlySizedViewElement;
  if (independentlySizedViewElement)
  {
    v5 = independentlySizedViewElement;
  }

  else
  {
    v5 = -[SUUIDynamicGridViewElementPageSection _viewElementAtGlobalIndex:](self, "_viewElementAtGlobalIndex:", [path item]);
  }

  return v5;
}

- (void)gridViewElementPageSectionConfiguration:(id)configuration configurePosition:(int64_t *)position forItemAtIndexPath:(id)path
{
  if (self->_showsSectionHeaders)
  {
    v16[5] = v5;
    v16[6] = v6;
    v16[0] = 0x7FFFFFFFFFFFFFFFLL;
    v9 = -[SUUIDynamicGridViewElementPageSection _entityGlobalIndexForGlobalIndex:returningSection:](self, "_entityGlobalIndexForGlobalIndex:returningSection:", [path item], v16);
    if (v16[0] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = 0;
      v15 = 0;
      if (![(SUUIDynamicPageSectionIndexMapper *)self->_dynamicPageSectionIndexMapper getItem:&v15 section:&v14 forGlobalIndex:v9])
      {
        return;
      }

      if (v15)
      {
        v10 = [(SUUIDynamicPageSectionIndexMapper *)self->_dynamicPageSectionIndexMapper rangeForSectionAtIndex:v14];
        if (v15 != v11 + v10 - 1)
        {
          return;
        }

        v12 = 32;
      }

      else
      {
        v12 = 8;
      }

      v13 = *position & 0xFFFFFFFFFFFFFFC7 | v12;
    }

    else
    {
      v13 = *position & 0xFFFFFFFFFFFFFFC7 | 0x10;
    }

    *position = v13;
  }
}

- (id)_dynamicGridViewElement
{
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  return viewElement;
}

- (int64_t)_entityGlobalIndexForGlobalIndex:(int64_t)index returningSection:(int64_t *)section
{
  if (self->_showsSectionHeaders && (numberOfSections = self->_numberOfSections) != 0)
  {
    v5 = 0;
    v6 = index - numberOfSections;
    while (1)
    {
      v7 = self->_sectionHeaderGlobalIndices[v5];
      if (v7 >= index)
      {
        break;
      }

      if (numberOfSections == ++v5)
      {
        v8 = 0x7FFFFFFFFFFFFFFFLL;
        index = v6;
        if (section)
        {
          goto LABEL_9;
        }

        return index;
      }
    }

    v8 = 0x7FFFFFFFFFFFFFFFLL;
    if (v7 == index)
    {
      v8 = v5;
    }

    index -= v5;
    if (section)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
    if (section)
    {
LABEL_9:
      *section = v8;
    }
  }

  return index;
}

- (id)_entityValueProviderForGlobalIndex:(int64_t)index sectionIndex:(int64_t *)sectionIndex
{
  integerValue = [(SUUIMutableIntegerValue *)self->_reusableGlobalIndexIntegerValue integerValue];
  [(SUUIMutableIntegerValue *)self->_reusableGlobalIndexIntegerValue setIntegerValue:index];
  v8 = [(CPLRUDictionary *)self->_globalIndexToEntityValueProviderValueCache objectForKey:self->_reusableGlobalIndexIntegerValue];
  sectionIndex = 0;
  if (v8)
  {
    v9 = v8;
    sectionIndex = [(_SUUIDynamicGridEntityValueProviderValue *)v8 sectionIndex];
    entityValueProvider = [(_SUUIDynamicGridEntityValueProviderValue *)v9 entityValueProvider];
    if (!sectionIndex)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v12 = [(SUUIDynamicGridViewElementPageSection *)self _entityGlobalIndexForGlobalIndex:index returningSection:&sectionIndex];
  if (sectionIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = [(SUUIDynamicPageSectionIndexMapper *)self->_dynamicPageSectionIndexMapper entityIndexPathForGlobalIndex:v12];
    if (v13)
    {
      entityValueProvider = [(SUUIEntityProviding *)self->_entityProvider entityValueProviderAtIndexPath:v13];
    }

    else
    {
      entityValueProvider = 0;
    }
  }

  else if (*&self->_entityProviderFlags)
  {
    entityValueProvider = [(SUUIEntityProviding *)self->_entityProvider sectionEntityValueProviderAtIndex:?];
  }

  else
  {
    entityValueProvider = 0;
  }

  v9 = objc_alloc_init(_SUUIDynamicGridEntityValueProviderValue);
  [(_SUUIDynamicGridEntityValueProviderValue *)v9 setSectionIndex:sectionIndex];
  [(_SUUIDynamicGridEntityValueProviderValue *)v9 setEntityValueProvider:entityValueProvider];
  globalIndexToEntityValueProviderValueCache = self->_globalIndexToEntityValueProviderValueCache;
  if (!globalIndexToEntityValueProviderValueCache)
  {
    v15 = [objc_alloc(MEMORY[0x277CEC5A8]) initWithMaximumCapacity:50];
    v16 = self->_globalIndexToEntityValueProviderValueCache;
    self->_globalIndexToEntityValueProviderValueCache = v15;

    globalIndexToEntityValueProviderValueCache = self->_globalIndexToEntityValueProviderValueCache;
  }

  [(CPLRUDictionary *)globalIndexToEntityValueProviderValueCache setObject:v9 forKey:self->_reusableGlobalIndexIntegerValue];
  if (sectionIndex)
  {
LABEL_3:
    *sectionIndex = sectionIndex;
  }

LABEL_4:
  [(SUUIMutableIntegerValue *)self->_reusableGlobalIndexIntegerValue setIntegerValue:integerValue];

  return entityValueProvider;
}

- (void)_enumerateVisibleCellsUsingBlock:(id)block
{
  blockCopy = block;
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];

  visibleCells = [collectionView visibleCells];
  sectionIndex = [(SUUIStorePageSection *)self sectionIndex];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__SUUIDynamicGridViewElementPageSection__enumerateVisibleCellsUsingBlock___block_invoke;
  v11[3] = &unk_2798F8B50;
  v13 = blockCopy;
  v14 = sectionIndex;
  v12 = collectionView;
  v9 = blockCopy;
  v10 = collectionView;
  [visibleCells enumerateObjectsUsingBlock:v11];
}

void __74__SUUIDynamicGridViewElementPageSection__enumerateVisibleCellsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) indexPathForCell:?];
  v4 = v3;
  if (v3 && [v3 section] == *(a1 + 48))
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (int64_t)_globalIndexForEntityGlobalIndex:(int64_t)index
{
  if (!self->_showsSectionHeaders)
  {
    return index;
  }

  numberOfSections = self->_numberOfSections;
  if (!numberOfSections)
  {
    return index;
  }

  sectionHeaderGlobalIndices = self->_sectionHeaderGlobalIndices;
  result = index;
  do
  {
    v6 = *sectionHeaderGlobalIndices++;
    if (v6 <= index)
    {
      ++result;
    }

    --numberOfSections;
  }

  while (numberOfSections);
  return result;
}

- (id)_itemTemplateViewElementForEntityValueProvider:(id)provider
{
  providerCopy = provider;
  _dynamicGridViewElement = [(SUUIDynamicGridViewElementPageSection *)self _dynamicGridViewElement];
  v6 = _dynamicGridViewElement;
  if (self->_editing)
  {
    v7 = 0x286AF2580;
  }

  else
  {
    v7 = 0;
  }

  v8 = [_dynamicGridViewElement templateDefinitionViewElementsForType:0x286AEEC20 mode:v7];
  v9 = [v6 bestTemplateDefinitionViewElementFromTemplateDefinitionViewElements:v8 entityValueProvider:providerCopy];

  contentViewElement = [v9 contentViewElement];
  children = [contentViewElement children];
  firstObject = [children firstObject];

  return firstObject;
}

- (void)_reloadEntityProperties
{
  [(CPLRUDictionary *)self->_globalIndexToEntityValueProviderValueCache removeAllObjects];
  [(CPLRUDictionary *)self->_globalIndexToTemplateViewElementCache removeAllObjects];
  [(SUUIDynamicPageSectionIndexMapper *)self->_dynamicPageSectionIndexMapper reloadData];
  [(SUUIDynamicGridViewElementPageSection *)self _updateShowsSectionHeaders];
  sectionHeaderGlobalIndices = self->_sectionHeaderGlobalIndices;
  if (sectionHeaderGlobalIndices)
  {
    free(sectionHeaderGlobalIndices);
    self->_sectionHeaderGlobalIndices = 0;
  }

  if (self->_showsSectionHeaders)
  {
    numberOfSections = [(SUUIDynamicPageSectionIndexMapper *)self->_dynamicPageSectionIndexMapper numberOfSections];
    self->_sectionHeaderGlobalIndices = malloc_type_calloc(numberOfSections, 8uLL, 0x100004000313F17uLL);
    if (numberOfSections >= 1)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        self->_sectionHeaderGlobalIndices[v5] = v6;
        [(SUUIDynamicPageSectionIndexMapper *)self->_dynamicPageSectionIndexMapper rangeForSectionAtIndex:v5];
        v6 += v7 + 1;
        ++v5;
      }

      while (numberOfSections != v5);
    }

    self->_numberOfSections = numberOfSections;
  }
}

- (void)_reloadViewElementProperties
{
  [(NSMutableDictionary *)self->_templateViewElementsCache removeAllObjects];
  _dynamicGridViewElement = [(SUUIDynamicGridViewElementPageSection *)self _dynamicGridViewElement];
  explicitEntityProvider = [_dynamicGridViewElement explicitEntityProvider];
  entityProvider = self->_entityProvider;
  if (entityProvider == explicitEntityProvider || ([(SUUIEntityProviding *)entityProvider isEqual:explicitEntityProvider]& 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    objc_storeStrong(&self->_entityProvider, explicitEntityProvider);
    *&self->_entityProviderFlags = *&self->_entityProviderFlags & 0xFE | objc_opt_respondsToSelector() & 1;
    dynamicPageSectionIndexMapper = self->_dynamicPageSectionIndexMapper;
    if (!dynamicPageSectionIndexMapper)
    {
      v7 = objc_alloc_init(SUUIDynamicPageSectionIndexMapper);
      v8 = self->_dynamicPageSectionIndexMapper;
      self->_dynamicPageSectionIndexMapper = v7;

      dynamicPageSectionIndexMapper = self->_dynamicPageSectionIndexMapper;
    }

    [(SUUIDynamicPageSectionIndexMapper *)dynamicPageSectionIndexMapper setEntityProvider:self->_entityProvider];
    v5 = 1;
  }

  minimumEntityCountForSections = [_dynamicGridViewElement minimumEntityCountForSections];
  if (self->_minimumEntityCountForSections != minimumEntityCountForSections)
  {
    self->_minimumEntityCountForSections = minimumEntityCountForSections;
    -[SUUIGridViewElementPageSectionConfiguration setRendersWithPerspective:](self->_configuration, "setRendersWithPerspective:", [_dynamicGridViewElement rendersWithPerspective]);
    goto LABEL_11;
  }

  -[SUUIGridViewElementPageSectionConfiguration setRendersWithPerspective:](self->_configuration, "setRendersWithPerspective:", [_dynamicGridViewElement rendersWithPerspective]);
  if (v5)
  {
LABEL_11:
    [(SUUIDynamicGridViewElementPageSection *)self _reloadEntityProperties];
  }

  [(SUUIDynamicGridViewElementPageSection *)self _updateStyleProperties];
  collectionFeature = [_dynamicGridViewElement collectionFeature];
  [collectionFeature setCollectionTarget:self];
}

- (void)_reloadVisibleCellsAnimated:(BOOL)animated
{
  labelLayoutCache = [(SUUIViewElementLayoutContext *)self->_cellLayoutContext labelLayoutCache];
  layoutCache = [labelLayoutCache layoutCache];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__SUUIDynamicGridViewElementPageSection__reloadVisibleCellsAnimated___block_invoke;
  v7[3] = &unk_2798FCB08;
  v7[4] = self;
  v8 = layoutCache;
  v6 = layoutCache;
  [(SUUIDynamicGridViewElementPageSection *)self _enumerateVisibleCellsUsingBlock:v7];
}

void __69__SUUIDynamicGridViewElementPageSection__reloadVisibleCellsAnimated___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 conformsToProtocol:&unk_286BDBC58])
  {
    v6 = [*(a1 + 32) _viewElementAtGlobalIndex:{objc_msgSend(v5, "item")}];
    if (v6)
    {
      [*(*(a1 + 32) + 96) requestCellLayoutForViewElement:v6];
      [*(a1 + 40) commitLayoutRequests];
      [*(*(a1 + 32) + 96) configureCell:v7 forViewElement:v6 indexPath:v5];
    }
  }
}

- (void)_resetLayoutProperties
{
  configuration = self->_configuration;
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  [(SUUIGridViewElementPageSectionConfiguration *)configuration updateLayoutPropertiesForGridViewElement:viewElement];
}

- (id)_sectionTemplateViewElementForEntityValueProvider:(id)provider
{
  providerCopy = provider;
  _dynamicGridViewElement = [(SUUIDynamicGridViewElementPageSection *)self _dynamicGridViewElement];
  v6 = _dynamicGridViewElement;
  if (self->_editing)
  {
    v7 = 0x286AF2580;
  }

  else
  {
    v7 = 0;
  }

  v8 = [_dynamicGridViewElement templateDefinitionViewElementsForType:0x286AF25A0 mode:v7];
  v9 = [v6 bestTemplateDefinitionViewElementFromTemplateDefinitionViewElements:v8 entityValueProvider:providerCopy];

  contentViewElement = [v9 contentViewElement];
  children = [contentViewElement children];
  firstObject = [children firstObject];

  return firstObject;
}

- (BOOL)_updateShowsSectionHeaders
{
  _dynamicGridViewElement = [(SUUIDynamicGridViewElementPageSection *)self _dynamicGridViewElement];
  if ([_dynamicGridViewElement hasSectionHeaders])
  {
    v4 = [(SUUIDynamicPageSectionIndexMapper *)self->_dynamicPageSectionIndexMapper totalNumberOfEntities]>= self->_minimumEntityCountForSections;
  }

  else
  {
    v4 = 0;
  }

  showsSectionHeaders = self->_showsSectionHeaders;
  if (showsSectionHeaders != v4)
  {
    self->_showsSectionHeaders = v4;
  }

  return showsSectionHeaders != v4;
}

- (void)_updateStyleProperties
{
  v19 = *MEMORY[0x277D85DE8];
  _dynamicGridViewElement = [(SUUIDynamicGridViewElementPageSection *)self _dynamicGridViewElement];
  v4 = _dynamicGridViewElement;
  if (self->_editing)
  {
    v5 = 0x286AF2580;
  }

  else
  {
    v5 = 0;
  }

  v6 = [_dynamicGridViewElement templateDefinitionViewElementsForType:0x286AEEC20 mode:v5];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v6);
        }

        contentViewElement = [*(*(&v14 + 1) + 8 * i) contentViewElement];
        children = [contentViewElement children];
        if ([children count])
        {
          if (!v9)
          {
            v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v6, "count")}];
          }

          [v9 addObjectsFromArray:children];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  [(SUUIGridViewElementPageSectionConfiguration *)self->_configuration updateStylePropertiesForGridViewElement:v4 gridItemViewElements:v9 numberOfGridItems:[(SUUIDynamicGridViewElementPageSection *)self numberOfCells]];
}

- (id)_viewElementAtGlobalIndex:(int64_t)index
{
  integerValue = [(SUUIMutableIntegerValue *)self->_reusableGlobalIndexIntegerValue integerValue];
  [(SUUIMutableIntegerValue *)self->_reusableGlobalIndexIntegerValue setIntegerValue:index];
  v6 = [(CPLRUDictionary *)self->_globalIndexToTemplateViewElementCache objectForKey:self->_reusableGlobalIndexIntegerValue];
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  v7 = [(SUUIDynamicGridViewElementPageSection *)self _entityValueProviderForGlobalIndex:index sectionIndex:&v15];
  if (v6)
  {
    if (!self->_usesSizingEntityValueProvider)
    {
      goto LABEL_13;
    }

LABEL_11:
    v11 = [[SUUISizingEntityValueProvider alloc] initForViewElement:v6];
    [v6 setEntityValueProvider:v11];

    goto LABEL_14;
  }

  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(SUUIDynamicGridViewElementPageSection *)self _itemTemplateViewElementForEntityValueProvider:v7];
  }

  else
  {
    [(SUUIDynamicGridViewElementPageSection *)self _sectionTemplateViewElementForEntityValueProvider:v7];
  }
  v6 = ;
  if (!v6)
  {
    goto LABEL_14;
  }

  globalIndexToTemplateViewElementCache = self->_globalIndexToTemplateViewElementCache;
  if (!globalIndexToTemplateViewElementCache)
  {
    v9 = [objc_alloc(MEMORY[0x277CEC5A8]) initWithMaximumCapacity:50];
    v10 = self->_globalIndexToTemplateViewElementCache;
    self->_globalIndexToTemplateViewElementCache = v9;

    globalIndexToTemplateViewElementCache = self->_globalIndexToTemplateViewElementCache;
  }

  [(CPLRUDictionary *)globalIndexToTemplateViewElementCache setObject:v6 forKey:self->_reusableGlobalIndexIntegerValue];
  if (self->_usesSizingEntityValueProvider)
  {
    goto LABEL_11;
  }

  entityValueProperties = [v6 entityValueProperties];
  v13 = [v7 valuesForEntityProperties:entityValueProperties];

LABEL_13:
  [v6 setEntityValueProvider:v7];
LABEL_14:
  [(SUUIMutableIntegerValue *)self->_reusableGlobalIndexIntegerValue setIntegerValue:integerValue];

  return v6;
}

@end