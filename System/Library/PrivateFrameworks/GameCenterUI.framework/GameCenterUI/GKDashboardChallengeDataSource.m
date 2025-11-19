@interface GKDashboardChallengeDataSource
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (GKDashboardChallengeDataSource)initWithGameRecord:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)itemForIndexPath:(id)a3;
- (id)sectionHeaderText;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)loadDataWithCompletionHandler:(id)a3;
- (void)setupCollectionView:(id)a3;
@end

@implementation GKDashboardChallengeDataSource

- (GKDashboardChallengeDataSource)initWithGameRecord:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = GKDashboardChallengeDataSource;
  v5 = [(GKCollectionDataSource *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(GKDashboardChallengeDataSource *)v5 setGameRecord:v4];
    [(GKCollectionDataSource *)v6 setUseStandardHeaders:1];
  }

  return v6;
}

- (void)setupCollectionView:(id)a3
{
  v4 = a3;
  v5 = +[GKChallengePlayerCell];
  [v4 registerNib:v5 forCellWithReuseIdentifier:@"challengeCell"];
  v6.receiver = self;
  v6.super_class = GKDashboardChallengeDataSource;
  [(GKCollectionDataSource *)&v6 setupCollectionView:v4];
}

- (void)loadDataWithCompletionHandler:(id)a3
{
  v4 = a3;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  v5 = MEMORY[0x277D0C020];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKDashboardChallengeDataSource.m", 72, "-[GKDashboardChallengeDataSource loadDataWithCompletionHandler:]"];
  v7 = [v5 dispatchGroupWithName:v6];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__GKDashboardChallengeDataSource_loadDataWithCompletionHandler___block_invoke;
  v15[3] = &unk_27966D2C8;
  v8 = v7;
  v16 = v8;
  v17 = self;
  v18 = v19;
  [v8 perform:v15];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__GKDashboardChallengeDataSource_loadDataWithCompletionHandler___block_invoke_5;
  v11[3] = &unk_27966C058;
  v9 = v4;
  v13 = v9;
  v14 = v19;
  v10 = v8;
  v12 = v10;
  [v10 notifyOnMainQueueWithBlock:v11];

  _Block_object_dispose(v19, 8);
}

void __64__GKDashboardChallengeDataSource_loadDataWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D0BFF0];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__GKDashboardChallengeDataSource_loadDataWithCompletionHandler___block_invoke_2;
  v9[3] = &unk_27966D830;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v10 = v5;
  v11 = v6;
  v12 = v3;
  v13 = v7;
  v8 = v3;
  [v4 loadReceivedPendingChallengesWithCompletionHandler:v9];
}

void __64__GKDashboardChallengeDataSource_loadDataWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  [*(a1 + 32) setError:a3];
  if (([*(*(a1 + 40) + 72) isEqualToArray:v5] & 1) == 0 && (v5 || !a3))
  {
    [*(a1 + 40) setChallenges:v5];
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = *(*(a1 + 40) + 72);
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * v10);
          v12 = *(a1 + 32);
          v13[0] = MEMORY[0x277D85DD0];
          v13[1] = 3221225472;
          v13[2] = __64__GKDashboardChallengeDataSource_loadDataWithCompletionHandler___block_invoke_3;
          v13[3] = &unk_27966A148;
          v13[4] = v11;
          [v12 perform:v13];
          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void __64__GKDashboardChallengeDataSource_loadDataWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__GKDashboardChallengeDataSource_loadDataWithCompletionHandler___block_invoke_4;
  v6[3] = &unk_27966A4A8;
  v7 = v3;
  v5 = v3;
  [v4 loadDetailsWithCompletionHandler:v6];
}

void __64__GKDashboardChallengeDataSource_loadDataWithCompletionHandler___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(*(*(a1 + 48) + 8) + 24);
    v3 = [*(a1 + 32) error];
    (*(v1 + 16))(v1, v2, v3);
  }
}

- (id)itemForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(NSArray *)self->_challenges count];
  if (v5 <= [v4 item])
  {
    v6 = 0;
  }

  else
  {
    v6 = -[NSArray objectAtIndexedSubscript:](self->_challenges, "objectAtIndexedSubscript:", [v4 item]);
  }

  return v6;
}

- (id)sectionHeaderText
{
  v3 = MEMORY[0x277CCACA8];
  v4 = GKGameCenterUIFrameworkBundle();
  v5 = GKGetLocalizedStringFromTableInBundle();
  v6 = [v3 localizedStringWithFormat:v5, -[GKDashboardChallengeDataSource itemCount](self, "itemCount")];
  v7 = [v6 localizedUppercaseString];

  return v7;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithReuseIdentifier:@"challengeCell" forIndexPath:v6];
  v8 = [v6 item];

  if ([(NSArray *)self->_challenges count]<= v8)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/GameCenterUIService/Legacy Challenges UI/GKDashboardChallengeDataSource.m"];
    v12 = [v11 lastPathComponent];
    v13 = [v9 stringWithFormat:@"%@ (_challenges.count > index)\n[%s (%s:%d)]", v10, "-[GKDashboardChallengeDataSource collectionView:cellForItemAtIndexPath:]", objc_msgSend(v12, "UTF8String"), 135];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v13}];
  }

  v14 = [(NSArray *)self->_challenges objectAtIndexedSubscript:v8];
  v15 = [v14 issuingPlayer];
  [v7 setPlayer:v15];

  v16 = MEMORY[0x277CCACA8];
  v17 = GKGameCenterUIFrameworkBundle();
  v18 = GKGetLocalizedStringFromTableInBundle();
  v19 = [v14 issuingPlayer];
  v20 = [v19 displayNameWithOptions:0];
  v21 = [v16 stringWithFormat:v18, v20];
  [v7 setNameText:v21];

  v22 = [v14 listTitleText];
  [v7 setStatusText:v22];

  return v7;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  [GKDashboardPlayerCell defaultSize:a3];
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
  v17 = a4;
  v5 = [(GKCollectionDataSource *)self presentationViewController];

  v6 = v17;
  if (v5)
  {
    v7 = [v17 item];
    if ([(NSArray *)self->_challenges count]<= v7)
    {
      v8 = MEMORY[0x277CCACA8];
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/GameCenterUIService/Legacy Challenges UI/GKDashboardChallengeDataSource.m"];
      v11 = [v10 lastPathComponent];
      v12 = [v8 stringWithFormat:@"%@ (_challenges.count > index)\n[%s (%s:%d)]", v9, "-[GKDashboardChallengeDataSource collectionView:didSelectItemAtIndexPath:]", objc_msgSend(v11, "UTF8String"), 160];

      [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v12}];
    }

    v13 = [(NSArray *)self->_challenges objectAtIndexedSubscript:v7];
    v14 = [[GKChallengeDetailViewController alloc] initWithChallenge:v13];
    [(GKChallengeDetailViewController *)v14 setShouldShowPlay:self->_shouldShowPlay];
    [(GKChallengeDetailViewController *)v14 setDelegate:self];
    v15 = [(GKCollectionDataSource *)self presentationViewController];

    if (v15)
    {
      v16 = [(GKCollectionDataSource *)self presentationViewController];
      [GKDashboardPresentationController presentViewController:v14 presentingViewController:v16 animated:1];
    }

    v6 = v17;
  }
}

@end