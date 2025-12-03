@interface GKDashboardLeaderboardScoreDataSource
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (BOOL)isShowMoreIndexPath:(id)path;
- (BOOL)isShowcaseIndexPath:(id)path;
- (BOOL)needsShowcaseCell;
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForFooterInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (GKDashboardLeaderboardScoreDataSource)initWithGameRecord:(id)record leaderboard:(id)leaderboard;
- (SEL)timeScopeAction;
- (double)preferredCollectionHeight;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)itemForIndexPath:(id)path;
- (id)sectionHeaderText;
- (id)timeScopeTarget;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)loadDataWithCompletionHandler:(id)handler;
- (void)revealMoreItemsInCollectionView:(id)view section:(int64_t)section completion:(id)completion;
- (void)sectionHeaderButtonPressed:(id)pressed;
- (void)setTimeScopeAction:(SEL)action;
- (void)setupCollectionView:(id)view;
- (void)showMoreInCollectionView:(id)view section:(int64_t)section;
@end

@implementation GKDashboardLeaderboardScoreDataSource

- (GKDashboardLeaderboardScoreDataSource)initWithGameRecord:(id)record leaderboard:(id)leaderboard
{
  recordCopy = record;
  leaderboardCopy = leaderboard;
  v11.receiver = self;
  v11.super_class = GKDashboardLeaderboardScoreDataSource;
  v8 = [(GKCollectionDataSource *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(GKDashboardLeaderboardScoreDataSource *)v8 setGameRecord:recordCopy];
    [(GKDashboardLeaderboardScoreDataSource *)v9 setLeaderboard:leaderboardCopy];
    [(GKDashboardLeaderboardScoreDataSource *)v9 setForceInitialShowMore:0];
    [(GKCollectionDataSource *)v9 setUseStandardHeaders:0];
  }

  return v9;
}

- (void)setupCollectionView:(id)view
{
  viewCopy = view;
  v5 = +[GKDashboardLeaderboardScoreCell lowRankNib];
  [viewCopy registerNib:v5 forCellWithReuseIdentifier:@"lowRankCell"];
  v6 = +[GKDashboardLeaderboardScoreCell highRankNib];

  [viewCopy registerNib:v6 forCellWithReuseIdentifier:@"highRankCell"];
  v7 = +[GKDashboardShowMoreTextCell];

  [viewCopy registerNib:v7 forCellWithReuseIdentifier:@"showMoreCell"];
  if (![(GKCollectionDataSource *)self useStandardHeaders])
  {
    v8 = +[GKDashboardButtonSectionHeaderView];

    [viewCopy registerNib:v8 forSupplementaryViewOfKind:*MEMORY[0x277D767D8] withReuseIdentifier:@"sectionHeader"];
    v7 = v8;
  }

  if ([(GKDashboardLeaderboardScoreDataSource *)self hasFriendsButton])
  {
    v9 = +[GKDashboardSingleButtonReusableFooterView];

    [viewCopy registerNib:v9 forSupplementaryViewOfKind:*MEMORY[0x277D767D0] withReuseIdentifier:@"sectionFooter"];
    v7 = v9;
  }

  v10.receiver = self;
  v10.super_class = GKDashboardLeaderboardScoreDataSource;
  [(GKCollectionDataSource *)&v10 setupCollectionView:viewCopy];
}

- (void)loadDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  leaderboard = [(GKDashboardLeaderboardScoreDataSource *)self leaderboard];
  [leaderboard setRange:{1, 100}];

  leaderboard2 = [(GKDashboardLeaderboardScoreDataSource *)self leaderboard];
  gameRecord = [(GKDashboardLeaderboardScoreDataSource *)self gameRecord];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__GKDashboardLeaderboardScoreDataSource_loadDataWithCompletionHandler___block_invoke;
  v9[3] = &unk_279669DF8;
  v9[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [leaderboard2 loadScoresForGame:gameRecord withCompletionHandler:v9];
}

void __71__GKDashboardLeaderboardScoreDataSource_loadDataWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) scores];
  if ([v6 isEqual:v13])
  {

LABEL_5:
    v7 = 0;
    goto LABEL_12;
  }

  if (!v13 && v5)
  {
    goto LABEL_5;
  }

  [*(a1 + 32) setScores:?];
  [*(a1 + 32) setForceInitialShowMore:0];
  v8 = [*(a1 + 32) scores];
  v9 = [v8 count];
  v10 = *(a1 + 32);
  if (v9 >= 0x1A)
  {
    [v10 setVisibleItemCount:25];
  }

  else
  {
    v11 = [v10 scores];
    [*(a1 + 32) setVisibleItemCount:{objc_msgSend(v11, "count")}];
  }

  if ([*(a1 + 32) needsShowMoreCell])
  {
    [*(a1 + 32) setVisibleItemCount:{objc_msgSend(*(a1 + 32), "visibleItemCount") + 1}];
  }

  v7 = 1;
LABEL_12:
  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, v7, v5);
  }
}

- (void)showMoreInCollectionView:(id)view section:(int64_t)section
{
  viewCopy = view;
  if (![(GKDashboardLeaderboardScoreDataSource *)self isShowingMoreScores])
  {
    v7 = [MEMORY[0x277D0C020] dispatchGroupWithName:@"showMoreInCollectionView"];
    [(GKDashboardLeaderboardScoreDataSource *)self setShowingMoreScores:1];
    v8 = [(GKDashboardLeaderboardScoreDataSource *)self visibleItemCount]+ 25;
    scores = [(GKDashboardLeaderboardScoreDataSource *)self scores];
    if (v8 <= [scores count])
    {
    }

    else
    {
      scores2 = [(GKDashboardLeaderboardScoreDataSource *)self scores];
      v11 = [scores2 count];
      leaderboard = [(GKDashboardLeaderboardScoreDataSource *)self leaderboard];
      maxRange = [leaderboard maxRange];

      if (v11 < maxRange)
      {
        leaderboard2 = [(GKDashboardLeaderboardScoreDataSource *)self leaderboard];
        range = [leaderboard2 range];
        leaderboard3 = [(GKDashboardLeaderboardScoreDataSource *)self leaderboard];
        maxRange2 = [leaderboard3 maxRange];

        if (range >= maxRange2)
        {
LABEL_11:
          v35[0] = MEMORY[0x277D85DD0];
          v35[1] = 3221225472;
          v35[2] = __74__GKDashboardLeaderboardScoreDataSource_showMoreInCollectionView_section___block_invoke_7;
          v35[3] = &unk_2796699A8;
          v35[4] = self;
          [v7 notifyOnMainQueueWithBlock:v35];

          goto LABEL_12;
        }

        leaderboard4 = [(GKDashboardLeaderboardScoreDataSource *)self leaderboard];
        range2 = [leaderboard4 range];
        v21 = v20;

        v22 = range2 + 100;
        leaderboard5 = [(GKDashboardLeaderboardScoreDataSource *)self leaderboard];
        maxRange3 = [leaderboard5 maxRange];

        if (v22 <= maxRange3)
        {
          leaderboard6 = [(GKDashboardLeaderboardScoreDataSource *)self leaderboard];
          maxRange4 = [leaderboard6 maxRange];

          if (v22 + v21 <= maxRange4)
          {
LABEL_18:
            leaderboard7 = [(GKDashboardLeaderboardScoreDataSource *)self leaderboard];
            [leaderboard7 setRange:{v22, v21}];

            v36[0] = MEMORY[0x277D85DD0];
            v36[1] = 3221225472;
            v36[2] = __74__GKDashboardLeaderboardScoreDataSource_showMoreInCollectionView_section___block_invoke_3;
            v36[3] = &unk_27966CAC0;
            v36[4] = self;
            v29 = &v37;
            v34 = v7;
            v37 = v34;
            v38 = viewCopy;
            sectionCopy = section;
            [v34 perform:v36];

            goto LABEL_10;
          }

          leaderboard8 = [(GKDashboardLeaderboardScoreDataSource *)self leaderboard];
          v21 = [leaderboard8 maxRange] - v22;
        }

        else
        {
          leaderboard9 = [(GKDashboardLeaderboardScoreDataSource *)self leaderboard];
          [leaderboard9 range];
          if (v26 > 0x63)
          {
            v21 = 100;
          }

          else
          {
            leaderboard10 = [(GKDashboardLeaderboardScoreDataSource *)self leaderboard];
            [leaderboard10 range];
            v21 = v28;
          }

          leaderboard8 = [(GKDashboardLeaderboardScoreDataSource *)self leaderboard];
          v22 = [leaderboard8 maxRange] - v21;
        }

        goto LABEL_18;
      }
    }

    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __74__GKDashboardLeaderboardScoreDataSource_showMoreInCollectionView_section___block_invoke;
    v40[3] = &unk_27966B2C0;
    v40[4] = self;
    v29 = v41;
    v41[0] = viewCopy;
    v41[1] = section;
    [v7 perform:v40];
LABEL_10:

    goto LABEL_11;
  }

LABEL_12:
}

void __74__GKDashboardLeaderboardScoreDataSource_showMoreInCollectionView_section___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__GKDashboardLeaderboardScoreDataSource_showMoreInCollectionView_section___block_invoke_2;
  v8[3] = &unk_279669CB8;
  v9 = v3;
  v7 = v3;
  [v4 revealMoreItemsInCollectionView:v5 section:v6 completion:v8];
}

void __74__GKDashboardLeaderboardScoreDataSource_showMoreInCollectionView_section___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) leaderboard];
  v5 = [*(a1 + 32) gameRecord];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__GKDashboardLeaderboardScoreDataSource_showMoreInCollectionView_section___block_invoke_4;
  v10[3] = &unk_27966CA98;
  v6 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v6;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v13 = v3;
  v14 = v8;
  v12 = v7;
  v9 = v3;
  [v4 loadScoresForGame:v5 withCompletionHandler:v10];
}

void __74__GKDashboardLeaderboardScoreDataSource_showMoreInCollectionView_section___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) scores];
    v5 = *(a1 + 32);
    if (v4)
    {
      v6 = [v5 scores];
      v7 = [v6 arrayByAddingObjectsFromArray:v3];
      [*(a1 + 32) setScores:v7];
    }

    else
    {
      [v5 setScores:v3];
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __74__GKDashboardLeaderboardScoreDataSource_showMoreInCollectionView_section___block_invoke_5;
    v11[3] = &unk_27966B2C0;
    v8 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v9 = *(a1 + 48);
    v10 = *(a1 + 64);
    v12 = v9;
    v13 = v10;
    [v8 perform:v11];
  }

  (*(*(a1 + 56) + 16))();
}

void __74__GKDashboardLeaderboardScoreDataSource_showMoreInCollectionView_section___block_invoke_5(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__GKDashboardLeaderboardScoreDataSource_showMoreInCollectionView_section___block_invoke_6;
  v8[3] = &unk_279669CB8;
  v9 = v3;
  v7 = v3;
  [v4 revealMoreItemsInCollectionView:v5 section:v6 completion:v8];
}

- (void)revealMoreItemsInCollectionView:(id)view section:(int64_t)section completion:(id)completion
{
  viewCopy = view;
  completionCopy = completion;
  visibleItemCount = self->_visibleItemCount;
  v22 = [MEMORY[0x277CCAA70] indexPathForItem:visibleItemCount - 1 inSection:section];
  if ([(GKDashboardLeaderboardScoreDataSource *)self needsShowcaseCell])
  {
    [MEMORY[0x277CCAA70] indexPathForItem:visibleItemCount - 2 inSection:section];
    v9 = [(NSArray *)self->_scores count];
  }

  else
  {
    v9 = [(NSArray *)self->_scores count];
  }

  v10 = v9;
  if (v9 - visibleItemCount >= 0x19)
  {
    v11 = 25;
  }

  else
  {
    v11 = v9 - visibleItemCount;
  }

  needsShowcaseCell = [(GKDashboardLeaderboardScoreDataSource *)self needsShowcaseCell];
  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:v11];
  if (v10 != visibleItemCount)
  {
    v14 = visibleItemCount - 1 - needsShowcaseCell;
    if (v11 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v11;
    }

    do
    {
      v16 = [MEMORY[0x277CCAA70] indexPathForItem:v14 inSection:section];
      [v13 addObject:v16];

      ++v14;
      --v15;
    }

    while (v15);
  }

  self->_visibleItemCount += v11;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __92__GKDashboardLeaderboardScoreDataSource_revealMoreItemsInCollectionView_section_completion___block_invoke;
  v25[3] = &unk_27966C1E8;
  v25[4] = self;
  v26 = v21;
  v27 = viewCopy;
  v28 = v13;
  v29 = v22;
  sectionCopy = section;
  v17 = v22;
  v18 = v13;
  v19 = viewCopy;
  v20 = v21;
  [v19 performBatchUpdates:v25 completion:completionCopy];
}

void __92__GKDashboardLeaderboardScoreDataSource_revealMoreItemsInCollectionView_section_completion___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA70] indexPathForItem:objc_msgSend(*(a1 + 32) inSection:{"visibleItemCount") - 1, *(a1 + 72)}];
  v3 = [MEMORY[0x277CCAA70] indexPathForItem:objc_msgSend(*(a1 + 32) inSection:{"visibleItemCount") - 2, *(a1 + 72)}];
  if (*(a1 + 40))
  {
    v4 = [*(a1 + 32) needsShowcaseCell];
    v5 = *(a1 + 48);
    if (v4)
    {
      [*(a1 + 48) moveItemAtIndexPath:*(a1 + 40) toIndexPath:v3];
    }

    else
    {
      v11[0] = *(a1 + 40);
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
      [v5 deleteItemsAtIndexPaths:v6];

      [*(a1 + 56) addObject:v3];
    }
  }

  v7 = [*(a1 + 32) needsShowMoreCell];
  v8 = *(a1 + 48);
  if (v7)
  {
    [*(a1 + 48) moveItemAtIndexPath:*(a1 + 64) toIndexPath:v2];
  }

  else
  {
    v10 = *(a1 + 64);
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
    [v8 deleteItemsAtIndexPaths:v9];

    [*(a1 + 56) addObject:v2];
  }

  [*(a1 + 48) insertItemsAtIndexPaths:*(a1 + 56)];
}

- (BOOL)isShowMoreIndexPath:(id)path
{
  pathCopy = path;
  if ([(GKDashboardLeaderboardScoreDataSource *)self needsShowMoreCell])
  {
    v5 = [pathCopy item] == self->_visibleItemCount - 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isShowcaseIndexPath:(id)path
{
  pathCopy = path;
  if ([(GKDashboardLeaderboardScoreDataSource *)self needsShowcaseCell])
  {
    v5 = [pathCopy item] == self->_visibleItemCount - 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)needsShowcaseCell
{
  localPlayerScore = [(GKLeaderboard *)self->_leaderboard localPlayerScore];
  if (localPlayerScore && [(GKLeaderboard *)self->_leaderboard playerScope]== GKLeaderboardPlayerScopeGlobal)
  {
    localPlayerScore2 = [(GKLeaderboard *)self->_leaderboard localPlayerScore];
    v4 = [localPlayerScore2 rank] > self->_visibleItemCount;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)preferredCollectionHeight
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Leaderboard scores are not intended to be embedded in a GKDashboardMultiCollectionViewController"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/TVDashboard/GKDashboardLeaderboardScoreDataSource.m"];
  lastPathComponent = [v5 lastPathComponent];
  v7 = [v3 stringWithFormat:@"%@ (NO)\n[%s (%s:%d)]", v4, "-[GKDashboardLeaderboardScoreDataSource preferredCollectionHeight]", objc_msgSend(lastPathComponent, "UTF8String"), 293];

  [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v7}];
  v9.receiver = self;
  v9.super_class = GKDashboardLeaderboardScoreDataSource;
  [(GKCollectionDataSource *)&v9 preferredCollectionHeight];
  return result;
}

- (id)itemForIndexPath:(id)path
{
  pathCopy = path;
  item = [pathCopy item];
  if ([(GKDashboardLeaderboardScoreDataSource *)self isShowcaseIndexPath:pathCopy])
  {
    localPlayerScore = [(GKLeaderboard *)self->_leaderboard localPlayerScore];
LABEL_3:
    v7 = localPlayerScore;
    goto LABEL_8;
  }

  if (![(GKDashboardLeaderboardScoreDataSource *)self isShowMoreIndexPath:pathCopy]&& [(NSArray *)self->_scores count]> item)
  {
    localPlayerScore = [(NSArray *)self->_scores objectAtIndexedSubscript:item];
    goto LABEL_3;
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (id)sectionHeaderText
{
  [(GKLeaderboard *)self->_leaderboard maxRange];
  if ([(GKLeaderboard *)self->_leaderboard playerScope]== GKLeaderboardPlayerScopeFriendsOnly)
  {
    v3 = GKGameCenterUIFrameworkBundle();
    v4 = GKGetLocalizedStringFromTableInBundle();
  }

  else
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = GKGameCenterUIFrameworkBundle();
    v3 = GKGetLocalizedStringFromTableInBundle();

    v7 = GKFormattedStringWithGroupingFromInteger();
    v4 = [v5 stringWithFormat:v3, v7];
  }

  return v4;
}

- (void)sectionHeaderButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  timeScopeTarget = [(GKDashboardLeaderboardScoreDataSource *)self timeScopeTarget];
  if (timeScopeTarget)
  {
    v5 = timeScopeTarget;
    timeScopeAction = [(GKDashboardLeaderboardScoreDataSource *)self timeScopeAction];

    if (timeScopeAction)
    {
      timeScopeTarget2 = [(GKDashboardLeaderboardScoreDataSource *)self timeScopeTarget];
      v8 = [timeScopeTarget2 methodForSelector:{-[GKDashboardLeaderboardScoreDataSource timeScopeAction](self, "timeScopeAction")}];

      timeScopeTarget3 = [(GKDashboardLeaderboardScoreDataSource *)self timeScopeTarget];
      v8(timeScopeTarget3, [(GKDashboardLeaderboardScoreDataSource *)self timeScopeAction], pressedCopy);
    }
  }
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([(GKDashboardLeaderboardScoreDataSource *)self isShowMoreIndexPath:pathCopy])
  {
    v8 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"showMoreCell" forIndexPath:pathCopy];
  }

  else
  {
    v9 = [(GKDashboardLeaderboardScoreDataSource *)self itemForIndexPath:pathCopy];
    if (!v9)
    {
      v10 = MEMORY[0x277CCACA8];
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/TVDashboard/GKDashboardLeaderboardScoreDataSource.m"];
      lastPathComponent = [v12 lastPathComponent];
      v14 = [v10 stringWithFormat:@"%@ (score)\n[%s (%s:%d)]", v11, "-[GKDashboardLeaderboardScoreDataSource collectionView:cellForItemAtIndexPath:]", objc_msgSend(lastPathComponent, "UTF8String"), 361];

      [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v14}];
    }

    if ([v9 rank] >= 100)
    {
      v15 = @"highRankCell";
    }

    else
    {
      v15 = @"lowRankCell";
    }

    v8 = [viewCopy dequeueReusableCellWithReuseIdentifier:v15 forIndexPath:pathCopy];
    [v8 setScore:v9];
    if ([(GKDashboardLeaderboardScoreDataSource *)self needsShowcaseCell])
    {
      player = [v9 player];
      [v8 setLinesVisible:{objc_msgSend(player, "isLocalPlayer")}];
    }

    else
    {
      [v8 setLinesVisible:0];
    }
  }

  return v8;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  layout = [(GKDashboardLeaderboardScoreDataSource *)self isShowMoreIndexPath:path, layout];
  v6 = off_279666DB0;
  if (!layout)
  {
    v6 = off_279666D40;
  }

  v7 = *v6;

  [(__objc2_class *)v7 defaultSize];
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  layoutCopy = layout;
  if (![(GKCollectionDataSource *)self useStandardHeaders])
  {
    sectionHeaderText = [(GKDashboardLeaderboardScoreDataSource *)self sectionHeaderText];
    sectionHeaderFont = [MEMORY[0x277D0C0A0] localizedStringForTimeScope:{-[GKDashboardLeaderboardScoreDataSource timeScope](self, "timeScope")}];
    [GKDashboardButtonSectionHeaderView platformSizeForTitle:sectionHeaderText buttonTitle:sectionHeaderFont];
LABEL_6:
    v11 = v16;
    v13 = v17;

    goto LABEL_7;
  }

  if (![(GKDashboardLeaderboardScoreDataSource *)self itemCount])
  {
    sectionHeaderText = [(GKDashboardLeaderboardScoreDataSource *)self sectionHeaderText];
    sectionHeaderFont = [(GKDashboardLeaderboardScoreDataSource *)self sectionHeaderFont];
    [GKDashboardSectionHeaderView platformSizeForTitle:sectionHeaderText withFont:sectionHeaderFont];
    goto LABEL_6;
  }

  v20.receiver = self;
  v20.super_class = GKDashboardLeaderboardScoreDataSource;
  [(GKCollectionDataSource *)&v20 collectionView:viewCopy layout:layoutCopy referenceSizeForHeaderInSection:section];
  v11 = v10;
  v13 = v12;
LABEL_7:

  v18 = v11;
  v19 = v13;
  result.height = v19;
  result.width = v18;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForFooterInSection:(int64_t)section
{
  v5 = *MEMORY[0x277CBF3A8];
  v6 = *(MEMORY[0x277CBF3A8] + 8);
  v7 = [(GKDashboardLeaderboardScoreDataSource *)self hasFriendsButton:view];
  if (v7)
  {
    v8 = 40.0;
  }

  else
  {
    v8 = v6;
  }

  v9 = 0.0;
  if (!v7)
  {
    v9 = v5;
  }

  result.height = v8;
  result.width = v9;
  return result;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  v11 = *MEMORY[0x277D767D8];
  if ([kindCopy isEqualToString:*MEMORY[0x277D767D8]])
  {
    if ([(GKCollectionDataSource *)self useStandardHeaders])
    {
      v24.receiver = self;
      v24.super_class = GKDashboardLeaderboardScoreDataSource;
      v12 = [(GKCollectionDataSource *)&v24 collectionView:viewCopy viewForSupplementaryElementOfKind:kindCopy atIndexPath:pathCopy];
      sectionHeaderFont = [(GKDashboardLeaderboardScoreDataSource *)self sectionHeaderFont];
      [v12 setFont:sectionHeaderFont];
    }

    else
    {
      v12 = [viewCopy dequeueReusableSupplementaryViewOfKind:v11 withReuseIdentifier:@"sectionHeader" forIndexPath:pathCopy];
      sectionHeaderText = [(GKDashboardLeaderboardScoreDataSource *)self sectionHeaderText];
      [v12 setTitle:sectionHeaderText];

      sectionHeaderFont2 = [(GKDashboardLeaderboardScoreDataSource *)self sectionHeaderFont];
      [v12 setFont:sectionHeaderFont2];

      [v12 setOnDarkBackground:{-[GKCollectionDataSource onDarkBackground](self, "onDarkBackground")}];
      v19 = [MEMORY[0x277D0C0A0] localizedStringForTimeScope:{-[GKDashboardLeaderboardScoreDataSource timeScope](self, "timeScope")}];
      [v12 setButtonTitle:v19];

      [v12 setButtonTarget:self];
      [v12 setButtonAction:sel_sectionHeaderButtonPressed_];
    }
  }

  else
  {
    v14 = *MEMORY[0x277D767D0];
    if ([kindCopy isEqualToString:*MEMORY[0x277D767D0]] && -[GKDashboardLeaderboardScoreDataSource hasFriendsButton](self, "hasFriendsButton"))
    {
      v12 = [viewCopy dequeueReusableSupplementaryViewOfKind:v14 withReuseIdentifier:@"sectionFooter" forIndexPath:pathCopy];
      v15 = GKGameCenterUIFrameworkBundle();
      v16 = GKGetLocalizedStringFromTableInBundle();
      [v12 setButtonTitle:v16 forState:0];

      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __102__GKDashboardLeaderboardScoreDataSource_collectionView_viewForSupplementaryElementOfKind_atIndexPath___block_invoke;
      v22[3] = &unk_279669E48;
      v22[4] = self;
      v23 = viewCopy;
      [v12 setButtonTapHandler:v22];
    }

    else
    {
      v21.receiver = self;
      v21.super_class = GKDashboardLeaderboardScoreDataSource;
      v12 = [(GKCollectionDataSource *)&v21 collectionView:viewCopy viewForSupplementaryElementOfKind:kindCopy atIndexPath:pathCopy];
    }
  }

  return v12;
}

void __102__GKDashboardLeaderboardScoreDataSource_collectionView_viewForSupplementaryElementOfKind_atIndexPath___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D0C1F8] reporter];
  [v2 reportEvent:*MEMORY[0x277D0BE88] type:*MEMORY[0x277D0B9B8]];

  v3 = [MEMORY[0x277D0BFA8] reporter];
  v4 = [*(a1 + 32) leaderboard];
  v5 = [v4 identifier];
  [v3 recordClickWithAction:@"navigate" targetId:@"invite" targetType:@"button" pageId:v5 pageType:@"leaderboard"];

  v6 = [*(a1 + 40) window];
  v7 = [v6 rootViewController];

  if (*MEMORY[0x277D0C258])
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __102__GKDashboardLeaderboardScoreDataSource_collectionView_viewForSupplementaryElementOfKind_atIndexPath___block_invoke_3;
    v11[3] = &unk_27966AD50;
    v8 = &v12;
    v12 = v7;
    v9 = v7;
    [_TtC12GameCenterUI24FriendRequestFacilitator makeViewControllerWithRecipients:MEMORY[0x277CBEBF8] chatGUID:0 completionHandler:v11];
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __102__GKDashboardLeaderboardScoreDataSource_collectionView_viewForSupplementaryElementOfKind_atIndexPath___block_invoke_2;
    v13[3] = &unk_27966C2B0;
    v8 = &v14;
    v14 = v7;
    v10 = v7;
    [_TtC12GameCenterUI24FriendRequestFacilitator makeViewControllerForRemoteInviteWithRecipients:MEMORY[0x277CBEBF8] chatGUID:0 resultHandler:v13];
  }
}

void __102__GKDashboardLeaderboardScoreDataSource_collectionView_viewForSupplementaryElementOfKind_atIndexPath___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    v6 = v7;
  }

  else
  {
    v6 = v5;
  }

  if (v6)
  {
    [*(a1 + 32) presentViewController:v6 animated:1 completion:0];
  }
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
  if ([(GKDashboardLeaderboardScoreDataSource *)self isShowMoreIndexPath:pathCopy])
  {
    [viewCopy deselectItemAtIndexPath:pathCopy animated:1];
    self->_forceInitialShowMore = 0;
    -[GKDashboardLeaderboardScoreDataSource showMoreInCollectionView:section:](self, "showMoreInCollectionView:section:", viewCopy, [pathCopy section]);
  }

  else
  {
    presentationViewController = [(GKCollectionDataSource *)self presentationViewController];

    if (presentationViewController)
    {
      if ([(GKDashboardLeaderboardScoreDataSource *)self isShowcaseIndexPath:pathCopy])
      {
        localPlayerScore = [(GKLeaderboard *)self->_leaderboard localPlayerScore];
      }

      else
      {
        item = [pathCopy item];
        if ([(NSArray *)self->_scores count]<= item)
        {
          v10 = MEMORY[0x277CCACA8];
          v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
          v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/TVDashboard/GKDashboardLeaderboardScoreDataSource.m"];
          lastPathComponent = [v12 lastPathComponent];
          v14 = [v10 stringWithFormat:@"%@ (_scores.count > index)\n[%s (%s:%d)]", v11, "-[GKDashboardLeaderboardScoreDataSource collectionView:didSelectItemAtIndexPath:]", objc_msgSend(lastPathComponent, "UTF8String"), 499];

          [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v14}];
        }

        localPlayerScore = [(NSArray *)self->_scores objectAtIndexedSubscript:item];
      }

      v15 = localPlayerScore;
      player = [localPlayerScore player];
      internal = [player internal];
      playerID = [internal playerID];
      presentationViewController2 = [(GKCollectionDataSource *)self presentationViewController];
      [_TtC12GameCenterUI27PlayerProfileViewController showProfileFor:playerID from:presentationViewController2 completion:0];
    }
  }
}

- (id)timeScopeTarget
{
  WeakRetained = objc_loadWeakRetained(&self->_timeScopeTarget);

  return WeakRetained;
}

- (SEL)timeScopeAction
{
  if (self->_timeScopeAction)
  {
    return self->_timeScopeAction;
  }

  else
  {
    return 0;
  }
}

- (void)setTimeScopeAction:(SEL)action
{
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->_timeScopeAction = actionCopy;
}

@end