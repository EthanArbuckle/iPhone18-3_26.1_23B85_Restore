@interface GKCollectionViewAggregateDataSource
- (BOOL)containsDataSource:(id)a3;
- (BOOL)item:(id)a3 matchesSearchTerms:(id)a4 inSection:(int64_t)a5;
- (GKCollectionViewAggregateDataSource)init;
- (id)_gkDescription;
- (id)_gkDescriptionWithChildren:(int64_t)a3;
- (id)allDataSources;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 evaluateFactoryForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5 isRecursive:(BOOL)a6;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)createMetricsTreeWithGridLayout:(id)a3;
- (id)dataSourceForSection:(unint64_t)a3;
- (id)globalIndexPathsForLocal:(id)a3 dataSource:(id)a4;
- (id)globalSectionsForLocal:(id)a3 dataSource:(id)a4;
- (id)indexPathsForItem:(id)a3;
- (id)itemAtIndexPath:(id)a3;
- (id)mappingForGlobalSection:(int64_t)a3;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (unint64_t)sectionForDataSource:(id)a3;
- (void)addDataSource:(id)a3 withTag:(id)a4;
- (void)collectionViewDidBecomeInactive:(id)a3;
- (void)collectionViewWillBecomeActive:(id)a3;
- (void)configureCollectionView:(id)a3;
- (void)dataSource:(id)a3 didInsertItemsAtIndexPaths:(id)a4;
- (void)dataSource:(id)a3 didInsertSections:(id)a4;
- (void)dataSource:(id)a3 didMoveItemAtIndexPath:(id)a4 toIndexPath:(id)a5;
- (void)dataSource:(id)a3 didMoveSection:(int64_t)a4 toSection:(int64_t)a5;
- (void)dataSource:(id)a3 didRefreshItemsAtIndexPaths:(id)a4;
- (void)dataSource:(id)a3 didRefreshSections:(id)a4;
- (void)dataSource:(id)a3 didRemoveItemsAtIndexPaths:(id)a4;
- (void)dataSource:(id)a3 didRemoveSections:(id)a4;
- (void)refreshContentsForDataType:(unsigned int)a3 userInfo:(id)a4 updateNotifier:(id)a5;
- (void)removeDataSource:(id)a3;
- (void)removeItemAtIndexPath:(id)a3 completionHandler:(id)a4;
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

- (id)_gkDescriptionWithChildren:(int64_t)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCAB68] string];
  v6 = _gkTabStringForTabLevel();
  v32.receiver = self;
  v32.super_class = GKCollectionViewAggregateDataSource;
  v27 = a3;
  v7 = [(GKCollectionViewDataSource *)&v32 _gkDescriptionWithChildren:a3];
  v8 = [MEMORY[0x277CCA900] newlineCharacterSet];
  v9 = [v7 stringByTrimmingCharactersInSet:v8];

  v25 = v9;
  [v5 appendFormat:@"%@\n", v9];
  v10 = v6;
  [v5 appendFormat:@"%@    sections: {\n", v6];
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
        v15 = v5;
        if (*v29 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v28 + 1) + 8 * i);
        v17 = [v16 dataSource];
        v18 = [v17 _gkDescriptionWithChildren:v27 + 2];
        v19 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
        v20 = [v18 stringByTrimmingCharactersInSet:v19];

        v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "globalSectionForLocalSection:", 0)}];
        v22 = [v16 dynamicTag];
        v5 = v15;
        [v15 appendFormat:@"%@        %@ - %@ - %@\n", v10, v21, v22, v20];
      }

      v12 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v12);
  }

  [v5 appendFormat:@"    %@}\n", v10];
  [v5 appendFormat:@"%@}\n", v10];
  v23 = _gkUnicodifyDescription();

  return v5;
}

- (id)_gkDescription
{
  v4.receiver = self;
  v4.super_class = GKCollectionViewAggregateDataSource;
  v2 = [(GKCollectionViewDataSource *)&v4 description];

  return v2;
}

- (void)addDataSource:(id)a3 withTag:(id)a4
{
  v21 = a3;
  v6 = a4;
  if (!v6)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKCollectionViewAggregateDataSource.m"];
    v10 = [v9 lastPathComponent];
    v11 = [v7 stringWithFormat:@"%@ (tag != ((void*)0))\n[%s (%s:%d)]", v8, "-[GKCollectionViewAggregateDataSource addDataSource:withTag:]", objc_msgSend(v10, "UTF8String"), 77];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v11}];
  }

  v12 = [(NSMapTable *)self->_dataSourceToMappings objectForKeyedSubscript:v21];
  if (v12)
  {
    v13 = MEMORY[0x277CCACA8];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"tried to add data source '%@' more than once: %@", v6, v21];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKCollectionViewAggregateDataSource.m"];
    v16 = [v15 lastPathComponent];
    v17 = [v13 stringWithFormat:@"%@ (mappingForDataSource == nil)\n[%s (%s:%d)]", v14, "-[GKCollectionViewAggregateDataSource addDataSource:withTag:]", objc_msgSend(v16, "UTF8String"), 80];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v17}];
  }

  v18 = objc_alloc_init(GKAggregateMapping);

  [(GKAggregateMapping *)v18 setDataSource:v21];
  [(GKAggregateMapping *)v18 setDynamicTag:v6];
  [(NSMutableArray *)self->_mappings addObject:v18];
  [(NSMapTable *)self->_dataSourceToMappings setObject:v18 forKeyedSubscript:v21];
  [v21 setDelegate:self];
  [(GKCollectionViewAggregateDataSource *)self updateMappings];
  v19 = [MEMORY[0x277CCAB58] indexSet];
  if ([v21 numberOfSectionsInCollectionView:0])
  {
    v20 = 0;
    do
    {
      [v19 addIndex:{-[GKAggregateMapping globalSectionForLocalSection:](v18, "globalSectionForLocalSection:", v20++)}];
    }

    while (v20 < [v21 numberOfSectionsInCollectionView:0]);
  }

  [(GKCollectionViewDataSource *)self notifySectionsInserted:v19];
}

- (void)removeDataSource:(id)a3
{
  v13 = a3;
  v4 = [(NSMapTable *)self->_dataSourceToMappings objectForKey:?];

  if (!v4)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKCollectionViewAggregateDataSource.m"];
    v8 = [v7 lastPathComponent];
    v9 = [v5 stringWithFormat:@"%@ ([_dataSourceToMappings objectForKey:dataSource] != ((void*)0))\n[%s (%s:%d)]", v6, "-[GKCollectionViewAggregateDataSource removeDataSource:]", objc_msgSend(v8, "UTF8String"), 99];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v9}];
  }

  [v13 setDelegate:0];
  v10 = [(NSMapTable *)self->_dataSourceToMappings objectForKeyedSubscript:v13];
  v11 = [MEMORY[0x277CCAB58] indexSet];
  if ([v13 numberOfSectionsInCollectionView:0])
  {
    v12 = 0;
    do
    {
      [v11 addIndex:{objc_msgSend(v10, "globalSectionForLocalSection:", v12++)}];
    }

    while (v12 < [v13 numberOfSectionsInCollectionView:0]);
  }

  [(NSMapTable *)self->_dataSourceToMappings removeObjectForKey:v13];
  [(NSMutableArray *)self->_mappings removeObject:v10];
  [(GKCollectionViewDataSource *)self notifySectionsRemoved:v11];
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

- (unint64_t)sectionForDataSource:(id)a3
{
  v3 = [(GKCollectionViewAggregateDataSource *)self mappingForDataSource:a3];
  v4 = [v3 globalSectionForLocalSection:0];

  return v4;
}

- (id)dataSourceForSection:(unint64_t)a3
{
  globalSectionToMappings = self->_globalSectionToMappings;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v6 = [(NSMutableDictionary *)globalSectionToMappings objectForKeyedSubscript:v5];

  v7 = [v6 dataSource];
  v8 = [v7 dataSourceForSection:{objc_msgSend(v6, "localSectionForGlobalSection:", a3)}];

  return v8;
}

- (id)mappingForGlobalSection:(int64_t)a3
{
  globalSectionToMappings = self->_globalSectionToMappings;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)globalSectionToMappings objectForKeyedSubscript:v4];

  return v5;
}

- (id)globalSectionsForLocal:(id)a3 dataSource:(id)a4
{
  v6 = MEMORY[0x277CCAB58];
  v7 = a4;
  v8 = a3;
  v9 = [v6 indexSet];
  v10 = [(GKCollectionViewAggregateDataSource *)self mappingForDataSource:v7];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __73__GKCollectionViewAggregateDataSource_globalSectionsForLocal_dataSource___block_invoke;
  v16[3] = &unk_279669F60;
  v11 = v9;
  v17 = v11;
  v18 = v10;
  v12 = v10;
  [v8 enumerateIndexesUsingBlock:v16];

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

- (id)globalIndexPathsForLocal:(id)a3 dataSource:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v9 = [(GKCollectionViewAggregateDataSource *)self mappingForDataSource:v7];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v6;
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

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v6 = a3;
  [(GKCollectionViewAggregateDataSource *)self updateMappings];
  v7 = [(GKCollectionViewAggregateDataSource *)self mappingForGlobalSection:a4];
  v8 = [v7 localSectionForGlobalSection:a4];
  v9 = [(GKCollectionViewAggregateDataSource *)self wrapperForView:v6 mapping:v7];

  v10 = [v7 dataSource];
  v11 = [v10 numberOfSectionsInCollectionView:v9];

  if (v8 >= v11)
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = [v7 tagForGlobalSection:a4];
    v14 = [v12 stringWithFormat:@"Internal consistency check failed: localSection index (%ld) in dataSource %@ not less than numberOfSections (%ld)", v8, v13, v11];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKCollectionViewAggregateDataSource.m"];
    v16 = [v15 lastPathComponent];
    v17 = [v12 stringWithFormat:@"%@ (localSection < numberOfSections)\n[%s (%s:%d)]", v14, "-[GKCollectionViewAggregateDataSource collectionView:numberOfItemsInSection:]", objc_msgSend(v16, "UTF8String"), 187];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v17}];
  }

  v18 = [v7 dataSource];
  v19 = [v18 collectionView:v9 numberOfItemsInSection:v8];

  return v19;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = -[GKCollectionViewAggregateDataSource mappingForGlobalSection:](self, "mappingForGlobalSection:", [v6 section]);
  v9 = [v8 localIndexPathForGlobalIndexPath:v6];

  v10 = [v8 dataSource];
  v11 = [(GKCollectionViewAggregateDataSource *)self wrapperForView:v7 mapping:v8];

  v12 = [v10 collectionView:v11 cellForItemAtIndexPath:v9];

  return v12;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(GKCollectionViewAggregateDataSource *)self collectionView:v8 evaluateFactoryForSupplementaryElementOfKind:v9 atIndexPath:v10 isRecursive:1];
  if (!v11)
  {
    v12 = -[GKCollectionViewAggregateDataSource mappingForGlobalSection:](self, "mappingForGlobalSection:", [v10 section]);
    v13 = [v12 dataSource];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = [v12 localIndexPathForGlobalIndexPath:v10];
      v16 = [(GKCollectionViewAggregateDataSource *)self wrapperForView:v8 mapping:v12];
      v17 = [v12 dataSource];
      v18 = [v17 collectionView:v16 viewForSupplementaryElementOfKind:v9 atIndexPath:v15];

      if (v18)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    v11 = [(GKCollectionViewDataSource *)self collectionView:v8 defaultViewForSupplementaryElementOfKind:v9 atIndexPath:v10];
  }

  v18 = v11;
LABEL_8:

  return v18;
}

- (id)collectionView:(id)a3 evaluateFactoryForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5 isRecursive:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (v6)
  {
    v14 = -[GKCollectionViewAggregateDataSource mappingForGlobalSection:](self, "mappingForGlobalSection:", [v12 section]);
    v15 = [v14 dataSource];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      v17 = [v14 localIndexPathForGlobalIndexPath:v13];
      v18 = [(GKCollectionViewAggregateDataSource *)self wrapperForView:v10 mapping:v14];
      v19 = [v14 dataSource];
      v20 = [v19 collectionView:v18 evaluateFactoryForSupplementaryElementOfKind:v11 atIndexPath:v17 isRecursive:1];

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
  v20 = [(GKCollectionViewDataSource *)&v22 collectionView:v10 evaluateFactoryForSupplementaryElementOfKind:v11 atIndexPath:v13 isRecursive:0];
LABEL_7:

  return v20;
}

- (id)createMetricsTreeWithGridLayout:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = GKCollectionViewAggregateDataSource;
  v5 = [(GKCollectionViewDataSource *)&v21 createMetricsTreeWithGridLayout:v4];
  v6 = [v4 collectionView];
  v7 = [(GKCollectionViewAggregateDataSource *)self numberOfSectionsInCollectionView:v6];

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

        v14 = [*(*(&v17 + 1) + 8 * i) dataSource];
        v15 = [v14 createMetricsTreeWithGridLayout:v4];

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

- (void)collectionViewWillBecomeActive:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = GKCollectionViewAggregateDataSource;
  [(GKCollectionViewDataSource *)&v15 collectionViewWillBecomeActive:v4];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(GKCollectionViewAggregateDataSource *)self allDataSources];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 collectionViewWillBecomeActive:v4];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)collectionViewDidBecomeInactive:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = GKCollectionViewAggregateDataSource;
  [(GKCollectionViewDataSource *)&v15 collectionViewDidBecomeInactive:v4];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(GKCollectionViewAggregateDataSource *)self allDataSources];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 collectionViewDidBecomeInactive:v4];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
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
        v10 = [v9 dataSource];
        [v3 addObject:v10];
      }

      v6 = [(NSMapTable *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)itemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = -[GKCollectionViewAggregateDataSource mappingForGlobalSection:](self, "mappingForGlobalSection:", [v4 section]);
  v6 = [v5 localIndexPathForGlobalIndexPath:v4];

  v7 = [v5 dataSource];
  v8 = [v7 itemAtIndexPath:v6];

  return v8;
}

- (id)indexPathsForItem:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = [MEMORY[0x277CBEB18] array];
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
        v12 = [v10 indexPathsForItem:v4];
        if (v12)
        {
          v13 = v12;
          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = __57__GKCollectionViewAggregateDataSource_indexPathsForItem___block_invoke;
          v17[3] = &unk_27966DB20;
          v18 = v11;
          v14 = [v13 _gkMapWithBlock:v17];

          [v16 addObjectsFromArray:v14];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  return v16;
}

- (BOOL)item:(id)a3 matchesSearchTerms:(id)a4 inSection:(int64_t)a5
{
  globalSectionToMappings = self->_globalSectionToMappings;
  v8 = MEMORY[0x277CCABB0];
  v9 = a4;
  v10 = a3;
  v11 = [v8 numberWithInteger:a5];
  v12 = [(NSMutableDictionary *)globalSectionToMappings objectForKeyedSubscript:v11];

  v13 = [v12 dataSource];
  LOBYTE(a5) = [v13 item:v10 matchesSearchTerms:v9 inSection:{objc_msgSend(v12, "localSectionForGlobalSection:", a5)}];

  return a5;
}

- (void)configureCollectionView:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(GKCollectionViewAggregateDataSource *)self updateMappings];
  v5 = [(GKCollectionViewAggregateDataSource *)self allDataSources];
  v18.receiver = self;
  v18.super_class = GKCollectionViewAggregateDataSource;
  [(GKCollectionViewDataSource *)&v18 configureCollectionView:v4];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v5;
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
        v13 = [(GKCollectionViewAggregateDataSource *)self wrapperForView:v4 mapping:v12];
        [v11 configureCollectionView:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v8);
  }
}

- (void)refreshContentsForDataType:(unsigned int)a3 userInfo:(id)a4 updateNotifier:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277D0C250] updateGroup];
  v11 = [(GKCollectionViewAggregateDataSource *)self allDataSources];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __90__GKCollectionViewAggregateDataSource_refreshContentsForDataType_userInfo_updateNotifier___block_invoke;
  v19[3] = &unk_27966DB48;
  v12 = v10;
  v22 = a3;
  v20 = v12;
  v21 = v8;
  v13 = v8;
  [v11 enumerateObjectsUsingBlock:v19];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __90__GKCollectionViewAggregateDataSource_refreshContentsForDataType_userInfo_updateNotifier___block_invoke_3;
  v16[3] = &unk_279669E48;
  v17 = v9;
  v18 = v12;
  v14 = v12;
  v15 = v9;
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

- (void)removeItemAtIndexPath:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = -[GKCollectionViewAggregateDataSource mappingForGlobalSection:](self, "mappingForGlobalSection:", [v7 section]);
  v8 = [v10 localIndexPathForGlobalIndexPath:v7];

  v9 = [v10 dataSource];
  [v9 removeItemAtIndexPath:v8 completionHandler:v6];
}

- (void)dataSource:(id)a3 didInsertItemsAtIndexPaths:(id)a4
{
  v5 = [(GKCollectionViewAggregateDataSource *)self globalIndexPathsForLocal:a4 dataSource:a3];
  [(GKCollectionViewDataSource *)self notifyItemsInsertedAtIndexPaths:v5];
}

- (void)dataSource:(id)a3 didRemoveItemsAtIndexPaths:(id)a4
{
  v5 = [(GKCollectionViewAggregateDataSource *)self globalIndexPathsForLocal:a4 dataSource:a3];
  [(GKCollectionViewDataSource *)self notifyItemsRemovedAtIndexPaths:v5];
}

- (void)dataSource:(id)a3 didRefreshItemsAtIndexPaths:(id)a4
{
  v5 = [(GKCollectionViewAggregateDataSource *)self globalIndexPathsForLocal:a4 dataSource:a3];
  [(GKCollectionViewDataSource *)self notifyItemsRefreshedAtIndexPaths:v5];
}

- (void)dataSource:(id)a3 didMoveItemAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v12 = [(GKCollectionViewAggregateDataSource *)self mappingForDataSource:a3];
  v10 = [v12 globalIndexPathForLocalIndexPath:v9];

  v11 = [v12 globalIndexPathForLocalIndexPath:v8];

  [(GKCollectionViewDataSource *)self notifyItemMovedFromIndexPath:v10 toIndexPaths:v11];
}

- (void)dataSource:(id)a3 didInsertSections:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v7 = a3;
    [(GKCollectionViewAggregateDataSource *)self updateMappings];
    v8 = [(GKCollectionViewAggregateDataSource *)self globalSectionsForLocal:v6 dataSource:v7];

    [(GKCollectionViewDataSource *)self notifySectionsInserted:v8];
  }
}

- (void)dataSource:(id)a3 didRemoveSections:(id)a4
{
  if (a4)
  {
    v5 = [(GKCollectionViewAggregateDataSource *)self globalSectionsForLocal:a4 dataSource:a3];
    [(GKCollectionViewDataSource *)self notifySectionsRemoved:v5];
    [(GKCollectionViewAggregateDataSource *)self updateMappings];
  }
}

- (void)dataSource:(id)a3 didRefreshSections:(id)a4
{
  if (a4)
  {
    v5 = [(GKCollectionViewAggregateDataSource *)self globalSectionsForLocal:a4 dataSource:a3];
    [(GKCollectionViewDataSource *)self notifySectionsRefreshed:v5];
    [(GKCollectionViewAggregateDataSource *)self updateMappings];
  }
}

- (void)dataSource:(id)a3 didMoveSection:(int64_t)a4 toSection:(int64_t)a5
{
  v8 = [(GKCollectionViewAggregateDataSource *)self mappingForDataSource:a3];
  -[GKCollectionViewDataSource notifySectionMovedFrom:to:](self, "notifySectionMovedFrom:to:", [v8 globalSectionForLocalSection:a4], objc_msgSend(v8, "globalSectionForLocalSection:", a5));
  [(GKCollectionViewAggregateDataSource *)self updateMappings];
}

- (BOOL)containsDataSource:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

        if ([*(*(&v10 + 1) + 8 * i) containsDataSource:{v4, v10}])
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