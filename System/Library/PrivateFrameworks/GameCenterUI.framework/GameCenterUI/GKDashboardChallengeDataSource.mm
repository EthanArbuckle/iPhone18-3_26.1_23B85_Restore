@interface GKDashboardChallengeDataSource
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (GKDashboardChallengeDataSource)initWithGameRecord:(id)record;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)itemForIndexPath:(id)path;
- (id)sectionHeaderText;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)loadDataWithCompletionHandler:(id)handler;
- (void)setupCollectionView:(id)view;
@end

@implementation GKDashboardChallengeDataSource

- (GKDashboardChallengeDataSource)initWithGameRecord:(id)record
{
  recordCopy = record;
  v8.receiver = self;
  v8.super_class = GKDashboardChallengeDataSource;
  v5 = [(GKCollectionDataSource *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(GKDashboardChallengeDataSource *)v5 setGameRecord:recordCopy];
    [(GKCollectionDataSource *)v6 setUseStandardHeaders:1];
  }

  return v6;
}

- (void)setupCollectionView:(id)view
{
  viewCopy = view;
  v5 = +[GKChallengePlayerCell];
  [viewCopy registerNib:v5 forCellWithReuseIdentifier:@"challengeCell"];
  v6.receiver = self;
  v6.super_class = GKDashboardChallengeDataSource;
  [(GKCollectionDataSource *)&v6 setupCollectionView:viewCopy];
}

- (void)loadDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
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
  selfCopy = self;
  v18 = v19;
  [v8 perform:v15];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__GKDashboardChallengeDataSource_loadDataWithCompletionHandler___block_invoke_5;
  v11[3] = &unk_27966C058;
  v9 = handlerCopy;
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

- (id)itemForIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(NSArray *)self->_challenges count];
  if (v5 <= [pathCopy item])
  {
    v6 = 0;
  }

  else
  {
    v6 = -[NSArray objectAtIndexedSubscript:](self->_challenges, "objectAtIndexedSubscript:", [pathCopy item]);
  }

  return v6;
}

- (id)sectionHeaderText
{
  v3 = MEMORY[0x277CCACA8];
  v4 = GKGameCenterUIFrameworkBundle();
  v5 = GKGetLocalizedStringFromTableInBundle();
  v6 = [v3 localizedStringWithFormat:v5, -[GKDashboardChallengeDataSource itemCount](self, "itemCount")];
  localizedUppercaseString = [v6 localizedUppercaseString];

  return localizedUppercaseString;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithReuseIdentifier:@"challengeCell" forIndexPath:pathCopy];
  item = [pathCopy item];

  if ([(NSArray *)self->_challenges count]<= item)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/GameCenterUIService/Legacy Challenges UI/GKDashboardChallengeDataSource.m"];
    lastPathComponent = [v11 lastPathComponent];
    v13 = [v9 stringWithFormat:@"%@ (_challenges.count > index)\n[%s (%s:%d)]", v10, "-[GKDashboardChallengeDataSource collectionView:cellForItemAtIndexPath:]", objc_msgSend(lastPathComponent, "UTF8String"), 135];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v13}];
  }

  v14 = [(NSArray *)self->_challenges objectAtIndexedSubscript:item];
  issuingPlayer = [v14 issuingPlayer];
  [v7 setPlayer:issuingPlayer];

  v16 = MEMORY[0x277CCACA8];
  v17 = GKGameCenterUIFrameworkBundle();
  v18 = GKGetLocalizedStringFromTableInBundle();
  issuingPlayer2 = [v14 issuingPlayer];
  v20 = [issuingPlayer2 displayNameWithOptions:0];
  v21 = [v16 stringWithFormat:v18, v20];
  [v7 setNameText:v21];

  listTitleText = [v14 listTitleText];
  [v7 setStatusText:listTitleText];

  return v7;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  [GKDashboardPlayerCell defaultSize:view];
  v6 = 0.0;
  result.height = v5;
  result.width = v6;
  return result;
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  indexPathsForSelectedItems = [view indexPathsForSelectedItems];
  v5 = [indexPathsForSelectedItems count] == 0;

  return v5;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  presentationViewController = [(GKCollectionDataSource *)self presentationViewController];

  v6 = pathCopy;
  if (presentationViewController)
  {
    item = [pathCopy item];
    if ([(NSArray *)self->_challenges count]<= item)
    {
      v8 = MEMORY[0x277CCACA8];
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/GameCenterUIService/Legacy Challenges UI/GKDashboardChallengeDataSource.m"];
      lastPathComponent = [v10 lastPathComponent];
      v12 = [v8 stringWithFormat:@"%@ (_challenges.count > index)\n[%s (%s:%d)]", v9, "-[GKDashboardChallengeDataSource collectionView:didSelectItemAtIndexPath:]", objc_msgSend(lastPathComponent, "UTF8String"), 160];

      [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v12}];
    }

    v13 = [(NSArray *)self->_challenges objectAtIndexedSubscript:item];
    v14 = [[GKChallengeDetailViewController alloc] initWithChallenge:v13];
    [(GKChallengeDetailViewController *)v14 setShouldShowPlay:self->_shouldShowPlay];
    [(GKChallengeDetailViewController *)v14 setDelegate:self];
    presentationViewController2 = [(GKCollectionDataSource *)self presentationViewController];

    if (presentationViewController2)
    {
      presentationViewController3 = [(GKCollectionDataSource *)self presentationViewController];
      [GKDashboardPresentationController presentViewController:v14 presentingViewController:presentationViewController3 animated:1];
    }

    v6 = pathCopy;
  }
}

@end