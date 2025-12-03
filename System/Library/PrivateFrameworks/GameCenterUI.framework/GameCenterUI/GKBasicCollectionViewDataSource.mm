@interface GKBasicCollectionViewDataSource
- (GKBasicCollectionViewDataSource)init;
- (SEL)showAllAction;
- (_NSRange)preloadedRange;
- (id)_gkDescriptionWithChildren:(int64_t)children;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)copyWithZone:(_NSZone *)zone;
- (id)indexPathsForItem:(id)item;
- (id)itemAtIndexPath:(id)path;
- (id)itemsAtIndexes:(id)indexes;
- (id)sectionTitle;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)configureCollectionView:(id)view;
- (void)insertItems:(id)items atIndexes:(id)indexes;
- (void)preloadImagesForItems:(id)items startingAtIndex:(unint64_t)index loadBlock:(id)block;
- (void)removeItemAtIndexPath:(id)path completionHandler:(id)handler;
- (void)removeItemsAtIndexes:(id)indexes;
- (void)replaceItemsAtIndexes:(id)indexes withItems:(id)items;
- (void)setItems:(id)items;
- (void)setItemsNoNotify:(id)notify;
- (void)setShowAllAction:(SEL)action;
@end

@implementation GKBasicCollectionViewDataSource

- (GKBasicCollectionViewDataSource)init
{
  v3.receiver = self;
  v3.super_class = GKBasicCollectionViewDataSource;
  result = [(GKCollectionViewDataSource *)&v3 init];
  if (result)
  {
    result->_pageSize = 20;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setItemsNoNotify:self->_items];
  [v4 setFilterPredicate:self->_filterPredicate];
  [v4 setPageSize:self->_pageSize];
  [v4 setPreloadedRange:{self->_preloadedRange.location, self->_preloadedRange.length}];
  return v4;
}

- (id)_gkDescriptionWithChildren:(int64_t)children
{
  string = [MEMORY[0x277CCAB68] string];
  v6 = _gkTabStringForTabLevel();
  v13.receiver = self;
  v13.super_class = GKBasicCollectionViewDataSource;
  v7 = [(GKCollectionViewDataSource *)&v13 _gkDescriptionWithChildren:children];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v9 = [v7 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  [string appendFormat:@"%@%@", v6, v9];
  filterPredicate = self->_filterPredicate;
  if (filterPredicate)
  {
    [string appendFormat:@"%@    predicate: %@\n", v6, filterPredicate];
    [string appendFormat:@"%@}\n", v6];
  }

  v11 = _gkUnicodifyDescription();

  return string;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  if (section)
  {
    return 0;
  }

  else
  {
    return [(NSArray *)self->_items count];
  }
}

- (void)removeItemAtIndexPath:(id)path completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = [MEMORY[0x277CCAA78] indexSetWithIndex:{objc_msgSend(path, "item")}];
  [(GKBasicCollectionViewDataSource *)self removeItemsAtIndexes:v6];
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (id)itemAtIndexPath:(id)path
{
  pathCopy = path;
  item = [pathCopy item];
  if (item >= [(NSArray *)self->_items count])
  {
    v6 = 0;
  }

  else
  {
    v6 = -[NSArray objectAtIndexedSubscript:](self->_items, "objectAtIndexedSubscript:", [pathCopy item]);
  }

  return v6;
}

- (id)indexPathsForItem:(id)item
{
  itemCopy = item;
  items = self->_items;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__GKBasicCollectionViewDataSource_indexPathsForItem___block_invoke;
  v9[3] = &unk_27966B160;
  v10 = itemCopy;
  v6 = itemCopy;
  v7 = [(NSArray *)items _gkFilterWithBlock:v9];

  return v7;
}

id __53__GKBasicCollectionViewDataSource_indexPathsForItem___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if ([a2 isEqual:*(a1 + 32)])
  {
    v4 = [MEMORY[0x277CCAA70] indexPathForItem:a3 inSection:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  v17.receiver = self;
  v17.super_class = GKBasicCollectionViewDataSource;
  v11 = [(GKCollectionViewDataSource *)&v17 collectionView:viewCopy viewForSupplementaryElementOfKind:kindCopy atIndexPath:pathCopy];
  if (!v11)
  {
    v11 = [viewCopy _gkDequeueSupplementaryViewForClass:objc_opt_class() ofKind:kindCopy forIndexPath:pathCopy];
    sectionTitle = [(GKBasicCollectionViewDataSource *)self sectionTitle];
    [v11 setLeftText:sectionTitle];

    if (([kindCopy isEqualToString:@"SectionHeader"] & 1) == 0)
    {
      v13 = MEMORY[0x277D0C2A0];
      v14 = *MEMORY[0x277D0C2A0];
      if (!*MEMORY[0x277D0C2A0])
      {
        v15 = GKOSLoggers();
        v14 = *v13;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [GKBasicCollectionViewDataSource collectionView:kindCopy viewForSupplementaryElementOfKind:v14 atIndexPath:?];
      }
    }
  }

  return v11;
}

- (void)configureCollectionView:(id)view
{
  v4.receiver = self;
  v4.super_class = GKBasicCollectionViewDataSource;
  viewCopy = view;
  [(GKCollectionViewDataSource *)&v4 configureCollectionView:viewCopy];
  [viewCopy _gkRegisterClass:objc_opt_class() forSupplementaryViewOfKind:{@"SectionHeader", v4.receiver, v4.super_class}];
}

- (id)sectionTitle
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ needs to implement me!", objc_opt_class()];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKBasicCollectionViewDataSource.m"];
  lastPathComponent = [v4 lastPathComponent];
  v6 = [v2 stringWithFormat:@"%@ (NO)\n[%s (%s:%d)]", v3, "-[GKBasicCollectionViewDataSource sectionTitle]", objc_msgSend(lastPathComponent, "UTF8String"), 136];

  [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v6}];
  return 0;
}

- (void)setItemsNoNotify:(id)notify
{
  notifyCopy = notify;
  if (self->_items != notifyCopy)
  {
    v7 = notifyCopy;
    if (self->_filterPredicate)
    {
      v5 = [(NSArray *)notifyCopy filteredArrayUsingPredicate:?];
    }

    else
    {
      v5 = [(NSArray *)notifyCopy copy];
    }

    items = self->_items;
    self->_items = v5;

    self->_preloadedRange.location = 0;
    self->_preloadedRange.length = 0;
    notifyCopy = v7;
  }
}

- (void)setItems:(id)items
{
  v96 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  selfCopy = self;
  if (self->_items != itemsCopy)
  {
    v5 = [MEMORY[0x277CBEB58] setWithArray:?];
    v6 = [MEMORY[0x277CBEB58] setWithArray:itemsCopy];
    v7 = [(NSArray *)itemsCopy count];
    v8 = [v6 count];
    v9 = MEMORY[0x277D0C2A0];
    if (v7 != v8)
    {
      v10 = *MEMORY[0x277D0C2A0];
      if (!*MEMORY[0x277D0C2A0])
      {
        v11 = GKOSLoggers();
        v10 = *v9;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = MEMORY[0x277CCABB0];
        v13 = v10;
        v14 = [v12 numberWithUnsignedInteger:{-[NSArray count](itemsCopy, "count") - objc_msgSend(v6, "count")}];
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSArray count](itemsCopy, "count")}];
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "count")}];
        *buf = 138412802;
        v80 = v14;
        v81 = 2112;
        v82 = v15;
        v83 = 2112;
        v84 = v16;
        _os_log_impl(&dword_24DE53000, v13, OS_LOG_TYPE_INFO, "duplicate new items detected: %@ (%@ vs %@)", buf, 0x20u);
      }
    }

    v17 = [(NSArray *)self->_items count];
    if (v17 != [v5 count])
    {
      v18 = *v9;
      if (!*v9)
      {
        v19 = GKOSLoggers();
        v18 = *v9;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v20 = MEMORY[0x277CCABB0];
        items = self->_items;
        v22 = v18;
        v23 = [v20 numberWithUnsignedInteger:{-[NSArray count](items, "count") - objc_msgSend(v5, "count")}];
        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSArray count](self->_items, "count")}];
        v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
        *buf = 138412802;
        v80 = v23;
        v81 = 2112;
        v82 = v24;
        v83 = 2112;
        v84 = v25;
        _os_log_impl(&dword_24DE53000, v22, OS_LOG_TYPE_INFO, "duplicate old items detected: %@ (%@ vs %@)", buf, 0x20u);
      }
    }

    v26 = [v5 mutableCopy];
    [v26 minusSet:v6];
    v65 = [v6 mutableCopy];
    [v65 minusSet:v5];
    v27 = [v6 mutableCopy];
    v62 = v5;
    [v27 intersectSet:v5];
    v63 = [v27 mutableCopy];
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    obj = v27;
    v28 = [obj countByEnumeratingWithState:&v75 objects:v95 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v76;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v76 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v75 + 1) + 8 * i);
          v33 = [MEMORY[0x277CCAA70] indexPathForItem:-[NSArray indexOfObject:](selfCopy->_items inSection:{"indexOfObject:", v32), 0}];
          v34 = [MEMORY[0x277CCAA70] indexPathForItem:-[NSArray indexOfObject:](itemsCopy inSection:{"indexOfObject:", v32), 0}];
          if (v33 == v34)
          {
            [v63 removeObject:v32];
          }

          else
          {
            [v26 addObject:v32];
            [v65 addObject:v32];
          }
        }

        v29 = [obj countByEnumeratingWithState:&v75 objects:v95 count:16];
      }

      while (v29);
    }

    array = [MEMORY[0x277CBEB18] array];
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v36 = v26;
    v37 = [v36 countByEnumeratingWithState:&v71 objects:v94 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v72;
      do
      {
        for (j = 0; j != v38; ++j)
        {
          if (*v72 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v41 = [MEMORY[0x277CCAA70] indexPathForItem:-[NSArray indexOfObject:](selfCopy->_items inSection:{"indexOfObject:", *(*(&v71 + 1) + 8 * j)), 0}];
          [array addObject:v41];
        }

        v38 = [v36 countByEnumeratingWithState:&v71 objects:v94 count:16];
      }

      while (v38);
    }

    v61 = v36;

    v42 = [array sortedArrayUsingComparator:&__block_literal_global_18];
    reverseObjectEnumerator = [v42 reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];
    v45 = [allObjects mutableCopy];

    array2 = [MEMORY[0x277CBEB18] array];
    array3 = [MEMORY[0x277CBEB18] array];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v48 = v65;
    v49 = [v48 countByEnumeratingWithState:&v67 objects:v93 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v68;
      do
      {
        for (k = 0; k != v50; ++k)
        {
          if (*v68 != v51)
          {
            objc_enumerationMutation(v48);
          }

          v53 = [MEMORY[0x277CCAA70] indexPathForItem:-[NSArray indexOfObject:](itemsCopy inSection:{"indexOfObject:", *(*(&v67 + 1) + 8 * k), v61), 0}];
          v54 = [v45 containsObject:v53];
          v55 = array2;
          if (v54)
          {
            [v45 removeObject:v53];
            v55 = array3;
          }

          [v55 addObject:v53];
        }

        v50 = [v48 countByEnumeratingWithState:&v67 objects:v93 count:16];
      }

      while (v50);
    }

    [array2 sortUsingComparator:&__block_literal_global_65];
    if (selfCopy->_filterPredicate)
    {
      v56 = [(NSArray *)itemsCopy filteredArrayUsingPredicate:?];
    }

    else
    {
      v56 = [(NSArray *)itemsCopy copy];
    }

    v57 = v61;
    v58 = selfCopy->_items;
    selfCopy->_items = v56;

    selfCopy->_preloadedRange.location = 0;
    selfCopy->_preloadedRange.length = 0;
    if (!*MEMORY[0x277D0C2A0])
    {
      v59 = GKOSLoggers();
    }

    v60 = *MEMORY[0x277D0C270];
    if (os_log_type_enabled(*MEMORY[0x277D0C270], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413826;
      v80 = v62;
      v81 = 2112;
      v82 = v6;
      v83 = 2112;
      v84 = v45;
      v85 = 2112;
      v86 = v61;
      v87 = 2112;
      v88 = array2;
      v89 = 2112;
      v90 = v48;
      v91 = 2112;
      v92 = array3;
      _os_log_debug_impl(&dword_24DE53000, v60, OS_LOG_TYPE_DEBUG, "GKBasicCollectionViewDataSource setting items. \noldItems: %@\nnewItems:%@ \ndeletedIndexPath: %@, deletedItems: %@\ninsertedIndexPaths: %@, insertedItems: %@\nrefreshedIndexPaths: %@", buf, 0x48u);
    }

    if ([v45 count])
    {
      [(GKCollectionViewDataSource *)selfCopy notifyItemsRemovedAtIndexPaths:v45];
    }

    if ([array2 count])
    {
      [(GKCollectionViewDataSource *)selfCopy notifyItemsInsertedAtIndexPaths:array2];
    }

    if ([array3 count])
    {
      [(GKCollectionViewDataSource *)selfCopy notifyItemsRefreshedAtIndexPaths:array3];
    }
  }
}

- (id)itemsAtIndexes:(id)indexes
{
  v4 = MEMORY[0x277CBEB18];
  indexesCopy = indexes;
  v6 = [v4 arrayWithCapacity:{objc_msgSend(indexesCopy, "count")}];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__GKBasicCollectionViewDataSource_itemsAtIndexes___block_invoke;
  v11[3] = &unk_279669F60;
  v11[4] = self;
  v7 = v6;
  v12 = v7;
  [indexesCopy enumerateIndexesUsingBlock:v11];

  v8 = v12;
  v9 = v7;

  return v7;
}

void __50__GKBasicCollectionViewDataSource_itemsAtIndexes___block_invoke(uint64_t a1, unint64_t a2)
{
  if ([*(*(a1 + 32) + 72) count] > a2)
  {
    v4 = *(a1 + 40);
    v5 = [*(*(a1 + 32) + 72) objectAtIndexedSubscript:a2];
    [v4 addObject:v5];
  }
}

- (void)insertItems:(id)items atIndexes:(id)indexes
{
  items = self->_items;
  indexesCopy = indexes;
  itemsCopy = items;
  v9 = [(NSArray *)items mutableCopy];
  [(NSArray *)v9 insertObjects:itemsCopy atIndexes:indexesCopy];

  v10 = self->_items;
  self->_items = v9;
  v11 = v9;

  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(indexesCopy, "count")}];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__GKBasicCollectionViewDataSource_insertItems_atIndexes___block_invoke;
  v14[3] = &unk_27966B1A8;
  v15 = v12;
  v13 = v12;
  [indexesCopy enumerateIndexesUsingBlock:v14];

  [(GKCollectionViewDataSource *)self notifyItemsInsertedAtIndexPaths:v13];
}

void __57__GKBasicCollectionViewDataSource_insertItems_atIndexes___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCAA70] indexPathForItem:a2 inSection:0];
  [v2 addObject:v3];
}

- (void)removeItemsAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  v5 = [(NSArray *)self->_items count];
  v6 = v5 - [indexesCopy count];
  if (v6 < 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v6];
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__2;
  v23 = __Block_byref_object_dispose__2;
  v24 = &__block_literal_global_69;
  v8 = [&__block_literal_global_69 copy];
  v9 = v20[5];
  v20[5] = v8;

  items = self->_items;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__GKBasicCollectionViewDataSource_removeItemsAtIndexes___block_invoke_2;
  v14[3] = &unk_27966B220;
  v18 = &v19;
  v11 = indexesCopy;
  v15 = v11;
  selfCopy = self;
  v12 = v7;
  v17 = v12;
  [(NSArray *)items enumerateObjectsUsingBlock:v14];
  objc_storeStrong(&self->_items, v7);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__GKBasicCollectionViewDataSource_removeItemsAtIndexes___block_invoke_5;
  v13[3] = &unk_279669DD0;
  v13[4] = &v19;
  [(GKCollectionViewDataSource *)self notifyBatchUpdate:v13];

  _Block_object_dispose(&v19, 8);
}

void __56__GKBasicCollectionViewDataSource_removeItemsAtIndexes___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = _Block_copy(*(*(*(a1 + 56) + 8) + 40));
  if ([*(a1 + 32) containsIndex:a3])
  {
    v7 = v18;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __56__GKBasicCollectionViewDataSource_removeItemsAtIndexes___block_invoke_3;
    v18[3] = &unk_27966B1D0;
    v8 = v6;
    v18[4] = *(a1 + 40);
    v18[5] = v8;
    v18[6] = a3;
  }

  else
  {
    v9 = [*(a1 + 48) count];
    [*(a1 + 48) addObject:v5];
    v7 = v17;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __56__GKBasicCollectionViewDataSource_removeItemsAtIndexes___block_invoke_4;
    v17[3] = &unk_27966B1F8;
    v10 = v6;
    v17[4] = *(a1 + 40);
    v17[5] = v10;
    v17[6] = a3;
    v17[7] = v9;
  }

  v11 = _Block_copy(v7);
  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = [*(*(*(a1 + 56) + 8) + 40) copy];
  v15 = *(*(a1 + 56) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;
}

void __56__GKBasicCollectionViewDataSource_removeItemsAtIndexes___block_invoke_3(void *a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  (*(a1[5] + 16))();
  v2 = a1[4];
  v3 = [MEMORY[0x277CCAA70] indexPathForItem:a1[6] inSection:0];
  v5[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  [v2 notifyItemsRemovedAtIndexPaths:v4];
}

void __56__GKBasicCollectionViewDataSource_removeItemsAtIndexes___block_invoke_4(void *a1)
{
  (*(a1[5] + 16))();
  v2 = a1[4];
  v4 = [MEMORY[0x277CCAA70] indexPathForItem:a1[6] inSection:0];
  v3 = [MEMORY[0x277CCAA70] indexPathForItem:a1[7] inSection:0];
  [v2 notifyItemMovedFromIndexPath:v4 toIndexPaths:v3];
}

- (void)replaceItemsAtIndexes:(id)indexes withItems:(id)items
{
  items = self->_items;
  itemsCopy = items;
  indexesCopy = indexes;
  v9 = [(NSArray *)items mutableCopy];
  [(NSArray *)v9 replaceObjectsAtIndexes:indexesCopy withObjects:itemsCopy];

  v10 = self->_items;
  self->_items = v9;
  v11 = v9;

  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(indexesCopy, "count")}];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __67__GKBasicCollectionViewDataSource_replaceItemsAtIndexes_withItems___block_invoke;
  v14[3] = &unk_27966B1A8;
  v15 = v12;
  v13 = v12;
  [indexesCopy enumerateIndexesUsingBlock:v14];

  [(GKCollectionViewDataSource *)self notifyItemsRefreshedAtIndexPaths:v13];
}

void __67__GKBasicCollectionViewDataSource_replaceItemsAtIndexes_withItems___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCAA70] indexPathForItem:a2 inSection:0];
  [v2 addObject:v3];
}

- (void)preloadImagesForItems:(id)items startingAtIndex:(unint64_t)index loadBlock:(id)block
{
  itemsCopy = items;
  blockCopy = block;
  if (blockCopy && [itemsCopy count])
  {
    p_preloadedRange = &self->_preloadedRange;
    location = self->_preloadedRange.location;
    length = self->_preloadedRange.length;
    if (index < location || index - location >= length)
    {
      v13 = length + location;
      pageSize = [(GKBasicCollectionViewDataSource *)self pageSize];
      v15 = [itemsCopy count];
      if (pageSize >= v15 - v13)
      {
        pageSize = v15 - v13;
      }

      v19.location = v13;
      v19.length = pageSize;
      *p_preloadedRange = NSUnionRange(*p_preloadedRange, v19);
      v16 = [itemsCopy subarrayWithRange:{v13, pageSize}];
      blockCopy[2](blockCopy, v16);
    }
  }
}

- (SEL)showAllAction
{
  if (self->_showAllAction)
  {
    return self->_showAllAction;
  }

  else
  {
    return 0;
  }
}

- (void)setShowAllAction:(SEL)action
{
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->_showAllAction = actionCopy;
}

- (_NSRange)preloadedRange
{
  p_preloadedRange = &self->_preloadedRange;
  location = self->_preloadedRange.location;
  length = p_preloadedRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (void)collectionView:(uint64_t)a1 viewForSupplementaryElementOfKind:(NSObject *)a2 atIndexPath:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_24DE53000, a2, OS_LOG_TYPE_DEBUG, "unexpected supplementary view kind encountered: %@", &v2, 0xCu);
}

@end