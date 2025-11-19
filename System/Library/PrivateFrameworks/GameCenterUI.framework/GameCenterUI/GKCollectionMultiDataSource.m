@interface GKCollectionMultiDataSource
- (BOOL)collectionView:(id)a3 canFocusItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForFooterInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (double)preferredCollectionHeight;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)dataSourceForIndexPath:(id)a3;
- (id)itemForIndexPath:(id)a3;
- (int64_t)itemCount;
- (int64_t)itemCountInSection:(int64_t)a3;
- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didFocusItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didUnfocusItemAtIndexPath:(id)a4;
- (void)loadDataWithCompletionHandler:(id)a3;
- (void)setupCollectionView:(id)a3;
@end

@implementation GKCollectionMultiDataSource

- (id)dataSourceForIndexPath:(id)a3
{
  v4 = [a3 section];
  if ([(NSArray *)self->_dataSources count]<= v4)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/TVDashboard/GKCollectionMultiDataSource.m"];
    v8 = [v7 lastPathComponent];
    v9 = [v5 stringWithFormat:@"%@ (_dataSources.count > section)\n[%s (%s:%d)]", v6, "-[GKCollectionMultiDataSource dataSourceForIndexPath:]", objc_msgSend(v8, "UTF8String"), 18];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v9}];
  }

  dataSources = self->_dataSources;

  return [(NSArray *)dataSources objectAtIndexedSubscript:v4];
}

- (void)setupCollectionView:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_dataSources;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) setupCollectionView:{v4, v10}];
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [v4 setDataSource:self];
  [v4 setDelegate:self];
}

- (void)loadDataWithCompletionHandler:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 0;
  v4 = MEMORY[0x277D0C020];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKCollectionMultiDataSource.m", 35, "-[GKCollectionMultiDataSource loadDataWithCompletionHandler:]"];
  v6 = [v4 dispatchGroupWithName:v5];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = self->_dataSources;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v8)
  {
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __61__GKCollectionMultiDataSource_loadDataWithCompletionHandler___block_invoke;
        v19[3] = &unk_27966AC60;
        v19[4] = v11;
        v21 = v26;
        v20 = v6;
        [v20 perform:v19];
      }

      v8 = [(NSArray *)v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v8);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__GKCollectionMultiDataSource_loadDataWithCompletionHandler___block_invoke_3;
  v15[3] = &unk_27966C058;
  v12 = v14;
  v17 = v12;
  v18 = v26;
  v13 = v6;
  v16 = v13;
  [v13 notifyOnMainQueueWithBlock:v15];

  _Block_object_dispose(v26, 8);
}

void __61__GKCollectionMultiDataSource_loadDataWithCompletionHandler___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__GKCollectionMultiDataSource_loadDataWithCompletionHandler___block_invoke_2;
  v7[3] = &unk_27966CA70;
  v5 = a1[4];
  v4 = a1[5];
  v10 = a1[6];
  v8 = v4;
  v9 = v3;
  v6 = v3;
  [v5 loadDataWithCompletionHandler:v7];
}

void __61__GKCollectionMultiDataSource_loadDataWithCompletionHandler___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v6 = v5;
  if (v5)
  {
    [*(a1 + 32) setError:v5];
  }

  (*(*(a1 + 40) + 16))();
}

void __61__GKCollectionMultiDataSource_loadDataWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(*(*(a1 + 48) + 8) + 24);
    v3 = [*(a1 + 32) error];
    (*(v1 + 16))(v1, v2, v3);
  }
}

- (int64_t)itemCount
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_dataSources;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 += [*(*(&v9 + 1) + 8 * i) itemCount];
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)itemCountInSection:(int64_t)a3
{
  if ([(NSArray *)self->_dataSources count]<= a3)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/TVDashboard/GKCollectionMultiDataSource.m"];
    v8 = [v7 lastPathComponent];
    v9 = [v5 stringWithFormat:@"%@ (_dataSources.count > section)\n[%s (%s:%d)]", v6, "-[GKCollectionMultiDataSource itemCountInSection:]", objc_msgSend(v8, "UTF8String"), 69];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v9}];
  }

  v10 = [(NSArray *)self->_dataSources objectAtIndexedSubscript:a3];
  v11 = [v10 itemCount];

  return v11;
}

- (double)preferredCollectionHeight
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_dataSources;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v10 + 1) + 8 * i) preferredCollectionHeight];
        if (v8 > v6)
        {
          v6 = v8;
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (id)itemForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(GKCollectionMultiDataSource *)self dataSourceForIndexPath:v4];
  v6 = [v5 itemForIndexPath:v4];

  return v6;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(GKCollectionMultiDataSource *)self dataSourceForIndexPath:v6];
  v9 = [v8 collectionView:v7 cellForItemAtIndexPath:v6];

  return v9;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(GKCollectionMultiDataSource *)self dataSourceForIndexPath:v8];
  v12 = [v11 collectionView:v10 viewForSupplementaryElementOfKind:v9 atIndexPath:v8];

  return v12;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if ([(NSArray *)self->_dataSources count]<= a5)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/TVDashboard/GKCollectionMultiDataSource.m"];
    v13 = [v12 lastPathComponent];
    v14 = [v10 stringWithFormat:@"%@ (_dataSources.count > section)\n[%s (%s:%d)]", v11, "-[GKCollectionMultiDataSource collectionView:layout:referenceSizeForHeaderInSection:]", objc_msgSend(v13, "UTF8String"), 125];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v14}];
  }

  v15 = [(NSArray *)self->_dataSources objectAtIndexedSubscript:a5];
  if (objc_opt_respondsToSelector())
  {
    [v15 collectionView:v8 layout:v9 referenceSizeForHeaderInSection:a5];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v18 = *MEMORY[0x277CBF3A8];
      v19 = *(MEMORY[0x277CBF3A8] + 8);
      goto LABEL_9;
    }

    [v9 headerReferenceSize];
  }

  v18 = v16;
  v19 = v17;
LABEL_9:

  v20 = v18;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForFooterInSection:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if ([(NSArray *)self->_dataSources count]<= a5)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/TVDashboard/GKCollectionMultiDataSource.m"];
    v13 = [v12 lastPathComponent];
    v14 = [v10 stringWithFormat:@"%@ (_dataSources.count > section)\n[%s (%s:%d)]", v11, "-[GKCollectionMultiDataSource collectionView:layout:referenceSizeForFooterInSection:]", objc_msgSend(v13, "UTF8String"), 143];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v14}];
  }

  v15 = [(NSArray *)self->_dataSources objectAtIndexedSubscript:a5];
  if (objc_opt_respondsToSelector())
  {
    [v15 collectionView:v8 layout:v9 referenceSizeForFooterInSection:a5];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v18 = *MEMORY[0x277CBF3A8];
      v19 = *(MEMORY[0x277CBF3A8] + 8);
      goto LABEL_9;
    }

    [v9 footerReferenceSize];
  }

  v18 = v16;
  v19 = v17;
LABEL_9:

  v20 = v18;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(GKCollectionMultiDataSource *)self dataSourceForIndexPath:v10];
  if (objc_opt_respondsToSelector())
  {
    [v11 collectionView:v8 layout:v9 sizeForItemAtIndexPath:v10];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = *MEMORY[0x277CBF3A8];
      v15 = *(MEMORY[0x277CBF3A8] + 8);
      goto LABEL_7;
    }

    [v9 itemSize];
  }

  v14 = v12;
  v15 = v13;
LABEL_7:

  v16 = v14;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(GKCollectionMultiDataSource *)self dataSourceForIndexPath:v7];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 collectionView:v6 shouldSelectItemAtIndexPath:v7];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(GKCollectionMultiDataSource *)self dataSourceForIndexPath:v6];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 presentationViewController];

    if (!v8)
    {
      v9 = [(GKCollectionDataSource *)self presentationViewController];
      [v7 setPresentationViewController:v9];
    }

    [v7 collectionView:v10 didSelectItemAtIndexPath:v6];
  }
}

- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(GKCollectionMultiDataSource *)self dataSourceForIndexPath:v6];
  if (objc_opt_respondsToSelector())
  {
    [v7 collectionView:v8 didDeselectItemAtIndexPath:v6];
  }
}

- (BOOL)collectionView:(id)a3 canFocusItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(GKCollectionMultiDataSource *)self dataSourceForIndexPath:v6];
  v9 = [v8 collectionView:v7 canFocusItemAtIndexPath:v6];

  return v9;
}

- (void)collectionView:(id)a3 didFocusItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(GKCollectionMultiDataSource *)self dataSourceForIndexPath:v6];
  [v8 collectionView:v7 didFocusItemAtIndexPath:v6];
}

- (void)collectionView:(id)a3 didUnfocusItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(GKCollectionMultiDataSource *)self dataSourceForIndexPath:v6];
  [v8 collectionView:v7 didUnfocusItemAtIndexPath:v6];
}

@end