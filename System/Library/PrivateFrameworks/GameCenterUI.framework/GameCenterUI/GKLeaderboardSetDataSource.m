@interface GKLeaderboardSetDataSource
- (CGSize)standardCellSizeForCollectionView:(id)a3;
- (id)itemForIndexPath:(id)a3;
- (id)title;
- (int64_t)allowedColumnCount:(int64_t)a3;
- (int64_t)itemCount;
- (void)handleSelectionInCollectionView:(id)a3 forItemAtIndexPath:(id)a4;
- (void)loadDataWithCompletionHandler:(id)a3;
- (void)prepareCell:(id)a3 forItemAtIndexPath:(id)a4;
- (void)presentLeaderboardsListWithSet:(id)a3 segueToLeaderboard:(id)a4;
- (void)removeLeaderboardSetsWithoutImages;
- (void)updateHighlightsInSectionHeader:(id)a3;
@end

@implementation GKLeaderboardSetDataSource

- (int64_t)allowedColumnCount:(int64_t)a3
{
  v4 = [(GKLeaderboardSetDataSource *)self itemCount];
  if (a3 >= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a3;
  }

  if (v5 >= 3)
  {
    v5 = 3;
  }

  if (v5 <= 1)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

- (id)title
{
  v2 = GKGameCenterUIFrameworkBundle();
  v3 = GKGetLocalizedStringFromTableInBundle();

  return v3;
}

- (void)loadDataWithCompletionHandler:(id)a3
{
  v4 = a3;
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
  v8 = v4;
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
  v4 = [(GKLeaderboardSetDataSource *)self leaderboardSets];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(GKLeaderboardSetDataSource *)self leaderboardSets];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        leaderboardSetAssetNames = self->_leaderboardSetAssetNames;
        v13 = [v11 identifier];
        v14 = [(NSDictionary *)leaderboardSetAssetNames objectForKeyedSubscript:v13];

        if (v14)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [(GKLeaderboardSetDataSource *)self setLeaderboardSets:v5];
}

- (int64_t)itemCount
{
  v2 = [(GKLeaderboardSetDataSource *)self leaderboardSets];
  v3 = [v2 count];

  return v3;
}

- (id)itemForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(GKLeaderboardSetDataSource *)self leaderboardSets];
  v6 = [v5 count];
  if (v6 <= [v4 item])
  {
    v8 = 0;
  }

  else
  {
    v7 = [(GKLeaderboardSetDataSource *)self leaderboardSets];
    v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(v4, "item")}];
  }

  return v8;
}

- (CGSize)standardCellSizeForCollectionView:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D75C80] currentTraitCollection];
  v5 = [v4 horizontalSizeClass] == 1 && objc_msgSend(v4, "verticalSizeClass") == 2;
  v6 = [v4 preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(v6))
  {
    v7 = [MEMORY[0x277D75418] currentDevice];
    v8 = [v7 userInterfaceIdiom];

    *&v9 = 282.0;
    if (v8 == 1)
    {
      v10 = 696.0;
    }

    else if (v5)
    {
      [v3 frame];
      if (v12 + -20.0 <= 335.0)
      {
        v10 = v12 + -20.0;
      }

      else
      {
        v10 = 335.0;
      }

      if ([v6 isEqualToString:*MEMORY[0x277D767E8]])
      {
        *&v9 = 564.0;
      }

      else if ([v6 isEqualToString:*MEMORY[0x277D767F0]])
      {
        *&v9 = 534.0;
      }

      else if ([v6 isEqualToString:*MEMORY[0x277D767F8]])
      {
        *&v9 = 504.0;
      }

      else if ([v6 isEqualToString:*MEMORY[0x277D76800]])
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
      [v3 bounds];
      v16 = v15;
      v17 = [v3 superview];
      [v17 safeAreaInsets];
      v19 = v16 - v18;
      v20 = [v3 superview];
      [v20 safeAreaInsets];
      v10 = v19 - v21 + -32.0;
    }
  }

  else
  {
    if (v5)
    {
      [v3 frame];
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

- (void)updateHighlightsInSectionHeader:(id)a3
{
  v4 = a3;
  v5 = [(GKGameLayerCollectionDataSource *)self gameRecord];
  [v4 updateHighlightsWithGameRecord:v5 leaderboardCount:0 setCount:{-[GKLeaderboardSetDataSource itemCount](self, "itemCount")}];
}

- (void)prepareCell:(id)a3 forItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = [a4 item];
  v8 = [(GKLeaderboardSetDataSource *)self leaderboardSets];
  v9 = [v8 count];

  if (v9 <= v7)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/GameCenterUIService/GKLeaderboardSetDataSource.m"];
    v13 = [v12 lastPathComponent];
    v14 = [v10 stringWithFormat:@"%@ (self.leaderboardSets.count > index)\n[%s (%s:%d)]", v11, "-[GKLeaderboardSetDataSource prepareCell:forItemAtIndexPath:]", objc_msgSend(v13, "UTF8String"), 169];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v14}];
  }

  v15 = [(GKLeaderboardSetDataSource *)self leaderboardSets];
  v21 = [v15 objectAtIndexedSubscript:v7];

  v16 = [(GKGameLayerCollectionDataSource *)self gameRecord];
  v17 = [v16 bundleIdentifier];
  [v6 setBundleIdentifier:v17];

  v18 = [(GKLeaderboardSetDataSource *)self leaderboardSetAssetNames];
  v19 = [v21 identifier];
  v20 = [v18 objectForKeyedSubscript:v19];
  [v6 setImageName:v20];

  [v6 setLeaderboardSet:v21];
}

- (void)handleSelectionInCollectionView:(id)a3 forItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(GKGameLayerCollectionDataSource *)self presentationViewController];

  if (v6)
  {
    v7 = [v5 item];
    v8 = [(GKLeaderboardSetDataSource *)self leaderboardSets];
    v9 = [v8 count];

    if (v9 <= v7)
    {
      v10 = MEMORY[0x277CCACA8];
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/GameCenterUIService/GKLeaderboardSetDataSource.m"];
      v13 = [v12 lastPathComponent];
      v14 = [v10 stringWithFormat:@"%@ (self.leaderboardSets.count > index)\n[%s (%s:%d)]", v11, "-[GKLeaderboardSetDataSource handleSelectionInCollectionView:forItemAtIndexPath:]", objc_msgSend(v13, "UTF8String"), 182];

      [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v14}];
    }

    v15 = [(GKLeaderboardSetDataSource *)self leaderboardSets];
    v16 = [v15 objectAtIndexedSubscript:v7];

    v17 = [MEMORY[0x277D0BFA8] reporter];
    v18 = [v16 identifier];
    [v17 recordClickWithAction:@"navigate" targetId:v18 targetType:@"button" pageId:@"leaderboardGroups" pageType:@"leaderboard"];

    v19 = [v16 leaderboardIdentifiers];
    v20 = [v19 count];

    if (v20 < 2)
    {
      v21 = MEMORY[0x277D0C0A0];
      v22 = [(GKGameLayerCollectionDataSource *)self gameRecord];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __81__GKLeaderboardSetDataSource_handleSelectionInCollectionView_forItemAtIndexPath___block_invoke;
      v23[3] = &unk_27966C080;
      v23[4] = self;
      v24 = v16;
      [v21 loadLeaderboardsForGame:v22 forSet:v24 withPlayer:0 withCompletionHandler:v23];
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

- (void)presentLeaderboardsListWithSet:(id)a3 segueToLeaderboard:(id)a4
{
  v21 = a3;
  v6 = a4;
  v7 = [(GKGameLayerCollectionDataSource *)self presentationViewController];

  if (v7)
  {
    v8 = [(GKGameLayerCollectionDataSource *)self presentationViewController];
    v9 = [v8 navigationController];

    v10 = [v9 viewControllers];
    v11 = [v10 mutableCopy];

    if (v6)
    {
      v12 = [GKLeaderboardScoreViewController alloc];
      v13 = [(GKGameLayerCollectionDataSource *)self gameRecord];
      v14 = [(GKLeaderboardScoreViewController *)v12 initWithGameRecord:v13 leaderboard:v6];

      [v11 addObject:v14];
    }

    else
    {
      v15 = [GKLeaderboardListViewController alloc];
      v16 = [(GKGameLayerCollectionDataSource *)self gameRecord];
      v14 = [(GKLeaderboardListViewController *)v15 initWithGameRecord:v16 leaderboardSet:v21];

      v17 = [(GKLeaderboardScoreViewController *)v14 dataSource];
      [v17 setAssetNames:self->_leaderboardAssetNames];
      [v11 addObject:v14];
    }

    v18 = [MEMORY[0x277D0C1F8] reporter];
    v19 = v18;
    v20 = MEMORY[0x277D0BAE0];
    if (v6)
    {
      v20 = MEMORY[0x277D0BAD8];
    }

    [v18 reportEvent:*MEMORY[0x277D0BE70] type:*v20];

    [v9 setViewControllers:v11 animated:1];
  }
}

@end