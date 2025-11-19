@interface GKDashboardChallengePlayerPickerDataSource
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (GKDashboardChallengePlayerPickerDataSource)initWithChallenge:(id)a3;
- (NSArray)selectedPlayers;
- (id)addInvitedFriendContactIdentifier:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)currentPlayers;
- (id)headerTextForSection:(int64_t)a3;
- (id)indexPathForPlayer:(id)a3;
- (id)playerForIndexPath:(id)a3;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)friendSuggestionsCount;
- (int64_t)itemCount;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (void)clearSelection;
- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)loadDataWithCompletionHandler:(id)a3;
- (void)searchTextHasChanged;
- (void)setupCollectionView:(id)a3;
@end

@implementation GKDashboardChallengePlayerPickerDataSource

- (GKDashboardChallengePlayerPickerDataSource)initWithChallenge:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = GKDashboardChallengePlayerPickerDataSource;
  v5 = [(GKCollectionDataSource *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(GKDashboardChallengePlayerPickerDataSource *)v5 setChallenge:v4];
    [(GKCollectionDataSource *)v6 setUseStandardHeaders:1];
    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [(GKDashboardChallengePlayerPickerDataSource *)v6 setInvitedFriendContactIdentifiers:v7];
  }

  return v6;
}

- (void)setupCollectionView:(id)a3
{
  v6.receiver = self;
  v6.super_class = GKDashboardChallengePlayerPickerDataSource;
  v3 = a3;
  [(GKCollectionDataSource *)&v6 setupCollectionView:v3];
  v4 = [GKChallengeListViewSectionHeader _gkNib:v6.receiver];
  [v3 registerNib:v4 forSupplementaryViewOfKind:*MEMORY[0x277D767D8] withReuseIdentifier:@"GKCollectionDataSourceHeader"];
  v5 = +[GKChallengePlayerPickerCell];
  [v3 registerNib:v5 forCellWithReuseIdentifier:@"friendCell"];
  [v3 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"friendSuggestionCell"];
  [v3 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"inviteFriendButtonCell"];
  [v3 setAllowsMultipleSelection:1];
}

- (void)loadDataWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D0C020];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKDashboardChallengePlayerPickerDataSource.m", 122, "-[GKDashboardChallengePlayerPickerDataSource loadDataWithCompletionHandler:]"];
  v7 = [v5 dispatchGroupWithName:v6];

  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v22 = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__1;
  v19[4] = __Block_byref_object_dispose__1;
  v20 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __76__GKDashboardChallengePlayerPickerDataSource_loadDataWithCompletionHandler___block_invoke;
  v15[3] = &unk_27966A120;
  v17 = v19;
  v18 = v21;
  v15[4] = self;
  v8 = v7;
  v16 = v8;
  [v8 perform:v15];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __76__GKDashboardChallengePlayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_68;
  v14[3] = &unk_27966A148;
  v14[4] = self;
  [v8 perform:v14];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __76__GKDashboardChallengePlayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_71;
  v10[3] = &unk_27966A170;
  v9 = v4;
  v11 = v9;
  v12 = v21;
  v13 = v19;
  [v8 notifyOnMainQueueWithBlock:v10];

  _Block_object_dispose(v19, 8);
  _Block_object_dispose(v21, 8);
}

void __76__GKDashboardChallengePlayerPickerDataSource_loadDataWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D0C138] localPlayer];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__GKDashboardChallengePlayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_2;
  v7[3] = &unk_27966A0F8;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v10 = *(a1 + 48);
  v8 = v5;
  v9 = v3;
  v6 = v3;
  [v4 loadChallengableFriendsWithFetchOptions:1 completion:v7];
}

void __76__GKDashboardChallengePlayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v32 = a1;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  v7 = [v5 count];
  if (!v6 || v7)
  {
    [*(a1 + 32) setPlayers:{v5, v6, v5}];
    v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(*(*(a1 + 32) + 80), "count")}];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v9 = *(*(a1 + 32) + 80);
    v10 = [v9 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v40;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v40 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v39 + 1) + 8 * i);
          v15 = *(*(v32 + 32) + 88);
          v16 = [v14 referenceKey];
          v17 = [v15 objectForKeyedSubscript:v16];

          if (!v17)
          {
            v17 = &unk_286188CD0;
          }

          v18 = [v14 referenceKey];
          [v8 setObject:v17 forKeyedSubscript:v18];
        }

        v11 = [v9 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v11);
    }

    [*(v32 + 32) setPlayerStates:v8];
    *(*(*(v32 + 64) + 8) + 24) = 1;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [*(*(v32 + 32) + 72) achievement];
      v20 = [v19 identifier];
      v21 = objc_alloc(MEMORY[0x277D0C048]);
      v22 = [*(*(v32 + 32) + 72) internal];
      v23 = [v22 game];
      v24 = [v21 initWithInternalRepresentation:v23];

      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __76__GKDashboardChallengePlayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_57;
      v33[3] = &unk_27966A0D0;
      v34 = v24;
      v35 = v19;
      v25 = *(v32 + 56);
      v37 = v20;
      v38 = v25;
      v26 = *(v32 + 40);
      v36 = *(v32 + 32);
      v27 = v20;
      v28 = v19;
      v29 = v24;
      [v26 perform:v33];
    }

    v6 = v30;
    v5 = v31;
  }

  (*(*(v32 + 48) + 16))();
}

void __76__GKDashboardChallengePlayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_57(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) internal];
  v6 = [v5 identifier];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__GKDashboardChallengePlayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_2_58;
  v11[3] = &unk_27966A0A8;
  v16 = *(a1 + 64);
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v12 = v7;
  v13 = v8;
  v14 = v9;
  v15 = v3;
  v10 = v3;
  [v4 getGameMatchesForAchievement:v6 handler:v11];
}

void __76__GKDashboardChallengePlayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_2_58(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
  }

  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      v12 = 0;
      do
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v23 + 1) + 8 * v12) player];
        [v7 addObject:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  v14 = MEMORY[0x277D0BFB0];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __76__GKDashboardChallengePlayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_3;
  v18[3] = &unk_27966A080;
  v22 = *(a1 + 64);
  v15 = *(a1 + 32);
  v16 = *(a1 + 48);
  v18[4] = *(a1 + 40);
  v19 = v8;
  v20 = v16;
  v21 = *(a1 + 56);
  v17 = v8;
  [v14 loadAchievementsForGameV2:v15 players:v7 includeUnreported:0 includeHidden:0 withCompletionHandler:v18];
}

void __76__GKDashboardChallengePlayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
  }

  v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
  [*(a1 + 32) setPlayerAchievementDates:v7];

  v8 = [MEMORY[0x277CBEB18] arrayWithArray:*(*(a1 + 32) + 80)];
  v9 = [MEMORY[0x277CBEB18] array];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__GKDashboardChallengePlayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_4;
  v13[3] = &unk_27966A058;
  v10 = *(a1 + 48);
  v11 = *(a1 + 32);
  v14 = v10;
  v15 = v11;
  v16 = v9;
  v12 = v9;
  [v5 enumerateKeysAndObjectsUsingBlock:v13];
  [v8 removeObjectsInArray:v12];
  [v8 addObjectsFromArray:v12];
  [*(a1 + 32) setPlayers:v8];
  (*(*(a1 + 56) + 16))();
}

void __76__GKDashboardChallengePlayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__GKDashboardChallengePlayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_5;
  v8[3] = &unk_27966A030;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = v5;
  v10 = v6;
  v11 = v7;
  [a3 enumerateObjectsUsingBlock:v8];
}

void __76__GKDashboardChallengePlayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v14 = a2;
  if ([v14 isCompleted])
  {
    v3 = [v14 identifier];
    v4 = [v3 isEqualToString:*(a1 + 32)];

    if (v4)
    {
      v5 = *(*(a1 + 40) + 80);
      v6 = [v14 player];
      v7 = [v5 indexOfObject:v6];

      if (v7 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = [*(*(a1 + 40) + 80) objectAtIndexedSubscript:v7];
        v9 = [v14 lastReportedDate];
        v10 = *(*(a1 + 40) + 96);
        v11 = [v8 referenceKey];
        [v10 setObject:v9 forKeyedSubscript:v11];

        if (([v14 isReplayable] & 1) == 0)
        {
          v12 = *(*(a1 + 40) + 88);
          v13 = [v8 referenceKey];
          [v12 setObject:&unk_286188CE8 forKeyedSubscript:v13];

          [*(a1 + 48) addObject:v8];
        }
      }
    }
  }
}

void __76__GKDashboardChallengePlayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_68(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __76__GKDashboardChallengePlayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_2_70;
  v5[3] = &unk_279669DF8;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  [_TtC12GameCenterUI20GameCenterObjcHelper fetchSuggestedFriendsWithCompletionHandler:v5];
}

void __76__GKDashboardChallengePlayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_2_70(uint64_t a1, void *a2, void *a3)
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
      _os_log_impl(&dword_24DE53000, v8, OS_LOG_TYPE_INFO, "GKDashboardChallengePlayerPickerDataSource: Unable to fetch suggested friends: %@", &v9, 0xCu);
    }
  }

  [*(a1 + 32) setSuggestedFriends:v5];
  (*(*(a1 + 40) + 16))();
}

uint64_t __76__GKDashboardChallengePlayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_71(void *a1)
{
  result = a1[4];
  if (result)
  {
    return (*(result + 16))(result, *(*(a1[5] + 8) + 24), *(*(a1[6] + 8) + 40));
  }

  return result;
}

- (id)currentPlayers
{
  v3 = [(GKCollectionDataSource *)self searchText];
  v4 = [v3 length];
  v5 = &OBJC_IVAR___GKDashboardChallengePlayerPickerDataSource__searchPlayers;
  if (!v4)
  {
    v5 = &OBJC_IVAR___GKDashboardChallengePlayerPickerDataSource__players;
  }

  v6 = *(&self->super.super.isa + *v5);
  v7 = v6;

  return v6;
}

- (int64_t)itemCount
{
  v2 = [(GKDashboardChallengePlayerPickerDataSource *)self currentPlayers];
  v3 = [v2 count];

  return v3;
}

- (int64_t)friendSuggestionsCount
{
  showingAllFriendSuggestions = self->_showingAllFriendSuggestions;
  v3 = [(GKDashboardChallengePlayerPickerDataSource *)self suggestedFriends];
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

- (id)playerForIndexPath:(id)a3
{
  v4 = [a3 item];
  v5 = [(GKDashboardChallengePlayerPickerDataSource *)self currentPlayers];
  if ([v5 count] <= v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v5 objectAtIndexedSubscript:v4];
  }

  return v6;
}

- (NSArray)selectedPlayers
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = self->_players;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        playerStates = self->_playerStates;
        v10 = [v8 referenceKey];
        v11 = [(NSMutableDictionary *)playerStates objectForKeyedSubscript:v10];
        v12 = [v11 integerValue];

        if (v12 == 1)
        {
          [v14 addObject:v8];
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  return v14;
}

- (void)clearSelection
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(NSMutableDictionary *)self->_playerStates allKeys];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)self->_playerStates objectForKey:v8];
        v10 = [v9 integerValue];

        if (v10 == 1)
        {
          [(NSMutableDictionary *)self->_playerStates setObject:&unk_286188CD0 forKeyedSubscript:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (id)indexPathForPlayer:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(GKDashboardChallengePlayerPickerDataSource *)self currentPlayers];
    v6 = [v5 indexOfObject:v4];

    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 0;
    }

    else
    {
      v7 = [MEMORY[0x277CCAA70] indexPathForItem:v6 inSection:0];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)searchTextHasChanged
{
  v3 = [(GKCollectionDataSource *)self searchText];
  v4 = [v3 length];

  if (v4)
  {
    v10 = [MEMORY[0x277CBEB18] array];
    v5 = [(NSArray *)self->_players count];
    if (v5 >= 1)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [MEMORY[0x277CCAA70] indexPathForItem:i inSection:0];
        v9 = -[NSArray objectAtIndexedSubscript:](self->_players, "objectAtIndexedSubscript:", [v8 item]);
        if ([(GKCollectionDataSource *)self searchMatchesItem:v9 inSection:0])
        {
          [v10 addObject:v9];
        }
      }
    }

    [(GKDashboardChallengePlayerPickerDataSource *)self setSearchPlayers:v10];
  }

  else
  {

    [(GKDashboardChallengePlayerPickerDataSource *)self setSearchPlayers:0];
  }
}

- (id)addInvitedFriendContactIdentifier:(id)a3
{
  v4 = a3;
  if (v4 && (-[GKDashboardChallengePlayerPickerDataSource invitedFriendContactIdentifiers](self, "invitedFriendContactIdentifiers"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 containsObject:v4], v5, (v6 & 1) == 0))
  {
    v8 = [(GKDashboardChallengePlayerPickerDataSource *)self invitedFriendContactIdentifiers];
    [v8 addObject:v4];

    v9 = [(GKDashboardChallengePlayerPickerDataSource *)self suggestedFriends];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __80__GKDashboardChallengePlayerPickerDataSource_addInvitedFriendContactIdentifier___block_invoke;
    v12[3] = &unk_27966A198;
    v13 = v4;
    v10 = [v9 indexOfObjectPassingTest:v12];

    v7 = [MEMORY[0x277CCAA70] indexPathForItem:v10 inSection:1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __80__GKDashboardChallengePlayerPickerDataSource_addInvitedFriendContactIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 contact];
  v4 = [v3 identifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  v4 = [&unk_286189700 mutableCopy];
  if ([(GKDashboardChallengePlayerPickerDataSource *)self showingFriendSuggestions])
  {
    [v4 addObject:&unk_286188D18];
  }

  v5 = [v4 count];

  return v5;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    v7 = [(GKDashboardChallengePlayerPickerDataSource *)self friendSuggestionsCount]+ 1;
  }

  else if (a4)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(GKDashboardChallengePlayerPickerDataSource *)self itemCount];
  }

  return v7;
}

- (id)headerTextForSection:(int64_t)a3
{
  if (a3 > 1)
  {
    v4 = 0;
  }

  else
  {
    v3 = GKGameCenterUIFrameworkBundle();
    v4 = GKGetLocalizedStringFromTableInBundle();
  }

  return v4;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 section])
  {
    if ([v7 section] != 1)
    {
      v9 = 0;
      goto LABEL_13;
    }

    v8 = [v7 item];
    if (v8 >= [(GKDashboardChallengePlayerPickerDataSource *)self friendSuggestionsCount])
    {
      v9 = [v6 dequeueReusableCellWithReuseIdentifier:@"inviteFriendButtonCell" forIndexPath:v7];
      v11 = [MEMORY[0x277D75348] labelColor];
      [v9 updateTextColorWith:v11];
    }

    else
    {
      v9 = [v6 dequeueReusableCellWithReuseIdentifier:@"friendSuggestionCell" forIndexPath:v7];
      v10 = [(GKDashboardChallengePlayerPickerDataSource *)self suggestedFriends];
      v11 = [v10 objectAtIndex:{objc_msgSend(v7, "item")}];

      v12 = [(GKDashboardChallengePlayerPickerDataSource *)self invitedFriendContactIdentifiers];
      v13 = [v11 contact];
      v14 = [v13 identifier];
      [v9 applyWithSuggestedFriend:v11 previouslyInvited:{objc_msgSend(v12, "containsObject:", v14)}];

      v15 = [MEMORY[0x277D75348] systemWhiteColor];
      [v9 setInviteButtonTitleColor:v15];

      objc_initWeak(&location, self);
      v44 = MEMORY[0x277D85DD0];
      v45 = 3221225472;
      v46 = __84__GKDashboardChallengePlayerPickerDataSource_collectionView_cellForItemAtIndexPath___block_invoke;
      v47 = &unk_27966A1C0;
      objc_copyWeak(&v48, &location);
      [v9 setTapHandler:&v44];
      objc_destroyWeak(&v48);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v9 = [v6 dequeueReusableCellWithReuseIdentifier:@"friendCell" forIndexPath:v7];
    v11 = [(GKDashboardChallengePlayerPickerDataSource *)self playerForIndexPath:v7];
    [v9 setPlayer:v11];
    playerStates = self->_playerStates;
    v17 = [v11 referenceKey];
    v18 = [(NSMutableDictionary *)playerStates objectForKey:v17];
    v19 = [v18 integerValue];

    [v9 setSelectable:v19 != 2];
    [v9 setSelected:v19 == 1];
    if (([v9 isSelectable] & 1) == 0)
    {
      playerAchievementDates = self->_playerAchievementDates;
      v21 = [v11 referenceKey];
      v22 = [(NSMutableDictionary *)playerAchievementDates objectForKeyedSubscript:v21];

      if (v22)
      {
        v23 = [(GKChallenge *)self->_challenge achievement];
        [v9 setStatusWithAchievementEarnedPoints:objc_msgSend(v23 andDate:{"maximumPoints"), v22}];
      }
    }

    v24 = [v11 internal];
    v25 = [v24 contact];

    [v9 setShowsPlayerSubtitle:v25 != 0];
    v26 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.0700000003];
    v27 = [v9 contentView];
    [v27 setBackgroundColor:v26];

    [v9 setDefaultContentBackgroundColor:v26];
  }

LABEL_13:
  v28 = [(GKDashboardChallengePlayerPickerDataSource *)self itemCount:v44];
  if ([v7 section] == 1)
  {
    v28 = [(GKDashboardChallengePlayerPickerDataSource *)self friendSuggestionsCount]+ 1;
  }

  if (![v7 item])
  {
    v38 = [v9 layer];
    [v38 setMasksToBounds:1];

    v39 = *MEMORY[0x277CDA138];
    v40 = [v9 layer];
    [v40 setCornerCurve:v39];

    v41 = [v9 layer];
    [v41 setCornerRadius:10.0];

    v35 = [v9 layer];
    v36 = v35;
    v37 = 3;
    goto LABEL_19;
  }

  v29 = [v7 item];
  v30 = [v9 layer];
  v31 = v30;
  if (v29 == v28 - 1)
  {
    [v30 setMasksToBounds:1];

    v32 = *MEMORY[0x277CDA138];
    v33 = [v9 layer];
    [v33 setCornerCurve:v32];

    v34 = [v9 layer];
    [v34 setCornerRadius:10.0];

    v35 = [v9 layer];
    v36 = v35;
    v37 = 12;
LABEL_19:
    [v35 setMaskedCorners:v37];
    goto LABEL_21;
  }

  [v30 setMaskedCorners:0];

  v42 = [v9 layer];
  [v42 setMasksToBounds:0];

  v36 = [v9 layer];
  [v36 setCornerRadius:0.0];
LABEL_21:

  return v9;
}

void __84__GKDashboardChallengePlayerPickerDataSource_collectionView_cellForItemAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained inviteFriendHandler];
  (v4)[2](v4, v3);
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = *MEMORY[0x277D767D8];
  if ([v9 isEqualToString:*MEMORY[0x277D767D8]])
  {
    v12 = [v8 dequeueReusableSupplementaryViewOfKind:v11 withReuseIdentifier:@"GKCollectionDataSourceHeader" forIndexPath:v10];
    v13 = -[GKDashboardChallengePlayerPickerDataSource headerTextForSection:](self, "headerTextForSection:", [v10 section]);
    v14 = [v12 titleLabel];
    [v14 setText:v13];

    if ([v10 section] == 1)
    {
      v15 = [(GKDashboardChallengePlayerPickerDataSource *)self suggestedFriends];
      v16 = [v15 count];

      if (v16 >= 4)
      {
        [(GKDashboardChallengePlayerPickerDataSource *)self showingAllFriendSuggestions];
        v17 = GKGameCenterUIFrameworkBundle();
        v19 = GKGetLocalizedStringFromTableInBundle();
        v20 = [v12 secondaryLabel];
        [v20 setText:v19];
      }

      else
      {
        v17 = [v12 secondaryLabel];
        [v17 setText:0];
      }

      v21 = [v12 secondaryLabel];
      [v21 setHidden:v16 < 4];

      v22 = [v12 secondaryLabel];
      [v22 setUserInteractionEnabled:1];

      objc_initWeak(&location, self);
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __107__GKDashboardChallengePlayerPickerDataSource_collectionView_viewForSupplementaryElementOfKind_atIndexPath___block_invoke;
      v24[3] = &unk_27966A1E8;
      objc_copyWeak(&v27, &location);
      v25 = v8;
      v26 = v10;
      [v12 setSecondaryLabelTapHandler:v24];

      objc_destroyWeak(&v27);
      objc_destroyWeak(&location);
    }

    else
    {
      v18 = [v12 secondaryLabel];
      [v18 setHidden:1];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __107__GKDashboardChallengePlayerPickerDataSource_collectionView_viewForSupplementaryElementOfKind_atIndexPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained showingAllFriendSuggestions];
  v4 = objc_loadWeakRetained((a1 + 48));
  [v4 setShowingAllFriendSuggestions:v3 ^ 1u];

  v5 = *(a1 + 32);
  v6 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndex:{objc_msgSend(*(a1 + 40), "section")}];
  [v5 reloadSections:v6];
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = a3;
  if ([a5 section])
  {
    [v6 bounds];
    [_TtC12GameCenterUI45GKDashboardFriendSuggestionCollectionViewCell sizeWithFitting:v6 in:v7, 0.0];
    v9 = v8;
    v11 = v10;
  }

  else
  {
    +[GKDashboardPlayerPickerCell defaultSize];
    v11 = v12;
    v9 = 0.0;
    v13 = [v6 traitCollection];

    v14 = [v13 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v14);

    if (IsAccessibilityCategory)
    {
      v11 = v11 + v11;
    }
  }

  v16 = v9;
  v17 = v11;
  result.height = v17;
  result.width = v16;
  return result;
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  if ([v5 section])
  {
    v7 = 0;
    if ([v5 section] == 1)
    {
      v6 = [v5 item];
      if (v6 >= [(GKDashboardChallengePlayerPickerDataSource *)self friendSuggestionsCount])
      {
        v7 = 1;
      }
    }
  }

  else
  {
    v8 = [(GKDashboardChallengePlayerPickerDataSource *)self playerForIndexPath:v5];
    playerStates = self->_playerStates;
    v10 = [v8 referenceKey];
    v11 = [(NSMutableDictionary *)playerStates objectForKey:v10];
    v12 = [v11 integerValue];

    v7 = v12 == 0;
  }

  return v7;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v17 = a4;
  if (![v17 section])
  {
    v10 = [(GKDashboardChallengePlayerPickerDataSource *)self playerForIndexPath:v17];
    v9 = v10;
    if (v10)
    {
      playerStates = self->_playerStates;
      v12 = [v10 referenceKey];
      v13 = [(NSMutableDictionary *)playerStates objectForKey:v12];
      v14 = [v13 integerValue];

      if (!v14)
      {
        v15 = self->_playerStates;
        v16 = [v9 referenceKey];
        [(NSMutableDictionary *)v15 setObject:&unk_286188D30 forKeyedSubscript:v16];
      }
    }

    goto LABEL_9;
  }

  v5 = [v17 section] == 1;
  v6 = v17;
  if (v5)
  {
    v7 = [v17 item];
    v8 = v7 < [(GKDashboardChallengePlayerPickerDataSource *)self friendSuggestionsCount];
    v6 = v17;
    if (!v8)
    {
      v9 = [(GKDashboardChallengePlayerPickerDataSource *)self inviteFriendHandler];
      v9[2](v9, 0);
LABEL_9:

      v6 = v17;
    }
  }
}

- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4
{
  v14 = a4;
  v5 = [v14 section];
  if (!v5)
  {
    v6 = [(GKDashboardChallengePlayerPickerDataSource *)self playerForIndexPath:v14];
    v7 = v6;
    if (v6)
    {
      playerStates = self->_playerStates;
      v9 = [v6 referenceKey];
      v10 = [(NSMutableDictionary *)playerStates objectForKey:v9];
      v11 = [v10 integerValue];

      if (v11 != 2)
      {
        v12 = self->_playerStates;
        v13 = [v7 referenceKey];
        [(NSMutableDictionary *)v12 setObject:&unk_286188CD0 forKeyedSubscript:v13];
      }
    }
  }

  MEMORY[0x2821F9730](v5);
}

@end