@interface GKCollectionViewAggregateDataSource
- (BOOL)containsDataSource:(id)source;
- (BOOL)item:(id)item matchesSearchTerms:(id)terms inSection:(int64_t)section;
- (GKCollectionViewAggregateDataSource)init;
- (id)_gkDescription;
- (id)_gkDescriptionWithChildren:(int64_t)children;
- (id)allDataSources;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view evaluateFactoryForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path isRecursive:(BOOL)recursive;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)createMetricsTreeWithGridLayout:(id)layout;
- (id)dataSourceForSection:(unint64_t)section;
- (id)globalIndexPathsForLocal:(id)local dataSource:(id)source;
- (id)globalSectionsForLocal:(id)local dataSource:(id)source;
- (id)indexPathsForItem:(id)item;
- (id)itemAtIndexPath:(id)path;
- (id)mappingForGlobalSection:(int64_t)section;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (unint64_t)sectionForDataSource:(id)source;
- (void)addDataSource:(id)source withTag:(id)tag;
- (void)collectionViewDidBecomeInactive:(id)inactive;
- (void)collectionViewWillBecomeActive:(id)active;
- (void)configureCollectionView:(id)view;
- (void)dataSource:(id)source didInsertItemsAtIndexPaths:(id)paths;
- (void)dataSource:(id)source didInsertSections:(id)sections;
- (void)dataSource:(id)source didMoveItemAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)dataSource:(id)source didMoveSection:(int64_t)section toSection:(int64_t)toSection;
- (void)dataSource:(id)source didRefreshItemsAtIndexPaths:(id)paths;
- (void)dataSource:(id)source didRefreshSections:(id)sections;
- (void)dataSource:(id)source didRemoveItemsAtIndexPaths:(id)paths;
- (void)dataSource:(id)source didRemoveSections:(id)sections;
- (void)refreshContentsForDataType:(unsigned int)type userInfo:(id)info updateNotifier:(id)notifier;
- (void)removeDataSource:(id)source;
- (void)removeItemAtIndexPath:(id)path completionHandler:(id)handler;
- (void)updateMappings;
@end

@implementation GKCollectionViewAggregateDataSource

- (GKCollectionViewAggregateDataSource)init
{
  v10.receiver = self;
  v10.super_class = GKCollectionViewAggregateDataSource;
  v2 = [(GKCollectionViewDataSource *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mappings = v2->_mappings;
    v2->_mappings = v3;

    v5 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:512 valueOptions:0 capacity:1];
    dataSourceToMappings = v2->_dataSourceToMappings;
    v2->_dataSourceToMappings = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    globalSectionToMappings = v2->_globalSectionToMappings;
    v2->_globalSectionToMappings = v7;
  }

  return v2;
}

- (id)_gkDescriptionWithChildren:(int64_t)children
{
  v34 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  v6 = _gkTabStringForTabLevel();
  v32.receiver = self;
  v32.super_class = GKCollectionViewAggregateDataSource;
  childrenCopy = children;
  v7 = [(GKCollectionViewDataSource *)&v32 _gkDescriptionWithChildren:children];
  newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
  v9 = [v7 stringByTrimmingCharactersInSet:newlineCharacterSet];

  v25 = v9;
  [string appendFormat:@"%@\n", v9];
  v10 = v6;
  [string appendFormat:@"%@    sections: {\n", v6];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [(GKCollectionViewAggregateDataSource *)self mappings];
  v11 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v29;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        v15 = string;
        if (*v29 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v28 + 1) + 8 * i);
        dataSource = [v16 dataSource];
        v18 = [dataSource _gkDescriptionWithChildren:childrenCopy + 2];
        whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
        v20 = [v18 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

        v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "globalSectionForLocalSection:", 0)}];
        dynamicTag = [v16 dynamicTag];
        string = v15;
        [v15 appendFormat:@"%@        %@ - %@ - %@\n", v10, v21, dynamicTag, v20];
      }

      v12 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v12);
  }

  [string appendFormat:@"    %@}\n", v10];
  [string appendFormat:@"%@}\n", v10];
  v23 = _gkUnicodifyDescription();

  return string;
}

- (id)_gkDescription
{
  v4.receiver = self;
  v4.super_class = GKCollectionViewAggregateDataSource;
  v2 = [(GKCollectionViewDataSource *)&v4 description];

  return v2;
}

- (void)addDataSource:(id)source withTag:(id)tag
{
  sourceCopy = source;
  tagCopy = tag;
  if (!tagCopy)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKCollectionViewAggregateDataSource.m"];
    lastPathComponent = [v9 lastPathComponent];
    v11 = [v7 stringWithFormat:@"%@ (tag != ((void*)0))\n[%s (%s:%d)]", v8, "-[GKCollectionViewAggregateDataSource addDataSource:withTag:]", objc_msgSend(lastPathComponent, "UTF8String"), 77];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v11}];
  }

  v12 = [(NSMapTable *)self->_dataSourceToMappings objectForKeyedSubscript:sourceCopy];
  if (v12)
  {
    v13 = MEMORY[0x277CCACA8];
    sourceCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"tried to add data source '%@' more than once: %@", tagCopy, sourceCopy];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKCollectionViewAggregateDataSource.m"];
    lastPathComponent2 = [v15 lastPathComponent];
    v17 = [v13 stringWithFormat:@"%@ (mappingForDataSource == nil)\n[%s (%s:%d)]", sourceCopy, "-[GKCollectionViewAggregateDataSource addDataSource:withTag:]", objc_msgSend(lastPathComponent2, "UTF8String"), 80];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v17}];
  }

  v18 = objc_alloc_init(GKAggregateMapping);

  [(GKAggregateMapping *)v18 setDataSource:sourceCopy];
  [(GKAggregateMapping *)v18 setDynamicTag:tagCopy];
  [(NSMutableArray *)self->_mappings addObject:v18];
  [(NSMapTable *)self->_dataSourceToMappings setObject:v18 forKeyedSubscript:sourceCopy];
  [sourceCopy setDelegate:self];
  [(GKCollectionViewAggregateDataSource *)self updateMappings];
  indexSet = [MEMORY[0x277CCAB58] indexSet];
  if ([sourceCopy numberOfSectionsInCollectionView:0])
  {
    v20 = 0;
    do
    {
      [indexSet addIndex:{-[GKAggregateMapping globalSectionForLocalSection:](v18, "globalSectionForLocalSection:", v20++)}];
    }

    while (v20 < [sourceCopy numberOfSectionsInCollectionView:0]);
  }

  [(GKCollectionViewDataSource *)self notifySectionsInserted:indexSet];
}

- (void)removeDataSource:(id)source
{
  sourceCopy = source;
  v4 = [(NSMapTable *)self->_dataSourceToMappings objectForKey:?];

  if (!v4)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKCollectionViewAggregateDataSource.m"];
    lastPathComponent = [v7 lastPathComponent];
    v9 = [v5 stringWithFormat:@"%@ ([_dataSourceToMappings objectForKey:dataSource] != ((void*)0))\n[%s (%s:%d)]", v6, "-[GKCollectionViewAggregateDataSource removeDataSource:]", objc_msgSend(lastPathComponent, "UTF8String"), 99];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v9}];
  }

  [sourceCopy setDelegate:0];
  v10 = [(NSMapTable *)self->_dataSourceToMappings objectForKeyedSubscript:sourceCopy];
  indexSet = [MEMORY[0x277CCAB58] indexSet];
  if ([sourceCopy numberOfSectionsInCollectionView:0])
  {
    v12 = 0;
    do
    {
      [indexSet addIndex:{objc_msgSend(v10, "globalSectionForLocalSection:", v12++)}];
    }

    while (v12 < [sourceCopy numberOfSectionsInCollectionView:0]);
  }

  [(NSMapTable *)self->_dataSourceToMappings removeObjectForKey:sourceCopy];
  [(NSMutableArray *)self->_mappings removeObject:v10];
  [(GKCollectionViewDataSource *)self notifySectionsRemoved:indexSet];
  [(GKCollectionViewAggregateDataSource *)self updateMappings];
}

- (void)updateMappings
{
  v20 = *MEMORY[0x277D85DE8];
  self->_sectionCount = 0;
  [(NSMutableDictionary *)self->_globalSectionToMappings removeAllObjects];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = self->_mappings;
  v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v14 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v15 + 1) + 8 * i);
        v7 = [v6 updateMappingsStartingWithGlobalSection:self->_sectionCount];
        sectionCount = self->_sectionCount;
        if (sectionCount < v7)
        {
          v9 = v7;
          do
          {
            globalSectionToMappings = self->_globalSectionToMappings;
            v11 = MEMORY[0x277CCABB0];
            self->_sectionCount = sectionCount + 1;
            v12 = [v11 numberWithUnsignedInteger:?];
            [(NSMutableDictionary *)globalSectionToMappings setObject:v6 forKeyedSubscript:v12];

            sectionCount = self->_sectionCount;
          }

          while (sectionCount < v9);
        }
      }

      v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }
}

- (unint64_t)sectionForDataSource:(id)source
{
  v3 = [(GKCollectionViewAggregateDataSource *)self mappingForDataSource:source];
  v4 = [v3 globalSectionForLocalSection:0];

  return v4;
}

- (id)dataSourceForSection:(unint64_t)section
{
  globalSectionToMappings = self->_globalSectionToMappings;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v6 = [(NSMutableDictionary *)globalSectionToMappings objectForKeyedSubscript:v5];

  dataSource = [v6 dataSource];
  v8 = [dataSource dataSourceForSection:{objc_msgSend(v6, "localSectionForGlobalSection:", section)}];

  return v8;
}

- (id)mappingForGlobalSection:(int64_t)section
{
  globalSectionToMappings = self->_globalSectionToMappings;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:section];
  v5 = [(NSMutableDictionary *)globalSectionToMappings objectForKeyedSubscript:v4];

  return v5;
}

- (id)globalSectionsForLocal:(id)local dataSource:(id)source
{
  v6 = MEMORY[0x277CCAB58];
  sourceCopy = source;
  localCopy = local;
  indexSet = [v6 indexSet];
  v10 = [(GKCollectionViewAggregateDataSource *)self mappingForDataSource:sourceCopy];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __73__GKCollectionViewAggregateDataSource_globalSectionsForLocal_dataSource___block_invoke;
  v16[3] = &unk_279669F60;
  v11 = indexSet;
  v17 = v11;
  v18 = v10;
  v12 = v10;
  [localCopy enumerateIndexesUsingBlock:v16];

  v13 = v18;
  v14 = v11;

  return v11;
}

uint64_t __73__GKCollectionViewAggregateDataSource_globalSectionsForLocal_dataSource___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) globalSectionForLocalSection:a2];

  return [v2 addIndex:v3];
}

- (id)globalIndexPathsForLocal:(id)local dataSource:(id)source
{
  v22 = *MEMORY[0x277D85DE8];
  localCopy = local;
  sourceCopy = source;
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(localCopy, "count")}];
  v9 = [(GKCollectionViewAggregateDataSource *)self mappingForDataSource:sourceCopy];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = localCopy;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [v9 globalIndexPathForLocalIndexPath:{*(*(&v17 + 1) + 8 * i), v17}];
        [v8 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  return v8;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  viewCopy = view;
  [(GKCollectionViewAggregateDataSource *)self updateMappings];
  v7 = [(GKCollectionViewAggregateDataSource *)self mappingForGlobalSection:section];
  v8 = [v7 localSectionForGlobalSection:section];
  v9 = [(GKCollectionViewAggregateDataSource *)self wrapperForView:viewCopy mapping:v7];

  dataSource = [v7 dataSource];
  v11 = [dataSource numberOfSectionsInCollectionView:v9];

  if (v8 >= v11)
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = [v7 tagForGlobalSection:section];
    v14 = [v12 stringWithFormat:@"Internal consistency check failed: localSection index (%ld) in dataSource %@ not less than numberOfSections (%ld)", v8, v13, v11];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKCollectionViewAggregateDataSource.m"];
    lastPathComponent = [v15 lastPathComponent];
    v17 = [v12 stringWithFormat:@"%@ (localSection < numberOfSections)\n[%s (%s:%d)]", v14, "-[GKCollectionViewAggregateDataSource collectionView:numberOfItemsInSection:]", objc_msgSend(lastPathComponent, "UTF8String"), 187];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v17}];
  }

  dataSource2 = [v7 dataSource];
  v19 = [dataSource2 collectionView:v9 numberOfItemsInSection:v8];

  return v19;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = -[GKCollectionViewAggregateDataSource mappingForGlobalSection:](self, "mappingForGlobalSection:", [pathCopy section]);
  v9 = [v8 localIndexPathForGlobalIndexPath:pathCopy];

  dataSource = [v8 dataSource];
  v11 = [(GKCollectionViewAggregateDataSource *)self wrapperForView:viewCopy mapping:v8];

  v12 = [dataSource collectionView:v11 cellForItemAtIndexPath:v9];

  return v12;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  v11 = [(GKCollectionViewAggregateDataSource *)self collectionView:viewCopy evaluateFactoryForSupplementaryElementOfKind:kindCopy atIndexPath:pathCopy isRecursive:1];
  if (!v11)
  {
    v12 = -[GKCollectionViewAggregateDataSource mappingForGlobalSection:](self, "mappingForGlobalSection:", [pathCopy section]);
    dataSource = [v12 dataSource];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = [v12 localIndexPathForGlobalIndexPath:pathCopy];
      v16 = [(GKCollectionViewAggregateDataSource *)self wrapperForView:viewCopy mapping:v12];
      dataSource2 = [v12 dataSource];
      v18 = [dataSource2 collectionView:v16 viewForSupplementaryElementOfKind:kindCopy atIndexPath:v15];

      if (v18)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    v11 = [(GKCollectionViewDataSource *)self collectionView:viewCopy defaultViewForSupplementaryElementOfKind:kindCopy atIndexPath:pathCopy];
  }

  v18 = v11;
LABEL_8:

  return v18;
}

- (id)collectionView:(id)view evaluateFactoryForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path isRecursive:(BOOL)recursive
{
  recursiveCopy = recursive;
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  v13 = pathCopy;
  if (recursiveCopy)
  {
    v14 = -[GKCollectionViewAggregateDataSource mappingForGlobalSection:](self, "mappingForGlobalSection:", [pathCopy section]);
    dataSource = [v14 dataSource];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      v17 = [v14 localIndexPathForGlobalIndexPath:v13];
      v18 = [(GKCollectionViewAggregateDataSource *)self wrapperForView:viewCopy mapping:v14];
      dataSource2 = [v14 dataSource];
      v20 = [dataSource2 collectionView:v18 evaluateFactoryForSupplementaryElementOfKind:kindCopy atIndexPath:v17 isRecursive:1];

      if (v20)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v22.receiver = self;
  v22.super_class = GKCollectionViewAggregateDataSource;
  v20 = [(GKCollectionViewDataSource *)&v22 collectionView:viewCopy evaluateFactoryForSupplementaryElementOfKind:kindCopy atIndexPath:v13 isRecursive:0];
LABEL_7:

  return v20;
}

- (id)createMetricsTreeWithGridLayout:(id)layout
{
  v23 = *MEMORY[0x277D85DE8];
  layoutCopy = layout;
  v21.receiver = self;
  v21.super_class = GKCollectionViewAggregateDataSource;
  v5 = [(GKCollectionViewDataSource *)&v21 createMetricsTreeWithGridLayout:layoutCopy];
  collectionView = [layoutCopy collectionView];
  v7 = [(GKCollectionViewAggregateDataSource *)self numberOfSectionsInCollectionView:collectionView];

  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableArray count](self->_mappings, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = self->_mappings;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        dataSource = [*(*(&v17 + 1) + 8 * i) dataSource];
        v15 = [dataSource createMetricsTreeWithGridLayout:layoutCopy];

        [v8 addObject:v15];
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v11);
  }

  [v5 setChildMetrics:v8];
  [v5 setLocalSectionRange:{0, v7}];

  return v5;
}

- (void)collectionViewWillBecomeActive:(id)active
{
  v17 = *MEMORY[0x277D85DE8];
  activeCopy = active;
  v15.receiver = self;
  v15.super_class = GKCollectionViewAggregateDataSource;
  [(GKCollectionViewDataSource *)&v15 collectionViewWillBecomeActive:activeCopy];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  allDataSources = [(GKCollectionViewAggregateDataSource *)self allDataSources];
  v6 = [allDataSources countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(allDataSources);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 collectionViewWillBecomeActive:activeCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [allDataSources countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)collectionViewDidBecomeInactive:(id)inactive
{
  v17 = *MEMORY[0x277D85DE8];
  inactiveCopy = inactive;
  v15.receiver = self;
  v15.super_class = GKCollectionViewAggregateDataSource;
  [(GKCollectionViewDataSource *)&v15 collectionViewDidBecomeInactive:inactiveCopy];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  allDataSources = [(GKCollectionViewAggregateDataSource *)self allDataSources];
  v6 = [allDataSources countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(allDataSources);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 collectionViewDidBecomeInactive:inactiveCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [allDataSources countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }
}

- (id)allDataSources
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMapTable count](self->_dataSourceToMappings, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_dataSourceToMappings;
  v5 = [(NSMapTable *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(NSMapTable *)self->_dataSourceToMappings objectForKeyedSubscript:*(*(&v12 + 1) + 8 * i), v12];
        dataSource = [v9 dataSource];
        [v3 addObject:dataSource];
      }

      v6 = [(NSMapTable *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)itemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = -[GKCollectionViewAggregateDataSource mappingForGlobalSection:](self, "mappingForGlobalSection:", [pathCopy section]);
  v6 = [v5 localIndexPathForGlobalIndexPath:pathCopy];

  dataSource = [v5 dataSource];
  v8 = [dataSource itemAtIndexPath:v6];

  return v8;
}

- (id)indexPathsForItem:(id)item
{
  v24 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  array = [MEMORY[0x277CBEB18] array];
  [(GKCollectionViewAggregateDataSource *)self allDataSources];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v22 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [(GKCollectionViewAggregateDataSource *)self mappingForDataSource:v10];
        v12 = [v10 indexPathsForItem:itemCopy];
        if (v12)
        {
          v13 = v12;
          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = __57__GKCollectionViewAggregateDataSource_indexPathsForItem___block_invoke;
          v17[3] = &unk_27966DB20;
          v18 = v11;
          v14 = [v13 _gkMapWithBlock:v17];

          [array addObjectsFromArray:v14];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  return array;
}

- (BOOL)item:(id)item matchesSearchTerms:(id)terms inSection:(int64_t)section
{
  globalSectionToMappings = self->_globalSectionToMappings;
  v8 = MEMORY[0x277CCABB0];
  termsCopy = terms;
  itemCopy = item;
  v11 = [v8 numberWithInteger:section];
  v12 = [(NSMutableDictionary *)globalSectionToMappings objectForKeyedSubscript:v11];

  dataSource = [v12 dataSource];
  LOBYTE(section) = [dataSource item:itemCopy matchesSearchTerms:termsCopy inSection:{objc_msgSend(v12, "localSectionForGlobalSection:", section)}];

  return section;
}

- (void)configureCollectionView:(id)view
{
  v20 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  [(GKCollectionViewAggregateDataSource *)self updateMappings];
  allDataSources = [(GKCollectionViewAggregateDataSource *)self allDataSources];
  v18.receiver = self;
  v18.super_class = GKCollectionViewAggregateDataSource;
  [(GKCollectionViewDataSource *)&v18 configureCollectionView:viewCopy];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = allDataSources;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [(GKCollectionViewAggregateDataSource *)self mappingForDataSource:v11, v14];
        v13 = [(GKCollectionViewAggregateDataSource *)self wrapperForView:viewCopy mapping:v12];
        [v11 configureCollectionView:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v8);
  }
}

- (void)refreshContentsForDataType:(unsigned int)type userInfo:(id)info updateNotifier:(id)notifier
{
  infoCopy = info;
  notifierCopy = notifier;
  updateGroup = [MEMORY[0x277D0C250] updateGroup];
  allDataSources = [(GKCollectionViewAggregateDataSource *)self allDataSources];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __90__GKCollectionViewAggregateDataSource_refreshContentsForDataType_userInfo_updateNotifier___block_invoke;
  v19[3] = &unk_27966DB48;
  v12 = updateGroup;
  typeCopy = type;
  v20 = v12;
  v21 = infoCopy;
  v13 = infoCopy;
  [allDataSources enumerateObjectsUsingBlock:v19];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __90__GKCollectionViewAggregateDataSource_refreshContentsForDataType_userInfo_updateNotifier___block_invoke_3;
  v16[3] = &unk_279669E48;
  v17 = notifierCopy;
  v18 = v12;
  v14 = v12;
  v15 = notifierCopy;
  [v14 join:v16];
}

void __90__GKCollectionViewAggregateDataSource_refreshContentsForDataType_userInfo_updateNotifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __90__GKCollectionViewAggregateDataSource_refreshContentsForDataType_userInfo_updateNotifier___block_invoke_2;
  v6[3] = &unk_27966C740;
  v7 = v3;
  v9 = *(a1 + 48);
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v5 = v3;
  [v4 performOnQueue:MEMORY[0x277D85CD0] block:v6];
}

- (void)removeItemAtIndexPath:(id)path completionHandler:(id)handler
{
  handlerCopy = handler;
  pathCopy = path;
  v10 = -[GKCollectionViewAggregateDataSource mappingForGlobalSection:](self, "mappingForGlobalSection:", [pathCopy section]);
  v8 = [v10 localIndexPathForGlobalIndexPath:pathCopy];

  dataSource = [v10 dataSource];
  [dataSource removeItemAtIndexPath:v8 completionHandler:handlerCopy];
}

- (void)dataSource:(id)source didInsertItemsAtIndexPaths:(id)paths
{
  v5 = [(GKCollectionViewAggregateDataSource *)self globalIndexPathsForLocal:paths dataSource:source];
  [(GKCollectionViewDataSource *)self notifyItemsInsertedAtIndexPaths:v5];
}

- (void)dataSource:(id)source didRemoveItemsAtIndexPaths:(id)paths
{
  v5 = [(GKCollectionViewAggregateDataSource *)self globalIndexPathsForLocal:paths dataSource:source];
  [(GKCollectionViewDataSource *)self notifyItemsRemovedAtIndexPaths:v5];
}

- (void)dataSource:(id)source didRefreshItemsAtIndexPaths:(id)paths
{
  v5 = [(GKCollectionViewAggregateDataSource *)self globalIndexPathsForLocal:paths dataSource:source];
  [(GKCollectionViewDataSource *)self notifyItemsRefreshedAtIndexPaths:v5];
}

- (void)dataSource:(id)source didMoveItemAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  indexPathCopy = indexPath;
  pathCopy = path;
  v12 = [(GKCollectionViewAggregateDataSource *)self mappingForDataSource:source];
  v10 = [v12 globalIndexPathForLocalIndexPath:pathCopy];

  v11 = [v12 globalIndexPathForLocalIndexPath:indexPathCopy];

  [(GKCollectionViewDataSource *)self notifyItemMovedFromIndexPath:v10 toIndexPaths:v11];
}

- (void)dataSource:(id)source didInsertSections:(id)sections
{
  if (sections)
  {
    sectionsCopy = sections;
    sourceCopy = source;
    [(GKCollectionViewAggregateDataSource *)self updateMappings];
    v8 = [(GKCollectionViewAggregateDataSource *)self globalSectionsForLocal:sectionsCopy dataSource:sourceCopy];

    [(GKCollectionViewDataSource *)self notifySectionsInserted:v8];
  }
}

- (void)dataSource:(id)source didRemoveSections:(id)sections
{
  if (sections)
  {
    v5 = [(GKCollectionViewAggregateDataSource *)self globalSectionsForLocal:sections dataSource:source];
    [(GKCollectionViewDataSource *)self notifySectionsRemoved:v5];
    [(GKCollectionViewAggregateDataSource *)self updateMappings];
  }
}

- (void)dataSource:(id)source didRefreshSections:(id)sections
{
  if (sections)
  {
    v5 = [(GKCollectionViewAggregateDataSource *)self globalSectionsForLocal:sections dataSource:source];
    [(GKCollectionViewDataSource *)self notifySectionsRefreshed:v5];
    [(GKCollectionViewAggregateDataSource *)self updateMappings];
  }
}

- (void)dataSource:(id)source didMoveSection:(int64_t)section toSection:(int64_t)toSection
{
  v8 = [(GKCollectionViewAggregateDataSource *)self mappingForDataSource:source];
  -[GKCollectionViewDataSource notifySectionMovedFrom:to:](self, "notifySectionMovedFrom:to:", [v8 globalSectionForLocalSection:section], objc_msgSend(v8, "globalSectionForLocalSection:", toSection));
  [(GKCollectionViewAggregateDataSource *)self updateMappings];
}

- (BOOL)containsDataSource:(id)source
{
  v15 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  [(GKCollectionViewAggregateDataSource *)self allDataSources];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v13 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v10 + 1) + 8 * i) containsDataSource:{sourceCopy, v10}])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

@end