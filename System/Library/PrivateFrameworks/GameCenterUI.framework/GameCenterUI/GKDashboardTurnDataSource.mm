@interface GKDashboardTurnDataSource
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (GKDashboardTurnDataSource)init;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)itemForIndexPath:(id)path;
- (id)sectionHeaderText;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)loadDataWithCompletionHandler:(id)handler;
- (void)setupCollectionView:(id)view;
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

- (void)setupCollectionView:(id)view
{
  v5.receiver = self;
  v5.super_class = GKDashboardTurnDataSource;
  viewCopy = view;
  [(GKCollectionDataSource *)&v5 setupCollectionView:viewCopy];
  v4 = [GKDashboardTurnCell _gkNib:v5.receiver];
  [viewCopy registerNib:v4 forCellWithReuseIdentifier:@"turnCell"];
}

- (void)loadDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = MEMORY[0x277D0C238];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__GKDashboardTurnDataSource_loadDataWithCompletionHandler___block_invoke;
  v7[3] = &unk_279669DF8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
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

- (id)itemForIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(NSArray *)self->_matches count];
  if (v5 <= [pathCopy item])
  {
    v6 = 0;
  }

  else
  {
    v6 = -[NSArray objectAtIndexedSubscript:](self->_matches, "objectAtIndexedSubscript:", [pathCopy item]);
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

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithReuseIdentifier:@"turnCell" forIndexPath:pathCopy];
  item = [pathCopy item];

  if ([(NSArray *)self->_matches count]<= item)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/TVDashboard/GKDashboardTurnDataSource.m"];
    lastPathComponent = [v11 lastPathComponent];
    v13 = [v9 stringWithFormat:@"%@ (_matches.count > index)\n[%s (%s:%d)]", v10, "-[GKDashboardTurnDataSource collectionView:cellForItemAtIndexPath:]", objc_msgSend(lastPathComponent, "UTF8String"), 107];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v13}];
  }

  v14 = [(NSArray *)self->_matches objectAtIndexedSubscript:item];
  [v7 configureForMatch:v14];

  return v7;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  [GKDashboardTurnCell defaultSize:view];
  v6 = 0.0;
  result.height = v5;
  result.width = v6;
  return result;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  presentationViewController = [(GKCollectionDataSource *)self presentationViewController];

  if (presentationViewController)
  {
    item = [pathCopy item];
    if ([(NSArray *)self->_matches count]<= item)
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/TVDashboard/GKDashboardTurnDataSource.m"];
      lastPathComponent = [v11 lastPathComponent];
      v13 = [v9 stringWithFormat:@"%@ (_matches.count > index)\n[%s (%s:%d)]", v10, "-[GKDashboardTurnDataSource collectionView:didSelectItemAtIndexPath:]", objc_msgSend(lastPathComponent, "UTF8String"), 125];

      [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v13}];
    }

    v14 = [(NSArray *)self->_matches objectAtIndexedSubscript:item];
    v15 = [[GKDashboardTurnDetailViewController alloc] initWithTurnBasedMatch:v14];
    [(GKDashboardTurnDetailViewController *)v15 setShouldShowPlay:self->_shouldShowPlay];
    [(GKDashboardTurnDetailViewController *)v15 setShouldShowQuit:self->_shouldShowQuit];
    v16 = [viewCopy cellForItemAtIndexPath:pathCopy];
    popoverSourceView = [v16 popoverSourceView];
    [(GKCollectionDataSource *)self showViewController:v15 popoverSourceView:popoverSourceView];
  }
}

@end