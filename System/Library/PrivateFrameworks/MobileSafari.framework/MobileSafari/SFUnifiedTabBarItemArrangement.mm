@interface SFUnifiedTabBarItemArrangement
- (BOOL)isEqualToArrangement:(id)arrangement;
- (BOOL)isItemAtIndexInFirstUnpinnedSection:(unint64_t)section;
- (BOOL)isItemAtIndexInLastSection:(unint64_t)section;
- (BOOL)isItemFirstInSection:(id)section;
- (BOOL)isItemInSameSectionAsActiveItem:(id)item;
- (BOOL)isItemLastInSection:(id)section;
- (NSIndexSet)allItemIndexes;
- (NSIndexSet)allSectionIndexes;
- (NSOrderedSet)itemTitles;
- (SFUnifiedTabBarItemArrangement)arrangementWithActiveItem:(id)item;
- (SFUnifiedTabBarItemArrangement)arrangementWithActiveItemIsExpanded:(BOOL)expanded;
- (SFUnifiedTabBarItemArrangement)arrangementWithActiveItemSquishState:(int64_t)state;
- (SFUnifiedTabBarItemArrangement)initWithItem:(id)item activeItemIsExpanded:(BOOL)expanded;
- (SFUnifiedTabBarItemArrangement)initWithSections:(id)sections activeItem:(id)item activeItemIsExpanded:(BOOL)expanded allowsScrollingPinnedItems:(BOOL)items;
- (id)_initWithItems:(id)items activeItem:(id)item activeItemIsExpanded:(BOOL)expanded allowPinning:(BOOL)pinning allowsScrollingPinnedItems:(BOOL)pinnedItems;
- (id)copyWithZone:(_NSZone *)zone;
- (id)resolvedArrangementWithPinnedItemLimit:(unint64_t)limit overflowItem:(id)item;
- (id)sectionForItem:(id)item;
- (void)_buildSectionsByItemIfNeeded;
- (void)_setUpWithActiveItem:(id)item activeItemIsExpanded:(BOOL)expanded;
- (void)determineActiveItemSquishStateIfNeeded:(BOOL)needed;
- (void)enumerateSectionsAndItemsUsingBlock:(id)block;
@end

@implementation SFUnifiedTabBarItemArrangement

- (SFUnifiedTabBarItemArrangement)initWithItem:(id)item activeItemIsExpanded:(BOOL)expanded
{
  expandedCopy = expanded;
  v11[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v7 = itemCopy;
  if (itemCopy)
  {
    v11[0] = itemCopy;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  v9 = [(SFUnifiedTabBarItemArrangement *)self _initWithItems:v8 activeItem:v7 activeItemIsExpanded:expandedCopy allowPinning:0 allowsScrollingPinnedItems:0];

  return v9;
}

- (id)_initWithItems:(id)items activeItem:(id)item activeItemIsExpanded:(BOOL)expanded allowPinning:(BOOL)pinning allowsScrollingPinnedItems:(BOOL)pinnedItems
{
  pinningCopy = pinning;
  expandedCopy = expanded;
  v54 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  itemCopy = item;
  v50.receiver = self;
  v50.super_class = SFUnifiedTabBarItemArrangement;
  v14 = [(SFUnifiedTabBarItemArrangement *)&v50 init];
  v15 = v14;
  if (v14)
  {
    if (pinningCopy)
    {
      pinnedItemsCopy = pinnedItems;
      v45 = expandedCopy;
      array = [MEMORY[0x1E695DF70] array];
      array2 = [MEMORY[0x1E695DF70] array];
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v18 = itemsCopy;
      v19 = [v18 countByEnumeratingWithState:&v46 objects:v53 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v47;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v47 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v46 + 1) + 8 * i);
            if ([v23 isPinned])
            {
              v24 = array;
            }

            else
            {
              v24 = array2;
            }

            [v24 addObject:v23];
          }

          v20 = [v18 countByEnumeratingWithState:&v46 objects:v53 count:16];
        }

        while (v20);
      }

      v25 = [array copy];
      pinnedItems = v15->_pinnedItems;
      v15->_pinnedItems = v25;

      v27 = [array2 copy];
      unpinnedItems = v15->_unpinnedItems;
      v15->_unpinnedItems = v27;

      v29 = [(NSArray *)v15->_pinnedItems arrayByAddingObjectsFromArray:v15->_unpinnedItems];
      items = v15->_items;
      v15->_items = v29;

      v15->_allowsScrollingPinnedItems = pinnedItemsCopy;
      expandedCopy = v45;
    }

    else
    {
      v31 = v14->_pinnedItems;
      v14->_pinnedItems = MEMORY[0x1E695E0F0];

      v32 = [itemsCopy copy];
      v33 = v15->_unpinnedItems;
      v15->_unpinnedItems = v32;

      v34 = v32;
      array = v15->_items;
      v15->_items = v34;
    }

    v35 = [(NSArray *)v15->_pinnedItems count];
    v36 = [SFUnifiedTabBarSection alloc];
    if (v35)
    {
      v37 = [(SFUnifiedTabBarSection *)v36 initWithIdentifier:@"pinned" items:v15->_pinnedItems isPinned:1];
      v52[0] = v37;
      v38 = [[SFUnifiedTabBarSection alloc] initWithIdentifier:@"unpinned" items:v15->_unpinnedItems isPinned:0];
      v52[1] = v38;
      v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];
      sections = v15->_sections;
      v15->_sections = v39;
    }

    else
    {
      v37 = [(SFUnifiedTabBarSection *)v36 initWithIdentifier:@"unpinned" items:v15->_unpinnedItems isPinned:0];
      v51 = v37;
      v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
      v38 = v15->_sections;
      v15->_sections = v41;
    }

    [(SFUnifiedTabBarItemArrangement *)v15 _setUpWithActiveItem:itemCopy activeItemIsExpanded:expandedCopy];
    v42 = v15;
  }

  return v15;
}

- (SFUnifiedTabBarItemArrangement)initWithSections:(id)sections activeItem:(id)item activeItemIsExpanded:(BOOL)expanded allowsScrollingPinnedItems:(BOOL)items
{
  itemsCopy = items;
  expandedCopy = expanded;
  v47 = *MEMORY[0x1E69E9840];
  sectionsCopy = sections;
  itemCopy = item;
  v41.receiver = self;
  v41.super_class = SFUnifiedTabBarItemArrangement;
  v12 = [(SFUnifiedTabBarItemArrangement *)&v41 init];
  if (v12)
  {
    v36 = itemsCopy;
    v37 = expandedCopy;
    v13 = [sectionsCopy copy];
    sections = v12->_sections;
    v12->_sections = v13;

    v15 = sectionsCopy;
    array = [MEMORY[0x1E695DF70] array];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v43;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v43 != v20)
          {
            objc_enumerationMutation(v17);
          }

          items = [*(*(&v42 + 1) + 8 * i) items];
          [array addObjectsFromArray:items];
        }

        v19 = [v17 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v19);
    }

    v23 = [array copy];
    items = v12->_items;
    v12->_items = v23;

    array2 = [MEMORY[0x1E695DF70] array];
    array3 = [MEMORY[0x1E695DF70] array];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __110__SFUnifiedTabBarItemArrangement_initWithSections_activeItem_activeItemIsExpanded_allowsScrollingPinnedItems___block_invoke;
    v38[3] = &unk_1E721B6A8;
    v27 = array2;
    v39 = v27;
    v28 = array3;
    v40 = v28;
    [v17 enumerateObjectsUsingBlock:v38];
    v29 = [v27 copy];
    pinnedItems = v12->_pinnedItems;
    v12->_pinnedItems = v29;

    v31 = [v28 copy];
    unpinnedItems = v12->_unpinnedItems;
    v12->_unpinnedItems = v31;

    v33 = v36;
    if (v36)
    {
      v33 = [(NSArray *)v12->_pinnedItems count]!= 0;
    }

    v12->_allowsScrollingPinnedItems = v33;
    [(SFUnifiedTabBarItemArrangement *)v12 _setUpWithActiveItem:itemCopy activeItemIsExpanded:v37];
    v34 = v12;
  }

  return v12;
}

void __110__SFUnifiedTabBarItemArrangement_initWithSections_activeItem_activeItemIsExpanded_allowsScrollingPinnedItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 isPinned];
  v5 = 40;
  if (v4)
  {
    v5 = 32;
  }

  v6 = *(a1 + v5);
  v7 = [v3 items];

  [v6 addObjectsFromArray:v7];
}

- (void)_setUpWithActiveItem:(id)item activeItemIsExpanded:(BOOL)expanded
{
  itemCopy = item;
  overflowPinnedItems = self->_overflowPinnedItems;
  self->_overflowPinnedItems = MEMORY[0x1E695E0F0];

  objc_storeStrong(&self->_activeItem, item);
  if (self->_activeItem)
  {
    v8 = [(NSArray *)self->_items indexOfObject:?];
    self->_activeItemIndex = v8;
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_6;
    }

    activeItem = self->_activeItem;
  }

  else
  {
    activeItem = 0;
    self->_activeItemIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  self->_activeItem = 0;

LABEL_6:
  v10 = self->_activeItem;
  if (v10)
  {
    expandedCopy = expanded;
  }

  else
  {
    expandedCopy = 0;
  }

  self->_activeItemIsExpanded = expandedCopy;
  if (!v10)
  {
    self->_activeItemIsFirstInSection = 0;
    goto LABEL_15;
  }

  v12 = [(SFUnifiedTabBarItemArrangement *)self isItemFirstInSection:?];
  v13 = self->_activeItem;
  self->_activeItemIsFirstInSection = v12;
  if (!v13)
  {
LABEL_15:
    self->_activeItemIsLastInSection = 0;
    goto LABEL_16;
  }

  v14 = [(SFUnifiedTabBarItemArrangement *)self isItemLastInSection:?];
  v15 = self->_activeItem;
  self->_activeItemIsLastInSection = v14;
  if (!v15)
  {
LABEL_16:
    v18 = 0;
    self->_activeItemIsInFirstUnpinnedSection = 0;
    goto LABEL_17;
  }

  v16 = [(SFUnifiedTabBarItemArrangement *)self isItemAtIndexInFirstUnpinnedSection:self->_activeItemIndex];
  v17 = self->_activeItem;
  self->_activeItemIsInFirstUnpinnedSection = v16;
  if (v17)
  {
    v18 = [(SFUnifiedTabBarItemArrangement *)self isItemAtIndexInLastSection:self->_activeItemIndex];
  }

  else
  {
    v18 = 0;
  }

LABEL_17:
  self->_activeItemIsInLastSection = v18;
  self->_activeItemSquishState = -1;
  [(SFUnifiedTabBarItemArrangement *)self setNeedsUpdateCachedItemTitles];
}

- (BOOL)isEqualToArrangement:(id)arrangement
{
  arrangementCopy = arrangement;
  pinnedItems = self->_pinnedItems;
  pinnedItems = [arrangementCopy pinnedItems];
  if ([(NSArray *)pinnedItems isEqualToArray:pinnedItems])
  {
    unpinnedItems = self->_unpinnedItems;
    unpinnedItems = [arrangementCopy unpinnedItems];
    if (-[NSArray isEqualToArray:](unpinnedItems, "isEqualToArray:", unpinnedItems) && (allowsScrollingPinnedItems = self->_allowsScrollingPinnedItems, allowsScrollingPinnedItems == [arrangementCopy allowsScrollingPinnedItems]))
    {
      activeItem = self->_activeItem;
      activeItem = [arrangementCopy activeItem];
      if (activeItem == activeItem && (activeItemIsExpanded = self->_activeItemIsExpanded, activeItemIsExpanded == [arrangementCopy activeItemIsExpanded]) && ((activeItemSquishState = self->_activeItemSquishState, activeItemSquishState == objc_msgSend(arrangementCopy, "activeItemSquishState")) || self->_activeItemSquishState == -1 || objc_msgSend(arrangementCopy, "activeItemSquishState") == -1))
      {
        sections = self->_sections;
        sections = [arrangementCopy sections];
        v14 = [(NSArray *)sections isEqualToArray:sections];
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (SFUnifiedTabBarItemArrangement)arrangementWithActiveItem:(id)item
{
  itemCopy = item;
  v5 = [(SFUnifiedTabBarItemArrangement *)self copy];
  v6 = v5;
  if (itemCopy)
  {
    v7 = [*(v5 + 40) indexOfObject:itemCopy];
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *(v6 + 56) = v7;
  if (self->_activeItemIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = itemCopy;
  }

  objc_storeStrong((v6 + 48), v8);

  return v6;
}

- (SFUnifiedTabBarItemArrangement)arrangementWithActiveItemIsExpanded:(BOOL)expanded
{
  v4 = [(SFUnifiedTabBarItemArrangement *)self copy];
  v4[24] = expanded;

  return v4;
}

- (SFUnifiedTabBarItemArrangement)arrangementWithActiveItemSquishState:(int64_t)state
{
  v4 = [(SFUnifiedTabBarItemArrangement *)self copy];
  v4[10] = state;

  return v4;
}

- (NSOrderedSet)itemTitles
{
  if (self->_needsUpdateCachedItemTitles)
  {
    v3 = [(NSArray *)self->_items safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_2];
    v4 = MEMORY[0x1E695DFB8];
    v5 = [v3 sortedArrayUsingComparator:&__block_literal_global_12];
    v6 = [v4 orderedSetWithArray:v5];
    itemTitles = self->_itemTitles;
    self->_itemTitles = v6;

    self->_needsUpdateCachedItemTitles = 0;
  }

  v8 = self->_itemTitles;

  return v8;
}

id __44__SFUnifiedTabBarItemArrangement_itemTitles__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 title];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __44__SFUnifiedTabBarItemArrangement_itemTitles__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = a2;
  v7 = [v6 compare:v5 options:{objc_msgSend(v4, "tabBarTitleTruncationCompareOptions")}];

  return v7;
}

- (id)resolvedArrangementWithPinnedItemLimit:(unint64_t)limit overflowItem:(id)item
{
  itemCopy = item;
  if (self->_allowsScrollingPinnedItems)
  {
    selfCopy = self;
  }

  else if ([(NSArray *)self->_pinnedItems count]<= limit + 1)
  {
    selfCopy = [(SFUnifiedTabBarItemArrangement *)self copy];
    selfCopy->_pinnedItemLimit = limit;
  }

  else
  {
    pinnedItems = self->_pinnedItems;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __86__SFUnifiedTabBarItemArrangement_resolvedArrangementWithPinnedItemLimit_overflowItem___block_invoke;
    v25[3] = &unk_1E721B710;
    v25[4] = self;
    v9 = [(NSArray *)pinnedItems safari_filterObjectsUsingBlock:v25];
    v10 = [(NSArray *)self->_pinnedItems count]- limit;
    v11 = [v9 subarrayWithRange:{objc_msgSend(v9, "count") - v10, v10}];
    v12 = self->_pinnedItems;
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __86__SFUnifiedTabBarItemArrangement_resolvedArrangementWithPinnedItemLimit_overflowItem___block_invoke_2;
    v23 = &unk_1E721B710;
    v13 = v11;
    v24 = v13;
    v14 = [(NSArray *)v12 safari_filterObjectsUsingBlock:&v20];
    v15 = [v14 arrayByAddingObject:{itemCopy, v20, v21, v22, v23}];
    v16 = [v15 arrayByAddingObjectsFromArray:self->_unpinnedItems];

    selfCopy = [[SFUnifiedTabBarItemArrangement alloc] initWithItems:v16 activeItem:self->_activeItem activeItemIsExpanded:self->_activeItemIsExpanded allowsScrollingPinnedItems:0];
    selfCopy->_activeItemSquishState = self->_activeItemSquishState;
    overflowPinnedItems = selfCopy->_overflowPinnedItems;
    selfCopy->_pinnedItemLimit = limit;
    selfCopy->_overflowPinnedItems = v13;
    v18 = v13;
  }

  return selfCopy;
}

uint64_t __86__SFUnifiedTabBarItemArrangement_resolvedArrangementWithPinnedItemLimit_overflowItem___block_invoke(uint64_t a1, void *a2)
{
  if (*(*(a1 + 32) + 48) == a2)
  {
    return 0;
  }

  else
  {
    return [a2 isPlaceholder] ^ 1;
  }
}

- (NSIndexSet)allItemIndexes
{
  v2 = MEMORY[0x1E696AC90];
  v3 = [(NSArray *)self->_items count];

  return [v2 indexSetWithIndexesInRange:{0, v3}];
}

- (void)determineActiveItemSquishStateIfNeeded:(BOOL)needed
{
  if (self->_activeItemSquishState == -1)
  {
    self->_activeItemSquishState = needed;
  }
}

- (NSIndexSet)allSectionIndexes
{
  v2 = MEMORY[0x1E696AC90];
  v3 = [(NSArray *)self->_sections count];

  return [v2 indexSetWithIndexesInRange:{0, v3}];
}

- (void)enumerateSectionsAndItemsUsingBlock:(id)block
{
  blockCopy = block;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = 0;
  sections = self->_sections;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__SFUnifiedTabBarItemArrangement_enumerateSectionsAndItemsUsingBlock___block_invoke;
  v7[3] = &unk_1E721B738;
  v6 = blockCopy;
  v8 = v6;
  v9 = v10;
  [(NSArray *)sections enumerateObjectsUsingBlock:v7];

  _Block_object_dispose(v10, 8);
}

void __70__SFUnifiedTabBarItemArrangement_enumerateSectionsAndItemsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 items];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(a1 + 32) + 16))();
        ++*(*(*(a1 + 40) + 8) + 24);
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (BOOL)isItemAtIndexInFirstUnpinnedSection:(unint64_t)section
{
  v5 = [(NSArray *)self->_pinnedItems count];
  if (!v5)
  {
    firstObject = [(NSArray *)self->_sections firstObject];
    items = [firstObject items];
    v12 = [items count];
    goto LABEL_9;
  }

  v6 = v5;
  v7 = [(NSArray *)self->_items count];
  if (v6 <= section && v6 != v7)
  {
    firstObject = [(NSArray *)self->_sections objectAtIndexedSubscript:1];
    items = [firstObject items];
    v12 = [items count] + v6;
LABEL_9:
    v9 = v12 > section;

    return v9;
  }

  return 0;
}

- (BOOL)isItemAtIndexInLastSection:(unint64_t)section
{
  v5 = [(NSArray *)self->_items count];
  lastObject = [(NSArray *)self->_sections lastObject];
  items = [lastObject items];
  LOBYTE(section) = v5 - [items count] <= section;

  return section;
}

- (BOOL)isItemFirstInSection:(id)section
{
  v17 = *MEMORY[0x1E69E9840];
  sectionCopy = section;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_sections;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        items = [*(*(&v12 + 1) + 8 * i) items];
        firstObject = [items firstObject];

        if (firstObject == sectionCopy)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)isItemLastInSection:(id)section
{
  v17 = *MEMORY[0x1E69E9840];
  sectionCopy = section;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_sections;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        items = [*(*(&v12 + 1) + 8 * i) items];
        lastObject = [items lastObject];

        if (lastObject == sectionCopy)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)isItemInSameSectionAsActiveItem:(id)item
{
  if (!self->_activeItem)
  {
    return 0;
  }

  v4 = [(SFUnifiedTabBarItemArrangement *)self sectionForItem:item];
  identifier = [v4 identifier];

  v6 = [(SFUnifiedTabBarItemArrangement *)self sectionForItem:self->_activeItem];
  identifier2 = [v6 identifier];

  LOBYTE(v6) = [identifier isEqual:identifier2];
  return v6;
}

- (void)_buildSectionsByItemIfNeeded
{
  v26 = *MEMORY[0x1E69E9840];
  if (!self->_sectionsByItem)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    sectionsByItem = self->_sectionsByItem;
    self->_sectionsByItem = strongToStrongObjectsMapTable;

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = self->_sections;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v21;
      do
      {
        v9 = 0;
        do
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v20 + 1) + 8 * v9);
          v16 = 0u;
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          items = [v10 items];
          v12 = [items countByEnumeratingWithState:&v16 objects:v24 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v17;
            do
            {
              v15 = 0;
              do
              {
                if (*v17 != v14)
                {
                  objc_enumerationMutation(items);
                }

                [(NSMapTable *)self->_sectionsByItem setObject:v10 forKey:*(*(&v16 + 1) + 8 * v15++)];
              }

              while (v13 != v15);
              v13 = [items countByEnumeratingWithState:&v16 objects:v24 count:16];
            }

            while (v13);
          }

          ++v9;
        }

        while (v9 != v7);
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v7);
    }
  }
}

- (id)sectionForItem:(id)item
{
  itemCopy = item;
  [(SFUnifiedTabBarItemArrangement *)self _buildSectionsByItemIfNeeded];
  v5 = [(NSMapTable *)self->_sectionsByItem objectForKey:itemCopy];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(SFUnifiedTabBarItemArrangement);
  objc_storeStrong(&v4->_activeItem, self->_activeItem);
  v4->_activeItemIndex = self->_activeItemIndex;
  v4->_activeItemIsExpanded = self->_activeItemIsExpanded;
  v4->_activeItemIsFirstInSection = self->_activeItemIsFirstInSection;
  v4->_activeItemIsLastInSection = self->_activeItemIsLastInSection;
  v4->_activeItemIsInFirstUnpinnedSection = self->_activeItemIsInFirstUnpinnedSection;
  v4->_activeItemIsInLastSection = self->_activeItemIsInLastSection;
  v4->_activeItemSquishState = self->_activeItemSquishState;
  v4->_allowsScrollingPinnedItems = self->_allowsScrollingPinnedItems;
  objc_storeStrong(&v4->_items, self->_items);
  objc_storeStrong(&v4->_overflowPinnedItems, self->_overflowPinnedItems);
  v4->_pinnedItemLimit = self->_pinnedItemLimit;
  objc_storeStrong(&v4->_pinnedItems, self->_pinnedItems);
  objc_storeStrong(&v4->_unpinnedItems, self->_unpinnedItems);
  v5 = [(NSArray *)self->_sections copy];
  sections = v4->_sections;
  v4->_sections = v5;

  v7 = [(NSMapTable *)self->_sectionsByItem copy];
  sectionsByItem = v4->_sectionsByItem;
  v4->_sectionsByItem = v7;

  return v4;
}

@end