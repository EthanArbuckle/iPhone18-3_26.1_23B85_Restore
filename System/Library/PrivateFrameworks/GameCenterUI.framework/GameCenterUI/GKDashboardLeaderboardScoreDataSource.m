@interface GKDashboardLeaderboardScoreDataSource
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (BOOL)isShowMoreIndexPath:(id)a3;
- (BOOL)isShowcaseIndexPath:(id)a3;
- (BOOL)needsShowcaseCell;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForFooterInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (GKDashboardLeaderboardScoreDataSource)initWithGameRecord:(id)a3 leaderboard:(id)a4;
- (SEL)timeScopeAction;
- (double)preferredCollectionHeight;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)itemForIndexPath:(id)a3;
- (id)sectionHeaderText;
- (id)timeScopeTarget;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)loadDataWithCompletionHandler:(id)a3;
- (void)revealMoreItemsInCollectionView:(id)a3 section:(int64_t)a4 completion:(id)a5;
- (void)sectionHeaderButtonPressed:(id)a3;
- (void)setTimeScopeAction:(SEL)a3;
- (void)setupCollectionView:(id)a3;
- (void)showMoreInCollectionView:(id)a3 section:(int64_t)a4;
@end

@implementation GKDashboardLeaderboardScoreDataSource

- (GKDashboardLeaderboardScoreDataSource)initWithGameRecord:(id)a3 leaderboard:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = GKDashboardLeaderboardScoreDataSource;
  v8 = [(GKCollectionDataSource *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(GKDashboardLeaderboardScoreDataSource *)v8 setGameRecord:v6];
    [(GKDashboardLeaderboardScoreDataSource *)v9 setLeaderboard:v7];
    [(GKDashboardLeaderboardScoreDataSource *)v9 setForceInitialShowMore:0];
    [(GKCollectionDataSource *)v9 setUseStandardHeaders:0];
  }

  return v9;
}

- (void)setupCollectionView:(id)a3
{
  v4 = a3;
  v5 = +[GKDashboardLeaderboardScoreCell lowRankNib];
  [v4 registerNib:v5 forCellWithReuseIdentifier:@"lowRankCell"];
  v6 = +[GKDashboardLeaderboardScoreCell highRankNib];

  [v4 registerNib:v6 forCellWithReuseIdentifier:@"highRankCell"];
  v7 = +[GKDashboardShowMoreTextCell];

  [v4 registerNib:v7 forCellWithReuseIdentifier:@"showMoreCell"];
  if (![(GKCollectionDataSource *)self useStandardHeaders])
  {
    v8 = +[GKDashboardButtonSectionHeaderView];

    [v4 registerNib:v8 forSupplementaryViewOfKind:*MEMORY[0x277D767D8] withReuseIdentifier:@"sectionHeader"];
    v7 = v8;
  }

  if ([(GKDashboardLeaderboardScoreDataSource *)self hasFriendsButton])
  {
    v9 = +[GKDashboardSingleButtonReusableFooterView];

    [v4 registerNib:v9 forSupplementaryViewOfKind:*MEMORY[0x277D767D0] withReuseIdentifier:@"sectionFooter"];
    v7 = v9;
  }

  v10.receiver = self;
  v10.super_class = GKDashboardLeaderboardScoreDataSource;
  [(GKCollectionDataSource *)&v10 setupCollectionView:v4];
}

- (void)loadDataWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(GKDashboardLeaderboardScoreDataSource *)self leaderboard];
  [v5 setRange:{1, 100}];

  v6 = [(GKDashboardLeaderboardScoreDataSource *)self leaderboard];
  v7 = [(GKDashboardLeaderboardScoreDataSource *)self gameRecord];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__GKDashboardLeaderboardScoreDataSource_loadDataWithCompletionHandler___block_invoke;
  v9[3] = &unk_279669DF8;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [v6 loadScoresForGame:v7 withCompletionHandler:v9];
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

- (void)showMoreInCollectionView:(id)a3 section:(int64_t)a4
{
  v6 = a3;
  if (![(GKDashboardLeaderboardScoreDataSource *)self isShowingMoreScores])
  {
    v7 = [MEMORY[0x277D0C020] dispatchGroupWithName:@"showMoreInCollectionView"];
    [(GKDashboardLeaderboardScoreDataSource *)self setShowingMoreScores:1];
    v8 = [(GKDashboardLeaderboardScoreDataSource *)self visibleItemCount]+ 25;
    v9 = [(GKDashboardLeaderboardScoreDataSource *)self scores];
    if (v8 <= [v9 count])
    {
    }

    else
    {
      v10 = [(GKDashboardLeaderboardScoreDataSource *)self scores];
      v11 = [v10 count];
      v12 = [(GKDashboardLeaderboardScoreDataSource *)self leaderboard];
      v13 = [v12 maxRange];

      if (v11 < v13)
      {
        v14 = [(GKDashboardLeaderboardScoreDataSource *)self leaderboard];
        v15 = [v14 range];
        v16 = [(GKDashboardLeaderboardScoreDataSource *)self leaderboard];
        v17 = [v16 maxRange];

        if (v15 >= v17)
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

        v18 = [(GKDashboardLeaderboardScoreDataSource *)self leaderboard];
        v19 = [v18 range];
        v21 = v20;

        v22 = v19 + 100;
        v23 = [(GKDashboardLeaderboardScoreDataSource *)self leaderboard];
        v24 = [v23 maxRange];

        if (v22 <= v24)
        {
          v30 = [(GKDashboardLeaderboardScoreDataSource *)self leaderboard];
          v31 = [v30 maxRange];

          if (v22 + v21 <= v31)
          {
LABEL_18:
            v33 = [(GKDashboardLeaderboardScoreDataSource *)self leaderboard];
            [v33 setRange:{v22, v21}];

            v36[0] = MEMORY[0x277D85DD0];
            v36[1] = 3221225472;
            v36[2] = __74__GKDashboardLeaderboardScoreDataSource_showMoreInCollectionView_section___block_invoke_3;
            v36[3] = &unk_27966CAC0;
            v36[4] = self;
            v29 = &v37;
            v34 = v7;
            v37 = v34;
            v38 = v6;
            v39 = a4;
            [v34 perform:v36];

            goto LABEL_10;
          }

          v32 = [(GKDashboardLeaderboardScoreDataSource *)self leaderboard];
          v21 = [v32 maxRange] - v22;
        }

        else
        {
          v25 = [(GKDashboardLeaderboardScoreDataSource *)self leaderboard];
          [v25 range];
          if (v26 > 0x63)
          {
            v21 = 100;
          }

          else
          {
            v27 = [(GKDashboardLeaderboardScoreDataSource *)self leaderboard];
            [v27 range];
            v21 = v28;
          }

          v32 = [(GKDashboardLeaderboardScoreDataSource *)self leaderboard];
          v22 = [v32 maxRange] - v21;
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
    v41[0] = v6;
    v41[1] = a4;
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

- (void)revealMoreItemsInCollectionView:(id)a3 section:(int64_t)a4 completion:(id)a5
{
  v23 = a3;
  v24 = a5;
  visibleItemCount = self->_visibleItemCount;
  v22 = [MEMORY[0x277CCAA70] indexPathForItem:visibleItemCount - 1 inSection:a4];
  if ([(GKDashboardLeaderboardScoreDataSource *)self needsShowcaseCell])
  {
    [MEMORY[0x277CCAA70] indexPathForItem:visibleItemCount - 2 inSection:a4];
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

  v12 = [(GKDashboardLeaderboardScoreDataSource *)self needsShowcaseCell];
  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:v11];
  if (v10 != visibleItemCount)
  {
    v14 = visibleItemCount - 1 - v12;
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
      v16 = [MEMORY[0x277CCAA70] indexPathForItem:v14 inSection:a4];
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
  v27 = v23;
  v28 = v13;
  v29 = v22;
  v30 = a4;
  v17 = v22;
  v18 = v13;
  v19 = v23;
  v20 = v21;
  [v19 performBatchUpdates:v25 completion:v24];
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

- (BOOL)isShowMoreIndexPath:(id)a3
{
  v4 = a3;
  if ([(GKDashboardLeaderboardScoreDataSource *)self needsShowMoreCell])
  {
    v5 = [v4 item] == self->_visibleItemCount - 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isShowcaseIndexPath:(id)a3
{
  v4 = a3;
  if ([(GKDashboardLeaderboardScoreDataSource *)self needsShowcaseCell])
  {
    v5 = [v4 item] == self->_visibleItemCount - 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)needsShowcaseCell
{
  v3 = [(GKLeaderboard *)self->_leaderboard localPlayerScore];
  if (v3 && [(GKLeaderboard *)self->_leaderboard playerScope]== GKLeaderboardPlayerScopeGlobal)
  {
    v5 = [(GKLeaderboard *)self->_leaderboard localPlayerScore];
    v4 = [v5 rank] > self->_visibleItemCount;
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
  v6 = [v5 lastPathComponent];
  v7 = [v3 stringWithFormat:@"%@ (NO)\n[%s (%s:%d)]", v4, "-[GKDashboardLeaderboardScoreDataSource preferredCollectionHeight]", objc_msgSend(v6, "UTF8String"), 293];

  [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v7}];
  v9.receiver = self;
  v9.super_class = GKDashboardLeaderboardScoreDataSource;
  [(GKCollectionDataSource *)&v9 preferredCollectionHeight];
  return result;
}

- (id)itemForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 item];
  if ([(GKDashboardLeaderboardScoreDataSource *)self isShowcaseIndexPath:v4])
  {
    v6 = [(GKLeaderboard *)self->_leaderboard localPlayerScore];
LABEL_3:
    v7 = v6;
    goto LABEL_8;
  }

  if (![(GKDashboardLeaderboardScoreDataSource *)self isShowMoreIndexPath:v4]&& [(NSArray *)self->_scores count]> v5)
  {
    v6 = [(NSArray *)self->_scores objectAtIndexedSubscript:v5];
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

- (void)sectionHeaderButtonPressed:(id)a3
{
  v10 = a3;
  v4 = [(GKDashboardLeaderboardScoreDataSource *)self timeScopeTarget];
  if (v4)
  {
    v5 = v4;
    v6 = [(GKDashboardLeaderboardScoreDataSource *)self timeScopeAction];

    if (v6)
    {
      v7 = [(GKDashboardLeaderboardScoreDataSource *)self timeScopeTarget];
      v8 = [v7 methodForSelector:{-[GKDashboardLeaderboardScoreDataSource timeScopeAction](self, "timeScopeAction")}];

      v9 = [(GKDashboardLeaderboardScoreDataSource *)self timeScopeTarget];
      v8(v9, [(GKDashboardLeaderboardScoreDataSource *)self timeScopeAction], v10);
    }
  }
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(GKDashboardLeaderboardScoreDataSource *)self isShowMoreIndexPath:v7])
  {
    v8 = [v6 dequeueReusableCellWithReuseIdentifier:@"showMoreCell" forIndexPath:v7];
  }

  else
  {
    v9 = [(GKDashboardLeaderboardScoreDataSource *)self itemForIndexPath:v7];
    if (!v9)
    {
      v10 = MEMORY[0x277CCACA8];
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/TVDashboard/GKDashboardLeaderboardScoreDataSource.m"];
      v13 = [v12 lastPathComponent];
      v14 = [v10 stringWithFormat:@"%@ (score)\n[%s (%s:%d)]", v11, "-[GKDashboardLeaderboardScoreDataSource collectionView:cellForItemAtIndexPath:]", objc_msgSend(v13, "UTF8String"), 361];

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

    v8 = [v6 dequeueReusableCellWithReuseIdentifier:v15 forIndexPath:v7];
    [v8 setScore:v9];
    if ([(GKDashboardLeaderboardScoreDataSource *)self needsShowcaseCell])
    {
      v16 = [v9 player];
      [v8 setLinesVisible:{objc_msgSend(v16, "isLocalPlayer")}];
    }

    else
    {
      [v8 setLinesVisible:0];
    }
  }

  return v8;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v5 = [(GKDashboardLeaderboardScoreDataSource *)self isShowMoreIndexPath:a5, a4];
  v6 = off_279666DB0;
  if (!v5)
  {
    v6 = off_279666D40;
  }

  v7 = *v6;

  [(__objc2_class *)v7 defaultSize];
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (![(GKCollectionDataSource *)self useStandardHeaders])
  {
    v14 = [(GKDashboardLeaderboardScoreDataSource *)self sectionHeaderText];
    v15 = [MEMORY[0x277D0C0A0] localizedStringForTimeScope:{-[GKDashboardLeaderboardScoreDataSource timeScope](self, "timeScope")}];
    [GKDashboardButtonSectionHeaderView platformSizeForTitle:v14 buttonTitle:v15];
LABEL_6:
    v11 = v16;
    v13 = v17;

    goto LABEL_7;
  }

  if (![(GKDashboardLeaderboardScoreDataSource *)self itemCount])
  {
    v14 = [(GKDashboardLeaderboardScoreDataSource *)self sectionHeaderText];
    v15 = [(GKDashboardLeaderboardScoreDataSource *)self sectionHeaderFont];
    [GKDashboardSectionHeaderView platformSizeForTitle:v14 withFont:v15];
    goto LABEL_6;
  }

  v20.receiver = self;
  v20.super_class = GKDashboardLeaderboardScoreDataSource;
  [(GKCollectionDataSource *)&v20 collectionView:v8 layout:v9 referenceSizeForHeaderInSection:a5];
  v11 = v10;
  v13 = v12;
LABEL_7:

  v18 = v11;
  v19 = v13;
  result.height = v19;
  result.width = v18;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForFooterInSection:(int64_t)a5
{
  v5 = *MEMORY[0x277CBF3A8];
  v6 = *(MEMORY[0x277CBF3A8] + 8);
  v7 = [(GKDashboardLeaderboardScoreDataSource *)self hasFriendsButton:a3];
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

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = *MEMORY[0x277D767D8];
  if ([v9 isEqualToString:*MEMORY[0x277D767D8]])
  {
    if ([(GKCollectionDataSource *)self useStandardHeaders])
    {
      v24.receiver = self;
      v24.super_class = GKDashboardLeaderboardScoreDataSource;
      v12 = [(GKCollectionDataSource *)&v24 collectionView:v8 viewForSupplementaryElementOfKind:v9 atIndexPath:v10];
      v13 = [(GKDashboardLeaderboardScoreDataSource *)self sectionHeaderFont];
      [v12 setFont:v13];
    }

    else
    {
      v12 = [v8 dequeueReusableSupplementaryViewOfKind:v11 withReuseIdentifier:@"sectionHeader" forIndexPath:v10];
      v17 = [(GKDashboardLeaderboardScoreDataSource *)self sectionHeaderText];
      [v12 setTitle:v17];

      v18 = [(GKDashboardLeaderboardScoreDataSource *)self sectionHeaderFont];
      [v12 setFont:v18];

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
    if ([v9 isEqualToString:*MEMORY[0x277D767D0]] && -[GKDashboardLeaderboardScoreDataSource hasFriendsButton](self, "hasFriendsButton"))
    {
      v12 = [v8 dequeueReusableSupplementaryViewOfKind:v14 withReuseIdentifier:@"sectionFooter" forIndexPath:v10];
      v15 = GKGameCenterUIFrameworkBundle();
      v16 = GKGetLocalizedStringFromTableInBundle();
      [v12 setButtonTitle:v16 forState:0];

      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __102__GKDashboardLeaderboardScoreDataSource_collectionView_viewForSupplementaryElementOfKind_atIndexPath___block_invoke;
      v22[3] = &unk_279669E48;
      v22[4] = self;
      v23 = v8;
      [v12 setButtonTapHandler:v22];
    }

    else
    {
      v21.receiver = self;
      v21.super_class = GKDashboardLeaderboardScoreDataSource;
      v12 = [(GKCollectionDataSource *)&v21 collectionView:v8 viewForSupplementaryElementOfKind:v9 atIndexPath:v10];
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

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v4 = [a3 indexPathsForSelectedItems];
  v5 = [v4 count] == 0;

  return v5;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v20 = a3;
  v6 = a4;
  if ([(GKDashboardLeaderboardScoreDataSource *)self isShowMoreIndexPath:v6])
  {
    [v20 deselectItemAtIndexPath:v6 animated:1];
    self->_forceInitialShowMore = 0;
    -[GKDashboardLeaderboardScoreDataSource showMoreInCollectionView:section:](self, "showMoreInCollectionView:section:", v20, [v6 section]);
  }

  else
  {
    v7 = [(GKCollectionDataSource *)self presentationViewController];

    if (v7)
    {
      if ([(GKDashboardLeaderboardScoreDataSource *)self isShowcaseIndexPath:v6])
      {
        v8 = [(GKLeaderboard *)self->_leaderboard localPlayerScore];
      }

      else
      {
        v9 = [v6 item];
        if ([(NSArray *)self->_scores count]<= v9)
        {
          v10 = MEMORY[0x277CCACA8];
          v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
          v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/TVDashboard/GKDashboardLeaderboardScoreDataSource.m"];
          v13 = [v12 lastPathComponent];
          v14 = [v10 stringWithFormat:@"%@ (_scores.count > index)\n[%s (%s:%d)]", v11, "-[GKDashboardLeaderboardScoreDataSource collectionView:didSelectItemAtIndexPath:]", objc_msgSend(v13, "UTF8String"), 499];

          [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v14}];
        }

        v8 = [(NSArray *)self->_scores objectAtIndexedSubscript:v9];
      }

      v15 = v8;
      v16 = [v8 player];
      v17 = [v16 internal];
      v18 = [v17 playerID];
      v19 = [(GKCollectionDataSource *)self presentationViewController];
      [_TtC12GameCenterUI27PlayerProfileViewController showProfileFor:v18 from:v19 completion:0];
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

- (void)setTimeScopeAction:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_timeScopeAction = v3;
}

@end