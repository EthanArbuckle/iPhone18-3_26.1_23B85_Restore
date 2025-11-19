@interface GKCollectionViewDataSource
- (BOOL)isRootDataSource;
- (BOOL)isSearchable;
- (BOOL)item:(id)a3 matchesSearchTerms:(id)a4 inSection:(int64_t)a5;
- (GKCollectionViewDataSource)init;
- (GKCollectionViewDataSourceDelegate)delegate;
- (GKGridLayoutMetrics)dataSourceMetrics;
- (GKSectionMetrics)defaultSectionMetrics;
- (id)_gkDescriptionWithChildren:(int64_t)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 defaultViewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)collectionView:(id)a3 evaluateFactoryForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5 isRecursive:(BOOL)a6;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)createMetricsTreeWithGridLayout:(id)a3;
- (id)indexPathsForItem:(id)a3;
- (id)itemAtIndexPath:(id)a3;
- (id)localDescription;
- (id)metricsForSection:(int64_t)a3;
- (id)metricsForSectionInternal:(int64_t)a3;
- (id)searchKeyForSection:(int64_t)a3;
- (id)targetForAction:(SEL)a3;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)totalItemCount;
- (void)configureCollectionView:(id)a3;
- (void)enumerateItemsAndIndexPathsUsingBlock:(id)a3;
- (void)loadDataWithCompletionHandlerAndError:(id)a3;
- (void)notifyBatchUpdate:(id)a3;
- (void)notifyBatchUpdate:(id)a3 complete:(id)a4;
- (void)notifyDidReloadData;
- (void)notifyItemMovedFromIndexPath:(id)a3 toIndexPaths:(id)a4;
- (void)notifyItemsInsertedAtIndexPaths:(id)a3;
- (void)notifyItemsRefreshedAtIndexPaths:(id)a3;
- (void)notifyItemsRemovedAtIndexPaths:(id)a3;
- (void)notifyPlaceholderUpdated:(BOOL)a3;
- (void)notifySectionMovedFrom:(int64_t)a3 to:(int64_t)a4;
- (void)notifySectionsInserted:(id)a3;
- (void)notifySectionsMovedWithItems;
- (void)notifySectionsRefreshed:(id)a3;
- (void)notifySectionsRemoved:(id)a3;
- (void)refreshContentsForDataType:(unsigned int)a3 userInfo:(id)a4 updateNotifier:(id)a5;
- (void)registerSupplementaryViewOfKind:(id)a3 withClass:(Class)a4 target:(id)a5 configurator:(SEL)a6;
- (void)registerSupplementaryViewOfKind:(id)a3 withFactory:(id)a4;
- (void)removeItemAtIndexPath:(id)a3 completionHandler:(id)a4;
- (void)setDataSourceMetrics:(id)a3;
- (void)setDefaultSectionMetrics:(id)a3;
- (void)setMetrics:(id)a3 forSection:(int64_t)a4;
- (void)setSearchKey:(id)a3 forSection:(int64_t)a4;
- (void)updateSupplementaryMetricsForKey:(id)a3 usingBlock:(id)a4;
@end

@implementation GKCollectionViewDataSource

- (GKCollectionViewDataSource)init
{
  v6.receiver = self;
  v6.super_class = GKCollectionViewDataSource;
  v2 = [(GKCollectionViewDataSource *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    listeners = v2->_listeners;
    v2->_listeners = v3;
  }

  return v2;
}

- (id)localDescription
{
  v3 = [MEMORY[0x277CCAB68] string];
  v19.receiver = self;
  v19.super_class = GKCollectionViewDataSource;
  v4 = [(GKCollectionViewDataSource *)&v19 description];
  v5 = v4;
  if (self->_defaultSearchKey)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = _gkBeautifyVariableName();
    v8 = [v6 stringWithFormat:@" %@: %@", v7, self->_defaultSearchKey];
    [v3 appendFormat:@"%@%@", v5, v8];
  }

  else
  {
    [v3 appendFormat:@"%@%@", v4, &stru_28612D290];
  }

  v9 = [(GKCollectionViewDataSource *)self numberOfSectionsInCollectionView:0];
  if (v9 == 1)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:{-[GKCollectionViewDataSource collectionView:numberOfItemsInSection:](self, "collectionView:numberOfItemsInSection:", 0, 0)}];
    [v3 appendFormat:@" %@ item(s)", v12];
  }

  else
  {
    v10 = v9;
    if (v9)
    {
      v13 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
      [v3 appendFormat:@" %@ sections: <", v13];

      if (v10 >= 1)
      {
        for (i = 0; i != v10; ++i)
        {
          v15 = [(GKCollectionViewDataSource *)self collectionView:0 numberOfItemsInSection:i];
          if (i)
          {
            v16 = @", ";
          }

          else
          {
            v16 = &stru_28612D290;
          }

          v17 = [MEMORY[0x277CCABB0] numberWithInteger:v15];
          [v3 appendFormat:@"%@%@", v16, v17];
        }
      }

      v11 = @">";
    }

    else
    {
      v11 = @" no sections";
    }

    [v3 appendString:v11];
  }

  return v3;
}

- (id)_gkDescriptionWithChildren:(int64_t)a3
{
  v70 = *MEMORY[0x277D85DE8];
  v4 = _gkTabStringForTabLevel();
  v5 = [MEMORY[0x277CCAB68] string];
  v67.receiver = self;
  v67.super_class = GKCollectionViewDataSource;
  v6 = [(GKCollectionViewDataSource *)&v67 description];
  v7 = v6;
  if (self->_defaultSearchKey)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = _gkBeautifyVariableName();
    v10 = [v8 stringWithFormat:@" %@: %@", v9, self->_defaultSearchKey];
    [v5 appendFormat:@"%@%@%@", v4, v7, v10];
  }

  else
  {
    [v5 appendFormat:@"%@%@%@", v4, v6, &stru_28612D290];
  }

  v11 = [(GKCollectionViewDataSource *)self numberOfSectionsInCollectionView:0];
  v58 = v4;
  if (v11 == 1)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[GKCollectionViewDataSource collectionView:numberOfItemsInSection:](self, "collectionView:numberOfItemsInSection:", 0, 0)}];
    [v5 appendFormat:@" %@ item(s)", v13];
  }

  else
  {
    v12 = v11;
    if (v11)
    {
      v14 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
      [v5 appendFormat:@" %@ sections: <", v14];

      if (v12 >= 1)
      {
        for (i = 0; i != v12; ++i)
        {
          v16 = [(GKCollectionViewDataSource *)self collectionView:0 numberOfItemsInSection:i];
          if (i)
          {
            v17 = @", ";
          }

          else
          {
            v17 = &stru_28612D290;
          }

          v18 = [MEMORY[0x277CCABB0] numberWithInteger:v16];
          [v5 appendFormat:@"%@%@", v17, v18];
        }
      }

      [v5 appendString:@">"];
      v4 = v58;
    }

    else
    {
      [v5 appendString:@" no sections"];
    }
  }

  v19 = [(NSMutableDictionary *)self->_sectionsToSearchKeys allKeys];
  v20 = @" {\n";
  v57 = self;
  if ([v19 count])
  {
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@    %@sectionSearchKeys:\n", @" {\n", v4];
    [v5 appendString:v21];

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v22 = v19;
    v23 = [v22 countByEnumeratingWithState:&v63 objects:v69 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v64;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v64 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v63 + 1) + 8 * j);
          v28 = [(NSMutableDictionary *)self->_sectionsToSearchKeys objectForKeyedSubscript:v27];
          v52 = v27;
          v4 = v58;
          [v5 appendFormat:@"    %@%@ - %@", v58, v52, v28];

          self = v57;
        }

        v24 = [v22 countByEnumeratingWithState:&v63 objects:v69 count:16];
      }

      while (v24);
    }

    v20 = &stru_28612D290;
  }

  dataSourceMetricsInternal = self->_dataSourceMetricsInternal;
  if (dataSourceMetricsInternal)
  {
    v30 = MEMORY[0x277CCACA8];
    v31 = [(GKGridLayoutMetrics *)dataSourceMetricsInternal _gkDescriptionWithChildren:a3 + 2];
    v32 = [v30 stringWithFormat:@"%@    %@overallMetrics: {\n%@", v20, v4, v31];
    [v5 appendString:v32];

    [v5 appendFormat:@"%@    }\n", v4];
    v20 = &stru_28612D290;
  }

  defaultSectionMetricsInternal = self->_defaultSectionMetricsInternal;
  if (defaultSectionMetricsInternal)
  {
    v34 = MEMORY[0x277CCACA8];
    v35 = [(GKGridLayoutMetrics *)defaultSectionMetricsInternal _gkDescriptionWithChildren:a3 + 2];
    v36 = [v34 stringWithFormat:@"%@    %@defaultSectionMetrics: {\n%@", v20, v4, v35];
    [v5 appendString:v36];

    [v5 appendFormat:@"%@    }\n", v4];
    v20 = &stru_28612D290;
  }

  v37 = [(NSMutableDictionary *)self->_sectionsToMetrics allKeys];

  if ([v37 count])
  {
    v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@    %@sectionMetrics: {\n", v20, v4];
    [v5 appendString:v38];

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v54 = v37;
    obj = v37;
    v39 = [obj countByEnumeratingWithState:&v59 objects:v68 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v60;
      do
      {
        for (k = 0; k != v40; ++k)
        {
          v43 = v5;
          if (*v60 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v44 = *(*(&v59 + 1) + 8 * k);
          v45 = [(NSMutableDictionary *)self->_sectionsToMetrics objectForKeyedSubscript:v44];
          v46 = [v45 _gkDescriptionWithChildren:a3 + 2];
          v47 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
          v48 = [v46 stringByTrimmingCharactersInSet:v47];

          v53 = v44;
          v4 = v58;
          v5 = v43;
          [v43 appendFormat:@"        %@%@ - %@", v58, v53, v48];

          self = v57;
        }

        v40 = [obj countByEnumeratingWithState:&v59 objects:v68 count:16];
      }

      while (v40);
    }

    [v5 appendFormat:@"%@    }\n", v4];
    v20 = &stru_28612D290;
    v37 = v54;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [v5 appendFormat:&stru_28612D290, v51];
  }

  else if (![(__CFString *)v20 length])
  {
    [v5 appendFormat:@"%@}\n", v4];
  }

  v49 = _gkUnicodifyDescription();

  return v5;
}

- (id)itemAtIndexPath:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ needs to implement me!", objc_opt_class()];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKCollectionViewDataSource.m"];
  v6 = [v5 lastPathComponent];
  v7 = [v3 stringWithFormat:@"%@ (NO)\n[%s (%s:%d)]", v4, "-[GKCollectionViewDataSource itemAtIndexPath:]", objc_msgSend(v6, "UTF8String"), 310];

  [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v7}];
  return 0;
}

- (id)indexPathsForItem:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ needs to implement me!", objc_opt_class()];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKCollectionViewDataSource.m"];
  v6 = [v5 lastPathComponent];
  v7 = [v3 stringWithFormat:@"%@ (NO)\n[%s (%s:%d)]", v4, "-[GKCollectionViewDataSource indexPathsForItem:]", objc_msgSend(v6, "UTF8String"), 316];

  [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v7}];
  return 0;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ needs to implement me!", objc_opt_class()];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKCollectionViewDataSource.m"];
  v7 = [v6 lastPathComponent];
  v8 = [v4 stringWithFormat:@"%@ (NO)\n[%s (%s:%d)]", v5, "-[GKCollectionViewDataSource collectionView:numberOfItemsInSection:]", objc_msgSend(v7, "UTF8String"), 327];

  [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v8}];
  return 0;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ needs to implement me!", objc_opt_class()];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKCollectionViewDataSource.m"];
  v7 = [v6 lastPathComponent];
  v8 = [v4 stringWithFormat:@"%@ (NO)\n[%s (%s:%d)]", v5, "-[GKCollectionViewDataSource collectionView:cellForItemAtIndexPath:]", objc_msgSend(v7, "UTF8String"), 333];

  [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v8}];
  return 0;
}

- (void)removeItemAtIndexPath:(id)a3 completionHandler:(id)a4
{
  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ needs to implement me!", objc_opt_class()];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKCollectionViewDataSource.m"];
  v7 = [v6 lastPathComponent];
  v8 = [v4 stringWithFormat:@"%@ (NO)\n[%s (%s:%d)]", v5, "-[GKCollectionViewDataSource removeItemAtIndexPath:completionHandler:]", objc_msgSend(v7, "UTF8String"), 339];

  [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v8}];
}

- (void)configureCollectionView:(id)a3
{
  v4 = a3;
  if ([(GKCollectionViewDataSource *)self isRootDataSource])
  {
    [objc_opt_class() registerSupplementaryViewClassesForKind:@"IncrementalReveal" withCollectionView:v4];
    [objc_opt_class() registerSupplementaryViewClassesForKind:@"SearchBar" withCollectionView:v4];
    [v4 _gkRegisterClass:objc_opt_class() forSupplementaryViewOfKind:@"ClipArea"];
    [v4 _gkRegisterClass:objc_opt_class() forSupplementaryViewOfKind:@"SearchPlaceholderMetricKey"];
  }
}

- (void)refreshContentsForDataType:(unsigned int)a3 userInfo:(id)a4 updateNotifier:(id)a5
{
  v6 = a5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __81__GKCollectionViewDataSource_refreshContentsForDataType_userInfo_updateNotifier___block_invoke;
  v8[3] = &unk_279669D38;
  v9 = v6;
  v7 = v6;
  [(GKCollectionViewDataSource *)self loadDataWithCompletionHandlerAndError:v8];
}

- (void)loadDataWithCompletionHandlerAndError:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ needs to implement me!", objc_opt_class()];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKCollectionViewDataSource.m"];
  v6 = [v5 lastPathComponent];
  v7 = [v3 stringWithFormat:@"%@ (NO)\n[%s (%s:%d)]", v4, "-[GKCollectionViewDataSource loadDataWithCompletionHandlerAndError:]", objc_msgSend(v6, "UTF8String"), 378];

  [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v7}];
}

- (id)searchKeyForSection:(int64_t)a3
{
  sectionsToSearchKeys = self->_sectionsToSearchKeys;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v7 = [(NSMutableDictionary *)sectionsToSearchKeys objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = self->_defaultSearchKey;
    if (v8)
    {
      v7 = v8;
    }

    else
    {
      v9 = [(GKCollectionViewDataSource *)self delegate];
      while (1)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        v7 = [v9 searchKeyForSection:a3];
        v10 = [v9 delegate];

        v9 = v10;
        if (v7)
        {
          v9 = v10;
          goto LABEL_9;
        }
      }

      v7 = 0;
LABEL_9:
    }
  }

  return v7;
}

- (void)setSearchKey:(id)a3 forSection:(int64_t)a4
{
  v9 = a3;
  sectionsToSearchKeys = self->_sectionsToSearchKeys;
  if (!sectionsToSearchKeys)
  {
    v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[GKCollectionViewDataSource numberOfSectionsInCollectionView:](self, "numberOfSectionsInCollectionView:", 0)}];
    [(GKCollectionViewDataSource *)self setSectionsToSearchKeys:v7];

    sectionsToSearchKeys = self->_sectionsToSearchKeys;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  [(NSMutableDictionary *)sectionsToSearchKeys setObject:v9 forKeyedSubscript:v8];
}

- (BOOL)item:(id)a3 matchesSearchTerms:(id)a4 inSection:(int64_t)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v22 = a3;
  v8 = a4;
  v9 = v8;
  if (v8 && [v8 count])
  {
    v20 = v9;
    v21 = [(GKCollectionViewDataSource *)self searchKeyForSection:a5];
    v10 = v21;
    if ([v21 length])
    {
      v11 = [v22 valueForKeyPath:v21];
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v12 = v20;
      v13 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v13)
      {
        v14 = *v29;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v29 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v28 + 1) + 8 * i);
            if ([v16 length])
            {
              v24 = 0;
              v25 = &v24;
              v26 = 0x2020000000;
              v27 = 0;
              v17 = [v11 length];
              v23[0] = MEMORY[0x277D85DD0];
              v23[1] = 3221225472;
              v23[2] = __64__GKCollectionViewDataSource_item_matchesSearchTerms_inSection___block_invoke;
              v23[3] = &unk_27966DBE8;
              v23[4] = v16;
              v23[5] = &v24;
              [v11 enumerateSubstringsInRange:0 options:v17 usingBlock:{1027, v23}];
              v18 = *(v25 + 24);
              _Block_object_dispose(&v24, 8);
              if (v18)
              {
                LOBYTE(v13) = 1;
                goto LABEL_17;
              }
            }
          }

          v13 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

LABEL_17:

      v10 = v21;
    }

    else
    {
      LOBYTE(v13) = 0;
    }

    v9 = v20;
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13;
}

uint64_t __64__GKCollectionViewDataSource_item_matchesSearchTerms_inSection___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  result = [a2 rangeOfString:*(a1 + 32) options:897];
  if (!result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a7 = 1;
  }

  return result;
}

- (void)enumerateItemsAndIndexPathsUsingBlock:(id)a3
{
  v4 = a3;
  v21 = [(GKCollectionViewDataSource *)self numberOfSectionsInCollectionView:0];
  if (v21 >= 1)
  {
    v5 = 0;
    v6 = 0x277CCA000uLL;
    v22 = self;
    while (1)
    {
      v7 = [(GKCollectionViewDataSource *)self collectionView:0 numberOfItemsInSection:v5];
      if (v7 >= 1)
      {
        break;
      }

LABEL_9:
      if (++v5 == v21)
      {
        goto LABEL_10;
      }
    }

    v8 = v7;
    v9 = 0;
    v23 = v7;
    while (1)
    {
      v24 = 0;
      v10 = [*(v6 + 2672) indexPathForItem:v9 inSection:v5];
      v11 = [(GKCollectionViewDataSource *)self itemAtIndexPath:v10];
      if (!v11)
      {
        v12 = MEMORY[0x277CCACA8];
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
        [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKCollectionViewDataSource.m"];
        v14 = v4;
        v15 = v5;
        v17 = v16 = v6;
        v18 = [v17 lastPathComponent];
        v19 = [v12 stringWithFormat:@"%@ (item != ((void*)0))\n[%s (%s:%d)]", v13, "-[GKCollectionViewDataSource enumerateItemsAndIndexPathsUsingBlock:]", objc_msgSend(v18, "UTF8String"), 456];

        v6 = v16;
        v5 = v15;
        v4 = v14;
        v8 = v23;

        [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v19}];
        self = v22;
      }

      v4[2](v4, v11, v10, &v24);
      v20 = v24;

      if (v20)
      {
        break;
      }

      if (v8 == ++v9)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_10:
}

- (BOOL)isSearchable
{
  if ([(NSString *)self->_defaultSearchKey length])
  {
    return 1;
  }

  v3 = [(NSMutableDictionary *)self->_sectionsToSearchKeys allValues];
  v4 = [v3 count];

  if (v4)
  {
    return 1;
  }

  v6 = [(GKCollectionViewDataSource *)self numberOfSectionsInCollectionView:0];
  if (v6 >= 1)
  {
    v7 = v6;
    v8 = 0;
    while (1)
    {
      v9 = [(GKCollectionViewDataSource *)self dataSourceForSection:v8];
      v10 = v9;
      if (v9 != self)
      {
        if ([(GKCollectionViewDataSource *)v9 isSearchable])
        {
          break;
        }
      }

      if (v7 == ++v8)
      {
        return 0;
      }
    }

    return 1;
  }

  return 0;
}

- (GKGridLayoutMetrics)dataSourceMetrics
{
  dataSourceMetricsInternal = self->_dataSourceMetricsInternal;
  if (!dataSourceMetricsInternal)
  {
    v4 = +[GKGridLayoutMetrics metrics];
    [(GKCollectionViewDataSource *)self setDataSourceMetricsInternal:v4];

    dataSourceMetricsInternal = self->_dataSourceMetricsInternal;
  }

  return dataSourceMetricsInternal;
}

- (void)setDataSourceMetrics:(id)a3
{
  v4 = [a3 copy];
  [(GKCollectionViewDataSource *)self setDataSourceMetricsInternal:v4];
}

- (void)updateSupplementaryMetricsForKey:(id)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(GKCollectionViewDataSource *)self dataSourceMetrics];
  v8 = [v9 supplementaryMetricsForKey:v7];
  v6[2](v6, v8);

  [v9 replaceSupplementaryMetrics:v8 forKey:v7];
}

- (GKSectionMetrics)defaultSectionMetrics
{
  defaultSectionMetricsInternal = self->_defaultSectionMetricsInternal;
  if (!defaultSectionMetricsInternal)
  {
    v4 = +[(GKGridLayoutMetrics *)GKSectionMetrics];
    [(GKCollectionViewDataSource *)self setDefaultSectionMetricsInternal:v4];

    defaultSectionMetricsInternal = self->_defaultSectionMetricsInternal;
  }

  return defaultSectionMetricsInternal;
}

- (void)setDefaultSectionMetrics:(id)a3
{
  v4 = [a3 copy];
  [(GKCollectionViewDataSource *)self setDefaultSectionMetricsInternal:v4];
}

- (id)metricsForSection:(int64_t)a3
{
  if (a3 < 0)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKCollectionViewDataSource.m"];
    v8 = [v7 lastPathComponent];
    v9 = [v5 stringWithFormat:@"%@ (section >= 0)\n[%s (%s:%d)]", v6, "-[GKCollectionViewDataSource metricsForSection:]", objc_msgSend(v8, "UTF8String"), 530];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v9}];
  }

  sectionsToMetrics = self->_sectionsToMetrics;
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v12 = [(NSMutableDictionary *)sectionsToMetrics objectForKeyedSubscript:v11];

  if (!v12)
  {
    v12 = [(GKCollectionViewDataSource *)self defaultSectionMetrics];
  }

  return v12;
}

- (id)metricsForSectionInternal:(int64_t)a3
{
  if (a3 < 0)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKCollectionViewDataSource.m"];
    v8 = [v7 lastPathComponent];
    v9 = [v5 stringWithFormat:@"%@ (section >= 0)\n[%s (%s:%d)]", v6, "-[GKCollectionViewDataSource metricsForSectionInternal:]", objc_msgSend(v8, "UTF8String"), 539];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v9}];
  }

  sectionsToMetrics = self->_sectionsToMetrics;
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v12 = [(NSMutableDictionary *)sectionsToMetrics objectForKeyedSubscript:v11];

  if (!v12)
  {
    v12 = [(GKCollectionViewDataSource *)self defaultSectionMetricsInternal];
  }

  return v12;
}

- (void)setMetrics:(id)a3 forSection:(int64_t)a4
{
  v10 = a3;
  sectionsToMetrics = self->_sectionsToMetrics;
  if (!sectionsToMetrics)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
    v8 = self->_sectionsToMetrics;
    self->_sectionsToMetrics = v7;

    sectionsToMetrics = self->_sectionsToMetrics;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  [(NSMutableDictionary *)sectionsToMetrics setObject:v10 forKeyedSubscript:v9];
}

- (id)createMetricsTreeWithGridLayout:(id)a3
{
  v4 = a3;
  v5 = [(GKCollectionViewDataSource *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(GKCollectionViewDataSource *)self delegate];
    [v7 updateMetrics];
  }

  v8 = [GKDataSourceMetrics dataSourceMetricsWithMetrics:self->_dataSourceMetricsInternal dataSource:self];
  v9 = [v4 collectionView];
  [v8 configureCollectionView:v9];

  v10 = [v4 collectionView];
  v11 = [(GKCollectionViewDataSource *)self numberOfSectionsInCollectionView:v10];

  if (v11 >= 1)
  {
    for (i = 0; i != v11; ++i)
    {
      v13 = [(GKCollectionViewDataSource *)self metricsForSectionInternal:i];
      if (v13)
      {
        [v8 setMetrics:v13 forSection:i];
        v14 = [v4 collectionView];
        [v13 configureCollectionView:v14];
      }
    }
  }

  [v8 setLocalSectionRange:{0, v11}];

  return v8;
}

- (BOOL)isRootDataSource
{
  v2 = [(GKCollectionViewDataSource *)self delegate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)collectionView:(id)a3 defaultViewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![(GKCollectionViewDataSource *)self isRootDataSource])
  {
LABEL_16:
    v11 = 0;
    goto LABEL_17;
  }

  if ([v9 isEqualToString:@"IncrementalReveal"])
  {
    v11 = [v8 _gkDequeueSupplementaryViewForClass:objc_opt_class() ofKind:v9 forIndexPath:v10];
    [v11 setShowMoreAction:sel_didTouchShowMore_];
    goto LABEL_17;
  }

  if (![v9 isEqualToString:@"SearchBar"])
  {
    if ([v9 isEqualToString:@"ClipArea"])
    {
      v11 = [v8 _gkDequeueSupplementaryViewForClass:objc_opt_class() ofKind:v9 forIndexPath:v10];
      goto LABEL_17;
    }

    if ([v9 isEqualToString:@"SearchPlaceholderMetricKey"])
    {
      v11 = [v8 _gkDequeueSupplementaryViewForClass:objc_opt_class() ofKind:v9 forIndexPath:v10];
      [v11 setNoContentTitle:@" "];
      v30 = GKGameCenterUIFrameworkBundle();
      v31 = GKGetLocalizedStringFromTableInBundle();
      [v11 setNoContentMessage:v31];

      [v11 setLoadingState:@"NoContentState"];
      [v11 setAlignment:1];
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v11 = [v8 _gkDequeueSupplementaryViewForClass:objc_opt_class() ofKind:v9 forIndexPath:v10];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v13 = [WeakRetained conformsToProtocol:&unk_2861CFFF0];

  if ((v13 & 1) == 0)
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = objc_loadWeakRetained(&self->_delegate);
    v16 = [v14 stringWithFormat:@"%@ doesn't conform to UISearchBarDelegate", v15];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKCollectionViewDataSource.m"];
    v18 = [v17 lastPathComponent];
    v19 = [v14 stringWithFormat:@"%@ ([_delegate conformsToProtocol:@protocol(UISearchBarDelegate)])\n[%s (%s:%d)]", v16, "-[GKCollectionViewDataSource collectionView:defaultViewForSupplementaryElementOfKind:atIndexPath:]", objc_msgSend(v18, "UTF8String"), 592];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v19}];
  }

  v20 = objc_loadWeakRetained(&self->_delegate);
  [v11 setDelegate:v20];

  v21 = objc_loadWeakRetained(&self->_delegate);
  v22 = objc_opt_respondsToSelector();

  if (v22)
  {
    v23 = objc_loadWeakRetained(&self->_delegate);
    v24 = [v23 performSelector:sel_activeSearchBar];

    [v24 resignFirstResponder];
    if (v24)
    {
      v25 = [v24 text];
      v26 = [v25 length];

      if (v26)
      {
        v27 = [v24 text];
        v28 = [v11 searchBar];
        [v28 setText:v27];

        v29 = [v11 searchBar];
        [v29 becomeFirstResponder];
      }
    }
  }

LABEL_17:

  return v11;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(GKCollectionViewDataSource *)self collectionView:v8 evaluateFactoryForSupplementaryElementOfKind:v9 atIndexPath:v10 isRecursive:0];
  if (!v11)
  {
    v11 = [(GKCollectionViewDataSource *)self collectionView:v8 defaultViewForSupplementaryElementOfKind:v9 atIndexPath:v10];
  }

  return v11;
}

- (id)collectionView:(id)a3 evaluateFactoryForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5 isRecursive:(BOOL)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v9 collectionViewLayout];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v12 attributesForSupplementaryIndexPath:v11];
    v14 = [v13 supplementaryMetrics];
    if ([v14 reusableViewClass])
    {
      v15 = [v14 reusableViewClass];
      v16 = [v14 kind];
      v17 = [v9 _gkDequeueSupplementaryViewForClass:v15 ofKind:v16 forIndexPath:v11];

      if (v17)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v18 = [(GKCollectionViewDataSource *)self supplementaryViewFactoryForKind:v10];
  v17 = [v18 collectionView:v9 viewForSupplementaryElementOfKind:v10 atIndexPath:v11];

LABEL_7:

  return v17;
}

- (int64_t)totalItemCount
{
  v3 = [(GKCollectionViewDataSource *)self numberOfSectionsInCollectionView:0];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = 0;
  v6 = 0;
  do
  {
    v6 += [(GKCollectionViewDataSource *)self collectionView:0 numberOfItemsInSection:v5++];
  }

  while (v4 != v5);
  return v6;
}

- (void)notifyItemsInsertedAtIndexPaths:(id)a3
{
  v5 = a3;
  v4 = [(GKCollectionViewDataSource *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 dataSource:self didInsertItemsAtIndexPaths:v5];
  }
}

- (void)notifyItemsRemovedAtIndexPaths:(id)a3
{
  v5 = a3;
  v4 = [(GKCollectionViewDataSource *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 dataSource:self didRemoveItemsAtIndexPaths:v5];
  }
}

- (void)notifyItemsRefreshedAtIndexPaths:(id)a3
{
  v5 = a3;
  v4 = [(GKCollectionViewDataSource *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 dataSource:self didRefreshItemsAtIndexPaths:v5];
  }
}

- (void)notifyItemMovedFromIndexPath:(id)a3 toIndexPaths:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(GKCollectionViewDataSource *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 dataSource:self didMoveItemAtIndexPath:v8 toIndexPath:v6];
  }
}

- (void)notifySectionsInserted:(id)a3
{
  v5 = a3;
  v4 = [(GKCollectionViewDataSource *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 dataSource:self didInsertSections:v5];
  }
}

- (void)notifySectionsRemoved:(id)a3
{
  v5 = a3;
  v4 = [(GKCollectionViewDataSource *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 dataSource:self didRemoveSections:v5];
  }
}

- (void)notifySectionsRefreshed:(id)a3
{
  v5 = a3;
  v4 = [(GKCollectionViewDataSource *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 dataSource:self didRefreshSections:v5];
  }
}

- (void)notifySectionMovedFrom:(int64_t)a3 to:(int64_t)a4
{
  v7 = [(GKCollectionViewDataSource *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 dataSource:self didMoveSection:a3 toSection:a4];
  }
}

- (void)notifySectionsMovedWithItems
{
  v3 = [(GKCollectionViewDataSource *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 dataSourceDidMoveSectionsWithItems:self];
  }
}

- (void)notifyDidReloadData
{
  v3 = [(GKCollectionViewDataSource *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 dataSourceDidReloadData:self];
  }
}

- (void)notifyPlaceholderUpdated:(BOOL)a3
{
  v3 = a3;
  v5 = [(GKCollectionViewDataSource *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 dataSource:self didUpdatePlaceholderVisibility:v3];
  }
}

- (void)notifyBatchUpdate:(id)a3
{
  v5 = a3;
  v4 = [(GKCollectionViewDataSource *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 dataSource:self performBatchUpdate:v5 complete:0];
  }
}

- (void)notifyBatchUpdate:(id)a3 complete:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(GKCollectionViewDataSource *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 dataSource:self performBatchUpdate:v6 complete:v7];
  }

  else if (v7)
  {
    v9 = MEMORY[0x277D0C2A0];
    v10 = *MEMORY[0x277D0C2A0];
    if (!*MEMORY[0x277D0C2A0])
    {
      v11 = GKOSLoggers();
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = 138412546;
      v13 = self;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_24DE53000, v10, OS_LOG_TYPE_INFO, "no delegate, completing immediately! (self:%@ delegate:%@)", &v12, 0x16u);
    }

    v7[2](v7);
  }
}

- (id)targetForAction:(SEL)a3
{
  v4 = [(GKCollectionViewDataSource *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = v4;
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 targetForAction:a3];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (GKCollectionViewDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)registerSupplementaryViewOfKind:(id)a3 withFactory:(id)a4
{
  v10 = a3;
  v6 = a4;
  kindsToFactories = self->_kindsToFactories;
  if (!kindsToFactories)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = self->_kindsToFactories;
    self->_kindsToFactories = v8;

    kindsToFactories = self->_kindsToFactories;
  }

  [(NSMutableDictionary *)kindsToFactories setObject:v6 forKeyedSubscript:v10];
}

- (void)registerSupplementaryViewOfKind:(id)a3 withClass:(Class)a4 target:(id)a5 configurator:(SEL)a6
{
  v10 = a3;
  v11 = [GKSupplementaryViewFactory factoryForClass:a4 target:a5 configurator:a6];
  [(GKCollectionViewDataSource *)self registerSupplementaryViewOfKind:v10 withFactory:v11];
}

@end