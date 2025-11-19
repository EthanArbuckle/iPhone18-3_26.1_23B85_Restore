@interface GKSplittingDataSource
- (GKSplittingDataSource)init;
- (id)_gkDescriptionWithChildren:(int64_t)a3;
- (id)indexPathsForItem:(id)a3;
- (id)itemAtIndexPath:(id)a3;
- (id)itemsForSection:(int64_t)a3;
- (id)sectionInfoForSection:(int64_t)a3;
- (id)titleForSection:(int64_t)a3;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)addSectionWithTitle:(id)a3 sortDescriptors:(id)a4;
- (void)refreshContentsForDataType:(unsigned int)a3 userInfo:(id)a4 updateNotifier:(id)a5;
- (void)removeAllSections;
- (void)removeItemAtIndexPath:(id)a3 completionHandler:(id)a4;
- (void)removeSection:(int64_t)a3;
- (void)setFilterPredicate:(id)a3 forSection:(int64_t)a4;
- (void)setItems:(id)a3 forSection:(int64_t)a4;
- (void)setSortDescriptors:(id)a3 forSection:(int64_t)a4;
@end

@implementation GKSplittingDataSource

- (GKSplittingDataSource)init
{
  v6.receiver = self;
  v6.super_class = GKSplittingDataSource;
  v2 = [(GKCollectionViewDataSource *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    sectionToSectionInfo = v2->_sectionToSectionInfo;
    v2->_sectionToSectionInfo = v3;
  }

  return v2;
}

- (id)_gkDescriptionWithChildren:(int64_t)a3
{
  v5 = [MEMORY[0x277CCAB68] string];
  v6 = _gkTabStringForTabLevel();
  v19.receiver = self;
  v19.super_class = GKSplittingDataSource;
  v7 = [(GKCollectionViewDataSource *)&v19 _gkDescriptionWithChildren:a3];
  [v5 appendString:v7];

  underlyingDataSource = self->_underlyingDataSource;
  if (underlyingDataSource)
  {
    v9 = [(GKBasicCollectionViewDataSource *)underlyingDataSource _gkDescriptionWithChildren:a3 + 2];
    v10 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v11 = [v9 stringByTrimmingCharactersInSet:v10];

    [v5 appendFormat:@"%@    filter source: %@", v6, v11];
  }

  v12 = [(NSMutableDictionary *)self->_sectionToSectionInfo count];
  if (v12 >= 1)
  {
    v13 = v12;
    [v5 appendFormat:@"\n%@    sections {\n", v6];
    for (i = 0; i != v13; ++i)
    {
      v15 = [(GKSplittingDataSource *)self sectionInfoForSection:i];
      v16 = [v15 description];
      [v5 appendFormat:@"%@        %ld %@\n", v6, i, v16];
    }

    [v5 appendFormat:@"%@    }\n", v6];
  }

  [v5 appendFormat:@"%@}\n", v6];
  v17 = _gkUnicodifyDescription();

  return v5;
}

- (id)sectionInfoForSection:(int64_t)a3
{
  sectionToSectionInfo = self->_sectionToSectionInfo;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)sectionToSectionInfo objectForKeyedSubscript:v4];

  return v5;
}

- (void)addSectionWithTitle:(id)a3 sortDescriptors:(id)a4
{
  v17 = a3;
  v6 = a4;
  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = MEMORY[0x277CCACA8];
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKSplittingDataSource.m"];
      v10 = [v9 lastPathComponent];
      v11 = [v7 stringWithFormat:@"%@ (sortDescriptors == ((void*)0) || [sortDescriptors isKindOfClass:[NSArray class]])\n[%s (%s:%d)]", v8, "-[GKSplittingDataSource addSectionWithTitle:sortDescriptors:]", objc_msgSend(v10, "UTF8String"), 106];

      [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v11}];
    }
  }

  v12 = [(NSMutableDictionary *)self->_sectionToSectionInfo count];
  v13 = objc_alloc_init(GKSectionInfo);
  [(GKSectionInfo *)v13 setSection:v12];
  [(GKSectionInfo *)v13 setSortDescriptors:v6];
  [(GKSectionInfo *)v13 setTitle:v17];
  sectionToSectionInfo = self->_sectionToSectionInfo;
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:v12];
  [(NSMutableDictionary *)sectionToSectionInfo setObject:v13 forKeyedSubscript:v15];

  v16 = [MEMORY[0x277CCAA78] indexSetWithIndex:v12];
  [(GKCollectionViewDataSource *)self notifySectionsInserted:v16];
}

- (void)setFilterPredicate:(id)a3 forSection:(int64_t)a4
{
  v12 = a3;
  if (v12)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKSplittingDataSource.m"];
      v9 = [v8 lastPathComponent];
      v10 = [v6 stringWithFormat:@"%@ (predicate == ((void*)0) || [predicate isKindOfClass:[NSPredicate class]])\n[%s (%s:%d)]", v7, "-[GKSplittingDataSource setFilterPredicate:forSection:]", objc_msgSend(v9, "UTF8String"), 118];

      [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v10}];
    }
  }

  v11 = [(GKSplittingDataSource *)self sectionInfoForSection:a4];
  [v11 setPredicate:v12];
}

- (void)setSortDescriptors:(id)a3 forSection:(int64_t)a4
{
  v12 = a3;
  if (v12)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKSplittingDataSource.m"];
      v9 = [v8 lastPathComponent];
      v10 = [v6 stringWithFormat:@"%@ (sortDescriptors == ((void*)0) || [sortDescriptors isKindOfClass:[NSArray class]])\n[%s (%s:%d)]", v7, "-[GKSplittingDataSource setSortDescriptors:forSection:]", objc_msgSend(v9, "UTF8String"), 126];

      [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v10}];
    }
  }

  v11 = [(GKSplittingDataSource *)self sectionInfoForSection:a4];
  [v11 setSortDescriptors:v12];
}

- (void)removeSection:(int64_t)a3
{
  v5 = [(NSMutableDictionary *)self->_sectionToSectionInfo count];
  v21 = a3;
  if (v5 > a3)
  {
    v6 = v5;
    v7 = (v5 - 1);
    v8 = 0x277CCA000uLL;
    v9 = a3;
    v22 = v5;
    v23 = (v5 - 1);
    do
    {
      v10 = v9 + 1;
      v11 = [(GKSplittingDataSource *)self sectionInfoForSection:v9 + 1];
      if (v11)
      {
        sectionToSectionInfo = self->_sectionToSectionInfo;
        v13 = [*(v8 + 2992) numberWithInteger:v9];
        [(NSMutableDictionary *)sectionToSectionInfo setObject:v11 forKeyedSubscript:v13];
      }

      else
      {
        if (v7 != v9)
        {
          v14 = MEMORY[0x277CCACA8];
          v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"consistency error with sectionInfos %@", self->_sectionToSectionInfo];
          [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKSplittingDataSource.m"];
          v17 = v16 = v8;
          v18 = [v17 lastPathComponent];
          v19 = [v14 stringWithFormat:@"%@ (section == numSections-1)\n[%s (%s:%d)]", v15, "-[GKSplittingDataSource removeSection:]", objc_msgSend(v18, "UTF8String"), 141];

          v8 = v16;
          v6 = v22;

          v7 = v23;
          [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v19}];
        }

        v20 = self->_sectionToSectionInfo;
        v13 = [*(v8 + 2992) numberWithInteger:v9];
        [(NSMutableDictionary *)v20 removeObjectForKey:v13];
      }

      v9 = v10;
    }

    while (v6 != v10);
  }

  v24 = [MEMORY[0x277CCAA78] indexSetWithIndex:v21];
  [(GKCollectionViewDataSource *)self notifySectionsRemoved:v24];
}

- (void)removeAllSections
{
  v3 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, -[GKSplittingDataSource sectionCount](self, "sectionCount")}];
  [(NSMutableDictionary *)self->_sectionToSectionInfo removeAllObjects];
  [(GKCollectionViewDataSource *)self notifySectionsRemoved:v3];
}

- (id)itemsForSection:(int64_t)a3
{
  v3 = [(GKSplittingDataSource *)self sectionInfoForSection:a3];
  v4 = [v3 items];

  return v4;
}

- (void)setItems:(id)a3 forSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(GKSplittingDataSource *)self sectionInfoForSection:a4];
  v17 = v7;
  if (!v7)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKSplittingDataSource.m"];
    v11 = [v10 lastPathComponent];
    v12 = [v8 stringWithFormat:@"%@ (sectionInfo != ((void*)0))\n[%s (%s:%d)]", v9, "-[GKSplittingDataSource setItems:forSection:]", objc_msgSend(v11, "UTF8String"), 174];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v12}];
    v7 = 0;
  }

  v13 = [v7 items];
  v14 = [v6 copy];
  [v17 setItems:v14];
  v15 = [v13 isEqual:v6];

  if ((v15 & 1) == 0)
  {
    v16 = [MEMORY[0x277CCAA78] indexSetWithIndex:a4];
    [(GKCollectionViewDataSource *)self notifySectionsRefreshed:v16];
  }
}

- (id)titleForSection:(int64_t)a3
{
  v3 = [(GKSplittingDataSource *)self sectionInfoForSection:a3];
  v4 = [v3 title];

  return v4;
}

- (void)refreshContentsForDataType:(unsigned int)a3 userInfo:(id)a4 updateNotifier:(id)a5
{
  v7 = a5;
  v8 = [MEMORY[0x277D0C250] updateGroup];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __76__GKSplittingDataSource_refreshContentsForDataType_userInfo_updateNotifier___block_invoke;
  v16[3] = &unk_27966BA10;
  v16[4] = self;
  [v8 perform:v16];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__GKSplittingDataSource_refreshContentsForDataType_userInfo_updateNotifier___block_invoke_2;
  v11[3] = &unk_27966BA88;
  v12 = v8;
  v13 = self;
  v15 = a3;
  v14 = v7;
  v9 = v7;
  v10 = v8;
  [v10 join:v11];
}

void __76__GKSplittingDataSource_refreshContentsForDataType_userInfo_updateNotifier___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) applyUpdates];
  v2 = [MEMORY[0x277D0C250] updateGroup];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__GKSplittingDataSource_refreshContentsForDataType_userInfo_updateNotifier___block_invoke_3;
  v7[3] = &unk_27966BA38;
  v7[4] = *(a1 + 40);
  v8 = *(a1 + 56);
  [v2 perform:v7];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __76__GKSplittingDataSource_refreshContentsForDataType_userInfo_updateNotifier___block_invoke_4;
  v4[3] = &unk_27966A9A8;
  v3 = *(a1 + 48);
  v4[4] = *(a1 + 40);
  v5 = v3;
  v6 = *(a1 + 32);
  [v2 join:v4];
}

void __76__GKSplittingDataSource_refreshContentsForDataType_userInfo_updateNotifier___block_invoke_4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) items];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) error];
  [v4 updateError:v5];

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 80);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__GKSplittingDataSource_refreshContentsForDataType_userInfo_updateNotifier___block_invoke_5;
  v11[3] = &unk_27966BA60;
  v11[4] = v7;
  v12 = v2;
  v13 = v3;
  v14 = v6;
  v15 = *(a1 + 48);
  v9 = v3;
  v10 = v2;
  [v8 enumerateKeysAndObjectsUsingBlock:v11];
  [*(a1 + 32) willUpdateSectionsWithItems:v9];
}

void __76__GKSplittingDataSource_refreshContentsForDataType_userInfo_updateNotifier___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) filteredItemsForRawItems:*(a1 + 40)];
  v8 = [v6 predicate];

  if (v8)
  {
    v9 = *(a1 + 40);
    v10 = [v6 predicate];
    v11 = [v9 filteredArrayUsingPredicate:v10];

    v7 = v11;
  }

  v12 = [v6 sortDescriptors];

  if (v12)
  {
    v13 = [v6 sortDescriptors];
    v14 = [v7 sortedArrayUsingDescriptors:v13];

    v7 = v14;
  }

  v15 = [*(a1 + 32) itemsForSection:{objc_msgSend(v5, "integerValue")}];
  if (([v7 isEqual:v15] & 1) == 0)
  {
    if (v7)
    {
      v16 = v7;
    }

    else
    {
      v16 = MEMORY[0x277CBEBF8];
    }

    [*(a1 + 48) setObject:v16 forKeyedSubscript:v5];
    v17 = *(a1 + 56);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __76__GKSplittingDataSource_refreshContentsForDataType_userInfo_updateNotifier___block_invoke_6;
    v19[3] = &unk_27966A9A8;
    v19[4] = *(a1 + 32);
    v20 = v7;
    v21 = v5;
    v18 = [*(a1 + 64) error];
    [v17 addUpdate:v19 error:v18];
  }
}

uint64_t __76__GKSplittingDataSource_refreshContentsForDataType_userInfo_updateNotifier___block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) integerValue];

  return [v1 setItems:v2 forSection:v3];
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(GKSplittingDataSource *)self sectionInfoForSection:a4];
  v5 = [v4 items];
  v6 = [v5 count];

  return v6;
}

- (void)removeItemAtIndexPath:(id)a3 completionHandler:(id)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = -[GKSplittingDataSource sectionInfoForSection:](self, "sectionInfoForSection:", [v6 section]);
  if (!v8)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"couldn't section for %@", v6];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKSplittingDataSource.m"];
    v12 = [v11 lastPathComponent];
    v13 = [v9 stringWithFormat:@"%@ (sectionInfo != nil)\n[%s (%s:%d)]", v10, "-[GKSplittingDataSource removeItemAtIndexPath:completionHandler:]", objc_msgSend(v12, "UTF8String"), 258];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v13}];
  }

  v14 = [v6 item];
  v15 = [v8 items];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __65__GKSplittingDataSource_removeItemAtIndexPath_completionHandler___block_invoke;
  v18[3] = &__block_descriptor_40_e11__24__0_8Q16l;
  v18[4] = v14;
  v16 = [v15 _gkFilterWithBlock:v18];
  [v8 setItems:v16];

  v19[0] = v6;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  [(GKCollectionViewDataSource *)self notifyItemsRemovedAtIndexPaths:v17];

  if (v7)
  {
    v7[2](v7, 0);
  }
}

id __65__GKSplittingDataSource_removeItemAtIndexPath_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a1 + 32) == a3)
  {
    return 0;
  }

  else
  {
    return a2;
  }
}

- (id)itemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = -[GKSplittingDataSource sectionInfoForSection:](self, "sectionInfoForSection:", [v4 section]);
  if (v5 && (v6 = [v4 item], objc_msgSend(v5, "items"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v6 < v8))
  {
    v9 = [v5 items];
    v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v4, "item")}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)indexPathsForItem:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [(GKSplittingDataSource *)self sectionCount];
  if (v6 >= 1)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      v9 = [(GKSplittingDataSource *)self sectionInfoForSection:i];
      v10 = [v9 items];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __43__GKSplittingDataSource_indexPathsForItem___block_invoke;
      v12[3] = &unk_27966BAD0;
      v13 = v4;
      v14 = v5;
      v15 = i;
      [v10 enumerateObjectsUsingBlock:v12];
    }
  }

  return v5;
}

void __43__GKSplittingDataSource_indexPathsForItem___block_invoke(void *a1, void *a2, uint64_t a3)
{
  if ([a2 isEqual:a1[4]])
  {
    v5 = a1[5];
    v6 = [MEMORY[0x277CCAA70] indexPathForItem:a3 inSection:a1[6]];
    [v5 addObject:v6];
  }
}

@end