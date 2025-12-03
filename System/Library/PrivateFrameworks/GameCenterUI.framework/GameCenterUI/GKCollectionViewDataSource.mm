@interface GKCollectionViewDataSource
- (BOOL)isRootDataSource;
- (BOOL)isSearchable;
- (BOOL)item:(id)item matchesSearchTerms:(id)terms inSection:(int64_t)section;
- (GKCollectionViewDataSource)init;
- (GKCollectionViewDataSourceDelegate)delegate;
- (GKGridLayoutMetrics)dataSourceMetrics;
- (GKSectionMetrics)defaultSectionMetrics;
- (id)_gkDescriptionWithChildren:(int64_t)children;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view defaultViewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)collectionView:(id)view evaluateFactoryForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path isRecursive:(BOOL)recursive;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)createMetricsTreeWithGridLayout:(id)layout;
- (id)indexPathsForItem:(id)item;
- (id)itemAtIndexPath:(id)path;
- (id)localDescription;
- (id)metricsForSection:(int64_t)section;
- (id)metricsForSectionInternal:(int64_t)internal;
- (id)searchKeyForSection:(int64_t)section;
- (id)targetForAction:(SEL)action;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)totalItemCount;
- (void)configureCollectionView:(id)view;
- (void)enumerateItemsAndIndexPathsUsingBlock:(id)block;
- (void)loadDataWithCompletionHandlerAndError:(id)error;
- (void)notifyBatchUpdate:(id)update;
- (void)notifyBatchUpdate:(id)update complete:(id)complete;
- (void)notifyDidReloadData;
- (void)notifyItemMovedFromIndexPath:(id)path toIndexPaths:(id)paths;
- (void)notifyItemsInsertedAtIndexPaths:(id)paths;
- (void)notifyItemsRefreshedAtIndexPaths:(id)paths;
- (void)notifyItemsRemovedAtIndexPaths:(id)paths;
- (void)notifyPlaceholderUpdated:(BOOL)updated;
- (void)notifySectionMovedFrom:(int64_t)from to:(int64_t)to;
- (void)notifySectionsInserted:(id)inserted;
- (void)notifySectionsMovedWithItems;
- (void)notifySectionsRefreshed:(id)refreshed;
- (void)notifySectionsRemoved:(id)removed;
- (void)refreshContentsForDataType:(unsigned int)type userInfo:(id)info updateNotifier:(id)notifier;
- (void)registerSupplementaryViewOfKind:(id)kind withClass:(Class)class target:(id)target configurator:(SEL)configurator;
- (void)registerSupplementaryViewOfKind:(id)kind withFactory:(id)factory;
- (void)removeItemAtIndexPath:(id)path completionHandler:(id)handler;
- (void)setDataSourceMetrics:(id)metrics;
- (void)setDefaultSectionMetrics:(id)metrics;
- (void)setMetrics:(id)metrics forSection:(int64_t)section;
- (void)setSearchKey:(id)key forSection:(int64_t)section;
- (void)updateSupplementaryMetricsForKey:(id)key usingBlock:(id)block;
@end

@implementation GKCollectionViewDataSource

- (GKCollectionViewDataSource)init
{
  v6.receiver = self;
  v6.super_class = GKCollectionViewDataSource;
  v2 = [(GKCollectionViewDataSource *)&v6 init];
  if (v2)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    listeners = v2->_listeners;
    v2->_listeners = weakObjectsHashTable;
  }

  return v2;
}

- (id)localDescription
{
  string = [MEMORY[0x277CCAB68] string];
  v19.receiver = self;
  v19.super_class = GKCollectionViewDataSource;
  v4 = [(GKCollectionViewDataSource *)&v19 description];
  v5 = v4;
  if (self->_defaultSearchKey)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = _gkBeautifyVariableName();
    v8 = [v6 stringWithFormat:@" %@: %@", v7, self->_defaultSearchKey];
    [string appendFormat:@"%@%@", v5, v8];
  }

  else
  {
    [string appendFormat:@"%@%@", v4, &stru_28612D290];
  }

  v9 = [(GKCollectionViewDataSource *)self numberOfSectionsInCollectionView:0];
  if (v9 == 1)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:{-[GKCollectionViewDataSource collectionView:numberOfItemsInSection:](self, "collectionView:numberOfItemsInSection:", 0, 0)}];
    [string appendFormat:@" %@ item(s)", v12];
  }

  else
  {
    v10 = v9;
    if (v9)
    {
      v13 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
      [string appendFormat:@" %@ sections: <", v13];

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
          [string appendFormat:@"%@%@", v16, v17];
        }
      }

      v11 = @">";
    }

    else
    {
      v11 = @" no sections";
    }

    [string appendString:v11];
  }

  return string;
}

- (id)_gkDescriptionWithChildren:(int64_t)children
{
  v70 = *MEMORY[0x277D85DE8];
  v4 = _gkTabStringForTabLevel();
  string = [MEMORY[0x277CCAB68] string];
  v67.receiver = self;
  v67.super_class = GKCollectionViewDataSource;
  v6 = [(GKCollectionViewDataSource *)&v67 description];
  v7 = v6;
  if (self->_defaultSearchKey)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = _gkBeautifyVariableName();
    v10 = [v8 stringWithFormat:@" %@: %@", v9, self->_defaultSearchKey];
    [string appendFormat:@"%@%@%@", v4, v7, v10];
  }

  else
  {
    [string appendFormat:@"%@%@%@", v4, v6, &stru_28612D290];
  }

  v11 = [(GKCollectionViewDataSource *)self numberOfSectionsInCollectionView:0];
  v58 = v4;
  if (v11 == 1)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[GKCollectionViewDataSource collectionView:numberOfItemsInSection:](self, "collectionView:numberOfItemsInSection:", 0, 0)}];
    [string appendFormat:@" %@ item(s)", v13];
  }

  else
  {
    v12 = v11;
    if (v11)
    {
      v14 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
      [string appendFormat:@" %@ sections: <", v14];

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
          [string appendFormat:@"%@%@", v17, v18];
        }
      }

      [string appendString:@">"];
      v4 = v58;
    }

    else
    {
      [string appendString:@" no sections"];
    }
  }

  allKeys = [(NSMutableDictionary *)self->_sectionsToSearchKeys allKeys];
  v20 = @" {\n";
  selfCopy = self;
  if ([allKeys count])
  {
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@    %@sectionSearchKeys:\n", @" {\n", v4];
    [string appendString:v21];

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v22 = allKeys;
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
          [string appendFormat:@"    %@%@ - %@", v58, v52, v28];

          self = selfCopy;
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
    v31 = [(GKGridLayoutMetrics *)dataSourceMetricsInternal _gkDescriptionWithChildren:children + 2];
    v32 = [v30 stringWithFormat:@"%@    %@overallMetrics: {\n%@", v20, v4, v31];
    [string appendString:v32];

    [string appendFormat:@"%@    }\n", v4];
    v20 = &stru_28612D290;
  }

  defaultSectionMetricsInternal = self->_defaultSectionMetricsInternal;
  if (defaultSectionMetricsInternal)
  {
    v34 = MEMORY[0x277CCACA8];
    v35 = [(GKGridLayoutMetrics *)defaultSectionMetricsInternal _gkDescriptionWithChildren:children + 2];
    v36 = [v34 stringWithFormat:@"%@    %@defaultSectionMetrics: {\n%@", v20, v4, v35];
    [string appendString:v36];

    [string appendFormat:@"%@    }\n", v4];
    v20 = &stru_28612D290;
  }

  allKeys2 = [(NSMutableDictionary *)self->_sectionsToMetrics allKeys];

  if ([allKeys2 count])
  {
    v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@    %@sectionMetrics: {\n", v20, v4];
    [string appendString:v38];

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v54 = allKeys2;
    obj = allKeys2;
    v39 = [obj countByEnumeratingWithState:&v59 objects:v68 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v60;
      do
      {
        for (k = 0; k != v40; ++k)
        {
          v43 = string;
          if (*v60 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v44 = *(*(&v59 + 1) + 8 * k);
          v45 = [(NSMutableDictionary *)self->_sectionsToMetrics objectForKeyedSubscript:v44];
          v46 = [v45 _gkDescriptionWithChildren:children + 2];
          whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
          v48 = [v46 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

          v53 = v44;
          v4 = v58;
          string = v43;
          [v43 appendFormat:@"        %@%@ - %@", v58, v53, v48];

          self = selfCopy;
        }

        v40 = [obj countByEnumeratingWithState:&v59 objects:v68 count:16];
      }

      while (v40);
    }

    [string appendFormat:@"%@    }\n", v4];
    v20 = &stru_28612D290;
    allKeys2 = v54;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [string appendFormat:&stru_28612D290, v51];
  }

  else if (![(__CFString *)v20 length])
  {
    [string appendFormat:@"%@}\n", v4];
  }

  v49 = _gkUnicodifyDescription();

  return string;
}

- (id)itemAtIndexPath:(id)path
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ needs to implement me!", objc_opt_class()];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKCollectionViewDataSource.m"];
  lastPathComponent = [v5 lastPathComponent];
  v7 = [v3 stringWithFormat:@"%@ (NO)\n[%s (%s:%d)]", v4, "-[GKCollectionViewDataSource itemAtIndexPath:]", objc_msgSend(lastPathComponent, "UTF8String"), 310];

  [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v7}];
  return 0;
}

- (id)indexPathsForItem:(id)item
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ needs to implement me!", objc_opt_class()];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKCollectionViewDataSource.m"];
  lastPathComponent = [v5 lastPathComponent];
  v7 = [v3 stringWithFormat:@"%@ (NO)\n[%s (%s:%d)]", v4, "-[GKCollectionViewDataSource indexPathsForItem:]", objc_msgSend(lastPathComponent, "UTF8String"), 316];

  [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v7}];
  return 0;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ needs to implement me!", objc_opt_class()];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKCollectionViewDataSource.m"];
  lastPathComponent = [v6 lastPathComponent];
  v8 = [v4 stringWithFormat:@"%@ (NO)\n[%s (%s:%d)]", v5, "-[GKCollectionViewDataSource collectionView:numberOfItemsInSection:]", objc_msgSend(lastPathComponent, "UTF8String"), 327];

  [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v8}];
  return 0;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ needs to implement me!", objc_opt_class()];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKCollectionViewDataSource.m"];
  lastPathComponent = [v6 lastPathComponent];
  v8 = [v4 stringWithFormat:@"%@ (NO)\n[%s (%s:%d)]", v5, "-[GKCollectionViewDataSource collectionView:cellForItemAtIndexPath:]", objc_msgSend(lastPathComponent, "UTF8String"), 333];

  [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v8}];
  return 0;
}

- (void)removeItemAtIndexPath:(id)path completionHandler:(id)handler
{
  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ needs to implement me!", objc_opt_class()];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKCollectionViewDataSource.m"];
  lastPathComponent = [v6 lastPathComponent];
  v8 = [v4 stringWithFormat:@"%@ (NO)\n[%s (%s:%d)]", v5, "-[GKCollectionViewDataSource removeItemAtIndexPath:completionHandler:]", objc_msgSend(lastPathComponent, "UTF8String"), 339];

  [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v8}];
}

- (void)configureCollectionView:(id)view
{
  viewCopy = view;
  if ([(GKCollectionViewDataSource *)self isRootDataSource])
  {
    [objc_opt_class() registerSupplementaryViewClassesForKind:@"IncrementalReveal" withCollectionView:viewCopy];
    [objc_opt_class() registerSupplementaryViewClassesForKind:@"SearchBar" withCollectionView:viewCopy];
    [viewCopy _gkRegisterClass:objc_opt_class() forSupplementaryViewOfKind:@"ClipArea"];
    [viewCopy _gkRegisterClass:objc_opt_class() forSupplementaryViewOfKind:@"SearchPlaceholderMetricKey"];
  }
}

- (void)refreshContentsForDataType:(unsigned int)type userInfo:(id)info updateNotifier:(id)notifier
{
  notifierCopy = notifier;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __81__GKCollectionViewDataSource_refreshContentsForDataType_userInfo_updateNotifier___block_invoke;
  v8[3] = &unk_279669D38;
  v9 = notifierCopy;
  v7 = notifierCopy;
  [(GKCollectionViewDataSource *)self loadDataWithCompletionHandlerAndError:v8];
}

- (void)loadDataWithCompletionHandlerAndError:(id)error
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ needs to implement me!", objc_opt_class()];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKCollectionViewDataSource.m"];
  lastPathComponent = [v5 lastPathComponent];
  v7 = [v3 stringWithFormat:@"%@ (NO)\n[%s (%s:%d)]", v4, "-[GKCollectionViewDataSource loadDataWithCompletionHandlerAndError:]", objc_msgSend(lastPathComponent, "UTF8String"), 378];

  [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v7}];
}

- (id)searchKeyForSection:(int64_t)section
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
      delegate = [(GKCollectionViewDataSource *)self delegate];
      while (1)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        v7 = [delegate searchKeyForSection:section];
        v9Delegate = [delegate delegate];

        delegate = v9Delegate;
        if (v7)
        {
          delegate = v9Delegate;
          goto LABEL_9;
        }
      }

      v7 = 0;
LABEL_9:
    }
  }

  return v7;
}

- (void)setSearchKey:(id)key forSection:(int64_t)section
{
  keyCopy = key;
  sectionsToSearchKeys = self->_sectionsToSearchKeys;
  if (!sectionsToSearchKeys)
  {
    v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[GKCollectionViewDataSource numberOfSectionsInCollectionView:](self, "numberOfSectionsInCollectionView:", 0)}];
    [(GKCollectionViewDataSource *)self setSectionsToSearchKeys:v7];

    sectionsToSearchKeys = self->_sectionsToSearchKeys;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:section];
  [(NSMutableDictionary *)sectionsToSearchKeys setObject:keyCopy forKeyedSubscript:v8];
}

- (BOOL)item:(id)item matchesSearchTerms:(id)terms inSection:(int64_t)section
{
  v33 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  termsCopy = terms;
  v9 = termsCopy;
  if (termsCopy && [termsCopy count])
  {
    v20 = v9;
    v21 = [(GKCollectionViewDataSource *)self searchKeyForSection:section];
    v10 = v21;
    if ([v21 length])
    {
      v11 = [itemCopy valueForKeyPath:v21];
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

- (void)enumerateItemsAndIndexPathsUsingBlock:(id)block
{
  blockCopy = block;
  v21 = [(GKCollectionViewDataSource *)self numberOfSectionsInCollectionView:0];
  if (v21 >= 1)
  {
    v5 = 0;
    v6 = 0x277CCA000uLL;
    selfCopy = self;
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
        v14 = blockCopy;
        v15 = v5;
        v17 = v16 = v6;
        lastPathComponent = [v17 lastPathComponent];
        v19 = [v12 stringWithFormat:@"%@ (item != ((void*)0))\n[%s (%s:%d)]", v13, "-[GKCollectionViewDataSource enumerateItemsAndIndexPathsUsingBlock:]", objc_msgSend(lastPathComponent, "UTF8String"), 456];

        v6 = v16;
        v5 = v15;
        blockCopy = v14;
        v8 = v23;

        [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v19}];
        self = selfCopy;
      }

      blockCopy[2](blockCopy, v11, v10, &v24);
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

  allValues = [(NSMutableDictionary *)self->_sectionsToSearchKeys allValues];
  v4 = [allValues count];

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

- (void)setDataSourceMetrics:(id)metrics
{
  v4 = [metrics copy];
  [(GKCollectionViewDataSource *)self setDataSourceMetricsInternal:v4];
}

- (void)updateSupplementaryMetricsForKey:(id)key usingBlock:(id)block
{
  blockCopy = block;
  keyCopy = key;
  dataSourceMetrics = [(GKCollectionViewDataSource *)self dataSourceMetrics];
  v8 = [dataSourceMetrics supplementaryMetricsForKey:keyCopy];
  blockCopy[2](blockCopy, v8);

  [dataSourceMetrics replaceSupplementaryMetrics:v8 forKey:keyCopy];
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

- (void)setDefaultSectionMetrics:(id)metrics
{
  v4 = [metrics copy];
  [(GKCollectionViewDataSource *)self setDefaultSectionMetricsInternal:v4];
}

- (id)metricsForSection:(int64_t)section
{
  if (section < 0)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKCollectionViewDataSource.m"];
    lastPathComponent = [v7 lastPathComponent];
    v9 = [v5 stringWithFormat:@"%@ (section >= 0)\n[%s (%s:%d)]", v6, "-[GKCollectionViewDataSource metricsForSection:]", objc_msgSend(lastPathComponent, "UTF8String"), 530];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v9}];
  }

  sectionsToMetrics = self->_sectionsToMetrics;
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:section];
  defaultSectionMetrics = [(NSMutableDictionary *)sectionsToMetrics objectForKeyedSubscript:v11];

  if (!defaultSectionMetrics)
  {
    defaultSectionMetrics = [(GKCollectionViewDataSource *)self defaultSectionMetrics];
  }

  return defaultSectionMetrics;
}

- (id)metricsForSectionInternal:(int64_t)internal
{
  if (internal < 0)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKCollectionViewDataSource.m"];
    lastPathComponent = [v7 lastPathComponent];
    v9 = [v5 stringWithFormat:@"%@ (section >= 0)\n[%s (%s:%d)]", v6, "-[GKCollectionViewDataSource metricsForSectionInternal:]", objc_msgSend(lastPathComponent, "UTF8String"), 539];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v9}];
  }

  sectionsToMetrics = self->_sectionsToMetrics;
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:internal];
  defaultSectionMetricsInternal = [(NSMutableDictionary *)sectionsToMetrics objectForKeyedSubscript:v11];

  if (!defaultSectionMetricsInternal)
  {
    defaultSectionMetricsInternal = [(GKCollectionViewDataSource *)self defaultSectionMetricsInternal];
  }

  return defaultSectionMetricsInternal;
}

- (void)setMetrics:(id)metrics forSection:(int64_t)section
{
  metricsCopy = metrics;
  sectionsToMetrics = self->_sectionsToMetrics;
  if (!sectionsToMetrics)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
    v8 = self->_sectionsToMetrics;
    self->_sectionsToMetrics = v7;

    sectionsToMetrics = self->_sectionsToMetrics;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:section];
  [(NSMutableDictionary *)sectionsToMetrics setObject:metricsCopy forKeyedSubscript:v9];
}

- (id)createMetricsTreeWithGridLayout:(id)layout
{
  layoutCopy = layout;
  delegate = [(GKCollectionViewDataSource *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(GKCollectionViewDataSource *)self delegate];
    [delegate2 updateMetrics];
  }

  v8 = [GKDataSourceMetrics dataSourceMetricsWithMetrics:self->_dataSourceMetricsInternal dataSource:self];
  collectionView = [layoutCopy collectionView];
  [v8 configureCollectionView:collectionView];

  collectionView2 = [layoutCopy collectionView];
  v11 = [(GKCollectionViewDataSource *)self numberOfSectionsInCollectionView:collectionView2];

  if (v11 >= 1)
  {
    for (i = 0; i != v11; ++i)
    {
      v13 = [(GKCollectionViewDataSource *)self metricsForSectionInternal:i];
      if (v13)
      {
        [v8 setMetrics:v13 forSection:i];
        collectionView3 = [layoutCopy collectionView];
        [v13 configureCollectionView:collectionView3];
      }
    }
  }

  [v8 setLocalSectionRange:{0, v11}];

  return v8;
}

- (BOOL)isRootDataSource
{
  delegate = [(GKCollectionViewDataSource *)self delegate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)collectionView:(id)view defaultViewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  if (![(GKCollectionViewDataSource *)self isRootDataSource])
  {
LABEL_16:
    v11 = 0;
    goto LABEL_17;
  }

  if ([kindCopy isEqualToString:@"IncrementalReveal"])
  {
    v11 = [viewCopy _gkDequeueSupplementaryViewForClass:objc_opt_class() ofKind:kindCopy forIndexPath:pathCopy];
    [v11 setShowMoreAction:sel_didTouchShowMore_];
    goto LABEL_17;
  }

  if (![kindCopy isEqualToString:@"SearchBar"])
  {
    if ([kindCopy isEqualToString:@"ClipArea"])
    {
      v11 = [viewCopy _gkDequeueSupplementaryViewForClass:objc_opt_class() ofKind:kindCopy forIndexPath:pathCopy];
      goto LABEL_17;
    }

    if ([kindCopy isEqualToString:@"SearchPlaceholderMetricKey"])
    {
      v11 = [viewCopy _gkDequeueSupplementaryViewForClass:objc_opt_class() ofKind:kindCopy forIndexPath:pathCopy];
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

  v11 = [viewCopy _gkDequeueSupplementaryViewForClass:objc_opt_class() ofKind:kindCopy forIndexPath:pathCopy];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v13 = [WeakRetained conformsToProtocol:&unk_2861CFFF0];

  if ((v13 & 1) == 0)
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = objc_loadWeakRetained(&self->_delegate);
    v16 = [v14 stringWithFormat:@"%@ doesn't conform to UISearchBarDelegate", v15];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKCollectionViewDataSource.m"];
    lastPathComponent = [v17 lastPathComponent];
    v19 = [v14 stringWithFormat:@"%@ ([_delegate conformsToProtocol:@protocol(UISearchBarDelegate)])\n[%s (%s:%d)]", v16, "-[GKCollectionViewDataSource collectionView:defaultViewForSupplementaryElementOfKind:atIndexPath:]", objc_msgSend(lastPathComponent, "UTF8String"), 592];

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
      text = [v24 text];
      v26 = [text length];

      if (v26)
      {
        text2 = [v24 text];
        searchBar = [v11 searchBar];
        [searchBar setText:text2];

        searchBar2 = [v11 searchBar];
        [searchBar2 becomeFirstResponder];
      }
    }
  }

LABEL_17:

  return v11;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  v11 = [(GKCollectionViewDataSource *)self collectionView:viewCopy evaluateFactoryForSupplementaryElementOfKind:kindCopy atIndexPath:pathCopy isRecursive:0];
  if (!v11)
  {
    v11 = [(GKCollectionViewDataSource *)self collectionView:viewCopy defaultViewForSupplementaryElementOfKind:kindCopy atIndexPath:pathCopy];
  }

  return v11;
}

- (id)collectionView:(id)view evaluateFactoryForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path isRecursive:(BOOL)recursive
{
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  collectionViewLayout = [viewCopy collectionViewLayout];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [collectionViewLayout attributesForSupplementaryIndexPath:pathCopy];
    supplementaryMetrics = [v13 supplementaryMetrics];
    if ([supplementaryMetrics reusableViewClass])
    {
      reusableViewClass = [supplementaryMetrics reusableViewClass];
      kind = [supplementaryMetrics kind];
      v17 = [viewCopy _gkDequeueSupplementaryViewForClass:reusableViewClass ofKind:kind forIndexPath:pathCopy];

      if (v17)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v18 = [(GKCollectionViewDataSource *)self supplementaryViewFactoryForKind:kindCopy];
  v17 = [v18 collectionView:viewCopy viewForSupplementaryElementOfKind:kindCopy atIndexPath:pathCopy];

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

- (void)notifyItemsInsertedAtIndexPaths:(id)paths
{
  pathsCopy = paths;
  delegate = [(GKCollectionViewDataSource *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate dataSource:self didInsertItemsAtIndexPaths:pathsCopy];
  }
}

- (void)notifyItemsRemovedAtIndexPaths:(id)paths
{
  pathsCopy = paths;
  delegate = [(GKCollectionViewDataSource *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate dataSource:self didRemoveItemsAtIndexPaths:pathsCopy];
  }
}

- (void)notifyItemsRefreshedAtIndexPaths:(id)paths
{
  pathsCopy = paths;
  delegate = [(GKCollectionViewDataSource *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate dataSource:self didRefreshItemsAtIndexPaths:pathsCopy];
  }
}

- (void)notifyItemMovedFromIndexPath:(id)path toIndexPaths:(id)paths
{
  pathCopy = path;
  pathsCopy = paths;
  delegate = [(GKCollectionViewDataSource *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate dataSource:self didMoveItemAtIndexPath:pathCopy toIndexPath:pathsCopy];
  }
}

- (void)notifySectionsInserted:(id)inserted
{
  insertedCopy = inserted;
  delegate = [(GKCollectionViewDataSource *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate dataSource:self didInsertSections:insertedCopy];
  }
}

- (void)notifySectionsRemoved:(id)removed
{
  removedCopy = removed;
  delegate = [(GKCollectionViewDataSource *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate dataSource:self didRemoveSections:removedCopy];
  }
}

- (void)notifySectionsRefreshed:(id)refreshed
{
  refreshedCopy = refreshed;
  delegate = [(GKCollectionViewDataSource *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate dataSource:self didRefreshSections:refreshedCopy];
  }
}

- (void)notifySectionMovedFrom:(int64_t)from to:(int64_t)to
{
  delegate = [(GKCollectionViewDataSource *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate dataSource:self didMoveSection:from toSection:to];
  }
}

- (void)notifySectionsMovedWithItems
{
  delegate = [(GKCollectionViewDataSource *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate dataSourceDidMoveSectionsWithItems:self];
  }
}

- (void)notifyDidReloadData
{
  delegate = [(GKCollectionViewDataSource *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate dataSourceDidReloadData:self];
  }
}

- (void)notifyPlaceholderUpdated:(BOOL)updated
{
  updatedCopy = updated;
  delegate = [(GKCollectionViewDataSource *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate dataSource:self didUpdatePlaceholderVisibility:updatedCopy];
  }
}

- (void)notifyBatchUpdate:(id)update
{
  updateCopy = update;
  delegate = [(GKCollectionViewDataSource *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate dataSource:self performBatchUpdate:updateCopy complete:0];
  }
}

- (void)notifyBatchUpdate:(id)update complete:(id)complete
{
  v16 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  completeCopy = complete;
  delegate = [(GKCollectionViewDataSource *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate dataSource:self performBatchUpdate:updateCopy complete:completeCopy];
  }

  else if (completeCopy)
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
      selfCopy = self;
      v14 = 2112;
      v15 = delegate;
      _os_log_impl(&dword_24DE53000, v10, OS_LOG_TYPE_INFO, "no delegate, completing immediately! (self:%@ delegate:%@)", &v12, 0x16u);
    }

    completeCopy[2](completeCopy);
  }
}

- (id)targetForAction:(SEL)action
{
  delegate = [(GKCollectionViewDataSource *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = delegate;
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [delegate targetForAction:action];
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

- (void)registerSupplementaryViewOfKind:(id)kind withFactory:(id)factory
{
  kindCopy = kind;
  factoryCopy = factory;
  kindsToFactories = self->_kindsToFactories;
  if (!kindsToFactories)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = self->_kindsToFactories;
    self->_kindsToFactories = v8;

    kindsToFactories = self->_kindsToFactories;
  }

  [(NSMutableDictionary *)kindsToFactories setObject:factoryCopy forKeyedSubscript:kindCopy];
}

- (void)registerSupplementaryViewOfKind:(id)kind withClass:(Class)class target:(id)target configurator:(SEL)configurator
{
  kindCopy = kind;
  v11 = [GKSupplementaryViewFactory factoryForClass:class target:target configurator:configurator];
  [(GKCollectionViewDataSource *)self registerSupplementaryViewOfKind:kindCopy withFactory:v11];
}

@end