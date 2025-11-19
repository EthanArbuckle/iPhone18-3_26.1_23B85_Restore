@interface GKDashboardLeaderboardListDataSource
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (GKDashboardLeaderboardListDataSource)initWithGameRecord:(id)a3 leaderboardSet:(id)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)itemForIndexPath:(id)a3;
- (id)sectionHeaderText;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)loadDataWithCompletionHandler:(id)a3;
- (void)removeLeaderboardsWithoutImages;
- (void)setupCollectionView:(id)a3;
@end

@implementation GKDashboardLeaderboardListDataSource

- (GKDashboardLeaderboardListDataSource)initWithGameRecord:(id)a3 leaderboardSet:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = GKDashboardLeaderboardListDataSource;
  v8 = [(GKCollectionDataSource *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(GKDashboardLeaderboardListDataSource *)v8 setGameRecord:v6];
    [(GKDashboardLeaderboardListDataSource *)v9 setLeaderboardSet:v7];
    [(GKCollectionDataSource *)v9 setUseStandardHeaders:1];
  }

  return v9;
}

- (void)setupCollectionView:(id)a3
{
  v4 = a3;
  v5 = [v4 _gkFocusingLayout];
  [v5 setFocusScaleFactor:1.0];
  v6 = +[GKDashboardLeaderboardCell];
  [v4 registerNib:v6 forCellWithReuseIdentifier:@"leaderboardListCell"];
  v7.receiver = self;
  v7.super_class = GKDashboardLeaderboardListDataSource;
  [(GKCollectionDataSource *)&v7 setupCollectionView:v4];
}

- (void)loadDataWithCompletionHandler:(id)a3
{
  v4 = a3;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  v5 = MEMORY[0x277D0C020];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKDashboardLeaderboardListDataSource.m", 82, "-[GKDashboardLeaderboardListDataSource loadDataWithCompletionHandler:]"];
  v7 = [v5 dispatchGroupWithName:v6];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__GKDashboardLeaderboardListDataSource_loadDataWithCompletionHandler___block_invoke;
  v15[3] = &unk_27966AC60;
  v15[4] = self;
  v17 = v18;
  v8 = v7;
  v16 = v8;
  [v8 perform:v15];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__GKDashboardLeaderboardListDataSource_loadDataWithCompletionHandler___block_invoke_5;
  v11[3] = &unk_27966AC88;
  v11[4] = self;
  v9 = v4;
  v13 = v9;
  v14 = v18;
  v10 = v8;
  v12 = v10;
  [v10 notifyOnMainQueueWithBlock:v11];

  _Block_object_dispose(v18, 8);
}

void __70__GKDashboardLeaderboardListDataSource_loadDataWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D0C0A0];
  v5 = [*(a1 + 32) gameRecord];
  v6 = [*(a1 + 32) leaderboardSet];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__GKDashboardLeaderboardListDataSource_loadDataWithCompletionHandler___block_invoke_2;
  v10[3] = &unk_27966AC38;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v13 = *(a1 + 48);
  v10[4] = v8;
  v11 = v7;
  v12 = v3;
  v9 = v3;
  [v4 loadLeaderboardsForGame:v5 forSet:v6 withPlayer:0 withCompletionHandler:v10];
}

void __70__GKDashboardLeaderboardListDataSource_loadDataWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v6 = a4;
  v7 = [*(a1 + 32) leaderboards];
  *(*(*(a1 + 56) + 8) + 24) = [v7 count] == 0;

  v8 = [*(a1 + 32) leaderboards];
  if ([v8 isEqual:v9])
  {
  }

  else
  {

    if (v9 || !v6)
    {
      [*(a1 + 32) setLeaderboards:v9];
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }

  [*(a1 + 40) setError:v6];
  (*(*(a1 + 48) + 16))();
}

void __70__GKDashboardLeaderboardListDataSource_loadDataWithCompletionHandler___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    v2 = *(*(*(a1 + 56) + 8) + 24);
    v3 = [*(a1 + 40) error];
    (*(v1 + 16))(v1, v2, v3);
  }
}

- (void)removeLeaderboardsWithoutImages
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](self->_leaderboards, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_leaderboards;
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
        assetNames = self->_assetNames;
        v11 = [v9 identifier];
        v12 = [(NSDictionary *)assetNames objectForKeyedSubscript:v11];

        if (v12)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  [(GKDashboardLeaderboardListDataSource *)self setLeaderboards:v3];
}

- (id)itemForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(NSArray *)self->_leaderboards count];
  if (v5 <= [v4 item])
  {
    v6 = 0;
  }

  else
  {
    v6 = -[NSArray objectAtIndexedSubscript:](self->_leaderboards, "objectAtIndexedSubscript:", [v4 item]);
  }

  return v6;
}

- (id)sectionHeaderText
{
  [(GKDashboardLeaderboardListDataSource *)self itemCount];
  v2 = MEMORY[0x277CCACA8];
  v3 = GKGameCenterUIFrameworkBundle();
  v4 = GKGetLocalizedStringFromTableInBundle();

  v5 = GKFormattedStringWithGroupingFromInteger();
  v6 = [v2 stringWithFormat:v4, v5];

  return v6;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithReuseIdentifier:@"leaderboardListCell" forIndexPath:v6];
  v8 = [v6 item];

  if ([(NSArray *)self->_leaderboards count]<= v8)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/TVDashboard/GKDashboardLeaderboardListDataSource.m"];
    v12 = [v11 lastPathComponent];
    v13 = [v9 stringWithFormat:@"%@ (_leaderboards.count > index)\n[%s (%s:%d)]", v10, "-[GKDashboardLeaderboardListDataSource collectionView:cellForItemAtIndexPath:]", objc_msgSend(v12, "UTF8String"), 153];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v13}];
  }

  v14 = [(NSArray *)self->_leaderboards objectAtIndexedSubscript:v8];
  v15 = [(GKGameRecord *)self->_gameRecord bundleIdentifier];
  [v7 setBundleIdentifier:v15];

  assetNames = self->_assetNames;
  v17 = [v14 identifier];
  v18 = [(NSDictionary *)assetNames objectForKeyedSubscript:v17];
  [v7 setImageName:v18];

  [v7 setLeaderboard:v14];

  return v7;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v5 = 58.0;
  v6 = 0.0;
  result.height = v5;
  result.width = v6;
  return result;
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v4 = [a3 indexPathsForSelectedItems];
  v5 = [v4 count] == 0;

  return v5;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v16 = a4;
  v5 = [(GKCollectionDataSource *)self presentationViewController];

  v6 = v16;
  if (v5)
  {
    v7 = [v16 item];
    if ([(NSArray *)self->_leaderboards count]<= v7)
    {
      v8 = MEMORY[0x277CCACA8];
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/TVDashboard/GKDashboardLeaderboardListDataSource.m"];
      v11 = [v10 lastPathComponent];
      v12 = [v8 stringWithFormat:@"%@ (_leaderboards.count > index)\n[%s (%s:%d)]", v9, "-[GKDashboardLeaderboardListDataSource collectionView:didSelectItemAtIndexPath:]", objc_msgSend(v11, "UTF8String"), 186];

      [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v12}];
    }

    v13 = [(NSArray *)self->_leaderboards objectAtIndexedSubscript:v7];
    v14 = [[GKDashboardLeaderboardScoreViewController alloc] initWithGameRecord:self->_gameRecord leaderboard:v13];
    v15 = [(GKCollectionDataSource *)self presentationViewController];
    [v15 _gkPushViewController:v14 animated:1];

    v6 = v16;
  }
}

@end