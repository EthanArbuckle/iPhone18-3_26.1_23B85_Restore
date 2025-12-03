@interface GKDashboardLeaderboardSetDataSource
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (GKDashboardLeaderboardSetDataSource)initWithGameRecord:(id)record;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)itemForIndexPath:(id)path;
- (id)sectionHeaderText;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)loadDataWithCompletionHandler:(id)handler;
- (void)removeLeaderboardSetsWithoutImages;
- (void)setupCollectionView:(id)view;
@end

@implementation GKDashboardLeaderboardSetDataSource

- (GKDashboardLeaderboardSetDataSource)initWithGameRecord:(id)record
{
  recordCopy = record;
  v8.receiver = self;
  v8.super_class = GKDashboardLeaderboardSetDataSource;
  v5 = [(GKCollectionDataSource *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(GKDashboardLeaderboardSetDataSource *)v5 setGameRecord:recordCopy];
    [(GKCollectionDataSource *)v6 setUseStandardHeaders:1];
  }

  return v6;
}

- (void)setupCollectionView:(id)view
{
  viewCopy = view;
  _gkFocusingLayout = [viewCopy _gkFocusingLayout];
  [_gkFocusingLayout setFocusScaleFactor:1.0];
  v6 = +[GKDashboardLeaderboardCell];
  [viewCopy registerNib:v6 forCellWithReuseIdentifier:@"leaderboardSetCell"];
  v7.receiver = self;
  v7.super_class = GKDashboardLeaderboardSetDataSource;
  [(GKCollectionDataSource *)&v7 setupCollectionView:viewCopy];
}

- (void)loadDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 0;
  v5 = MEMORY[0x277D0C020];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKDashboardLeaderboardSetDataSource.m", 83, "-[GKDashboardLeaderboardSetDataSource loadDataWithCompletionHandler:]"];
  v7 = [v5 dispatchGroupWithName:v6];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__GKDashboardLeaderboardSetDataSource_loadDataWithCompletionHandler___block_invoke;
  v14[3] = &unk_27966C030;
  v14[4] = self;
  v14[5] = v15;
  [v7 perform:v14];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__GKDashboardLeaderboardSetDataSource_loadDataWithCompletionHandler___block_invoke_5;
  v10[3] = &unk_27966AC88;
  v10[4] = self;
  v8 = handlerCopy;
  v12 = v8;
  v13 = v15;
  v9 = v7;
  v11 = v9;
  [v9 notifyOnMainQueueWithBlock:v10];

  _Block_object_dispose(v15, 8);
}

void __69__GKDashboardLeaderboardSetDataSource_loadDataWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D0C128];
  v5 = [*(a1 + 32) gameRecord];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__GKDashboardLeaderboardSetDataSource_loadDataWithCompletionHandler___block_invoke_2;
  v9[3] = &unk_27966C008;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10 = v3;
  v11 = v6;
  v9[4] = v7;
  v8 = v3;
  [v4 loadLeaderboardSetsForGame:v5 withCompletionHandler:v9];
}

void __69__GKDashboardLeaderboardSetDataSource_loadDataWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = [*(a1 + 32) leaderboardSets];
  *(*(*(a1 + 48) + 8) + 24) = [v5 count] == 0;

  v6 = [*(a1 + 32) leaderboardSets];
  if ([v6 isEqual:v7])
  {
  }

  else
  {

    if (v7 || !a3)
    {
      [*(a1 + 32) setLeaderboardSets:v7];
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }

  (*(*(a1 + 40) + 16))();
}

void __69__GKDashboardLeaderboardSetDataSource_loadDataWithCompletionHandler___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    v2 = *(*(*(a1 + 56) + 8) + 24);
    v3 = [*(a1 + 40) error];
    (*(v1 + 16))(v1, v2, v3);
  }
}

- (void)removeLeaderboardSetsWithoutImages
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](self->_leaderboardSets, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_leaderboardSets;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        leaderboardSetAssetNames = self->_leaderboardSetAssetNames;
        identifier = [v9 identifier];
        v12 = [(NSDictionary *)leaderboardSetAssetNames objectForKeyedSubscript:identifier];

        if (v12)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  [(GKDashboardLeaderboardSetDataSource *)self setLeaderboardSets:v3];
}

- (id)itemForIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(NSArray *)self->_leaderboardSets count];
  if (v5 <= [pathCopy item])
  {
    v6 = 0;
  }

  else
  {
    v6 = -[NSArray objectAtIndexedSubscript:](self->_leaderboardSets, "objectAtIndexedSubscript:", [pathCopy item]);
  }

  return v6;
}

- (id)sectionHeaderText
{
  [(GKDashboardLeaderboardSetDataSource *)self itemCount];
  v2 = MEMORY[0x277CCACA8];
  v3 = GKGameCenterUIFrameworkBundle();
  v4 = GKGetLocalizedStringFromTableInBundle();

  v5 = GKFormattedStringWithGroupingFromInteger();
  v6 = [v2 stringWithFormat:v4, v5];

  return v6;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithReuseIdentifier:@"leaderboardSetCell" forIndexPath:pathCopy];
  item = [pathCopy item];

  if ([(NSArray *)self->_leaderboardSets count]<= item)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/TVDashboard/GKDashboardLeaderboardSetDataSource.m"];
    lastPathComponent = [v11 lastPathComponent];
    v13 = [v9 stringWithFormat:@"%@ (_leaderboardSets.count > index)\n[%s (%s:%d)]", v10, "-[GKDashboardLeaderboardSetDataSource collectionView:cellForItemAtIndexPath:]", objc_msgSend(lastPathComponent, "UTF8String"), 153];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v13}];
  }

  v14 = [(NSArray *)self->_leaderboardSets objectAtIndexedSubscript:item];
  bundleIdentifier = [(GKGameRecord *)self->_gameRecord bundleIdentifier];
  [v7 setBundleIdentifier:bundleIdentifier];

  leaderboardSetAssetNames = self->_leaderboardSetAssetNames;
  identifier = [v14 identifier];
  v18 = [(NSDictionary *)leaderboardSetAssetNames objectForKeyedSubscript:identifier];
  [v7 setImageName:v18];

  [v7 setLeaderboardSet:v14];

  return v7;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v5 = 58.0;
  v6 = 0.0;
  result.height = v5;
  result.width = v6;
  return result;
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  indexPathsForSelectedItems = [view indexPathsForSelectedItems];
  v5 = [indexPathsForSelectedItems count] == 0;

  return v5;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  presentationViewController = [(GKCollectionDataSource *)self presentationViewController];

  if (presentationViewController)
  {
    item = [pathCopy item];
    if ([(NSArray *)self->_leaderboardSets count]<= item)
    {
      v10 = MEMORY[0x277CCACA8];
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/TVDashboard/GKDashboardLeaderboardSetDataSource.m"];
      lastPathComponent = [v12 lastPathComponent];
      v14 = [v10 stringWithFormat:@"%@ (_leaderboardSets.count > index)\n[%s (%s:%d)]", v11, "-[GKDashboardLeaderboardSetDataSource collectionView:didSelectItemAtIndexPath:]", objc_msgSend(lastPathComponent, "UTF8String"), 178];

      [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v14}];
    }

    v15 = [(NSArray *)self->_leaderboardSets objectAtIndexedSubscript:item];
    leaderboardIdentifiers = [v15 leaderboardIdentifiers];
    v17 = [leaderboardIdentifiers count];

    if (v17 < 2)
    {
      v22 = MEMORY[0x277D0C0A0];
      gameRecord = self->_gameRecord;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __79__GKDashboardLeaderboardSetDataSource_collectionView_didSelectItemAtIndexPath___block_invoke;
      v24[3] = &unk_27966D858;
      v24[4] = self;
      v25 = viewCopy;
      v26 = pathCopy;
      [v22 loadLeaderboardsForGame:gameRecord forSet:v15 withPlayer:0 withCompletionHandler:v24];
    }

    else
    {
      v18 = [[GKDashboardLeaderboardListViewController alloc] initWithGameRecord:self->_gameRecord leaderboardSet:v15];
      dataSource = [(GKDashboardCollectionViewController *)v18 dataSource];
      [dataSource setAssetNames:self->_leaderboardAssetNames];
      v20 = [viewCopy cellForItemAtIndexPath:pathCopy];
      popoverSourceView = [v20 popoverSourceView];
      [(GKCollectionDataSource *)self showViewController:v18 popoverSourceView:popoverSourceView];
    }
  }
}

void __79__GKDashboardLeaderboardSetDataSource_collectionView_didSelectItemAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v7 = [a2 firstObject];
  if (v7)
  {
    v3 = [GKDashboardLeaderboardScoreViewController alloc];
    v4 = [*(a1 + 32) gameRecord];
    v5 = [(GKDashboardLeaderboardScoreViewController *)v3 initWithGameRecord:v4 leaderboard:v7];

    v6 = [*(a1 + 32) presentationViewController];
    [v6 _gkPushViewController:v5 animated:1];
  }

  else
  {
    [*(a1 + 40) deselectItemAtIndexPath:*(a1 + 48) animated:0];
  }
}

@end