@interface GKLeaderboardListDataSource
- (CGSize)standardCellSizeForCollectionView:(id)view;
- (GKLeaderboardListDataSource)initWithGameRecord:(id)record leaderboardSet:(id)set;
- (UICollectionView)collectionView;
- (id)itemForIndexPath:(id)path;
- (id)title;
- (int64_t)itemCount;
- (void)dealloc;
- (void)handleSelectionInCollectionView:(id)view forItemAtIndexPath:(id)path;
- (void)loadDataWithCompletionHandler:(id)handler;
- (void)prepareCell:(id)cell forItemAtIndexPath:(id)path;
- (void)removeLeaderboardsWithoutImages;
- (void)setupCollectionView:(id)view;
- (void)setupTimer;
- (void)updateHighlightsInSectionHeader:(id)header;
@end

@implementation GKLeaderboardListDataSource

- (GKLeaderboardListDataSource)initWithGameRecord:(id)record leaderboardSet:(id)set
{
  setCopy = set;
  v10.receiver = self;
  v10.super_class = GKLeaderboardListDataSource;
  v7 = [(GKGameLayerCollectionDataSource *)&v10 initWithGameRecord:record];
  v8 = v7;
  if (v7)
  {
    [(GKLeaderboardListDataSource *)v7 setLeaderboardSet:setCopy];
  }

  return v8;
}

- (void)dealloc
{
  timer = [(GKLeaderboardListDataSource *)self timer];
  [timer invalidate];

  [(GKLeaderboardListDataSource *)self setTimer:0];
  v4.receiver = self;
  v4.super_class = GKLeaderboardListDataSource;
  [(GKLeaderboardListDataSource *)&v4 dealloc];
}

- (void)setupCollectionView:(id)view
{
  v5.receiver = self;
  v5.super_class = GKLeaderboardListDataSource;
  viewCopy = view;
  [(GKLeaderboardCollectionDataSource *)&v5 setupCollectionView:viewCopy];
  [(GKLeaderboardListDataSource *)self setCollectionView:viewCopy, v5.receiver, v5.super_class];
}

- (void)setupTimer
{
  timer = [(GKLeaderboardListDataSource *)self timer];

  if (timer)
  {
    timer2 = [(GKLeaderboardListDataSource *)self timer];
    [timer2 invalidate];
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
  leaderboardSet = [(GKLeaderboardListDataSource *)self leaderboardSet];

  if (leaderboardSet)
  {
    leaderboardSet2 = [(GKLeaderboardListDataSource *)self leaderboardSet];
    [leaderboardSet2 title];
  }

  else
  {
    leaderboardSet2 = GKGameCenterUIFrameworkBundle();
    GKGetLocalizedStringFromTableInBundle();
  }
  v5 = ;

  return v5;
}

- (void)loadDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
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
  v9 = handlerCopy;
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
  leaderboards = [(GKLeaderboardListDataSource *)self leaderboards];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(leaderboards, "count")}];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  leaderboards2 = [(GKLeaderboardListDataSource *)self leaderboards];
  v7 = [leaderboards2 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(leaderboards2);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        assetNames = self->_assetNames;
        identifier = [v11 identifier];
        v14 = [(NSDictionary *)assetNames objectForKeyedSubscript:identifier];

        if (v14)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [leaderboards2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [(GKLeaderboardListDataSource *)self setLeaderboards:v5];
}

- (int64_t)itemCount
{
  leaderboards = [(GKLeaderboardListDataSource *)self leaderboards];
  v3 = [leaderboards count];

  return v3;
}

- (id)itemForIndexPath:(id)path
{
  pathCopy = path;
  leaderboards = [(GKLeaderboardListDataSource *)self leaderboards];
  v6 = [leaderboards count];
  if (v6 <= [pathCopy item])
  {
    v8 = 0;
  }

  else
  {
    leaderboards2 = [(GKLeaderboardListDataSource *)self leaderboards];
    v8 = [leaderboards2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];
  }

  return v8;
}

- (CGSize)standardCellSizeForCollectionView:(id)view
{
  viewCopy = view;
  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    *&v5 = 288.0;
    v6 = 188.0;
  }

  else
  {
    currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
    v8 = [currentTraitCollection horizontalSizeClass] == 1 && objc_msgSend(currentTraitCollection, "verticalSizeClass") == 2;
    preferredContentSizeCategory = [currentTraitCollection preferredContentSizeCategory];
    if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      *&v5 = 282.0;
      if (userInterfaceIdiom == 1)
      {
        v6 = 696.0;
      }

      else if (v8)
      {
        [viewCopy frame];
        if (v16 + -20.0 <= 335.0)
        {
          v6 = v16 + -20.0;
        }

        else
        {
          v6 = 335.0;
        }

        if ([preferredContentSizeCategory isEqualToString:*MEMORY[0x277D767E8]])
        {
          *&v5 = 564.0;
        }

        else if ([preferredContentSizeCategory isEqualToString:*MEMORY[0x277D767F0]])
        {
          *&v5 = 534.0;
        }

        else if ([preferredContentSizeCategory isEqualToString:*MEMORY[0x277D767F8]])
        {
          *&v5 = 504.0;
        }

        else if ([preferredContentSizeCategory isEqualToString:*MEMORY[0x277D76800]])
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
        [viewCopy bounds];
        v20 = v19;
        superview = [viewCopy superview];
        [superview safeAreaInsets];
        v23 = v20 - v22;
        superview2 = [viewCopy superview];
        [superview2 safeAreaInsets];
        v6 = v23 - v25 + -32.0;
      }
    }

    else
    {
      if (v8)
      {
        [viewCopy frame];
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

- (void)updateHighlightsInSectionHeader:(id)header
{
  headerCopy = header;
  gameRecord = [(GKGameLayerCollectionDataSource *)self gameRecord];
  [headerCopy updateHighlightsWithGameRecord:gameRecord leaderboardCount:-[GKLeaderboardListDataSource itemCount](self setCount:{"itemCount"), 0}];
}

- (void)prepareCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  item = [path item];
  leaderboards = [(GKLeaderboardListDataSource *)self leaderboards];
  v9 = [leaderboards count];

  if (v9 <= item)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/GameCenterUIService/GKLeaderboardListDataSource.m"];
    lastPathComponent = [v12 lastPathComponent];
    v14 = [v10 stringWithFormat:@"%@ (self.leaderboards.count > index)\n[%s (%s:%d)]", v11, "-[GKLeaderboardListDataSource prepareCell:forItemAtIndexPath:]", objc_msgSend(lastPathComponent, "UTF8String"), 238];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v14}];
  }

  leaderboards2 = [(GKLeaderboardListDataSource *)self leaderboards];
  v21 = [leaderboards2 objectAtIndexedSubscript:item];

  gameRecord = [(GKGameLayerCollectionDataSource *)self gameRecord];
  bundleIdentifier = [gameRecord bundleIdentifier];
  [cellCopy setBundleIdentifier:bundleIdentifier];

  assetNames = self->_assetNames;
  identifier = [v21 identifier];
  v20 = [(NSDictionary *)assetNames objectForKeyedSubscript:identifier];
  [cellCopy setImageName:v20];

  [cellCopy setLeaderboard:v21];
}

- (void)handleSelectionInCollectionView:(id)view forItemAtIndexPath:(id)path
{
  pathCopy = path;
  presentationViewController = [(GKGameLayerCollectionDataSource *)self presentationViewController];

  v6 = pathCopy;
  if (presentationViewController)
  {
    item = [pathCopy item];
    leaderboards = [(GKLeaderboardListDataSource *)self leaderboards];
    v9 = [leaderboards count];

    if (v9 <= item)
    {
      v10 = MEMORY[0x277CCACA8];
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/GameCenterUIService/GKLeaderboardListDataSource.m"];
      lastPathComponent = [v12 lastPathComponent];
      v14 = [v10 stringWithFormat:@"%@ (self.leaderboards.count > index)\n[%s (%s:%d)]", v11, "-[GKLeaderboardListDataSource handleSelectionInCollectionView:forItemAtIndexPath:]", objc_msgSend(lastPathComponent, "UTF8String"), 252];

      [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v14}];
    }

    leaderboards2 = [(GKLeaderboardListDataSource *)self leaderboards];
    v16 = [leaderboards2 objectAtIndexedSubscript:item];

    reporter = [MEMORY[0x277D0BFA8] reporter];
    baseLeaderboardID = [v16 baseLeaderboardID];
    [reporter recordClickWithAction:@"navigate" targetId:baseLeaderboardID targetType:@"button" pageId:@"leaderboardCollection" pageType:@"leaderboard"];

    v19 = [GKLeaderboardScoreViewController alloc];
    gameRecord = [(GKGameLayerCollectionDataSource *)self gameRecord];
    v21 = [(GKLeaderboardScoreViewController *)v19 initWithGameRecord:gameRecord leaderboard:v16];

    presentationViewController2 = [(GKGameLayerCollectionDataSource *)self presentationViewController];
    [GKDashboardPresentationController presentViewController:v21 presentingViewController:presentationViewController2 animated:1];

    reporter2 = [MEMORY[0x277D0C1F8] reporter];
    [reporter2 reportEvent:*MEMORY[0x277D0BE70] type:*MEMORY[0x277D0BAD8]];

    v6 = pathCopy;
  }
}

- (UICollectionView)collectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);

  return WeakRetained;
}

@end