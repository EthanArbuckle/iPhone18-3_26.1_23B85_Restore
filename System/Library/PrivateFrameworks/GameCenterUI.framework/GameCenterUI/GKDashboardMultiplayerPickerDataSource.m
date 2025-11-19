@interface GKDashboardMultiplayerPickerDataSource
- (BOOL)_canShowMoreFriends;
- (BOOL)canSelectPlayerGroup:(id)a3 atIndexPath:(id)a4 inCollectionView:(id)a5;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (BOOL)hasFriends;
- (BOOL)isPlayerAtIndexPathCoreRecent:(id)a3;
- (BOOL)playerIsSelectable:(id)a3;
- (BOOL)playerIsSelected:(id)a3;
- (BOOL)shouldSelectPlayerGroup:(id)a3;
- (CGSize)boundingSizeForItemsInCollectionView:(id)a3;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForFooterInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (GKDashboardMultiplayerPickerDataSource)initWithMaxSelectable:(int64_t)a3 previouslyInvitedPlayers:(id)a4 nearbyOnly:(BOOL)a5 pickerOrigin:(int64_t)a6;
- (GKDashboardMultiplayerPickerDatasourceDelegate)delegate;
- (NSArray)selectedPlayers;
- (_TtC12GameCenterUI26GKSuggestionsContainerCell)suggestionContainerCell;
- (double)playerCellHeightInCollectionView:(id)a3;
- (id)alternateSearchKeyForSection:(int64_t)a3;
- (id)attributedFriendFilterTitle;
- (id)candidateIndexPaths;
- (id)collectionView;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)firstIndexPathForPlayer:(id)a3;
- (id)fullContactWithIdentifier:(id)a3;
- (id)headerTextForSection:(int64_t)a3;
- (id)indexPathForFirstPlayer;
- (id)indexPathForPlayer:(id)a3 inSection:(unint64_t)a4;
- (id)indexPathsForPlayer:(id)a3;
- (id)playerCellForItemAtIndexPath:(id)a3 inCollectionView:(id)a4;
- (id)playerForIndexPath:(id)a3;
- (id)playerForPlayerID:(id)a3;
- (id)playerGroupCellForItemAtIndexPath:(id)a3 inCollectionView:(id)a4;
- (id)playersForSection:(int64_t)a3 ignoreSearch:(BOOL)a4;
- (id)searchKeyForSection:(int64_t)a3;
- (id)suggestionsCellForItemAtIndexPath:(id)a3 inCollectionView:(id)a4;
- (int64_t)defaultFilterScopeFromPickerOrigin:(int64_t)a3;
- (int64_t)getSelectedPlayerCount;
- (int64_t)itemCount;
- (int64_t)numberOfItemsInSection:(int64_t)a3;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (int64_t)unmodifiedItemCount;
- (unint64_t)cornerMaskForItemAtIndexPath:(id)a3;
- (void)clearSelection;
- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)deselectItemAtIndexPath:(id)a3 animated:(BOOL)a4;
- (void)didAddRecipientPlayers:(id)a3;
- (void)didAttemptSelectingAlreadySelectedPlayers:(id)a3 inGroup:(id)a4;
- (void)didDeselectPlayerGroup:(id)a3 indexPath:(id)a4 dataSourceIdentifier:(id)a5 completion:(id)a6;
- (void)didDeselectPlayers:(id)a3 indexPath:(id)a4 dataSourceIdentifier:(id)a5 completion:(id)a6;
- (void)didPickContact:(id)a3;
- (void)didRemoveRecipientPlayers:(id)a3;
- (void)didSelectPlayerGroup:(id)a3 indexPath:(id)a4 dataSourceIdentifier:(id)a5 completion:(id)a6;
- (void)didSelectPlayers:(id)a3 indexPath:(id)a4 dataSourceIdentifier:(id)a5 completion:(id)a6;
- (void)donateGroupToPeopleSuggester:(id)a3;
- (void)expandPlayerGroup:(id)a3 atIndexPath:(id)a4 inCollectionView:(id)a5;
- (void)handleLongPressGesture:(id)a3;
- (void)loadDataWithCompletionHandler:(id)a3;
- (void)pickerWillSendInvites;
- (void)searchTextHasChanged;
- (void)selectItemAtIndexPath:(id)a3 animated:(BOOL)a4 scrollPosition:(unint64_t)a5;
- (void)setBrowsingForNearbyPlayers:(BOOL)a3;
- (void)setFriendSortFilterScope:(int64_t)a3;
- (void)setNearbyPlayer:(id)a3 reachable:(BOOL)a4;
- (void)setNearbyPlayerID:(id)a3 reachable:(BOOL)a4;
- (void)setSupportsNearby:(BOOL)a3;
- (void)setupCollectionView:(id)a3;
- (void)showSelectionLimitAlert;
- (void)updateMessageGroupsPlayerSelection;
- (void)updatePlayerGroups:(id)a3 forPlayers:(id)a4 excludedIndexPath:(id)a5;
- (void)updateSelectionStateForCollectionView:(id)a3 indexPaths:(id)a4;
- (void)updateStateForUnreachableNearbyPlayer:(id)a3;
- (void)updateVisibleItemsWithPlayers:(id)a3 indexPath:(id)a4 dataSourceIdentifier:(id)a5 completion:(id)a6;
@end

@implementation GKDashboardMultiplayerPickerDataSource

- (GKDashboardMultiplayerPickerDataSource)initWithMaxSelectable:(int64_t)a3 previouslyInvitedPlayers:(id)a4 nearbyOnly:(BOOL)a5 pickerOrigin:(int64_t)a6
{
  v7 = a5;
  v10 = a4;
  v23.receiver = self;
  v23.super_class = GKDashboardMultiplayerPickerDataSource;
  v11 = [(GKCollectionDataSource *)&v23 init];
  v12 = v11;
  if (v11)
  {
    [(GKDashboardMultiplayerPickerDataSource *)v11 setMaxSelectable:a3];
    v13 = [MEMORY[0x277CBEB58] setWithArray:v10];
    [(GKDashboardMultiplayerPickerDataSource *)v12 setPreviouslyInvitedPlayers:v13];

    v14 = [MEMORY[0x277CBEB18] array];
    [(GKDashboardMultiplayerPickerDataSource *)v12 setNearbyPlayers:v14];

    v15 = [MEMORY[0x277CBEB18] array];
    [(GKDashboardMultiplayerPickerDataSource *)v12 setFriendPlayers:v15];

    v16 = [MEMORY[0x277CBEB18] array];
    [(GKDashboardMultiplayerPickerDataSource *)v12 setSuggestedPlayers:v16];

    v17 = [MEMORY[0x277CBEB18] array];
    [(GKDashboardMultiplayerPickerDataSource *)v12 setSuggestedPlayerGroups:v17];

    v12->_friendSortFilterScope = [(GKDashboardMultiplayerPickerDataSource *)v12 defaultFilterScopeFromPickerOrigin:a6];
    [(GKDashboardMultiplayerPickerDataSource *)v12 setNearbyOnly:v7];
    [(GKDashboardMultiplayerPickerDataSource *)v12 setIsShowingNearbyExpanded:0];
    [(GKDashboardMultiplayerPickerDataSource *)v12 setShowsAllFriends:a6 != 1];
    v18 = [MEMORY[0x277D75418] currentDevice];
    v19 = [v18 userInterfaceIdiom];

    if (v19 == 1)
    {
      v20 = 3;
    }

    else
    {
      v20 = 5;
    }

    [(GKDashboardMultiplayerPickerDataSource *)v12 setNumberOfFriendsToShowInitially:v20];
    [(GKDashboardMultiplayerPickerDataSource *)v12 setPickerOrigin:a6];
    [(GKDashboardMultiplayerPickerDataSource *)v12 setExcludesContacts:a6 != 1];
    if (![(GKDashboardMultiplayerPickerDataSource *)v12 excludesContacts])
    {
      v21 = [MEMORY[0x277CBEB18] array];
      [(GKDashboardMultiplayerPickerDataSource *)v12 setContactPlayers:v21];
    }
  }

  return v12;
}

- (id)collectionView
{
  v2 = [(GKDashboardMultiplayerPickerDataSource *)self delegate];
  v3 = [v2 pickerCollectionView];

  return v3;
}

- (void)setupCollectionView:(id)a3
{
  v17.receiver = self;
  v17.super_class = GKDashboardMultiplayerPickerDataSource;
  v3 = a3;
  [(GKCollectionDataSource *)&v17 setupCollectionView:v3];
  v4 = [GKDashboardPickerPlayerCell _gkNibWithBaseName:@"GKDashboardPickerPlayerCell", v17.receiver, v17.super_class];
  [v3 registerNib:v4 forCellWithReuseIdentifier:@"playerCell"];

  [v3 setAllowsMultipleSelection:1];
  [v3 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"playerPickerNearbyInstructionCell"];
  v5 = objc_opt_class();
  v6 = *MEMORY[0x277D767D0];
  [v3 registerClass:v5 forSupplementaryViewOfKind:*MEMORY[0x277D767D0] withReuseIdentifier:@"friendsSectionFooterShowMoreFriendsReuseIdentifier"];
  v7 = [_TtC12GameCenterUI26GKSuggestionsContainerCell _gkNibWithBaseName:@"GKSuggestionsContainerCell"];
  v8 = +[_TtC12GameCenterUI26GKSuggestionsContainerCell reuseIdentifier];
  [v3 registerNib:v7 forCellWithReuseIdentifier:v8];

  v9 = [GKDashboardPickerPlayerGroupCell _gkNibWithBaseName:@"GKDashboardPickerPlayerGroupCell"];
  v10 = +[GKDashboardPickerPlayerGroupCell reuseIdentifier];
  [v3 registerNib:v9 forCellWithReuseIdentifier:v10];

  [v3 registerClass:objc_opt_class() forSupplementaryViewOfKind:v6 withReuseIdentifier:@"friendsSectionFooterPlayWithFriendsReuseIdentifier"];
  v11 = objc_opt_class();
  v12 = +[_TtC12GameCenterUI32GKMultiplayerPickerNoFriendsCell reuseIdentifier];
  [v3 registerClass:v11 forCellWithReuseIdentifier:v12];

  v13 = [GKDashboardPickerPlayerCell _gkNibWithBaseName:@"GKDashboardPickerPlayerCellAX"];
  [v3 registerNib:v13 forCellWithReuseIdentifier:@"playerCellAX"];

  v14 = [GKDashboardPickerPlayerGroupCell _gkNibWithBaseName:@"GKDashboardPickerPlayerGroupCellAX"];
  v15 = +[GKDashboardPickerPlayerGroupCell reuseIdentifierAX];
  [v3 registerNib:v14 forCellWithReuseIdentifier:v15];

  v16 = +[GKDashboardButtonSectionHeaderView];
  [v3 registerNib:v16 forSupplementaryViewOfKind:*MEMORY[0x277D767D8] withReuseIdentifier:@"friendsSectionHeaderReuseIdentifier"];
}

- (int64_t)defaultFilterScopeFromPickerOrigin:(int64_t)a3
{
  v4 = [MEMORY[0x277D0C048] currentGame];
  v5 = [v4 bundleIdentifier];

  if (v5)
  {
    v6 = [MEMORY[0x277D0C1D8] shared];
    v7 = [v6 recentPlayerPickerSortPreferenceForBundleID:v5];

    if (!*MEMORY[0x277D0C2A0])
    {
      v8 = GKOSLoggers();
    }

    v9 = *MEMORY[0x277D0C2B0];
    if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_DEBUG))
    {
      [(GKDashboardMultiplayerPickerDataSource *)v5 defaultFilterScopeFromPickerOrigin:v9, v7];
    }

    if (v7 >= 2)
    {
      v10 = a3 == 0;
    }

    else
    {
      v10 = v7;
    }
  }

  else
  {
    v10 = a3 == 0;
  }

  return v10;
}

- (void)setFriendSortFilterScope:(int64_t)a3
{
  if (self->_friendSortFilterScope != a3)
  {
    self->_friendSortFilterScope = a3;
    v5 = [MEMORY[0x277D0C048] currentGame];
    v6 = [v5 bundleIdentifier];

    if (v6)
    {
      v7 = [MEMORY[0x277D0C1D8] shared];
      [v7 setRecentPlayerPickerSortPreference:a3 forBundleID:v6];

      if (!*MEMORY[0x277D0C2A0])
      {
        v8 = GKOSLoggers();
      }

      v9 = *MEMORY[0x277D0C2B0];
      if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_DEBUG))
      {
        [(GKDashboardMultiplayerPickerDataSource *)v6 setFriendSortFilterScope:v9, a3];
      }
    }

    v10 = [(GKDashboardMultiplayerPickerDataSource *)self friendPlayers];
    v11 = [v10 mutableCopy];

    if (a3)
    {
      [(GKDashboardMultiplayerPickerDataSource *)self sortPlayersByNickname:v11];
    }

    else
    {
      [(GKDashboardMultiplayerPickerDataSource *)self sortPlayersByRecentlyPlayed:v11];
    }

    v12 = [MEMORY[0x277CBEA60] arrayWithArray:v11];
    [(GKDashboardMultiplayerPickerDataSource *)self setFriendPlayers:v12];
  }
}

uint64_t __64__GKDashboardMultiplayerPickerDataSource_sortPlayersByNickname___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 sortName];
  v6 = [v4 sortName];

  v7 = [v5 caseInsensitiveCompare:v6];
  return v7;
}

uint64_t __70__GKDashboardMultiplayerPickerDataSource_sortPlayersByRecentlyPlayed___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [MEMORY[0x277D0C048] currentGame];
  v7 = [v6 bundleIdentifier];
  v8 = [v4 lastPlayedGame];
  v9 = [v8 bundleIdentifier];
  v10 = [v7 isEqualToString:v9];

  v11 = [MEMORY[0x277D0C048] currentGame];
  v12 = [v11 bundleIdentifier];
  v13 = [v5 lastPlayedGame];
  v14 = [v13 bundleIdentifier];
  v15 = [v12 isEqualToString:v14];

  if (v10 && v15)
  {
    goto LABEL_3;
  }

  v20 = v10 | v15;
  if (v10)
  {
    v19 = -1;
  }

  else
  {
    v19 = 1;
  }

  if ((v20 & 1) == 0)
  {
    v22 = [v5 lastPlayedDate];
    if (v22)
    {
    }

    else
    {
      v23 = [v4 lastPlayedDate];

      if (!v23)
      {
        v16 = [v4 sortName];
        v17 = [v5 sortName];
        v18 = [v16 caseInsensitiveCompare:v17];
        goto LABEL_4;
      }
    }

    v24 = [v5 lastPlayedDate];
    if (v24)
    {
      v25 = v24;
      v26 = [v4 lastPlayedDate];

      if (!v26)
      {
        v19 = 1;
        goto LABEL_9;
      }
    }

    v27 = [v4 lastPlayedDate];
    if (v27)
    {
      v28 = v27;
      v29 = [v5 lastPlayedDate];

      if (!v29)
      {
        v19 = -1;
        goto LABEL_9;
      }
    }

LABEL_3:
    v16 = [v5 lastPlayedDate];
    v17 = [v4 lastPlayedDate];
    v18 = [v16 compare:v17];
LABEL_4:
    v19 = v18;
  }

LABEL_9:

  return v19;
}

- (void)loadDataWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D0C020];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKDashboardMultiplayerPickerDataSource.m", 330, "-[GKDashboardMultiplayerPickerDataSource loadDataWithCompletionHandler:]"];
  v7 = [v5 dispatchGroupWithName:v6];

  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x3032000000;
  v49[3] = __Block_byref_object_copy__12;
  v49[4] = __Block_byref_object_dispose__12;
  v50 = [MEMORY[0x277CBEB18] array];
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x3032000000;
  v47[3] = __Block_byref_object_copy__12;
  v47[4] = __Block_byref_object_dispose__12;
  v48 = MEMORY[0x277CBEBF8];
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = [MEMORY[0x277CBEB18] array];
  v10 = [MEMORY[0x277CBEB58] set];
  v11 = [MEMORY[0x277D0C1D8] shared];
  if ([v11 multiplayerAllowedPlayerType] == 2)
  {
    v12 = [(GKDashboardMultiplayerPickerDataSource *)self excludesContacts];

    if (!v12)
    {
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __72__GKDashboardMultiplayerPickerDataSource_loadDataWithCompletionHandler___block_invoke;
      v45[3] = &unk_279669A20;
      v45[4] = self;
      v13 = v7;
      v46 = v13;
      [v13 perform:v45];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __72__GKDashboardMultiplayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_3;
      v41[3] = &unk_27966D1C0;
      v42 = v9;
      v43 = v47;
      v44 = &v51;
      [v13 perform:v41];
    }
  }

  else
  {
  }

  if ([(GKDashboardMultiplayerPickerDataSource *)self nearbyOnly])
  {
    *(v52 + 24) = 1;
  }

  else
  {
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __72__GKDashboardMultiplayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_156;
    v36[3] = &unk_27966D230;
    v14 = v7;
    v37 = v14;
    v38 = self;
    v39 = v49;
    v40 = &v51;
    [v14 perform:v36];
    v15 = [MEMORY[0x277D0C1D8] shared];
    v16 = [v15 multiplayerAllowedPlayerType];

    if (v16 == 2)
    {
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __72__GKDashboardMultiplayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_181;
      v32[3] = &unk_27966D2C8;
      v33 = v10;
      v34 = v8;
      v35 = &v51;
      [v14 perform:v32];
    }
  }

  v17 = dispatch_get_global_queue(0, 0);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __72__GKDashboardMultiplayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_189;
  v23[3] = &unk_27966D360;
  v23[4] = self;
  v29 = v49;
  v18 = v8;
  v24 = v18;
  v19 = v9;
  v25 = v19;
  v20 = v10;
  v26 = v20;
  v30 = v47;
  v21 = v4;
  v28 = v21;
  v31 = &v51;
  v22 = v7;
  v27 = v22;
  [v22 notifyOnQueue:v17 block:v23];

  _Block_object_dispose(v47, 8);
  _Block_object_dispose(v49, 8);

  _Block_object_dispose(&v51, 8);
}

void __72__GKDashboardMultiplayerPickerDataSource_loadDataWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) contactSource];

  if (!v4)
  {
    v5 = objc_alloc_init(GKContactDataSource);
    [*(a1 + 32) setContactSource:v5];
  }

  v6 = [*(a1 + 32) contactSource];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__GKDashboardMultiplayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_2;
  v10[3] = &unk_27966B6B0;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v11 = v7;
  v12 = v8;
  v13 = v3;
  v9 = v3;
  [v6 loadContactsWithHandler:v10];
}

void __72__GKDashboardMultiplayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    [*(a1 + 32) setError:v6];
  }

  if ([v5 count])
  {
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        v12 = 0;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * v12);
          v14 = objc_alloc(MEMORY[0x277D0C170]);
          v15 = [v14 initWithContact:{v13, v16}];
          [v7 addObject:v15];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    [*(a1 + 40) setContactPlayers:v7];
  }

  (*(*(a1 + 48) + 16))();
}

void __72__GKDashboardMultiplayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
  v5 = *MEMORY[0x277CBD028];
  v19[0] = v4;
  v19[1] = v5;
  v6 = *MEMORY[0x277CBCFC0];
  v19[2] = *MEMORY[0x277CBD098];
  v19[3] = v6;
  v7 = *MEMORY[0x277CBD020];
  v19[4] = *MEMORY[0x277CBD158];
  v19[5] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:6];

  v9 = [MEMORY[0x277D0C010] daemonProxy];
  v10 = [v9 utilityServicePrivate];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __72__GKDashboardMultiplayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_4;
  v14[3] = &unk_27966D198;
  v15 = v8;
  v11 = *(a1 + 32);
  v18 = *(a1 + 40);
  v16 = v11;
  v17 = v3;
  v12 = v3;
  v13 = v8;
  [v10 getGameInviteFriendSuggestionsWithHandler:v14];
}

void __72__GKDashboardMultiplayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v119 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v89 = [MEMORY[0x277CBEB38] dictionary];
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  obj = v2;
  v3 = [obj countByEnumeratingWithState:&v107 objects:v118 count:16];
  if (v3)
  {
    v4 = v3;
    v87 = *v108;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v108 != v87)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v107 + 1) + 8 * i);
        v103 = 0u;
        v104 = 0u;
        v105 = 0u;
        v106 = 0u;
        v7 = [v6 recipients];
        v8 = [v7 countByEnumeratingWithState:&v103 objects:v117 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v104;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v104 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v103 + 1) + 8 * j);
              v13 = [v12 identifier];

              if (v13)
              {
                v14 = [v12 handle];
                v15 = v14;
                if (v14)
                {
                  v16 = v14;
                }

                else
                {
                  v16 = @"UNKNOWN_HANDLE";
                }

                v17 = [v12 identifier];
                [v89 setObject:v16 forKey:v17];
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v103 objects:v117 count:16];
          }

          while (v9);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v107 objects:v118 count:16];
    }

    while (v4);
  }

  v18 = objc_alloc_init(MEMORY[0x277CBDAB8]);
  v19 = MEMORY[0x277CBDA58];
  v20 = [v89 allKeys];
  v21 = [v19 predicateForContactsWithIdentifiers:v20];

  v22 = *(a1 + 32);
  v102 = 0;
  v76 = v21;
  v77 = v18;
  v23 = [v18 unifiedContactsMatchingPredicate:v21 keysToFetch:v22 error:&v102];
  v24 = v102;
  v25 = MEMORY[0x277D0C2A0];
  if (v24)
  {
    v26 = *MEMORY[0x277D0C2A0];
    if (!*MEMORY[0x277D0C2A0])
    {
      v27 = GKOSLoggers();
      v26 = *v25;
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      __72__GKDashboardMultiplayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_4_cold_1();
    }
  }

  v75 = v24;
  v28 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v23, "count")}];
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v79 = v23;
  v29 = [v79 countByEnumeratingWithState:&v98 objects:v116 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v99;
    do
    {
      for (k = 0; k != v30; ++k)
      {
        if (*v99 != v31)
        {
          objc_enumerationMutation(v79);
        }

        v33 = *(*(&v98 + 1) + 8 * k);
        v34 = *v25;
        if (!*v25)
        {
          v35 = GKOSLoggers();
          v34 = *v25;
        }

        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          __72__GKDashboardMultiplayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_4_cold_2(v114, v34, v33, &v115);
        }

        v36 = [v33 identifier];
        v37 = [v89 objectForKeyedSubscript:v36];

        if (([v37 isEqualToString:@"UNKNOWN_HANDLE"] & 1) == 0)
        {
          [v33 setSuggestedHandle:v37];
        }

        v38 = [objc_alloc(MEMORY[0x277D0C170]) initWithContact:v33];
        v39 = [v33 identifier];
        [v28 setObject:v38 forKey:v39];
      }

      v30 = [v79 countByEnumeratingWithState:&v98 objects:v116 count:16];
    }

    while (v30);
  }

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v78 = obj;
  v82 = [v78 countByEnumeratingWithState:&v94 objects:v113 count:16];
  if (v82)
  {
    v80 = *v95;
    do
    {
      v40 = 0;
      do
      {
        if (*v95 != v80)
        {
          objc_enumerationMutation(v78);
        }

        obja = v40;
        v41 = *(*(&v94 + 1) + 8 * v40);
        v84 = objc_opt_new();
        v42 = MEMORY[0x277CBEB18];
        v43 = [v41 recipients];
        v44 = [v42 arrayWithCapacity:{objc_msgSend(v43, "count")}];

        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v83 = v41;
        v45 = [v41 recipients];
        v46 = [v45 countByEnumeratingWithState:&v90 objects:v112 count:16];
        if (v46)
        {
          v47 = v46;
          v48 = *v91;
          do
          {
            for (m = 0; m != v47; ++m)
            {
              if (*v91 != v48)
              {
                objc_enumerationMutation(v45);
              }

              v50 = *(*(&v90 + 1) + 8 * m);
              v51 = [v50 identifier];
              if (v51)
              {
                v52 = v51;
                v53 = [v50 identifier];
                v54 = [v28 objectForKeyedSubscript:v53];

                if (v54)
                {
                  v55 = [v50 identifier];
                  v56 = [v28 objectForKeyedSubscript:v55];
LABEL_56:
                  v58 = v56;
                  goto LABEL_61;
                }
              }

              v55 = [v50 handle];
              if (![(__CFString *)v55 length])
              {
                v57 = [v50 displayName];

                v55 = v57;
              }

              if (![(__CFString *)v55 length])
              {

                v55 = @"UNKNOWN_HANDLE";
              }

              v56 = [v28 objectForKeyedSubscript:v55];
              if (v56)
              {
                goto LABEL_56;
              }

              v88 = MEMORY[0x277CBDA58];
              v59 = [v50 displayName];
              v60 = v59;
              if (v59)
              {
                v61 = v59;
              }

              else
              {
                v61 = v55;
              }

              v111 = v55;
              [MEMORY[0x277CBEA60] arrayWithObjects:&v111 count:1];
              v62 = v47;
              v63 = v48;
              v64 = v44;
              v65 = v28;
              v67 = v66 = v45;
              v68 = [v88 contactWithDisplayName:v61 handleStrings:v67];

              v45 = v66;
              v28 = v65;
              v44 = v64;
              v48 = v63;
              v47 = v62;

              v58 = [objc_alloc(MEMORY[0x277D0C170]) initWithContact:v68];
              [v28 setObject:v58 forKey:v55];

LABEL_61:
              [v44 addObject:v58];
            }

            v47 = [v45 countByEnumeratingWithState:&v90 objects:v112 count:16];
          }

          while (v47);
        }

        [v84 setPlayers:v44];
        [v84 setSource:1];
        v69 = [v83 groupName];
        [v84 setGroupName:v69];

        v70 = [v83 conversationIdentifier];
        [v84 setConversationIdentifier:v70];

        v71 = [v83 messagesGroupIdentifier];
        [v84 setMessagesGroupIdentifier:v71];

        [*(a1 + 40) addObject:v84];
        v40 = obja + 1;
      }

      while (obja + 1 != v82);
      v82 = [v78 countByEnumeratingWithState:&v94 objects:v113 count:16];
    }

    while (v82);
  }

  v72 = [v28 allValues];
  v73 = *(*(a1 + 56) + 8);
  v74 = *(v73 + 40);
  *(v73 + 40) = v72;

  *(*(*(a1 + 64) + 8) + 24) = 1;
  (*(*(a1 + 48) + 16))();
}

void __72__GKDashboardMultiplayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_156(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D0C138] local];
  v5 = [MEMORY[0x277D0C010] proxyForPlayer:v4];
  v6 = [v5 friendServicePrivate];
  v7 = [v4 internal];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__GKDashboardMultiplayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_2_158;
  v11[3] = &unk_27966D208;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v12 = v8;
  v13 = v9;
  v15 = *(a1 + 48);
  v14 = v3;
  v10 = v3;
  [v6 getFriendsForPlayer:v7 fetchOptions:1 handler:v11];
}

void __72__GKDashboardMultiplayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_2_158(uint64_t a1, void *a2, void *a3)
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a2 _gkMapWithBlock:&__block_literal_global_162_0];
  v7 = MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v8 = GKOSLoggers();
  }

  v9 = MEMORY[0x277D0C2B0];
  v10 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v52 = v6;
    _os_log_impl(&dword_24DE53000, v10, OS_LOG_TYPE_INFO, "Loaded player list: %@", buf, 0xCu);
  }

  v11 = *v7;
  if (v5)
  {
    if (!v11)
    {
      v12 = GKOSLoggers();
    }

    if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      __72__GKDashboardMultiplayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_2_158_cold_1();
    }

    [*(a1 + 32) setError:v5];
  }

  else
  {
    if (!v11)
    {
      v13 = GKOSLoggers();
      v11 = *v7;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __72__GKDashboardMultiplayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_2_158_cold_2();
    }

    v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"friendBiDirectional == %@", &unk_286189318];
    v15 = [v6 filteredArrayUsingPredicate:v14];
    v16 = [v15 mutableCopy];

    v17 = *v7;
    if (!*v7)
    {
      v18 = GKOSLoggers();
      v17 = *v7;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      __72__GKDashboardMultiplayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_2_158_cold_3();
    }

    v19 = [*(a1 + 40) friendSortFilterScope];
    v20 = *(a1 + 40);
    if (v19)
    {
      [v20 sortPlayersByNickname:v16];
    }

    else
    {
      [v20 sortPlayersByRecentlyPlayed:v16];
    }

    v21 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
    [*(a1 + 40) setFriendPlayers:v21];

    v22 = [MEMORY[0x277D0C1D8] shared];
    v23 = [v22 multiplayerAllowedPlayerType];

    if (v23 == 2)
    {
      v44 = [MEMORY[0x277CCAC30] predicateWithFormat:@"friendPlayedWith == %@", &unk_286189318];
      v24 = [MEMORY[0x277CCAC30] predicateWithFormat:@"friendPlayedNearby == %@", &unk_286189318];
      v25 = [MEMORY[0x277CCAC30] predicateWithFormat:@"acceptedGameInviteFromThisFriend == %@ || initiatedGameInviteToThisFriend == %@", &unk_286189318, &unk_286189318];
      [MEMORY[0x277CCAC30] predicateWithFormat:@"automatchedTogether == %@", &unk_286189318];
      v46 = v24;
      v26 = v47 = v16;
      v27 = MEMORY[0x277CCA920];
      v50[0] = v24;
      v50[1] = v25;
      v45 = v25;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:2];
      v43 = [v27 orPredicateWithSubpredicates:v28];

      v29 = MEMORY[0x277CCA920];
      v30 = [MEMORY[0x277CCA920] notPredicateWithSubpredicate:v24];
      v49[0] = v30;
      v31 = [MEMORY[0x277CCA920] notPredicateWithSubpredicate:v25];
      v49[1] = v31;
      v32 = [MEMORY[0x277CCA920] notPredicateWithSubpredicate:v26];
      v49[2] = v32;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:3];
      v34 = [v29 andPredicateWithSubpredicates:v33];

      v35 = MEMORY[0x277CCA920];
      v48[0] = v44;
      v48[1] = v43;
      v36 = [MEMORY[0x277CCA920] notPredicateWithSubpredicate:v34];
      v48[2] = v36;
      v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:3];
      v38 = [v35 andPredicateWithSubpredicates:v37];

      v39 = [v6 filteredArrayUsingPredicate:v38];
      v40 = [v39 mutableCopy];
      v41 = *(*(a1 + 56) + 8);
      v42 = *(v41 + 40);
      *(v41 + 40) = v40;

      [*(a1 + 40) sortPlayersByRecentlyPlayed:*(*(*(a1 + 56) + 8) + 40)];
      v16 = v47;
    }

    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  (*(*(a1 + 48) + 16))();
}

id __72__GKDashboardMultiplayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_3_159(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D0C170];
  v3 = a2;
  v4 = [[v2 alloc] initWithInternalRepresentation:v3];

  return v4;
}

void __72__GKDashboardMultiplayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_181(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D0C010] daemonProxy];
  v5 = [v4 multiplayerService];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__GKDashboardMultiplayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_2_182;
  v9[3] = &unk_27966D2A0;
  v10 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v12 = v3;
  v13 = v7;
  v11 = v6;
  v8 = v3;
  [v5 getMultiPlayerGroups:v9];
}

void __72__GKDashboardMultiplayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_2_182(uint64_t a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = MEMORY[0x277D0C2A0];
    v8 = *MEMORY[0x277D0C2A0];
    if (!*MEMORY[0x277D0C2A0])
    {
      v9 = GKOSLoggers();
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __72__GKDashboardMultiplayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_2_182_cold_1();
    }
  }

  v28 = v6;
  [v5 sortUsingComparator:&__block_literal_global_186];
  v10 = [MEMORY[0x277CBEB58] set];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v11 = v5;
  v12 = [v11 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v39;
    do
    {
      v15 = 0;
      do
      {
        if (*v39 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v38 + 1) + 8 * v15);
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v17 = [v16 participants];
        v18 = [v17 countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v35;
          do
          {
            v21 = 0;
            do
            {
              if (*v35 != v20)
              {
                objc_enumerationMutation(v17);
              }

              [v10 addObject:*(*(&v34 + 1) + 8 * v21++)];
            }

            while (v19 != v21);
            v19 = [v17 countByEnumeratingWithState:&v34 objects:v42 count:16];
          }

          while (v19);
        }

        ++v15;
      }

      while (v15 != v13);
      v13 = [v11 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v13);
  }

  v22 = [MEMORY[0x277D0C010] daemonProxy];
  v23 = [v22 profileServicePrivate];
  v24 = [v10 allObjects];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __72__GKDashboardMultiplayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_2_187;
  v29[3] = &unk_27966D278;
  v30 = *(a1 + 32);
  v31 = v11;
  v32 = *(a1 + 40);
  v27 = *(a1 + 48);
  v25 = v27;
  v33 = v27;
  v26 = v11;
  [v23 getProfilesForPlayerIDs:v24 fetchOptions:1 handler:v29];
}

uint64_t __72__GKDashboardMultiplayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_183(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 playedAt];
  if (v6 <= [v5 playedAt])
  {
    v8 = [v4 playedAt];
    v7 = v8 != [v5 playedAt];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

void __72__GKDashboardMultiplayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_2_187(uint64_t a1, void *a2, void *a3)
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = MEMORY[0x277D0C2A0];
    v8 = *MEMORY[0x277D0C2A0];
    if (!*MEMORY[0x277D0C2A0])
    {
      v9 = GKOSLoggers();
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __72__GKDashboardMultiplayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_2_187_cold_1();
    }
  }

  v36 = v6;
  v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v11 = v5;
  v12 = [v11 countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v49;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v49 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [objc_alloc(MEMORY[0x277D0C170]) initWithInternalRepresentation:*(*(&v48 + 1) + 8 * i)];
        v17 = [v16 internal];
        v18 = [v17 playerID];
        [v10 setObject:v16 forKeyedSubscript:v18];

        [*(a1 + 32) addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v13);
  }

  v35 = v11;

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = *(a1 + 40);
  v39 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v39)
  {
    v38 = *v45;
    do
    {
      for (j = 0; j != v39; ++j)
      {
        if (*v45 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v44 + 1) + 8 * j);
        v21 = [v20 participants];
        v22 = [v21 count];

        if (v22)
        {
          v23 = a1;
          v24 = objc_opt_new();
          v25 = MEMORY[0x277CBEB18];
          v26 = [v20 participants];
          v27 = [v25 arrayWithCapacity:{objc_msgSend(v26, "count")}];

          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v28 = [v20 participants];
          v29 = [v28 countByEnumeratingWithState:&v40 objects:v52 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v41;
            do
            {
              for (k = 0; k != v30; ++k)
              {
                if (*v41 != v31)
                {
                  objc_enumerationMutation(v28);
                }

                v33 = [v10 objectForKeyedSubscript:*(*(&v40 + 1) + 8 * k)];
                v34 = v33;
                if (v33 && ([v33 isLocalPlayer] & 1) == 0)
                {
                  [v27 addObject:v34];
                }
              }

              v30 = [v28 countByEnumeratingWithState:&v40 objects:v52 count:16];
            }

            while (v30);
          }

          [v24 setPlayers:v27];
          a1 = v23;
          [*(v23 + 48) addObject:v24];
        }
      }

      v39 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
    }

    while (v39);
  }

  *(*(*(a1 + 64) + 8) + 24) = 1;
  (*(*(a1 + 56) + 16))();
}

void __72__GKDashboardMultiplayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_189(uint64_t a1)
{
  v95 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__GKDashboardMultiplayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_2_190;
  aBlock[3] = &unk_27966D310;
  v3 = v2;
  v4 = *(a1 + 32);
  v65 = v3;
  v89 = v3;
  v90 = v4;
  v69 = _Block_copy(aBlock);
  v5 = MEMORY[0x277CBEB58];
  v6 = [*(a1 + 32) friendPlayers];
  v7 = [v5 setWithArray:v6];

  v67 = v7;
  [v7 addObjectsFromArray:*(*(*(a1 + 80) + 8) + 40)];
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v66 = a1;
  v8 = *(a1 + 40);
  v9 = [v8 countByEnumeratingWithState:&v84 objects:v94 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v85;
    v12 = (v69 + 2);
    do
    {
      v13 = 0;
      v68 = v10;
      do
      {
        if (*v85 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v84 + 1) + 8 * v13);
        v15 = [v14 players];
        if ([v15 count] >= 2)
        {

LABEL_11:
          v69[2](v69, v14);
          goto LABEL_13;
        }

        v16 = [v14 players];
        if ([v16 count] == 1)
        {
          [v14 players];
          v18 = v17 = v8;
          [v18 objectAtIndexedSubscript:0];
          v20 = v19 = v12;
          v21 = [v67 containsObject:v20];

          v12 = v19;
          v8 = v17;
          v10 = v68;

          if (v21)
          {
            goto LABEL_11;
          }
        }

        else
        {
        }

LABEL_13:
        ++v13;
      }

      while (v10 != v13);
      v10 = [v8 countByEnumeratingWithState:&v84 objects:v94 count:16];
    }

    while (v10);
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v22 = *(*(*(v66 + 80) + 8) + 40);
  v23 = [v22 countByEnumeratingWithState:&v80 objects:v93 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v81;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v81 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v80 + 1) + 8 * i);
        v28 = objc_opt_new();
        v92 = v27;
        v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v92 count:1];
        [v28 setPlayers:v29];

        v69[2](v69, v28);
      }

      v24 = [v22 countByEnumeratingWithState:&v80 objects:v93 count:16];
    }

    while (v24);
  }

  v30 = [MEMORY[0x277CBEB58] set];
  v31 = [MEMORY[0x277CBEB18] array];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v32 = *(v66 + 48);
  v33 = [v32 countByEnumeratingWithState:&v76 objects:v91 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v77;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v77 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v76 + 1) + 8 * j);
        v38 = [v37 players];
        v39 = [v38 _gkPlayersIDsFromPlayers];

        v40 = [v39 sortedArrayUsingComparator:&__block_literal_global_198];
        if (([v30 containsObject:v40] & 1) == 0)
        {
          [v30 addObject:v40];
          [v31 addObject:v37];
        }
      }

      v34 = [v32 countByEnumeratingWithState:&v76 objects:v91 count:16];
    }

    while (v34);
  }

  if ([v31 count])
  {
    v41 = [MEMORY[0x277CBEB18] array];
    v42 = [*(v66 + 32) suggestedPlayerGroups];
    v43 = [v42 count];

    v44 = [*(v66 + 32) suggestedPlayerGroups];
    v45 = v44;
    if (v43 > 4)
    {
      v47 = [v44 subarrayWithRange:{0, 4}];
      [v41 addObjectsFromArray:v47];

      v46 = [*(v66 + 32) suggestedPlayerGroups];
      [v46 removeObjectsInRange:{0, 4}];
    }

    else
    {
      [v41 addObjectsFromArray:v44];

      v46 = [*(v66 + 32) suggestedPlayerGroups];
      [v46 removeAllObjects];
    }

    [v41 addObjectsFromArray:v31];
    v48 = [*(v66 + 32) suggestedPlayerGroups];
    v49 = [v48 count];

    if (v49)
    {
      v50 = [*(v66 + 32) suggestedPlayerGroups];
      [v41 addObjectsFromArray:v50];
    }

    [*(v66 + 32) setSuggestedPlayerGroups:v41];
  }

  v51 = [*(v66 + 32) suggestedPlayerGroups];
  v52 = [v51 count];

  if (v52 >= 0x11)
  {
    v53 = [*(v66 + 32) suggestedPlayerGroups];
    v54 = [v53 subarrayWithRange:{0, 16}];
    v55 = [v54 mutableCopy];
    [*(v66 + 32) setSuggestedPlayerGroups:v55];
  }

  [*(v66 + 56) addObjectsFromArray:*(*(*(v66 + 80) + 8) + 40)];
  [*(v66 + 56) addObjectsFromArray:*(*(*(v66 + 88) + 8) + 40)];
  v56 = [*(v66 + 56) allObjects];
  [*(v66 + 32) setSuggestedPlayers:v56];

  v57 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(*(v66 + 32), "itemCount")}];
  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = __72__GKDashboardMultiplayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_5;
  v74[3] = &unk_27966D338;
  v74[4] = *(v66 + 32);
  v75 = v57;
  v58 = v57;
  v59 = _Block_copy(v74);
  v60 = [*(v66 + 32) nearbyPlayers];
  v59[2](v59, v60);

  v61 = [*(v66 + 32) friendPlayers];
  v59[2](v59, v61);

  v62 = [*(v66 + 32) suggestedPlayers];
  v59[2](v59, v62);

  [*(v66 + 32) setPlayerStates:v58];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__GKDashboardMultiplayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_204;
  block[3] = &unk_27966AC88;
  block[4] = *(v66 + 32);
  v63 = *(v66 + 72);
  v64 = *(v66 + 96);
  v72 = v63;
  v73 = v64;
  v71 = *(v66 + 64);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __72__GKDashboardMultiplayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_2_190(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 players];
  v4 = [v3 _gkPlayersIDsFromPlayers];

  v5 = [v4 sortedArrayUsingComparator:&__block_literal_global_194];
  if (([*(a1 + 32) containsObject:v5] & 1) == 0)
  {
    [*(a1 + 32) addObject:v5];
    v6 = [*(a1 + 40) suggestedPlayerGroups];
    [v6 addObject:v7];
  }
}

void __72__GKDashboardMultiplayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        v9 = [*(a1 + 32) playerStates];
        v10 = [v8 referenceKey];
        v11 = [v9 objectForKeyedSubscript:v10];

        v12 = [*(a1 + 32) previouslyInvitedPlayers];
        LODWORD(v10) = [v12 containsObject:v8];

        if (v10)
        {

          v11 = &unk_286189330;
        }

        else if (!v11)
        {
          v11 = &unk_286189348;
        }

        v13 = *(a1 + 40);
        v14 = [v8 referenceKey];
        [v13 setObject:v11 forKeyedSubscript:v14];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }
}

void __72__GKDashboardMultiplayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_204(uint64_t a1)
{
  [*(a1 + 32) setDidLoad:1];
  [*(a1 + 32) setBrowsingForNearbyPlayers:{objc_msgSend(*(a1 + 32), "supportsNearby")}];
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(*(*(a1 + 56) + 8) + 24);
    v4 = [*(a1 + 40) error];
    (*(v2 + 16))(v2, v3, v4);
  }
}

- (int64_t)itemCount
{
  if ([(GKCollectionDataSource *)self isSearching])
  {
    v3 = [(GKDashboardMultiplayerPickerDataSource *)self searchPlayersAndGroups];
    v4 = [v3 count];

    return v4;
  }

  else
  {

    return [(GKDashboardMultiplayerPickerDataSource *)self unmodifiedItemCount];
  }
}

- (int64_t)unmodifiedItemCount
{
  if ([(GKDashboardMultiplayerPickerDataSource *)self supportsNearby])
  {
    v3 = [(GKDashboardMultiplayerPickerDataSource *)self nearbyPlayers];
    if ([v3 count])
    {
      v4 = [(GKDashboardMultiplayerPickerDataSource *)self nearbyPlayers];
      v5 = [v4 count];
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  if (![(GKDashboardMultiplayerPickerDataSource *)self nearbyOnly])
  {
    v6 = [(GKDashboardMultiplayerPickerDataSource *)self suggestedPlayers];
    v7 = [v6 count];
    v8 = [(GKDashboardMultiplayerPickerDataSource *)self friendPlayers];
    v5 += v7 + [v8 count];
  }

  return v5;
}

- (id)playersForSection:(int64_t)a3 ignoreSearch:(BOOL)a4
{
  if (!a4 && [(GKCollectionDataSource *)self isSearching])
  {
LABEL_6:
    v6 = 0;
    goto LABEL_8;
  }

  if (a3)
  {
    if (a3 == 1)
    {
      v6 = [(GKDashboardMultiplayerPickerDataSource *)self friendPlayers];
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v6 = [(GKDashboardMultiplayerPickerDataSource *)self suggestedPlayers];
LABEL_8:

  return v6;
}

- (id)playerForIndexPath:(id)a3
{
  v4 = a3;
  v5 = -[GKDashboardMultiplayerPickerDataSource playersForSection:ignoreSearch:](self, "playersForSection:ignoreSearch:", [v4 section], 0);
  v6 = [v4 item];

  if ([v5 count] <= v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 objectAtIndexedSubscript:v6];
  }

  return v7;
}

- (BOOL)isPlayerAtIndexPathCoreRecent:(id)a3
{
  v4 = a3;
  if ([v4 section])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(GKDashboardMultiplayerPickerDataSource *)self playerForIndexPath:v4];
    v5 = [v6 isInContacts];
  }

  return v5;
}

- (id)playerForPlayerID:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = [(GKDashboardMultiplayerPickerDataSource *)self nearbyPlayers];
  v6 = [v5 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v37;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v37 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v36 + 1) + 8 * v9);
      v11 = [v10 internal];
      v12 = [v11 playerID];
      v13 = [v12 isEqualToString:v4];

      if (v13)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v36 objects:v42 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v5 = [(GKDashboardMultiplayerPickerDataSource *)self friendPlayers];
    v14 = [v5 countByEnumeratingWithState:&v32 objects:v41 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v33;
LABEL_11:
      v17 = 0;
      while (1)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v32 + 1) + 8 * v17);
        v18 = [v10 internal];
        v19 = [v18 playerID];
        v20 = [v19 isEqualToString:v4];

        if (v20)
        {
          break;
        }

        if (v15 == ++v17)
        {
          v15 = [v5 countByEnumeratingWithState:&v32 objects:v41 count:16];
          if (v15)
          {
            goto LABEL_11;
          }

          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_17:

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v5 = [(GKDashboardMultiplayerPickerDataSource *)self suggestedPlayers];
      v21 = [v5 countByEnumeratingWithState:&v28 objects:v40 count:16];
      if (!v21)
      {
        goto LABEL_27;
      }

      v22 = *v29;
LABEL_19:
      v23 = 0;
      while (1)
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v28 + 1) + 8 * v23);
        v24 = [v10 internal];
        v25 = [v24 playerID];
        v26 = [v25 isEqualToString:v4];

        if (v26)
        {
          break;
        }

        if (v21 == ++v23)
        {
          v21 = [v5 countByEnumeratingWithState:&v28 objects:v40 count:16];
          if (v21)
          {
            goto LABEL_19;
          }

          goto LABEL_27;
        }
      }
    }
  }

  v21 = v10;
LABEL_27:

  return v21;
}

- (NSArray)selectedPlayers
{
  v3 = [MEMORY[0x277CBEB58] set];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __57__GKDashboardMultiplayerPickerDataSource_selectedPlayers__block_invoke;
  v15 = &unk_27966D338;
  v16 = self;
  v17 = v3;
  v4 = v3;
  v5 = _Block_copy(&v12);
  v6 = [(GKDashboardMultiplayerPickerDataSource *)self nearbyPlayers:v12];
  v5[2](v5, v6);

  v7 = [(GKDashboardMultiplayerPickerDataSource *)self suggestedPlayers];
  v5[2](v5, v7);

  v8 = [(GKDashboardMultiplayerPickerDataSource *)self friendPlayers];
  v5[2](v5, v8);

  if (![(GKDashboardMultiplayerPickerDataSource *)self excludesContacts])
  {
    v9 = [(GKDashboardMultiplayerPickerDataSource *)self contactPlayers];
    v5[2](v5, v9);
  }

  v10 = [v4 allObjects];

  return v10;
}

void __57__GKDashboardMultiplayerPickerDataSource_selectedPlayers__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = [*(a1 + 32) playerStates];
        v10 = [v8 referenceKey];
        v11 = [v9 objectForKeyedSubscript:v10];
        v12 = [v11 integerValue];

        if (v12 == 1)
        {
          [*(a1 + 40) addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }
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
          [(NSMutableDictionary *)self->_playerStates setObject:&unk_286189348 forKeyedSubscript:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)pickerWillSendInvites
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(GKDashboardMultiplayerPickerDataSource *)self suggestedPlayerGroups];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  v5 = MEMORY[0x277D0BE78];
  if (v4)
  {
    v6 = v4;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if ([v9 source] != 1 && objc_msgSend(v9, "source") != 2)
        {
          v10 = [v9 players];
          v11 = [v10 count];

          if (v11 >= 2 && [(GKDashboardMultiplayerPickerDataSource *)self shouldSelectPlayerGroup:v9])
          {

            v3 = [MEMORY[0x277D0C1F8] reporter];
            [v3 reportEvent:*v5 type:*MEMORY[0x277D0BCA0]];
            goto LABEL_14;
          }
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  v12 = [(GKDashboardMultiplayerPickerDataSource *)self selectedMessageGroups];
  v13 = [v12 count];

  if (v13)
  {
    v14 = [MEMORY[0x277D0C1F8] reporter];
    [v14 reportEvent:*v5 type:*MEMORY[0x277D0BCA8]];
  }
}

- (unint64_t)cornerMaskForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = -[GKDashboardMultiplayerPickerDataSource numberOfItemsInSection:](self, "numberOfItemsInSection:", [v4 section]);
  v6 = [v4 section];
  if (v6)
  {
    if (v6 == 1)
    {
      if ([v4 item] == v5 - 1 && !-[GKDashboardMultiplayerPickerDataSource isShowingAddFriendsFooter](self, "isShowingAddFriendsFooter"))
      {
        if ([(GKDashboardMultiplayerPickerDataSource *)self _canShowMoreFriends])
        {
          v7 = 0;
        }

        else
        {
          v7 = 12;
        }
      }

      else
      {
        v7 = 0;
      }

      if ([(GKDashboardMultiplayerPickerDataSource *)self hasFriends])
      {
        v8 = v7;
      }

      else
      {
        v8 = 15;
      }

      goto LABEL_20;
    }

LABEL_13:
    v8 = 0;
    goto LABEL_20;
  }

  if (![(GKCollectionDataSource *)self isSearching])
  {
    goto LABEL_13;
  }

  if ([v4 item])
  {
    v8 = 0;
  }

  else
  {
    v8 = 3;
  }

  if ([v4 item] == v5 - 1)
  {
    v8 |= 0xCuLL;
  }

LABEL_20:

  return v8;
}

- (id)fullContactWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(GKDashboardMultiplayerPickerDataSource *)self contactSource];
  v6 = [v5 fullContactWithIdentifier:v4];

  return v6;
}

- (id)firstIndexPathForPlayer:(id)a3
{
  v3 = [(GKDashboardMultiplayerPickerDataSource *)self indexPathsForPlayer:a3];
  v4 = [v3 firstObject];

  return v4;
}

- (id)indexPathsForPlayer:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB40] orderedSet];
  for (i = 0; i != 3; ++i)
  {
    v7 = [(GKDashboardMultiplayerPickerDataSource *)self playersForSection:i ignoreSearch:0];
    v8 = [v7 indexOfObject:v4];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = [MEMORY[0x277CCAA70] indexPathForItem:v8 inSection:i];
      [v5 addObject:v9];
    }
  }

  v10 = [v5 copy];

  return v10;
}

- (id)indexPathForPlayer:(id)a3 inSection:(unint64_t)a4
{
  v6 = a3;
  v7 = [(GKDashboardMultiplayerPickerDataSource *)self playersForSection:a4 ignoreSearch:0];
  v8 = [v7 indexOfObject:v6];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [MEMORY[0x277CCAA70] indexPathForItem:v8 inSection:a4];
  }

  return v9;
}

- (id)indexPathForFirstPlayer
{
  v3 = 0;
  while (1)
  {
    v4 = [(GKDashboardMultiplayerPickerDataSource *)self playersForSection:v3 ignoreSearch:0];
    v5 = [v4 firstObject];
    if (v5)
    {
      break;
    }

    if (++v3 == 3)
    {
      v6 = 0;
      goto LABEL_6;
    }
  }

  v7 = v5;
  v6 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:v3];

LABEL_6:

  return v6;
}

- (id)searchKeyForSection:(int64_t)a3
{
  if (a3 == 1)
  {
    return @"groupName";
  }

  else
  {
    return @"searchName";
  }
}

- (id)alternateSearchKeyForSection:(int64_t)a3
{
  if (a3 == 1)
  {
    return @"groupName";
  }

  else
  {
    return @"internal.messagesID";
  }
}

- (void)searchTextHasChanged
{
  v61 = *MEMORY[0x277D85DE8];
  if ([(GKCollectionDataSource *)self isSearching])
  {
    v3 = objc_alloc(MEMORY[0x277CBEB18]);
    v4 = [(GKDashboardMultiplayerPickerDataSource *)self nearbyPlayers];
    v5 = [(GKDashboardMultiplayerPickerDataSource *)self friendPlayers];
    v6 = [v3 initWithObjects:{v4, v5, 0}];

    if (![(GKDashboardMultiplayerPickerDataSource *)self excludesContacts])
    {
      v7 = [(GKDashboardMultiplayerPickerDataSource *)self contactPlayers];
      [v6 addObject:v7];
    }

    v38 = [MEMORY[0x277CBEB40] orderedSet];
    v39 = [MEMORY[0x277CBEB58] set];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = v6;
    v34 = [obj countByEnumeratingWithState:&v52 objects:v60 count:16];
    if (v34)
    {
      v33 = *v53;
      do
      {
        v8 = 0;
        do
        {
          if (*v53 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v36 = v8;
          v9 = *(*(&v52 + 1) + 8 * v8);
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v10 = v9;
          v11 = [v10 countByEnumeratingWithState:&v48 objects:v59 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v49;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v49 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v48 + 1) + 8 * i);
                if (([v15 isLocalPlayer] & 1) == 0 && -[GKCollectionDataSource searchMatchesItem:inSection:](self, "searchMatchesItem:inSection:", v15, 0))
                {
                  v16 = objc_opt_new();
                  v58 = v15;
                  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
                  [v16 setPlayers:v17];

                  v18 = [v15 displayNameWithOptions:0];
                  [v16 setGroupName:v18];

                  [v38 addObject:v16];
                  [v39 addObject:v15];
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v48 objects:v59 count:16];
            }

            while (v12);
          }

          v8 = v36 + 1;
        }

        while ((v36 + 1) != v34);
        v34 = [obj countByEnumeratingWithState:&v52 objects:v60 count:16];
      }

      while (v34);
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v35 = [(GKDashboardMultiplayerPickerDataSource *)self suggestedPlayerGroups];
    v19 = [v35 countByEnumeratingWithState:&v44 objects:v57 count:16];
    if (v19)
    {
      v20 = v19;
      v37 = *v45;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v45 != v37)
          {
            objc_enumerationMutation(v35);
          }

          v22 = *(*(&v44 + 1) + 8 * j);
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v23 = [v22 players];
          v24 = [v23 countByEnumeratingWithState:&v40 objects:v56 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v41;
            while (2)
            {
              for (k = 0; k != v25; ++k)
              {
                if (*v41 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                v28 = *(*(&v40 + 1) + 8 * k);
                if ([(GKCollectionDataSource *)self searchMatchesItem:v28 inSection:0])
                {
                  v29 = [v22 players];
                  if ([v29 count] > 1)
                  {

LABEL_39:
                    [v38 addObject:v22];

                    goto LABEL_40;
                  }

                  v30 = [v39 containsObject:v28];

                  if ((v30 & 1) == 0)
                  {
                    goto LABEL_39;
                  }
                }
              }

              v25 = [v23 countByEnumeratingWithState:&v40 objects:v56 count:16];
              if (v25)
              {
                continue;
              }

              break;
            }
          }

          if ([(GKCollectionDataSource *)self searchMatchesItem:v22 inSection:1])
          {
            [v38 addObject:v22];
          }

LABEL_40:
          ;
        }

        v20 = [v35 countByEnumeratingWithState:&v44 objects:v57 count:16];
      }

      while (v20);
    }

    v31 = [v38 array];
    [(GKDashboardMultiplayerPickerDataSource *)self setSearchPlayersAndGroups:v31];
  }

  else
  {

    [(GKDashboardMultiplayerPickerDataSource *)self setSearchPlayersAndGroups:0];
  }
}

- (void)setSupportsNearby:(BOOL)a3
{
  if (self->_supportsNearby != a3)
  {
    v3 = a3;
    self->_supportsNearby = a3;
    if ([(GKDashboardMultiplayerPickerDataSource *)self didLoad])
    {

      [(GKDashboardMultiplayerPickerDataSource *)self setBrowsingForNearbyPlayers:v3];
    }
  }
}

- (void)setBrowsingForNearbyPlayers:(BOOL)a3
{
  v3 = a3;
  v5 = [(GKDashboardMultiplayerPickerDataSource *)self nearbyDelegate];

  if (v5)
  {
    if (self->_browsingForNearbyPlayers != v3)
    {
      self->_browsingForNearbyPlayers = v3;
      if (v3)
      {
        objc_initWeak(&location, self);
        v6 = [(GKDashboardMultiplayerPickerDataSource *)self nearbyDelegate];
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __70__GKDashboardMultiplayerPickerDataSource_setBrowsingForNearbyPlayers___block_invoke;
        v10[3] = &unk_27966D388;
        objc_copyWeak(&v11, &location);
        [v6 startBrowsingForNearbyPlayersWithReachableHandler:v10];

        objc_destroyWeak(&v11);
        objc_destroyWeak(&location);
      }

      else
      {
        v9 = [(GKDashboardMultiplayerPickerDataSource *)self nearbyDelegate];
        [v9 stopBrowsingForNearbyPlayers];
      }
    }
  }

  else
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v7 = GKOSLoggers();
    }

    v8 = *MEMORY[0x277D0C2B0];
    if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_ERROR))
    {
      [GKDashboardMultiplayerPickerDataSource setBrowsingForNearbyPlayers:v8];
    }
  }
}

void __70__GKDashboardMultiplayerPickerDataSource_setBrowsingForNearbyPlayers___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  objc_copyWeak(&to, (a1 + 32));
  v6 = objc_loadWeakRetained(&to);
  [v6 setNearbyPlayerID:v5 reachable:a3];

  objc_destroyWeak(&to);
}

- (void)setNearbyPlayerID:(id)a3 reachable:(BOOL)a4
{
  v4 = a4;
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(GKDashboardMultiplayerPickerDataSource *)self playerForPlayerID:v6];
  if (v7)
  {
    [(GKDashboardMultiplayerPickerDataSource *)self setNearbyPlayer:v7 reachable:v4];
  }

  else
  {
    objc_initWeak(&location, self);
    v8 = MEMORY[0x277D0C170];
    v15[0] = v6;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __70__GKDashboardMultiplayerPickerDataSource_setNearbyPlayerID_reachable___block_invoke;
    v10[3] = &unk_27966D3B0;
    objc_copyWeak(&v12, &location);
    v11 = v6;
    v13 = v4;
    [v8 loadPlayersForIdentifiersPrivate:v9 withCompletionHandler:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __70__GKDashboardMultiplayerPickerDataSource_setNearbyPlayerID_reachable___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_copyWeak(&to, (a1 + 40));
  v7 = [v5 firstObject];
  if (v6)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v8 = GKOSLoggers();
    }

    v9 = *MEMORY[0x277D0C290];
    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      __70__GKDashboardMultiplayerPickerDataSource_setNearbyPlayerID_reachable___block_invoke_cold_1(a1, v6, v9);
      if (!v7)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  if (v7)
  {
LABEL_6:
    v10 = objc_loadWeakRetained(&to);
    [v10 setNearbyPlayer:v7 reachable:*(a1 + 48)];
  }

LABEL_7:

  objc_destroyWeak(&to);
}

- (void)setNearbyPlayer:(id)a3 reachable:(BOOL)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = [MEMORY[0x277D0C020] dispatchGroupWithName:@"pickerDataSourceSetNearbyPlayer"];
    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x3032000000;
    v13[3] = __Block_byref_object_copy__12;
    v13[4] = __Block_byref_object_dispose__12;
    v14 = v6;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __68__GKDashboardMultiplayerPickerDataSource_setNearbyPlayer_reachable___block_invoke;
    v8[3] = &unk_27966D3D8;
    v11 = v13;
    v12 = a4;
    v9 = v14;
    v10 = self;
    [v7 notifyOnMainQueueWithBlock:v8];

    _Block_object_dispose(v13, 8);
  }
}

void __68__GKDashboardMultiplayerPickerDataSource_setNearbyPlayer_reachable___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    return;
  }

  if (!*MEMORY[0x277D0C2A0])
  {
    v2 = GKOSLoggers();
  }

  v3 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 56);
    *buf = 138412546;
    v28 = v4;
    v29 = 1024;
    v30 = v5;
    _os_log_impl(&dword_24DE53000, v3, OS_LOG_TYPE_INFO, "setNearbyPlayer: %@ reachable: %d", buf, 0x12u);
  }

  v6 = [*(a1 + 40) nearbyPlayers];
  v7 = [v6 count];

  v8 = *(a1 + 56);
  v9 = [*(a1 + 40) nearbyPlayers];
  v10 = [v9 containsObject:*(a1 + 32)];

  if (v8 != 1)
  {
    if (v10)
    {
      v15 = [*(a1 + 40) nearbyPlayers];
      [v15 removeObject:*(a1 + 32)];

      [*(a1 + 40) updateStateForUnreachableNearbyPlayer:*(a1 + 32)];
    }

    goto LABEL_16;
  }

  if ((v10 & 1) == 0)
  {
    v11 = [*(a1 + 40) nearbyPlayers];
    [v11 insertObject:*(a1 + 32) atIndex:0];

    v12 = [*(a1 + 40) friendPlayers];
    if ([v12 containsObject:*(a1 + 32)])
    {
LABEL_13:

      goto LABEL_16;
    }

    v13 = [*(a1 + 40) suggestedPlayers];
    if ([v13 containsObject:*(a1 + 32)])
    {
LABEL_12:

      goto LABEL_13;
    }

    v14 = [*(a1 + 32) referenceKey];

    if (v14)
    {
      v12 = [*(a1 + 40) playerStates];
      v13 = [*(a1 + 32) referenceKey];
      [v12 setObject:&unk_286189348 forKeyedSubscript:v13];
      goto LABEL_12;
    }
  }

LABEL_16:
  if (([*(a1 + 40) isSearching] & 1) == 0)
  {
    [*(a1 + 40) nearbyPlayersChangedHandler];
  }

  if (([*(a1 + 40) isSearching] & 1) == 0)
  {
    v16 = [*(a1 + 40) nearbyPlayers];
    v17 = [v16 count];

    if (v17 * v7 || v17 + v7 < 1 || ([*(a1 + 40) suggestedPlayerGroups], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "count"), v18, v19))
    {
      v20 = [*(a1 + 40) suggestionContainerCell];
      if (!v20)
      {
        v21 = [*(a1 + 40) collectionView];
        v22 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:0];
        v23 = [v21 cellForItemAtIndexPath:v22];

        if (v23 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v20 = v23;
        }

        else
        {
          v20 = 0;
        }
      }

      v24 = [*(a1 + 40) nearbyPlayers];
      [v20 updateNearbyPlayers:v24];
    }

    else
    {
      v20 = [*(a1 + 40) collectionView];
      v24 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:0];
      v26 = v24;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
      [v20 reloadItemsAtIndexPaths:v25];
    }
  }
}

- (void)updateStateForUnreachableNearbyPlayer:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(GKDashboardMultiplayerPickerDataSource *)self friendPlayers];
  if ([v5 containsObject:v4])
  {
    goto LABEL_4;
  }

  v6 = [(GKDashboardMultiplayerPickerDataSource *)self suggestedPlayers];
  v7 = [v6 containsObject:v4];

  if ((v7 & 1) == 0)
  {
    v8 = [(GKDashboardMultiplayerPickerDataSource *)self playerStates];
    v9 = [v4 referenceKey];
    [v8 removeObjectForKey:v9];

    v5 = [(GKDashboardMultiplayerPickerDataSource *)self delegate];
    v11[0] = v4;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    [v5 pickerDatasource:self didDeselectPlayers:v10 inGroup:0];

LABEL_4:
  }
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  if ([(GKCollectionDataSource *)self isSearching])
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

- (int64_t)numberOfItemsInSection:(int64_t)a3
{
  if ([(GKCollectionDataSource *)self isSearching])
  {
    v5 = [(GKDashboardMultiplayerPickerDataSource *)self searchPlayersAndGroups];
    v6 = [v5 count];

    return v6;
  }

  v7 = [(GKDashboardMultiplayerPickerDataSource *)self playersForSection:a3 ignoreSearch:1];
  v6 = [v7 count];

  if (!a3)
  {
    return [(GKDashboardMultiplayerPickerDataSource *)self pickerOrigin]== 1;
  }

  if (a3 != 1)
  {
    if (a3 != 2)
    {
      return v6;
    }

    return [(GKDashboardMultiplayerPickerDataSource *)self pickerOrigin]== 1;
  }

  if ([(GKDashboardMultiplayerPickerDataSource *)self nearbyOnly])
  {
    return 0;
  }

  if (![(GKDashboardMultiplayerPickerDataSource *)self hasFriends])
  {
    return 1;
  }

  if ([(GKDashboardMultiplayerPickerDataSource *)self showsAllFriends]|| v6 == [(GKDashboardMultiplayerPickerDataSource *)self numberOfFriendsToShowInitially]+ 1)
  {
    return v6;
  }

  LODWORD(result) = [(GKDashboardMultiplayerPickerDataSource *)self numberOfFriendsToShowInitially];
  if (v6 >= result)
  {
    return result;
  }

  else
  {
    return v6;
  }
}

- (BOOL)hasFriends
{
  v2 = [(GKDashboardMultiplayerPickerDataSource *)self friendPlayers];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)playerCellForItemAtIndexPath:(id)a3 inCollectionView:(id)a4
{
  v6 = MEMORY[0x277D75C80];
  v7 = a4;
  v8 = a3;
  v9 = [v6 currentTraitCollection];
  v10 = [v9 preferredContentSizeCategory];

  if (UIContentSizeCategoryIsAccessibilityCategory(v10))
  {
    v11 = @"playerCellAX";
  }

  else
  {
    v11 = @"playerCell";
  }

  v12 = [v7 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:v8];

  v13 = [(GKDashboardMultiplayerPickerDataSource *)self playerForIndexPath:v8];
  playerStates = self->_playerStates;
  v15 = [v13 referenceKey];
  v16 = [(NSMutableDictionary *)playerStates objectForKey:v15];
  v17 = [v16 integerValue];

  [v12 setSelectable:v17 != 2];
  v18 = -[GKDashboardMultiplayerPickerDataSource numberOfItemsInSection:](self, "numberOfItemsInSection:", [v8 section]);
  v19 = [v8 section];
  v20 = [v8 item];

  v21 = v18 - 1;
  if (v19 == 1)
  {
    v22 = v20 != v21 || [(GKDashboardMultiplayerPickerDataSource *)self isShowingAddFriendsFooter]|| [(GKDashboardMultiplayerPickerDataSource *)self _canShowMoreFriends];
  }

  else
  {
    v22 = v20 < v21;
  }

  [v12 setLineVisible:v22];

  return v12;
}

- (id)playerGroupCellForItemAtIndexPath:(id)a3 inCollectionView:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x277D75C80];
  v8 = a4;
  v9 = [v7 currentTraitCollection];
  v10 = [v9 preferredContentSizeCategory];

  if (UIContentSizeCategoryIsAccessibilityCategory(v10))
  {
    +[GKDashboardPickerPlayerGroupCell reuseIdentifierAX];
  }

  else
  {
    +[GKDashboardPickerPlayerGroupCell reuseIdentifier];
  }
  v77 = ;
  v11 = [v8 dequeueReusableCellWithReuseIdentifier:v77 forIndexPath:v6];

  [v11 setGroupCellDelegate:self];
  v12 = [(GKCollectionDataSource *)self searchText];
  v76 = v11;
  [v11 setSearchText:v12];

  v13 = [(GKDashboardMultiplayerPickerDataSource *)self searchPlayersAndGroups];
  v14 = [v13 objectAtIndexedSubscript:{objc_msgSend(v6, "item")}];

  v15 = [(GKDashboardMultiplayerPickerDataSource *)self searchPlayersAndGroups];
  v75 = [v15 count];

  v16 = [v14 groupName];
  if (![(__CFString *)v16 length])
  {
    v17 = [v14 players];
    if ([v17 count] < 4)
    {
      if ([v17 count] < 3)
      {
        if ([v17 count] < 2)
        {
          if (![v17 count])
          {
LABEL_14:

            goto LABEL_15;
          }

          v24 = [v17 objectAtIndexedSubscript:0];
          v23 = [v24 displayNameWithOptions:0];
        }

        else
        {
          v74 = MEMORY[0x277CCACA8];
          v24 = GKGameCenterUIFrameworkBundle();
          v65 = GKGetLocalizedStringFromTableInBundle();
          v68 = [v17 objectAtIndexedSubscript:0];
          [v68 displayNameWithOptions:0];
          v31 = v71 = v10;
          v32 = [v17 objectAtIndexedSubscript:1];
          v33 = [v32 displayNameWithOptions:0];
          [v74 stringWithFormat:v65, v31, v33];
          v35 = v34 = v17;

          v23 = v35;
          v17 = v34;

          v10 = v71;
          v16 = v65;
        }
      }

      else
      {
        v64 = MEMORY[0x277CCACA8];
        v73 = GKGameCenterUIFrameworkBundle();
        v70 = GKGetLocalizedStringFromTableInBundle();
        v67 = [v17 objectAtIndexedSubscript:0];
        v60 = [v67 displayNameWithOptions:0];
        v62 = [v17 objectAtIndexedSubscript:1];
        v25 = [v62 displayNameWithOptions:0];
        v26 = [v17 objectAtIndexedSubscript:2];
        [v26 displayNameWithOptions:0];
        v28 = v27 = v10;
        [v64 stringWithFormat:v70, v60, v25, v28];
        v30 = v29 = v17;

        v10 = v27;
        v24 = v73;

        v23 = v30;
        v17 = v29;

        v16 = v70;
      }
    }

    else
    {
      v63 = MEMORY[0x277CCACA8];
      v72 = GKGameCenterUIFrameworkBundle();
      v57 = GKGetLocalizedStringFromTableInBundle();
      v66 = [v17 objectAtIndexedSubscript:0];
      v58 = [v66 displayNameWithOptions:0];
      v61 = [v17 objectAtIndexedSubscript:1];
      v56 = [v61 displayNameWithOptions:0];
      v59 = [v17 objectAtIndexedSubscript:2];
      v18 = [v59 displayNameWithOptions:0];
      [v17 objectAtIndexedSubscript:3];
      v19 = v69 = v10;
      v20 = [v19 displayNameWithOptions:0];
      [v63 stringWithFormat:v57, v58, v56, v18, v20];
      v22 = v21 = v17;

      v23 = v22;
      v17 = v21;

      v10 = v69;
      v24 = v72;

      v16 = v57;
    }

    v16 = v23;
    goto LABEL_14;
  }

LABEL_15:
  v36 = [v14 isNearby];
  v37 = [v14 players];
  v38 = [v37 count];

  if (v36)
  {
    if (v38)
    {
      v39 = [v14 players];
      v40 = [v39 objectAtIndexedSubscript:0];
      v41 = [v40 displayNameWithOptions:0];

      v16 = v41;
    }

    else
    {

      if (!*MEMORY[0x277D0C2A0])
      {
        v49 = GKOSLoggers();
      }

      if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
      {
        [GKDashboardMultiplayerPickerDataSource playerGroupCellForItemAtIndexPath:inCollectionView:];
      }

      v16 = 0;
    }

    v50 = GKGameCenterUIFrameworkBundle();
    v48 = GKGetLocalizedStringFromTableInBundle();
  }

  else if (v38 < 2)
  {
    v48 = 0;
  }

  else
  {
    v42 = MEMORY[0x277CCACA8];
    v43 = GKGameCenterUIFrameworkBundle();
    v44 = GKGetLocalizedStringFromTableInBundle();
    [v14 players];
    v45 = v6;
    v47 = v46 = v10;
    v48 = [v42 localizedStringWithFormat:v44, objc_msgSend(v47, "count")];

    v10 = v46;
    v6 = v45;
  }

  v51 = [v14 players];
  if (v16)
  {
    v52 = v16;
  }

  else
  {
    v52 = &stru_28612D290;
  }

  v53 = [v14 messagesGroupIdentifier];
  [v76 configureWithPlayers:v51 title:v52 subtitle:v48 messagesGroupIdentifier:v53 source:objc_msgSend(v14 playerSelectionProxy:{"source"), self}];

  v54 = [(GKDashboardMultiplayerPickerDataSource *)self shouldSelectPlayerGroup:v14];
  [v76 setSelected:v54];
  if (v54)
  {
    [(GKDashboardMultiplayerPickerDataSource *)self selectItemAtIndexPath:v6 animated:0 scrollPosition:0];
  }

  else
  {
    [(GKDashboardMultiplayerPickerDataSource *)self deselectItemAtIndexPath:v6 animated:0];
  }

  [v76 setLineVisible:{objc_msgSend(v6, "item") < v75 - 1}];

  return v76;
}

- (id)suggestionsCellForItemAtIndexPath:(id)a3 inCollectionView:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(GKCollectionDataSource *)self isSearching])
  {
    v8 = [(GKDashboardMultiplayerPickerDataSource *)self playerGroupCellForItemAtIndexPath:v6 inCollectionView:v7];
  }

  else
  {
    v9 = +[_TtC12GameCenterUI26GKSuggestionsContainerCell reuseIdentifier];
    v8 = [v7 dequeueReusableCellWithReuseIdentifier:v9 forIndexPath:v6];

    v10 = [(GKCollectionDataSource *)self presentationViewController];
    [v8 setPresentationViewController:v10];

    [v8 setMultiplayerPickerDataSource:self];
    v11 = [(GKDashboardMultiplayerPickerDataSource *)self nearbyPlayers];
    [v8 configureWithDelegate:self nearbyPlayers:v11];

    [(GKDashboardMultiplayerPickerDataSource *)self setSuggestionContainerCell:v8];
  }

  return v8;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v7 section])
  {
    v8 = [(GKDashboardMultiplayerPickerDataSource *)self suggestionsCellForItemAtIndexPath:v7 inCollectionView:v6];
    goto LABEL_8;
  }

  if ([v7 section] == 2)
  {
    v8 = [v6 dequeueReusableCellWithReuseIdentifier:@"playerPickerNearbyInstructionCell" forIndexPath:v7];
LABEL_8:
    v9 = v8;
    goto LABEL_9;
  }

  if ([v7 section] != 1 || -[GKDashboardMultiplayerPickerDataSource hasFriends](self, "hasFriends"))
  {
    v8 = [(GKDashboardMultiplayerPickerDataSource *)self playerCellForItemAtIndexPath:v7 inCollectionView:v6];
    goto LABEL_8;
  }

  v11 = +[_TtC12GameCenterUI32GKMultiplayerPickerNoFriendsCell reuseIdentifier];
  v9 = [v6 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:v7];

  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __80__GKDashboardMultiplayerPickerDataSource_collectionView_cellForItemAtIndexPath___block_invoke;
  v12[3] = &unk_279669FE0;
  objc_copyWeak(&v13, &location);
  [v9 setAddFriendsHandler:v12];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
LABEL_9:

  return v9;
}

void __80__GKDashboardMultiplayerPickerDataSource_collectionView_cellForItemAtIndexPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 pickerDatasourceDidSelectAddFriend:v3];
}

- (id)headerTextForSection:(int64_t)a3
{
  if ([(GKCollectionDataSource *)self isSearching]|| a3 > 1)
  {
    v5 = 0;
  }

  else
  {
    v4 = GKGameCenterUIFrameworkBundle();
    v5 = GKGetLocalizedStringFromTableInBundle();
  }

  return v5;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v7 = a3;
  v8 = a5;
  if ([(GKCollectionDataSource *)self isSearching])
  {
    goto LABEL_2;
  }

  v10 = [v8 section];
  if (!v10)
  {
    v14 = [(GKDashboardMultiplayerPickerDataSource *)self suggestedPlayerGroups];
    if ([v14 count])
    {
    }

    else
    {
      v15 = [(GKDashboardMultiplayerPickerDataSource *)self nearbyPlayers];
      v16 = [v15 count];

      if (!v16)
      {
        goto LABEL_16;
      }
    }

    +[_TtC12GameCenterUI26GKSuggestionsContainerCell defaultCellHeight];
    goto LABEL_14;
  }

  if (v10 != 1)
  {
    if (v10 == 2)
    {
      v11 = _TtC12GameCenterUI40GKMultiplayerPickerNearbyInstructionCell;
LABEL_9:
      [v7 bounds];
      [(__objc2_class *)v11 itemHeightFitting:v7 inTraitEnvironment:v12, v13];
      goto LABEL_14;
    }

LABEL_16:
    v18 = *MEMORY[0x277CBF3A8];
    v17 = *(MEMORY[0x277CBF3A8] + 8);
    goto LABEL_15;
  }

  if (![(GKDashboardMultiplayerPickerDataSource *)self hasFriends])
  {
    v11 = _TtC12GameCenterUI32GKMultiplayerPickerNoFriendsCell;
    goto LABEL_9;
  }

LABEL_2:
  [(GKDashboardMultiplayerPickerDataSource *)self playerCellHeightInCollectionView:v7];
LABEL_14:
  v17 = v9;
  v18 = 0.0;
LABEL_15:

  v19 = v18;
  v20 = v17;
  result.height = v20;
  result.width = v19;
  return result;
}

- (BOOL)canSelectPlayerGroup:(id)a3 atIndexPath:(id)a4 inCollectionView:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 players];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v23;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v14 += [(GKDashboardMultiplayerPickerDataSource *)self playerIsSelectable:*(*(&v22 + 1) + 8 * i)];
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  v17 = [(GKDashboardMultiplayerPickerDataSource *)self maxSelectable];
  v18 = [(GKDashboardMultiplayerPickerDataSource *)self selectedPlayers];
  v19 = [v18 count];

  if (!v14)
  {
    goto LABEL_17;
  }

  if (v14 == 1 && v17 == v19)
  {
    [(GKDashboardMultiplayerPickerDataSource *)self showSelectionLimitAlert];
LABEL_17:
    v20 = 0;
    goto LABEL_18;
  }

  v20 = 1;
  if (v14 >= 2 && v14 > v17 - v19)
  {
    [(GKDashboardMultiplayerPickerDataSource *)self expandPlayerGroup:v8 atIndexPath:v9 inCollectionView:v10];
    goto LABEL_17;
  }

LABEL_18:

  return v20;
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(GKDashboardMultiplayerPickerDataSource *)self selectionShouldSkipDelegateResponse])
  {
    if (![v7 section])
    {
      if (!-[GKCollectionDataSource isSearching](self, "isSearching") || (v15 = [v7 item], -[GKDashboardMultiplayerPickerDataSource searchPlayersAndGroups](self, "searchPlayersAndGroups"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "count"), v16, v15 >= v17))
      {
        v8 = 0;
        goto LABEL_19;
      }

      v18 = [(GKDashboardMultiplayerPickerDataSource *)self searchPlayersAndGroups];
      v10 = [v18 objectAtIndexedSubscript:{objc_msgSend(v7, "item")}];

      if ([v10 fromPeopleSuggester])
      {
        [(GKDashboardMultiplayerPickerDataSource *)self donateGroupToPeopleSuggester:v10];
      }

      v8 = [(GKDashboardMultiplayerPickerDataSource *)self canSelectPlayerGroup:v10 atIndexPath:v7 inCollectionView:v6];
LABEL_18:

      goto LABEL_19;
    }

    v9 = [(GKDashboardMultiplayerPickerDataSource *)self playerForIndexPath:v7];
    v10 = v9;
    if (!v9 || (playerStates = self->_playerStates, [v9 referenceKey], v12 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary objectForKey:](playerStates, "objectForKey:", v12), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "integerValue"), v13, v12, v14 == 2))
    {
LABEL_6:
      v8 = 0;
      goto LABEL_18;
    }

    if (self->_maxSelectable >= 1)
    {
      v19 = [(GKDashboardMultiplayerPickerDataSource *)self selectedPlayers];
      if ([v19 count] >= self->_maxSelectable)
      {
        v20 = [(GKDashboardMultiplayerPickerDataSource *)self selectedPlayers];
        v21 = [v20 containsObject:v10];

        if ((v21 & 1) == 0)
        {
          [(GKDashboardMultiplayerPickerDataSource *)self showSelectionLimitAlert];
          goto LABEL_6;
        }
      }

      else
      {
      }
    }

    v8 = [v7 section] != 2;
    goto LABEL_18;
  }

  v8 = 1;
LABEL_19:

  return v8;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (![(GKDashboardMultiplayerPickerDataSource *)self selectionShouldSkipDelegateResponse])
  {
    if ([v7 section])
    {
      v8 = [(GKDashboardMultiplayerPickerDataSource *)self playerForIndexPath:v7];
      v9 = v8;
      if (v8)
      {
        v19[0] = v8;
        v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __82__GKDashboardMultiplayerPickerDataSource_collectionView_didSelectItemAtIndexPath___block_invoke;
        v16[3] = &unk_27966A9A8;
        v16[4] = self;
        v17 = v6;
        v18 = v9;
        [(GKDashboardMultiplayerPickerDataSource *)self didSelectPlayers:v10 indexPath:v7 dataSourceIdentifier:@"GKPickerMainDataSourceIdentifier" completion:v16];
      }

      else
      {
        [(GKDashboardMultiplayerPickerDataSource *)self deselectItemAtIndexPath:v7 animated:0];
      }

      goto LABEL_10;
    }

    if ([(GKCollectionDataSource *)self isSearching])
    {
      v11 = [v7 item];
      v12 = [(GKDashboardMultiplayerPickerDataSource *)self searchPlayersAndGroups];
      v13 = [v12 count];

      if (v11 < v13)
      {
        v14 = [MEMORY[0x277D0C1F8] reporter];
        [v14 reportEvent:*MEMORY[0x277D0BE78] type:*MEMORY[0x277D0BCC8]];

        v9 = [(GKDashboardMultiplayerPickerDataSource *)self searchPlayersAndGroups];
        v15 = [v9 objectAtIndexedSubscript:{objc_msgSend(v7, "item")}];
        [(GKDashboardMultiplayerPickerDataSource *)self didSelectPlayerGroup:v15 indexPath:v7 dataSourceIdentifier:@"GKPickerMainDataSourceIdentifier" completion:0];

LABEL_10:
        goto LABEL_11;
      }
    }

    [(GKDashboardMultiplayerPickerDataSource *)self deselectItemAtIndexPath:v7 animated:0];
  }

LABEL_11:
}

void __82__GKDashboardMultiplayerPickerDataSource_collectionView_didSelectItemAtIndexPath___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) isSearching] & 1) == 0)
  {
    v2 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:0];
    v3 = [*(a1 + 40) cellForItemAtIndexPath:v2];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5[0] = *(a1 + 48);
      v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
      [v3 updateVisibleItemsWithPlayers:v4 excludedIndexPath:0];
    }
  }
}

- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (![(GKDashboardMultiplayerPickerDataSource *)self selectionShouldSkipDelegateResponse])
  {
    if ([v7 section])
    {
      v8 = [(GKDashboardMultiplayerPickerDataSource *)self playerForIndexPath:v7];
      v18[0] = v8;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __84__GKDashboardMultiplayerPickerDataSource_collectionView_didDeselectItemAtIndexPath___block_invoke;
      v15[3] = &unk_27966A9A8;
      v15[4] = self;
      v16 = v6;
      v17 = v8;
      v10 = v8;
      [(GKDashboardMultiplayerPickerDataSource *)self didDeselectPlayers:v9 indexPath:v7 dataSourceIdentifier:@"GKPickerMainDataSourceIdentifier" completion:v15];

LABEL_4:
      goto LABEL_8;
    }

    if ([(GKCollectionDataSource *)self isSearching])
    {
      v11 = [v7 item];
      v12 = [(GKDashboardMultiplayerPickerDataSource *)self searchPlayersAndGroups];
      v13 = [v12 count];

      if (v11 < v13)
      {
        v10 = [(GKDashboardMultiplayerPickerDataSource *)self searchPlayersAndGroups];
        v14 = [v10 objectAtIndexedSubscript:{objc_msgSend(v7, "item")}];
        [(GKDashboardMultiplayerPickerDataSource *)self didDeselectPlayerGroup:v14 indexPath:v7 dataSourceIdentifier:@"GKPickerMainDataSourceIdentifier" completion:0];

        goto LABEL_4;
      }
    }
  }

LABEL_8:
}

void __84__GKDashboardMultiplayerPickerDataSource_collectionView_didDeselectItemAtIndexPath___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) isSearching] & 1) == 0)
  {
    v2 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:0];
    v3 = [*(a1 + 40) cellForItemAtIndexPath:v2];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5[0] = *(a1 + 48);
      v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
      [v3 updateVisibleItemsWithPlayers:v4 excludedIndexPath:0];
    }
  }
}

- (BOOL)_canShowMoreFriends
{
  v3 = [(GKDashboardMultiplayerPickerDataSource *)self pickerOrigin];
  v4 = [(GKDashboardMultiplayerPickerDataSource *)self showsAllFriends];
  if (v3 != 1)
  {
    return !v4;
  }

  if (v4)
  {
    return 0;
  }

  v6 = [(GKDashboardMultiplayerPickerDataSource *)self friendPlayers];
  v7 = [v6 count];
  v5 = v7 > [(GKDashboardMultiplayerPickerDataSource *)self numberOfFriendsToShowInitially]+ 1;

  return v5;
}

- (BOOL)shouldSelectPlayerGroup:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  [a3 players];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([(GKDashboardMultiplayerPickerDataSource *)self playerIsSelectable:v10, v12])
        {
          if (![(GKDashboardMultiplayerPickerDataSource *)self playerIsSelected:v10])
          {
            goto LABEL_12;
          }

          v7 = 1;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
LABEL_12:
    v7 = 0;
  }

  return v7 & 1;
}

- (void)expandPlayerGroup:(id)a3 atIndexPath:(id)a4 inCollectionView:(id)a5
{
  v28 = a3;
  v6 = [MEMORY[0x277D0C1F8] reporter];
  [v6 reportEvent:*MEMORY[0x277D0BE78] type:*MEMORY[0x277D0BC98]];

  v7 = [v28 groupName];
  if (![v7 length])
  {
    v8 = [v28 players];
    v9 = [v8 objectAtIndexedSubscript:0];
    v10 = [v9 displayNameWithOptions:0];

    v7 = v10;
  }

  v11 = [v28 players];
  v12 = [v11 count];

  if (v12 < 2)
  {
    v17 = 0;
  }

  else
  {
    v13 = MEMORY[0x277CCACA8];
    v14 = GKGameCenterUIFrameworkBundle();
    v15 = GKGetLocalizedStringFromTableInBundle();
    v16 = [v28 players];
    v17 = [v13 localizedStringWithFormat:v15, objc_msgSend(v16, "count")];
  }

  v18 = [_TtC12GameCenterUI29GKExpandedGroupViewController alloc];
  v19 = GKGameCenterUIFrameworkBundle();
  v20 = [(GKExpandedGroupViewController *)v18 initWithNibName:@"GKExpandedGroupViewController_iOS" bundle:v19];

  [(GKExpandedGroupViewController *)v20 setModalPresentationStyle:8];
  v21 = *MEMORY[0x277CBF3A0];
  v22 = *(MEMORY[0x277CBF3A0] + 8);
  v23 = *(MEMORY[0x277CBF3A0] + 16);
  v24 = *(MEMORY[0x277CBF3A0] + 24);
  v25 = [(GKExpandedGroupViewController *)v20 view];
  [v25 setFrame:{v21, v22, v23, v24}];

  v26 = [v28 players];
  [(GKExpandedGroupViewController *)v20 configureWithPlayers:v26 groupName:v7 caption:v17 playerSelectionProxy:self];

  v27 = [(GKCollectionDataSource *)self presentationViewController];
  [v27 presentViewController:v20 animated:1 completion:0];
}

- (void)updatePlayerGroups:(id)a3 forPlayers:(id)a4 excludedIndexPath:(id)a5
{
  v32 = self;
  v47 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v36 = a4;
  v8 = a5;
  v9 = [v7 count];
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:v9];
  if (v9 >= 1)
  {
    for (i = 0; i != v9; ++i)
    {
      v12 = [MEMORY[0x277CCAA70] indexPathForItem:i inSection:{0, v32}];
      [v10 addObject:v12];
    }
  }

  v34 = [MEMORY[0x277CBEB18] array];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v10;
  v13 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v42;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v42 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v41 + 1) + 8 * j);
        if ([v17 compare:v8])
        {
          v18 = [v7 objectAtIndexedSubscript:{objc_msgSend(v17, "item")}];
          v19 = [v18 players];

          v20 = [MEMORY[0x277CBEB98] setWithArray:v19];
          v21 = [MEMORY[0x277CBEB98] setWithArray:v36];
          if ([v20 intersectsSet:v21])
          {
            [v34 addObject:v17];
          }
        }
      }

      v14 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v14);
  }

  v22 = v34;
  if ([v34 count])
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v23 = v34;
    v24 = [v23 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v38;
      do
      {
        for (k = 0; k != v25; ++k)
        {
          if (*v38 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v37 + 1) + 8 * k);
          v29 = [v28 item];
          if (v29 < [v7 count])
          {
            v30 = [v7 objectAtIndexedSubscript:{objc_msgSend(v28, "item")}];
            v31 = [v33 shouldSelectPlayerGroup:v30];

            if (v31)
            {
              [v33 selectItemAtIndexPath:v28 animated:0 scrollPosition:0];
            }

            else
            {
              [v33 deselectItemAtIndexPath:v28 animated:0];
            }
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v25);
    }

    v22 = v34;
  }
}

- (void)updateVisibleItemsWithPlayers:(id)a3 indexPath:(id)a4 dataSourceIdentifier:(id)a5 completion:(id)a6
{
  v67 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([(GKCollectionDataSource *)self isSearching])
  {
    v14 = [(GKDashboardMultiplayerPickerDataSource *)self searchPlayersAndGroups];
    [(GKDashboardMultiplayerPickerDataSource *)self updatePlayerGroups:v14 forPlayers:v10 excludedIndexPath:v11];

    if (v13)
    {
      goto LABEL_43;
    }

    goto LABEL_44;
  }

  v44 = v13;
  v15 = [(GKDashboardMultiplayerPickerDataSource *)self candidateIndexPaths];
  v45 = [MEMORY[0x277CBEB18] array];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v15;
  v16 = [obj countByEnumeratingWithState:&v60 objects:v66 count:16];
  if (!v16)
  {
    goto LABEL_40;
  }

  v17 = v16;
  v18 = *v61;
  v46 = v11;
  v47 = v10;
  v48 = v12;
  v49 = *v61;
  do
  {
    v19 = 0;
    v50 = v17;
    do
    {
      if (*v61 != v18)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v60 + 1) + 8 * v19);
      if (![v20 isEqual:v11] || (objc_msgSend(v12, "isEqualToString:", @"GKPickerMainDataSourceIdentifier") & 1) == 0)
      {
        if ([(GKCollectionDataSource *)self isSearching])
        {
          [v11 section];
          goto LABEL_38;
        }

        if ([v20 section] == 1)
        {
          v21 = [v20 item];
          v22 = [(GKDashboardMultiplayerPickerDataSource *)self friendPlayers];
          v23 = [v22 count];

          v24 = v21 >= v23;
          v18 = v49;
          v17 = v50;
          if (!v24)
          {
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v25 = v10;
            v26 = [v25 countByEnumeratingWithState:&v56 objects:v65 count:16];
            if (v26)
            {
              v27 = v26;
              v28 = *v57;
LABEL_17:
              v29 = 0;
              while (1)
              {
                if (*v57 != v28)
                {
                  objc_enumerationMutation(v25);
                }

                v30 = *(*(&v56 + 1) + 8 * v29);
                v31 = [(GKDashboardMultiplayerPickerDataSource *)self friendPlayers];
                v32 = [v31 objectAtIndexedSubscript:{objc_msgSend(v20, "item")}];
                LODWORD(v30) = [v30 isEqual:v32];

                if (v30)
                {
                  goto LABEL_35;
                }

                if (v27 == ++v29)
                {
                  v27 = [v25 countByEnumeratingWithState:&v56 objects:v65 count:16];
                  if (v27)
                  {
                    goto LABEL_17;
                  }

                  goto LABEL_36;
                }
              }
            }

            goto LABEL_36;
          }
        }

        if ([v20 section] == 2)
        {
          v33 = [v20 item];
          v34 = [(GKDashboardMultiplayerPickerDataSource *)self nearbyPlayers];
          v35 = [v34 count];

          v24 = v33 >= v35;
          v17 = v50;
          if (!v24)
          {
            v54 = 0u;
            v55 = 0u;
            v52 = 0u;
            v53 = 0u;
            v25 = v10;
            v36 = [v25 countByEnumeratingWithState:&v52 objects:v64 count:16];
            if (v36)
            {
              v37 = v36;
              v38 = *v53;
LABEL_28:
              v39 = 0;
              while (1)
              {
                if (*v53 != v38)
                {
                  objc_enumerationMutation(v25);
                }

                v40 = *(*(&v52 + 1) + 8 * v39);
                v41 = [(GKDashboardMultiplayerPickerDataSource *)self nearbyPlayers];
                v42 = [v41 objectAtIndexedSubscript:{objc_msgSend(v20, "item")}];
                LODWORD(v40) = [v40 isEqual:v42];

                if (v40)
                {
                  break;
                }

                if (v37 == ++v39)
                {
                  v37 = [v25 countByEnumeratingWithState:&v52 objects:v64 count:16];
                  v12 = v48;
                  if (v37)
                  {
                    goto LABEL_28;
                  }

                  goto LABEL_34;
                }
              }

LABEL_35:
              [v45 addObject:v20];
LABEL_36:

              v11 = v46;
              v10 = v47;
              v12 = v48;
            }

            else
            {
LABEL_34:

              v11 = v46;
              v10 = v47;
            }

            v18 = v49;
            v17 = v50;
          }
        }
      }

LABEL_38:
      ++v19;
    }

    while (v19 != v17);
    v17 = [obj countByEnumeratingWithState:&v60 objects:v66 count:16];
  }

  while (v17);
LABEL_40:

  if ([v45 count])
  {
    v43 = [(GKDashboardMultiplayerPickerDataSource *)self collectionView];
    [(GKDashboardMultiplayerPickerDataSource *)self updateSelectionStateForCollectionView:v43 indexPaths:v45];
  }

  v13 = v44;
  if (v44)
  {
LABEL_43:
    v13[2](v13);
  }

LABEL_44:
}

- (void)selectItemAtIndexPath:(id)a3 animated:(BOOL)a4 scrollPosition:(unint64_t)a5
{
  v6 = a4;
  v8 = a3;
  [(GKDashboardMultiplayerPickerDataSource *)self setSelectionShouldSkipDelegateResponse:1];
  v9 = [(GKDashboardMultiplayerPickerDataSource *)self collectionView];
  [v9 selectItemAtIndexPath:v8 animated:v6 scrollPosition:a5];

  [(GKDashboardMultiplayerPickerDataSource *)self setSelectionShouldSkipDelegateResponse:0];
}

- (void)deselectItemAtIndexPath:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(GKDashboardMultiplayerPickerDataSource *)self setSelectionShouldSkipDelegateResponse:1];
  v7 = [(GKDashboardMultiplayerPickerDataSource *)self collectionView];
  [v7 deselectItemAtIndexPath:v6 animated:v4];

  [(GKDashboardMultiplayerPickerDataSource *)self setSelectionShouldSkipDelegateResponse:0];
}

- (void)updateSelectionStateForCollectionView:(id)a3 indexPaths:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = a4;
  v7 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    v21 = *v25;
    do
    {
      v10 = 0;
      v22 = v8;
      do
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v24 + 1) + 8 * v10);
        v12 = [(GKDashboardMultiplayerPickerDataSource *)self playerForIndexPath:v11];
        v13 = [v6 cellForItemAtIndexPath:v11];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v6;
          v15 = v13;
          v16 = self;
          playerStates = self->_playerStates;
          v18 = [v12 referenceKey];
          v19 = [(NSMutableDictionary *)playerStates objectForKey:v18];
          v20 = [v19 integerValue];

          [v15 setSelectable:v20 != 2];
          [v15 setSelected:v20 == 1];
          if ([v15 isSelected])
          {
            [(GKDashboardMultiplayerPickerDataSource *)v16 selectItemAtIndexPath:v11 animated:0 scrollPosition:0];
          }

          else
          {
            [(GKDashboardMultiplayerPickerDataSource *)v16 deselectItemAtIndexPath:v11 animated:0];
          }

          self = v16;

          v6 = v14;
          v9 = v21;
          v8 = v22;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);
  }
}

- (double)playerCellHeightInCollectionView:(id)a3
{
  v3 = [MEMORY[0x277D75C80] currentTraitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (UIContentSizeCategoryIsAccessibilityCategory(v4))
  {
    if ([v4 isEqualToString:*MEMORY[0x277D767E8]])
    {
      v5 = 362.0;
      goto LABEL_12;
    }

    if ([v4 isEqualToString:*MEMORY[0x277D767F0]])
    {
      v5 = 332.0;
      goto LABEL_12;
    }

    if ([v4 isEqualToString:*MEMORY[0x277D767F8]])
    {
      v5 = 282.0;
      goto LABEL_12;
    }

    v6 = [v4 isEqualToString:*MEMORY[0x277D76800]] == 0;
    v7 = 202.0;
    v8 = 252.0;
  }

  else
  {
    if ([v4 isEqualToString:*MEMORY[0x277D76818]])
    {
      v5 = 78.0;
      goto LABEL_12;
    }

    v6 = [v4 isEqualToString:*MEMORY[0x277D76820]] == 0;
    v7 = 60.0;
    v8 = 78.0;
  }

  if (v6)
  {
    v5 = v7;
  }

  else
  {
    v5 = v8;
  }

LABEL_12:

  return v5;
}

- (id)attributedFriendFilterTitle
{
  [(GKDashboardMultiplayerPickerDataSource *)self friendSortFilterScope];
  v2 = GKGameCenterUIFrameworkBundle();
  v3 = GKGetLocalizedStringFromTableInBundle();

  v4 = [v3 stringByAppendingString:@" "];

  v5 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v4];
  v6 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.down"];
  v7 = [MEMORY[0x277D74270] textAttachmentWithImage:v6];
  v8 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v7];
  [v5 appendAttributedString:v8];

  return v5;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isEqualToString:*MEMORY[0x277D767D8]])
  {
    v47 = v8;
    v11 = [v8 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:@"friendsSectionHeaderReuseIdentifier" forIndexPath:v10];
    v12 = -[GKDashboardMultiplayerPickerDataSource headerTextForSection:](self, "headerTextForSection:", [v10 section]);
    [v11 setTitle:v12];

    v13 = [(GKDashboardMultiplayerPickerDataSource *)self cornerMaskForSectionHeader];
    v14 = *MEMORY[0x277CDA138];
    v15 = [MEMORY[0x277D75348] whiteColor];
    v16 = [v15 colorWithAlphaComponent:0.08];

    v17 = [v11 layer];
    [v17 setMaskedCorners:v13];

    v18 = [v11 layer];
    [v18 setCornerRadius:14.0];

    v19 = [v11 layer];
    [v19 setCornerCurve:v14];

    [v11 setBackgroundColor:v16];
    v20 = *MEMORY[0x277CDA5E8];
    v21 = [v11 layer];
    [v21 setCompositingFilter:v20];

    v22 = [v11 backgroundPlatterView];
    v23 = [v22 layer];
    [v23 setMaskedCorners:v13];

    v24 = [v11 backgroundPlatterView];
    v25 = [v24 layer];
    [v25 setCornerRadius:14.0];

    v26 = [v11 backgroundPlatterView];
    v27 = [v26 layer];
    [v27 setCornerCurve:v14];

    v28 = [v11 backgroundPlatterView];
    [v28 setBackgroundColor:v16];

    v29 = [v11 backgroundPlatterView];
    v30 = [v29 layer];
    [v30 setCompositingFilter:v20];

    v31 = [MEMORY[0x277D75348] secondaryLabelColor];
    v32 = [v11 titleLabel];
    [v32 setTextColor:v31];

    v33 = [v11 titleLabel];
    v34 = [v33 layer];
    [v34 setCompositingFilter:v20];

    v35 = [MEMORY[0x277D74300] _gkPreferredFontForTextStyle:*MEMORY[0x277D76968] symbolicTraits:2];
    [v11 setFont:v35];
    if ([v10 section] == 1)
    {
      [v11 setButtonTarget:self];
      v36 = [(GKDashboardMultiplayerPickerDataSource *)self delegate];
      v37 = [v36 createSortPickerMenu];
      [v11 setButtonMenu:v37];

      v38 = [(GKDashboardMultiplayerPickerDataSource *)self attributedFriendFilterTitle];
      [v11 setAttributedButtonTitle:v38];

      [v11 setButtonHidden:0];
      v39 = [MEMORY[0x277D75348] whiteColor];
      [v11 setTintColor:v39];
    }

    else
    {
      [v11 setButtonHidden:1];
    }

    [v11 setAccessibilityIdentifier:@"GKDashBoardMultiplayerPickerView.SectionHeader"];
    v45 = [v11 titleLabel];
    [v45 setAccessibilityIdentifier:@"GKDashBoardMultiplayerPickerView.SectionHeaderTitle"];

    v8 = v47;
    goto LABEL_14;
  }

  if ([v9 isEqualToString:*MEMORY[0x277D767D0]] && -[GKDashboardMultiplayerPickerDataSource _canShowMoreFriends](self, "_canShowMoreFriends") && objc_msgSend(v10, "section") == 1)
  {
    v11 = [v8 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:@"friendsSectionFooterShowMoreFriendsReuseIdentifier" forIndexPath:v10];
    objc_initWeak(&location, self);
    objc_initWeak(&from, v8);
    v40 = GKGameCenterUIFrameworkBundle();
    v41 = GKGetLocalizedStringFromTableInBundle();
    [v11 setShowMoreText:v41];

    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __103__GKDashboardMultiplayerPickerDataSource_collectionView_viewForSupplementaryElementOfKind_atIndexPath___block_invoke;
    v50[3] = &unk_27966D400;
    objc_copyWeak(&v51, &location);
    objc_copyWeak(&v52, &from);
    [v11 setActionHandler:v50];
    [v11 setHidden:0];
    objc_destroyWeak(&v52);
    objc_destroyWeak(&v51);
    p_from = &from;
LABEL_10:
    objc_destroyWeak(p_from);
    objc_destroyWeak(&location);

    goto LABEL_14;
  }

  v43 = [(GKDashboardMultiplayerPickerDataSource *)self isShowingAddFriendsFooter];
  v44 = [v8 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:@"friendsSectionFooterPlayWithFriendsReuseIdentifier" forIndexPath:v10];
  v11 = v44;
  if (v43)
  {
    v11 = v44;
    objc_initWeak(&location, self);
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __103__GKDashboardMultiplayerPickerDataSource_collectionView_viewForSupplementaryElementOfKind_atIndexPath___block_invoke_2;
    v48[3] = &unk_279669FE0;
    objc_copyWeak(&v49, &location);
    [v11 setAddFriendsHandler:v48];
    [v11 setHidden:{objc_msgSend(v10, "section") != 1}];
    p_from = &v49;
    goto LABEL_10;
  }

  [v44 setHidden:1];
LABEL_14:

  return v11;
}

void __103__GKDashboardMultiplayerPickerDataSource_collectionView_viewForSupplementaryElementOfKind_atIndexPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setShowsAllFriends:1];
    objc_copyWeak(&to, (a1 + 40));
    v4 = objc_loadWeakRetained(&to);
    v5 = [MEMORY[0x277CCAA78] indexSetWithIndex:1];
    [v4 reloadSections:v5];

    v6 = objc_loadWeakRetained(&to);
    v7 = [v6 superview];
    [v7 setNeedsFocusUpdate];

    objc_destroyWeak(&to);
  }
}

void __103__GKDashboardMultiplayerPickerDataSource_collectionView_viewForSupplementaryElementOfKind_atIndexPath___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 pickerDatasourceDidSelectAddFriend:v3];
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (!a5 || (+[GKDashboardButtonSectionHeaderView defaultHeight], v11 = v10, [(GKCollectionDataSource *)self isSearching]) || (v15 = [(GKDashboardMultiplayerPickerDataSource *)self nearbyOnly], a5 == 2) || v15 || (v12 = 0.0, a5 == 1) && ![(GKDashboardMultiplayerPickerDataSource *)self hasFriends])
  {
    v12 = *MEMORY[0x277CBF3A8];
    v11 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v13 = v12;
  v14 = v11;
  result.height = v14;
  result.width = v13;
  return result;
}

- (CGSize)boundingSizeForItemsInCollectionView:(id)a3
{
  v3 = a3;
  [v3 bounds];
  v5 = v4;
  v6 = [v3 collectionViewLayout];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 sectionInset];
    v5 = v5 - v7 - v8;
  }

  [v3 bounds];
  v10 = v9;

  v11 = v5;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForFooterInSection:(int64_t)a5
{
  v7 = a3;
  [(GKDashboardMultiplayerPickerDataSource *)self boundingSizeForItemsInCollectionView:v7];
  v10 = 0.0;
  if (a5 == 1)
  {
    v11 = v8;
    v12 = v9;
    if (![(GKDashboardMultiplayerPickerDataSource *)self nearbyOnly]&& ![(GKCollectionDataSource *)self isSearching])
    {
      if ([(GKDashboardMultiplayerPickerDataSource *)self _canShowMoreFriends])
      {
        v13 = [MEMORY[0x277D75C80] currentTraitCollection];
        v14 = [v13 preferredContentSizeCategory];

        if (UIContentSizeCategoryIsAccessibilityCategory(v14))
        {
          if ([v14 isEqualToString:*MEMORY[0x277D767E8]])
          {
            v10 = 100.0;
          }

          else
          {
            v10 = 50.0;
          }

          if ([v14 isEqualToString:*MEMORY[0x277D767F0]])
          {
            v10 = v10 + 40.0;
          }

          if ([v14 isEqualToString:*MEMORY[0x277D767F8]])
          {
            v10 = v10 + 30.0;
          }

          if ([v14 isEqualToString:*MEMORY[0x277D76800]])
          {
            v10 = v10 + 20.0;
          }

          if ([v14 isEqualToString:*MEMORY[0x277D76808]])
          {
            v10 = v10 + 10.0;
          }
        }

        else
        {
          v10 = 50.0;
        }
      }

      else if ([(GKDashboardMultiplayerPickerDataSource *)self hasFriends]&& [(GKDashboardMultiplayerPickerDataSource *)self isShowingAddFriendsFooter])
      {
        [_TtC12GameCenterUI42GKMultiplayerPickerAddFriendsSupplementary preferredHeightFitting:v7 inTraitEnvironment:v11, v12];
        v10 = v15;
      }
    }
  }

  v16 = 0.0;
  v17 = v10;
  result.height = v17;
  result.width = v16;
  return result;
}

- (void)showSelectionLimitAlert
{
  if (![(GKDashboardMultiplayerPickerDataSource *)self selectionShouldSkipDelegateResponse])
  {
    v14 = objc_opt_new();
    v3 = GKGameCenterUIFrameworkBundle();
    v4 = GKGetLocalizedStringFromTableInBundle();
    [v14 setTitle:v4];

    v5 = MEMORY[0x277CCACA8];
    v6 = GKGameCenterUIFrameworkBundle();
    v7 = GKGetLocalizedStringFromTableInBundle();
    v8 = [v5 localizedStringWithFormat:v7, -[GKDashboardMultiplayerPickerDataSource maxSelectable](self, "maxSelectable")];
    [v14 setMessage:v8];

    v9 = MEMORY[0x277D750F8];
    v10 = GKGameCenterUIFrameworkBundle();
    v11 = GKGetLocalizedStringFromTableInBundle();
    v12 = [v9 actionWithTitle:v11 style:0 handler:0];
    [v14 addAction:v12];

    v13 = [(GKCollectionDataSource *)self presentationViewController];
    [v13 presentViewController:v14 animated:1 completion:0];
  }
}

- (void)didRemoveRecipientPlayers:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAA70] indexPathForItem:-1 inSection:-1];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__GKDashboardMultiplayerPickerDataSource_didRemoveRecipientPlayers___block_invoke;
  v7[3] = &unk_279669E48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(GKDashboardMultiplayerPickerDataSource *)self didDeselectPlayers:v6 indexPath:v5 dataSourceIdentifier:@"GKPickerMainDataSourceIdentifier" completion:v7];
}

void __68__GKDashboardMultiplayerPickerDataSource_didRemoveRecipientPlayers___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isSearching] & 1) == 0)
  {
    v4 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:0];
    v2 = [*(a1 + 32) collectionView];
    v3 = [v2 cellForItemAtIndexPath:v4];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v3 updateVisibleItemsWithPlayers:*(a1 + 40) excludedIndexPath:0];
    }
  }
}

- (void)didAddRecipientPlayers:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAA70] indexPathForItem:-1 inSection:-1];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__GKDashboardMultiplayerPickerDataSource_didAddRecipientPlayers___block_invoke;
  v7[3] = &unk_279669E48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(GKDashboardMultiplayerPickerDataSource *)self didSelectPlayers:v6 indexPath:v5 dataSourceIdentifier:@"GKPickerMainDataSourceIdentifier" completion:v7];
}

void __65__GKDashboardMultiplayerPickerDataSource_didAddRecipientPlayers___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isSearching] & 1) == 0)
  {
    v4 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:0];
    v2 = [*(a1 + 32) collectionView];
    v3 = [v2 cellForItemAtIndexPath:v4];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v3 updateVisibleItemsWithPlayers:*(a1 + 40) excludedIndexPath:0];
    }
  }
}

- (void)didPickContact:(id)a3
{
  v25[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D0C170];
  v5 = a3;
  v6 = [[v4 alloc] initWithContact:v5];

  v7 = [(GKDashboardMultiplayerPickerDataSource *)self contactPlayers];
  v8 = [v7 containsObject:v6];

  if ((v8 & 1) == 0)
  {
    v9 = [(GKDashboardMultiplayerPickerDataSource *)self contactPlayers];
    [v9 addObject:v6];
  }

  v10 = [(GKDashboardMultiplayerPickerDataSource *)self playerStates];
  v11 = [v6 referenceKey];
  v12 = [v10 objectForKeyedSubscript:v11];

  if (!v12)
  {
    v13 = [(GKDashboardMultiplayerPickerDataSource *)self playerStates];
    v14 = [v6 referenceKey];
    v12 = &unk_286189348;
    [v13 setObject:&unk_286189348 forKeyedSubscript:v14];
  }

  if ([v12 integerValue] == 1)
  {
    v15 = [(GKDashboardMultiplayerPickerDataSource *)self delegate];
    v25[0] = v6;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    [v15 highlightAlreadySelectedPlayers:v16 inGroup:0];
  }

  else if (![v12 integerValue])
  {
    v17 = [(GKDashboardMultiplayerPickerDataSource *)self maxSelectable];
    v18 = [(GKDashboardMultiplayerPickerDataSource *)self selectedPlayers];
    v19 = [v18 count];

    if (v17 == v19)
    {
      [(GKDashboardMultiplayerPickerDataSource *)self showSelectionLimitAlert];
    }

    else
    {
      v20 = [MEMORY[0x277CCAA70] indexPathForItem:-1 inSection:-1];
      v24 = v6;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __57__GKDashboardMultiplayerPickerDataSource_didPickContact___block_invoke;
      v22[3] = &unk_279669E48;
      v22[4] = self;
      v23 = v6;
      [(GKDashboardMultiplayerPickerDataSource *)self didSelectPlayers:v21 indexPath:v20 dataSourceIdentifier:@"GKPickerMainDataSourceIdentifier" completion:v22];
    }
  }
}

void __57__GKDashboardMultiplayerPickerDataSource_didPickContact___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) isSearching] & 1) == 0)
  {
    v2 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:0];
    v3 = [*(a1 + 32) collectionView];
    v4 = [v3 cellForItemAtIndexPath:v2];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6[0] = *(a1 + 40);
      v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
      [v4 updateVisibleItemsWithPlayers:v5 excludedIndexPath:0];
    }
  }
}

- (int64_t)getSelectedPlayerCount
{
  v2 = [(GKDashboardMultiplayerPickerDataSource *)self selectedPlayers];
  v3 = [v2 count];

  return v3;
}

- (void)didSelectPlayerGroup:(id)a3 indexPath:(id)a4 dataSourceIdentifier:(id)a5 completion:(id)a6
{
  v40 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v32 = a4;
  v31 = a5;
  v30 = a6;
  [MEMORY[0x277CBEB18] array];
  v34 = v33 = v10;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v11 = [v10 players];
  v12 = [v11 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v36;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v36 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v35 + 1) + 8 * i);
        v17 = [(GKDashboardMultiplayerPickerDataSource *)self playerStates];
        v18 = [v16 referenceKey];
        v19 = [v17 objectForKeyedSubscript:v18];
        v20 = [v19 integerValue];

        if (!v20)
        {
          [v34 addObject:v16];
          v21 = [(GKDashboardMultiplayerPickerDataSource *)self playerStates];
          v22 = [v16 referenceKey];
          [v21 setObject:&unk_286189360 forKeyedSubscript:v22];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v13);
  }

  if ([v33 fromPeopleSuggester])
  {
    v23 = [v33 players];
    v24 = [v23 count];

    if (v24 >= 2)
    {
      v25 = [(GKDashboardMultiplayerPickerDataSource *)self selectedMessageGroups];

      if (!v25)
      {
        v26 = objc_opt_new();
        [(GKDashboardMultiplayerPickerDataSource *)self setSelectedMessageGroups:v26];
      }

      v27 = [(GKDashboardMultiplayerPickerDataSource *)self selectedMessageGroups];
      [v27 addObject:v33];
    }
  }

  v28 = [(GKDashboardMultiplayerPickerDataSource *)self delegate];
  [v28 pickerDatasource:self didSelectPlayers:v34 inGroup:v33];

  v29 = [v33 players];
  [(GKDashboardMultiplayerPickerDataSource *)self updateVisibleItemsWithPlayers:v29 indexPath:v32 dataSourceIdentifier:v31 completion:v30];
}

- (void)didSelectPlayers:(id)a3 indexPath:(id)a4 dataSourceIdentifier:(id)a5 completion:(id)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v26 = a4;
  v25 = a5;
  v24 = a6;
  v27 = [MEMORY[0x277CBEB18] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    do
    {
      v15 = 0;
      do
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v28 + 1) + 8 * v15);
        v17 = [(GKDashboardMultiplayerPickerDataSource *)self playerStates];
        v18 = [v16 referenceKey];
        v19 = [v17 objectForKeyedSubscript:v18];
        v20 = [v19 integerValue];

        if (!v20)
        {
          [v27 addObject:v16];
          v21 = [(GKDashboardMultiplayerPickerDataSource *)self playerStates];
          v22 = [v16 referenceKey];
          [v21 setObject:&unk_286189360 forKeyedSubscript:v22];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v13);
  }

  v23 = [(GKDashboardMultiplayerPickerDataSource *)self delegate];
  [v23 pickerDatasource:self didSelectPlayers:v27 inGroup:0];

  [(GKDashboardMultiplayerPickerDataSource *)self updateVisibleItemsWithPlayers:v11 indexPath:v26 dataSourceIdentifier:v25 completion:v24];
}

- (void)didDeselectPlayerGroup:(id)a3 indexPath:(id)a4 dataSourceIdentifier:(id)a5 completion:(id)a6
{
  v37 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v29 = a4;
  v28 = a5;
  v27 = a6;
  v11 = [(GKDashboardMultiplayerPickerDataSource *)self selectedMessageGroups];
  [v11 removeObject:v10];

  [MEMORY[0x277CBEB18] array];
  v31 = v30 = v10;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v12 = [v10 players];
  v13 = [v12 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v33;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v32 + 1) + 8 * i);
        v18 = [(GKDashboardMultiplayerPickerDataSource *)self playerStates];
        v19 = [v17 referenceKey];
        v20 = [v18 objectForKeyedSubscript:v19];
        v21 = [v20 integerValue];

        if (v21 == 1)
        {
          [v31 addObject:v17];
          v22 = [(GKDashboardMultiplayerPickerDataSource *)self playerStates];
          v23 = [v17 referenceKey];
          [v22 setObject:&unk_286189348 forKeyedSubscript:v23];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v14);
  }

  v24 = [(GKDashboardMultiplayerPickerDataSource *)self delegate];
  [v24 pickerDatasource:self didDeselectPlayers:v31 inGroup:v30];

  [(GKDashboardMultiplayerPickerDataSource *)self updateMessageGroupsPlayerSelection];
  v25 = [v30 players];
  [(GKDashboardMultiplayerPickerDataSource *)self updateVisibleItemsWithPlayers:v25 indexPath:v29 dataSourceIdentifier:v28 completion:v27];

  if ([v30 isNearby])
  {
    v26 = [MEMORY[0x277D0C1F8] reporter];
    [v26 reportEvent:*MEMORY[0x277D0BE78] type:*MEMORY[0x277D0BCB0]];
  }
}

- (void)didDeselectPlayers:(id)a3 indexPath:(id)a4 dataSourceIdentifier:(id)a5 completion:(id)a6
{
  v52 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v40 = a4;
  v39 = a5;
  v38 = a6;
  if ([v10 count] >= 2)
  {
    v11 = [(GKDashboardMultiplayerPickerDataSource *)self selectedMessageGroups];
    v12 = [v11 count];

    if (v12)
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v13 = [(GKDashboardMultiplayerPickerDataSource *)self selectedMessageGroups];
      v14 = [v13 countByEnumeratingWithState:&v46 objects:v51 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v47;
LABEL_5:
        v17 = 0;
        while (1)
        {
          if (*v47 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v46 + 1) + 8 * v17);
          v19 = MEMORY[0x277CBEB98];
          v20 = [v18 players];
          v21 = [v19 setWithArray:v20];

          v22 = [MEMORY[0x277CBEB98] setWithArray:v10];
          if ([v21 isEqualToSet:v22])
          {
            break;
          }

          if (v15 == ++v17)
          {
            v15 = [v13 countByEnumeratingWithState:&v46 objects:v51 count:16];
            if (v15)
            {
              goto LABEL_5;
            }

            goto LABEL_14;
          }
        }

        v23 = v18;

        if (!v23)
        {
          goto LABEL_15;
        }

        v24 = [(GKDashboardMultiplayerPickerDataSource *)self selectedMessageGroups];
        [v24 removeObject:v23];

        v13 = v23;
      }

LABEL_14:
    }
  }

LABEL_15:
  v41 = [MEMORY[0x277CBEB18] array];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v25 = v10;
  v26 = [v25 countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v43;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v43 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v42 + 1) + 8 * i);
        v31 = [(GKDashboardMultiplayerPickerDataSource *)self playerStates];
        v32 = [v30 referenceKey];
        v33 = [v31 objectForKeyedSubscript:v32];
        v34 = [v33 integerValue];

        if (v34 == 1)
        {
          [v41 addObject:v30];
          v35 = [(GKDashboardMultiplayerPickerDataSource *)self playerStates];
          v36 = [v30 referenceKey];
          [v35 setObject:&unk_286189348 forKeyedSubscript:v36];
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v27);
  }

  v37 = [(GKDashboardMultiplayerPickerDataSource *)self delegate];
  [v37 pickerDatasource:self didDeselectPlayers:v41 inGroup:0];

  [(GKDashboardMultiplayerPickerDataSource *)self updateMessageGroupsPlayerSelection];
  [(GKDashboardMultiplayerPickerDataSource *)self updateVisibleItemsWithPlayers:v25 indexPath:v40 dataSourceIdentifier:v39 completion:v38];
}

- (void)updateMessageGroupsPlayerSelection
{
  v48 = *MEMORY[0x277D85DE8];
  v27 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = [(GKDashboardMultiplayerPickerDataSource *)self selectedMessageGroups];
  v29 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v29)
  {
    v28 = *v42;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v42 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v41 + 1) + 8 * i);
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v30 = v4;
        v5 = [v4 players];
        v6 = [v5 countByEnumeratingWithState:&v37 objects:v46 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v38;
          while (2)
          {
            for (j = 0; j != v7; ++j)
            {
              if (*v38 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v37 + 1) + 8 * j);
              v11 = [(GKDashboardMultiplayerPickerDataSource *)self playerStates];
              v12 = [v10 referenceKey];
              v13 = [v11 objectForKeyedSubscript:v12];
              v14 = [v13 integerValue];

              if (!v14)
              {
                [v27 addObject:v30];
                goto LABEL_16;
              }
            }

            v7 = [v5 countByEnumeratingWithState:&v37 objects:v46 count:16];
            if (v7)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:
      }

      v29 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v29);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = v27;
  v15 = [v31 countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v34;
    do
    {
      for (k = 0; k != v16; ++k)
      {
        if (*v34 != v17)
        {
          objc_enumerationMutation(v31);
        }

        v19 = *(*(&v33 + 1) + 8 * k);
        v20 = [(GKDashboardMultiplayerPickerDataSource *)self selectedMessageGroups];
        [v20 removeObject:v19];

        v21 = [(GKDashboardMultiplayerPickerDataSource *)self delegate];
        v22 = [v19 players];
        [v21 pickerDatasource:self didDeselectPlayers:v22 inGroup:v19];

        v23 = [v19 players];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __76__GKDashboardMultiplayerPickerDataSource_updateMessageGroupsPlayerSelection__block_invoke;
        v32[3] = &unk_27966D428;
        v32[4] = self;
        v24 = [v23 _gkFilterWithBlock:v32];

        v25 = [(GKDashboardMultiplayerPickerDataSource *)self delegate];
        [v25 pickerDatasource:self didSelectPlayers:v24 inGroup:0];
      }

      v16 = [v31 countByEnumeratingWithState:&v33 objects:v45 count:16];
    }

    while (v16);
  }
}

void *__76__GKDashboardMultiplayerPickerDataSource_updateMessageGroupsPlayerSelection__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 playerStates];
  v5 = [v3 referenceKey];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = [v6 integerValue];

  if (v7 == 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

- (id)candidateIndexPaths
{
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:20];
  if (![(GKCollectionDataSource *)self isSearching])
  {
    v4 = [(GKDashboardMultiplayerPickerDataSource *)self friendPlayers];
    v5 = [v4 count];

    if (v5 >= 1)
    {
      for (i = 0; i != v5; ++i)
      {
        v7 = [MEMORY[0x277CCAA70] indexPathForItem:i inSection:1];
        [v3 addObject:v7];
      }
    }
  }

  return v3;
}

- (BOOL)playerIsSelectable:(id)a3
{
  v4 = a3;
  v5 = [(GKDashboardMultiplayerPickerDataSource *)self playerStates];
  v6 = [v4 referenceKey];

  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = [v7 integerValue];

  return v8 != 2;
}

- (BOOL)playerIsSelected:(id)a3
{
  v4 = a3;
  v5 = [(GKDashboardMultiplayerPickerDataSource *)self playerStates];
  v6 = [v4 referenceKey];

  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = [v7 integerValue];

  return v8 == 1;
}

- (void)donateGroupToPeopleSuggester:(id)a3
{
  v14 = a3;
  v3 = objc_alloc_init(MEMORY[0x277D3A090]);
  v4 = [v14 players];
  if ([v4 count] == 1)
  {
    v5 = [v14 players];
    v6 = [v5 objectAtIndexedSubscript:0];
    v7 = [v6 contact];
    v8 = [v7 suggestedHandle];

    if (v8)
    {
      v9 = [v14 players];
      v10 = [v9 objectAtIndexedSubscript:0];
      v11 = [v10 contact];
      v12 = [v11 suggestedHandle];
      [v3 gameCenterSuggestionConsumedWithContactHandle:v12];

      goto LABEL_7;
    }
  }

  else
  {
  }

  v13 = [v14 conversationIdentifier];

  if (!v13)
  {
    goto LABEL_8;
  }

  v9 = [v14 conversationIdentifier];
  [v3 gameCenterSuggestionConsumedWithGroupIdentifier:v9];
LABEL_7:

LABEL_8:
}

- (void)didAttemptSelectingAlreadySelectedPlayers:(id)a3 inGroup:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(GKDashboardMultiplayerPickerDataSource *)self delegate];

  if (v7)
  {
    v8 = [(GKDashboardMultiplayerPickerDataSource *)self delegate];
    [v8 highlightAlreadySelectedPlayers:v9 inGroup:v6];
  }
}

- (void)handleLongPressGesture:(id)a3
{
  v4 = a3;
  v5 = [(GKDashboardMultiplayerPickerDataSource *)self collectionView];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [(GKDashboardMultiplayerPickerDataSource *)self collectionView];
  v19 = [v10 indexPathForItemAtPoint:{v7, v9}];

  if (![v19 section])
  {
    if ([(GKCollectionDataSource *)self isSearching])
    {
      if (([v19 item] & 0x8000000000000000) == 0)
      {
        v11 = [v19 item];
        v12 = [(GKDashboardMultiplayerPickerDataSource *)self searchPlayersAndGroups];
        v13 = [v12 count];

        if (v11 < v13)
        {
          v14 = [(GKDashboardMultiplayerPickerDataSource *)self searchPlayersAndGroups];
          v15 = [v14 objectAtIndexedSubscript:{objc_msgSend(v19, "item")}];

          v16 = [v15 players];
          v17 = [v16 count];

          if (v17 >= 2)
          {
            v18 = [(GKDashboardMultiplayerPickerDataSource *)self collectionView];
            [(GKDashboardMultiplayerPickerDataSource *)self expandPlayerGroup:v15 atIndexPath:v19 inCollectionView:v18];
          }
        }
      }
    }
  }
}

- (GKDashboardMultiplayerPickerDatasourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_TtC12GameCenterUI26GKSuggestionsContainerCell)suggestionContainerCell
{
  WeakRetained = objc_loadWeakRetained(&self->_suggestionContainerCell);

  return WeakRetained;
}

- (void)defaultFilterScopeFromPickerOrigin:(uint64_t)a3 .cold.1(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a2;
  v6 = [v4 numberWithInteger:a3];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_3_1(&dword_24DE53000, v7, v8, "Previous sort preference for %@: %@.", v9, v10, v11, v12, v13);
}

- (void)setFriendSortFilterScope:(uint64_t)a3 .cold.1(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a2;
  v6 = [v4 numberWithInteger:a3];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_3_1(&dword_24DE53000, v7, v8, "Remember sort preference for %@: %@.", v9, v10, v11, v12, v13);
}

void __72__GKDashboardMultiplayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_4_cold_2(uint8_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 identifier];
  *a1 = 138412290;
  *a4 = v8;
  _os_log_debug_impl(&dword_24DE53000, v7, OS_LOG_TYPE_DEBUG, "DashboardMultiplayerPickerDataSource - Adding player with contact identifier: %@", a1, 0xCu);
}

void __72__GKDashboardMultiplayerPickerDataSource_loadDataWithCompletionHandler___block_invoke_2_158_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(&dword_24DE53000, v0, OS_LOG_TYPE_ERROR, "Multiplayer Player Picker->loadDataWithCompletionHandler: Error in player list: %@", v1, 0xCu);
}

void __70__GKDashboardMultiplayerPickerDataSource_setNearbyPlayerID_reachable___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_24DE53000, log, OS_LOG_TYPE_ERROR, "Error loading nearby player (%@) with identifier: %@", &v4, 0x16u);
}

- (void)playerGroupCellForItemAtIndexPath:inCollectionView:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(&dword_24DE53000, v0, OS_LOG_TYPE_ERROR, "playerGroupCellForItemAtIndexPath - Unexpected empty playerGroup at indexPath (%@)", v1, 0xCu);
}

@end