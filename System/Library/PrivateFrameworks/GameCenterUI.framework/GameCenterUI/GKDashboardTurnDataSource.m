@interface GKDashboardTurnDataSource
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (GKDashboardTurnDataSource)init;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)itemForIndexPath:(id)a3;
- (id)sectionHeaderText;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)loadDataWithCompletionHandler:(id)a3;
- (void)setupCollectionView:(id)a3;
@end

@implementation GKDashboardTurnDataSource

- (GKDashboardTurnDataSource)init
{
  v5.receiver = self;
  v5.super_class = GKDashboardTurnDataSource;
  v2 = [(GKCollectionDataSource *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(GKCollectionDataSource *)v2 setUseStandardHeaders:1];
  }

  return v3;
}

- (void)setupCollectionView:(id)a3
{
  v5.receiver = self;
  v5.super_class = GKDashboardTurnDataSource;
  v3 = a3;
  [(GKCollectionDataSource *)&v5 setupCollectionView:v3];
  v4 = [GKDashboardTurnCell _gkNib:v5.receiver];
  [v3 registerNib:v4 forCellWithReuseIdentifier:@"turnCell"];
}

- (void)loadDataWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D0C238];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__GKDashboardTurnDataSource_loadDataWithCompletionHandler___block_invoke;
  v7[3] = &unk_279669DF8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 loadTurnBasedMatchSummariesIncludingCompatibleBundleID:1 withCompletionHandler:v7];
}

void __59__GKDashboardTurnDataSource_loadDataWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a3;
  v5 = MEMORY[0x277CCAC30];
  v6 = a2;
  v7 = [v5 predicateWithBlock:&__block_literal_global_23];
  v8 = [v6 filteredArrayUsingPredicate:v7];

  if (([*(*(a1 + 32) + 64) isEqualToArray:v8] & 1) != 0 || !v6 && v11)
  {
    v9 = 0;
  }

  else
  {
    [*(a1 + 32) setMatches:v8];
    v9 = 1;
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v9, v11);
  }
}

- (id)itemForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(NSArray *)self->_matches count];
  if (v5 <= [v4 item])
  {
    v6 = 0;
  }

  else
  {
    v6 = -[NSArray objectAtIndexedSubscript:](self->_matches, "objectAtIndexedSubscript:", [v4 item]);
  }

  return v6;
}

- (id)sectionHeaderText
{
  [(GKDashboardTurnDataSource *)self itemCount];
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
  v7 = [a3 dequeueReusableCellWithReuseIdentifier:@"turnCell" forIndexPath:v6];
  v8 = [v6 item];

  if ([(NSArray *)self->_matches count]<= v8)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/TVDashboard/GKDashboardTurnDataSource.m"];
    v12 = [v11 lastPathComponent];
    v13 = [v9 stringWithFormat:@"%@ (_matches.count > index)\n[%s (%s:%d)]", v10, "-[GKDashboardTurnDataSource collectionView:cellForItemAtIndexPath:]", objc_msgSend(v12, "UTF8String"), 107];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v13}];
  }

  v14 = [(NSArray *)self->_matches objectAtIndexedSubscript:v8];
  [v7 configureForMatch:v14];

  return v7;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  [GKDashboardTurnCell defaultSize:a3];
  v6 = 0.0;
  result.height = v5;
  result.width = v6;
  return result;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v18 = a3;
  v6 = a4;
  v7 = [(GKCollectionDataSource *)self presentationViewController];

  if (v7)
  {
    v8 = [v6 item];
    if ([(NSArray *)self->_matches count]<= v8)
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/TVDashboard/GKDashboardTurnDataSource.m"];
      v12 = [v11 lastPathComponent];
      v13 = [v9 stringWithFormat:@"%@ (_matches.count > index)\n[%s (%s:%d)]", v10, "-[GKDashboardTurnDataSource collectionView:didSelectItemAtIndexPath:]", objc_msgSend(v12, "UTF8String"), 125];

      [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v13}];
    }

    v14 = [(NSArray *)self->_matches objectAtIndexedSubscript:v8];
    v15 = [[GKDashboardTurnDetailViewController alloc] initWithTurnBasedMatch:v14];
    [(GKDashboardTurnDetailViewController *)v15 setShouldShowPlay:self->_shouldShowPlay];
    [(GKDashboardTurnDetailViewController *)v15 setShouldShowQuit:self->_shouldShowQuit];
    v16 = [v18 cellForItemAtIndexPath:v6];
    v17 = [v16 popoverSourceView];
    [(GKCollectionDataSource *)self showViewController:v15 popoverSourceView:v17];
  }
}

@end