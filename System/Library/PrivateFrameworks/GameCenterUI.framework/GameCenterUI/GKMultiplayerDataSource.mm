@interface GKMultiplayerDataSource
- (BOOL)canCancelCurrentMatchmaking;
- (BOOL)haveNonGuestPlayers;
- (BOOL)havePendingPlayers;
- (BOOL)participantShouldBeRemovable:(id)removable atIndexPath:(id)path;
- (BOOL)shouldUpdateStatus:(int64_t)status withNewStatus:(int64_t)newStatus;
- (GKMultiplayerDataSource)initWithMetricsPageId:(id)id;
- (GKMultiplayerDataSourceDelegate)delegate;
- (NSArray)participants;
- (_NSRange)playerRange;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionViewDebugDescription;
- (id)currentPlayersDebugDescription;
- (id)currentPlayersNotInvitedViaMessages;
- (id)currentRemotePlayers;
- (id)firstInvitedContactPlayer;
- (id)guestPlayers;
- (id)participantForAutoMatchNumber:(int64_t)number;
- (id)participantForPlayer:(id)player;
- (id)playersDebugDescription:(id)description newStatus:(int64_t)status;
- (id)playersWithStatus:(int64_t)status;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)statusForPlayer:(id)player;
- (void)addPlayers:(id)players withStatus:(int64_t)status replaceAutomatches:(BOOL)automatches complete:(id)complete;
- (void)clearDataSource;
- (void)configureCollectionView:(id)view;
- (void)didChangeMode;
- (void)failedToInvitePlayers:(id)players;
- (void)prepopulateConversationParticipants:(id)participants complete:(id)complete;
- (void)recordButtonClickAction:(id)action targetId:(id)id;
- (void)recordRemoveFriendClickAction:(id)action;
- (void)refreshParticipantsStatuses;
- (void)refreshStatusForParticipant:(id)participant;
- (void)removePlayers:(id)players complete:(id)complete;
- (void)removePrepopulatedPlayersIfExisted:(id)existed completionHandler:(id)handler;
- (void)replacePlayers:(id)players withGKPlayers:(id)kPlayers completionHandler:(id)handler;
- (void)replacePrepopulatedPlayerWithNormalPlayer:(id)player participantServerIdentifier:(id)identifier completionHandler:(id)handler;
- (void)reportMultiplayerSelection:(id)selection;
- (void)restoreOrderOfPlayers;
- (void)revertFailedPlayers;
- (void)setAutomatchPlayerCount:(int64_t)count;
- (void)setAutomatchPlayerCount:(int64_t)count complete:(id)complete;
- (void)setParticipantsWithPlayers:(id)players automatchPlayerCount:(int64_t)count shouldUpdateAutomatchPlayerCount:(BOOL)playerCount andStatuses:(id)statuses complete:(id)complete;
- (void)setStatus:(int64_t)status forPlayers:(id)players complete:(id)complete;
- (void)setStatus:(int64_t)status forPlayers:(id)players uuid:(id)uuid;
- (void)updateDataStructuresForRemovedPlayer:(id)player;
- (void)updateParticipants;
@end

@implementation GKMultiplayerDataSource

- (void)configureCollectionView:(id)view
{
  v8.receiver = self;
  v8.super_class = GKMultiplayerDataSource;
  viewCopy = view;
  [(GKBasicCollectionViewDataSource *)&v8 configureCollectionView:viewCopy];
  v4 = objc_opt_class();
  v5 = [_TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell reuseIdentifier:v8.receiver];
  [viewCopy registerClass:v4 forCellWithReuseIdentifier:v5];

  v6 = objc_opt_class();
  v7 = +[_TtC12GameCenterUI38GKMultiplayerAddSlotCollectionViewCell reuseIdentifier];
  [viewCopy registerClass:v6 forCellWithReuseIdentifier:v7];

  [viewCopy setContentInsetAdjustmentBehavior:2];
}

- (GKMultiplayerDataSource)initWithMetricsPageId:(id)id
{
  v25[1] = *MEMORY[0x277D85DE8];
  idCopy = id;
  v23.receiver = self;
  v23.super_class = GKMultiplayerDataSource;
  v6 = [(GKBasicCollectionViewDataSource *)&v23 init];
  if (v6)
  {
    localPlayer = [MEMORY[0x277D0C138] localPlayer];
    v8 = [objc_alloc(MEMORY[0x277CBEB40]) initWithObject:localPlayer];
    players = v6->_players;
    v6->_players = v8;

    v10 = objc_alloc(MEMORY[0x277CBEB38]);
    referenceKey = [localPlayer referenceKey];
    v24 = referenceKey;
    v25[0] = &unk_286188FD0;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v13 = [v10 initWithDictionary:v12];
    playerStatus = v6->_playerStatus;
    v6->_playerStatus = v13;

    v6->_removingEnabled = 1;
    v6->_invitingEnabled = 1;
    v15 = objc_alloc(MEMORY[0x277CBEB40]);
    internal = [localPlayer internal];
    playerID = [internal playerID];
    v18 = [v15 initWithObject:playerID];
    orderedPlayerIDList = v6->_orderedPlayerIDList;
    v6->_orderedPlayerIDList = v18;

    v20 = objc_alloc_init(GKMultiplayerParticipant);
    placeholderItem = v6->_placeholderItem;
    v6->_placeholderItem = v20;

    [(GKMultiplayerParticipant *)v6->_placeholderItem setIsPlaceHolderItem:1];
    v6->_automatchPlayerCountLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_pageId, id);
  }

  return v6;
}

- (id)currentPlayersNotInvitedViaMessages
{
  array = [MEMORY[0x277CBEB18] array];
  players = [(GKMultiplayerDataSource *)self players];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__GKMultiplayerDataSource_currentPlayersNotInvitedViaMessages__block_invoke;
  v7[3] = &unk_27966BAF8;
  v5 = array;
  v8 = v5;
  [players enumerateObjectsUsingBlock:v7];

  return v5;
}

void __62__GKMultiplayerDataSource_currentPlayersNotInvitedViaMessages__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 internal];
  v4 = [v3 messagesID];

  if (!v4)
  {
    [*(a1 + 32) addObject:v5];
  }
}

- (id)currentRemotePlayers
{
  v16 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  players = [(GKMultiplayerDataSource *)self players];
  v5 = [players countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(players);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (([v9 isGuestPlayer] & 1) == 0 && (objc_msgSend(v9, "isLocalPlayer") & 1) == 0)
        {
          [array addObject:v9];
        }
      }

      v6 = [players countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (id)guestPlayers
{
  currentPlayers = [(GKMultiplayerDataSource *)self currentPlayers];
  _gkGuestPlayersFromPlayers = [currentPlayers _gkGuestPlayersFromPlayers];

  return _gkGuestPlayersFromPlayers;
}

- (id)playersWithStatus:(int64_t)status
{
  v18 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_players;
  v7 = [(NSMutableOrderedSet *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([(GKMultiplayerDataSource *)self statusForPlayer:v11, v13]== status)
        {
          [array addObject:v11];
        }
      }

      v8 = [(NSMutableOrderedSet *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return array;
}

- (BOOL)havePendingPlayers
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(GKMultiplayerDataSource *)self automatchPlayerCount]<= 0)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    allValues = [(NSMutableDictionary *)self->_playerStatus allValues];
    v5 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v3 = 0;
      v7 = *v13;
LABEL_5:
      v8 = 0;
      while (1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        integerValue = [*(*(&v12 + 1) + 8 * v8) integerValue];
        if (integerValue - 1 <= 0x14)
        {
          v3 |= 0x180C21u >> (integerValue - 1);
        }

        if (integerValue <= 0x15 && ((1 << integerValue) & 0x301842) != 0)
        {
          break;
        }

        if (v6 == ++v8)
        {
          v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v6)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  else
  {
    LOBYTE(v3) = 1;
  }

  return v3 & 1;
}

- (_NSRange)playerRange
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  participants = [(GKMultiplayerDataSource *)self participants];
  v4 = [participants countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(participants);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (![v10 type] || objc_msgSend(v10, "type") == 2)
        {
          ++v7;
        }
      }

      v6 += v5;
      v5 = [participants countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  if (v7 <= self->_minPlayers)
  {
    minPlayers = self->_minPlayers;
  }

  else
  {
    minPlayers = v7;
  }

  v12 = v6 - minPlayers;
  result.length = v12;
  result.location = minPlayers;
  return result;
}

- (NSArray)participants
{
  items = [(GKBasicCollectionViewDataSource *)self items];
  v3 = [items _gkFilterWithBlock:&__block_literal_global_25];

  return v3;
}

id __39__GKMultiplayerDataSource_participants__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isPlaceHolderItem])
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  return v3;
}

- (id)participantForPlayer:(id)player
{
  v18 = *MEMORY[0x277D85DE8];
  playerCopy = player;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  participants = [(GKMultiplayerDataSource *)self participants];
  v6 = [participants countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(participants);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        player = [v9 player];
        v11 = [player isEqual:playerCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [participants countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)participantForAutoMatchNumber:(int64_t)number
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  participants = [(GKMultiplayerDataSource *)self participants];
  v5 = [participants countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(participants);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 type] == 1)
        {
          if (v7 == number)
          {
            v11 = v10;
            goto LABEL_13;
          }

          ++v7;
        }
      }

      v6 = [participants countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_13:

  return v11;
}

- (id)firstInvitedContactPlayer
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_players;
  v3 = [(NSMutableOrderedSet *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        contact = [v6 contact];

        if (contact)
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [(NSMutableOrderedSet *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (int64_t)statusForPlayer:(id)player
{
  if (!player)
  {
    return 7;
  }

  playerStatus = self->_playerStatus;
  referenceKey = [player referenceKey];
  v5 = [(NSMutableDictionary *)playerStatus objectForKeyedSubscript:referenceKey];
  integerValue = [v5 integerValue];

  return integerValue;
}

- (BOOL)participantShouldBeRemovable:(id)removable atIndexPath:(id)path
{
  removableCopy = removable;
  if ([(GKMultiplayerDataSource *)self removingEnabled])
  {
    type = [removableCopy type];
    if (type == 1)
    {
      participants = [(GKMultiplayerDataSource *)self participants];
      v9 = [participants count];
      LOBYTE(v9) = v9 > [(GKMultiplayerDataSource *)self minPlayers];
    }

    else if (type)
    {
      LOBYTE(v9) = 1;
    }

    else
    {
      player = [removableCopy player];
      isLocalPlayer = [player isLocalPlayer];

      if (isLocalPlayer)
      {
        LOBYTE(v9) = 0;
      }

      else
      {
        status = [removableCopy status];
        if (status >= 0x15)
        {
          LOBYTE(v9) = 1;
        }

        else
        {
          LODWORD(v9) = 0xFEF3Fu >> status;
        }
      }
    }

    if ([removableCopy status] == 12 || objc_msgSend(removableCopy, "status") == 6 || objc_msgSend(removableCopy, "status") == 7 || objc_msgSend(removableCopy, "status") == 20 && objc_msgSend(removableCopy, "type") != 1)
    {
      LOBYTE(v9) = 0;
    }

    if ([removableCopy status] == 6)
    {
      delegate = [(GKMultiplayerDataSource *)self delegate];
      v13 = [delegate isParticipantInvitedByLocalPlayer:removableCopy];

      LOBYTE(v9) = v13 | v9;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

- (void)recordButtonClickAction:(id)action targetId:(id)id
{
  v35 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  idCopy = id;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = +[GKMultiplayerParticipant allStatuses];
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        v13 = +[GKMultiplayerParticipant stringFromGKMultiplayerParticipantStatus:](GKMultiplayerParticipant, "stringFromGKMultiplayerParticipantStatus:", [v12 intValue]);
        v14 = MEMORY[0x277CCABB0];
        v15 = -[GKMultiplayerDataSource playersWithStatus:](self, "playersWithStatus:", [v12 intValue]);
        v16 = [v14 numberWithUnsignedInteger:{objc_msgSend(v15, "count")}];
        [dictionary setObject:v16 forKeyedSubscript:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v9);
  }

  reporter = [MEMORY[0x277D0BFA8] reporter];
  pageId = [(GKMultiplayerDataSource *)self pageId];
  v32 = @"location";
  v30[0] = @"playersCount";
  v19 = MEMORY[0x277CCABB0];
  players = [(GKMultiplayerDataSource *)self players];
  v21 = [v19 numberWithUnsignedInteger:{objc_msgSend(players, "count")}];
  v30[1] = @"statusCounts";
  v31[0] = v21;
  v31[1] = dictionary;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
  v33 = v22;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  [reporter recordClickWithAction:actionCopy targetId:idCopy targetType:@"button" pageId:pageId pageType:@"multiplayer" additionalFields:v23];
}

- (void)recordRemoveFriendClickAction:(id)action
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D0BFA8];
  actionCopy = action;
  reporter = [v4 reporter];
  pageId = [(GKMultiplayerDataSource *)self pageId];
  v13 = @"location";
  v11 = @"status";
  statusName = [actionCopy statusName];

  v12 = statusName;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v14[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [reporter recordClickWithAction:@"remove" targetId:@"removeFriend" targetType:@"button" pageId:pageId pageType:@"multiplayer" additionalFields:v10];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  delegate = [(GKMultiplayerDataSource *)self delegate];
  if (![delegate allowAutoMatch])
  {
    goto LABEL_6;
  }

  item = [pathCopy item];
  items = [(GKBasicCollectionViewDataSource *)self items];
  if (item != [items count] - 1)
  {

LABEL_6:
    goto LABEL_7;
  }

  maxPlayers = [(GKMultiplayerDataSource *)self maxPlayers];
  participants = [(GKMultiplayerDataSource *)self participants];
  v13 = [participants count];

  if (maxPlayers > v13)
  {
    v14 = +[_TtC12GameCenterUI38GKMultiplayerAddSlotCollectionViewCell reuseIdentifier];
    v15 = [viewCopy dequeueReusableCellWithReuseIdentifier:v14 forIndexPath:pathCopy];

    maxPlayers2 = [(GKMultiplayerDataSource *)self maxPlayers];
    participants2 = [(GKMultiplayerDataSource *)self participants];
    [v15 setMaximumAdditionalPlayers:{maxPlayers2 - objc_msgSend(participants2, "count")}];

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __65__GKMultiplayerDataSource_collectionView_cellForItemAtIndexPath___block_invoke;
    v31[3] = &unk_27966BB40;
    v31[4] = self;
    [v15 setAddSlotActionHandler:v31];
    goto LABEL_8;
  }

LABEL_7:
  v18 = +[_TtC12GameCenterUI42GKMultiplayerParticipantCollectionViewCell reuseIdentifier];
  v15 = [viewCopy dequeueReusableCellWithReuseIdentifier:v18 forIndexPath:pathCopy];

  [v15 setSharePlayEnabled:{-[GKMultiplayerDataSource sharePlayEnabled](self, "sharePlayEnabled")}];
  participants3 = [(GKMultiplayerDataSource *)self participants];
  v20 = [participants3 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];

  [(GKMultiplayerDataSource *)self refreshStatusForParticipant:v20];
  item2 = [pathCopy item];
  removingEnabled = [(GKMultiplayerDataSource *)self removingEnabled];
  invitingEnabled = [(GKMultiplayerDataSource *)self invitingEnabled];
  delegate2 = [(GKMultiplayerDataSource *)self delegate];
  [v15 applyWithParticipant:v20 number:item2 + 1 isRemovingEnabled:removingEnabled isInvitingEnabled:invitingEnabled layoutMode:{objc_msgSend(delegate2, "multiplayerCellLayoutMode")}];

  [v15 setRemoveButtonHidden:{-[GKMultiplayerDataSource participantShouldBeRemovable:atIndexPath:](self, "participantShouldBeRemovable:atIndexPath:", v20, pathCopy) ^ 1}];
  objc_initWeak(&location, v15);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __65__GKMultiplayerDataSource_collectionView_cellForItemAtIndexPath___block_invoke_3;
  v27[3] = &unk_27966BB68;
  v27[4] = self;
  objc_copyWeak(&v29, &location);
  v25 = v20;
  v28 = v25;
  [v15 setTapHandler:v27];

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);

LABEL_8:

  return v15;
}

void __65__GKMultiplayerDataSource_collectionView_cellForItemAtIndexPath___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) participants];
  v5 = [v4 count] + a2;

  v6 = [*(a1 + 32) players];
  v7 = v5 - [v6 count];

  if ((v7 & 0x8000000000000000) == 0)
  {
    objc_initWeak(&location, *(a1 + 32));
    v8 = *(a1 + 32);
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __65__GKMultiplayerDataSource_collectionView_cellForItemAtIndexPath___block_invoke_2;
    v16 = &unk_279669FE0;
    objc_copyWeak(&v17, &location);
    [v8 setAutomatchPlayerCount:v7 complete:&v13];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  v9 = [MEMORY[0x277D0C1D8] shared];
  [v9 setRecentNumberOfPlayers:v5];

  v10 = [MEMORY[0x277D0C1D8] shared];
  v11 = [*(a1 + 32) game];
  v12 = [v11 bundleIdentifier];
  [v10 setRecentNumberOfPlayers:v5 forBundleID:v12];
}

void __65__GKMultiplayerDataSource_collectionView_cellForItemAtIndexPath___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 didUpdateAutoMatchPlayerCount];
}

void __65__GKMultiplayerDataSource_collectionView_cellForItemAtIndexPath___block_invoke_3(id *a1, uint64_t a2)
{
  switch(a2)
  {
    case 2:
      v7 = [a1[4] participants];
      v8 = [v7 count] - 1;

      v9 = [a1[4] players];
      v10 = v8 - [v9 count];

      if ((v10 & 0x8000000000000000) == 0)
      {
        objc_initWeak(&location, a1[4]);
        v11 = a1[4];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __65__GKMultiplayerDataSource_collectionView_cellForItemAtIndexPath___block_invoke_5;
        v23[3] = &unk_279669FE0;
        objc_copyWeak(&v24, &location);
        [v11 setAutomatchPlayerCount:v10 complete:v23];
        objc_destroyWeak(&v24);
        objc_destroyWeak(&location);
      }

      v12 = [MEMORY[0x277D0C1D8] shared];
      [v12 setRecentNumberOfPlayers:v8];

      v13 = [MEMORY[0x277D0C1D8] shared];
      v14 = [a1[4] game];
      v15 = [v14 bundleIdentifier];
      [v13 setRecentNumberOfPlayers:v8 forBundleID:v15];

      goto LABEL_15;
    case 1:
      v4 = [a1[5] player];

      v5 = a1[4];
      if (v4)
      {
        v6 = [v5 delegate];
        [v6 didTapRemoveParticipant:a1[5]];
      }

      else
      {
        v16 = [v5 participants];
        v17 = [v16 count];
        v18 = [a1[4] players];
        v19 = v17 + ~[v18 count];

        if ((v19 & 0x8000000000000000) == 0)
        {
          objc_initWeak(&location, a1[4]);
          v20 = a1[4];
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __65__GKMultiplayerDataSource_collectionView_cellForItemAtIndexPath___block_invoke_4;
          v25[3] = &unk_279669FE0;
          objc_copyWeak(&v26, &location);
          [v20 setAutomatchPlayerCount:v19 complete:v25];
          objc_destroyWeak(&v26);
          objc_destroyWeak(&location);
        }
      }

      v21 = [MEMORY[0x277D0C1F8] reporter];
      [v21 reportEvent:*MEMORY[0x277D0BE78] type:*MEMORY[0x277D0BBF8]];

LABEL_15:
      [a1[4] recordRemoveFriendClickAction:a1[5]];
      return;
    case 0:
      v22 = [a1[4] delegate];
      WeakRetained = objc_loadWeakRetained(a1 + 6);
      [v22 didTapInviteOnCell:WeakRetained];

      break;
  }
}

void __65__GKMultiplayerDataSource_collectionView_cellForItemAtIndexPath___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 didUpdateAutoMatchPlayerCount];
}

void __65__GKMultiplayerDataSource_collectionView_cellForItemAtIndexPath___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 didUpdateAutoMatchPlayerCount];
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  if (section)
  {
    return 0;
  }

  items = [(GKBasicCollectionViewDataSource *)self items];
  v6 = [items count];

  return v6;
}

- (id)collectionViewDebugDescription
{
  v3 = MEMORY[0x277CCACA8];
  currentPlayersDebugDescription = [(GKMultiplayerDataSource *)self currentPlayersDebugDescription];
  orderedPlayerIDList = self->_orderedPlayerIDList;
  participants = [(GKMultiplayerDataSource *)self participants];
  v7 = [v3 stringWithFormat:@"CollectionView Debug Description - players: %@\n            orderedPlayerIDList: %@\n            participants: %@ \n", currentPlayersDebugDescription, orderedPlayerIDList, participants];

  return v7;
}

- (id)currentPlayersDebugDescription
{
  v3 = MEMORY[0x277CCACA8];
  players = [(GKMultiplayerDataSource *)self players];
  array = [players array];
  v6 = [(GKMultiplayerDataSource *)self playersDebugDescription:array newStatus:-1];
  v7 = [v3 stringWithFormat:@"current players: %@", v6];

  return v7;
}

- (id)playersDebugDescription:(id)description newStatus:(int64_t)status
{
  v33 = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  if ([descriptionCopy count])
  {
    v7 = [&stru_28612D290 stringByAppendingFormat:@"players: {\n"];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v25 = descriptionCopy;
    obj = descriptionCopy;
    v8 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v8)
    {
      v9 = v8;
      v27 = *v29;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v29 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v28 + 1) + 8 * i);
          v12 = [v7 stringByAppendingFormat:@"\t%@", v11];

          playerStatus = [(GKMultiplayerDataSource *)self playerStatus];
          referenceKey = [v11 referenceKey];
          v15 = [playerStatus objectForKeyedSubscript:referenceKey];

          if (v15)
          {
            playerStatus2 = [(GKMultiplayerDataSource *)self playerStatus];
            referenceKey2 = [v11 referenceKey];
            v18 = [playerStatus2 objectForKeyedSubscript:referenceKey2];
            v19 = [GKMultiplayerParticipant stringFromGKMultiplayerParticipantStatus:v18];
            v20 = [v12 stringByAppendingFormat:@"- current status: %@", v19];

            v12 = v20;
          }

          if ((status & 0x8000000000000000) == 0)
          {
            v21 = [GKMultiplayerParticipant stringFromGKMultiplayerParticipantStatus:status];
            v22 = [v12 stringByAppendingFormat:@" - new status: %@", v21];

            v12 = v22;
          }

          v7 = [v12 stringByAppendingFormat:@", \n"];
        }

        v9 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v9);
    }

    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@}\n", v7];

    descriptionCopy = v25;
  }

  else
  {
    v23 = [&stru_28612D290 stringByAppendingFormat:@"players: - No Players - "];
  }

  return v23;
}

- (void)prepopulateConversationParticipants:(id)participants complete:(id)complete
{
  v28 = *MEMORY[0x277D85DE8];
  participantsCopy = participants;
  completeCopy = complete;
  array = [MEMORY[0x277CBEB18] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = participantsCopy;
  v8 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v21 + 1) + 8 * v11);
        v13 = objc_alloc(MEMORY[0x277D0C170]);
        game = [(GKMultiplayerDataSource *)self game];
        bundleIdentifier = [game bundleIdentifier];
        v16 = [v13 initWithParticipant:v12 forBundleID:bundleIdentifier];

        if (v16)
        {
          [array addObject:v16];
        }

        else
        {
          if (!*MEMORY[0x277D0C2A0])
          {
            v17 = GKOSLoggers();
          }

          v18 = *MEMORY[0x277D0C2B0];
          if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v26 = v12;
            _os_log_error_impl(&dword_24DE53000, v18, OS_LOG_TYPE_ERROR, "cannot convert TUConversationParticipant(%@) to GKPlayer.", buf, 0xCu);
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v9);
  }

  [(GKMultiplayerDataSource *)self addPlayers:array withStatus:20 replaceAutomatches:1 complete:completeCopy];
}

- (void)addPlayers:(id)players withStatus:(int64_t)status replaceAutomatches:(BOOL)automatches complete:(id)complete
{
  automatchesCopy = automatches;
  v48 = *MEMORY[0x277D85DE8];
  playersCopy = players;
  completeCopy = complete;
  uUID = [MEMORY[0x277CCAD78] UUID];
  v13 = MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v14 = GKOSLoggers();
  }

  v15 = MEMORY[0x277D0C270];
  v16 = *MEMORY[0x277D0C270];
  if (os_log_type_enabled(*MEMORY[0x277D0C270], OS_LOG_TYPE_DEBUG))
  {
    v30 = MEMORY[0x277CCACA8];
    v27 = v16;
    v28 = [(GKMultiplayerDataSource *)self playersDebugDescription:playersCopy newStatus:status];
    v32 = v28;
    v29 = @"NO";
    if (automatchesCopy)
    {
      v29 = @"YES";
    }

    v31 = [v30 stringWithFormat:@"- START - uuid: %@, %@, replaceAutomatch: %@", uUID, v28, v29];
    *buf = 136315394;
    v43 = "[GKMultiplayerDataSource addPlayers:withStatus:replaceAutomatches:complete:]";
    v44 = 2112;
    v45 = v31;
    _os_log_debug_impl(&dword_24DE53000, v27, OS_LOG_TYPE_DEBUG, "****** - GKCVC - %s \n%@", buf, 0x16u);
  }

  if (!*v13)
  {
    v17 = GKOSLoggers();
  }

  if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEBUG))
  {
    [GKMultiplayerDataSource addPlayers:withStatus:replaceAutomatches:complete:];
  }

  [(GKMultiplayerDataSource *)self reportMultiplayerSelection:playersCopy];
  if (!*v13)
  {
    v18 = GKOSLoggers();
  }

  v19 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    v20 = v19;
    v21 = [GKMultiplayerParticipant stringFromGKMultiplayerParticipantStatus:status];
    v22 = v21;
    v23 = @"NO";
    *buf = 138412802;
    v43 = playersCopy;
    v44 = 2112;
    if (automatchesCopy)
    {
      v23 = @"YES";
    }

    v45 = v21;
    v46 = 2112;
    v47 = v23;
    _os_log_impl(&dword_24DE53000, v20, OS_LOG_TYPE_INFO, "add players: %@ - status: %@ - replaceAutomatch: %@", buf, 0x20u);
  }

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __77__GKMultiplayerDataSource_addPlayers_withStatus_replaceAutomatches_complete___block_invoke;
  v37[3] = &unk_27966BB90;
  v37[4] = self;
  v38 = playersCopy;
  v41 = automatchesCopy;
  statusCopy = status;
  v39 = uUID;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __77__GKMultiplayerDataSource_addPlayers_withStatus_replaceAutomatches_complete___block_invoke_2;
  v33[3] = &unk_27966B380;
  v34 = v39;
  selfCopy = self;
  v36 = completeCopy;
  v24 = completeCopy;
  v25 = v39;
  v26 = playersCopy;
  [(GKCollectionViewDataSource *)self notifyBatchUpdate:v37 complete:v33];
}

uint64_t __77__GKMultiplayerDataSource_addPlayers_withStatus_replaceAutomatches_complete___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) automatchPlayerCount];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v19 + 1) + 8 * v7);
        v9 = [*(a1 + 32) players];
        v10 = [v9 containsObject:v8];

        if ((v10 & 1) == 0)
        {
          v11 = [*(a1 + 32) players];
          [v11 addObject:v8];

          v12 = [*(a1 + 32) orderedPlayerIDList];
          v13 = [v8 internal];
          v14 = [v13 playerID];
          [v12 addObject:v14];

          --v2;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  if (*(a1 + 64) == 1)
  {
    [*(a1 + 32) setAutomatchPlayerCount:v2 & ~(v2 >> 63)];
    v15 = [*(a1 + 32) automatchPlayerCount];
    if (v15 < [*(a1 + 32) automatchPlayersAddedByUser])
    {
      v16 = *(a1 + 56);
      if (v16 <= 0x15 && ((1 << v16) & 0x200802) != 0)
      {
        [*(a1 + 32) setAutomatchPlayerCount:{objc_msgSend(*(a1 + 32), "automatchPlayersAddedByUser")}];
      }
    }

    v17 = [*(a1 + 32) delegate];
    [v17 didUpdateAutoMatchPlayerCount];
  }

  [*(a1 + 32) setStatus:*(a1 + 56) forPlayers:*(a1 + 40) uuid:{*(a1 + 48), v19}];
  return [*(a1 + 32) updateParticipants];
}

uint64_t __77__GKMultiplayerDataSource_addPlayers_withStatus_replaceAutomatches_complete___block_invoke_2(uint64_t a1)
{
  if (!*MEMORY[0x277D0C2A0])
  {
    v2 = GKOSLoggers();
  }

  v3 = *MEMORY[0x277D0C270];
  if (os_log_type_enabled(*MEMORY[0x277D0C270], OS_LOG_TYPE_DEBUG))
  {
    __77__GKMultiplayerDataSource_addPlayers_withStatus_replaceAutomatches_complete___block_invoke_2_cold_1(a1, v3);
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updateDataStructuresForRemovedPlayer:(id)player
{
  playerCopy = player;
  playerStatus = [(GKMultiplayerDataSource *)self playerStatus];
  referenceKey = [playerCopy referenceKey];
  [playerStatus removeObjectForKey:referenceKey];

  players = [(GKMultiplayerDataSource *)self players];
  [players removeObject:playerCopy];

  orderedPlayerIDList = [(GKMultiplayerDataSource *)self orderedPlayerIDList];
  internal = [playerCopy internal];

  playerID = [internal playerID];
  [orderedPlayerIDList removeObject:playerID];

  v11 = [(GKMultiplayerDataSource *)self automatchPlayerCount]+ 1;

  [(GKMultiplayerDataSource *)self setAutomatchPlayerCount:v11];
}

- (void)removePlayers:(id)players complete:(id)complete
{
  v34 = *MEMORY[0x277D85DE8];
  playersCopy = players;
  completeCopy = complete;
  uUID = [MEMORY[0x277CCAD78] UUID];
  v9 = MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v10 = GKOSLoggers();
  }

  v11 = MEMORY[0x277D0C270];
  v12 = *MEMORY[0x277D0C270];
  if (os_log_type_enabled(*MEMORY[0x277D0C270], OS_LOG_TYPE_DEBUG))
  {
    v19 = MEMORY[0x277CCACA8];
    v20 = v12;
    v21 = [(GKMultiplayerDataSource *)self playersDebugDescription:playersCopy newStatus:-1];
    v22 = [v19 stringWithFormat:@"- START - uuid: %@, %@", uUID, v21];
    *buf = 136315394;
    v31 = "[GKMultiplayerDataSource removePlayers:complete:]";
    v32 = 2112;
    v33 = v22;
    _os_log_debug_impl(&dword_24DE53000, v20, OS_LOG_TYPE_DEBUG, "****** - GKCVC - %s \n%@", buf, 0x16u);
  }

  if (!*v9)
  {
    v13 = GKOSLoggers();
  }

  if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
  {
    [GKMultiplayerDataSource removePlayers:complete:];
  }

  if (!*v9)
  {
    v14 = GKOSLoggers();
  }

  v15 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v31 = playersCopy;
    _os_log_impl(&dword_24DE53000, v15, OS_LOG_TYPE_INFO, "remove players: %@", buf, 0xCu);
  }

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __50__GKMultiplayerDataSource_removePlayers_complete___block_invoke;
  v27[3] = &unk_279669E48;
  v28 = playersCopy;
  selfCopy = self;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __50__GKMultiplayerDataSource_removePlayers_complete___block_invoke_2;
  v23[3] = &unk_27966B380;
  v24 = uUID;
  selfCopy2 = self;
  v26 = completeCopy;
  v16 = completeCopy;
  v17 = uUID;
  v18 = playersCopy;
  [(GKCollectionViewDataSource *)self notifyBatchUpdate:v27 complete:v23];
}

uint64_t __50__GKMultiplayerDataSource_removePlayers_complete___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) updateDataStructuresForRemovedPlayer:{*(*(&v8 + 1) + 8 * v6++), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return [*(a1 + 40) updateParticipants];
}

uint64_t __50__GKMultiplayerDataSource_removePlayers_complete___block_invoke_2(uint64_t a1)
{
  if (!*MEMORY[0x277D0C2A0])
  {
    v2 = GKOSLoggers();
  }

  v3 = *MEMORY[0x277D0C270];
  if (os_log_type_enabled(*MEMORY[0x277D0C270], OS_LOG_TYPE_DEBUG))
  {
    __50__GKMultiplayerDataSource_removePlayers_complete___block_invoke_2_cold_1(a1, v3);
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)shouldUpdateStatus:(int64_t)status withNewStatus:(int64_t)newStatus
{
  reporter = [MEMORY[0x277D0C1F8] reporter];
  v7 = *MEMORY[0x277D0BE80];
  [reporter reportEvent:*MEMORY[0x277D0BE80] type:*MEMORY[0x277D0BC80]];

  if (status == newStatus)
  {
    return 0;
  }

  if (status != 6)
  {
    if (status != 7 || newStatus > 0xC)
    {
      return 1;
    }

    if (((1 << newStatus) & 0x1042) == 0)
    {
      return ((1 << newStatus) & 0x201) == 0;
    }

    goto LABEL_11;
  }

  result = 0;
  if (newStatus <= 8)
  {
    if (!newStatus)
    {
      return result;
    }

    if (newStatus != 1)
    {
      return 1;
    }

    goto LABEL_11;
  }

  if (newStatus == 9)
  {
    return result;
  }

  if (newStatus == 12)
  {
LABEL_11:
    reporter2 = [MEMORY[0x277D0C1F8] reporter];
    [reporter2 reportEvent:v7 type:*MEMORY[0x277D0BC88]];

    return 0;
  }

  return 1;
}

- (void)setStatus:(int64_t)status forPlayers:(id)players uuid:(id)uuid
{
  v124 = *MEMORY[0x277D85DE8];
  playersCopy = players;
  uuidCopy = uuid;
  v96 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(playersCopy, "count")}];
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v8 = playersCopy;
  v9 = [v8 countByEnumeratingWithState:&v111 objects:v123 count:16];
  v10 = MEMORY[0x277D0C2A0];
  v11 = MEMORY[0x277D0C270];
  selfCopy = self;
  v99 = v8;
  v101 = v9;
  if (v9)
  {
    v100 = *v112;
    do
    {
      v12 = 0;
      do
      {
        if (*v112 != v100)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v111 + 1) + 8 * v12);
        playerStatus = [(GKMultiplayerDataSource *)self playerStatus];
        referenceKey = [v13 referenceKey];
        v16 = [playerStatus objectForKeyedSubscript:referenceKey];
        integerValue = [v16 integerValue];

        if (!*v10)
        {
          v18 = GKOSLoggers();
        }

        v19 = *v11;
        if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
        {
          v55 = MEMORY[0x277CCACA8];
          v56 = v19;
          v57 = [GKMultiplayerParticipant stringFromGKMultiplayerParticipantStatus:integerValue];
          v58 = [v55 stringWithFormat:@"- MIDDLE 1 - uuid: %@, Settings status for player: %@ with current status: %@", uuidCopy, v13, v57];
          *buf = 136315394;
          v117 = "[GKMultiplayerDataSource setStatus:forPlayers:uuid:]";
          v118 = 2112;
          v119 = v58;
          _os_log_debug_impl(&dword_24DE53000, v56, OS_LOG_TYPE_DEBUG, "****** - GKCVC - %s \n%@", buf, 0x16u);
        }

        v20 = [(GKMultiplayerDataSource *)self shouldUpdateStatus:integerValue withNewStatus:status];
        v21 = *v10;
        if (v20)
        {
          if (!v21)
          {
            v22 = GKOSLoggers();
          }

          v23 = *v11;
          if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
          {
            v95 = MEMORY[0x277CCACA8];
            v59 = v23;
            v60 = [GKMultiplayerParticipant stringFromGKMultiplayerParticipantStatus:integerValue];
            v61 = [GKMultiplayerParticipant stringFromGKMultiplayerParticipantStatus:status];
            v62 = [v95 stringWithFormat:@"- MIDDLE 2 - uuid: %@, should update status for player: %@ from status %@ to new status: %@", uuidCopy, v13, v60, v61];
            *buf = 136315394;
            v117 = "[GKMultiplayerDataSource setStatus:forPlayers:uuid:]";
            v118 = 2112;
            v119 = v62;
            _os_log_debug_impl(&dword_24DE53000, v59, OS_LOG_TYPE_DEBUG, "****** - GKCVC - %s \n%@", buf, 0x16u);
          }

          players = [(GKMultiplayerDataSource *)self players];
          v25 = [players indexOfObject:v13];

          v26 = *v10;
          if (v25 == 0x7FFFFFFFFFFFFFFFLL)
          {
            if (!v26)
            {
              v27 = GKOSLoggers();
            }

            v28 = *v11;
            if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
            {
              v29 = MEMORY[0x277CCACA8];
              v30 = v28;
              v31 = [v29 stringWithFormat:@"- MIDDLE 5 - uuid: %@, cannot find index path for player: %@", uuidCopy, v13];
              *buf = 136315394;
              v117 = "[GKMultiplayerDataSource setStatus:forPlayers:uuid:]";
              v118 = 2112;
              v119 = v31;
              _os_log_debug_impl(&dword_24DE53000, v30, OS_LOG_TYPE_DEBUG, "****** - GKCVC - %s \n%@", buf, 0x16u);
            }
          }

          else
          {
            if (!v26)
            {
              v41 = GKOSLoggers();
            }

            v42 = *v11;
            if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
            {
              v68 = MEMORY[0x277CCACA8];
              v69 = v42;
              referenceKey2 = [v13 referenceKey];
              v71 = [GKMultiplayerParticipant stringFromGKMultiplayerParticipantStatus:status];
              v72 = [v68 stringWithFormat:@"- MIDDLE 3 - uuid: %@, updating player: %@ with referencekey %@ to status: %@", uuidCopy, v13, referenceKey2, v71];
              *buf = 136315394;
              v117 = "[GKMultiplayerDataSource setStatus:forPlayers:uuid:]";
              v118 = 2112;
              v119 = v72;
              _os_log_debug_impl(&dword_24DE53000, v69, OS_LOG_TYPE_DEBUG, "****** - GKCVC - %s \n%@", buf, 0x16u);
            }

            v43 = [MEMORY[0x277CCABB0] numberWithInteger:status];
            playerStatus2 = [(GKMultiplayerDataSource *)self playerStatus];
            referenceKey3 = [v13 referenceKey];
            [playerStatus2 setObject:v43 forKeyedSubscript:referenceKey3];

            v109 = 0u;
            v110 = 0u;
            v107 = 0u;
            v108 = 0u;
            participants = [(GKMultiplayerDataSource *)self participants];
            v46 = [participants countByEnumeratingWithState:&v107 objects:v122 count:16];
            if (v46)
            {
              v47 = v46;
              v48 = *v108;
              while (2)
              {
                for (i = 0; i != v47; ++i)
                {
                  if (*v108 != v48)
                  {
                    objc_enumerationMutation(participants);
                  }

                  v50 = *(*(&v107 + 1) + 8 * i);
                  player = [v50 player];
                  v52 = [player isEqual:v13];

                  if (v52)
                  {
                    [v50 setStatus:status];
                    v39 = [MEMORY[0x277CCAA70] indexPathForItem:v25 inSection:0];
                    [v96 addObject:v39];
                    v10 = MEMORY[0x277D0C2A0];
                    if (!*MEMORY[0x277D0C2A0])
                    {
                      v53 = GKOSLoggers();
                    }

                    v11 = MEMORY[0x277D0C270];
                    v54 = *MEMORY[0x277D0C270];
                    self = selfCopy;
                    v8 = v99;
                    if (os_log_type_enabled(*MEMORY[0x277D0C270], OS_LOG_TYPE_DEBUG))
                    {
                      v73 = MEMORY[0x277CCACA8];
                      v74 = v54;
                      v75 = [v73 stringWithFormat:@"- MIDDLE 4 - uuid: %@, marking index path row: %@ to refresh", uuidCopy, v39];
                      *buf = 136315394;
                      v117 = "[GKMultiplayerDataSource setStatus:forPlayers:uuid:]";
                      v118 = 2112;
                      v119 = v75;
                      _os_log_debug_impl(&dword_24DE53000, v74, OS_LOG_TYPE_DEBUG, "****** - GKCVC - %s \n%@", buf, 0x16u);

                      v11 = MEMORY[0x277D0C270];
                    }

                    goto LABEL_45;
                  }
                }

                v47 = [participants countByEnumeratingWithState:&v107 objects:v122 count:16];
                if (v47)
                {
                  continue;
                }

                break;
              }
            }

            self = selfCopy;
            v8 = v99;
            v11 = MEMORY[0x277D0C270];
            v10 = MEMORY[0x277D0C2A0];
          }
        }

        else
        {
          if (!v21)
          {
            v32 = GKOSLoggers();
          }

          v33 = *v11;
          if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
          {
            v63 = MEMORY[0x277CCACA8];
            v64 = v33;
            v65 = [GKMultiplayerParticipant stringFromGKMultiplayerParticipantStatus:integerValue];
            v66 = [GKMultiplayerParticipant stringFromGKMultiplayerParticipantStatus:status];
            v67 = [v63 stringWithFormat:@"- MIDDLE 6 - should not update status for player: %@ from status %@ to new status: %@", v13, v65, v66];
            *buf = 136315394;
            v117 = "[GKMultiplayerDataSource setStatus:forPlayers:uuid:]";
            v118 = 2112;
            v119 = v67;
            _os_log_debug_impl(&dword_24DE53000, v64, OS_LOG_TYPE_DEBUG, "****** - GKCVC - %s \n%@", buf, 0x16u);

            v10 = MEMORY[0x277D0C2A0];
            v11 = MEMORY[0x277D0C270];
          }

          if (!*v10)
          {
            v34 = GKOSLoggers();
          }

          v35 = *MEMORY[0x277D0C2B0];
          if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
          {
            participants = v35;
            internal = [v13 internal];
            v38 = [internal debugDescription];
            v39 = [GKMultiplayerParticipant stringFromGKMultiplayerParticipantStatus:integerValue];
            v40 = [GKMultiplayerParticipant stringFromGKMultiplayerParticipantStatus:status];
            *buf = 138412802;
            v117 = v38;
            v118 = 2112;
            v119 = v39;
            v120 = 2112;
            v121 = v40;
            _os_log_impl(&dword_24DE53000, participants, OS_LOG_TYPE_INFO, "Should not update datasource status for player: %@ - from: %@ - to: %@", buf, 0x20u);

            v11 = MEMORY[0x277D0C270];
            v10 = MEMORY[0x277D0C2A0];
LABEL_45:
          }
        }

        ++v12;
      }

      while (v12 != v101);
      v101 = [v8 countByEnumeratingWithState:&v111 objects:v123 count:16];
    }

    while (v101);
  }

  v76 = [v96 count];
  v77 = *v10;
  if (v76)
  {
    if (!v77)
    {
      v78 = GKOSLoggers();
    }

    v79 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
    {
      [GKMultiplayerDataSource setStatus:v79 forPlayers:? uuid:?];
    }

    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v80 = v96;
    v81 = [v80 countByEnumeratingWithState:&v103 objects:v115 count:16];
    if (v81)
    {
      v82 = v81;
      v83 = *v104;
      do
      {
        for (j = 0; j != v82; ++j)
        {
          if (*v104 != v83)
          {
            objc_enumerationMutation(v80);
          }

          v85 = *(*(&v103 + 1) + 8 * j);
          if (!*MEMORY[0x277D0C2A0])
          {
            v86 = GKOSLoggers();
          }

          v87 = *v11;
          if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
          {
            v88 = MEMORY[0x277CCACA8];
            v89 = v87;
            v90 = [v88 stringWithFormat:@"- MIDDLE 8 - uuid: %@, \t\tRefreshing: %@", uuidCopy, v85];
            *buf = 136315394;
            v117 = "[GKMultiplayerDataSource setStatus:forPlayers:uuid:]";
            v118 = 2112;
            v119 = v90;
            _os_log_debug_impl(&dword_24DE53000, v89, OS_LOG_TYPE_DEBUG, "****** - GKCVC - %s \n%@", buf, 0x16u);

            v11 = MEMORY[0x277D0C270];
          }
        }

        v82 = [v80 countByEnumeratingWithState:&v103 objects:v115 count:16];
      }

      while (v82);
    }

    mEMORY[0x277D0C1D8] = [MEMORY[0x277D0C1D8] shared];
    multiplayerShouldAlwaysReloadCollectionView = [mEMORY[0x277D0C1D8] multiplayerShouldAlwaysReloadCollectionView];

    if (multiplayerShouldAlwaysReloadCollectionView)
    {
      [(GKCollectionViewDataSource *)selfCopy notifyDidReloadData];
    }

    else
    {
      [(GKCollectionViewDataSource *)selfCopy notifyItemsRefreshedAtIndexPaths:v80];
    }

    v8 = v99;
  }

  else
  {
    if (!v77)
    {
      v93 = GKOSLoggers();
    }

    v94 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
    {
      [GKMultiplayerDataSource setStatus:v94 forPlayers:? uuid:?];
    }
  }
}

- (void)setStatus:(int64_t)status forPlayers:(id)players complete:(id)complete
{
  v39 = *MEMORY[0x277D85DE8];
  playersCopy = players;
  completeCopy = complete;
  uUID = [MEMORY[0x277CCAD78] UUID];
  v11 = MEMORY[0x277D0C2A0];
  if (!*MEMORY[0x277D0C2A0])
  {
    v12 = GKOSLoggers();
  }

  v13 = *MEMORY[0x277D0C270];
  if (os_log_type_enabled(*MEMORY[0x277D0C270], OS_LOG_TYPE_DEBUG))
  {
    v21 = MEMORY[0x277CCACA8];
    log = v13;
    v24 = [(GKMultiplayerDataSource *)self playersDebugDescription:playersCopy newStatus:status];
    collectionViewDebugDescription = [(GKMultiplayerDataSource *)self collectionViewDebugDescription];
    v23 = [v21 stringWithFormat:@"- START - uuid: %@, %@, \n %@", uUID, v24, collectionViewDebugDescription];
    *buf = 136315394;
    v36 = "[GKMultiplayerDataSource setStatus:forPlayers:complete:]";
    v37 = 2112;
    v38 = v23;
    _os_log_debug_impl(&dword_24DE53000, log, OS_LOG_TYPE_DEBUG, "****** - GKCVC - %s \n%@", buf, 0x16u);
  }

  if (!*v11)
  {
    v14 = GKOSLoggers();
  }

  v15 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    v16 = v15;
    v17 = [GKMultiplayerParticipant stringFromGKMultiplayerParticipantStatus:status];
    *buf = 138412546;
    v36 = playersCopy;
    v37 = 2112;
    v38 = v17;
    _os_log_impl(&dword_24DE53000, v16, OS_LOG_TYPE_INFO, "Multiplayer datasource set players: %@ - status:%@", buf, 0x16u);
  }

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __57__GKMultiplayerDataSource_setStatus_forPlayers_complete___block_invoke;
  v31[3] = &unk_27966B2E8;
  v31[4] = self;
  statusCopy = status;
  v32 = playersCopy;
  v33 = uUID;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __57__GKMultiplayerDataSource_setStatus_forPlayers_complete___block_invoke_2;
  v26[3] = &unk_27966A3E0;
  v29 = completeCopy;
  statusCopy2 = status;
  v26[4] = self;
  v27 = v32;
  v28 = v33;
  v18 = completeCopy;
  v19 = v33;
  v20 = v32;
  [(GKCollectionViewDataSource *)self notifyBatchUpdate:v31 complete:v26];
}

void __57__GKMultiplayerDataSource_setStatus_forPlayers_complete___block_invoke_2(uint64_t a1)
{
  v2 = a1 + 32;
  if ([*(a1 + 32) shouldRevertStatus:*(a1 + 64)])
  {
    v3 = dispatch_time(0, (*MEMORY[0x277D0BC68] * 1000000000.0));
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __57__GKMultiplayerDataSource_setStatus_forPlayers_complete___block_invoke_3;
    v8[3] = &unk_279669E48;
    v4 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v4;
    dispatch_after(v3, MEMORY[0x277D85CD0], v8);
  }

  else
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v5 = GKOSLoggers();
    }

    v6 = *MEMORY[0x277D0C270];
    if (os_log_type_enabled(*MEMORY[0x277D0C270], OS_LOG_TYPE_DEBUG))
    {
      __57__GKMultiplayerDataSource_setStatus_forPlayers_complete___block_invoke_2_cold_1(a1, v2, v6);
    }

    v7 = *(a1 + 56);
    if (v7)
    {
      (*(v7 + 16))();
    }
  }
}

void __57__GKMultiplayerDataSource_setStatus_forPlayers_complete___block_invoke_3(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__GKMultiplayerDataSource_setStatus_forPlayers_complete___block_invoke_4;
  v5[3] = &unk_279669E48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  [v2 notifyBatchUpdate:v5];
}

uint64_t __57__GKMultiplayerDataSource_setStatus_forPlayers_complete___block_invoke_4(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = [*(a1 + 40) players];
        v9 = [v8 containsObject:v7];

        if (v9)
        {
          [*(a1 + 40) updateDataStructuresForRemovedPlayer:v7];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  return [*(a1 + 40) updateParticipants];
}

- (void)setParticipantsWithPlayers:(id)players automatchPlayerCount:(int64_t)count shouldUpdateAutomatchPlayerCount:(BOOL)playerCount andStatuses:(id)statuses complete:(id)complete
{
  v52 = *MEMORY[0x277D85DE8];
  playersCopy = players;
  statusesCopy = statuses;
  completeCopy = complete;
  if (!*MEMORY[0x277D0C2A0])
  {
    v12 = GKOSLoggers();
  }

  v13 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    v14 = MEMORY[0x277CCABB0];
    v15 = v13;
    v16 = [v14 numberWithInteger:count];
    *buf = 138412802;
    v47 = playersCopy;
    v48 = 2112;
    v49 = v16;
    v50 = 2112;
    v51 = statusesCopy;
    _os_log_impl(&dword_24DE53000, v15, OS_LOG_TYPE_INFO, "players: %@ - automatchCount: %@ - statuses: %@", buf, 0x20u);
  }

  countCopy = count;
  v17 = MEMORY[0x277D0C020];
  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKMultiplayerDataSource.m", 673, "-[GKMultiplayerDataSource setParticipantsWithPlayers:automatchPlayerCount:shouldUpdateAutomatchPlayerCount:andStatuses:complete:]"];
  v19 = [v17 dispatchGroupWithName:v18];

  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  v41 = 0u;
  obj = playersCopy;
  v20 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v42;
    do
    {
      v23 = 0;
      do
      {
        if (*v42 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v41 + 1) + 8 * v23);
        players = [(GKMultiplayerDataSource *)self players];
        [players indexOfObject:v24];

        referenceKey = [v24 referenceKey];
        v27 = [statusesCopy objectForKey:referenceKey];

        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __129__GKMultiplayerDataSource_setParticipantsWithPlayers_automatchPlayerCount_shouldUpdateAutomatchPlayerCount_andStatuses_complete___block_invoke_3;
        v39[3] = &unk_279669B00;
        v39[4] = self;
        v39[5] = v24;
        v40 = v27;
        v28 = v27;
        [v19 perform:v39];

        ++v23;
      }

      while (v21 != v23);
      v21 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v21);
  }

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __129__GKMultiplayerDataSource_setParticipantsWithPlayers_automatchPlayerCount_shouldUpdateAutomatchPlayerCount_andStatuses_complete___block_invoke_5;
  v35[3] = &unk_27966BBB8;
  playerCountCopy = playerCount;
  v35[4] = self;
  v36 = completeCopy;
  v37 = countCopy;
  v29 = completeCopy;
  [v19 notifyOnMainQueueWithBlock:v35];
}

void __129__GKMultiplayerDataSource_setParticipantsWithPlayers_automatchPlayerCount_shouldUpdateAutomatchPlayerCount_andStatuses_complete___block_invoke_3(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v10[0] = *(a1 + 40);
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v6 = [*(a1 + 48) integerValue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __129__GKMultiplayerDataSource_setParticipantsWithPlayers_automatchPlayerCount_shouldUpdateAutomatchPlayerCount_andStatuses_complete___block_invoke_4;
  v8[3] = &unk_27966A4A8;
  v9 = v3;
  v7 = v3;
  [v4 addPlayers:v5 withStatus:v6 complete:v8];
}

uint64_t __129__GKMultiplayerDataSource_setParticipantsWithPlayers_automatchPlayerCount_shouldUpdateAutomatchPlayerCount_andStatuses_complete___block_invoke_5(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) setAutomatchPlayerCount:*(a1 + 48)];
  }

  [*(a1 + 32) updateParticipants];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)revertFailedPlayers
{
  OUTLINED_FUNCTION_4();
  v2 = MEMORY[0x277CCACA8];
  v4 = v3;
  v12 = v0;
  v5 = [v2 stringWithFormat:@"- END - uuid: %@, playersToRemove: %@"];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_1(&dword_24DE53000, v6, v7, "****** - GKCVC - %s \n%@", v8, v9, v10, v11, v1, v12, 2u);
}

- (void)failedToInvitePlayers:(id)players
{
  v23 = *MEMORY[0x277D85DE8];
  playersCopy = players;
  uUID = [MEMORY[0x277CCAD78] UUID];
  if (!*MEMORY[0x277D0C2A0])
  {
    v6 = GKOSLoggers();
  }

  v7 = MEMORY[0x277D0C270];
  v8 = *MEMORY[0x277D0C270];
  if (os_log_type_enabled(*MEMORY[0x277D0C270], OS_LOG_TYPE_DEBUG))
  {
    [GKMultiplayerDataSource failedToInvitePlayers:v8];
  }

  array = [MEMORY[0x277CBEB18] array];
  players = playersCopy;
  if (!playersCopy)
  {
    players = self->_players;
  }

  playersCopy2 = players;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = [(NSMutableOrderedSet *)playersCopy2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(playersCopy2);
        }

        v16 = *(*(&v18 + 1) + 8 * i);
        if ([(GKMultiplayerDataSource *)self statusForPlayer:v16]== 1)
        {
          [array addObject:v16];
        }
      }

      v13 = [(NSMutableOrderedSet *)playersCopy2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  if ([array count])
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v17 = GKOSLoggers();
    }

    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEBUG))
    {
      [GKMultiplayerDataSource failedToInvitePlayers:];
    }

    [(GKMultiplayerDataSource *)self setStatus:4 forPlayers:array complete:0];
  }
}

- (BOOL)canCancelCurrentMatchmaking
{
  players = [(GKMultiplayerDataSource *)self players];
  v4 = [players count];
  readyPlayers = [(GKMultiplayerDataSource *)self readyPlayers];
  v6 = v4 != [readyPlayers count] || -[GKMultiplayerDataSource automatchPlayerCount](self, "automatchPlayerCount") > 0;

  return v6;
}

- (BOOL)haveNonGuestPlayers
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  players = [(GKMultiplayerDataSource *)self players];
  v3 = [players countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(players);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if (([v6 isGuestPlayer] & 1) == 0 && !objc_msgSend(v6, "isLocalPlayer"))
        {
          LOBYTE(v3) = 1;
          goto LABEL_12;
        }
      }

      v3 = [players countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v3;
}

- (void)setAutomatchPlayerCount:(int64_t)count
{
  os_unfair_lock_lock(&self->_automatchPlayerCountLock);
  delegate = [(GKMultiplayerDataSource *)self delegate];
  allowAutoMatch = [delegate allowAutoMatch];

  if (allowAutoMatch)
  {
    countCopy = count;
  }

  else
  {
    countCopy = 0;
  }

  self->_automatchPlayerCount = countCopy;

  os_unfair_lock_unlock(&self->_automatchPlayerCountLock);
}

- (void)setAutomatchPlayerCount:(int64_t)count complete:(id)complete
{
  if (self->_automatchPlayerCount != count)
  {
    v6[6] = v4;
    v6[7] = v5;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __60__GKMultiplayerDataSource_setAutomatchPlayerCount_complete___block_invoke;
    v6[3] = &unk_27966B9C8;
    v6[4] = self;
    v6[5] = count;
    [(GKCollectionViewDataSource *)self notifyBatchUpdate:v6 complete:complete];
  }
}

uint64_t __60__GKMultiplayerDataSource_setAutomatchPlayerCount_complete___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAutomatchPlayerCount:*(a1 + 40)];
  v2 = [*(a1 + 32) implicitAutomatchPlayerCount];
  if (v2 > [*(a1 + 32) automatchPlayerCount])
  {
    [*(a1 + 32) setImplicitAutomatchPlayerCount:{objc_msgSend(*(a1 + 32), "automatchPlayerCount")}];
  }

  [*(a1 + 32) setAutomatchPlayersAddedByUser:{objc_msgSend(*(a1 + 32), "automatchPlayerCount") - objc_msgSend(*(a1 + 32), "implicitAutomatchPlayerCount")}];
  v3 = *(a1 + 32);

  return [v3 updateParticipants];
}

- (void)refreshStatusForParticipant:(id)participant
{
  participantCopy = participant;
  delegate = [(GKMultiplayerDataSource *)self delegate];
  isCanceling = [delegate isCanceling];

  if (isCanceling)
  {
    v7 = participantCopy;
    v8 = 14;
LABEL_3:
    [v7 setStatus:v8];
    goto LABEL_10;
  }

  if ([participantCopy type] == 1)
  {
    delegate2 = [(GKMultiplayerDataSource *)self delegate];
    allowAutoMatch = [delegate2 allowAutoMatch];

    if (!allowAutoMatch)
    {
      v7 = participantCopy;
      v8 = 0;
      goto LABEL_3;
    }

    delegate3 = [(GKMultiplayerDataSource *)self delegate];
    [participantCopy setStatus:{objc_msgSend(delegate3, "automatchParticipantStatus")}];
  }

  else
  {
    players = [(GKMultiplayerDataSource *)self players];
    player = [participantCopy player];
    v14 = [players containsObject:player];

    if ((v14 & 1) == 0)
    {
      [(GKMultiplayerDataSource *)a2 refreshStatusForParticipant:?];
    }

    player2 = [participantCopy player];
    [participantCopy setStatus:{-[GKMultiplayerDataSource statusForPlayer:](self, "statusForPlayer:", player2)}];
  }

LABEL_10:
}

- (void)didChangeMode
{
  [(GKMultiplayerDataSource *)self refreshParticipantsStatuses];
  delegate = [(GKMultiplayerDataSource *)self delegate];
  [delegate didUpdateParticipants];
}

- (void)refreshParticipantsStatuses
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  participants = [(GKMultiplayerDataSource *)self participants];
  v4 = [participants countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(participants);
        }

        [(GKMultiplayerDataSource *)self refreshStatusForParticipant:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [participants countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)updateParticipants
{
  OUTLINED_FUNCTION_4();
  v2 = v1;
  collectionViewDebugDescription = [OUTLINED_FUNCTION_5() collectionViewDebugDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)replacePlayers:(id)players withGKPlayers:(id)kPlayers completionHandler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  playersCopy = players;
  kPlayersCopy = kPlayers;
  handlerCopy = handler;
  if (!*MEMORY[0x277D0C2A0])
  {
    v11 = GKOSLoggers();
  }

  v12 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v20 = playersCopy;
    v21 = 2112;
    v22 = kPlayersCopy;
    _os_log_impl(&dword_24DE53000, v12, OS_LOG_TYPE_INFO, "Replace contactPlayers: %@ \nwith gkPlayers:%@", buf, 0x16u);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__GKMultiplayerDataSource_replacePlayers_withGKPlayers_completionHandler___block_invoke;
  v15[3] = &unk_27966A9A8;
  v16 = playersCopy;
  v17 = kPlayersCopy;
  selfCopy = self;
  v13 = kPlayersCopy;
  v14 = playersCopy;
  [(GKCollectionViewDataSource *)self notifyBatchUpdate:v15 complete:handlerCopy];
}

void __74__GKMultiplayerDataSource_replacePlayers_withGKPlayers_completionHandler___block_invoke(id *a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] count];
  if ([a1[5] count] == v2)
  {
    if (v2 >= 1)
    {
      v4 = 0;
      *&v3 = 138412290;
      v32 = v3;
      v33 = v2;
      do
      {
        v5 = [a1[4] objectAtIndexedSubscript:{v4, v32}];
        v6 = [a1[6] players];
        v7 = [v6 indexOfObject:v5];

        if (v7 == 0x7FFFFFFFFFFFFFFFLL)
        {
          if (!*MEMORY[0x277D0C2A0])
          {
            v8 = GKOSLoggers();
          }

          v9 = *MEMORY[0x277D0C2B0];
          if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_ERROR))
          {
            *buf = v32;
            v37 = v5;
            _os_log_error_impl(&dword_24DE53000, v9, OS_LOG_TYPE_ERROR, "error: tried to replace a player not in the data source: %@", buf, 0xCu);
          }
        }

        else
        {
          v10 = [a1[5] objectAtIndexedSubscript:v4];
          v11 = [a1[6] playerStatus];
          [v5 internal];
          v12 = v35 = v5;
          [v12 playerID];
          v13 = v34 = v7;
          v14 = [v11 objectForKeyedSubscript:v13];
          v15 = [a1[6] playerStatus];
          v16 = [v10 internal];
          v17 = [v16 playerID];
          [v15 setObject:v14 forKeyedSubscript:v17];

          v18 = v10;
          v5 = v35;

          v19 = [a1[6] playerStatus];
          v20 = [v35 internal];
          v21 = [v20 playerID];
          [v19 removeObjectForKey:v21];

          v22 = [a1[6] players];
          [v22 replaceObjectAtIndex:v34 withObject:v10];

          v23 = [a1[6] orderedPlayerIDList];
          v24 = [v35 internal];
          v25 = [v24 playerID];
          v26 = [v23 indexOfObject:v25];

          if (v26 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v27 = [a1[6] orderedPlayerIDList];
            v28 = [v18 internal];
            v29 = [v28 playerID];
            [v27 replaceObjectAtIndex:v26 withObject:v29];
          }

          v2 = v33;
        }

        ++v4;
      }

      while (v2 != v4);
    }

    [a1[6] updateParticipants];
  }

  else
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v30 = GKOSLoggers();
    }

    v31 = *MEMORY[0x277D0C2B0];
    if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_ERROR))
    {
      __74__GKMultiplayerDataSource_replacePlayers_withGKPlayers_completionHandler___block_invoke_cold_1(v31);
    }
  }
}

- (void)replacePrepopulatedPlayerWithNormalPlayer:(id)player participantServerIdentifier:(id)identifier completionHandler:(id)handler
{
  v39 = *MEMORY[0x277D85DE8];
  playerCopy = player;
  identifierCopy = identifier;
  handlerCopy = handler;
  if (!*MEMORY[0x277D0C2A0])
  {
    v11 = GKOSLoggers();
  }

  v12 = *MEMORY[0x277D0C2B0];
  if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v38 = playerCopy;
    _os_log_impl(&dword_24DE53000, v12, OS_LOG_TYPE_INFO, "Replace a prepopulated player with normalPlayer:%@", buf, 0xCu);
  }

  v29 = playerCopy;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  players = [(GKMultiplayerDataSource *)self players];
  v14 = [players countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v31;
LABEL_7:
    v17 = 0;
    while (1)
    {
      if (*v31 != v16)
      {
        objc_enumerationMutation(players);
      }

      v18 = *(*(&v30 + 1) + 8 * v17);
      internal = [v18 internal];
      playerID = [internal playerID];
      v21 = [playerID isEqualToString:identifierCopy];

      if (v21)
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = [players countByEnumeratingWithState:&v30 objects:v36 count:16];
        if (v15)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    v22 = v18;

    if (!v22)
    {
      goto LABEL_16;
    }

    v35 = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
    v24 = v29;
    v34 = v29;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
    [v28 replacePlayers:v23 withGKPlayers:v25 completionHandler:handlerCopy];
  }

  else
  {
LABEL_13:

LABEL_16:
    v24 = v29;
    if (!*MEMORY[0x277D0C2A0])
    {
      v26 = GKOSLoggers();
    }

    v27 = *MEMORY[0x277D0C2B0];
    if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v38 = identifierCopy;
      _os_log_impl(&dword_24DE53000, v27, OS_LOG_TYPE_INFO, "Cannot find matching prepopulated player for participantID: %@", buf, 0xCu);
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }
}

- (void)removePrepopulatedPlayersIfExisted:(id)existed completionHandler:(id)handler
{
  v28 = *MEMORY[0x277D85DE8];
  existedCopy = existed;
  handlerCopy = handler;
  array = [MEMORY[0x277CBEB18] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  selfCopy = self;
  players = [(GKMultiplayerDataSource *)self players];
  v9 = [players countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(players);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        internal = [v13 internal];
        playerID = [internal playerID];
        v16 = [existedCopy containsObject:playerID];

        if (v16)
        {
          [array addObject:v13];
        }
      }

      v10 = [players countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v10);
  }

  if ([array count])
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v17 = GKOSLoggers();
    }

    v18 = *MEMORY[0x277D0C2B0];
    if (os_log_type_enabled(*MEMORY[0x277D0C2B0], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v26 = existedCopy;
      _os_log_impl(&dword_24DE53000, v18, OS_LOG_TYPE_INFO, "found prepopulated players matching removed participants' server identifiers. serverIdentifiers: %@", buf, 0xCu);
    }

    [(GKMultiplayerDataSource *)selfCopy removePlayers:array complete:handlerCopy];
  }
}

- (void)clearDataSource
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  players = [(GKMultiplayerDataSource *)self players];
  v4 = [players countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(players);
        }

        [(GKMultiplayerDataSource *)self updateDataStructuresForRemovedPlayer:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [players countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(GKMultiplayerDataSource *)self updateParticipants];
}

- (void)restoreOrderOfPlayers
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableOrderedSet *)self->_players valueForKeyPath:@"internal.playerID"];
  [(NSMutableOrderedSet *)self->_orderedPlayerIDList unionOrderedSet:v3];
  v4 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:{-[NSMutableOrderedSet count](self->_players, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_orderedPlayerIDList;
  v6 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [v3 indexOfObject:{*(*(&v12 + 1) + 8 * v9), v12}];
        if (v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = [(NSMutableOrderedSet *)self->_players objectAtIndexedSubscript:v10];
          [v4 addObject:v11];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [(GKMultiplayerDataSource *)self setPlayers:v4];
}

- (void)reportMultiplayerSelection:(id)selection
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = selection;
  v3 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    v6 = *MEMORY[0x277D0BEA0];
    v7 = *MEMORY[0x277D0BE90];
    v8 = *MEMORY[0x277D0BEA8];
    v9 = *MEMORY[0x277D0BE98];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        contact = [v11 contact];

        if (contact)
        {
          reporter = [MEMORY[0x277D0C1F8] reporter];
          [reporter reportEvent:v6 type:v7];
        }

        friendPlayedWith = [v11 friendPlayedWith];
        if (friendPlayedWith)
        {
        }

        else
        {
          friendPlayedNearby = [v11 friendPlayedNearby];

          if (!friendPlayedNearby)
          {
            goto LABEL_12;
          }
        }

        reporter2 = [MEMORY[0x277D0C1F8] reporter];
        [reporter2 reportEvent:v6 type:v8];

LABEL_12:
        friendBiDirectional = [v11 friendBiDirectional];

        if (friendBiDirectional)
        {
          reporter3 = [MEMORY[0x277D0C1F8] reporter];
          [reporter3 reportEvent:v6 type:v9];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v4);
  }
}

- (GKMultiplayerDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)addPlayers:withStatus:replaceAutomatches:complete:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v2 = MEMORY[0x277CCACA8];
  v4 = v3;
  v5 = [OUTLINED_FUNCTION_7() collectionViewDebugDescription];
  v13 = v0;
  v6 = [v2 stringWithFormat:@"uuid: %@, %@"];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_1(&dword_24DE53000, v7, v8, "****** - GKCVC - %s \n%@", v9, v10, v11, v12, v13, v5, 2u);
}

void __77__GKMultiplayerDataSource_addPlayers_withStatus_replaceAutomatches_complete___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [OUTLINED_FUNCTION_5() collectionViewDebugDescription];
  v7 = [v3 stringWithFormat:@"- END - uuid: %@, completed with %@"];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_3(&dword_24DE53000, v8, v9, "****** - GKCVC - %s \n%@", v10, v11, v12, v13, v4, v6, 2u);
}

- (void)removePlayers:complete:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v2 = MEMORY[0x277CCACA8];
  v4 = v3;
  v5 = [OUTLINED_FUNCTION_7() collectionViewDebugDescription];
  v13 = v0;
  v6 = [v2 stringWithFormat:@"uuid: %@, %@"];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_1(&dword_24DE53000, v7, v8, "****** - GKCVC - %s \n%@", v9, v10, v11, v12, v13, v5, 2u);
}

void __50__GKMultiplayerDataSource_removePlayers_complete___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [OUTLINED_FUNCTION_5() collectionViewDebugDescription];
  v7 = [v3 stringWithFormat:@"- END - uuid: %@, completed with %@"];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_3(&dword_24DE53000, v8, v9, "****** - GKCVC - %s \n%@", v10, v11, v12, v13, v4, v6, 2u);
}

- (void)setStatus:(void *)a1 forPlayers:uuid:.cold.1(void *a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a1;
  OUTLINED_FUNCTION_8();
  v4 = [v2 stringWithFormat:@"- MIDDLE 7 - uuid: %@, refreshing index paths:"];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_3(&dword_24DE53000, v5, v6, "****** - GKCVC - %s \n%@", v7, v8, v9, v10, v11, v12, 2u);
}

- (void)setStatus:(void *)a1 forPlayers:uuid:.cold.2(void *a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a1;
  OUTLINED_FUNCTION_8();
  v4 = [v2 stringWithFormat:@"- MIDDLE 9 - uuid: %@, no refresh is needed as index path count is 0"];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_3(&dword_24DE53000, v5, v6, "****** - GKCVC - %s \n%@", v7, v8, v9, v10, v11, v12, 2u);
}

void __57__GKMultiplayerDataSource_setStatus_forPlayers_complete___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x277CCACA8];
  v5 = *(a1 + 48);
  v6 = a3;
  v7 = [OUTLINED_FUNCTION_5() collectionViewDebugDescription];
  v8 = [v4 stringWithFormat:@"- END - uuid: %@, completed with %@"];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_3(&dword_24DE53000, v9, v10, "****** - GKCVC - %s \n%@", v11, v12, v13, v14, v5, v7, 2u);
}

- (void)failedToInvitePlayers:(void *)a1 .cold.1(void *a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a1;
  OUTLINED_FUNCTION_8();
  v4 = [v2 stringWithFormat:@"- START - uuid: %@"];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_3(&dword_24DE53000, v5, v6, "****** - GKCVC - %s \n%@", v7, v8, v9, v10, v11, v12, 2u);
}

- (void)failedToInvitePlayers:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v2 = MEMORY[0x277CCACA8];
  v4 = v3;
  v12 = v0;
  v5 = [v2 stringWithFormat:@"- END - uuid: %@, failedPlayers: %@"];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_1(&dword_24DE53000, v6, v7, "****** - GKCVC - %s \n%@", v8, v9, v10, v11, v1, v12, 2u);
}

- (void)refreshStatusForParticipant:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GKMultiplayerDataSource.m" lineNumber:795 description:&stru_28612D290];
}

@end