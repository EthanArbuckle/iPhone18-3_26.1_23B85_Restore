@interface GKLeaderboardScoreDataSource
- (BOOL)hasData;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForFooterInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (GKLeaderboardScoreDataSource)initWithGameRecord:(id)a3 leaderboard:(id)a4;
- (GKLeaderboardScoreDelegate)leaderboardScoreDelegate;
- (UICollectionView)collectionView;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (double)collectionView:(id)a3 layout:(id)a4 minimumLineSpacingForSectionAtIndex:(int64_t)a5;
- (id)addInvitedFriendContactIdentifier:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)indexPathForPlayerId:(id)a3;
- (id)itemForIndexPath:(id)a3;
- (id)localPlayerEntryIndexPath;
- (id)makeContextMenuForCell:(id)a3 withScore:(id)a4;
- (id)targetedPreviewForUIContextMenuConfiguration:(id)a3 inCollectionView:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)friendSuggestionsCount;
- (int64_t)itemCount;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (int64_t)playerScope;
- (int64_t)timeScope;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)handleSelectionInCollectionView:(id)a3 forItemAtIndexPath:(id)a4;
- (void)loadDataWithCompletionHandler:(id)a3;
- (void)loadInitialDataWithCompletionHandler:(id)a3;
- (void)loadMoreDataWithStartIndex:(int64_t)a3 completionHandler:(id)a4;
- (void)presentFriendInvite;
- (void)processEntries:(id)a3 localPlayerEntry:(id)a4 totalPlayerCount:(int64_t)a5 error:(id)a6 completionHandler:(id)a7;
- (void)scrollViewDidScroll:(id)a3;
- (void)setPlayerScope:(int64_t)a3;
- (void)setTimeScope:(int64_t)a3;
- (void)setupCollectionView:(id)a3;
@end

@implementation GKLeaderboardScoreDataSource

- (GKLeaderboardScoreDataSource)initWithGameRecord:(id)a3 leaderboard:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = GKLeaderboardScoreDataSource;
  v7 = [(GKGameLayerCollectionDataSource *)&v11 initWithGameRecord:a3];
  v8 = v7;
  if (v7)
  {
    [(GKLeaderboardScoreDataSource *)v7 setLeaderboard:v6];
    [(GKLeaderboardScoreDataSource *)v8 setAutoScrollToLocalPlayerPosition:1];
    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [(GKLeaderboardScoreDataSource *)v8 setInvitedFriendContactIdentifiers:v9];
  }

  return v8;
}

- (void)setPlayerScope:(int64_t)a3
{
  v4 = [(GKLeaderboardScoreDataSource *)self leaderboard];
  [v4 setPlayerScope:a3];
}

- (int64_t)playerScope
{
  v2 = [(GKLeaderboardScoreDataSource *)self leaderboard];
  v3 = [v2 playerScope];

  return v3;
}

- (void)setTimeScope:(int64_t)a3
{
  v4 = [(GKLeaderboardScoreDataSource *)self leaderboard];
  [v4 setTimeScope:a3];
}

- (int64_t)timeScope
{
  v2 = [(GKLeaderboardScoreDataSource *)self leaderboard];
  v3 = [v2 timeScope];

  return v3;
}

- (void)setupCollectionView:(id)a3
{
  v19 = a3;
  [(GKLeaderboardScoreDataSource *)self setCollectionView:?];
  v4 = +[GKLeaderboardScoreCell lowRankNib];
  v5 = +[GKLeaderboardScoreCell highRankNib];
  v6 = +[GKLoadingCell];
  v7 = +[GKLeaderboardAddFriendsCell];
  v8 = +[GKLeaderboardAddFriendsCell];
  v9 = [v8 instantiateWithOwner:0 options:0];
  if ([v9 count])
  {
    v10 = [v9 objectAtIndexedSubscript:0];
    [(GKLeaderboardScoreDataSource *)self setSizingAddFriendsCell:v10];
  }

  v11 = objc_alloc_init(GKLeaderboardScoreFlowLayout);
  [v19 setCollectionViewLayout:v11];

  v18 = v4;
  [v19 registerNib:v4 forCellWithReuseIdentifier:@"lowRankCell"];
  [v19 registerNib:v5 forCellWithReuseIdentifier:@"highRankCell"];
  [v19 registerNib:v6 forCellWithReuseIdentifier:@"loadingCell"];
  [v19 registerNib:v7 forCellWithReuseIdentifier:@"addFriendsCell"];
  v12 = MEMORY[0x277D757B0];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v12 nibWithNibName:@"GKLeaderboardScoreCellAX_iOS" bundle:v13];
  [v19 registerNib:v14 forCellWithReuseIdentifier:@"AXCell"];

  LODWORD(v14) = GKIsXRUIIdiomShouldUsePadUI();
  [v19 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"friendSuggestionCell"];
  [v19 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"inviteFriendButtonCell"];
  if (v14)
  {
    v15 = MEMORY[0x277D757B0];
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v15 nibWithNibName:@"GKChallengeListViewSectionHeader_xrOS" bundle:v16];
  }

  else
  {
    v17 = +[GKChallengeListViewSectionHeader];
  }

  [v19 registerNib:v17 forSupplementaryViewOfKind:*MEMORY[0x277D767D8] withReuseIdentifier:@"GKCollectionDataSourceHeader"];

  [v19 setDataSource:self];
  [v19 setDelegate:self];
}

- (void)processEntries:(id)a3 localPlayerEntry:(id)a4 totalPlayerCount:(int64_t)a5 error:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = MEMORY[0x277D0C020];
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKLeaderboardScoreDataSource.m", 268, "-[GKLeaderboardScoreDataSource processEntries:localPlayerEntry:totalPlayerCount:error:completionHandler:]"];
  v18 = [v16 dispatchGroupWithName:v17];

  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v42 = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = __Block_byref_object_copy__5;
  v39[4] = __Block_byref_object_dispose__5;
  v19 = v12;
  v40 = v19;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __105__GKLeaderboardScoreDataSource_processEntries_localPlayerEntry_totalPlayerCount_error_completionHandler___block_invoke;
  v33[3] = &unk_27966C0D0;
  v38 = a5;
  v33[4] = self;
  v36 = v39;
  v20 = v13;
  v34 = v20;
  v21 = v14;
  v35 = v21;
  v37 = v41;
  [v18 perform:v33];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __105__GKLeaderboardScoreDataSource_processEntries_localPlayerEntry_totalPlayerCount_error_completionHandler___block_invoke_111;
  v32[3] = &unk_27966A148;
  v32[4] = self;
  [v18 perform:v32];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __105__GKLeaderboardScoreDataSource_processEntries_localPlayerEntry_totalPlayerCount_error_completionHandler___block_invoke_115;
  v25[3] = &unk_27966C0F8;
  v22 = v15;
  v29 = v22;
  v30 = v41;
  v23 = v21;
  v26 = v23;
  v27 = self;
  v31 = v39;
  v24 = v20;
  v28 = v24;
  [v18 notifyOnMainQueueWithBlock:v25];

  _Block_object_dispose(v39, 8);
  _Block_object_dispose(v41, 8);
}

void __105__GKLeaderboardScoreDataSource_processEntries_localPlayerEntry_totalPlayerCount_error_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) playerScope])
  {
    if ([*(a1 + 32) restrictToFriendsOnly])
    {
      v15[0] = 0;
      v15[1] = v15;
      v15[2] = 0x2020000000;
      v15[3] = 1;
      v4 = *(*(*(a1 + 56) + 8) + 40);
      v9 = MEMORY[0x277D85DD0];
      v10 = 3221225472;
      v11 = __105__GKLeaderboardScoreDataSource_processEntries_localPlayerEntry_totalPlayerCount_error_completionHandler___block_invoke_2;
      v12 = &unk_27966C0A8;
      v14 = v15;
      v13 = *(a1 + 40);
      v5 = [v4 _gkFilterWithBlock:&v9];
      v6 = *(*(a1 + 56) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      _Block_object_dispose(v15, 8);
    }

    v8 = [*(*(*(a1 + 56) + 8) + 40) count];
  }

  else
  {
    v8 = *(a1 + 72);
  }

  [*(a1 + 32) setMaxRange:v8];
  [*(a1 + 32) setLocalPlayerEntry:*(a1 + 40)];
  if (*(*(*(a1 + 56) + 8) + 40) || !*(a1 + 48))
  {
    [*(a1 + 32) setEntries:?];
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  v3[2](v3);
}

id __105__GKLeaderboardScoreDataSource_processEntries_localPlayerEntry_totalPlayerCount_error_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 player];
  v5 = [v4 isLocalPlayer];

  v6 = [v3 player];
  v7 = [v6 friendBiDirectional];
  v8 = [v7 isEqualToNumber:&unk_286189030];

  if ((v8 & 1) != 0 || v5)
  {
    v10 = *(*(*(a1 + 40) + 8) + 24);
    v11 = [v3 internal];
    [v11 setRank:v10];

    if (v5)
    {
      v12 = *(*(*(a1 + 40) + 8) + 24);
      v13 = [*(a1 + 32) internal];
      [v13 setRank:v12];
    }

    ++*(*(*(a1 + 40) + 8) + 24);
    v9 = v3;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __105__GKLeaderboardScoreDataSource_processEntries_localPlayerEntry_totalPlayerCount_error_completionHandler___block_invoke_111(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __105__GKLeaderboardScoreDataSource_processEntries_localPlayerEntry_totalPlayerCount_error_completionHandler___block_invoke_2_113;
  v5[3] = &unk_279669DF8;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  [_TtC12GameCenterUI20GameCenterObjcHelper fetchSuggestedFriendsWithCompletionHandler:v5];
}

void __105__GKLeaderboardScoreDataSource_processEntries_localPlayerEntry_totalPlayerCount_error_completionHandler___block_invoke_2_113(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v7 = GKOSLoggers();
    }

    v8 = *MEMORY[0x277D0C298];
    if (os_log_type_enabled(*MEMORY[0x277D0C298], OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_24DE53000, v8, OS_LOG_TYPE_INFO, "GKLeaderboardScoreDataSource: Unable to fetch suggested friends: %@", &v9, 0xCu);
    }
  }

  [*(a1 + 32) setSuggestedFriends:v5];
  (*(*(a1 + 40) + 16))();
}

void __105__GKLeaderboardScoreDataSource_processEntries_localPlayerEntry_totalPlayerCount_error_completionHandler___block_invoke_115(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(v2 + 16))(v2, *(*(*(a1 + 64) + 8) + 24), *(a1 + 32));
    [*(a1 + 40) setIsLoadingData:0];
    [*(a1 + 40) setShouldDisplayFriendSuggestions:{objc_msgSend(*(*(*(a1 + 72) + 8) + 40), "count") == 0}];
    v3 = [*(a1 + 40) leaderboardScoreDelegate];

    if (v3)
    {
      if ([*(a1 + 40) playerScope] || !objc_msgSend(*(*(*(a1 + 72) + 8) + 40), "count"))
      {
        v9 = 0;
      }

      else
      {
        v9 = [*(*(*(a1 + 72) + 8) + 40) objectAtIndexedSubscript:0];
      }

      if ([*(a1 + 48) rank] >= 1 && (v4 = objc_msgSend(*(a1 + 48), "rank"), v4 <= objc_msgSend(*(*(*(a1 + 72) + 8) + 40), "count")))
      {
        if ([*(a1 + 48) rank] < 2)
        {
          v5 = 0;
        }

        else
        {
          v5 = [*(*(*(a1 + 72) + 8) + 40) objectAtIndexedSubscript:{objc_msgSend(*(a1 + 48), "rank") - 2}];
        }

        v6 = [*(a1 + 48) rank];
        if (v6 >= [*(*(*(a1 + 72) + 8) + 40) count])
        {
          v7 = 0;
        }

        else
        {
          v7 = [*(*(*(a1 + 72) + 8) + 40) objectAtIndexedSubscript:{objc_msgSend(*(a1 + 48), "rank")}];
        }

        v8 = [*(a1 + 40) leaderboardScoreDelegate];
        [v8 didLoadScoresWithLocalPlayerEntry:*(a1 + 48) topPlayer:v9 playerAbove:v5 playerBelow:v7 totalEntries:{objc_msgSend(*(a1 + 40), "maxRange")}];
      }

      else
      {
        v5 = [*(a1 + 40) leaderboardScoreDelegate];
        [v5 didLoadScoresWithLocalPlayerEntry:*(a1 + 48) topPlayer:v9 playerAbove:0 playerBelow:0 totalEntries:{objc_msgSend(*(a1 + 40), "maxRange")}];
      }
    }
  }
}

- (void)loadDataWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D0C138] local];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__GKLeaderboardScoreDataSource_loadDataWithCompletionHandler___block_invoke;
  v7[3] = &unk_279669DF8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 loadFriendsAsPlayersWithCompletionHandler:v7];
}

void __62__GKLeaderboardScoreDataSource_loadDataWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v6 = GKOSLoggers();
    }

    v7 = *MEMORY[0x277D0C290];
    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      __62__GKLeaderboardScoreDataSource_loadDataWithCompletionHandler___block_invoke_cold_1(v5, v7);
    }
  }

  v26 = v5;
  v8 = objc_opt_new();
  [*(a1 + 32) setFriendCount:0];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v4;
  v9 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0x277D0C000uLL;
    v12 = *v30;
    do
    {
      v13 = 0;
      do
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v29 + 1) + 8 * v13);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v15 = MEMORY[0x277CCACA8];
          v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"expected GKPlayer, got %@", v14];
          [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/GameCenterUIService/GKLeaderboardScoreDataSource.m"];
          v18 = v17 = v11;
          v19 = [v18 lastPathComponent];
          v20 = [v15 stringWithFormat:@"%@ ([player isKindOfClass:[GKPlayer class]])\n[%s (%s:%d)]", v16, "-[GKLeaderboardScoreDataSource loadDataWithCompletionHandler:]_block_invoke", objc_msgSend(v19, "UTF8String"), 348];

          v11 = v17;
          [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v20}];
        }

        v21 = [v14 friendBiDirectional];
        v22 = [v21 BOOLValue];

        if (v22)
        {
          [*(a1 + 32) setFriendCount:{objc_msgSend(*(a1 + 32), "friendCount") + 1}];
        }

        v23 = [v14 internal];
        v24 = [v23 playerID];
        [v8 addObject:v24];

        ++v13;
      }

      while (v10 != v13);
      v10 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v10);
  }

  v25 = [MEMORY[0x277CBEB98] setWithArray:v8];
  [*(a1 + 32) setLocalPlayerFriendIDs:v25];

  [*(a1 + 32) loadInitialDataWithCompletionHandler:*(a1 + 40)];
}

- (void)loadInitialDataWithCompletionHandler:(id)a3
{
  v4 = a3;
  [(GKLeaderboardScoreDataSource *)self setFirstLoad:1];
  [(GKLeaderboardScoreDataSource *)self setIsLoadingData:1];
  [(GKLeaderboardScoreDataSource *)self setIsLoadingNextData:0];
  [(GKLeaderboardScoreDataSource *)self setIsLoadingPreviousData:0];
  [(GKLeaderboardScoreDataSource *)self setAdditionalNextDataLoadToken:0];
  [(GKLeaderboardScoreDataSource *)self setAdditionalPreviousDataLoadToken:0];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3010000000;
  v34 = 0;
  v35 = 0;
  v33 = &unk_24E43C07A;
  v5 = [(GKLeaderboardScoreDataSource *)self leaderboard];
  v6 = [v5 playerScope];

  v7 = v31;
  v8 = 100;
  if (v6 == 1)
  {
    v8 = 600;
  }

  v31[4] = 1;
  v7[5] = v8;
  [(GKLeaderboardScoreDataSource *)self setStartingRank:1];
  v9 = [(GKLeaderboardScoreDataSource *)self leaderboard];
  v10 = [v9 playerScope];

  v11 = [(GKLeaderboardScoreDataSource *)self leaderboard];
  v12 = [v11 timeScope];

  v13 = [(GKLeaderboardScoreDataSource *)self leaderboard];
  v22 = [v13 identifier];

  v14 = [(GKLeaderboardScoreDataSource *)self leaderboard];
  v15 = [(GKGameLayerCollectionDataSource *)self gameRecord];
  v16 = [v15 gameDescriptor];
  v17 = [(GKLeaderboardScoreDataSource *)self playerScope];
  v18 = [(GKLeaderboardScoreDataSource *)self timeScope];
  v19 = v31;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __69__GKLeaderboardScoreDataSource_loadInitialDataWithCompletionHandler___block_invoke;
  v23[3] = &unk_27966C148;
  v27 = v10;
  v28 = v12;
  v23[4] = self;
  v20 = v22;
  v24 = v20;
  v21 = v4;
  v25 = v21;
  v26 = &v30;
  v29 = 1;
  [v14 loadEntriesWithGameDescriptor:v16 fetchOptions:1 playerScope:v17 timeScope:v18 range:v19[4] completionHandler:{v19[5], v23}];

  _Block_object_dispose(&v30, 8);
}

void __69__GKLeaderboardScoreDataSource_loadInitialDataWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = *(a1 + 64);
  v13 = [*(a1 + 32) leaderboard];
  if (v12 != [v13 playerScope])
  {
    goto LABEL_9;
  }

  v14 = *(a1 + 72);
  v15 = [*(a1 + 32) leaderboard];
  if (v14 != [v15 timeScope])
  {

LABEL_9:
    goto LABEL_10;
  }

  v16 = *(a1 + 40);
  v17 = [*(a1 + 32) leaderboard];
  v18 = [v17 identifier];
  LOBYTE(v16) = [v16 isEqualToString:v18];

  if ((v16 & 1) == 0)
  {
LABEL_10:
    [*(a1 + 32) loadInitialDataWithCompletionHandler:*(a1 + 48)];
    goto LABEL_11;
  }

  v19 = [*(a1 + 32) autoScrollToLocalPlayerPosition];
  if (v9 && v19 && [v9 rank] > *(*(*(a1 + 56) + 8) + 40) + *(*(*(a1 + 56) + 8) + 32))
  {
    *(*(*(a1 + 56) + 8) + 32) = (100 * ([v9 rank] / 100)) | 1;
    [*(a1 + 32) setStartingRank:*(*(*(a1 + 56) + 8) + 32)];
    v20 = [*(a1 + 32) leaderboard];
    v21 = [*(a1 + 32) gameRecord];
    v22 = [v21 gameDescriptor];
    v27 = *(a1 + 80);
    v26 = [*(a1 + 32) playerScope];
    v23 = [*(a1 + 32) timeScope];
    v24 = *(*(a1 + 56) + 8);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __69__GKLeaderboardScoreDataSource_loadInitialDataWithCompletionHandler___block_invoke_2;
    v28[3] = &unk_27966C120;
    v25 = *(a1 + 40);
    v28[4] = *(a1 + 32);
    v31 = *(a1 + 64);
    v29 = v25;
    v30 = *(a1 + 48);
    [v20 loadEntriesWithGameDescriptor:v22 fetchOptions:v27 playerScope:v26 timeScope:v23 range:*(v24 + 32) completionHandler:{*(v24 + 40), v28}];
  }

  else
  {
    [*(a1 + 32) processEntries:v10 localPlayerEntry:v9 totalPlayerCount:a4 error:v11 completionHandler:*(a1 + 48)];
  }

LABEL_11:
}

void __69__GKLeaderboardScoreDataSource_loadInitialDataWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v18 = a2;
  v9 = a3;
  v10 = a5;
  v11 = *(a1 + 56);
  v12 = [*(a1 + 32) leaderboard];
  if (v11 != [v12 playerScope])
  {
    goto LABEL_6;
  }

  v13 = *(a1 + 64);
  v14 = [*(a1 + 32) leaderboard];
  if (v13 != [v14 timeScope])
  {

LABEL_6:
    goto LABEL_7;
  }

  v15 = *(a1 + 40);
  v16 = [*(a1 + 32) leaderboard];
  v17 = [v16 identifier];
  LOBYTE(v15) = [v15 isEqualToString:v17];

  if (v15)
  {
    [*(a1 + 32) processEntries:v9 localPlayerEntry:v18 totalPlayerCount:a4 error:v10 completionHandler:*(a1 + 48)];
    goto LABEL_8;
  }

LABEL_7:
  [*(a1 + 32) loadInitialDataWithCompletionHandler:*(a1 + 48)];
LABEL_8:
}

- (void)loadMoreDataWithStartIndex:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(GKLeaderboardScoreDataSource *)self leaderboard];
  v8 = [(GKGameLayerCollectionDataSource *)self gameRecord];
  v9 = [v8 gameDescriptor];
  v10 = [(GKLeaderboardScoreDataSource *)self playerScope];
  v11 = [(GKLeaderboardScoreDataSource *)self timeScope];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__GKLeaderboardScoreDataSource_loadMoreDataWithStartIndex_completionHandler___block_invoke;
  v13[3] = &unk_27966C170;
  v13[4] = self;
  v14 = v6;
  v12 = v6;
  [v7 loadEntriesWithGameDescriptor:v9 fetchOptions:1 playerScope:v10 timeScope:v11 range:a3 completionHandler:{100, v13}];
}

void __77__GKLeaderboardScoreDataSource_loadMoreDataWithStartIndex_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v12 = a3;
  v9 = a5;
  [*(a1 + 32) setLocalPlayerEntry:a2];
  if (![*(a1 + 32) playerScope])
  {
    [*(a1 + 32) setMaxRange:a4];
  }

  (*(*(a1 + 40) + 16))();
  v10 = [*(a1 + 32) leaderboardScoreDelegate];

  if (v10)
  {
    v11 = [*(a1 + 32) leaderboardScoreDelegate];
    [v11 didLoadAdditionalScoresWithUpdatedTotalEntries:{objc_msgSend(*(a1 + 32), "maxRange")}];
  }
}

- (id)localPlayerEntryIndexPath
{
  v3 = [(GKLeaderboardScoreDataSource *)self localPlayerEntry];
  v4 = [v3 rank];

  if (v4 < 1)
  {
    v9 = 0;
  }

  else
  {
    v5 = [(GKLeaderboardScoreDataSource *)self localPlayerEntry];
    v6 = [v5 rank];
    v7 = v6 - [(GKLeaderboardScoreDataSource *)self startingRank];
    if ([(GKLeaderboardScoreDataSource *)self startingRank]<= 1)
    {
      v8 = v7;
    }

    else
    {
      v8 = v7 + 1;
    }

    v9 = [MEMORY[0x277CCAA70] indexPathForItem:v8 inSection:0];
  }

  return v9;
}

- (id)indexPathForPlayerId:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [(GKLeaderboardScoreDataSource *)self entries];
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v20 = self;
    v8 = *v22;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [v10 player];
        v12 = [v11 internal];
        v13 = [v12 playerID];
        v14 = [v13 isEqualToString:v4];

        if (v14)
        {
          v16 = [v10 rank];
          v17 = v16 - [(GKLeaderboardScoreDataSource *)v20 startingRank];
          if ([(GKLeaderboardScoreDataSource *)v20 startingRank]<= 1)
          {
            v18 = v17;
          }

          else
          {
            v18 = v17 + 1;
          }

          v15 = [MEMORY[0x277CCAA70] indexPathForItem:v18 inSection:0];
          goto LABEL_14;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_14:

  return v15;
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(GKLeaderboardScoreDataSource *)self isLoadingData])
  {
    goto LABEL_15;
  }

  v11 = [(GKLeaderboardScoreDataSource *)self localPlayerEntryIndexPath];
  if (v11)
  {
    v12 = v11;
    v13 = [(GKLeaderboardScoreDataSource *)self localPlayerEntryIndexPath];
    v14 = [v13 compare:v10];

    if (!v14)
    {
      v15 = [(GKLeaderboardScoreDataSource *)self leaderboardScoreDelegate];
      [v15 setPreferredFocusCell:v9];
    }
  }

  if (![(GKLeaderboardScoreDataSource *)self isLoadingNextData])
  {
    v16 = [(GKLeaderboardScoreDataSource *)self startingRank];
    v17 = [(GKLeaderboardScoreDataSource *)self entries];
    v18 = v16 + [v17 count] - 1;
    if (v18 >= [(GKLeaderboardScoreDataSource *)self maxRange])
    {
LABEL_9:

      goto LABEL_10;
    }

    v19 = [v10 item];
    v20 = [(GKLeaderboardScoreDataSource *)self bottomLoadingCellItem]- 25;

    if (v19 >= v20)
    {
      [(GKLeaderboardScoreDataSource *)self setIsLoadingNextData:1];
      v21 = [MEMORY[0x277CCAD78] UUID];
      v22 = [v21 UUIDString];
      [(GKLeaderboardScoreDataSource *)self setAdditionalNextDataLoadToken:v22];

      v23 = [(GKLeaderboardScoreDataSource *)self additionalNextDataLoadToken];
      v24 = [(GKLeaderboardScoreDataSource *)self startingRank];
      v25 = [(GKLeaderboardScoreDataSource *)self entries];
      v26 = [v25 count];

      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __82__GKLeaderboardScoreDataSource_collectionView_willDisplayCell_forItemAtIndexPath___block_invoke;
      v41[3] = &unk_27966C1C0;
      v42 = v23;
      v43 = self;
      v44 = v8;
      v45 = v10;
      v17 = v23;
      [(GKLeaderboardScoreDataSource *)self loadMoreDataWithStartIndex:v26 + v24 completionHandler:v41];

      goto LABEL_9;
    }
  }

LABEL_10:
  if (![(GKLeaderboardScoreDataSource *)self isLoadingPreviousData]&& [(GKLeaderboardScoreDataSource *)self startingRank]>= 2)
  {
    v27 = [v10 item];
    if (v27 >= [(GKLeaderboardScoreDataSource *)self topLoadingCellItem])
    {
      v28 = [v10 item];
      if (v28 <= [(GKLeaderboardScoreDataSource *)self topLoadingCellItem]+ 25)
      {
        [(GKLeaderboardScoreDataSource *)self setIsLoadingPreviousData:1];
        v29 = [MEMORY[0x277CCAD78] UUID];
        v30 = [v29 UUIDString];
        [(GKLeaderboardScoreDataSource *)self setAdditionalPreviousDataLoadToken:v30];

        v31 = [(GKLeaderboardScoreDataSource *)self additionalPreviousDataLoadToken];
        v32 = [(GKLeaderboardScoreDataSource *)self startingRank];
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __82__GKLeaderboardScoreDataSource_collectionView_willDisplayCell_forItemAtIndexPath___block_invoke_141;
        v35[3] = &unk_27966C210;
        v33 = v32 - 100;
        v36 = v31;
        v37 = self;
        v40 = v32 - 100;
        v38 = v8;
        v39 = v10;
        v34 = v31;
        [(GKLeaderboardScoreDataSource *)self loadMoreDataWithStartIndex:v33 completionHandler:v35];
      }
    }
  }

LABEL_15:
}

void __82__GKLeaderboardScoreDataSource_collectionView_willDisplayCell_forItemAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) additionalNextDataLoadToken];
    LODWORD(v4) = [v4 isEqualToString:v5];

    if (v4)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __82__GKLeaderboardScoreDataSource_collectionView_willDisplayCell_forItemAtIndexPath___block_invoke_2;
      v8[3] = &unk_27966C198;
      v6 = *(a1 + 48);
      v8[4] = *(a1 + 40);
      v9 = v3;
      v10 = *(a1 + 56);
      v11 = *(a1 + 48);
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __82__GKLeaderboardScoreDataSource_collectionView_willDisplayCell_forItemAtIndexPath___block_invoke_139;
      v7[3] = &unk_279669C90;
      v7[4] = *(a1 + 40);
      [v6 performBatchUpdates:v8 completion:v7];
    }
  }
}

void __82__GKLeaderboardScoreDataSource_collectionView_willDisplayCell_forItemAtIndexPath___block_invoke_2(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D0C2A0];
  v3 = *MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v4 = GKOSLoggers();
    v3 = *v2;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = v3;
    v7 = [v5 entries];
    v28 = 134217984;
    v29 = [v7 count];
    _os_log_impl(&dword_24DE53000, v6, OS_LOG_TYPE_INFO, "GKLeaderboardScoreDataSource: performing batch update after fetching more data, previous entry count: %ld", &v28, 0xCu);
  }

  v8 = [*(a1 + 32) entries];
  v9 = [v8 count];

  v10 = [*(a1 + 32) entries];
  v11 = [v10 arrayByAddingObjectsFromArray:*(a1 + 40)];
  [*(a1 + 32) setEntries:v11];

  v12 = *v2;
  if (!*v2)
  {
    v13 = GKOSLoggers();
    v12 = *v2;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v14 = *(a1 + 32);
    v15 = v12;
    v16 = [v14 entries];
    v17 = [v16 count];
    v28 = 134217984;
    v29 = v17;
    _os_log_impl(&dword_24DE53000, v15, OS_LOG_TYPE_INFO, "GKLeaderboardScoreDataSource: performing batch update after fetching more data, updated entry count: %ld", &v28, 0xCu);
  }

  v18 = [*(a1 + 32) entries];
  v19 = [v18 count] - v9;

  v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:v19];
  v21 = [*(a1 + 32) startingRank];
  v22 = [*(a1 + 32) entries];
  v23 = v21 + [v22 count] - 1;
  if (v23 == [*(a1 + 32) maxRange])
  {
    v24 = [*(a1 + 32) bottomLoadingCellItem] != -1;

    v19 -= v24;
  }

  else
  {
  }

  if (v19 >= 1)
  {
    do
    {
      if ([*(a1 + 32) startingRank] <= 1)
      {
        v25 = v9;
      }

      else
      {
        v25 = v9 + 1;
      }

      v26 = [MEMORY[0x277CCAA70] indexPathForItem:v25 inSection:{objc_msgSend(*(a1 + 48), "section")}];
      [v20 addObject:v26];

      ++v9;
      --v19;
    }

    while (v19);
  }

  v27 = [*(a1 + 56) collectionViewLayout];
  [v27 setIsInsertingItemsAbove:0];

  [*(a1 + 56) insertItemsAtIndexPaths:v20];
  [*(a1 + 32) setIsLoadingNextData:0];
}

uint64_t __82__GKLeaderboardScoreDataSource_collectionView_willDisplayCell_forItemAtIndexPath___block_invoke_139(uint64_t a1)
{
  v2 = MEMORY[0x277D0C2A0];
  v3 = *MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v4 = GKOSLoggers();
    v3 = *v2;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_24DE53000, v3, OS_LOG_TYPE_INFO, "GKLeaderboardScoreDataSource: performing batch update completed for load more action.", v6, 2u);
  }

  return [*(a1 + 32) setFirstLoad:0];
}

void __82__GKLeaderboardScoreDataSource_collectionView_willDisplayCell_forItemAtIndexPath___block_invoke_141(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) additionalPreviousDataLoadToken];
    LODWORD(v4) = [v4 isEqualToString:v5];

    if (v4)
    {
      [MEMORY[0x277CD9FF0] begin];
      [MEMORY[0x277CD9FF0] setDisableActions:1];
      v6 = [*(a1 + 40) entries];
      v7 = [v6 count];

      [*(a1 + 40) setStartingRank:*(a1 + 64)];
      v8 = [*(a1 + 48) collectionViewLayout];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __82__GKLeaderboardScoreDataSource_collectionView_willDisplayCell_forItemAtIndexPath___block_invoke_2_143;
      v15[3] = &unk_27966C1E8;
      v9 = *(a1 + 48);
      v15[4] = *(a1 + 40);
      v16 = v3;
      v20 = v7;
      v17 = *(a1 + 56);
      v18 = v8;
      v19 = *(a1 + 48);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __82__GKLeaderboardScoreDataSource_collectionView_willDisplayCell_forItemAtIndexPath___block_invoke_144;
      v12[3] = &unk_27966AED8;
      v10 = *(a1 + 48);
      v12[4] = *(a1 + 40);
      v13 = v18;
      v14 = v10;
      v11 = v18;
      [v9 performBatchUpdates:v15 completion:v12];
    }
  }
}

void __82__GKLeaderboardScoreDataSource_collectionView_willDisplayCell_forItemAtIndexPath___block_invoke_2_143(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D0C2A0];
  v3 = *MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v4 = GKOSLoggers();
    v3 = *v2;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = v3;
    v7 = [v5 entries];
    v22 = 134217984;
    v23 = [v7 count];
    _os_log_impl(&dword_24DE53000, v6, OS_LOG_TYPE_INFO, "GKLeaderboardScoreDataSource: performing batch update after fetching previous data, previous entry count: %ld", &v22, 0xCu);
  }

  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) entries];
  v10 = [v8 arrayByAddingObjectsFromArray:v9];
  [*(a1 + 32) setEntries:v10];

  v11 = *v2;
  if (!*v2)
  {
    v12 = GKOSLoggers();
    v11 = *v2;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v13 = *(a1 + 32);
    v14 = v11;
    v15 = [v13 entries];
    v16 = [v15 count];
    v22 = 134217984;
    v23 = v16;
    _os_log_impl(&dword_24DE53000, v14, OS_LOG_TYPE_INFO, "GKLeaderboardScoreDataSource: performing batch update after fetching previous data, updated entry count: %ld", &v22, 0xCu);
  }

  v17 = [*(a1 + 32) entries];
  v18 = [v17 count] - *(a1 + 72);

  v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:v18];
  if ([*(a1 + 32) startingRank] == 1)
  {
    v18 -= [*(a1 + 32) topLoadingCellItem] != -1;
  }

  if (v18 >= 1)
  {
    v20 = 1;
    do
    {
      v21 = [MEMORY[0x277CCAA70] indexPathForItem:v20 inSection:{objc_msgSend(*(a1 + 48), "section")}];
      [v19 addObject:v21];

      ++v20;
      --v18;
    }

    while (v18);
  }

  [*(a1 + 56) setIsInsertingItemsAbove:1];
  [*(a1 + 56) collectionViewContentSize];
  [*(a1 + 56) setContentSizeBeforeInsertingItemsAbove:?];
  [*(a1 + 64) insertItemsAtIndexPaths:v19];
}

void __82__GKLeaderboardScoreDataSource_collectionView_willDisplayCell_forItemAtIndexPath___block_invoke_144(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D0C2A0];
  v3 = *MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v4 = GKOSLoggers();
    v3 = *v2;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_24DE53000, v3, OS_LOG_TYPE_INFO, "GKLeaderboardScoreDataSource: performing batch update completed for load previous data.", v9, 2u);
  }

  [*(a1 + 32) setIsLoadingPreviousData:0];
  [*(a1 + 40) setIsInsertingItemsAbove:0];
  [*(a1 + 32) setFirstLoad:0];
  [MEMORY[0x277CD9FF0] commit];
  if ([*(a1 + 32) firstLoad])
  {
    v5 = [*(a1 + 32) localPlayerEntryIndexPath];

    if (v5)
    {
      v6 = *(a1 + 48);
      v7 = [*(a1 + 32) localPlayerEntryIndexPath];
      v10[0] = v7;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
      [v6 reloadItemsAtIndexPaths:v8];
    }
  }
}

- (int64_t)itemCount
{
  [(GKLeaderboardScoreDataSource *)self setTopLoadingCellItem:-1];
  [(GKLeaderboardScoreDataSource *)self setBottomLoadingCellItem:-1];
  [(GKLeaderboardScoreDataSource *)self setAddFriendCellItem:-1];
  [(GKLeaderboardScoreDataSource *)self setNoFriendsCellItem:-1];
  v3 = [(GKLeaderboardScoreDataSource *)self entries];
  v4 = [v3 count];

  if (v4 < 1)
  {
    [(GKLeaderboardScoreDataSource *)self setNoFriendsCellItem:0];
    return 1;
  }

  else
  {
    if ([(GKLeaderboardScoreDataSource *)self startingRank]>= 2)
    {
      [(GKLeaderboardScoreDataSource *)self setTopLoadingCellItem:0];
      ++v4;
    }

    v5 = [(GKLeaderboardScoreDataSource *)self startingRank]+ v4;
    if (v5 < [(GKLeaderboardScoreDataSource *)self maxRange])
    {
      [(GKLeaderboardScoreDataSource *)self setBottomLoadingCellItem:v4];
      return ++v4;
    }

    if ([(GKLeaderboardScoreDataSource *)self restrictToFriendsOnly])
    {
      [(GKLeaderboardScoreDataSource *)self setAddFriendCellItem:v4];
      return ++v4;
    }
  }

  return v4;
}

- (int64_t)friendSuggestionsCount
{
  showingAllFriendSuggestions = self->_showingAllFriendSuggestions;
  v3 = [(GKLeaderboardScoreDataSource *)self suggestedFriends];
  v4 = [v3 count];

  v5 = 3;
  if (v4 < 3)
  {
    v5 = v4;
  }

  if (showingAllFriendSuggestions)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

- (BOOL)hasData
{
  v2 = [(GKLeaderboardScoreDataSource *)self entries];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)itemForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(GKLeaderboardScoreDataSource *)self topLoadingCellItem]!= -1;
  v6 = [v4 item];

  v7 = v6 - v5;
  if (v7 < 0)
  {
    v10 = 0;
  }

  else
  {
    v8 = [(GKLeaderboardScoreDataSource *)self entries];
    if (v7 >= [v8 count])
    {
      v10 = 0;
    }

    else
    {
      v9 = [(GKLeaderboardScoreDataSource *)self entries];
      v10 = [v9 objectAtIndexedSubscript:v7];
    }
  }

  return v10;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v7 = a3;
  v8 = a5;
  if ([v8 section])
  {
    if ([v8 section] == 1)
    {
      [v7 bounds];
      [_TtC12GameCenterUI45GKDashboardFriendSuggestionCollectionViewCell sizeWithFitting:v7 in:v9, 0.0];
      v11 = v10;
      v13 = v12;
    }

    else
    {
      v11 = *MEMORY[0x277CBF3A8];
      v13 = *(MEMORY[0x277CBF3A8] + 8);
    }

    goto LABEL_24;
  }

  [v7 frame];
  v11 = v14;
  v15 = [(GKLeaderboardScoreDataSource *)self noFriendsCellItem];
  v16 = [v8 item];
  v17 = [(GKLeaderboardScoreDataSource *)self addFriendCellItem];
  v18 = [v8 item];
  v19 = [MEMORY[0x277D75C80] currentTraitCollection];
  v20 = [v19 preferredContentSizeCategory];

  if (!UIContentSizeCategoryIsAccessibilityCategory(v20))
  {
    if ([v20 isEqualToString:*MEMORY[0x277D76818]])
    {
      v13 = 72.0;
      goto LABEL_16;
    }

    v21 = [v20 isEqualToString:*MEMORY[0x277D76820]] == 0;
    v22 = 60.0;
    v23 = 72.0;
LABEL_13:
    if (v21)
    {
      v13 = v22;
    }

    else
    {
      v13 = v23;
    }

    goto LABEL_16;
  }

  if ([v20 isEqualToString:*MEMORY[0x277D767E8]])
  {
    v13 = 264.0;
    goto LABEL_16;
  }

  if ([v20 isEqualToString:*MEMORY[0x277D767F0]])
  {
    v13 = 234.0;
    goto LABEL_16;
  }

  if (([v20 isEqualToString:*MEMORY[0x277D767F8]] & 1) == 0)
  {
    v21 = [v20 isEqualToString:*MEMORY[0x277D76800]] == 0;
    v22 = 144.0;
    v23 = 174.0;
    goto LABEL_13;
  }

  v13 = 204.0;
LABEL_16:
  if (v15 == v16 || v17 == v18)
  {
    v24 = [(GKLeaderboardScoreDataSource *)self sizingAddFriendsCell];
    v25 = v24;
    if (v15 == v16)
    {
      [v24 configureNoFriendsViewWithHandler:&__block_literal_global_29];
    }

    else
    {
      [v24 configureAddFriendsLockupWithMetricsPageId:&stru_28612D290 handler:&__block_literal_global_151];
    }

    v26 = [(GKLeaderboardScoreDataSource *)self sizingAddFriendsCell];
    [v26 preferredLayoutSizeFittingSize:{v11, 1.79769313e308}];
    v28 = v27;

    if (v13 < v28)
    {
      v13 = v28;
    }
  }

LABEL_24:
  v29 = v11;
  v30 = v13;
  result.height = v30;
  result.width = v29;
  return result;
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  v4 = [&unk_2861897A8 mutableCopy];
  if ([(GKLeaderboardScoreDataSource *)self shouldDisplayFriendSuggestions])
  {
    [v4 addObject:&unk_286189060];
  }

  v5 = [v4 count];

  return v5;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    v7 = [(GKLeaderboardScoreDataSource *)self friendSuggestionsCount]+ 1;
  }

  else if (a4)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(GKLeaderboardScoreDataSource *)self itemCount];
  }

  return v7;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = *MEMORY[0x277D767D8];
  if ([v9 isEqualToString:*MEMORY[0x277D767D8]] && objc_msgSend(v10, "section") == 1)
  {
    v12 = [v8 dequeueReusableSupplementaryViewOfKind:v11 withReuseIdentifier:@"GKCollectionDataSourceHeader" forIndexPath:v10];
    GKIsXRUIIdiomShouldUsePadUI();
    v13 = GKGameCenterUIFrameworkBundle();
    v14 = GKGetLocalizedStringFromTableInBundle();
    v15 = [v12 titleLabel];
    [v15 setText:v14];

    v16 = [v12 leadingConstraint];
    [v16 setConstant:12.0];

    v17 = [v12 trailingConstraint];
    [v17 setConstant:12.0];

    v18 = [(GKLeaderboardScoreDataSource *)self suggestedFriends];
    v19 = [v18 count];

    if (v19 >= 4)
    {
      [(GKLeaderboardScoreDataSource *)self showingAllFriendSuggestions];
      v20 = GKGameCenterUIFrameworkBundle();
      v21 = GKGetLocalizedStringFromTableInBundle();
      v22 = [v12 secondaryLabel];
      [v22 setText:v21];
    }

    else
    {
      v20 = [v12 secondaryLabel];
      [v20 setText:0];
    }

    v23 = [v12 secondaryLabel];
    [v23 setHidden:v19 < 4];

    v24 = [v12 secondaryLabel];
    [v24 setUserInteractionEnabled:1];

    objc_initWeak(&location, self);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __93__GKLeaderboardScoreDataSource_collectionView_viewForSupplementaryElementOfKind_atIndexPath___block_invoke;
    v26[3] = &unk_27966C238;
    objc_copyWeak(&v30, &location);
    v27 = v8;
    v28 = v10;
    v29 = self;
    [v12 setSecondaryLabelTapHandler:v26];

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __93__GKLeaderboardScoreDataSource_collectionView_viewForSupplementaryElementOfKind_atIndexPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained showingAllFriendSuggestions];
  v4 = objc_loadWeakRetained((a1 + 56));
  [v4 setShowingAllFriendSuggestions:v3 ^ 1u];

  v5 = *(a1 + 32);
  v6 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndex:{objc_msgSend(*(a1 + 40), "section")}];
  [v5 reloadSections:v6];

  v7 = [*(a1 + 48) leaderboardScoreDelegate];
  [v7 didExpandOrContractFriendSuggestions];
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v7 section])
  {
    v10 = [v7 item];
    if (v10 == -[GKLeaderboardScoreDataSource bottomLoadingCellItem](self, "bottomLoadingCellItem") || (v11 = [v7 item], v11 == -[GKLeaderboardScoreDataSource topLoadingCellItem](self, "topLoadingCellItem")))
    {
      v9 = [v6 dequeueReusableCellWithReuseIdentifier:@"loadingCell" forIndexPath:v7];
      v12 = [v9 activityIndicator];
      [v12 startAnimating];

      goto LABEL_25;
    }

    v13 = [v7 item];
    if (v13 == -[GKLeaderboardScoreDataSource addFriendCellItem](self, "addFriendCellItem") || (v14 = [v7 item], v14 == -[GKLeaderboardScoreDataSource noFriendsCellItem](self, "noFriendsCellItem")))
    {
      v9 = [v6 dequeueReusableCellWithReuseIdentifier:@"addFriendsCell" forIndexPath:v7];
      [v9 setFriendCount:{-[GKLeaderboardScoreDataSource friendCount](self, "friendCount")}];
      objc_initWeak(&location, self);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __70__GKLeaderboardScoreDataSource_collectionView_cellForItemAtIndexPath___block_invoke;
      aBlock[3] = &unk_279669FE0;
      objc_copyWeak(&v52, &location);
      v15 = _Block_copy(aBlock);
      v16 = [v7 item];
      if (v16 == [(GKLeaderboardScoreDataSource *)self addFriendCellItem])
      {
        v17 = [(GKLeaderboardScoreDataSource *)self leaderboard];
        v18 = [v17 baseLeaderboardID];
        [v9 configureAddFriendsLockupWithMetricsPageId:v18 handler:v15];
      }

      else
      {
        [v9 configureNoFriendsViewWithHandler:v15];
      }

      v25 = [MEMORY[0x277CCAA70] indexPathForItem:objc_msgSend(v7 inSection:{"item") - 1, objc_msgSend(v7, "section")}];
      v26 = [(GKLeaderboardScoreDataSource *)self itemForIndexPath:v25];
      v27 = [v7 item];
      v30 = 0;
      if (v27 != [(GKLeaderboardScoreDataSource *)self noFriendsCellItem])
      {
        if (!v26 || ([v26 player], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "isLocalPlayer"), v28, !v29))
        {
          v30 = 1;
        }
      }

      [v9 setLineVisible:v30];

      objc_destroyWeak(&v52);
      objc_destroyWeak(&location);
      goto LABEL_25;
    }

    v21 = [(GKLeaderboardScoreDataSource *)self itemForIndexPath:v7];
    v32 = [v21 rank];
    v33 = @"lowRankCell";
    if (v32 > 99)
    {
      v33 = @"highRankCell";
    }

    v34 = v33;
    v35 = [MEMORY[0x277D75C80] currentTraitCollection];
    v36 = [v35 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v36);

    if (IsAccessibilityCategory)
    {

      v34 = @"AXCell";
    }

    v9 = [v6 dequeueReusableCellWithReuseIdentifier:v34 forIndexPath:v7];
    v38 = [(GKGameLayerCollectionDataSource *)self presentationViewController];
    [v9 setDelegate:v38];

    if (v21)
    {
      [v9 setEntry:v21];
    }

    if ([v7 item] <= 0)
    {
      [v9 setLineVisible:0];
LABEL_44:
      v44 = [(GKLeaderboardScoreDataSource *)self localPlayerFriendIDs];
      v45 = [v21 player];
      v46 = [v45 internal];
      v47 = [v46 playerID];
      [v9 setShouldShowContextMenu:{objc_msgSend(v44, "containsObject:", v47)}];

      goto LABEL_17;
    }

    v39 = [MEMORY[0x277CCAA70] indexPathForItem:objc_msgSend(v7 inSection:{"item") - 1, objc_msgSend(v7, "section")}];
    v40 = [(GKLeaderboardScoreDataSource *)self itemForIndexPath:v39];
    v41 = [v21 player];
    if ([v41 isLocalPlayer])
    {

LABEL_40:
      v43 = 0;
LABEL_43:
      [v9 setLineVisible:v43];

      goto LABEL_44;
    }

    if (v40)
    {
      v42 = [v40 player];
      v48 = [v42 isLocalPlayer];

      if (v48)
      {
        goto LABEL_40;
      }
    }

    else
    {
    }

    v43 = 1;
    goto LABEL_43;
  }

  if ([v7 section] != 1)
  {
    v9 = 0;
    goto LABEL_25;
  }

  v8 = [v7 item];
  if (v8 >= [(GKLeaderboardScoreDataSource *)self friendSuggestionsCount])
  {
    v9 = [v6 dequeueReusableCellWithReuseIdentifier:@"inviteFriendButtonCell" forIndexPath:v7];
    [v9 setDisplayBackground:0];
    [v9 setWantsAdditionalHorizontalPadding:0];
    goto LABEL_25;
  }

  v9 = [v6 dequeueReusableCellWithReuseIdentifier:@"friendSuggestionCell" forIndexPath:v7];
  [v9 setDisplayBackground:0];
  [v9 setWantsAdditionalHorizontalPadding:0];
  if (*MEMORY[0x277D0C258])
  {
    [MEMORY[0x277D75348] systemWhiteColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemBlueColor];
  }
  v19 = ;
  [v9 setInviteButtonTitleColor:v19];

  v20 = [(GKLeaderboardScoreDataSource *)self suggestedFriends];
  v21 = [v20 objectAtIndex:{objc_msgSend(v7, "item")}];

  v22 = [(GKLeaderboardScoreDataSource *)self invitedFriendContactIdentifiers];
  v23 = [v21 contact];
  v24 = [v23 identifier];
  [v9 applyWithSuggestedFriend:v21 previouslyInvited:{objc_msgSend(v22, "containsObject:", v24)}];

  objc_initWeak(&location, self);
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __70__GKLeaderboardScoreDataSource_collectionView_cellForItemAtIndexPath___block_invoke_2;
  v49[3] = &unk_27966A1C0;
  objc_copyWeak(&v50, &location);
  [v9 setTapHandler:v49];
  objc_destroyWeak(&v50);
  objc_destroyWeak(&location);
LABEL_17:

LABEL_25:

  return v9;
}

void __70__GKLeaderboardScoreDataSource_collectionView_cellForItemAtIndexPath___block_invoke(uint64_t a1)
{
  if (_os_feature_enabled_impl())
  {
    v2 = [MEMORY[0x277D0C1D8] shared];
    v3 = [v2 isAddingFriendsRestricted];

    objc_copyWeak(&to, (a1 + 32));
    if (v3)
    {
      v4 = MEMORY[0x277D75110];
      v5 = GKGameCenterUIFrameworkBundle();
      v6 = GKGetLocalizedStringFromTableInBundle();
      v7 = GKGameCenterUIFrameworkBundle();
      v8 = GKGetLocalizedStringFromTableInBundle();
      v9 = [v4 alertControllerWithTitle:v6 message:v8 preferredStyle:1];

      v10 = MEMORY[0x277D750F8];
      v11 = GKGameCenterUIFrameworkBundle();
      v12 = GKGetLocalizedStringFromTableInBundle();
      v13 = [v10 actionWithTitle:v12 style:0 handler:0];
      [v9 addAction:v13];
    }

    else
    {
      v11 = objc_loadWeakRetained(&to);
      v12 = [v11 presentationViewController];
      v9 = [GKFriendingViewControllers inviteFriendsWithContainerViewController:v12];
    }

    v14 = objc_loadWeakRetained(&to);
    v15 = [v14 presentationViewController];
    [v15 presentViewController:v9 animated:1 completion:0];
  }

  else
  {
    objc_copyWeak(&to, (a1 + 32));
    v9 = objc_loadWeakRetained(&to);
    [v9 presentFriendInvite];
  }

  objc_destroyWeak(&to);
}

void __70__GKLeaderboardScoreDataSource_collectionView_cellForItemAtIndexPath___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained inviteFriendHandler];
  (v4)[2](v4, v3);
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  v6 = a3;
  if (a5 == 1)
  {
    ShouldUsePadUI = GKIsXRUIIdiomShouldUsePadUI();
    [v6 bounds];
    v9 = v8;
    if (ShouldUsePadUI)
    {
      v10 = 50.0;
    }

    else
    {
      v10 = 30.0;
    }
  }

  else
  {
    v9 = *MEMORY[0x277CBF3A8];
    v10 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v11 = v9;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForFooterInSection:(int64_t)a5
{
  v5 = *MEMORY[0x277CBF3A8];
  v6 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v6;
  result.width = v5;
  return result;
}

- (double)collectionView:(id)a3 layout:(id)a4 minimumLineSpacingForSectionAtIndex:(int64_t)a5
{
  ShouldUsePadUI = GKIsXRUIIdiomShouldUsePadUI();
  result = 0.0;
  if (ShouldUsePadUI)
  {
    return 2.0;
  }

  return result;
}

- (void)handleSelectionInCollectionView:(id)a3 forItemAtIndexPath:(id)a4
{
  v23 = a3;
  v6 = a4;
  if ([v6 section])
  {
    if ([v6 section] != 1)
    {
      goto LABEL_14;
    }

    v7 = [(GKLeaderboardScoreDataSource *)self inviteFriendHandler];
    v7[2](v7, 0);
  }

  else
  {
    v8 = [v6 item];
    v7 = [(GKGameLayerCollectionDataSource *)self presentationViewController];
    if (v7 && v8 != [(GKLeaderboardScoreDataSource *)self topLoadingCellItem]&& v8 != [(GKLeaderboardScoreDataSource *)self bottomLoadingCellItem]&& v8 != [(GKLeaderboardScoreDataSource *)self addFriendCellItem])
    {
      v9 = [(GKLeaderboardScoreDataSource *)self noFriendsCellItem];

      if (v8 == v9)
      {
        goto LABEL_14;
      }

      v10 = v8 - ([(GKLeaderboardScoreDataSource *)self topLoadingCellItem]!= -1);
      if (v10 < 0 || (-[GKLeaderboardScoreDataSource entries](self, "entries"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 count], v11, v12 <= v10))
      {
        v13 = MEMORY[0x277CCACA8];
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/GameCenterUIService/GKLeaderboardScoreDataSource.m"];
        v16 = [v15 lastPathComponent];
        v17 = [v13 stringWithFormat:@"%@ (index >= 0 && self.entries.count > index)\n[%s (%s:%d)]", v14, "-[GKLeaderboardScoreDataSource handleSelectionInCollectionView:forItemAtIndexPath:]", objc_msgSend(v16, "UTF8String"), 987];

        [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v17}];
      }

      v7 = [(NSArray *)self->_entries objectAtIndexedSubscript:v10];
      v18 = [v7 player];
      v19 = [v18 internal];
      v20 = [v19 playerID];
      v21 = [(GKGameLayerCollectionDataSource *)self presentationViewController];
      [_TtC12GameCenterUI27PlayerProfileViewController showProfileFor:v20 from:v21 completion:0];

      v22 = [MEMORY[0x277D0C1F8] reporter];
      [v22 reportEvent:*MEMORY[0x277D0BE70] type:*MEMORY[0x277D0BB10]];
    }
  }

LABEL_14:
  [v23 deselectItemAtIndexPath:v6 animated:1];
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = [(GKLeaderboardScoreDataSource *)self leaderboardScoreDelegate];

  if (v4)
  {
    v5 = [(GKLeaderboardScoreDataSource *)self leaderboardScoreDelegate];
    [v5 collectionViewDidScroll];
  }
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 item];
  if (v9 == [(GKLeaderboardScoreDataSource *)self topLoadingCellItem]|| v9 == [(GKLeaderboardScoreDataSource *)self bottomLoadingCellItem]|| v9 == [(GKLeaderboardScoreDataSource *)self addFriendCellItem]|| v9 == [(GKLeaderboardScoreDataSource *)self noFriendsCellItem])
  {
    v10 = 0;
  }

  else
  {
    v12 = [v7 cellForItemAtIndexPath:v8];
    v13 = MEMORY[0x277D753B0];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __96__GKLeaderboardScoreDataSource_collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke;
    v15[3] = &unk_27966C260;
    v15[4] = self;
    v16 = v8;
    v17 = v12;
    v14 = v12;
    v10 = [v13 configurationWithIdentifier:v16 previewProvider:0 actionProvider:v15];
  }

  return v10;
}

id __96__GKLeaderboardScoreDataSource_collectionView_contextMenuConfigurationForItemAtIndexPath_point___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) itemForIndexPath:*(a1 + 40)];
  v3 = [v2 _gkScore];

  v4 = [*(a1 + 32) makeContextMenuForCell:*(a1 + 48) withScore:v3];

  return v4;
}

- (id)targetedPreviewForUIContextMenuConfiguration:(id)a3 inCollectionView:(id)a4
{
  v5 = a4;
  v6 = [a3 identifier];
  v7 = [v5 cellForItemAtIndexPath:v6];
  v8 = objc_alloc_init(MEMORY[0x277D758D8]);
  v9 = [MEMORY[0x277D75348] clearColor];
  [v8 setBackgroundColor:v9];

  v10 = objc_alloc(MEMORY[0x277D758E0]);
  [v7 center];
  v12 = v11;
  v14 = v13;
  v15 = [v7 superview];
  [v5 convertPoint:v15 fromView:{v12, v14}];
  v16 = [v10 initWithContainer:v5 center:?];

  v17 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:v7 parameters:v8 target:v16];

  return v17;
}

- (id)makeContextMenuForCell:(id)a3 withScore:(id)a4
{
  v40[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277D0C048] currentGame];
  v8 = [v7 internal];
  if ([v8 supportsChallenges])
  {
    v9 = [v5 entry];
    v10 = [v9 player];
    v11 = [v10 isLocalPlayer];

    if ((v11 & 1) == 0)
    {
      v12 = MEMORY[0x277D750C8];
      v13 = GKGameCenterUIFrameworkBundle();
      v14 = GKGetLocalizedStringFromTableInBundle();
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __65__GKLeaderboardScoreDataSource_makeContextMenuForCell_withScore___block_invoke;
      v36[3] = &unk_27966C288;
      v37 = v5;
      v38 = v6;
      v15 = [v12 actionWithTitle:v14 image:0 identifier:0 handler:v36];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v15 = 0;
LABEL_6:
  v16 = MEMORY[0x277D750C8];
  v17 = GKGameCenterUIFrameworkBundle();
  v18 = GKGetLocalizedStringFromTableInBundle();
  v19 = [MEMORY[0x277D755B8] systemImageNamed:@"square.and.arrow.up"];
  v30 = MEMORY[0x277D85DD0];
  v31 = 3221225472;
  v32 = __65__GKLeaderboardScoreDataSource_makeContextMenuForCell_withScore___block_invoke_2;
  v33 = &unk_27966C288;
  v20 = v5;
  v34 = v20;
  v21 = v6;
  v35 = v21;
  v22 = [v16 actionWithTitle:v18 image:v19 identifier:0 handler:&v30];

  v23 = MEMORY[0x277D75710];
  if (v15)
  {
    v40[0] = v22;
    v40[1] = v15;
    v24 = MEMORY[0x277CBEA60];
    v25 = v40;
    v26 = 2;
  }

  else
  {
    v39 = v22;
    v24 = MEMORY[0x277CBEA60];
    v25 = &v39;
    v26 = 1;
  }

  v27 = [v24 arrayWithObjects:v25 count:{v26, v30, v31, v32, v33}];
  v28 = [v23 menuWithTitle:&stru_28612D290 children:v27];

  return v28;
}

void __65__GKLeaderboardScoreDataSource_makeContextMenuForCell_withScore___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 challengeWithScore:*(a1 + 40)];

  v3 = [MEMORY[0x277D0C1F8] reporter];
  [v3 reportEvent:*MEMORY[0x277D0BE70] type:*MEMORY[0x277D0BB08]];
}

void __65__GKLeaderboardScoreDataSource_makeContextMenuForCell_withScore___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 shareWithScore:*(a1 + 40) fromView:*(a1 + 32)];

  v3 = [MEMORY[0x277D0C1F8] reporter];
  [v3 reportEvent:*MEMORY[0x277D0BE70] type:*MEMORY[0x277D0BB18]];
}

- (void)presentFriendInvite
{
  if (*MEMORY[0x277D0C258])
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __51__GKLeaderboardScoreDataSource_presentFriendInvite__block_invoke_2;
    v2[3] = &unk_27966AD50;
    v2[4] = self;
    [_TtC12GameCenterUI24FriendRequestFacilitator makeViewControllerWithRecipients:MEMORY[0x277CBEBF8] chatGUID:0 completionHandler:v2];
  }

  else
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __51__GKLeaderboardScoreDataSource_presentFriendInvite__block_invoke;
    v3[3] = &unk_27966C2B0;
    v3[4] = self;
    [_TtC12GameCenterUI24FriendRequestFacilitator makeViewControllerForRemoteInviteWithRecipients:MEMORY[0x277CBEBF8] chatGUID:0 resultHandler:v3];
  }
}

void __51__GKLeaderboardScoreDataSource_presentFriendInvite__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v10)
  {
    v6 = v10;
  }

  else
  {
    v6 = v5;
  }

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = v6;
    v9 = [v7 presentationViewController];
    [v9 presentViewController:v8 animated:1 completion:0];
  }
}

void __51__GKLeaderboardScoreDataSource_presentFriendInvite__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 presentationViewController];
  [v4 presentViewController:v3 animated:1 completion:0];
}

- (id)addInvitedFriendContactIdentifier:(id)a3
{
  v4 = a3;
  if (!v4 || (-[GKLeaderboardScoreDataSource invitedFriendContactIdentifiers](self, "invitedFriendContactIdentifiers"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 containsObject:v4], v5, (v6 & 1) != 0) || ((-[GKLeaderboardScoreDataSource invitedFriendContactIdentifiers](self, "invitedFriendContactIdentifiers"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "addObject:", v4), v7, v17 = 0, v18 = &v17, v19 = 0x2020000000, v20 = -1, -[GKLeaderboardScoreDataSource suggestedFriends](self, "suggestedFriends"), v8 = objc_claimAutoreleasedReturnValue(), v11 = MEMORY[0x277D85DD0], v12 = 3221225472, v13 = __66__GKLeaderboardScoreDataSource_addInvitedFriendContactIdentifier___block_invoke, v14 = &unk_27966C2D8, v15 = v4, v16 = &v17, objc_msgSend(v8, "enumerateObjectsUsingBlock:", &v11), v8, v18[3] == -1) || !-[GKLeaderboardScoreDataSource shouldDisplayFriendSuggestions](self, "shouldDisplayFriendSuggestions", v11, v12, v13, v14) ? (v9 = 1) : (objc_msgSend(MEMORY[0x277CCAA70], "indexPathForItem:inSection:", v18[3], 1), self = objc_claimAutoreleasedReturnValue(), v9 = 0), v15, _Block_object_dispose(&v17, 8), (v9 & 1) != 0))
  {
    self = 0;
  }

  return self;
}

void __66__GKLeaderboardScoreDataSource_addInvitedFriendContactIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 contact];
  v8 = [v7 identifier];
  v9 = [v8 isEqualToString:*(a1 + 32)];

  if (v9)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

- (GKLeaderboardScoreDelegate)leaderboardScoreDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_leaderboardScoreDelegate);

  return WeakRetained;
}

- (UICollectionView)collectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);

  return WeakRetained;
}

void __62__GKLeaderboardScoreDataSource_loadDataWithCompletionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_24DE53000, a2, OS_LOG_TYPE_ERROR, "cannot load local player's friends due to: %@", &v2, 0xCu);
}

@end