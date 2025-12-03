@interface GKLeaderboardSetDataSource
- (CGSize)standardCellSizeForCollectionView:(id)view;
- (id)itemForIndexPath:(id)path;
- (id)title;
- (int64_t)allowedColumnCount:(int64_t)count;
- (int64_t)itemCount;
- (void)handleSelectionInCollectionView:(id)view forItemAtIndexPath:(id)path;
- (void)loadDataWithCompletionHandler:(id)handler;
- (void)prepareCell:(id)cell forItemAtIndexPath:(id)path;
- (void)presentLeaderboardsListWithSet:(id)set segueToLeaderboard:(id)leaderboard;
- (void)removeLeaderboardSetsWithoutImages;
- (void)updateHighlightsInSectionHeader:(id)header;
@end

@implementation GKLeaderboardSetDataSource

- (int64_t)allowedColumnCount:(int64_t)count
{
  itemCount = [(GKLeaderboardSetDataSource *)self itemCount];
  if (count >= itemCount)
  {
    countCopy = itemCount;
  }

  else
  {
    countCopy = count;
  }

  if (countCopy >= 3)
  {
    countCopy = 3;
  }

  if (countCopy <= 1)
  {
    return 1;
  }

  else
  {
    return countCopy;
  }
}

- (id)title
{
  v2 = GKGameCenterUIFrameworkBundle();
  v3 = GKGetLocalizedStringFromTableInBundle();

  return v3;
}

- (void)loadDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 0;
  v5 = MEMORY[0x277D0C020];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKLeaderboardSetDataSource.m", 60, "-[GKLeaderboardSetDataSource loadDataWithCompletionHandler:]"];
  v7 = [v5 dispatchGroupWithName:v6];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__GKLeaderboardSetDataSource_loadDataWithCompletionHandler___block_invoke;
  v14[3] = &unk_27966C030;
  v14[4] = self;
  v14[5] = v15;
  [v7 perform:v14];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__GKLeaderboardSetDataSource_loadDataWithCompletionHandler___block_invoke_5;
  v10[3] = &unk_27966C058;
  v8 = handlerCopy;
  v12 = v8;
  v13 = v15;
  v9 = v7;
  v11 = v9;
  [v9 notifyOnMainQueueWithBlock:v10];

  _Block_object_dispose(v15, 8);
}

void __60__GKLeaderboardSetDataSource_loadDataWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D0C128];
  v5 = [*(a1 + 32) gameRecord];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__GKLeaderboardSetDataSource_loadDataWithCompletionHandler___block_invoke_2;
  v9[3] = &unk_27966C008;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10 = v3;
  v11 = v6;
  v9[4] = v7;
  v8 = v3;
  [v4 loadLeaderboardSetsForGame:v5 withCompletionHandler:v9];
}

void __60__GKLeaderboardSetDataSource_loadDataWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
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

void __60__GKLeaderboardSetDataSource_loadDataWithCompletionHandler___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(*(*(a1 + 48) + 8) + 24);
    v3 = [*(a1 + 32) error];
    (*(v1 + 16))(v1, v2, v3);
  }
}

- (void)removeLeaderboardSetsWithoutImages
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  leaderboardSets = [(GKLeaderboardSetDataSource *)self leaderboardSets];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(leaderboardSets, "count")}];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  leaderboardSets2 = [(GKLeaderboardSetDataSource *)self leaderboardSets];
  v7 = [leaderboardSets2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(leaderboardSets2);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        leaderboardSetAssetNames = self->_leaderboardSetAssetNames;
        identifier = [v11 identifier];
        v14 = [(NSDictionary *)leaderboardSetAssetNames objectForKeyedSubscript:identifier];

        if (v14)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [leaderboardSets2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [(GKLeaderboardSetDataSource *)self setLeaderboardSets:v5];
}

- (int64_t)itemCount
{
  leaderboardSets = [(GKLeaderboardSetDataSource *)self leaderboardSets];
  v3 = [leaderboardSets count];

  return v3;
}

- (id)itemForIndexPath:(id)path
{
  pathCopy = path;
  leaderboardSets = [(GKLeaderboardSetDataSource *)self leaderboardSets];
  v6 = [leaderboardSets count];
  if (v6 <= [pathCopy item])
  {
    v8 = 0;
  }

  else
  {
    leaderboardSets2 = [(GKLeaderboardSetDataSource *)self leaderboardSets];
    v8 = [leaderboardSets2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];
  }

  return v8;
}

- (CGSize)standardCellSizeForCollectionView:(id)view
{
  viewCopy = view;
  currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
  v5 = [currentTraitCollection horizontalSizeClass] == 1 && objc_msgSend(currentTraitCollection, "verticalSizeClass") == 2;
  preferredContentSizeCategory = [currentTraitCollection preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    *&v9 = 282.0;
    if (userInterfaceIdiom == 1)
    {
      v10 = 696.0;
    }

    else if (v5)
    {
      [viewCopy frame];
      if (v12 + -20.0 <= 335.0)
      {
        v10 = v12 + -20.0;
      }

      else
      {
        v10 = 335.0;
      }

      if ([preferredContentSizeCategory isEqualToString:*MEMORY[0x277D767E8]])
      {
        *&v9 = 564.0;
      }

      else if ([preferredContentSizeCategory isEqualToString:*MEMORY[0x277D767F0]])
      {
        *&v9 = 534.0;
      }

      else if ([preferredContentSizeCategory isEqualToString:*MEMORY[0x277D767F8]])
      {
        *&v9 = 504.0;
      }

      else if ([preferredContentSizeCategory isEqualToString:*MEMORY[0x277D76800]])
      {
        *&v9 = 474.0;
      }

      else
      {
        *&v9 = 444.0;
      }
    }

    else
    {
      [viewCopy bounds];
      v16 = v15;
      superview = [viewCopy superview];
      [superview safeAreaInsets];
      v19 = v16 - v18;
      superview2 = [viewCopy superview];
      [superview2 safeAreaInsets];
      v10 = v19 - v21 + -32.0;
    }
  }

  else
  {
    if (v5)
    {
      [viewCopy frame];
      if (v11 + -20.0 <= 335.0)
      {
        v10 = v11 + -20.0;
      }

      else
      {
        v10 = 335.0;
      }
    }

    else
    {
      v10 = 335.0;
    }

    *&v9 = 276.0;
  }

  v13 = v10;
  v14 = *&v9;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)updateHighlightsInSectionHeader:(id)header
{
  headerCopy = header;
  gameRecord = [(GKGameLayerCollectionDataSource *)self gameRecord];
  [headerCopy updateHighlightsWithGameRecord:gameRecord leaderboardCount:0 setCount:{-[GKLeaderboardSetDataSource itemCount](self, "itemCount")}];
}

- (void)prepareCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  item = [path item];
  leaderboardSets = [(GKLeaderboardSetDataSource *)self leaderboardSets];
  v9 = [leaderboardSets count];

  if (v9 <= item)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/GameCenterUIService/GKLeaderboardSetDataSource.m"];
    lastPathComponent = [v12 lastPathComponent];
    v14 = [v10 stringWithFormat:@"%@ (self.leaderboardSets.count > index)\n[%s (%s:%d)]", v11, "-[GKLeaderboardSetDataSource prepareCell:forItemAtIndexPath:]", objc_msgSend(lastPathComponent, "UTF8String"), 169];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v14}];
  }

  leaderboardSets2 = [(GKLeaderboardSetDataSource *)self leaderboardSets];
  v21 = [leaderboardSets2 objectAtIndexedSubscript:item];

  gameRecord = [(GKGameLayerCollectionDataSource *)self gameRecord];
  bundleIdentifier = [gameRecord bundleIdentifier];
  [cellCopy setBundleIdentifier:bundleIdentifier];

  leaderboardSetAssetNames = [(GKLeaderboardSetDataSource *)self leaderboardSetAssetNames];
  identifier = [v21 identifier];
  v20 = [leaderboardSetAssetNames objectForKeyedSubscript:identifier];
  [cellCopy setImageName:v20];

  [cellCopy setLeaderboardSet:v21];
}

- (void)handleSelectionInCollectionView:(id)view forItemAtIndexPath:(id)path
{
  pathCopy = path;
  presentationViewController = [(GKGameLayerCollectionDataSource *)self presentationViewController];

  if (presentationViewController)
  {
    item = [pathCopy item];
    leaderboardSets = [(GKLeaderboardSetDataSource *)self leaderboardSets];
    v9 = [leaderboardSets count];

    if (v9 <= item)
    {
      v10 = MEMORY[0x277CCACA8];
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/GameCenterUIService/GKLeaderboardSetDataSource.m"];
      lastPathComponent = [v12 lastPathComponent];
      v14 = [v10 stringWithFormat:@"%@ (self.leaderboardSets.count > index)\n[%s (%s:%d)]", v11, "-[GKLeaderboardSetDataSource handleSelectionInCollectionView:forItemAtIndexPath:]", objc_msgSend(lastPathComponent, "UTF8String"), 182];

      [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v14}];
    }

    leaderboardSets2 = [(GKLeaderboardSetDataSource *)self leaderboardSets];
    v16 = [leaderboardSets2 objectAtIndexedSubscript:item];

    reporter = [MEMORY[0x277D0BFA8] reporter];
    identifier = [v16 identifier];
    [reporter recordClickWithAction:@"navigate" targetId:identifier targetType:@"button" pageId:@"leaderboardGroups" pageType:@"leaderboard"];

    leaderboardIdentifiers = [v16 leaderboardIdentifiers];
    v20 = [leaderboardIdentifiers count];

    if (v20 < 2)
    {
      v21 = MEMORY[0x277D0C0A0];
      gameRecord = [(GKGameLayerCollectionDataSource *)self gameRecord];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __81__GKLeaderboardSetDataSource_handleSelectionInCollectionView_forItemAtIndexPath___block_invoke;
      v23[3] = &unk_27966C080;
      v23[4] = self;
      v24 = v16;
      [v21 loadLeaderboardsForGame:gameRecord forSet:v24 withPlayer:0 withCompletionHandler:v23];
    }

    else
    {
      [(GKLeaderboardSetDataSource *)self presentLeaderboardsListWithSet:v16 segueToLeaderboard:0];
    }
  }
}

void __81__GKLeaderboardSetDataSource_handleSelectionInCollectionView_forItemAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  [*(a1 + 32) presentLeaderboardsListWithSet:*(a1 + 40) segueToLeaderboard:v3];
}

- (void)presentLeaderboardsListWithSet:(id)set segueToLeaderboard:(id)leaderboard
{
  setCopy = set;
  leaderboardCopy = leaderboard;
  presentationViewController = [(GKGameLayerCollectionDataSource *)self presentationViewController];

  if (presentationViewController)
  {
    presentationViewController2 = [(GKGameLayerCollectionDataSource *)self presentationViewController];
    navigationController = [presentationViewController2 navigationController];

    viewControllers = [navigationController viewControllers];
    v11 = [viewControllers mutableCopy];

    if (leaderboardCopy)
    {
      v12 = [GKLeaderboardScoreViewController alloc];
      gameRecord = [(GKGameLayerCollectionDataSource *)self gameRecord];
      v14 = [(GKLeaderboardScoreViewController *)v12 initWithGameRecord:gameRecord leaderboard:leaderboardCopy];

      [v11 addObject:v14];
    }

    else
    {
      v15 = [GKLeaderboardListViewController alloc];
      gameRecord2 = [(GKGameLayerCollectionDataSource *)self gameRecord];
      v14 = [(GKLeaderboardListViewController *)v15 initWithGameRecord:gameRecord2 leaderboardSet:setCopy];

      dataSource = [(GKLeaderboardScoreViewController *)v14 dataSource];
      [dataSource setAssetNames:self->_leaderboardAssetNames];
      [v11 addObject:v14];
    }

    reporter = [MEMORY[0x277D0C1F8] reporter];
    v19 = reporter;
    v20 = MEMORY[0x277D0BAE0];
    if (leaderboardCopy)
    {
      v20 = MEMORY[0x277D0BAD8];
    }

    [reporter reportEvent:*MEMORY[0x277D0BE70] type:*v20];

    [navigationController setViewControllers:v11 animated:1];
  }
}

@end