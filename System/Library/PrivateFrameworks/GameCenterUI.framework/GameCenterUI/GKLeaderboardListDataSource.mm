@interface GKLeaderboardListDataSource
- (CGSize)standardCellSizeForCollectionView:(id)a3;
- (GKLeaderboardListDataSource)initWithGameRecord:(id)a3 leaderboardSet:(id)a4;
- (UICollectionView)collectionView;
- (id)itemForIndexPath:(id)a3;
- (id)title;
- (int64_t)itemCount;
- (void)dealloc;
- (void)handleSelectionInCollectionView:(id)a3 forItemAtIndexPath:(id)a4;
- (void)loadDataWithCompletionHandler:(id)a3;
- (void)prepareCell:(id)a3 forItemAtIndexPath:(id)a4;
- (void)removeLeaderboardsWithoutImages;
- (void)setupCollectionView:(id)a3;
- (void)setupTimer;
- (void)updateHighlightsInSectionHeader:(id)a3;
@end

@implementation GKLeaderboardListDataSource

- (GKLeaderboardListDataSource)initWithGameRecord:(id)a3 leaderboardSet:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = GKLeaderboardListDataSource;
  v7 = [(GKGameLayerCollectionDataSource *)&v10 initWithGameRecord:a3];
  v8 = v7;
  if (v7)
  {
    [(GKLeaderboardListDataSource *)v7 setLeaderboardSet:v6];
  }

  return v8;
}

- (void)dealloc
{
  v3 = [(GKLeaderboardListDataSource *)self timer];
  [v3 invalidate];

  [(GKLeaderboardListDataSource *)self setTimer:0];
  v4.receiver = self;
  v4.super_class = GKLeaderboardListDataSource;
  [(GKLeaderboardListDataSource *)&v4 dealloc];
}

- (void)setupCollectionView:(id)a3
{
  v5.receiver = self;
  v5.super_class = GKLeaderboardListDataSource;
  v4 = a3;
  [(GKLeaderboardCollectionDataSource *)&v5 setupCollectionView:v4];
  [(GKLeaderboardListDataSource *)self setCollectionView:v4, v5.receiver, v5.super_class];
}

- (void)setupTimer
{
  v3 = [(GKLeaderboardListDataSource *)self timer];

  if (v3)
  {
    v4 = [(GKLeaderboardListDataSource *)self timer];
    [v4 invalidate];
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__GKLeaderboardListDataSource_setupTimer__block_invoke;
  v6[3] = &unk_27966B900;
  v6[4] = self;
  v5 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:1 repeats:v6 block:1.0];
  [(GKLeaderboardListDataSource *)self setTimer:v5];
}

void __41__GKLeaderboardListDataSource_setupTimer__block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  v4 = [*(a1 + 32) leaderboards];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __41__GKLeaderboardListDataSource_setupTimer__block_invoke_2;
  v13[3] = &unk_27966B8D8;
  v5 = v3;
  v14 = v5;
  v6 = v2;
  v15 = v6;
  [v4 enumerateObjectsUsingBlock:v13];

  if ([v5 count])
  {
    v7 = MEMORY[0x277D0C0A0];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __41__GKLeaderboardListDataSource_setupTimer__block_invoke_3;
    v10[3] = &unk_27966A8B8;
    v8 = v6;
    v9 = *(a1 + 32);
    v11 = v8;
    v12 = v9;
    [v7 loadLeaderboardsWithIDs:v5 completionHandler:v10];
  }
}

void __41__GKLeaderboardListDataSource_setupTimer__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = a2;
  if ([v14 type] == 1)
  {
    v5 = [v14 nextStartDate];
    v6 = [MEMORY[0x277CBEAA8] date];
    [v5 timeIntervalSinceDate:v6];
    v8 = v7;

    if (v8 <= 0.0)
    {
      v9 = *(a1 + 32);
      v10 = [v14 baseLeaderboardID];
      [v9 addObject:v10];

      v11 = [MEMORY[0x277CCAA70] indexPathForItem:a3 inSection:0];
      v12 = *(a1 + 40);
      v13 = [v14 baseLeaderboardID];
      [v12 setObject:v11 forKeyedSubscript:v13];
    }
  }
}

void __41__GKLeaderboardListDataSource_setupTimer__block_invoke_3(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = *(a1 + 32);
        v12 = [v10 baseLeaderboardID];
        v13 = [v11 objectForKeyedSubscript:v12];

        [v4 addObject:v13];
        v14 = [*(a1 + 40) leaderboards];
        [v14 setObject:v10 atIndexedSubscript:{objc_msgSend(v13, "item")}];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    v15 = [*(a1 + 40) collectionView];
    [v15 reloadItemsAtIndexPaths:v4];
  }
}

- (id)title
{
  v3 = [(GKLeaderboardListDataSource *)self leaderboardSet];

  if (v3)
  {
    v4 = [(GKLeaderboardListDataSource *)self leaderboardSet];
    [v4 title];
  }

  else
  {
    v4 = GKGameCenterUIFrameworkBundle();
    GKGetLocalizedStringFromTableInBundle();
  }
  v5 = ;

  return v5;
}

- (void)loadDataWithCompletionHandler:(id)a3
{
  v4 = a3;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = 0;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v5 = MEMORY[0x277D0C020];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKLeaderboardListDataSource.m", 116, "-[GKLeaderboardListDataSource loadDataWithCompletionHandler:]"];
  v7 = [v5 dispatchGroupWithName:v6];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __61__GKLeaderboardListDataSource_loadDataWithCompletionHandler___block_invoke;
  v16[3] = &unk_27966B928;
  v16[4] = self;
  v18 = v22;
  v19 = v20;
  v8 = v7;
  v17 = v8;
  [v8 perform:v16];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__GKLeaderboardListDataSource_loadDataWithCompletionHandler___block_invoke_5;
  v11[3] = &unk_27966B950;
  v14 = v20;
  v11[4] = self;
  v9 = v4;
  v13 = v9;
  v15 = v22;
  v10 = v8;
  v12 = v10;
  [v10 notifyOnMainQueueWithBlock:v11];

  _Block_object_dispose(v20, 8);
  _Block_object_dispose(v22, 8);
}

void __61__GKLeaderboardListDataSource_loadDataWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D0C0A0];
  v5 = [*(a1 + 32) leaderboardSet];
  v6 = [v5 identifier];
  v7 = [*(a1 + 32) gameRecord];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__GKLeaderboardListDataSource_loadDataWithCompletionHandler___block_invoke_2;
  v10[3] = &unk_27966A0F8;
  v8 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v13 = *(a1 + 48);
  v11 = v8;
  v12 = v3;
  v9 = v3;
  [v4 loadLeaderboardsWithIDs:0 setIdentifier:v6 game:v7 completionHandler:v10];
}

void __61__GKLeaderboardListDataSource_loadDataWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) leaderboards];
  *(*(*(a1 + 56) + 8) + 24) = [v7 count] == 0;

  v8 = [*(a1 + 32) leaderboards];
  if ([v8 isEqual:v5])
  {
LABEL_14:

    goto LABEL_15;
  }

  if (v5 || !v6)
  {
    v9 = [MEMORY[0x277CBEB18] arrayWithArray:v5];
    [*(a1 + 32) setLeaderboards:v9];

    *(*(*(a1 + 56) + 8) + 24) = 1;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = v5;
    v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v8);
          }

          if ([*(*(&v14 + 1) + 8 * i) type] == 1)
          {
            *(*(*(a1 + 64) + 8) + 24) = 1;
            goto LABEL_14;
          }
        }

        v11 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_14;
  }

LABEL_15:
  [*(a1 + 40) setError:{v6, v14}];
  (*(*(a1 + 48) + 16))();
}

void __61__GKLeaderboardListDataSource_loadDataWithCompletionHandler___block_invoke_5(uint64_t a1)
{
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    [*(a1 + 32) setupTimer];
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(*(*(a1 + 64) + 8) + 24);
    v4 = [*(a1 + 40) error];
    (*(v2 + 16))(v2, v3, v4);
  }
}

- (void)removeLeaderboardsWithoutImages
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  v4 = [(GKLeaderboardListDataSource *)self leaderboards];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(GKLeaderboardListDataSource *)self leaderboards];
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
        assetNames = self->_assetNames;
        v13 = [v11 identifier];
        v14 = [(NSDictionary *)assetNames objectForKeyedSubscript:v13];

        if (v14)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [(GKLeaderboardListDataSource *)self setLeaderboards:v5];
}

- (int64_t)itemCount
{
  v2 = [(GKLeaderboardListDataSource *)self leaderboards];
  v3 = [v2 count];

  return v3;
}

- (id)itemForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(GKLeaderboardListDataSource *)self leaderboards];
  v6 = [v5 count];
  if (v6 <= [v4 item])
  {
    v8 = 0;
  }

  else
  {
    v7 = [(GKLeaderboardListDataSource *)self leaderboards];
    v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(v4, "item")}];
  }

  return v8;
}

- (CGSize)standardCellSizeForCollectionView:(id)a3
{
  v4 = a3;
  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    *&v5 = 288.0;
    v6 = 188.0;
  }

  else
  {
    v7 = [MEMORY[0x277D75C80] currentTraitCollection];
    v8 = [v7 horizontalSizeClass] == 1 && objc_msgSend(v7, "verticalSizeClass") == 2;
    v9 = [v7 preferredContentSizeCategory];
    if (UIContentSizeCategoryIsAccessibilityCategory(v9))
    {
      v10 = [MEMORY[0x277D75418] currentDevice];
      v11 = [v10 userInterfaceIdiom];

      *&v5 = 282.0;
      if (v11 == 1)
      {
        v6 = 696.0;
      }

      else if (v8)
      {
        [v4 frame];
        if (v16 + -20.0 <= 335.0)
        {
          v6 = v16 + -20.0;
        }

        else
        {
          v6 = 335.0;
        }

        if ([v9 isEqualToString:*MEMORY[0x277D767E8]])
        {
          *&v5 = 564.0;
        }

        else if ([v9 isEqualToString:*MEMORY[0x277D767F0]])
        {
          *&v5 = 534.0;
        }

        else if ([v9 isEqualToString:*MEMORY[0x277D767F8]])
        {
          *&v5 = 504.0;
        }

        else if ([v9 isEqualToString:*MEMORY[0x277D76800]])
        {
          *&v5 = 474.0;
        }

        else
        {
          *&v5 = 444.0;
        }
      }

      else
      {
        [v4 bounds];
        v20 = v19;
        v21 = [v4 superview];
        [v21 safeAreaInsets];
        v23 = v20 - v22;
        v24 = [v4 superview];
        [v24 safeAreaInsets];
        v6 = v23 - v25 + -32.0;
      }
    }

    else
    {
      if (v8)
      {
        [v4 frame];
        v13 = v12 + -20.0;
        [(GKLeaderboardCollectionDataSource *)self cellSpacing];
        v15 = (v13 - v14) * 0.5;
        if (v15 <= 162.0)
        {
          v6 = v15;
        }

        else
        {
          v6 = 162.0;
        }
      }

      else
      {
        v6 = 162.0;
      }

      *&v5 = 276.0;
    }
  }

  v17 = v6;
  v18 = *&v5;
  result.height = v18;
  result.width = v17;
  return result;
}

- (void)updateHighlightsInSectionHeader:(id)a3
{
  v4 = a3;
  v5 = [(GKGameLayerCollectionDataSource *)self gameRecord];
  [v4 updateHighlightsWithGameRecord:v5 leaderboardCount:-[GKLeaderboardListDataSource itemCount](self setCount:{"itemCount"), 0}];
}

- (void)prepareCell:(id)a3 forItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = [a4 item];
  v8 = [(GKLeaderboardListDataSource *)self leaderboards];
  v9 = [v8 count];

  if (v9 <= v7)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/GameCenterUIService/GKLeaderboardListDataSource.m"];
    v13 = [v12 lastPathComponent];
    v14 = [v10 stringWithFormat:@"%@ (self.leaderboards.count > index)\n[%s (%s:%d)]", v11, "-[GKLeaderboardListDataSource prepareCell:forItemAtIndexPath:]", objc_msgSend(v13, "UTF8String"), 238];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v14}];
  }

  v15 = [(GKLeaderboardListDataSource *)self leaderboards];
  v21 = [v15 objectAtIndexedSubscript:v7];

  v16 = [(GKGameLayerCollectionDataSource *)self gameRecord];
  v17 = [v16 bundleIdentifier];
  [v6 setBundleIdentifier:v17];

  assetNames = self->_assetNames;
  v19 = [v21 identifier];
  v20 = [(NSDictionary *)assetNames objectForKeyedSubscript:v19];
  [v6 setImageName:v20];

  [v6 setLeaderboard:v21];
}

- (void)handleSelectionInCollectionView:(id)a3 forItemAtIndexPath:(id)a4
{
  v24 = a4;
  v5 = [(GKGameLayerCollectionDataSource *)self presentationViewController];

  v6 = v24;
  if (v5)
  {
    v7 = [v24 item];
    v8 = [(GKLeaderboardListDataSource *)self leaderboards];
    v9 = [v8 count];

    if (v9 <= v7)
    {
      v10 = MEMORY[0x277CCACA8];
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/GameCenterUIService/GKLeaderboardListDataSource.m"];
      v13 = [v12 lastPathComponent];
      v14 = [v10 stringWithFormat:@"%@ (self.leaderboards.count > index)\n[%s (%s:%d)]", v11, "-[GKLeaderboardListDataSource handleSelectionInCollectionView:forItemAtIndexPath:]", objc_msgSend(v13, "UTF8String"), 252];

      [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v14}];
    }

    v15 = [(GKLeaderboardListDataSource *)self leaderboards];
    v16 = [v15 objectAtIndexedSubscript:v7];

    v17 = [MEMORY[0x277D0BFA8] reporter];
    v18 = [v16 baseLeaderboardID];
    [v17 recordClickWithAction:@"navigate" targetId:v18 targetType:@"button" pageId:@"leaderboardCollection" pageType:@"leaderboard"];

    v19 = [GKLeaderboardScoreViewController alloc];
    v20 = [(GKGameLayerCollectionDataSource *)self gameRecord];
    v21 = [(GKLeaderboardScoreViewController *)v19 initWithGameRecord:v20 leaderboard:v16];

    v22 = [(GKGameLayerCollectionDataSource *)self presentationViewController];
    [GKDashboardPresentationController presentViewController:v21 presentingViewController:v22 animated:1];

    v23 = [MEMORY[0x277D0C1F8] reporter];
    [v23 reportEvent:*MEMORY[0x277D0BE70] type:*MEMORY[0x277D0BAD8]];

    v6 = v24;
  }
}

- (UICollectionView)collectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);

  return WeakRetained;
}

@end