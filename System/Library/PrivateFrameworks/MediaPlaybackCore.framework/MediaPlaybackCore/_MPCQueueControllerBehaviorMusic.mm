@interface _MPCQueueControllerBehaviorMusic
+ (BOOL)canLoadQueue:(id)queue reason:(id *)reason;
+ (id)makeExtensionWithInvalidatable:(id)invalidatable;
- (BOOL)_allDataSourcesSupportInsertionPositionLast;
- (BOOL)_shouldFailWithOverridingErrorForQueue:(id)queue;
- (BOOL)canJumpToContentItemID:(id)d reason:(id *)reason;
- (BOOL)canNextItemFromContentItemID:(id)d reason:(id *)reason;
- (BOOL)canPreviousItemFromContentItemID:(id)d reason:(id *)reason;
- (BOOL)canUserChangeRepeatTypeWithReason:(id *)reason;
- (BOOL)canUserChangeShuffleModeWithReason:(id *)reason;
- (BOOL)canUserEnableAutoPlayWithReason:(id *)reason;
- (BOOL)canUserToggleTransitionsEnabledWithReason:(id *)reason;
- (BOOL)containsRestorableContent;
- (BOOL)isAutoPlayContentItemID:(id)d;
- (BOOL)isExportableSessionType:(id)type forContentItemID:(id)d extension:(id)extension reason:(id *)reason;
- (BOOL)isOneShotExportableSessionForContentItemID:(id)d reason:(id *)reason;
- (BOOL)isSupportedInsertionPosition:(int64_t)position fromContentItemID:(id)d reason:(id *)reason;
- (BOOL)isSupportedQueueEndAction:(int64_t)action;
- (BOOL)itemExistsForContentItemID:(id)d;
- (BOOL)shouldDowngradeTransitionStyle;
- (BOOL)transitionsEnabled;
- (MPCQueueControllerBehaviorHost)host;
- (MPCQueueControllerBehaviorMusicDelegate)musicBehaviorDelegate;
- (NSString)debugDescription;
- (_MPCQueueControllerBehaviorMusic)initWithCoder:(id)coder;
- (_MPCQueueControllerBehaviorMusic)initWithSessionID:(id)d;
- (double)crossfadeDuration;
- (id)_accountForAutoPlay;
- (id)_componentsForContentItemID:(id)d;
- (id)_idenitiferListForPosition:(int64_t)position afterContentItemID:(id)d existingUpNextSectionID:(id)iD createdUpNextSectionID:(id)sectionID;
- (id)_identifierListForSection:(id)section;
- (id)_itemForComponents:(id)components;
- (id)_itemForContentItemID:(id)d allowReuse:(BOOL)reuse;
- (id)_stateDictionaryIncludingQueue:(BOOL)queue;
- (id)_tailInsertionComponentsForUpNextSectionID:(id)d;
- (id)_upNextSectionIdentifierForItem:(id)item shouldLookInBaseList:(BOOL)list;
- (id)contentItemIDEnumeratorStartingAfterContentItemID:(id)d mode:(int64_t)mode options:(unint64_t)options;
- (id)contentItemIDWithoutRepeatIteration:(id)iteration;
- (id)copyContentItemID:(id)d repeatIteration:(int64_t)iteration;
- (id)debugDescriptionForItem:(id)item inSection:(id)section;
- (id)debugDescriptionForSection:(id)section;
- (id)finalizeStateRestorationWithTargetContentItemID:(id)d completion:(id)completion;
- (id)lastSectionContentItemIDForTargetContentItemID:(id)d;
- (id)performLoadCommand:(id)command completion:(id)completion;
- (id)queueReferencesWithMaxCount:(int64_t)count;
- (id)tailInsertionContentItemIDForTargetContentItemID:(id)d;
- (int64_t)_autoplayMode;
- (int64_t)_countOfItemsWithinSection:(id)section maxCount:(int64_t)count;
- (int64_t)_privateListeningSourceForContext:(id)context;
- (int64_t)displayItemCount;
- (int64_t)preferredUpcomingItemCount;
- (int64_t)queueEndAction;
- (int64_t)resolvedTransitionStyle;
- (int64_t)transitionSettingsSource;
- (int64_t)transitionStyle;
- (int64_t)userTransitionPreference;
- (void)_addAutoPlayPlaybackContext:(id)context atPosition:(int64_t)position afterContentItemID:(id)d sectionIdentifier:(id)identifier actions:(unint64_t)actions completion:(id)completion;
- (void)_addPlaybackContext:(id)context atPosition:(int64_t)position afterContentItemID:(id)d sectionIdentifier:(id)identifier actions:(unint64_t)actions completion:(id)completion;
- (void)_emitEventsForAddingPlaybackContext:(id)context sectionIdentifier:(id)identifier;
- (void)_emitEventsForPlaybackBehaviorChangeIfNeeded;
- (void)_evaluateAutoPlayStateAfterItemsChanged;
- (void)_evaluateLoadingDataSourceItemThresholds;
- (void)_initializeWithCoder:(id)coder;
- (void)_qfa_performInsertPlaybackContext:(id)context atPosition:(int64_t)position afterContentItemID:(id)d sectionIdentifier:(id)identifier actions:(unint64_t)actions completion:(id)completion;
- (void)_setRepeatType:(int64_t)type reason:(id)reason;
- (void)_setShuffleType:(int64_t)type startingContentItemID:(id)d randomSource:(id)source;
- (void)_setupNotifications;
- (void)_toggleTransitionsEnabledFromRemoteCommand:(BOOL)command;
- (void)_transitionToAutoPlayState:(int64_t)state;
- (void)_updateGroupSessionParticipants:(id)participants localParticipant:(id)participant;
- (void)activeItemFlagsDidChange:(unsigned __int16)change;
- (void)canReuseQueue:(id)queue completion:(id)completion;
- (void)clearAllItemsAfterContentItemID:(id)d;
- (void)clearUpNextAfterContentItemID:(id)d;
- (void)currentItemDidChangeFromContentItemID:(id)d toContentItemID:(id)iD;
- (void)dealloc;
- (void)didConnectToHost:(id)host;
- (void)didDequeueShuffledItemsInSectionedIdentifierList:(id)list;
- (void)didReachEndOfQueueWithReason:(id)reason;
- (void)donateStartPlayerItem:(id)item completion:(id)completion;
- (void)encodeWithCoder:(id)coder;
- (void)findFirstContentItemIDForItemIntersectingIdentifierSet:(id)set completion:(id)completion;
- (void)getSharedQueueTracklistWithStartingContentItemID:(id)d completion:(id)completion;
- (void)groupSession:(id)session didUpdateParticipants:(id)participants;
- (void)groupSessionDidConnect:(id)connect;
- (void)loadAdditionalUpcomingItems:(int64_t)items completion:(id)completion;
- (void)loadRepresentationForArtworkCatalog:(id)catalog completionHandler:(id)handler;
- (void)moveContentItemID:(id)d afterContentItemID:(id)iD completion:(id)completion;
- (void)moveContentItemID:(id)d beforeContentItemID:(id)iD completion:(id)completion;
- (void)performInsertCommand:(id)command targetContentItemID:(id)d completion:(id)completion;
- (void)prepareForCreateStationAfterContentItemID:(id)d;
- (void)removeContentItemID:(id)d completion:(id)completion;
- (void)reshuffleWithTargetContentItemID:(id)d completion:(id)completion;
- (void)restoreWithSharedCoder:(id)coder block:(id)block;
- (void)sectionedIdentifierList:(id)list dataSourceDidAddItems:(id)items toSection:(id)section;
- (void)sectionedIdentifierList:(id)list dataSourceDidChangeItems:(id)items inSection:(id)section;
- (void)sectionedIdentifierList:(id)list dataSourceDidEndTransactionForSection:(id)section;
- (void)sectionedIdentifierList:(id)list dataSourceDidMoveItems:(id)items inSection:(id)section;
- (void)sectionedIdentifierList:(id)list dataSourceDidRemoveItems:(id)items fromSection:(id)section;
- (void)sectionedIdentifierList:(id)list dataSourceDidUpdateItems:(id)items inSection:(id)section;
- (void)sectionedIdentifierList:(id)list dataSourceDidUpdateSection:(id)section;
- (void)setAutoPlayEnabled:(BOOL)enabled targetContentItemID:(id)d completion:(id)completion;
- (void)setHostingSharedSessionID:(id)d reason:(id)reason;
- (void)setQueueEndAction:(int64_t)action completion:(id)completion;
- (void)setRepeatType:(int64_t)type completion:(id)completion;
- (void)setShuffleType:(int64_t)type targetContentItemID:(id)d completion:(id)completion;
- (void)toggleTransitionsEnabledFromRemoteCommand:(BOOL)command completion:(id)completion;
@end

@implementation _MPCQueueControllerBehaviorMusic

- (int64_t)displayItemCount
{
  itemCount = [(MPShuffleableSectionedIdentifierList *)self->_identifierList itemCount];
  if ([(_MPCQueueControllerBehaviorMusic *)self autoPlayEnabled]&& ![(_MPCQueueControllerBehaviorMusic *)self repeatType])
  {
    itemCount += [(MPSectionedIdentifierList *)self->_autoPlayIdentifierList itemCount];
  }

  return itemCount;
}

- (BOOL)transitionsEnabled
{
  v3 = +[MPCPlaybackEngine deviceSupportsTransitions];
  if (v3)
  {
    if (self->_userToggledTransitionsInDowngradeState || ![(_MPCQueueControllerBehaviorMusic *)self shouldDowngradeTransitionStyle])
    {
      transitionsEnabled = self->_transitionsEnabled;
      if (transitionsEnabled == 1000)
      {
        standardUserDefaults = [MEMORY[0x1E69708A8] standardUserDefaults];
        v6 = +[MPCPlaybackAccountManager sharedManager];
        fallbackAccount = [v6 fallbackAccount];

        LOBYTE(v6) = [standardUserDefaults _areTransitionsEnabledWithSubscription:{objc_msgSend(fallbackAccount, "hasCatalogPlaybackCapability")}];
        LOBYTE(v3) = v6;
      }

      else
      {
        LOBYTE(v3) = transitionsEnabled == 1;
      }
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (int64_t)queueEndAction
{
  if ([(_MPCQueueControllerBehaviorMusic *)self autoPlayEnabled])
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (BOOL)_allDataSourcesSupportInsertionPositionLast
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allSectionIdentifiers = [(MPShuffleableSectionedIdentifierList *)self->_identifierList allSectionIdentifiers];
  v4 = [allSectionIdentifiers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v14 != v6)
      {
        objc_enumerationMutation(allSectionIdentifiers);
      }

      v8 = [(NSMutableDictionary *)self->_dataSources objectForKeyedSubscript:*(*(&v13 + 1) + 8 * v7)];
      v9 = ([v8 isFrozen] & 1) != 0 ? 0 : objc_msgSend(v8, "containsLiveStream");
      shouldRequestAdditionalItemsAtTail = [v8 shouldRequestAdditionalItemsAtTail];

      v11 = 0;
      if (v9 & 1) != 0 || (shouldRequestAdditionalItemsAtTail)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [allSectionIdentifiers countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    v11 = 1;
  }

  return v11;
}

- (int64_t)transitionStyle
{
  resolvedTransitionStyle = [(_MPCQueueControllerBehaviorMusic *)self resolvedTransitionStyle];
  if ([(_MPCQueueControllerBehaviorMusic *)self shouldDowngradeTransitionStyle])
  {
    return 0;
  }

  else
  {
    return resolvedTransitionStyle;
  }
}

- (MPCQueueControllerBehaviorMusicDelegate)musicBehaviorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_musicBehaviorDelegate);

  return WeakRetained;
}

- (MPCQueueControllerBehaviorHost)host
{
  WeakRetained = objc_loadWeakRetained(&self->_host);

  return WeakRetained;
}

- (void)_updateGroupSessionParticipants:(id)participants localParticipant:(id)participant
{
  v34[4] = *MEMORY[0x1E69E9840];
  participantCopy = participant;
  allObjects = [participants allObjects];
  v8 = [allObjects sortedArrayUsingComparator:&__block_literal_global_751];

  v9 = [v8 msv_map:&__block_literal_global_754];
  v10 = v9;
  if (participantCopy)
  {
    v11 = [v9 mutableCopy];
    v12 = participantCopy;
    v13 = [MPCSharedSessionParticipant alloc];
    if (v13)
    {
      v32.receiver = v13;
      v32.super_class = MPCSharedSessionParticipant;
      v14 = [(_MPCQueueControllerBehaviorMusic *)&v32 init];
      v15 = v14;
      if (v14)
      {
        v14->_sessionID = 2;
      }
    }

    else
    {
      v15 = 0;
    }

    identifier = [v12 identifier];
    if (v15)
    {
      objc_setProperty_nonatomic_copy(v15, v16, identifier, 48);
    }

    identity = [v12 identity];

    identifier2 = [identity identifier];
    v21 = identifier2;
    if (v15)
    {
      objc_setProperty_nonatomic_copy(v15, v20, identifier2, 56);

      v15->_wasDecoded = 1;
    }

    else
    {
    }

    [v11 addObject:v15];
    v22 = [v11 copy];

    v10 = v22;
  }

  if (self->_activeHostingSharedSessionID)
  {
    host = [(_MPCQueueControllerBehaviorMusic *)self host];
    eventStream = [host eventStream];
    v33[0] = @"session-id";
    sessionID = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
    null = sessionID;
    if (!sessionID)
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    activeHostingSharedSessionID = self->_activeHostingSharedSessionID;
    v34[0] = null;
    v34[1] = activeHostingSharedSessionID;
    v33[1] = @"shared-session-id";
    v33[2] = @"participants";
    null2 = v10;
    if (!v10)
    {
      null2 = [MEMORY[0x1E695DFB0] null];
    }

    v34[2] = null2;
    v33[3] = @"shared-session-event-route-type";
    activeGroupSession = self->_activeGroupSession;
    if (activeGroupSession)
    {
      [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[MRGroupSession routeType](activeGroupSession, "routeType")}];
    }

    else
    {
      [MEMORY[0x1E695DFB0] null];
    }
    v30 = ;
    v34[3] = v30;
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:4];
    [eventStream emitEventType:@"shared-session-participants-changed" payload:v31];

    if (v10)
    {
      if (sessionID)
      {
LABEL_20:

        goto LABEL_21;
      }
    }

    else
    {

      if (sessionID)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_20;
  }

LABEL_21:
}

- (void)donateStartPlayerItem:(id)item completion:(id)completion
{
  v70[2] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  completionCopy = completion;
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    sessionID = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
    contentItemID = [itemCopy contentItemID];
    *buf = 138543618;
    v66 = sessionID;
    v67 = 2114;
    v68 = contentItemID;
    _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@] donateStartPlayerItem:… | attempting to donate PlayerItem for contentItemID: %{public}@", buf, 0x16u);
  }

  orderedSectionIdentifiers = [(MPShuffleableSectionedIdentifierList *)self->_identifierList orderedSectionIdentifiers];
  firstObject = [orderedSectionIdentifiers firstObject];

  v13 = [(NSMutableDictionary *)self->_dataSources objectForKeyedSubscript:firstObject];
  isRadioDataSource = [v13 isRadioDataSource];
  v15 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (isRadioDataSource)
  {
    if (v16)
    {
      sessionID2 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
      *buf = 138543362;
      v66 = sessionID2;
      _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@] donateStartPlayerItem:… | attempting to donate PlayerItem for radioDataSource", buf, 0xCu);
    }

    v60 = [_MPCQueueControllerEnumerator enumeratorWithMusicBehavior:self mode:0 options:16 startPosition:0 endPosition:0];
    nextObject = [v60 nextObject];
    itemResult = [nextObject itemResult];
    dataSource = [v13 dataSource];
    itemIdentifier = [itemResult itemIdentifier];
    sectionIdentifier = [itemResult sectionIdentifier];
    v22 = [dataSource identifiersForItem:itemIdentifier inSection:sectionIdentifier];

    modelGenericObject = [itemCopy modelGenericObject];
    identifiers = [modelGenericObject identifiers];
    v58 = v22;
    LODWORD(sectionIdentifier) = [v22 intersectsSet:identifiers];

    if (sectionIdentifier)
    {
      v25 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        sessionID3 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
        itemIdentifier2 = [itemResult itemIdentifier];
        sectionIdentifier2 = [itemResult sectionIdentifier];
        *buf = 138543874;
        v66 = sessionID3;
        v67 = 2114;
        v68 = itemIdentifier2;
        v69 = 2114;
        v70[0] = sectionIdentifier2;
        _os_log_impl(&dword_1C5C61000, v25, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@] donateStartPlayerItem:… | removing donated item from radio identifier list. itemIdentifier: %{public}@, sectionIdentifier: %{public}@", buf, 0x20u);
      }

      identifierList = self->_identifierList;
      itemIdentifier3 = [itemResult itemIdentifier];
      sectionIdentifier3 = [itemResult sectionIdentifier];
      [(MPShuffleableSectionedIdentifierList *)identifierList removeItem:itemIdentifier3 fromSection:sectionIdentifier3];
    }

    v62 = firstObject;
    v63 = completionCopy;
    v32 = objc_alloc_init(MPCModelPlaybackContext);
    v33 = objc_alloc_init(MPCModelStorePlaybackItemsRequest);
    quot = [itemCopy storeSubscriptionAdamID];
    v61 = v13;
    if (quot)
    {
      v35 = quot;
      v36 = v70 + 1;
      do
      {
        v37 = lldiv(quot, 10);
        quot = v37.quot;
        if (v37.rem >= 0)
        {
          LOBYTE(v38) = v37.rem;
        }

        else
        {
          v38 = -v37.rem;
        }

        *(v36 - 2) = v38 + 48;
        v39 = (v36 - 2);
        --v36;
      }

      while (v37.quot);
      if (v35 < 0)
      {
        *(v36 - 2) = 45;
        v39 = (v36 - 2);
      }

      v40 = CFStringCreateWithBytes(0, v39, v70 - v39, 0x8000100u, 0);
    }

    else
    {
      v40 = @"0";
    }

    v64 = v40;
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1];
    [(MPCModelStorePlaybackItemsRequest *)v33 setStoreIDs:v43];

    [(MPCModelStorePlaybackItemsRequest *)v33 setLabel:@"com.apple.MediaPlaybackCore.StartPlayerItemDonation"];
    contentItemID2 = [itemCopy contentItemID];
    v45 = MPCQueueControllerBehaviorMusicIdentifierComponentsFromContentItemID(contentItemID2);

    sectionID = [v45 sectionID];
    [(MPCModelPlaybackContext *)v32 setOverrideSILSectionID:sectionID];

    v47 = MEMORY[0x1E69B1470];
    modelGenericObject2 = [itemCopy modelGenericObject];
    identifiers2 = [modelGenericObject2 identifiers];
    itemID = [v45 itemID];
    v51 = [v47 pairWithFirst:identifiers2 second:itemID];
    [(MPCModelPlaybackContext *)v32 setOverrideStartItemID:v51];

    [(MPCModelPlaybackContext *)v32 setRequest:v33];
    v52 = MEMORY[0x1E6970670];
    modelPlayEvent = [itemCopy modelPlayEvent];
    radioStation = [modelPlayEvent radioStation];
    v55 = [v52 genericObjectWithModelObject:radioStation];
    [(MPCModelPlaybackContext *)v32 setFallbackSectionRepresentation:v55];

    modelPlayEvent2 = [itemCopy modelPlayEvent];
    featureName = [modelPlayEvent2 featureName];
    [(MPCModelPlaybackContext *)v32 setPlayActivityFeatureName:featureName];

    completionCopy = v63;
    [(_MPCQueueControllerBehaviorMusic *)self _addPlaybackContext:v32 atPosition:4 afterContentItemID:0 sectionIdentifier:0 actions:16 completion:v63];

    v13 = v61;
    firstObject = v62;
  }

  else
  {
    if (v16)
    {
      [(_MPCQueueControllerBehaviorMusic *)self sessionID];
      v42 = v41 = completionCopy;
      *buf = 138543362;
      v66 = v42;
      _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@] donateStartPlayerItem:… | ignoring player item donation for non-radioDataSource", buf, 0xCu);

      completionCopy = v41;
    }

    completionCopy[2](completionCopy, 0);
  }
}

- (void)_transitionToAutoPlayState:(int64_t)state
{
  selfCopy = self;
  v82 = *MEMORY[0x1E69E9840];
  autoPlayEnabled = [(_MPCQueueControllerBehaviorMusic *)self autoPlayEnabled];
  v6 = 0;
  v7 = state | (selfCopy->_autoPlayState << 16);
  if (v7 <= 393216)
  {
    if (v7 <= 0x40000)
    {
      if (v7 > 0x20000)
      {
        if (v7 <= 196608)
        {
          v8 = 0;
          v9 = 0;
          v10 = 0;
          LOBYTE(v11) = 0;
          if (v7 == 131073)
          {
            goto LABEL_55;
          }

          v12 = 131081;
LABEL_39:
          if (v7 == v12)
          {
            v6 = 0;
            v8 = 0;
            v9 = 0;
            v10 = 1;
LABEL_52:
            LOBYTE(v11) = 1;
            goto LABEL_55;
          }

          goto LABEL_99;
        }

        v13 = 0;
        if (v7 != 196609)
        {
          v12 = 196617;
          goto LABEL_39;
        }

LABEL_54:
        v8 = 0;
        v10 = 0;
        v9 = v6;
        LOWORD(v11) = v13 | selfCopy->_activeItemFlags;
        v6 = 1;
        goto LABEL_55;
      }

      v15 = v7 > 5 || ((1 << state) & 0x32) == 0;
LABEL_31:
      v8 = 0;
      v9 = 0;
      v10 = 0;
      LOBYTE(v11) = 0;
      if (!v15)
      {
        goto LABEL_55;
      }

      goto LABEL_99;
    }

    if (v7 > 327680)
    {
      v16 = v7 - 327681;
      v15 = v16 > 3 || v16 == 1;
      goto LABEL_31;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    LOBYTE(v11) = 0;
    if ((v7 - 262145) < 2)
    {
      goto LABEL_55;
    }

    if (v7 != 262147)
    {
      v12 = 262153;
      goto LABEL_39;
    }

LABEL_44:
    v6 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    goto LABEL_52;
  }

  if (v7 > 524290)
  {
    if (v7 > 589824)
    {
      if (v7 <= 589829)
      {
        v13 = 0;
        if (v7 == 589825)
        {
          goto LABEL_54;
        }

        v14 = 589827;
LABEL_43:
        if (v7 == v14)
        {
          goto LABEL_44;
        }

        goto LABEL_99;
      }

      if (v7 != 589830)
      {
        if (v7 == 589833)
        {
          v6 = 0;
          v8 = 0;
          v9 = 0;
          LOBYTE(v11) = 0;
          v10 = 1;
          goto LABEL_55;
        }

        goto LABEL_99;
      }

      v6 = 0;
      v10 = 0;
      v8 = 1;
LABEL_51:
      v9 = 1;
      goto LABEL_52;
    }

    if (v7 != 524291 && v7 != 524295)
    {
      v12 = 524297;
      goto LABEL_39;
    }

LABEL_45:
    v6 = 0;
    v8 = 0;
    v10 = 0;
    goto LABEL_51;
  }

  if (v7 <= 393222)
  {
    if (v7 == 393217)
    {
      goto LABEL_49;
    }

    if (v7 == 393218)
    {
      v13 = 0;
      v6 = 1;
      goto LABEL_54;
    }

    if (v7 != 393219)
    {
      goto LABEL_99;
    }

    goto LABEL_45;
  }

  if (v7 > 458754)
  {
    if (v7 != 458755)
    {
      v14 = 458760;
      goto LABEL_43;
    }

    goto LABEL_45;
  }

  if (v7 == 393223)
  {
    goto LABEL_44;
  }

  if (v7 == 458753)
  {
LABEL_49:
    v6 = 1;
    v13 = 1;
    goto LABEL_54;
  }

LABEL_99:
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  autoPlayState = selfCopy->_autoPlayState;
  if (autoPlayState >= 0xA)
  {
    v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnexpectedState:%ld", selfCopy->_autoPlayState];
  }

  else
  {
    v61 = off_1E8232D58[autoPlayState];
  }

  if (state >= 0xA)
  {
    state = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnexpectedState:%ld", state];
  }

  else
  {
    state = off_1E8232D58[state];
  }

  [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:4295 description:{@"Unexpected state transition from: %@ to: %@", v61, state}];

  v6 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  LOBYTE(v11) = 0;
LABEL_55:
  v66 = v10;
  v67 = v9;
  host = [(_MPCQueueControllerBehaviorMusic *)selfCopy host];
  v18 = MEMORY[0x1E696AEC0];
  v19 = selfCopy->_autoPlayState;
  if (v19 >= 0xA)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnexpectedState:%ld", selfCopy->_autoPlayState];
  }

  else
  {
    v20 = off_1E8232D58[v19];
  }

  if (state >= 0xA)
  {
    state2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnexpectedState:%ld", state];
  }

  else
  {
    state2 = off_1E8232D58[state];
  }

  v22 = [v18 stringWithFormat:@"[ %@ --> %@ ]", v20, state2];

  v23 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    engineID = [host engineID];
    [(_MPCQueueControllerBehaviorMusic *)selfCopy sessionID];
    v63 = selfCopy;
    v25 = v6;
    stateCopy = state;
    v27 = v8;
    v28 = v11;
    v11 = host;
    v30 = v29 = autoPlayEnabled;
    *buf = 138543874;
    v77 = engineID;
    v78 = 2114;
    v79 = v30;
    v80 = 2114;
    v81 = v22;
    _os_log_impl(&dword_1C5C61000, v23, OS_LOG_TYPE_DEFAULT, "[AOT:%{public}@:%{public}@] _transitionToAutoPlayState:… | updating state [] transition=%{public}@", buf, 0x20u);

    autoPlayEnabled = v29;
    host = v11;
    LOBYTE(v11) = v28;
    v8 = v27;
    state = stateCopy;
    v6 = v25;
    selfCopy = v63;
  }

  selfCopy->_autoPlayState = state;
  if (v67)
  {
    autoPlayEndPosition = selfCopy->_autoPlayEndPosition;
    selfCopy->_autoPlayEndPosition = 0;

    if (!v6)
    {
      goto LABEL_65;
    }

LABEL_69:
    autoPlayIdentifierList = selfCopy->_autoPlayIdentifierList;
    selfCopy->_autoPlayIdentifierList = 0;

    if (v8)
    {
      goto LABEL_66;
    }

    goto LABEL_70;
  }

  if (v6)
  {
    goto LABEL_69;
  }

LABEL_65:
  if (v8)
  {
LABEL_66:
    if (selfCopy->_autoPlayIdentifierList || [(MPShuffleableSectionedIdentifierList *)selfCopy->_identifierList itemCount]< 1)
    {
      [(_MPCQueueControllerBehaviorMusic *)selfCopy _transitionToAutoPlayState:7];
      goto LABEL_98;
    }

    v68 = autoPlayEnabled;
    v38 = objc_alloc_init(MEMORY[0x1E6970940]);
    v39 = selfCopy->_autoPlayIdentifierList;
    selfCopy->_autoPlayIdentifierList = v38;

    [(MPSectionedIdentifierList *)selfCopy->_autoPlayIdentifierList setDelegate:selfCopy];
    [(MPSectionedIdentifierList *)selfCopy->_autoPlayIdentifierList setAnnotationDelegate:selfCopy];
    v40 = selfCopy->_autoPlayIdentifierList;
    _accountForAutoPlay = [(_MPCQueueControllerBehaviorMusic *)selfCopy _accountForAutoPlay];
    v42 = +[MPCPlaybackIntent continueListeningRadioPlaybackIntent];
    v43 = [_accountForAutoPlay bag];
    radioConfiguration = [v43 radioConfiguration];

    if ([radioConfiguration isContinueListeningAvailable])
    {
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v69[2] = __63___MPCQueueControllerBehaviorMusic__transitionToAutoPlayState___block_invoke;
      v69[3] = &unk_1E8232C88;
      v75 = a2;
      v69[4] = selfCopy;
      v70 = _accountForAutoPlay;
      v71 = radioConfiguration;
      v72 = host;
      v73 = v22;
      v74 = v40;
      [v42 getRemotePlaybackQueueWithDestination:1 completion:v69];
    }

    else
    {
      v48 = v11;
      v11 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        engineID2 = [host engineID];
        [(_MPCQueueControllerBehaviorMusic *)selfCopy sessionID];
        v50 = v65 = v40;
        *buf = 138543874;
        v77 = engineID2;
        v78 = 2114;
        v79 = v50;
        v80 = 2114;
        v81 = v22;
        _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "[AOT:%{public}@:%{public}@] _transitionToAutoPlayState:… | disabling autoplay [disabled in bag] transition=%{public}@", buf, 0x20u);

        v40 = v65;
      }

      LOBYTE(v11) = v48;
      if (selfCopy->_autoPlayState != 2)
      {
        [(_MPCQueueControllerBehaviorMusic *)selfCopy _transitionToAutoPlayState:2];
      }
    }

    autoPlayEnabled = v68;
    if ((v11 & 1) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_71;
  }

LABEL_70:
  if ((v11 & 1) == 0)
  {
LABEL_86:
    autoPlayEnabled2 = [(_MPCQueueControllerBehaviorMusic *)selfCopy autoPlayEnabled];
    if (autoPlayEnabled != autoPlayEnabled2)
    {
      v52 = autoPlayEnabled2;
      WeakRetained = objc_loadWeakRetained(&selfCopy->_musicBehaviorDelegate);
      v54 = WeakRetained;
      if (v52)
      {
        v55 = 3;
      }

      else
      {
        v55 = 2;
      }

      [WeakRetained behavior:selfCopy didChangeActionAtQueueEnd:v55];
    }

    [(_MPCQueueControllerBehaviorMusic *)selfCopy _emitEventsForPlaybackBehaviorChangeIfNeeded];
    if (v66 && selfCopy->_autoPlayIsTriggered && selfCopy->_autoPlayState != 6)
    {
      v56 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        engineID3 = [host engineID];
        sessionID = [(_MPCQueueControllerBehaviorMusic *)selfCopy sessionID];
        *buf = 138543874;
        v77 = engineID3;
        v78 = 2114;
        v79 = sessionID;
        v80 = 2114;
        v81 = v22;
        _os_log_impl(&dword_1C5C61000, v56, OS_LOG_TYPE_DEFAULT, "[AOT:%{public}@:%{public}@] _transitionToAutoPlayState:… | loading autoplay [triggered] transition=%{public}@", buf, 0x20u);
      }

      [(_MPCQueueControllerBehaviorMusic *)selfCopy _transitionToAutoPlayState:6];
    }

    [host behaviorDidChange];
    goto LABEL_98;
  }

LABEL_71:
  if (selfCopy->_state)
  {
    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BehaviorMusic-transitionToAutoPlayState%@", v22];
    v34 = [host beginEditWithReason:v33];

    v35 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      engineID4 = [host engineID];
      sessionID2 = [(_MPCQueueControllerBehaviorMusic *)selfCopy sessionID];
      *buf = 138543874;
      v77 = engineID4;
      v78 = 2114;
      v79 = sessionID2;
      v80 = 2114;
      v81 = v22;
      _os_log_impl(&dword_1C5C61000, v35, OS_LOG_TYPE_DEFAULT, "[AOT:%{public}@:%{public}@] _transitionToAutoPlayState:… | committing edit [invalidateQueue] transition=%{public}@", buf, 0x20u);
    }

    [v34 commit];
    goto LABEL_86;
  }

  v45 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    engineID5 = [host engineID];
    sessionID3 = [(_MPCQueueControllerBehaviorMusic *)selfCopy sessionID];
    *buf = 138543874;
    v77 = engineID5;
    v78 = 2114;
    v79 = sessionID3;
    v80 = 2114;
    v81 = v22;
    _os_log_impl(&dword_1C5C61000, v45, OS_LOG_TYPE_DEFAULT, "[AOT:%{public}@:%{public}@] _transitionToAutoPlayState:… | ignoring SIL change [state: Loading] transition=%{public}@", buf, 0x20u);
  }

LABEL_98:
}

- (void)_setupNotifications
{
  if (_os_feature_enabled_impl() && +[MPCPlaybackEngine deviceSupportsTransitions])
  {
    standardUserDefaults = [MEMORY[0x1E69708A8] standardUserDefaults];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__transitionPreferencesChanged name:*MEMORY[0x1E6970380] object:standardUserDefaults];
    [defaultCenter addObserver:self selector:sel__transitionPreferencesChanged name:*MEMORY[0x1E6970388] object:standardUserDefaults];
  }
}

- (void)_toggleTransitionsEnabledFromRemoteCommand:(BOOL)command
{
  v26 = *MEMORY[0x1E69E9840];
  standardUserDefaults = [MEMORY[0x1E69708A8] standardUserDefaults];
  v6 = +[MPCPlaybackAccountManager sharedManager];
  fallbackAccount = [v6 fallbackAccount];

  v8 = [standardUserDefaults _areTransitionsEnabledWithSubscription:{objc_msgSend(fallbackAccount, "hasCatalogPlaybackCapability")}];
  if (command || self->_transitionStyle != 1000)
  {
    transitionsEnabled = self->_transitionsEnabled;
    if (transitionsEnabled == 1000)
    {
      v12 = v8 ^ 1u;
    }

    else
    {
      if (transitionsEnabled != [(_MPCQueueControllerBehaviorMusic *)self transitionsEnabled]&& [(_MPCQueueControllerBehaviorMusic *)self shouldDowngradeTransitionStyle])
      {
        goto LABEL_11;
      }

      v12 = self->_transitionsEnabled == 0;
    }

    self->_transitionsEnabled = v12;
LABEL_11:
    v10 = 1;
    goto LABEL_12;
  }

  v9 = self->_transitionsEnabled;
  if (v9 == 1000)
  {
    [standardUserDefaults setTransitionsEnabled:v8 ^ 1u];
    v10 = 0;
  }

  else
  {
    v10 = v9 != v8;
    if (v9 == v8)
    {
      [standardUserDefaults setTransitionsEnabled:v8 ^ 1u];
    }

    self->_transitionsEnabled = 1000;
  }

LABEL_12:
  if ([(_MPCQueueControllerBehaviorMusic *)self shouldDowngradeTransitionStyle])
  {
    self->_userToggledTransitionsInDowngradeState = 1;
  }

  if (v10)
  {
    host = [(_MPCQueueControllerBehaviorMusic *)self host];
    v14 = [host beginEditWithReason:@"BehaviorMusic-setTransitionsEnabled"];
    v15 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      engineID = [host engineID];
      sessionID = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
      v18 = NSStringFromBOOL();
      v20 = 138543874;
      v21 = engineID;
      v22 = 2114;
      v23 = sessionID;
      v24 = 2114;
      v25 = v18;
      _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _toggleTransitionsEnabled: | committing edit [transitionsEnabled toggled] fromRemoteCommand=%{public}@", &v20, 0x20u);
    }

    [v14 commit];
    [(_MPCQueueControllerBehaviorMusic *)self _emitEventsForPlaybackBehaviorChangeIfNeeded];
    WeakRetained = objc_loadWeakRetained(&self->_musicBehaviorDelegate);
    [WeakRetained didChangeTransitionSettings:self];
  }
}

- (id)_tailInsertionComponentsForUpNextSectionID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v5 = [(_MPCQueueControllerBehaviorMusic *)self _identifierListForSection:dCopy];
    v6 = [MEMORY[0x1E6970948] positionForTailOfSection:dCopy];
    v7 = [v5 enumeratorWithOptions:9 startPosition:v6 endPosition:0];

    nextObject = 0;
    while (1)
    {
      v9 = nextObject;
      nextObject = [v7 nextObject];

      if (!nextObject)
      {
        break;
      }

      if ([nextObject entryType] == 3)
      {
        itemResult = [nextObject itemResult];
        sectionIdentifier = [itemResult sectionIdentifier];
        itemResult2 = [nextObject itemResult];
        itemIdentifier = [itemResult2 itemIdentifier];
        v14 = [MPCQueueControllerBehaviorMusicIdentifierComponents itemComponentsWithSectionID:sectionIdentifier itemID:itemIdentifier];

        goto LABEL_8;
      }
    }

    v14 = 0;
LABEL_8:
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_setShuffleType:(int64_t)type startingContentItemID:(id)d randomSource:(id)source
{
  v35 = *MEMORY[0x1E69E9840];
  dCopy = d;
  sourceCopy = source;
  if (type == 1000)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:4080 description:@"User default should be resolved before setting on queue controller."];
  }

  if (self->_shuffleType != type)
  {
    self->_shuffleType = type;
    if (dCopy)
    {
      v11 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:dCopy];
    }

    else
    {
      v11 = 0;
    }

    sectionID = [v11 sectionID];
    itemID = [v11 itemID];
    if ([v11 type] == 3 || objc_msgSend(v11, "type") == 2)
    {

      itemID = 0;
      sectionID = 0;
    }

    v24 = dCopy;
    host = [(_MPCQueueControllerBehaviorMusic *)self host];
    v15 = [host beginEditWithReason:@"BehaviorMusic-setShuffleType"];
    [(MPShuffleableSectionedIdentifierList *)self->_identifierList setShuffleType:type startingItem:itemID inSection:sectionID randomSource:sourceCopy];
    v16 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      [host engineID];
      v17 = v22 = v15;
      sessionID = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
      MPShuffleTypeDescription();
      v19 = v23 = sourceCopy;
      *buf = 138544386;
      v26 = v17;
      v27 = 2114;
      v28 = sessionID;
      v29 = 2114;
      v30 = v19;
      v31 = 2114;
      v32 = itemID;
      v33 = 2114;
      v34 = sectionID;
      _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _setShuffleType:startingContentItemID:randomSource: | committing edit [queue order changed] shuffleType=%{public}@ startItem=%{public}@ startSection=%{public}@", buf, 0x34u);

      v15 = v22;
      sourceCopy = v23;
    }

    [v15 commit];
    [(_MPCQueueControllerBehaviorMusic *)self _emitEventsForPlaybackBehaviorChangeIfNeeded];
    WeakRetained = objc_loadWeakRetained(&self->_musicBehaviorDelegate);
    [WeakRetained behavior:self didChangeShuffleType:type];

    dCopy = v24;
  }
}

- (void)_setRepeatType:(int64_t)type reason:(id)reason
{
  v23 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  if (self->_repeatType != type)
  {
    self->_repeatType = type;
    host = [(_MPCQueueControllerBehaviorMusic *)self host];
    reasonCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"BehaviorMusic-setRepeatType-%@", reasonCopy];
    v9 = [host beginEditWithReason:reasonCopy];
    v10 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      engineID = [host engineID];
      sessionID = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
      v13 = MPNSStringFromRepeatType();
      *buf = 138544130;
      v16 = engineID;
      v17 = 2114;
      v18 = sessionID;
      v19 = 2114;
      v20 = reasonCopy;
      v21 = 2114;
      v22 = v13;
      _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _setRepeatType:reason: | committing edit [repeatType changed: %{public}@] repeatType=%{public}@", buf, 0x2Au);
    }

    [v9 commit];
    [(_MPCQueueControllerBehaviorMusic *)self _emitEventsForPlaybackBehaviorChangeIfNeeded];
    WeakRetained = objc_loadWeakRetained(&self->_musicBehaviorDelegate);
    [WeakRetained behavior:self didChangeRepeatType:type];
  }
}

- (int64_t)_privateListeningSourceForContext:(id)context
{
  contextCopy = context;
  if (MSVDeviceIsAudioAccessory() && ([MEMORY[0x1E6970538] isCurrentDeviceValidHomeAccessory] & 1) == 0 && (objc_msgSend(MEMORY[0x1E69708A8], "standardUserDefaults"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "isDevicePrivateListeningEnabled"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "BOOLValue"), v5, v4, (v6 & 1) != 0))
  {
    v7 = 1;
  }

  else
  {
    privateListeningOverride = [contextCopy privateListeningOverride];

    if (privateListeningOverride)
    {
      v7 = 3;
    }

    else
    {
      userIdentity = [contextCopy userIdentity];

      if (userIdentity)
      {
        v7 = 2;
      }

      else
      {
        v7 = 1;
      }
    }
  }

  return v7;
}

- (id)_upNextSectionIdentifierForItem:(id)item shouldLookInBaseList:(BOOL)list
{
  listCopy = list;
  itemCopy = item;
  if ([itemCopy type])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:3915 description:{@"unsupported components type: %d", objc_msgSend(itemCopy, "type")}];

    if (listCopy)
    {
      goto LABEL_3;
    }
  }

  else if (listCopy)
  {
LABEL_3:
    orderedSectionIdentifiers = [(MPShuffleableSectionedIdentifierList *)self->_identifierList orderedSectionIdentifiers];
    goto LABEL_6;
  }

  orderedSectionIdentifiers = 0;
LABEL_6:
  v9 = [orderedSectionIdentifiers count];
  if (v9 - 1 < 0)
  {
    v12 = 0;
LABEL_12:
    v11 = 0;
  }

  else
  {
    v10 = v9;
    while (1)
    {
      v11 = [orderedSectionIdentifiers objectAtIndexedSubscript:--v10];
      v12 = [v11 hasPrefix:@"UPNXT-"];
      if (v12)
      {
        break;
      }

      if (v10 <= 0)
      {
        goto LABEL_12;
      }
    }
  }

  orderedSectionIdentifiers2 = [(MPSectionedIdentifierList *)self->_autoPlayIdentifierList orderedSectionIdentifiers];

  v14 = [orderedSectionIdentifiers2 count];
  if (v14 - 1 < 0)
  {
LABEL_17:
    v17 = 0;
    if (!v11)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v15 = v14;
    while (1)
    {
      v16 = [orderedSectionIdentifiers2 objectAtIndexedSubscript:--v15];
      if ([v16 hasPrefix:@"UPNXT-"])
      {
        break;
      }

      if (v15 <= 0)
      {
        goto LABEL_17;
      }
    }

    v12 = 0;
    v17 = 1;
    v11 = v16;
    if (!v16)
    {
LABEL_23:
      v23 = 0;
      goto LABEL_66;
    }
  }

  if (!itemCopy)
  {
    v23 = v11;
    goto LABEL_66;
  }

  v18 = MEMORY[0x1E6970948];
  itemID = [itemCopy itemID];
  sectionID = [itemCopy sectionID];
  v65 = [v18 positionForItem:itemID inSection:sectionID];

  identifierList = self->_identifierList;
  sectionID2 = [itemCopy sectionID];
  LODWORD(identifierList) = [(MPShuffleableSectionedIdentifierList *)identifierList hasSection:sectionID2];

  if (identifierList)
  {
    if (v17)
    {
      v23 = v11;
      goto LABEL_65;
    }

    v24 = [(MPShuffleableSectionedIdentifierList *)self->_identifierList enumeratorWithOptions:25 startPosition:v65 endPosition:0];
    nextObject = [v24 nextObject];
    if (nextObject)
    {
      v26 = nextObject;
      do
      {
        entryType = [v26 entryType];
        if (entryType > 3)
        {
          if (entryType == 4)
          {
            trackingEntryResult = [v26 trackingEntryResult];
            sectionIdentifier = [trackingEntryResult sectionIdentifier];
            v40 = sectionIdentifier;
            if (v11 == sectionIdentifier)
            {

LABEL_75:
              v23 = 0;
              goto LABEL_78;
            }

            v41 = [v11 isEqual:sectionIdentifier];

            if (v41)
            {
              goto LABEL_75;
            }
          }

          else if (entryType == 5)
          {
            currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
            v33 = currentHandler2;
            v34 = a2;
            selfCopy2 = self;
            v36 = 3982;
            v37 = @"Encountered unexpected End entry while reverse enumerating";
LABEL_37:
            [currentHandler2 handleFailureInMethod:v34 object:selfCopy2 file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:v36 description:v37];
          }
        }

        else
        {
          switch(entryType)
          {
            case 0:
              currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
              v33 = currentHandler2;
              v34 = a2;
              selfCopy2 = self;
              v36 = 3985;
              v37 = @"Encountered unexpected Unknown entry while reverse enumerating";
              goto LABEL_37;
            case 2:
              trackingEntryResult2 = [v26 trackingEntryResult];
              sectionIdentifier2 = [trackingEntryResult2 sectionIdentifier];
              v30 = sectionIdentifier2;
              if (v11 == sectionIdentifier2)
              {

LABEL_77:
                v23 = v11;
LABEL_78:

                goto LABEL_65;
              }

              v31 = [v11 isEqual:sectionIdentifier2];

              if (v31)
              {
                goto LABEL_77;
              }

              break;
            case 1:
              goto LABEL_77;
          }
        }

        nextObject2 = [v24 nextObject];

        v26 = nextObject2;
      }

      while (nextObject2);
    }
  }

  autoPlayIdentifierList = self->_autoPlayIdentifierList;
  sectionID3 = [itemCopy sectionID];
  LODWORD(autoPlayIdentifierList) = [(MPSectionedIdentifierList *)autoPlayIdentifierList hasSection:sectionID3];

  if ((v12 | autoPlayIdentifierList ^ 1))
  {
LABEL_64:
    v23 = 0;
    goto LABEL_65;
  }

  v45 = [(MPSectionedIdentifierList *)self->_autoPlayIdentifierList enumeratorWithOptions:25 startPosition:v65 endPosition:0];
  nextObject3 = [v45 nextObject];
  if (!nextObject3)
  {
LABEL_63:

    goto LABEL_64;
  }

  v47 = nextObject3;
  while (1)
  {
    entryType2 = [v47 entryType];
    if (entryType2 <= 3)
    {
      break;
    }

    if (entryType2 == 4)
    {
      trackingEntryResult3 = [v47 trackingEntryResult];
      sectionIdentifier3 = [trackingEntryResult3 sectionIdentifier];
      v61 = sectionIdentifier3;
      if (v11 == sectionIdentifier3)
      {

LABEL_70:
        v23 = 0;
        goto LABEL_73;
      }

      v62 = [v11 isEqual:sectionIdentifier3];

      if (v62)
      {
        goto LABEL_70;
      }
    }

    else if (entryType2 == 5)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v54 = currentHandler3;
      v55 = a2;
      selfCopy4 = self;
      v57 = 4019;
      v58 = @"Encountered unexpected End entry while reverse enumerating";
LABEL_57:
      [currentHandler3 handleFailureInMethod:v55 object:selfCopy4 file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:v57 description:v58];
    }

LABEL_62:
    nextObject4 = [v45 nextObject];

    v47 = nextObject4;
    if (!nextObject4)
    {
      goto LABEL_63;
    }
  }

  if (!entryType2)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    v54 = currentHandler3;
    v55 = a2;
    selfCopy4 = self;
    v57 = 4022;
    v58 = @"Encountered unexpected Unknown entry while reverse enumerating";
    goto LABEL_57;
  }

  if (entryType2 != 2)
  {
    if (entryType2 == 1)
    {
      goto LABEL_72;
    }

    goto LABEL_62;
  }

  trackingEntryResult4 = [v47 trackingEntryResult];
  sectionIdentifier4 = [trackingEntryResult4 sectionIdentifier];
  v51 = sectionIdentifier4;
  if (v11 != sectionIdentifier4)
  {
    v52 = [v11 isEqual:sectionIdentifier4];

    if (v52)
    {
      goto LABEL_72;
    }

    goto LABEL_62;
  }

LABEL_72:
  v23 = v11;
LABEL_73:

LABEL_65:
LABEL_66:

  return v23;
}

- (id)_itemForComponents:(id)components
{
  v64 = *MEMORY[0x1E69E9840];
  componentsCopy = components;
  if (!componentsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:3824 description:{@"Invalid parameter not satisfying: %@", @"components != nil"}];
  }

  host = [(_MPCQueueControllerBehaviorMusic *)self host];
  sectionID = [componentsCopy sectionID];
  itemID = [componentsCopy itemID];
  v9 = [(NSMutableDictionary *)self->_dataSources objectForKeyedSubscript:sectionID];
  if ([componentsCopy type] == 2)
  {
    tailPlaceholderItem = [v9 tailPlaceholderItem];
    v11 = [tailPlaceholderItem copy];

    if (!v11)
    {
      v11 = objc_alloc_init(MEMORY[0x1E6970880]);
    }

    contentItemID = [componentsCopy contentItemID];
    [v11 setContentItemID:contentItemID queueSectionID:sectionID queueItemID:itemID];

    v13 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      engineID = [host engineID];
      sessionID = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
      *buf = 138543874;
      v53 = engineID;
      v54 = 2114;
      v55 = sessionID;
      v56 = 2114;
      v57 = v11;
      v16 = "[ITFIT:%{public}@:%{public}@] _itemForComponents | returning placeholder [SectionPlaceholder] item=%{public}@";
LABEL_18:
      _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEFAULT, v16, buf, 0x20u);

      goto LABEL_42;
    }

    goto LABEL_42;
  }

  if ([componentsCopy type] != 3)
  {
    if ([componentsCopy type] == 1)
    {
      v11 = objc_alloc_init(MEMORY[0x1E6970880]);
      contentItemID2 = [componentsCopy contentItemID];
      sectionID2 = [componentsCopy sectionID];
      itemID2 = [componentsCopy itemID];
      [v11 setContentItemID:contentItemID2 queueSectionID:sectionID2 queueItemID:itemID2];

      if ([itemID isEqualToString:@"_PLACEHOLDER_AUTOPLAY_"])
      {
        [v11 setAutoPlayItem:1];
        v51[0] = MEMORY[0x1E69E9820];
        v51[1] = 3221225472;
        v51[2] = __55___MPCQueueControllerBehaviorMusic__itemForComponents___block_invoke;
        v51[3] = &unk_1E8235618;
        v51[4] = self;
        [v11 setArtworkCatalogBlock:v51];
      }

      v13 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        engineID = [host engineID];
        sessionID = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
        *buf = 138543874;
        v53 = engineID;
        v54 = 2114;
        v55 = sessionID;
        v56 = 2114;
        v57 = v11;
        v16 = "[ITFIT:%{public}@:%{public}@] _itemForComponents | returning placeholder [ItemPlaceholder] item=%{public}@";
        goto LABEL_18;
      }

      goto LABEL_42;
    }

    v13 = [(_MPCQueueControllerBehaviorMusic *)self _identifierListForSection:sectionID];
    v22 = [v13 hasItem:itemID inSection:sectionID];
    v23 = [v13 isDeletedItem:itemID inSection:sectionID];
    v24 = v23;
    if (!v22 || (v23 & 1) != 0)
    {
      contentItemID3 = [componentsCopy contentItemID];
      if (v13 == self->_identifierList)
      {
        v32 = @"base";
      }

      else if (v13 == self->_autoPlayIdentifierList)
      {
        v32 = @"auto";
      }

      else
      {
        v32 = @"null";
      }

      v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[%@]=%@", v32, v13];
      v37 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
      v38 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
      if (v9)
      {
        if (v38)
        {
          [host engineID];
          v39 = v46 = v37;
          sessionID2 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
          *buf = 138544642;
          v53 = v39;
          v54 = 2114;
          v55 = sessionID2;
          v56 = 2114;
          v57 = contentItemID3;
          v58 = 2114;
          v59 = v49;
          v60 = 1024;
          v61 = v22;
          v62 = 1024;
          v63 = v24;
          _os_log_impl(&dword_1C5C61000, v46, OS_LOG_TYPE_ERROR, "[ITFIT:%{public}@:%{public}@] _itemForComponents | returning nil [failed to create item] missingContentItemID=%{public}@ identifierList%{public}@ hasItem=%{BOOL}u isDeletedItem=%{BOOL}u", buf, 0x36u);

          v37 = v46;
        }
      }

      else if (v38)
      {
        engineID2 = [host engineID];
        sessionID3 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
        *buf = 138544642;
        v53 = engineID2;
        v54 = 2114;
        v55 = sessionID3;
        v56 = 2114;
        v57 = contentItemID3;
        v58 = 2114;
        v59 = v49;
        v60 = 1024;
        v61 = v22;
        v62 = 1024;
        v63 = v24;
        _os_log_impl(&dword_1C5C61000, v37, OS_LOG_TYPE_ERROR, "[ITFIT:%{public}@:%{public}@] _itemForComponents | returning nil [item missing datasource] missingContentItemID=%{public}@ identifierList%{public}@ hasItem=%{BOOL}u isDeletedItem=%{BOOL}u", buf, 0x36u);
      }

      v11 = 0;
    }

    else
    {
      if (!v9)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:3867 description:{@"Unexpected state: missing dataSourceState for section: %@ dataSources: %@", sectionID, self->_dataSources}];
      }

      if (![v9 shouldUsePlaceholderForItem:itemID inSection:sectionID])
      {
        v11 = [v9 itemForItem:itemID inSection:sectionID];
        contentItemID4 = [componentsCopy contentItemID];
        [v11 setContentItemID:contentItemID4 queueSectionID:sectionID queueItemID:itemID];

        -[NSObject setAutoPlayItem:](v11, "setAutoPlayItem:", [componentsCopy behaviorFlags] & 1);
        [v11 setIsHostingSharedSession:self->_activeHostingSharedSessionID != 0];
        v34 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          engineID3 = [host engineID];
          sessionID4 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
          *buf = 138543874;
          v53 = engineID3;
          v54 = 2114;
          v55 = sessionID4;
          v56 = 2114;
          v57 = v11;
          _os_log_impl(&dword_1C5C61000, v34, OS_LOG_TYPE_DEFAULT, "[ITFIT:%{public}@:%{public}@] _itemForComponents | returning item [] item=%{public}@", buf, 0x20u);
        }

        goto LABEL_41;
      }

      v11 = objc_alloc_init(MEMORY[0x1E6970880]);
      contentItemID3 = [MPCQueueControllerBehaviorMusicIdentifierComponents itemComponentsWithSectionID:sectionID itemID:itemID];
      copyAsPlaceholder = [contentItemID3 copyAsPlaceholder];
      contentItemID5 = [copyAsPlaceholder contentItemID];
      [copyAsPlaceholder sectionID];
      v45 = host;
      v27 = v48 = copyAsPlaceholder;
      itemID3 = [copyAsPlaceholder itemID];
      [v11 setContentItemID:contentItemID5 queueSectionID:v27 queueItemID:itemID3];

      host = v45;
      [v11 setAutoPlayItem:v13 == self->_autoPlayIdentifierList];
      v29 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        engineID4 = [v45 engineID];
        sessionID5 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
        *buf = 138543874;
        v53 = engineID4;
        v54 = 2114;
        v55 = sessionID5;
        v56 = 2114;
        v57 = v11;
        _os_log_impl(&dword_1C5C61000, v29, OS_LOG_TYPE_DEFAULT, "[ITFIT:%{public}@:%{public}@] _itemForComponents | returning placeholder [datasource specified placeholder] item=%{public}@", buf, 0x20u);
      }
    }

    v34 = contentItemID3;
LABEL_41:

    goto LABEL_42;
  }

  tailPlaceholderItem2 = [v9 tailPlaceholderItem];
  v11 = [tailPlaceholderItem2 copy];

  if (!v11)
  {
    v11 = objc_alloc_init(MEMORY[0x1E6970880]);
  }

  contentItemID6 = [componentsCopy contentItemID];
  [v11 setContentItemID:contentItemID6 queueSectionID:sectionID queueItemID:itemID];

  v13 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    engineID = [host engineID];
    sessionID = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
    *buf = 138543874;
    v53 = engineID;
    v54 = 2114;
    v55 = sessionID;
    v56 = 2114;
    v57 = v11;
    v16 = "[ITFIT:%{public}@:%{public}@] _itemForComponents | returning placeholder [EndOfQueuePlaceholder] item=%{public}@";
    goto LABEL_18;
  }

LABEL_42:

  return v11;
}

- (void)_initializeWithCoder:(id)coder
{
  v62 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  self->_wasDecoded = 1;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"il"];
  identifierList = self->_identifierList;
  self->_identifierList = v5;

  v7 = self->_identifierList;
  if (v7)
  {
    identifier = [(MPShuffleableSectionedIdentifierList *)v7 identifier];
    sessionID = self->_sessionID;
    self->_sessionID = identifier;

    [(MPShuffleableSectionedIdentifierList *)self->_identifierList setDelegate:self];
    [(MPShuffleableSectionedIdentifierList *)self->_identifierList setAnnotationDelegate:self];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"apil"];
    autoPlayIdentifierList = self->_autoPlayIdentifierList;
    self->_autoPlayIdentifierList = v10;

    [(MPSectionedIdentifierList *)self->_autoPlayIdentifierList setDelegate:self];
    [(MPSectionedIdentifierList *)self->_autoPlayIdentifierList setAnnotationDelegate:self];
    self->_repeatType = [coderCopy decodeIntegerForKey:@"rt"];
    self->_shuffleType = [coderCopy decodeIntegerForKey:@"st"];
    self->_autoPlayState = [coderCopy decodeIntegerForKey:@"aps"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"apep"];
    autoPlayEndPosition = self->_autoPlayEndPosition;
    self->_autoPlayEndPosition = v12;

    v14 = [coderCopy decodeBoolForKey:@"apit"];
    self->_autoPlayIsTriggered = v14;
    if (self->_autoPlayIdentifierList && (v14 & 1) == 0)
    {
      v15 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        sessionID = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
        *buf = 138543362;
        v59 = sessionID;
        _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_DEFAULT, "[AOT:…:%{public}@] initializeWithCoder: | setting autoPlayIsTriggered = YES [decoded non-nil autoPlayIdentifierList]", buf, 0xCu);
      }

      self->_autoPlayIsTriggered = 1;
    }

    msv_userInfo = [coderCopy msv_userInfo];
    v18 = [msv_userInfo objectForKeyedSubscript:@"QC.targetContentItemID"];
    if ([v18 length])
    {
      v19 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:v18];
      v20 = [msv_userInfo mutableCopy];
      sectionID = [v19 sectionID];
      [v20 setObject:sectionID forKeyedSubscript:@"SOD.sectionID"];

      [coderCopy msv_setUserInfo:v20];
    }

    v22 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = [v22 setWithObjects:{v23, v24, objc_opt_class(), 0}];
    v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"ds"];
    dataSources = self->_dataSources;
    self->_dataSources = v26;

    if (!self->_dataSources)
    {
      v28 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        sessionID2 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
        error = [coderCopy error];
        *buf = 138543618;
        v59 = sessionID2;
        v60 = 2114;
        v61 = error;
        _os_log_impl(&dword_1C5C61000, v28, OS_LOG_TYPE_FAULT, "[PSP:…:%{public}@] initializeWithCoder: | error detected [dataSources failed to decode] decoder.error=%{public}@", buf, 0x16u);
      }

      v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v32 = self->_dataSources;
      self->_dataSources = v31;
    }

    self->_hasUserMutations = [coderCopy decodeBoolForKey:@"hum"];
    [(MPShuffleableSectionedIdentifierList *)self->_identifierList setAutomaticallyReversesNonDestructiveDataSourceEdits:0];
    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lups"];
    latestUpNextSectionID = self->_latestUpNextSectionID;
    self->_latestUpNextSectionID = v33;

    if (!self->_latestUpNextSectionID)
    {
      v51 = v18;
      v52 = msv_userInfo;
      orderedSectionIdentifiers = [(MPShuffleableSectionedIdentifierList *)self->_identifierList orderedSectionIdentifiers];
      orderedSectionIdentifiers2 = [(MPSectionedIdentifierList *)self->_autoPlayIdentifierList orderedSectionIdentifiers];
      v37 = orderedSectionIdentifiers2;
      if (orderedSectionIdentifiers2)
      {
        v38 = orderedSectionIdentifiers2;
      }

      else
      {
        v38 = MEMORY[0x1E695E0F0];
      }

      v39 = [orderedSectionIdentifiers arrayByAddingObjectsFromArray:v38];

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      reverseObjectEnumerator = [v39 reverseObjectEnumerator];
      v41 = [reverseObjectEnumerator countByEnumeratingWithState:&v53 objects:v57 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v54;
        do
        {
          for (i = 0; i != v42; ++i)
          {
            if (*v54 != v43)
            {
              objc_enumerationMutation(reverseObjectEnumerator);
            }

            v45 = *(*(&v53 + 1) + 8 * i);
            if ([v45 hasPrefix:@"UPNXT-"])
            {
              objc_storeStrong(&self->_latestUpNextSectionID, v45);
            }
          }

          v42 = [reverseObjectEnumerator countByEnumeratingWithState:&v53 objects:v57 count:16];
        }

        while (v42);
      }

      v18 = v51;
      msv_userInfo = v52;
    }

    if (_os_feature_enabled_impl())
    {
      if ([coderCopy containsValueForKey:@"tes"] && objc_msgSend(coderCopy, "containsValueForKey:", @"ts"))
      {
        v46 = [coderCopy decodeIntegerForKey:@"tes"];
        v47 = [coderCopy decodeIntegerForKey:@"ts"];
        v48 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cfd"];
      }

      else
      {
        v48 = 0;
        v46 = 1000;
        v47 = 1000;
      }

      self->_transitionsEnabled = v46;
      self->_transitionStyle = v47;
      crossfadeDuration = self->_crossfadeDuration;
      self->_crossfadeDuration = v48;
    }

    [(_MPCQueueControllerBehaviorMusic *)self _setupNotifications];
  }

  else
  {
    v49 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicBehaviorError" code:2 debugDescription:@"Failed to decode identifierList"];
    [coderCopy failWithError:v49];
  }
}

- (id)_identifierListForSection:(id)section
{
  sectionCopy = section;
  p_identifierList = &self->_identifierList;
  if (([(MPShuffleableSectionedIdentifierList *)self->_identifierList hasSection:sectionCopy]& 1) != 0)
  {
    goto LABEL_4;
  }

  autoPlayIdentifierList = self->_autoPlayIdentifierList;
  p_autoPlayIdentifierList = &self->_autoPlayIdentifierList;
  if ([(MPSectionedIdentifierList *)autoPlayIdentifierList hasSection:sectionCopy])
  {
    p_identifierList = p_autoPlayIdentifierList;
LABEL_4:
    v8 = *p_identifierList;
    goto LABEL_6;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (void)_evaluateLoadingDataSourceItemThresholds
{
  host = [(_MPCQueueControllerBehaviorMusic *)self host];
  dataSources = self->_dataSources;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76___MPCQueueControllerBehaviorMusic__evaluateLoadingDataSourceItemThresholds__block_invoke;
  v6[3] = &unk_1E8232A10;
  v6[4] = self;
  v7 = host;
  v5 = host;
  [(NSMutableDictionary *)dataSources enumerateKeysAndObjectsUsingBlock:v6];
}

- (void)_evaluateAutoPlayStateAfterItemsChanged
{
  v25 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  host = [(_MPCQueueControllerBehaviorMusic *)self host];
  autoPlayState = self->_autoPlayState;
  switch(autoPlayState)
  {
    case 5:
      v5 = [(_MPCQueueControllerBehaviorMusic *)self queueReferencesWithMaxCount:1];
      v13 = [v5 count];
      v6 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
      v14 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      if (v13)
      {
        if (v14)
        {
          engineID = [host engineID];
          sessionID = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
          v21 = 138543618;
          v22 = engineID;
          v23 = 2114;
          v24 = sessionID;
          _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_DEFAULT, "[AOT:%{public}@:%{public}@] _evaluateAutoPlayStateAfterItemsChanged | autoplay disabled [finished waitingForItems]", &v21, 0x16u);
        }

        v12 = 3;
      }

      else
      {
        if (v14)
        {
          engineID2 = [host engineID];
          sessionID2 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
          v21 = 138543618;
          v22 = engineID2;
          v23 = 2114;
          v24 = sessionID2;
          _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_DEFAULT, "[AOT:%{public}@:%{public}@] _evaluateAutoPlayStateAfterItemsChanged | autoplay unsupported [no queue references]", &v21, 0x16u);
        }

        v12 = 1;
      }

      goto LABEL_22;
    case 4:
      v5 = [(_MPCQueueControllerBehaviorMusic *)self queueReferencesWithMaxCount:1];
      v10 = [v5 count];
      v6 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
      v11 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      if (!v10)
      {
        if (v11)
        {
          engineID3 = [host engineID];
          sessionID3 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
          v21 = 138543618;
          v22 = engineID3;
          v23 = 2114;
          v24 = sessionID3;
          _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_DEFAULT, "[AOT:%{public}@:%{public}@] _evaluateAutoPlayStateAfterItemsChanged | autoplay unsupported [no queue references]", &v21, 0x16u);
        }

        v12 = 2;
        goto LABEL_22;
      }

      if (!v11)
      {
LABEL_11:
        v12 = 9;
LABEL_22:

        [(_MPCQueueControllerBehaviorMusic *)self _transitionToAutoPlayState:v12];
        goto LABEL_23;
      }

      engineID4 = [host engineID];
      sessionID4 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
      v21 = 138543618;
      v22 = engineID4;
      v23 = 2114;
      v24 = sessionID4;
      v9 = "[AOT:%{public}@:%{public}@] _evaluateAutoPlayStateAfterItemsChanged | autoplay waiting for trigger [finished waitingForItems]";
LABEL_10:
      _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_DEFAULT, v9, &v21, 0x16u);

      goto LABEL_11;
    case 2:
      v5 = [(_MPCQueueControllerBehaviorMusic *)self queueReferencesWithMaxCount:1];
      if (![v5 count])
      {
LABEL_23:

        break;
      }

      v6 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      engineID4 = [host engineID];
      sessionID4 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
      v21 = 138543618;
      v22 = engineID4;
      v23 = 2114;
      v24 = sessionID4;
      v9 = "[AOT:%{public}@:%{public}@] _evaluateAutoPlayStateAfterItemsChanged | autoplay waiting for trigger [new supported content]";
      goto LABEL_10;
  }
}

- (void)_emitEventsForPlaybackBehaviorChangeIfNeeded
{
  v23[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_repeatType];
  [(NSDictionary *)v3 setObject:v4 forKey:@"repeat-type"];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_shuffleType];
  [(NSDictionary *)v3 setObject:v5 forKey:@"shuffle-type"];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[_MPCQueueControllerBehaviorMusic _autoplayMode](self, "_autoplayMode")}];
  [(NSDictionary *)v3 setObject:v6 forKey:@"autoplay-mode"];

  if (_os_feature_enabled_impl())
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[_MPCQueueControllerBehaviorMusic userTransitionPreference](self, "userTransitionPreference")}];
    [(NSDictionary *)v3 setObject:v7 forKey:@"user-transition-preference"];

    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_MPCQueueControllerBehaviorMusic transitionsEnabled](self, "transitionsEnabled")}];
    [(NSDictionary *)v3 setObject:v8 forKey:@"transitions-enabled"];

    v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[_MPCQueueControllerBehaviorMusic transitionStyle](self, "transitionStyle")}];
    [(NSDictionary *)v3 setObject:v9 forKey:@"transition-style"];

    v10 = MEMORY[0x1E696AD98];
    [(_MPCQueueControllerBehaviorMusic *)self crossfadeDuration];
    v11 = [v10 numberWithDouble:?];
    [(NSDictionary *)v3 setObject:v11 forKey:@"crossfade-duration"];

    v12 = [MEMORY[0x1E696AD98] numberWithInteger:{-[_MPCQueueControllerBehaviorMusic transitionSettingsSource](self, "transitionSettingsSource")}];
    [(NSDictionary *)v3 setObject:v12 forKey:@"transition-settings-source"];
  }

  p_lastEmittedBehaviorMetadata = &self->_lastEmittedBehaviorMetadata;
  v14 = self->_lastEmittedBehaviorMetadata;
  v15 = v14;
  if (v14 == v3)
  {
  }

  else
  {
    v16 = [(NSDictionary *)v14 isEqual:v3];

    if ((v16 & 1) == 0)
    {
      host = [(_MPCQueueControllerBehaviorMusic *)self host];
      eventStream = [host eventStream];
      v22[0] = @"session-id";
      sessionID = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
      null = sessionID;
      if (!sessionID)
      {
        null = [MEMORY[0x1E695DFB0] null];
      }

      v22[1] = @"playback-behavior-metadata";
      v23[0] = null;
      v23[1] = v3;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
      [eventStream emitEventType:@"playback-behavior-changed" payload:v21];

      if (!sessionID)
      {
      }

      objc_storeStrong(p_lastEmittedBehaviorMetadata, v3);
    }
  }
}

- (void)_emitEventsForAddingPlaybackContext:(id)context sectionIdentifier:(id)identifier
{
  v119[0] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  identifierCopy = identifier;
  host = [(_MPCQueueControllerBehaviorMusic *)self host];
  v9 = +[MPCPlaybackAccountManager sharedManager];
  userIdentity = [contextCopy userIdentity];
  v94 = v9;
  v11 = [v9 accountForUserIdentity:userIdentity];

  v93 = v11;
  hashedDSID = [v11 hashedDSID];
  v103 = identifierCopy;
  v95 = host;
  v96 = contextCopy;
  v91 = [(_MPCQueueControllerBehaviorMusic *)self _privateListeningSourceForContext:contextCopy];
  if ([contextCopy conformsToProtocol:&unk_1F45B4200])
  {
    v12 = contextCopy;
    playbackRequestEnvironment = [v12 playbackRequestEnvironment];
    requestingBundleIdentifier = [playbackRequestEnvironment requestingBundleIdentifier];
    requestingBundleVersion = [playbackRequestEnvironment requestingBundleVersion];
    delegationProperties = [playbackRequestEnvironment delegationProperties];
    v15 = delegationProperties;
    if (delegationProperties)
    {
      quot = [delegationProperties storeAccountID];
      v107 = v12;
      if (quot)
      {
        v17 = quot;
        v18 = v119 + 1;
        do
        {
          v19 = lldiv(quot, 10);
          quot = v19.quot;
          if (v19.rem >= 0)
          {
            LOBYTE(v20) = v19.rem;
          }

          else
          {
            v20 = -v19.rem;
          }

          *(v18 - 2) = v20 + 48;
          v21 = (v18 - 2);
          --v18;
        }

        while (v19.quot);
        if (v17 < 0)
        {
          *(v18 - 2) = 45;
          v21 = (v18 - 2);
        }

        v22 = CFStringCreateWithBytes(0, v21, v119 - v21, 0x8000100u, 0);
      }

      else
      {
        v22 = @"0";
      }

      v25 = [v94 accountForDSID:v22];

      v105 = v25;
      hashedDSID2 = [v25 hashedDSID];
      v117[0] = @"device-guid";
      deviceGUID = [v15 deviceGUID];
      null = deviceGUID;
      if (!deviceGUID)
      {
        null = [MEMORY[0x1E695DFB0] null];
      }

      v118[0] = null;
      v117[1] = @"user-agent";
      requestUserAgent = [v15 requestUserAgent];
      null2 = requestUserAgent;
      if (!requestUserAgent)
      {
        null2 = [MEMORY[0x1E695DFB0] null];
      }

      v118[1] = null2;
      v117[2] = @"device-name";
      deviceName = [v15 deviceName];
      null3 = deviceName;
      if (!deviceName)
      {
        null3 = [MEMORY[0x1E695DFB0] null];
      }

      v118[2] = null3;
      v117[3] = @"device-software-variant";
      v32 = [v15 systemReleaseType] - 1;
      if (v32 <= 3)
      {
        null4 = off_1E8232D38[v32];
      }

      else
      {
        null4 = [MEMORY[0x1E695DFB0] null];
      }

      v118[3] = null4;
      v101 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v118 forKeys:v117 count:4];
      if (v32 >= 4)
      {
      }

      if (!deviceName)
      {
      }

      if (!requestUserAgent)
      {
      }

      if (!deviceGUID)
      {
      }

      v115 = @"private-listening-enabled";
      v12 = v107;
      privateListeningOverride = [v107 privateListeningOverride];
      v35 = privateListeningOverride;
      v36 = MEMORY[0x1E695E118];
      if (privateListeningOverride)
      {
        v36 = privateListeningOverride;
      }

      v116 = v36;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v116 forKeys:&v115 count:1];

      host = v95;
      contextCopy = v96;
      v24 = hashedDSID2;
    }

    else
    {
      v23 = 0;
      v101 = 0;
      v24 = 0;
    }
  }

  else
  {
    requestingBundleVersion = 0;
    requestingBundleIdentifier = 0;
    v23 = 0;
    v101 = 0;
    v24 = 0;
  }

  v100 = [contextCopy description];
  playActivityFeatureName = [contextCopy playActivityFeatureName];
  privateListeningOverride2 = [contextCopy privateListeningOverride];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v43 = host;
    v44 = v23;
    v45 = v24;
    request = 0;
LABEL_43:
    v46 = 0;
    v104 = 0;
    goto LABEL_48;
  }

  request = [contextCopy request];
  startItemIdentifiers = [contextCopy startItemIdentifiers];
  if (!startItemIdentifiers)
  {
    v43 = host;
    v44 = v23;
    v45 = v24;
    goto LABEL_43;
  }

  v39 = startItemIdentifiers;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v40 = request;
    v41 = [v40 adjustedStartItemIdentifiersForIdentifiers:v39];
    v42 = v41;
    v43 = host;
    v44 = v23;
    if (v41 == v39)
    {
      v104 = 0;
    }

    else
    {
      v104 = v41;
    }

    v45 = v24;

    request = v40;
  }

  else
  {
    v43 = host;
    v44 = v23;
    v45 = v24;
    v104 = 0;
  }

  v46 = v39;
LABEL_48:
  v47 = MEMORY[0x1E696AEC0];
  v48 = objc_opt_class();
  queueDescriptor = [contextCopy queueDescriptor];
  v50 = objc_opt_class();
  v90 = request;
  v51 = [v47 stringWithFormat:@"%@-%@-%@", v48, v50, objc_opt_class()];

  eventStream = [v43 eventStream];
  v113[0] = @"queue-start-item-ids";
  null5 = v46;
  v53 = v46;
  if (!v46)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v85 = null5;
  v114[0] = null5;
  v113[1] = @"queue-adjusted-start-item-ids";
  null6 = v104;
  if (!v104)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v84 = null6;
  v114[1] = null6;
  v114[2] = v103;
  v113[2] = @"queue-section-id";
  v113[3] = @"account-id";
  null7 = hashedDSID;
  if (!hashedDSID)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v83 = null7;
  v114[3] = null7;
  v113[4] = @"queue-delegated-account-id";
  null8 = v45;
  if (!v45)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v82 = null8;
  v114[4] = null8;
  v113[5] = @"queue-delegated-account-metadata";
  null9 = v44;
  if (!v44)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v81 = null9;
  v114[5] = null9;
  v113[6] = @"queue-description";
  null10 = v100;
  if (!v100)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v80 = null10;
  v114[6] = null10;
  v113[7] = @"private-listening-source";
  v88 = [MEMORY[0x1E696AD98] numberWithInteger:v91];
  v114[7] = v88;
  v113[8] = @"queue-reporting-metadata";
  v111[0] = @"queue-grouping-id";
  playActivityQueueGroupingID = [contextCopy playActivityQueueGroupingID];
  v60 = playActivityQueueGroupingID;
  if (!playActivityQueueGroupingID)
  {
    playActivityQueueGroupingID = [MEMORY[0x1E695DFB0] null];
  }

  v79 = playActivityQueueGroupingID;
  v112[0] = playActivityQueueGroupingID;
  v111[1] = @"feature-name";
  null11 = playActivityFeatureName;
  if (!playActivityFeatureName)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v78 = null11;
  v112[1] = null11;
  v111[2] = @"reco-data";
  playActivityRecommendationData = [contextCopy playActivityRecommendationData];
  v86 = playActivityRecommendationData;
  if (!playActivityRecommendationData)
  {
    playActivityRecommendationData = [MEMORY[0x1E695DFB0] null];
  }

  v87 = v60;
  v92 = v44;
  v77 = playActivityRecommendationData;
  v112[2] = playActivityRecommendationData;
  v111[3] = @"siri-ref-id";
  siriReferenceIdentifier = [contextCopy siriReferenceIdentifier];
  v64 = siriReferenceIdentifier;
  if (!siriReferenceIdentifier)
  {
    siriReferenceIdentifier = [MEMORY[0x1E695DFB0] null];
  }

  v98 = v45;
  v76 = siriReferenceIdentifier;
  v112[3] = siriReferenceIdentifier;
  v111[4] = @"siri-wha-metrics";
  siriWHAMetricsInfo = [contextCopy siriWHAMetricsInfo];
  v66 = siriWHAMetricsInfo;
  if (!siriWHAMetricsInfo)
  {
    siriWHAMetricsInfo = [MEMORY[0x1E695DFB0] null];
  }

  v75 = siriWHAMetricsInfo;
  v112[4] = siriWHAMetricsInfo;
  v111[5] = @"private-listening-enabled";
  null12 = privateListeningOverride2;
  if (!privateListeningOverride2)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v112[5] = null12;
  v111[6] = @"application-bundle-id";
  null13 = requestingBundleIdentifier;
  if (!requestingBundleIdentifier)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v74 = null12;
  v112[6] = null13;
  v111[7] = @"application-version";
  null14 = requestingBundleVersion;
  if (!requestingBundleVersion)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v89 = v53;
  v112[7] = null14;
  v111[8] = @"playback-context-class-name";
  null15 = v51;
  if (!v51)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v112[8] = null15;
  v111[9] = @"device-metadata";
  null16 = v101;
  if (!v101)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v112[9] = null16;
  v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v112 forKeys:v111 count:10];
  v114[8] = v72;
  v73 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v114 forKeys:v113 count:9];
  [eventStream emitEventType:@"queue-add" payload:v73];

  if (!v101)
  {
  }

  if (!v51)
  {
  }

  if (!requestingBundleVersion)
  {
  }

  if (!requestingBundleIdentifier)
  {
  }

  if (!privateListeningOverride2)
  {
  }

  if (!v66)
  {
  }

  if (!v64)
  {
  }

  if (!v86)
  {
  }

  if (!playActivityFeatureName)
  {
  }

  if (!v87)
  {
  }

  if (v100)
  {
    if (v92)
    {
      goto LABEL_102;
    }
  }

  else
  {

    if (v92)
    {
LABEL_102:
      if (v98)
      {
        goto LABEL_103;
      }

LABEL_109:

      if (hashedDSID)
      {
        goto LABEL_104;
      }

      goto LABEL_110;
    }
  }

  if (!v98)
  {
    goto LABEL_109;
  }

LABEL_103:
  if (hashedDSID)
  {
    goto LABEL_104;
  }

LABEL_110:

LABEL_104:
  if (!v104)
  {

    if (v89)
    {
      goto LABEL_106;
    }

LABEL_112:

    goto LABEL_106;
  }

  if (!v89)
  {
    goto LABEL_112;
  }

LABEL_106:
}

- (int64_t)_countOfItemsWithinSection:(id)section maxCount:(int64_t)count
{
  sectionCopy = section;
  v7 = [MEMORY[0x1E6970948] positionForHeadOfSection:sectionCopy];
  v8 = [MEMORY[0x1E6970948] positionForTailOfSection:sectionCopy];
  v9 = [_MPCQueueControllerEnumerator enumeratorWithMusicBehavior:self mode:0 options:16 startPosition:v7 endPosition:v8];

  v10 = 0;
  if (count <= 1)
  {
    countCopy = 1;
  }

  else
  {
    countCopy = count;
  }

  while (1)
  {
    nextObject = [v9 nextObject];

    if (!nextObject)
    {
      break;
    }

    if (countCopy == ++v10)
    {
      v10 = countCopy;
      break;
    }
  }

  return v10;
}

- (id)_componentsForContentItemID:(id)d
{
  dCopy = d;
  if (![dCopy length])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:3537 description:{@"Invalid parameter not satisfying: %@", @"contentItemID.length > 0"}];
  }

  v6 = MPCQueueControllerBehaviorMusicIdentifierComponentsFromContentItemID(dCopy);
  autoPlayIdentifierList = self->_autoPlayIdentifierList;
  sectionID = [v6 sectionID];
  v9 = [(MPSectionedIdentifierList *)autoPlayIdentifierList hasSection:sectionID];

  if ([v6 type] == 1)
  {
    itemID = [v6 itemID];
    v11 = [itemID isEqualToString:@"_PLACEHOLDER_AUTOPLAY_"];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v6 copyWithBehaviorFlags:(v9 | v11) & 1];

  return v12;
}

- (int64_t)_autoplayMode
{
  autoPlayState = self->_autoPlayState;
  if (autoPlayState > 8)
  {
    return 2;
  }

  else
  {
    return qword_1C6045280[autoPlayState];
  }
}

- (void)_addAutoPlayPlaybackContext:(id)context atPosition:(int64_t)position afterContentItemID:(id)d sectionIdentifier:(id)identifier actions:(unint64_t)actions completion:(id)completion
{
  actionsCopy = actions;
  v154 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  dCopy = d;
  identifierCopy = identifier;
  completionCopy = completion;
  v15 = [contextCopy copy];
  host = [(_MPCQueueControllerBehaviorMusic *)self host];
  if (position != 1)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BehaviorMusic-addAutoPlayPlaybackContext-<%@: %p>", objc_opt_class(), v15];
    v133 = [host beginEditWithReason:v22];

    v132 = host;
    if (position)
    {
      if (position != 3)
      {
        selfCopy3 = self;
        p_autoPlayIdentifierList = &self->_autoPlayIdentifierList;
        v124 = self->_autoPlayIdentifierList;
        goto LABEL_27;
      }

      v23 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:dCopy];
      if ([v23 type] != 3)
      {
        goto LABEL_19;
      }

      v24 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        engineID = [host engineID];
        sessionID = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
        [v23 deferredNextContentItemID];
        v28 = v27 = v23;
        *buf = 138543874;
        v145 = engineID;
        v146 = 2114;
        v147 = sessionID;
        v148 = 2114;
        v149 = v28;
        _os_log_impl(&dword_1C5C61000, v24, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _addAutoPlayPlaybackContext: | converting PositionSpecified item to deferredNextContentItem [specified placeholder item] deferredNextContentItem=%{public}@", buf, 0x20u);

        v23 = v27;
      }

      deferredNextContentItemID = [v23 deferredNextContentItemID];

      if (!deferredNextContentItemID)
      {
        v21 = v133;
        [v133 rollback];
        v30 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          engineID2 = [host engineID];
          selfCopy2 = self;
          v33 = v23;
          v34 = engineID2;
          [(_MPCQueueControllerBehaviorMusic *)selfCopy2 sessionID];
          v36 = v35 = v15;
          *buf = 138543618;
          v145 = v34;
          v146 = 2114;
          v147 = v36;
          _os_log_impl(&dword_1C5C61000, v30, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _addAutoPlayPlaybackContext: | failed to convert to deferredNextContentItem PositionSpecified [deferredNextContentItemID is nil]", buf, 0x16u);

          v15 = v35;
          v23 = v33;
        }

        v37 = MEMORY[0x1E696ABC0];
        v38 = @"The specified insertion position [specified] was unsupported because the specified item is a placeholder and there is no deferredNextContentItemAnchorID.";
LABEL_69:
        v109 = [v37 msv_errorWithDomain:@"MPCMusicBehaviorError" code:4 debugDescription:v38];
        completionCopy[2](completionCopy, v109);
        goto LABEL_64;
      }
    }

    else
    {
      v23 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:dCopy];
      if ([v23 type] != 3)
      {
        position = 0;
LABEL_22:
        selfCopy3 = self;
        p_autoPlayIdentifierList = &self->_autoPlayIdentifierList;
        v49 = self->_autoPlayIdentifierList;
        v124 = v49;
        if (v23)
        {
          v50 = v49;
          itemID = [v23 itemID];
          v52 = v23;
          sectionID = [v23 sectionID];
          v54 = [(MPSectionedIdentifierList *)v50 hasItem:itemID inSection:sectionID];

          if ((v54 & 1) == 0)
          {
            v21 = v133;
            [v133 rollback];
            v55 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
            if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
            {
              engineID3 = [v132 engineID];
              sessionID2 = [(_MPCQueueControllerBehaviorMusic *)selfCopy3 sessionID];
              [v52 sectionID];
              v58 = v126 = v15;
              itemID2 = [v52 itemID];
              *buf = 138544130;
              v145 = engineID3;
              v146 = 2114;
              v147 = sessionID2;
              v148 = 2114;
              v149 = v58;
              v150 = 2114;
              v151 = itemID2;
              _os_log_impl(&dword_1C5C61000, v55, OS_LOG_TYPE_ERROR, "[BMUS:%{public}@:%{public}@] _addAutoPlayPlaybackContext: | rolling back edit [autoPlayIdentifierList does not contain afterItem] afterSection=%{public}@ afterItem=%{public}@", buf, 0x2Au);

              v21 = v133;
              v15 = v126;
            }

            v60 = MEMORY[0x1E696ABC0];
            contentItemID = [v52 contentItemID];
            v62 = v60;
            v23 = v52;
            v63 = [v62 msv_errorWithDomain:@"MPCMusicBehaviorError" code:4 debugDescription:{@"Cannot insert after unknown item (in autoplay identifier list): %@", contentItemID}];
            completionCopy[2](completionCopy, v63);
            host = v132;
LABEL_63:

            v109 = v124;
LABEL_64:

            goto LABEL_65;
          }

LABEL_28:
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v64 = v15;
            if ([v64 continueListeningStation])
            {
              [v64 setContinueListeningQueueProvider:selfCopy3];
            }
          }

          v125 = v52;
          v65 = [[_MPCQueueControllerBehaviorMusicDataSourceState alloc] initWithPlaybackContext:v15];
          v66 = selfCopy3;
          dataSources = selfCopy3->_dataSources;
          sectionIdentifier = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v65 sectionIdentifier];
          v69 = [(NSMutableDictionary *)dataSources objectForKeyedSubscript:sectionIdentifier];

          if (v69)
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:selfCopy3 file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:3410 description:@"Attempting to add datasource for an already existing section."];
          }

          host = v132;
          eventStream = [v132 eventStream];
          [(_MPCQueueControllerBehaviorMusicDataSourceState *)v65 setEventStream:eventStream];

          playerID = [v132 playerID];
          [(_MPCQueueControllerBehaviorMusicDataSourceState *)v65 setPlayerID:playerID];

          v72 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
          if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
          {
            engineID4 = [v132 engineID];
            sessionID3 = [(_MPCQueueControllerBehaviorMusic *)selfCopy3 sessionID];
            [(_MPCQueueControllerBehaviorMusicDataSourceState *)v65 sectionIdentifier];
            v76 = v75 = contextCopy;
            *buf = 138544130;
            v145 = engineID4;
            v146 = 2114;
            v147 = sessionID3;
            v148 = 2048;
            v149 = v65;
            v150 = 2114;
            v151 = v76;
            _os_log_impl(&dword_1C5C61000, v72, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _addAutoPlayPlaybackContext: | adding dataSource [] dataSource=%p section=%{public}@", buf, 0x2Au);

            contextCopy = v75;
            host = v132;
          }

          v77 = v66->_dataSources;
          sectionIdentifier2 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v65 sectionIdentifier];
          [(NSMutableDictionary *)v77 setObject:v65 forKeyedSubscript:sectionIdentifier2];

          identifier = [(MPSectionedIdentifierList *)v66->_autoPlayIdentifierList identifier];
          sectionIdentifier3 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v65 sectionIdentifier];
          v122 = contextCopy;
          [(_MPCQueueControllerBehaviorMusic *)v66 _emitEventsForAddingPlaybackContext:contextCopy sectionIdentifier:sectionIdentifier3];

          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __131___MPCQueueControllerBehaviorMusic__addAutoPlayPlaybackContext_atPosition_afterContentItemID_sectionIdentifier_actions_completion___block_invoke;
          aBlock[3] = &unk_1E8232B50;
          v120 = identifier;
          v137 = v120;
          v138 = v66;
          v123 = host;
          v139 = v123;
          contentItemID = v65;
          v140 = contentItemID;
          v141 = v133;
          v142 = completionCopy;
          v143 = actionsCopy & 1;
          v127 = _Block_copy(aBlock);
          playbackContext = [(_MPCQueueControllerBehaviorMusicDataSourceState *)contentItemID playbackContext];
          [playbackContext setShuffleType:0];

          if ((actionsCopy & 1) == 0)
          {
            playbackContext2 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)contentItemID playbackContext];
            [playbackContext2 clearStartItem];
          }

          if (position <= 2)
          {
            if (position)
            {
              if (position == 2)
              {
                v89 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
                if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
                {
                  engineID5 = [v123 engineID];
                  sessionID4 = [(_MPCQueueControllerBehaviorMusic *)v66 sessionID];
                  sectionIdentifier4 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)contentItemID sectionIdentifier];
                  *buf = 138543874;
                  v145 = engineID5;
                  v146 = 2114;
                  v147 = sessionID4;
                  v148 = 2114;
                  v149 = sectionIdentifier4;
                  _os_log_impl(&dword_1C5C61000, v89, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _addAutoPlayPlaybackContext: | adding data source [] position=Last section=%{public}@", buf, 0x20u);

                  contextCopy = v122;
                  host = v132;
                }

                v93 = *p_autoPlayIdentifierList;
                sectionIdentifier5 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)contentItemID sectionIdentifier];
                [(MPSectionedIdentifierList *)v93 addDataSourceAtEnd:contentItemID section:sectionIdentifier5 completion:v127];
                goto LABEL_59;
              }

LABEL_58:
              sectionIdentifier5 = [MEMORY[0x1E696AAA8] currentHandler];
              [sectionIdentifier5 handleFailureInMethod:a2 object:v66 file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:3487 description:{@"Unsupported insertion position %d for %s | ", position, "-[_MPCQueueControllerBehaviorMusic _addAutoPlayPlaybackContext:atPosition:afterContentItemID:sectionIdentifier:actions:completion:]"}];
LABEL_59:
              v21 = v133;

              if ((actionsCopy & 0x10) == 0 && !v66->_hasUserMutations)
              {
                v66->_hasUserMutations = 1;
              }

              [v123 behaviorDidChange];

              v23 = v125;
              v63 = v120;
              goto LABEL_63;
            }

            v94 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
            if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
            {
              engineID6 = [v123 engineID];
              sessionID5 = [(_MPCQueueControllerBehaviorMusic *)v66 sessionID];
              sectionIdentifier6 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)contentItemID sectionIdentifier];
              itemID3 = [v125 itemID];
              sectionID2 = [v125 sectionID];
              *buf = 138544386;
              v145 = engineID6;
              v146 = 2114;
              v147 = sessionID5;
              v148 = 2114;
              v149 = sectionIdentifier6;
              v150 = 2114;
              v151 = itemID3;
              v152 = 2114;
              v153 = sectionID2;
              _os_log_impl(&dword_1C5C61000, v94, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _addAutoPlayPlaybackContext: | adding data source [] position=Head section=%{public}@ afterItem=%{public}@ inSection=%{public}@", buf, 0x34u);
            }
          }

          else
          {
            if (position != 3)
            {
              if (position == 4)
              {
                v98 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
                if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
                {
                  engineID7 = [v123 engineID];
                  sessionID6 = [(_MPCQueueControllerBehaviorMusic *)v66 sessionID];
                  sectionIdentifier7 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)contentItemID sectionIdentifier];
                  *buf = 138543874;
                  v145 = engineID7;
                  v146 = 2114;
                  v147 = sessionID6;
                  v148 = 2114;
                  v149 = sectionIdentifier7;
                  _os_log_impl(&dword_1C5C61000, v98, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _addAutoPlayPlaybackContext: | adding data source [] position=Start section=%{public}@", buf, 0x20u);

                  host = v132;
                }

                v102 = *p_autoPlayIdentifierList;
                sectionIdentifier5 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)contentItemID sectionIdentifier];
                [(MPSectionedIdentifierList *)v102 addDataSourceAtStart:contentItemID section:sectionIdentifier5 completion:v127];
                contextCopy = v122;
                goto LABEL_59;
              }

              if (position == 100)
              {
                v83 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
                if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
                {
                  engineID8 = [v123 engineID];
                  sessionID7 = [(_MPCQueueControllerBehaviorMusic *)v66 sessionID];
                  sectionIdentifier8 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)contentItemID sectionIdentifier];
                  *buf = 138544130;
                  v145 = engineID8;
                  v146 = 2114;
                  v147 = sessionID7;
                  v148 = 2114;
                  v149 = sectionIdentifier8;
                  v150 = 2114;
                  v151 = identifierCopy;
                  _os_log_impl(&dword_1C5C61000, v83, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _addAutoPlayPlaybackContext: | adding data source [] position=AfterSection section=%{public}@ afterSection=%{public}@", buf, 0x2Au);

                  contextCopy = v122;
                  host = v132;
                }

                v87 = *p_autoPlayIdentifierList;
                sectionIdentifier5 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)contentItemID sectionIdentifier];
                [(MPSectionedIdentifierList *)v87 addDataSource:contentItemID section:sectionIdentifier5 afterTailOfSection:identifierCopy completion:v127];
                goto LABEL_59;
              }

              goto LABEL_58;
            }

            v94 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
            if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
            {
              engineID9 = [v123 engineID];
              sessionID8 = [(_MPCQueueControllerBehaviorMusic *)v66 sessionID];
              sectionIdentifier9 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)contentItemID sectionIdentifier];
              itemID4 = [v125 itemID];
              sectionID3 = [v125 sectionID];
              *buf = 138544386;
              v145 = engineID9;
              v146 = 2114;
              v147 = sessionID8;
              v148 = 2114;
              v149 = sectionIdentifier9;
              v150 = 2114;
              v151 = itemID4;
              v152 = 2114;
              v153 = sectionID3;
              _os_log_impl(&dword_1C5C61000, v94, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _addAutoPlayPlaybackContext: | adding data source [] position=Specified section=%{public}@ afterItem=%{public}@ inSection=%{public}@", buf, 0x34u);
            }
          }

          v106 = *p_autoPlayIdentifierList;
          sectionIdentifier5 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)contentItemID sectionIdentifier];
          itemID5 = [v125 itemID];
          sectionID4 = [v125 sectionID];
          [(MPSectionedIdentifierList *)v106 addDataSource:contentItemID section:sectionIdentifier5 afterItem:itemID5 inSection:sectionID4 completion:v127];

          contextCopy = v122;
          host = v132;
          goto LABEL_59;
        }

LABEL_27:
        v52 = 0;
        goto LABEL_28;
      }

      v39 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        engineID10 = [host engineID];
        sessionID9 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
        [v23 deferredNextContentItemID];
        v43 = v42 = v23;
        *buf = 138543874;
        v145 = engineID10;
        v146 = 2114;
        v147 = sessionID9;
        v148 = 2114;
        v149 = v43;
        _os_log_impl(&dword_1C5C61000, v39, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _addAutoPlayPlaybackContext: | converting PositionHead to PositionSpecified after deferredNextContentItem [head (current item was placeholder)] deferredNextContentItem=%{public}@", buf, 0x20u);

        v23 = v42;
      }

      deferredNextContentItemID2 = [v23 deferredNextContentItemID];

      if (!deferredNextContentItemID2)
      {
        v21 = v133;
        [v133 rollback];
        v110 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
        if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
        {
          engineID11 = [host engineID];
          selfCopy4 = self;
          v113 = v23;
          v114 = engineID11;
          [(_MPCQueueControllerBehaviorMusic *)selfCopy4 sessionID];
          v116 = v115 = v15;
          *buf = 138543618;
          v145 = v114;
          v146 = 2114;
          v147 = v116;
          _os_log_impl(&dword_1C5C61000, v110, OS_LOG_TYPE_ERROR, "[BMUS:%{public}@:%{public}@] _addAutoPlayPlaybackContext: | failed to convert to deferredNextContentItem PositionSpecified [deferredNextContentItemID is nil]", buf, 0x16u);

          v15 = v115;
          v23 = v113;
        }

        v37 = MEMORY[0x1E696ABC0];
        v38 = @"The specified insertion position [head] was unsupported because the current item is a placeholder and there is no deferredNextContentItemAnchorID.";
        goto LABEL_69;
      }
    }

    deferredNextContentItemID3 = [v23 deferredNextContentItemID];
    v46 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:deferredNextContentItemID3];
    v47 = v23;
    v23 = v46;

LABEL_19:
    position = 3;
    goto LABEL_22;
  }

  v17 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    engineID12 = [host engineID];
    [(_MPCQueueControllerBehaviorMusic *)self sessionID];
    v20 = v19 = host;
    *buf = 138543618;
    v145 = engineID12;
    v146 = 2114;
    v147 = v20;
    _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_ERROR, "[BMUS:%{public}@:%{public}@] _addAutoPlayPlaybackContext: | failed [insert at Tail is not supported -- MediaPlayer/QueueFA is OFF]", buf, 0x16u);

    host = v19;
  }

  v21 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicBehaviorError" code:4 debugDescription:@"Cannot insert at Tail [MediaPlayer/QueueFA is OFF"];
  completionCopy[2](completionCopy, v21);
LABEL_65:
}

- (void)_addPlaybackContext:(id)context atPosition:(int64_t)position afterContentItemID:(id)d sectionIdentifier:(id)identifier actions:(unint64_t)actions completion:(id)completion
{
  v180 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  dCopy = d;
  identifierCopy = identifier;
  completionCopy = completion;
  host = [(_MPCQueueControllerBehaviorMusic *)self host];
  if (position != 1)
  {
    v133 = a2;
    actionsCopy10 = [contextCopy copy];
    actionsCopy10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BehaviorMusic-addPlaybackContext-<%@: %p>", objc_opt_class(), actionsCopy10];
    v153 = [host beginEditWithReason:actionsCopy10];

    WeakRetained = objc_loadWeakRetained(&self->_musicBehaviorDelegate);
    if (position == 3)
    {
      v22 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:dCopy];
      if ([v22 type] != 3)
      {
        positionCopy = 3;
        goto LABEL_23;
      }

      v36 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        engineID = [host engineID];
        sessionID = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
        [v22 deferredNextContentItemID];
        actionsCopy = actions;
        selfCopy = self;
        v40 = v22;
        v42 = v41 = actionsCopy10;
        *buf = 138543874;
        v171 = engineID;
        v172 = 2114;
        v173 = sessionID;
        v174 = 2114;
        v175 = v42;
        _os_log_impl(&dword_1C5C61000, v36, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _addPlaybackContext: | converting PositionSpecified item to deferredNextContentItem [specified placeholder item] deferredNextContentItem=%{public}@", buf, 0x20u);

        actionsCopy10 = v41;
        v22 = v40;
        self = selfCopy;
        actions = actionsCopy;
      }

      deferredNextContentItemID = [v22 deferredNextContentItemID];

      if (!deferredNextContentItemID)
      {
        v127 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
        if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
        {
          engineID2 = [host engineID];
          sessionID2 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
          *buf = 138543874;
          v171 = engineID2;
          v172 = 2114;
          v173 = sessionID2;
          v174 = 2114;
          v175 = v153;
          _os_log_impl(&dword_1C5C61000, v127, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _addPlaybackContext: | failed to convert to deferredNextContentItem PositionSpecified [deferredNextContentItemID is nil] edit=%{public}@", buf, 0x20u);
        }

        [(_MPCQueueControllerBehaviorMusicDataSourceState *)v153 rollback];
        v34 = MEMORY[0x1E696ABC0];
        v35 = @"The specified insertion position [specified] was unsupported because the specified item is a placeholder and there is no deferredNextContentItemAnchorID.";
        goto LABEL_98;
      }
    }

    else
    {
      if (position)
      {
        p_identifierList = &self->_identifierList;
        v149 = self->_identifierList;
        if (position == 2)
        {
          dataSources = self->_dataSources;
          v167[0] = MEMORY[0x1E69E9820];
          v167[1] = 3221225472;
          v167[2] = __123___MPCQueueControllerBehaviorMusic__addPlaybackContext_atPosition_afterContentItemID_sectionIdentifier_actions_completion___block_invoke;
          v167[3] = &unk_1E8232A10;
          v168 = host;
          selfCopy2 = self;
          [(NSMutableDictionary *)dataSources enumerateKeysAndObjectsUsingBlock:v167];

          v22 = 0;
          positionCopy = 2;
        }

        else
        {
          positionCopy = position;
          v22 = 0;
        }

        goto LABEL_29;
      }

      v22 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:dCopy];
      if ([v22 type] != 3)
      {
        positionCopy = 0;
        goto LABEL_23;
      }

      v23 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        engineID3 = [host engineID];
        sessionID3 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
        [v22 deferredNextContentItemID];
        actionsCopy2 = actions;
        selfCopy3 = self;
        v27 = v22;
        v29 = v28 = actionsCopy10;
        *buf = 138543874;
        v171 = engineID3;
        v172 = 2114;
        v173 = sessionID3;
        v174 = 2114;
        v175 = v29;
        _os_log_impl(&dword_1C5C61000, v23, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _addPlaybackContext: | converting PositionHead to PositionSpecified after deferredNextContentItem [head (current item was placeholder)] deferredNextContentItem=%{public}@", buf, 0x20u);

        actionsCopy10 = v28;
        v22 = v27;
        self = selfCopy3;
        actions = actionsCopy2;
      }

      deferredNextContentItemID2 = [v22 deferredNextContentItemID];

      if (!deferredNextContentItemID2)
      {
        v31 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          engineID4 = [host engineID];
          sessionID4 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
          *buf = 138543874;
          v171 = engineID4;
          v172 = 2114;
          v173 = sessionID4;
          v174 = 2114;
          v175 = v153;
          _os_log_impl(&dword_1C5C61000, v31, OS_LOG_TYPE_ERROR, "[BMUS:%{public}@:%{public}@] _addPlaybackContext: | failed to convert to deferredNextContentItem PositionSpecified [deferredNextContentItemID is nil] edit=%{public}@", buf, 0x20u);
        }

        [(_MPCQueueControllerBehaviorMusicDataSourceState *)v153 rollback];
        v34 = MEMORY[0x1E696ABC0];
        v35 = @"The specified insertion position [head] was unsupported because the current item is a placeholder and there is no deferredNextContentItemAnchorID.";
LABEL_98:
        v126 = [v34 msv_errorWithDomain:@"MPCMusicBehaviorError" code:4 debugDescription:v35];
        completionCopy[2](completionCopy, v126);
        goto LABEL_93;
      }
    }

    deferredNextContentItemID3 = [v22 deferredNextContentItemID];
    v45 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:deferredNextContentItemID3];

    positionCopy = 3;
    v22 = v45;
LABEL_23:
    p_identifierList = &self->_identifierList;
    v47 = self->_identifierList;
    v149 = v47;
    if (v22)
    {
      v48 = v47;
      itemID = [v22 itemID];
      sectionID = [v22 sectionID];
      LOBYTE(v48) = [(MPShuffleableSectionedIdentifierList *)v48 hasItem:itemID inSection:sectionID];

      if ((v48 & 1) == 0)
      {
        v51 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          engineID5 = [host engineID];
          sessionID5 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
          [v22 sectionID];
          v54 = v144 = actionsCopy10;
          [v22 itemID];
          v55 = v22;
          v57 = v56 = completionCopy;
          *buf = 138544386;
          v171 = engineID5;
          v172 = 2114;
          v173 = sessionID5;
          v174 = 2114;
          v175 = v54;
          v176 = 2114;
          v177 = v57;
          v178 = 2114;
          v179 = v153;
          _os_log_impl(&dword_1C5C61000, v51, OS_LOG_TYPE_ERROR, "[BMUS:%{public}@:%{public}@] _addPlaybackContext: | rolling back edit [identifierList does not contain afterItem] afterSection=%{public}@ afterItem=%{public}@ edit=%{public}@", buf, 0x34u);

          completionCopy = v56;
          v22 = v55;

          actionsCopy10 = v144;
        }

        [(_MPCQueueControllerBehaviorMusicDataSourceState *)v153 rollback];
        v58 = MEMORY[0x1E696ABC0];
        contentItemID = [v22 contentItemID];
        v60 = [v58 msv_errorWithDomain:@"MPCMusicBehaviorError" code:4 debugDescription:{@"Cannot insert after unknown item (in identifier list): %@", contentItemID}];
        completionCopy[2](completionCopy, v60);
LABEL_92:
        v126 = v149;

LABEL_93:
        goto LABEL_94;
      }
    }

LABEL_29:
    shuffleType = [actionsCopy10 shuffleType];
    if (shuffleType == 1000)
    {
      standardUserDefaults = [MEMORY[0x1E69708A8] standardUserDefaults];
      shuffleType = [standardUserDefaults musicShuffleType];

      [actionsCopy10 setShuffleType:shuffleType];
    }

    v150 = v22;
    if ((actions & 2) != 0 && !shuffleType && self->_shuffleType)
    {
      self->_shuffleType = 0;
      v63 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        engineID6 = [host engineID];
        sessionID6 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
        v66 = MPShuffleTypeDescription();
        *buf = 138543874;
        v171 = engineID6;
        v172 = 2114;
        v173 = sessionID6;
        v174 = 2114;
        v175 = v66;
        _os_log_impl(&dword_1C5C61000, v63, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _addPlaybackContext: | setting SIL shuffle type [first data source] shuffleType=%{public}@", buf, 0x20u);
      }

      [(MPShuffleableSectionedIdentifierList *)self->_identifierList setShuffleType:0];
      [(_MPCQueueControllerBehaviorMusic *)self _emitEventsForPlaybackBehaviorChangeIfNeeded];
      [WeakRetained behavior:self didChangeShuffleType:0];
    }

    repeatType = [actionsCopy10 repeatType];
    if (repeatType == 3)
    {
      standardUserDefaults2 = [MEMORY[0x1E69708A8] standardUserDefaults];
      repeatType = [standardUserDefaults2 musicRepeatType];

      [actionsCopy10 setRepeatType:repeatType];
    }

    if ((actions & 4) != 0 && self->_repeatType != repeatType)
    {
      self->_repeatType = repeatType;
      [(_MPCQueueControllerBehaviorMusic *)self _emitEventsForPlaybackBehaviorChangeIfNeeded];
      [WeakRetained behavior:self didChangeRepeatType:repeatType];
    }

    if ([objc_opt_class() supportsAutoPlay])
    {
      queueEndAction = [actionsCopy10 queueEndAction];
      if (queueEndAction == 1000)
      {
        userIdentity = [actionsCopy10 userIdentity];
        standardUserDefaults3 = [MEMORY[0x1E69708A8] standardUserDefaults];
        v72 = [standardUserDefaults3 autoPlayEnabledForUserIdentity:userIdentity];

        if (v72)
        {
          queueEndAction = 3;
        }

        else
        {
          queueEndAction = 2;
        }

        [actionsCopy10 setQueueEndAction:queueEndAction];
      }

      if ((actions & 0x20) == 0 || self->_autoPlayState)
      {
LABEL_58:
        v77 = [[_MPCQueueControllerBehaviorMusicDataSourceState alloc] initWithPlaybackContext:actionsCopy10];
        v78 = self->_dataSources;
        sectionIdentifier = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v77 sectionIdentifier];
        v80 = [(NSMutableDictionary *)v78 objectForKeyedSubscript:sectionIdentifier];

        if (v80)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:v133 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:3252 description:@"Attempting to add datasource for an already existing section."];
        }

        eventStream = [host eventStream];
        [(_MPCQueueControllerBehaviorMusicDataSourceState *)v77 setEventStream:eventStream];

        playerID = [host playerID];
        [(_MPCQueueControllerBehaviorMusicDataSourceState *)v77 setPlayerID:playerID];

        v83 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
        if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
        {
          engineID7 = [host engineID];
          [(_MPCQueueControllerBehaviorMusic *)self sessionID];
          actionsCopy3 = actions;
          v86 = v85 = self;
          [(_MPCQueueControllerBehaviorMusicDataSourceState *)v77 sectionIdentifier];
          v87 = shuffleType;
          v88 = actionsCopy10;
          v89 = host;
          v91 = v90 = completionCopy;
          *buf = 138544130;
          v171 = engineID7;
          v172 = 2114;
          v173 = v86;
          v174 = 2048;
          v175 = v77;
          v176 = 2114;
          v177 = v91;
          _os_log_impl(&dword_1C5C61000, v83, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _addPlaybackContext: | adding dataSource [] dataSource=%p section=%{public}@", buf, 0x2Au);

          completionCopy = v90;
          host = v89;
          actionsCopy10 = v88;
          shuffleType = v87;

          self = v85;
          actions = actionsCopy3;
        }

        v92 = self->_dataSources;
        sectionIdentifier2 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v77 sectionIdentifier];
        [(NSMutableDictionary *)v92 setObject:v77 forKeyedSubscript:sectionIdentifier2];

        sectionIdentifier3 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v77 sectionIdentifier];
        [(_MPCQueueControllerBehaviorMusic *)self _emitEventsForAddingPlaybackContext:contextCopy sectionIdentifier:sectionIdentifier3];

        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __123___MPCQueueControllerBehaviorMusic__addPlaybackContext_atPosition_afterContentItemID_sectionIdentifier_actions_completion___block_invoke_653;
        aBlock[3] = &unk_1E8232B00;
        actionsCopy4 = actions;
        v165 = shuffleType;
        v95 = host;
        v158 = v95;
        selfCopy4 = self;
        contentItemID = v77;
        v160 = contentItemID;
        v161 = WeakRetained;
        v166 = actions & 1;
        v162 = v153;
        v163 = completionCopy;
        v151 = _Block_copy(aBlock);
        if ((actions & 2) == 0)
        {
          playbackContext = [(_MPCQueueControllerBehaviorMusicDataSourceState *)contentItemID playbackContext];
          [playbackContext setShuffleType:0];
        }

        if ((actions & 1) == 0)
        {
          playbackContext2 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)contentItemID playbackContext];
          [playbackContext2 clearStartItem];
        }

        if (positionCopy <= 2)
        {
          if (positionCopy)
          {
            if (positionCopy == 2)
            {
              v105 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
              if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
              {
                engineID8 = [v95 engineID];
                [(_MPCQueueControllerBehaviorMusic *)self sessionID];
                actionsCopy5 = actions;
                v107 = actions = actionsCopy10;
                [(_MPCQueueControllerBehaviorMusicDataSourceState *)contentItemID sectionIdentifier];
                v146 = host;
                v109 = v108 = completionCopy;
                *buf = 138543874;
                v171 = engineID8;
                v172 = 2114;
                v173 = v107;
                v174 = 2114;
                v175 = v109;
                _os_log_impl(&dword_1C5C61000, v105, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _addPlaybackContext: | adding data source [] position=Last section=%{public}@", buf, 0x20u);

                completionCopy = v108;
                host = v146;

                actionsCopy10 = actions;
                LOBYTE(actions) = actionsCopy5;
              }

              v110 = *p_identifierList;
              sectionIdentifier4 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)contentItemID sectionIdentifier];
              [(MPShuffleableSectionedIdentifierList *)v110 addDataSourceAtEnd:contentItemID section:sectionIdentifier4 sequentially:1 completion:v151];
              goto LABEL_88;
            }

LABEL_87:
            sectionIdentifier4 = [MEMORY[0x1E696AAA8] currentHandler];
            [sectionIdentifier4 handleFailureInMethod:v133 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:3333 description:{@"Unsupported insertion position %d for %s | ", positionCopy, "-[_MPCQueueControllerBehaviorMusic _addPlaybackContext:atPosition:afterContentItemID:sectionIdentifier:actions:completion:]"}];
LABEL_88:

            if ((actions & 0x10) == 0 && !self->_hasUserMutations)
            {
              self->_hasUserMutations = 1;
            }

            [v95 behaviorDidChange];

            v60 = v158;
            v22 = v150;
            goto LABEL_92;
          }

          v147 = actionsCopy10;
          v140 = completionCopy;
          v111 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
          if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
          {
            engineID9 = [v95 engineID];
            sessionID7 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
            sectionIdentifier5 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)contentItemID sectionIdentifier];
            itemID2 = [v150 itemID];
            sectionID2 = [v150 sectionID];
            *buf = 138544386;
            v171 = engineID9;
            v172 = 2114;
            v115 = sessionID7;
            v173 = sessionID7;
            v174 = 2114;
            v175 = sectionIdentifier5;
            v176 = 2114;
            v177 = itemID2;
            v178 = 2114;
            v179 = sectionID2;
            v116 = "[BMUS:%{public}@:%{public}@] _addPlaybackContext: | adding data source [] position=Head section=%{public}@ afterItem=%{public}@ inSection=%{public}@";
            goto LABEL_85;
          }
        }

        else
        {
          if (positionCopy != 3)
          {
            if (positionCopy == 4)
            {
              v117 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
              if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
              {
                engineID10 = [v95 engineID];
                [(_MPCQueueControllerBehaviorMusic *)self sessionID];
                actionsCopy7 = actions;
                v119 = actions = actionsCopy10;
                [(_MPCQueueControllerBehaviorMusicDataSourceState *)contentItemID sectionIdentifier];
                v148 = host;
                v121 = v120 = completionCopy;
                *buf = 138543874;
                v171 = engineID10;
                v172 = 2114;
                v173 = v119;
                v174 = 2114;
                v175 = v121;
                _os_log_impl(&dword_1C5C61000, v117, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _addPlaybackContext: | adding data source [] position=Start section=%{public}@", buf, 0x20u);

                completionCopy = v120;
                host = v148;

                actionsCopy10 = actions;
                LOBYTE(actions) = actionsCopy7;
              }

              v122 = *p_identifierList;
              sectionIdentifier4 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)contentItemID sectionIdentifier];
              [(MPShuffleableSectionedIdentifierList *)v122 addDataSourceAtStart:contentItemID section:sectionIdentifier4 completion:v151];
              goto LABEL_88;
            }

            if (positionCopy == 100)
            {
              v98 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
              if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
              {
                engineID11 = [v95 engineID];
                [(_MPCQueueControllerBehaviorMusic *)self sessionID];
                actionsCopy9 = actions;
                v100 = actions = actionsCopy10;
                [(_MPCQueueControllerBehaviorMusicDataSourceState *)contentItemID sectionIdentifier];
                v145 = host;
                v102 = v101 = completionCopy;
                *buf = 138544130;
                v171 = engineID11;
                v172 = 2114;
                v173 = v100;
                v174 = 2114;
                v175 = v102;
                v176 = 2114;
                v177 = identifierCopy;
                _os_log_impl(&dword_1C5C61000, v98, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _addPlaybackContext: | adding data source [] position=AfterSection section=%{public}@ afterSection=%{public}@", buf, 0x2Au);

                completionCopy = v101;
                host = v145;

                actionsCopy10 = actions;
                LOBYTE(actions) = actionsCopy9;
              }

              v103 = *p_identifierList;
              sectionIdentifier4 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)contentItemID sectionIdentifier];
              [(MPShuffleableSectionedIdentifierList *)v103 addDataSource:contentItemID section:sectionIdentifier4 sequentially:1 afterTailOfSection:identifierCopy completion:v151];
              goto LABEL_88;
            }

            goto LABEL_87;
          }

          v147 = actionsCopy10;
          v140 = completionCopy;
          v111 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
          if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
          {
            engineID9 = [v95 engineID];
            sessionID8 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
            sectionIdentifier5 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)contentItemID sectionIdentifier];
            itemID2 = [v150 itemID];
            sectionID2 = [v150 sectionID];
            *buf = 138544386;
            v171 = engineID9;
            v172 = 2114;
            v115 = sessionID8;
            v173 = sessionID8;
            v174 = 2114;
            v175 = sectionIdentifier5;
            v176 = 2114;
            v177 = itemID2;
            v178 = 2114;
            v179 = sectionID2;
            v116 = "[BMUS:%{public}@:%{public}@] _addPlaybackContext: | adding data source [] position=Specified section=%{public}@ afterItem=%{public}@ inSection=%{public}@";
LABEL_85:
            _os_log_impl(&dword_1C5C61000, v111, OS_LOG_TYPE_DEFAULT, v116, buf, 0x34u);
          }
        }

        v123 = *p_identifierList;
        sectionIdentifier4 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)contentItemID sectionIdentifier];
        itemID3 = [v150 itemID];
        sectionID3 = [v150 sectionID];
        [(MPShuffleableSectionedIdentifierList *)v123 addDataSource:contentItemID section:sectionIdentifier4 sequentially:1 afterItem:itemID3 inSection:sectionID3 completion:v151];

        completionCopy = v140;
        actionsCopy10 = v147;
        goto LABEL_88;
      }

      if (queueEndAction == 3)
      {
        v73 = 4;
      }

      else
      {
        v73 = 5;
      }
    }

    else
    {
      if (self->_autoPlayState == 1)
      {
        goto LABEL_58;
      }

      v74 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
      {
        engineID12 = [host engineID];
        sessionID9 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
        *buf = 138543618;
        v171 = engineID12;
        v172 = 2114;
        v173 = sessionID9;
        _os_log_impl(&dword_1C5C61000, v74, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _addPlaybackContext: | disabling auto play [data source unsupported]", buf, 0x16u);
      }

      v73 = 1;
    }

    [(_MPCQueueControllerBehaviorMusic *)self _transitionToAutoPlayState:v73];
    goto LABEL_58;
  }

  v17 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    engineID13 = [host engineID];
    sessionID10 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
    *buf = 138543618;
    v171 = engineID13;
    v172 = 2114;
    v173 = sessionID10;
    _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_ERROR, "[BMUS:%{public}@:%{public}@] _addPlaybackContext: | failed [insert at Tail is not supported -- MediaPlayer/QueueFA is OFF]", buf, 0x16u);
  }

  actionsCopy10 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicBehaviorError" code:4 debugDescription:@"Cannot insert at Tail [MediaPlayer/QueueFA is OFF]"];
  completionCopy[2](completionCopy, actionsCopy10);
LABEL_94:
}

- (id)_accountForAutoPlay
{
  v35[0] = *MEMORY[0x1E69E9840];
  v29 = +[MPCPlaybackAccountManager sharedManager];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [(MPShuffleableSectionedIdentifierList *)self->_identifierList allSectionIdentifiers];
  v3 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (!v3)
  {
    goto LABEL_29;
  }

  v4 = v3;
  v5 = *v31;
  v26 = v35 + 1;
  do
  {
    v6 = 0;
    v27 = v4;
    do
    {
      if (*v31 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = [(NSMutableDictionary *)self->_dataSources objectForKeyedSubscript:*(*(&v30 + 1) + 8 * v6), v26];
      playbackContext = [v7 playbackContext];
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_22;
      }

      v9 = v5;
      selfCopy = self;
      v11 = playbackContext;
      playbackRequestEnvironment = [v11 playbackRequestEnvironment];
      delegationProperties = [playbackRequestEnvironment delegationProperties];
      v14 = delegationProperties;
      if (delegationProperties && [delegationProperties storeAccountID])
      {
        quot = [v14 storeAccountID];
        if (quot)
        {
          v16 = quot;
          v17 = v26;
          do
          {
            v18 = lldiv(quot, 10);
            quot = v18.quot;
            if (v18.rem >= 0)
            {
              LOBYTE(v19) = v18.rem;
            }

            else
            {
              v19 = -v18.rem;
            }

            *(v17 - 2) = v19 + 48;
            v20 = (v17 - 2);
            --v17;
          }

          while (v18.quot);
          if (v16 < 0)
          {
            *(v17 - 2) = 45;
            v20 = (v17 - 2);
          }

          v21 = CFStringCreateWithBytes(0, v20, v35 - v20, 0x8000100u, 0);
        }

        else
        {
          v21 = @"0";
        }

        v22 = [v29 accountForDSID:v21];
      }

      else
      {
        v22 = 0;
      }

      self = selfCopy;
      v5 = v9;
      v4 = v27;
      if (!v22)
      {
LABEL_22:
        userIdentity = [playbackContext userIdentity];
        if (!userIdentity)
        {
          v22 = 0;
          goto LABEL_27;
        }

        v24 = userIdentity;
        v22 = [v29 accountForUserIdentity:userIdentity];

        if (!v22)
        {
          goto LABEL_27;
        }
      }

      if ([v22 canAutoPlay])
      {

        goto LABEL_30;
      }

LABEL_27:

      ++v6;
    }

    while (v6 != v4);
    v4 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  }

  while (v4);
LABEL_29:
  v22 = 0;
LABEL_30:

  return v22;
}

- (id)queueReferencesWithMaxCount:(int64_t)count
{
  v52 = *MEMORY[0x1E69E9840];
  host = [(_MPCQueueControllerBehaviorMusic *)self host];
  selfCopy = self;
  _accountForAutoPlay = [(_MPCQueueControllerBehaviorMusic *)self _accountForAutoPlay];

  v6 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (_accountForAutoPlay)
  {
    if (v7)
    {
      engineID = [host engineID];
      sessionID = [(_MPCQueueControllerBehaviorMusic *)selfCopy sessionID];
      *buf = 138543874;
      v47 = engineID;
      v48 = 2114;
      v49 = sessionID;
      v50 = 2048;
      countCopy = count;
      _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_DEFAULT, "[AOT:%{public}@:%{public}@] queueReferencesWithMaxCount: | enumerating items [] maxCount=%ld", buf, 0x20u);
    }

    v41 = host;

    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:count];
    v43 = [_MPCQueueControllerEnumerator enumeratorWithMusicBehavior:selfCopy mode:1 options:8 startPosition:0 endPosition:0];
    nextObject = [v43 nextObject];
    if (nextObject)
    {
      v11 = nextObject;
      v42 = v6;
      while (1)
      {
        if ([v6 count]>= count)
        {
LABEL_18:

          goto LABEL_19;
        }

        v12 = objc_autoreleasePoolPush();
        dataSources = selfCopy->_dataSources;
        itemResult = [v11 itemResult];
        sectionIdentifier = [itemResult sectionIdentifier];
        v16 = [(NSMutableDictionary *)dataSources objectForKeyedSubscript:sectionIdentifier];

        if ([v16 state] == 3)
        {
          dataSource = [v16 dataSource];
          itemResult2 = [v11 itemResult];
          itemIdentifier = [itemResult2 itemIdentifier];
          itemResult3 = [v11 itemResult];
          sectionIdentifier2 = [itemResult3 sectionIdentifier];
          v22 = [dataSource supportsAutoPlayForItem:itemIdentifier inSection:sectionIdentifier2];

          if (v22)
          {
            break;
          }
        }

LABEL_17:

        objc_autoreleasePoolPop(v12);
        nextObject2 = [v43 nextObject];

        v11 = nextObject2;
        if (!nextObject2)
        {
          goto LABEL_18;
        }
      }

      itemResult4 = [v11 itemResult];
      sectionIdentifier3 = [itemResult4 sectionIdentifier];
      itemResult5 = [v11 itemResult];
      itemIdentifier2 = [itemResult5 itemIdentifier];
      v27 = [MPCQueueControllerBehaviorMusicIdentifierComponents itemComponentsWithSectionID:sectionIdentifier3 itemID:itemIdentifier2];

      v28 = [(_MPCQueueControllerBehaviorMusic *)selfCopy _itemForComponents:v27];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v29 = v28;
        trackInfo = [v29 trackInfo];
        if ([trackInfo count])
        {
          v31 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v29, "storeItemInt64ID")}];
          v32 = [MPCModelRadioContentReference referenceWithStoreIdentifier:v31 trackInfo:trackInfo];

          v6 = v42;
          if (v32)
          {
            goto LABEL_15;
          }
        }

        else
        {
        }
      }

      modelGenericObject = [v28 modelGenericObject];
      modelPlayEvent = [v28 modelPlayEvent];
      v32 = [MPCModelRadioContentReference referenceWithMPModelObject:modelGenericObject containerModelPlayEvent:modelPlayEvent];

      v6 = v42;
      if (!v32)
      {
LABEL_16:

        goto LABEL_17;
      }

LABEL_15:
      [v6 insertObject:v32 atIndex:0];

      goto LABEL_16;
    }

LABEL_19:
    v36 = [v6 copy];

    host = v41;
  }

  else
  {
    if (v7)
    {
      engineID2 = [host engineID];
      [(_MPCQueueControllerBehaviorMusic *)selfCopy sessionID];
      v39 = v38 = v6;
      *buf = 138543618;
      v47 = engineID2;
      v48 = 2114;
      v49 = v39;
      _os_log_impl(&dword_1C5C61000, v38, OS_LOG_TYPE_DEFAULT, "[AOT:%{public}@:%{public}@] queueReferencesWithMaxCount: | returning no items [_accountForAutoPlay was nil]", buf, 0x16u);

      v6 = v38;
    }

    v36 = MEMORY[0x1E695E0F0];
  }

  return v36;
}

- (void)didDequeueShuffledItemsInSectionedIdentifierList:(id)list
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85___MPCQueueControllerBehaviorMusic_didDequeueShuffledItemsInSectionedIdentifierList___block_invoke;
  block[3] = &unk_1E8239298;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)sectionedIdentifierList:(id)list dataSourceDidUpdateSection:(id)section
{
  sectionCopy = section;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __87___MPCQueueControllerBehaviorMusic_sectionedIdentifierList_dataSourceDidUpdateSection___block_invoke;
  v7[3] = &unk_1E82392C0;
  v7[4] = self;
  v8 = sectionCopy;
  v6 = sectionCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

- (void)sectionedIdentifierList:(id)list dataSourceDidChangeItems:(id)items inSection:(id)section
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95___MPCQueueControllerBehaviorMusic_sectionedIdentifierList_dataSourceDidChangeItems_inSection___block_invoke;
  block[3] = &unk_1E8239298;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)sectionedIdentifierList:(id)list dataSourceDidUpdateItems:(id)items inSection:(id)section
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95___MPCQueueControllerBehaviorMusic_sectionedIdentifierList_dataSourceDidUpdateItems_inSection___block_invoke;
  block[3] = &unk_1E8239298;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)sectionedIdentifierList:(id)list dataSourceDidAddItems:(id)items toSection:(id)section
{
  listCopy = list;
  sectionCopy = section;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __92___MPCQueueControllerBehaviorMusic_sectionedIdentifierList_dataSourceDidAddItems_toSection___block_invoke;
  block[3] = &unk_1E82391C0;
  block[4] = self;
  v12 = listCopy;
  v13 = sectionCopy;
  v9 = sectionCopy;
  v10 = listCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)sectionedIdentifierList:(id)list dataSourceDidRemoveItems:(id)items fromSection:(id)section
{
  listCopy = list;
  sectionCopy = section;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97___MPCQueueControllerBehaviorMusic_sectionedIdentifierList_dataSourceDidRemoveItems_fromSection___block_invoke;
  block[3] = &unk_1E82391C0;
  block[4] = self;
  v12 = listCopy;
  v13 = sectionCopy;
  v9 = sectionCopy;
  v10 = listCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)sectionedIdentifierList:(id)list dataSourceDidMoveItems:(id)items inSection:(id)section
{
  listCopy = list;
  sectionCopy = section;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93___MPCQueueControllerBehaviorMusic_sectionedIdentifierList_dataSourceDidMoveItems_inSection___block_invoke;
  block[3] = &unk_1E82391C0;
  block[4] = self;
  v12 = listCopy;
  v13 = sectionCopy;
  v9 = sectionCopy;
  v10 = listCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)sectionedIdentifierList:(id)list dataSourceDidEndTransactionForSection:(id)section
{
  listCopy = list;
  sectionCopy = section;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98___MPCQueueControllerBehaviorMusic_sectionedIdentifierList_dataSourceDidEndTransactionForSection___block_invoke;
  block[3] = &unk_1E82391C0;
  block[4] = self;
  v11 = listCopy;
  v12 = sectionCopy;
  v8 = sectionCopy;
  v9 = listCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (id)debugDescriptionForItem:(id)item inSection:(id)section
{
  itemCopy = item;
  sectionCopy = section;
  v8 = [(_MPCQueueControllerBehaviorMusic *)self _identifierListForSection:sectionCopy];
  if ([v8 hasItem:itemCopy inSection:sectionCopy] && (objc_msgSend(v8, "isDeletedItem:inSection:", itemCopy, sectionCopy) & 1) == 0)
  {
    v10 = [MPCQueueControllerBehaviorMusicIdentifierComponents itemComponentsWithSectionID:sectionCopy itemID:itemCopy];
    contentItemID = [v10 contentItemID];
    v12 = [(_MPCQueueControllerBehaviorMusic *)self _itemForContentItemID:contentItemID allowReuse:1];
    contentItemID2 = [v12 contentItemID];

    type = [v10 type];
    v15 = MEMORY[0x1E696AEC0];
    if ((type & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      v16 = @"⏳";
    }

    else
    {
      v16 = @"▫️";
    }

    mainTitle = [v12 mainTitle];
    v9 = [v15 stringWithFormat:@"%@ %@", v16, mainTitle];
  }

  else
  {
    v9 = @"▫️ (null)";
  }

  return v9;
}

- (id)debugDescriptionForSection:(id)section
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableDictionary *)self->_dataSources objectForKeyedSubscript:section];
  v4 = v3;
  if (v3)
  {
    playbackContext = [v3 playbackContext];
    descriptionComponents = [playbackContext descriptionComponents];
    state = [v4 state];
    if (state > 4)
    {
      v8 = @"▫️";
    }

    else
    {
      v8 = off_1E8232D10[state];
    }

    if ([v4 isFrozen])
    {
      v8 = [(__CFString *)v8 stringByAppendingString:@"❄️"];
    }

    v10 = MEMORY[0x1E696AD60];
    v22 = playbackContext;
    v11 = [objc_opt_class() description];
    v21 = v8;
    v9 = [v10 stringWithFormat:@"%@ %@", v8, v11];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    allKeys = [descriptionComponents allKeys];
    v13 = [allKeys sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];

    v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v23 + 1) + 8 * i);
          v19 = [descriptionComponents objectForKeyedSubscript:v18];
          [v9 appendFormat:@" %@=%@", v18, v19];
        }

        v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v15);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)loadRepresentationForArtworkCatalog:(id)catalog completionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __90___MPCQueueControllerBehaviorMusic_loadRepresentationForArtworkCatalog_completionHandler___block_invoke;
  v7[3] = &unk_1E8239170;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

- (void)clearUpNextAfterContentItemID:(id)d
{
  v45 = *MEMORY[0x1E69E9840];
  dCopy = d;
  host = [(_MPCQueueControllerBehaviorMusic *)self host];
  v6 = [(_MPCQueueControllerBehaviorMusic *)self tailInsertionContentItemIDForTargetContentItemID:dCopy];
  if (v6)
  {
    v38 = host;
    v37 = [host beginEditWithReason:@"BehaviorMusic-clearUpNext"];
    v39 = dCopy;
    v7 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:dCopy];
    v8 = MEMORY[0x1E6970948];
    itemID = [v7 itemID];
    v36 = v7;
    sectionID = [v7 sectionID];
    v11 = [v8 positionForItem:itemID inSection:sectionID];

    v12 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:v6];
    v13 = MEMORY[0x1E6970948];
    itemID2 = [v12 itemID];
    sectionID2 = [v12 sectionID];
    v16 = [v13 positionForItem:itemID2 inSection:sectionID2];

    v34 = v16;
    v35 = v11;
    v17 = [_MPCQueueControllerEnumerator enumeratorWithMusicBehavior:self mode:1 options:64 startPosition:v11 endPosition:v16];
    nextObject = [v17 nextObject];
    if (nextObject)
    {
      v19 = nextObject;
      do
      {
        itemResult = [v19 itemResult];
        sectionIdentifier = [itemResult sectionIdentifier];
        v22 = [(_MPCQueueControllerBehaviorMusic *)self _identifierListForSection:sectionIdentifier];

        itemResult2 = [v19 itemResult];
        itemIdentifier = [itemResult2 itemIdentifier];
        itemResult3 = [v19 itemResult];
        sectionIdentifier2 = [itemResult3 sectionIdentifier];
        [v22 removeItem:itemIdentifier fromSection:sectionIdentifier2];

        nextObject2 = [v17 nextObject];

        v19 = nextObject2;
      }

      while (nextObject2);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66___MPCQueueControllerBehaviorMusic_clearUpNextAfterContentItemID___block_invoke;
    block[3] = &unk_1E8239298;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    if (!self->_hasUserMutations)
    {
      self->_hasUserMutations = 1;
    }

    v28 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
    host = v38;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      engineID = [v38 engineID];
      sessionID = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
      *buf = 138543618;
      v42 = engineID;
      v43 = 2114;
      v44 = sessionID;
      _os_log_impl(&dword_1C5C61000, v28, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] clearAllItemsAfterContentItemID: | committing edit [queue updated]", buf, 0x16u);
    }

    v31 = v37;
    [v37 commit];

    dCopy = v39;
  }

  else
  {
    v31 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      engineID2 = [host engineID];
      sessionID2 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
      *buf = 138543618;
      v42 = engineID2;
      v43 = 2114;
      v44 = sessionID2;
      _os_log_impl(&dword_1C5C61000, v31, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] clearAllItemsAfterContentItemID: | ignoring [tailInsertionContentItemID is nil]", buf, 0x16u);
    }
  }
}

- (void)clearAllItemsAfterContentItemID:(id)d
{
  v33 = *MEMORY[0x1E69E9840];
  dCopy = d;
  host = [(_MPCQueueControllerBehaviorMusic *)self host];
  [(_MPCQueueControllerBehaviorMusic *)self _setRepeatType:0 reason:@"ClearAllItems"];
  [(_MPCQueueControllerBehaviorMusic *)self setAutoPlayEnabled:0 targetContentItemID:dCopy completion:&__block_literal_global_583];
  v6 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:dCopy];
  v7 = [(_MPCQueueControllerBehaviorMusic *)self _itemForComponents:v6];
  if (([v7 isAlwaysLive] & 1) == 0 && (self->_activeItemFlags & 1) == 0)
  {
    v27 = v7;
    v28 = host;
    v26 = [host beginEditWithReason:@"BehaviorMusic-clearUpNext"];
    v8 = MEMORY[0x1E6970948];
    itemID = [v6 itemID];
    sectionID = [v6 sectionID];
    v11 = [v8 positionForItem:itemID inSection:sectionID];
    v12 = [_MPCQueueControllerEnumerator enumeratorWithMusicBehavior:self mode:1 options:0 startPosition:v11 endPosition:0];

    nextObject = [v12 nextObject];
    if (nextObject)
    {
      v14 = nextObject;
      do
      {
        itemResult = [v14 itemResult];
        sectionIdentifier = [itemResult sectionIdentifier];
        v17 = [(_MPCQueueControllerBehaviorMusic *)self _identifierListForSection:sectionIdentifier];

        itemResult2 = [v14 itemResult];
        itemIdentifier = [itemResult2 itemIdentifier];
        itemResult3 = [v14 itemResult];
        sectionIdentifier2 = [itemResult3 sectionIdentifier];
        [v17 removeItem:itemIdentifier fromSection:sectionIdentifier2];

        nextObject2 = [v12 nextObject];

        v14 = nextObject2;
      }

      while (nextObject2);
    }

    if (!self->_hasUserMutations)
    {
      self->_hasUserMutations = 1;
    }

    v23 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
    host = v28;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      engineID = [v28 engineID];
      sessionID = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
      *buf = 138543618;
      v30 = engineID;
      v31 = 2114;
      v32 = sessionID;
      _os_log_impl(&dword_1C5C61000, v23, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] clearUpNextAfterContentItemID: | committing edit [queue updated]", buf, 0x16u);
    }

    [v26 commit];
    v7 = v27;
  }
}

- (void)removeContentItemID:(id)d completion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:d];
  sectionID = [v7 sectionID];
  itemID = [v7 itemID];
  v10 = [(_MPCQueueControllerBehaviorMusic *)self _identifierListForSection:sectionID];
  if ([v10 hasItem:itemID inSection:sectionID])
  {
    host = [(_MPCQueueControllerBehaviorMusic *)self host];
    v12 = [host beginEditWithReason:@"BehaviorMusic-removeItem"];
    v13 = [(NSMutableDictionary *)self->_dataSources objectForKeyedSubscript:sectionID];
    containsLiveStream = [v13 containsLiveStream];

    if (containsLiveStream)
    {
      v15 = [(NSMutableDictionary *)self->_dataSources objectForKeyedSubscript:sectionID];
      [v15 setFrozen:1];
    }

    [v10 removeItem:itemID fromSection:sectionID];
    if (!self->_hasUserMutations)
    {
      self->_hasUserMutations = 1;
    }

    v16 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      engineID = [host engineID];
      [(_MPCQueueControllerBehaviorMusic *)self sessionID];
      v21 = host;
      v19 = v18 = v12;
      *buf = 138543618;
      v24 = engineID;
      v25 = 2114;
      v26 = v19;
      _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] removeContentItemID:completion: | committing edit [update removed item]", buf, 0x16u);

      v12 = v18;
      host = v21;
    }

    [v12 commit];
    [(_MPCQueueControllerBehaviorMusic *)self _evaluateLoadingDataSourceItemThresholds];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67___MPCQueueControllerBehaviorMusic_removeContentItemID_completion___block_invoke;
    block[3] = &unk_1E8239298;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v20 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicBehaviorError" code:5 debugDescription:@"Requested removing content item that is not in the queue."];
    (completionCopy)[2](completionCopy, v20);
  }
}

- (void)moveContentItemID:(id)d beforeContentItemID:(id)iD completion:(id)completion
{
  v55 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  iDCopy = iD;
  v11 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:d];
  v12 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:iDCopy];

  sectionID = [v11 sectionID];
  v14 = [(_MPCQueueControllerBehaviorMusic *)self _identifierListForSection:sectionID];

  itemID = [v11 itemID];
  sectionID2 = [v11 sectionID];
  v17 = [v14 hasItem:itemID inSection:sectionID2];

  if (v17)
  {
    sectionID3 = [v12 sectionID];
    v19 = [(_MPCQueueControllerBehaviorMusic *)self _identifierListForSection:sectionID3];

    itemID2 = [v12 itemID];
    sectionID4 = [v12 sectionID];
    v22 = [v19 hasItem:itemID2 inSection:sectionID4];

    if ((v22 & 1) == 0)
    {
      v23 = MEMORY[0x1E696ABC0];
      v24 = @"Received a move command but the target is not available in the queue.";
      goto LABEL_7;
    }

    if (v14 != v19)
    {
      v23 = MEMORY[0x1E696ABC0];
      v24 = @"Received a move command but the source and target lists are not the same. Moving items between auto play and the queue is not supported.";
LABEL_7:
      v26 = [v23 msv_errorWithDomain:@"MPCMusicBehaviorError" code:5 debugDescription:v24];
      completionCopy[2](completionCopy, v26);

LABEL_8:
      goto LABEL_9;
    }

    v46 = v19;
    host = [(_MPCQueueControllerBehaviorMusic *)self host];
    v48 = [host beginEditWithReason:@"BehaviorMusic-moveItemBeforeItem"];
    v27 = MEMORY[0x1E6970948];
    itemID3 = [v12 itemID];
    sectionID5 = [v12 sectionID];
    v30 = [v27 positionForItem:itemID3 inSection:sectionID5];
    v31 = [v14 enumeratorWithOptions:9 startPosition:v30 endPosition:0];

    v47 = v31;
    nextObject = [v31 nextObject];
    entryType = [nextObject entryType];
    if (entryType > 2)
    {
      if (entryType == 3)
      {
        itemID4 = [v11 itemID];
        sectionID6 = [v11 sectionID];
        itemResult = [nextObject itemResult];
        itemIdentifier = [itemResult itemIdentifier];
        itemResult2 = [nextObject itemResult];
        sectionIdentifier = [itemResult2 sectionIdentifier];
        [v14 moveItem:itemID4 fromSection:sectionID6 afterItem:itemIdentifier inSection:sectionIdentifier];

        v19 = v46;
        goto LABEL_21;
      }

      v19 = v46;
      if (entryType == 4)
      {
        itemID4 = [v11 itemID];
        sectionID7 = [v11 sectionID];
        trackingEntryResult = [nextObject trackingEntryResult];
        sectionIdentifier2 = [trackingEntryResult sectionIdentifier];
        [v14 moveItem:itemID4 fromSection:sectionID7 afterTailOfSection:sectionIdentifier2];
        goto LABEL_20;
      }

      if (entryType != 5)
      {
LABEL_22:
        if (!self->_hasUserMutations)
        {
          self->_hasUserMutations = 1;
        }

        v40 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          engineID = [host engineID];
          sessionID = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
          *buf = 138543618;
          v52 = engineID;
          v53 = 2114;
          v54 = sessionID;
          _os_log_impl(&dword_1C5C61000, v40, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] moveContentItemID:beforeContentItemID:completion: | committing edit [update for move before]", buf, 0x16u);
        }

        [v48 commit];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __85___MPCQueueControllerBehaviorMusic_moveContentItemID_beforeContentItemID_completion___block_invoke;
        block[3] = &unk_1E8239298;
        block[4] = self;
        dispatch_async(MEMORY[0x1E69E96A0], block);
        [(_MPCQueueControllerBehaviorMusic *)self _evaluateLoadingDataSourceItemThresholds];
        completionCopy[2](completionCopy, 0);

        goto LABEL_8;
      }
    }

    else
    {
      v19 = v46;
      if (entryType >= 2)
      {
        if (entryType == 2)
        {
          itemID4 = [v11 itemID];
          sectionID7 = [v11 sectionID];
          trackingEntryResult = [nextObject trackingEntryResult];
          sectionIdentifier2 = [trackingEntryResult sectionIdentifier];
          [v14 moveItem:itemID4 fromSection:sectionID7 afterHeadOfSection:sectionIdentifier2];
LABEL_20:

          goto LABEL_21;
        }

        goto LABEL_22;
      }
    }

    itemID4 = [MEMORY[0x1E696AAA8] currentHandler];
    [itemID4 handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:2715 description:{@"Unexpected entry type when reverse enumerating for before item: %d", objc_msgSend(nextObject, "entryType")}];
LABEL_21:

    goto LABEL_22;
  }

  v25 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicBehaviorError" code:5 debugDescription:@"Received a move command but the source is not available in the queue."];
  completionCopy[2](completionCopy, v25);

LABEL_9:
}

- (void)moveContentItemID:(id)d afterContentItemID:(id)iD completion:(id)completion
{
  v40 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  iDCopy = iD;
  v10 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:d];
  v11 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:iDCopy];

  sectionID = [v10 sectionID];
  v13 = [(_MPCQueueControllerBehaviorMusic *)self _identifierListForSection:sectionID];

  itemID = [v10 itemID];
  sectionID2 = [v10 sectionID];
  v16 = [v13 hasItem:itemID inSection:sectionID2];

  if (v16)
  {
    sectionID3 = [v11 sectionID];
    v18 = [(_MPCQueueControllerBehaviorMusic *)self _identifierListForSection:sectionID3];

    itemID2 = [v11 itemID];
    sectionID4 = [v11 sectionID];
    v21 = [v18 hasItem:itemID2 inSection:sectionID4];

    if (v21)
    {
      if (v13 == v18)
      {
        host = [(_MPCQueueControllerBehaviorMusic *)self host];
        v33 = [host beginEditWithReason:@"BehaviorMusic-moveItemAfterItem"];
        itemID3 = [v10 itemID];
        sectionID5 = [v10 sectionID];
        itemID4 = [v11 itemID];
        sectionID6 = [v11 sectionID];
        [v13 moveItem:itemID3 fromSection:sectionID5 afterItem:itemID4 inSection:sectionID6];

        if (!self->_hasUserMutations)
        {
          self->_hasUserMutations = 1;
        }

        v30 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          engineID = [host engineID];
          sessionID = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
          *buf = 138543618;
          v37 = engineID;
          v38 = 2114;
          v39 = sessionID;
          _os_log_impl(&dword_1C5C61000, v30, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] moveContentItemID:afterContentItemID:completion: | committing edit [update for move after]", buf, 0x16u);
        }

        [v33 commit];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __84___MPCQueueControllerBehaviorMusic_moveContentItemID_afterContentItemID_completion___block_invoke;
        block[3] = &unk_1E8239298;
        block[4] = self;
        dispatch_async(MEMORY[0x1E69E96A0], block);
        [(_MPCQueueControllerBehaviorMusic *)self _evaluateLoadingDataSourceItemThresholds];
        completionCopy[2](completionCopy, 0);

        goto LABEL_8;
      }

      v22 = MEMORY[0x1E696ABC0];
      v23 = @"Received a move command but the source and target lists are not the same. Moving items between auto play and the queue is not supported.";
    }

    else
    {
      v22 = MEMORY[0x1E696ABC0];
      v23 = @"Received a move command but the target is not available in the queue.";
    }

    v25 = [v22 msv_errorWithDomain:@"MPCMusicBehaviorError" code:5 debugDescription:v23];
    (completionCopy)[2](completionCopy, v25);

LABEL_8:
    goto LABEL_9;
  }

  v24 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicBehaviorError" code:5 debugDescription:@"Received a move command but the source is not available in the queue."];
  (completionCopy)[2](completionCopy, v24);

LABEL_9:
}

- (id)_idenitiferListForPosition:(int64_t)position afterContentItemID:(id)d existingUpNextSectionID:(id)iD createdUpNextSectionID:(id)sectionID
{
  dCopy = d;
  iDCopy = iD;
  sectionIDCopy = sectionID;
  v14 = sectionIDCopy;
  if (position == 2)
  {
    goto LABEL_2;
  }

  if (!(iDCopy | sectionIDCopy))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:2606 description:{@"Missing upNextSectionID for position: %ld afterContentItemID: %@", position, dCopy}];
  }

  if (position > 2)
  {
    if (position == 4)
    {
      v20 = self->_identifierList;
      goto LABEL_19;
    }

    if (position != 3)
    {
LABEL_17:
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:2631 description:{@"Unsupported insertion position %d for %s | ", position, "-[_MPCQueueControllerBehaviorMusic _idenitiferListForPosition:afterContentItemID:existingUpNextSectionID:createdUpNextSectionID:]"}];

      v17 = 0;
      goto LABEL_20;
    }

LABEL_14:
    if (iDCopy)
    {
LABEL_2:
      v15 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:dCopy];
      sectionID = [v15 sectionID];
      v17 = [(_MPCQueueControllerBehaviorMusic *)self _identifierListForSection:sectionID];

      goto LABEL_20;
    }

    selfCopy2 = self;
    v18 = v14;
    goto LABEL_16;
  }

  if (!position)
  {
    goto LABEL_14;
  }

  if (position != 1)
  {
    goto LABEL_17;
  }

  if (iDCopy)
  {
    v18 = iDCopy;
  }

  else
  {
    v18 = v14;
  }

  selfCopy2 = self;
LABEL_16:
  v20 = [(_MPCQueueControllerBehaviorMusic *)selfCopy2 _identifierListForSection:v18];
LABEL_19:
  v17 = v20;
LABEL_20:

  return v17;
}

- (void)_qfa_performInsertPlaybackContext:(id)context atPosition:(int64_t)position afterContentItemID:(id)d sectionIdentifier:(id)identifier actions:(unint64_t)actions completion:(id)completion
{
  v210 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  dCopy = d;
  identifierCopy = identifier;
  completionCopy = completion;
  host = [(_MPCQueueControllerBehaviorMusic *)self host];
  if (position != 2 || (actions & 0x40) == 0)
  {
    if (position == 3)
    {
      v19 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:dCopy];
      if ([v19 type] != 3)
      {
        position = 3;
        goto LABEL_23;
      }

      v31 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        engineID = [host engineID];
        sessionID = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
        [v19 deferredNextContentItemID];
        v35 = v34 = contextCopy;
        *buf = 138543874;
        v199 = engineID;
        v200 = 2114;
        v201 = sessionID;
        v202 = 2114;
        v203 = v35;
        _os_log_impl(&dword_1C5C61000, v31, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _performInsertPlaybackContext: | converting PositionSpecified item to deferredNextContentItem [specified placeholder item] deferredNextContentItem=%{public}@", buf, 0x20u);

        contextCopy = v34;
      }

      deferredNextContentItemID = [v19 deferredNextContentItemID];

      if (!deferredNextContentItemID)
      {
        v62 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          engineID2 = [host engineID];
          sessionID2 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
          *buf = 138543618;
          v199 = engineID2;
          v200 = 2114;
          v201 = sessionID2;
          _os_log_impl(&dword_1C5C61000, v62, OS_LOG_TYPE_ERROR, "[BMUS:%{public}@:%{public}@] _performInsertPlaybackContext: | failed to convert to deferredNextContentItem PositionSpecified [deferredNextContentItemID is nil]", buf, 0x16u);
        }

        v29 = MEMORY[0x1E696ABC0];
        v30 = @"The specified insertion position [specified] was unsupported because the specified item is a placeholder and there is no deferredNextContentItemAnchorID.";
        goto LABEL_41;
      }
    }

    else
    {
      if (position)
      {
        v19 = 0;
        goto LABEL_23;
      }

      v19 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:dCopy];
      if ([v19 type] != 3)
      {
        position = 0;
        goto LABEL_23;
      }

      v20 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        engineID3 = [host engineID];
        sessionID3 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
        [v19 deferredNextContentItemID];
        v24 = v23 = contextCopy;
        *buf = 138543874;
        v199 = engineID3;
        v200 = 2114;
        v201 = sessionID3;
        v202 = 2114;
        v203 = v24;
        _os_log_impl(&dword_1C5C61000, v20, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _performInsertPlaybackContext: | converting PositionHead to PositionSpecified after deferredNextContentItem [head (current item was placeholder)] deferredNextContentItem=%{public}@", buf, 0x20u);

        contextCopy = v23;
      }

      deferredNextContentItemID2 = [v19 deferredNextContentItemID];

      if (!deferredNextContentItemID2)
      {
        v26 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          engineID4 = [host engineID];
          sessionID4 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
          *buf = 138543618;
          v199 = engineID4;
          v200 = 2114;
          v201 = sessionID4;
          _os_log_impl(&dword_1C5C61000, v26, OS_LOG_TYPE_ERROR, "[BMUS:%{public}@:%{public}@] _performInsertPlaybackContext: | failed to convert to deferredNextContentItem PositionSpecified [deferredNextContentItemID is nil]", buf, 0x16u);
        }

        v29 = MEMORY[0x1E696ABC0];
        v30 = @"The specified insertion position [head] was unsupported because the current item is a placeholder and there is no deferredNextContentItemAnchorID.";
LABEL_41:
        v182 = [v29 msv_errorWithDomain:@"MPCMusicBehaviorError" code:4 debugDescription:v30];
        completionCopy[2](completionCopy, 0);

        goto LABEL_157;
      }
    }

    deferredNextContentItemID3 = [v19 deferredNextContentItemID];
    v38 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:deferredNextContentItemID3];

    position = 3;
    v19 = v38;
LABEL_23:
    v181 = [contextCopy copy];
    v181 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BehaviorMusic-insertPlaybackContext-<%@: %p>", objc_opt_class(), v181];
    v180 = [host beginEditWithReason:v181];

    WeakRetained = objc_loadWeakRetained(&self->_musicBehaviorDelegate);
    v40 = [(_MPCQueueControllerBehaviorMusic *)self tailInsertionContentItemIDForTargetContentItemID:dCopy];
    v41 = v40;
    if ((actions & 0x40) == 0 || v40)
    {
      v169 = a2;
      v183 = [(_MPCQueueControllerBehaviorMusic *)self _upNextSectionIdentifierForItem:v19];
      v47 = 0;
      [(_MPCQueueControllerBehaviorMusic *)self _idenitiferListForPosition:position afterContentItemID:dCopy existingUpNextSectionID:v183 createdUpNextSectionID:0];
      goto LABEL_44;
    }

    v183 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:dCopy];
    behaviorFlags = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v183 behaviorFlags];
    v43 = behaviorFlags;
    if (position == 1 && (behaviorFlags & 1) != 0)
    {
      [(_MPCQueueControllerBehaviorMusicDataSourceState *)v180 rollback];
      v44 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        engineID5 = [host engineID];
        sessionID5 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
        *buf = 138543618;
        v199 = engineID5;
        v200 = 2114;
        v201 = sessionID5;
        _os_log_impl(&dword_1C5C61000, v44, OS_LOG_TYPE_ERROR, "[BMUS:%{public}@:%{public}@] _performInsertPlaybackContext: | rolling back edit [cannot insert at end of autoPlayIdentifierList]", buf, 0x16u);
      }

      v47 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicBehaviorError" code:4 debugDescription:@"Cannot insert at end of autoPlayIdentifierList [no existing UpNextSection]"];
      (completionCopy[2])(completionCopy, 0, v47);
      goto LABEL_156;
    }

    v172 = contextCopy;
    v48 = MSVNanoIDCreateTaggedPointer();
    v47 = [@"UPNXT-" stringByAppendingString:v48];

    objc_storeStrong(&self->_latestUpNextSectionID, v47);
    v49 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      engineID6 = [host engineID];
      [(_MPCQueueControllerBehaviorMusic *)self sessionID];
      v52 = v51 = v47;
      *buf = 138543874;
      v199 = engineID6;
      v200 = 2114;
      v201 = v52;
      v202 = 2114;
      v203 = v51;
      _os_log_impl(&dword_1C5C61000, v49, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _performInsertPlaybackContext: | creating new UpNext section [] upNextSectionIdentifier=%{public}@", buf, 0x20u);

      v47 = v51;
    }

    v53 = objc_opt_new();
    [v53 setLabel:@"Up Next"];
    [v53 setOverrideSILSectionID:v47];
    v54 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)[_MPCQueueControllerDataSourceState alloc] initWithPlaybackContext:v53];
    [(NSMutableDictionary *)self->_dataSources setObject:v54 forKeyedSubscript:v47];
    v169 = a2;
    if (v43)
    {
      autoPlayIdentifierList = self->_autoPlayIdentifierList;
      [(_MPCQueueControllerBehaviorMusicDataSourceState *)v183 itemID];
      v57 = v56 = v47;
      [(_MPCQueueControllerBehaviorMusicDataSourceState *)v183 sectionID];
      actionsCopy2 = actions;
      selfCopy2 = self;
      v60 = v59 = v19;
      [(MPSectionedIdentifierList *)autoPlayIdentifierList addDataSource:v54 section:v56 afterItem:v57 inSection:v60 completion:&__block_literal_global_511];
    }

    else
    {
      identifierList = self->_identifierList;
      if (position == 1)
      {
        [(MPShuffleableSectionedIdentifierList *)self->_identifierList addDataSourceAtEnd:v54 section:v47 sequentially:1 completion:&__block_literal_global_513];
        goto LABEL_43;
      }

      [(_MPCQueueControllerBehaviorMusicDataSourceState *)v183 itemID];
      v57 = v56 = v47;
      [(_MPCQueueControllerBehaviorMusicDataSourceState *)v183 sectionID];
      actionsCopy2 = actions;
      selfCopy2 = self;
      v60 = v59 = v19;
      [(MPShuffleableSectionedIdentifierList *)identifierList addDataSource:v54 section:v56 sequentially:1 afterItem:v57 inSection:v60 completion:&__block_literal_global_515];
    }

    v19 = v59;
    self = selfCopy2;
    actions = actionsCopy2;

    v47 = v56;
LABEL_43:

    v183 = 0;
    contextCopy = v172;
    v41 = 0;
    [(_MPCQueueControllerBehaviorMusic *)self _idenitiferListForPosition:position afterContentItemID:dCopy existingUpNextSectionID:0 createdUpNextSectionID:v47];
LABEL_44:
    v179 = v176 = v47;
    if (!v179)
    {
      v70 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
      if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        engineID7 = [host engineID];
        sessionID6 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
        *buf = 138544386;
        v199 = engineID7;
        v200 = 2114;
        v201 = sessionID6;
        v202 = 2114;
        v203 = v183;
        v204 = 2114;
        v205 = v176;
        v206 = 2114;
        v207 = v180;
        _os_log_impl(&dword_1C5C61000, v70, OS_LOG_TYPE_ERROR, "[BMUS:%{public}@:%{public}@] _performInsertPlaybackContext: | rolling back edit [no valid identifierList] latestUpNextSectionID=%{public}@ newUpNextSectionIdentifier=%{public}@ edit=%{public}@", buf, 0x34u);

        v47 = v176;
      }

      [(_MPCQueueControllerBehaviorMusicDataSourceState *)v180 rollback];
      v68 = MEMORY[0x1E696ABC0];
      v73 = v183;
      if (!v183)
      {
        v73 = v47;
      }

      v165 = v73;
      v69 = @"Cannot find UpNextSection in either identifier list: %@";
      goto LABEL_55;
    }

    if (v179 != self->_identifierList)
    {
      if (position == 4)
      {
        [(_MPCQueueControllerBehaviorMusicDataSourceState *)v180 rollback];
        v65 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          engineID8 = [host engineID];
          sessionID7 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
          *buf = 138543618;
          v199 = engineID8;
          v200 = 2114;
          v201 = sessionID7;
          _os_log_impl(&dword_1C5C61000, v65, OS_LOG_TYPE_ERROR, "[BMUS:%{public}@:%{public}@] _performInsertPlaybackContext: | rolling back edit [cannot insert at start of autoPlayIdentifierList]", buf, 0x16u);

          v47 = v176;
        }

        v68 = MEMORY[0x1E696ABC0];
        v69 = @"Cannot insert at start of autoPlayIdentifierList";
LABEL_55:
        v74 = [v68 msv_errorWithDomain:@"MPCMusicBehaviorError" code:4 debugDescription:{v69, v165}];
        (completionCopy[2])(completionCopy, 0, v74);
LABEL_155:

LABEL_156:
        goto LABEL_157;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v89 = v181;
        if ([v89 continueListeningStation])
        {
          [v89 setContinueListeningQueueProvider:self];
        }
      }

LABEL_82:
      v175 = v41;
      v171 = v19;
      v94 = [[_MPCQueueControllerBehaviorMusicDataSourceState alloc] initWithPlaybackContext:v181];
      dataSources = self->_dataSources;
      sectionIdentifier = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v94 sectionIdentifier];
      v97 = [(NSMutableDictionary *)dataSources objectForKeyedSubscript:sectionIdentifier];

      if (v97)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:v169 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:2440 description:@"Attempting to add datasource for an already existing section."];
      }

      eventStream = [host eventStream];
      [(_MPCQueueControllerBehaviorMusicDataSourceState *)v94 setEventStream:eventStream];

      playerID = [host playerID];
      [(_MPCQueueControllerBehaviorMusicDataSourceState *)v94 setPlayerID:playerID];

      v100 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
      if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
      {
        engineID9 = [host engineID];
        sessionID8 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
        [(_MPCQueueControllerBehaviorMusicDataSourceState *)v94 sectionIdentifier];
        v104 = v103 = contextCopy;
        *buf = 138544130;
        v199 = engineID9;
        v200 = 2114;
        v201 = sessionID8;
        v202 = 2048;
        v203 = v94;
        v204 = 2114;
        v205 = v104;
        _os_log_impl(&dword_1C5C61000, v100, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _performInsertPlaybackContext: | adding dataSource [] dataSource=%p section=%{public}@", buf, 0x2Au);

        contextCopy = v103;
      }

      v105 = self->_dataSources;
      sectionIdentifier2 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v94 sectionIdentifier];
      [(NSMutableDictionary *)v105 setObject:v94 forKeyedSubscript:sectionIdentifier2];

      sectionIdentifier3 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v94 sectionIdentifier];
      [(_MPCQueueControllerBehaviorMusic *)self _emitEventsForAddingPlaybackContext:contextCopy sectionIdentifier:sectionIdentifier3];

      if ((actions & 2) == 0)
      {
        playbackContext = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v94 playbackContext];
        [playbackContext setShuffleType:0];
      }

      v41 = v175;
      if ((actions & 4) == 0)
      {
        playbackContext2 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v94 playbackContext];
        [playbackContext2 setRepeatType:0];
      }

      v173 = contextCopy;
      if ((actions & 1) == 0)
      {
        playbackContext3 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v94 playbackContext];
        [playbackContext3 clearStartItem];
      }

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __137___MPCQueueControllerBehaviorMusic__qfa_performInsertPlaybackContext_atPosition_afterContentItemID_sectionIdentifier_actions_completion___block_invoke_526;
      aBlock[3] = &unk_1E8232AB0;
      actionsCopy3 = actions;
      v189 = v181;
      v167 = host;
      v190 = v167;
      selfCopy3 = self;
      v74 = v94;
      v192 = v74;
      v193 = WeakRetained;
      v197 = actions & 1;
      v194 = v180;
      v195 = completionCopy;
      v166 = _Block_copy(aBlock);
      v111 = self->_identifierList;
      v112 = @"auto";
      if (v179 == v111)
      {
        v112 = @"base";
      }

      v168 = v112;
      v47 = v176;
      if (position > 2)
      {
        v19 = v171;
        if (position != 3)
        {
          if (position == 4)
          {
            v141 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
            if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
            {
              engineID10 = [v167 engineID];
              sessionID9 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
              sectionIdentifier4 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v74 sectionIdentifier];
              *buf = 138544130;
              v199 = engineID10;
              v200 = 2114;
              v201 = sessionID9;
              v202 = 2114;
              v203 = v168;
              v204 = 2114;
              v205 = sectionIdentifier4;
              _os_log_impl(&dword_1C5C61000, v141, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _performInsertPlaybackContext: | adding data source [] sil=%{public}@ position=Start section=%{public}@", buf, 0x2Au);

              v41 = v175;
              v19 = v171;
            }

            if (v179 != v111)
            {
              currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
              [currentHandler2 handleFailureInMethod:v169 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:2558 description:@"Cannot insert at Start of AutoPlay SIL"];
            }

            v145 = self->_identifierList;
            sectionIdentifier5 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v74 sectionIdentifier];
            v119 = v166;
            [(MPShuffleableSectionedIdentifierList *)v145 addDataSourceAtStart:v74 section:sectionIdentifier5 completion:v166];
            goto LABEL_150;
          }

          if (position == 100)
          {
            v120 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
            if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
            {
              engineID11 = [v167 engineID];
              sessionID10 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
              sectionIdentifier6 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v74 sectionIdentifier];
              *buf = 138544386;
              v199 = engineID11;
              v200 = 2114;
              v201 = sessionID10;
              v202 = 2114;
              v203 = v168;
              v204 = 2114;
              v205 = sectionIdentifier6;
              v206 = 2114;
              v207 = identifierCopy;
              _os_log_impl(&dword_1C5C61000, v120, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _performInsertPlaybackContext: | adding data source [] sil=%{public}@ position=AfterSection section=%{public}@ afterSection=%{public}@", buf, 0x34u);

              v19 = v171;
              v41 = v175;
            }

            if (v179 == v111)
            {
              v154 = self->_identifierList;
              sectionIdentifier5 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v74 sectionIdentifier];
              v119 = v166;
              [(MPShuffleableSectionedIdentifierList *)v154 addDataSource:v74 section:sectionIdentifier5 sequentially:1 afterTailOfSection:identifierCopy completion:v166];
            }

            else
            {
              v124 = self->_autoPlayIdentifierList;
              sectionIdentifier5 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v74 sectionIdentifier];
              v119 = v166;
              [(MPSectionedIdentifierList *)v124 addDataSource:v74 section:sectionIdentifier5 afterTailOfSection:identifierCopy completion:v166];
            }

            goto LABEL_150;
          }

          goto LABEL_118;
        }

        if (!v183)
        {
          if (!v176)
          {
            currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler3 handleFailureInMethod:v169 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:2535 description:@"Attempt to insert at Specified without creating UpNext section"];
          }

          v148 = _MPCLogCategoryMusicBehavior();
          if (!os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_146;
          }

          engineID12 = [v167 engineID];
          sessionID11 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
          sectionIdentifier7 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v74 sectionIdentifier];
          *buf = 138544386;
          v199 = engineID12;
          v200 = 2114;
          v201 = sessionID11;
          v202 = 2114;
          v203 = v168;
          v204 = 2114;
          v205 = sectionIdentifier7;
          v206 = 2114;
          v207 = v176;
          v152 = "[BMUS:%{public}@:%{public}@] _performInsertPlaybackContext: | adding data source [] sil=%{public}@ position=Specified section=%{public}@ upNextSection=%{public}@";
          goto LABEL_145;
        }

        v125 = _MPCLogCategoryMusicBehavior();
        if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
        {
          engineID13 = [v167 engineID];
          sessionID12 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
          sectionIdentifier8 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v74 sectionIdentifier];
          itemID = [v171 itemID];
          sectionID = [v171 sectionID];
          *buf = 138544642;
          v199 = engineID13;
          v200 = 2114;
          v201 = sessionID12;
          v202 = 2114;
          v203 = v168;
          v204 = 2114;
          v205 = sectionIdentifier8;
          v206 = 2114;
          v207 = itemID;
          v208 = 2114;
          v209 = sectionID;
          v130 = "[BMUS:%{public}@:%{public}@] _performInsertPlaybackContext: | adding data source [] sil=%{public}@ position=Specified section=%{public}@ afterItem=%{public}@ inSection=%{public}@";
          goto LABEL_115;
        }
      }

      else
      {
        v19 = v171;
        if (position)
        {
          if (position != 1)
          {
            if (position == 2)
            {
              v113 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
              if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
              {
                engineID14 = [v167 engineID];
                sessionID13 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
                sectionIdentifier9 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v74 sectionIdentifier];
                *buf = 138544130;
                v199 = engineID14;
                v200 = 2114;
                v201 = sessionID13;
                v202 = 2114;
                v203 = v168;
                v204 = 2114;
                v205 = sectionIdentifier9;
                _os_log_impl(&dword_1C5C61000, v113, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _performInsertPlaybackContext: | adding data source [] sil=%{public}@ position=Last section=%{public}@", buf, 0x2Au);

                v41 = v175;
                v19 = v171;
              }

              if (v179 == v111)
              {
                v153 = self->_identifierList;
                sectionIdentifier5 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v74 sectionIdentifier];
                v119 = v166;
                [(MPShuffleableSectionedIdentifierList *)v153 addDataSourceAtEnd:v74 section:sectionIdentifier5 sequentially:1 completion:v166];
              }

              else
              {
                v117 = self->_autoPlayIdentifierList;
                sectionIdentifier5 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v74 sectionIdentifier];
                v119 = v166;
                [(MPSectionedIdentifierList *)v117 addDataSourceAtEnd:v74 section:sectionIdentifier5 completion:v166];
              }

              goto LABEL_150;
            }

LABEL_118:
            sectionIdentifier5 = [MEMORY[0x1E696AAA8] currentHandler];
            [sectionIdentifier5 handleFailureInMethod:v169 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:2594 description:{@"Unsupported insertion position %d for %s | ", position, "-[_MPCQueueControllerBehaviorMusic _qfa_performInsertPlaybackContext:atPosition:afterContentItemID:sectionIdentifier:actions:completion:]"}];
            v119 = v166;
            goto LABEL_151;
          }

          if (v183)
          {
            v136 = _MPCLogCategoryMusicBehavior();
            if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
            {
              engineID15 = [v167 engineID];
              sessionID14 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
              sectionIdentifier10 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v74 sectionIdentifier];
              *buf = 138544386;
              v199 = engineID15;
              v200 = 2114;
              v201 = sessionID14;
              v202 = 2114;
              v203 = v168;
              v204 = 2114;
              v205 = sectionIdentifier10;
              v206 = 2114;
              v207 = v183;
              _os_log_impl(&dword_1C5C61000, v136, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _performInsertPlaybackContext: | adding data source [] sil=%{public}@ position=Tail section=%{public}@ upNextSection=%{public}@", buf, 0x34u);

              v19 = v171;
              v41 = v175;
            }

            if (v179 == v111)
            {
              v159 = self->_identifierList;
              sectionIdentifier5 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v74 sectionIdentifier];
              v119 = v166;
              [(MPShuffleableSectionedIdentifierList *)v159 addDataSource:v74 section:sectionIdentifier5 sequentially:1 beforeTailOfSection:v183 completion:v166];
            }

            else
            {
              v140 = self->_autoPlayIdentifierList;
              sectionIdentifier5 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v74 sectionIdentifier];
              v119 = v166;
              [(MPSectionedIdentifierList *)v140 addDataSource:v74 section:sectionIdentifier5 beforeTailOfSection:v183 completion:v166];
            }

            goto LABEL_150;
          }

          if (!v176)
          {
            currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler4 handleFailureInMethod:v169 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:2573 description:@"Attempt to insert at Tail without creating UpNext section"];
          }

          v148 = _MPCLogCategoryMusicBehavior();
          if (!os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
          {
LABEL_146:

            if (v179 == v111)
            {
              v157 = self->_identifierList;
              sectionIdentifier5 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v74 sectionIdentifier];
              v158 = v157;
              v47 = v176;
              v119 = v166;
              [(MPShuffleableSectionedIdentifierList *)v158 addDataSource:v74 section:sectionIdentifier5 sequentially:1 beforeTailOfSection:v176 completion:v166];
            }

            else
            {
              v155 = self->_autoPlayIdentifierList;
              sectionIdentifier5 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v74 sectionIdentifier];
              v156 = v155;
              v47 = v176;
              v119 = v166;
              [(MPSectionedIdentifierList *)v156 addDataSource:v74 section:sectionIdentifier5 beforeTailOfSection:v176 completion:v166];
            }

            goto LABEL_151;
          }

          engineID12 = [v167 engineID];
          sessionID11 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
          sectionIdentifier7 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v74 sectionIdentifier];
          *buf = 138544386;
          v199 = engineID12;
          v200 = 2114;
          v201 = sessionID11;
          v202 = 2114;
          v203 = v168;
          v204 = 2114;
          v205 = sectionIdentifier7;
          v206 = 2114;
          v207 = v176;
          v152 = "[BMUS:%{public}@:%{public}@] _performInsertPlaybackContext: | adding data source [] sil=%{public}@ position=Tail section=%{public}@ upNextSection=%{public}@";
LABEL_145:
          _os_log_impl(&dword_1C5C61000, v148, OS_LOG_TYPE_DEFAULT, v152, buf, 0x34u);

          v19 = v171;
          v41 = v175;
          goto LABEL_146;
        }

        if (!v183)
        {
          if (!v176)
          {
            currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler5 handleFailureInMethod:v169 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:2512 description:@"Attempt to insert at Head without creating UpNext section"];
          }

          v148 = _MPCLogCategoryMusicBehavior();
          if (!os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_146;
          }

          engineID12 = [v167 engineID];
          sessionID11 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
          sectionIdentifier7 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v74 sectionIdentifier];
          *buf = 138544386;
          v199 = engineID12;
          v200 = 2114;
          v201 = sessionID11;
          v202 = 2114;
          v203 = v168;
          v204 = 2114;
          v205 = sectionIdentifier7;
          v206 = 2114;
          v207 = v176;
          v152 = "[BMUS:%{public}@:%{public}@] _performInsertPlaybackContext: | adding data source [] sil=%{public}@ position=Head section=%{public}@ upNextSection=%{public}@";
          goto LABEL_145;
        }

        v125 = _MPCLogCategoryMusicBehavior();
        if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
        {
          engineID13 = [v167 engineID];
          sessionID12 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
          sectionIdentifier8 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v74 sectionIdentifier];
          itemID = [v171 itemID];
          sectionID = [v171 sectionID];
          *buf = 138544642;
          v199 = engineID13;
          v200 = 2114;
          v201 = sessionID12;
          v202 = 2114;
          v203 = v168;
          v204 = 2114;
          v205 = sectionIdentifier8;
          v206 = 2114;
          v207 = itemID;
          v208 = 2114;
          v209 = sectionID;
          v130 = "[BMUS:%{public}@:%{public}@] _performInsertPlaybackContext: | adding data source [] sil=%{public}@ position=Head section=%{public}@ afterItem=%{public}@ inSection=%{public}@";
LABEL_115:
          _os_log_impl(&dword_1C5C61000, v125, OS_LOG_TYPE_DEFAULT, v130, buf, 0x3Eu);

          v19 = v171;
          v41 = v175;
        }
      }

      if (v179 == v111)
      {
        v146 = self->_identifierList;
        sectionIdentifier5 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v74 sectionIdentifier];
        itemID2 = [v19 itemID];
        sectionID2 = [v19 sectionID];
        v147 = v146;
        v135 = v166;
        [(MPShuffleableSectionedIdentifierList *)v147 addDataSource:v74 section:sectionIdentifier5 sequentially:1 afterItem:itemID2 inSection:sectionID2 completion:v166];
      }

      else
      {
        v131 = self->_autoPlayIdentifierList;
        sectionIdentifier5 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v74 sectionIdentifier];
        itemID2 = [v19 itemID];
        sectionID2 = [v19 sectionID];
        v134 = v131;
        v135 = v166;
        [(MPSectionedIdentifierList *)v134 addDataSource:v74 section:sectionIdentifier5 afterItem:itemID2 inSection:sectionID2 completion:v166];
      }

      v19 = v171;
      v119 = v135;
LABEL_150:
      v47 = v176;
LABEL_151:

      if ((actions & 0x10) == 0 && !self->_hasUserMutations)
      {
        self->_hasUserMutations = 1;
      }

      [v167 behaviorDidChange];

      contextCopy = v173;
      goto LABEL_155;
    }

    if ([v181 shuffleType] == 1000)
    {
      standardUserDefaults = [MEMORY[0x1E69708A8] standardUserDefaults];
      musicShuffleType = [standardUserDefaults musicShuffleType];

      [v181 setShuffleType:musicShuffleType];
    }

    repeatType = [v181 repeatType];
    if (repeatType == 3)
    {
      standardUserDefaults2 = [MEMORY[0x1E69708A8] standardUserDefaults];
      repeatType = [standardUserDefaults2 musicRepeatType];

      [v181 setRepeatType:repeatType];
    }

    if ((actions & 4) != 0 && self->_repeatType != repeatType)
    {
      self->_repeatType = repeatType;
      [(_MPCQueueControllerBehaviorMusic *)self _emitEventsForPlaybackBehaviorChangeIfNeeded];
      [WeakRetained behavior:self didChangeRepeatType:repeatType];
    }

    if ([objc_opt_class() supportsAutoPlay])
    {
      queueEndAction = [v181 queueEndAction];
      if (queueEndAction == 1000)
      {
        userIdentity = [v181 userIdentity];
        standardUserDefaults3 = [MEMORY[0x1E69708A8] standardUserDefaults];
        v82 = v41;
        selfCopy4 = self;
        v84 = v19;
        v85 = [standardUserDefaults3 autoPlayEnabledForUserIdentity:userIdentity];

        v86 = v85 == 0;
        v19 = v84;
        self = selfCopy4;
        v41 = v82;
        if (v86)
        {
          queueEndAction = 2;
        }

        else
        {
          queueEndAction = 3;
        }

        [v181 setQueueEndAction:queueEndAction];
      }

      if ((actions & 0x20) == 0 || self->_autoPlayState)
      {
        goto LABEL_82;
      }

      selfCopy6 = self;
      if (queueEndAction == 3)
      {
        v88 = 4;
      }

      else
      {
        v88 = 5;
      }
    }

    else
    {
      if (self->_autoPlayState == 1)
      {
        goto LABEL_82;
      }

      v90 = _MPCLogCategoryMusicBehavior();
      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
      {
        engineID16 = [host engineID];
        [(_MPCQueueControllerBehaviorMusic *)self sessionID];
        v174 = v41;
        v93 = v92 = v19;
        *buf = 138543618;
        v199 = engineID16;
        v200 = 2114;
        v201 = v93;
        _os_log_impl(&dword_1C5C61000, v90, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _performInsertPlaybackContext: | disabling auto play [data source unsupported]", buf, 0x16u);

        v19 = v92;
        v41 = v174;
      }

      selfCopy6 = self;
      v88 = 1;
    }

    [(_MPCQueueControllerBehaviorMusic *)selfCopy6 _transitionToAutoPlayState:v88];
    goto LABEL_82;
  }

  v16 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    engineID17 = [host engineID];
    sessionID15 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
    *buf = 138543618;
    v199 = engineID17;
    v200 = 2114;
    v201 = sessionID15;
    _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_ERROR, "[BMUS:%{public}@:%{public}@] _performInsertPlaybackContext: | failed [insert at Last is not supported -- MediaPlayer/QueueFA is ON]", buf, 0x16u);
  }

  v19 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicBehaviorError" code:4 debugDescription:@"Cannot insert at Last [MediaPlayer/QueueFA is ON]"];
  (completionCopy[2])(completionCopy, 0, v19);
LABEL_157:
}

- (void)performInsertCommand:(id)command targetContentItemID:(id)d completion:(id)completion
{
  commandCopy = command;
  dCopy = d;
  completionCopy = completion;
  playbackQueue = [commandCopy playbackQueue];
  _playbackContextOptions = [(_MPCQueueControllerBehaviorMusic *)self _playbackContextOptions];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __88___MPCQueueControllerBehaviorMusic_performInsertCommand_targetContentItemID_completion___block_invoke;
  v17[3] = &unk_1E8232A60;
  v21 = dCopy;
  v22 = completionCopy;
  v18 = playbackQueue;
  v19 = commandCopy;
  selfCopy = self;
  v13 = dCopy;
  v14 = commandCopy;
  v15 = playbackQueue;
  v16 = completionCopy;
  [v15 getMusicPlaybackContextWithOptions:_playbackContextOptions completion:v17];
}

- (id)tailInsertionContentItemIDForTargetContentItemID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    v6 = 0;
    goto LABEL_17;
  }

  v5 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:dCopy];
  if (![v5 type])
  {
    v7 = [(_MPCQueueControllerBehaviorMusic *)self _upNextSectionIdentifierForItem:v5];
    v8 = [(_MPCQueueControllerBehaviorMusic *)self _tailInsertionComponentsForUpNextSectionID:v7];
    v9 = dCopy;
    contentItemID = v9;
    if ([v5 repeatIteration])
    {
      v11 = [v5 copyWithRepeatIteration:0];
      contentItemID = [v11 contentItemID];
    }

    contentItemID2 = [v8 contentItemID];
    if (contentItemID == contentItemID2 || [contentItemID isEqual:contentItemID2])
    {
      repeatIteration = [v5 repeatIteration];

      if (!repeatIteration)
      {
        goto LABEL_12;
      }

      contentItemID2 = v8;
      v8 = [v8 copyWithRepeatIteration:{objc_msgSend(v5, "repeatIteration")}];
    }

LABEL_12:
    contentItemID3 = [v8 contentItemID];
    v6 = contentItemID3;
    if (contentItemID3 == v9 || [contentItemID3 isEqual:v9])
    {

      v6 = 0;
    }

    goto LABEL_16;
  }

  v6 = 0;
LABEL_16:

LABEL_17:

  return v6;
}

- (BOOL)isSupportedInsertionPosition:(int64_t)position fromContentItemID:(id)d reason:(id *)reason
{
  dCopy = d;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:2132 description:{@"Invalid parameter not satisfying: %@", @"contentItemID"}];
  }

  if (![(_MPCQueueControllerBehaviorMusic *)self canNextItemFromContentItemID:dCopy reason:reason])
  {
    if (reason && !*reason)
    {
      v10 = 0;
      v13 = @"unskippable item";
LABEL_24:
      *reason = v13;
      goto LABEL_32;
    }

LABEL_16:
    v10 = 0;
    goto LABEL_32;
  }

  v10 = 1;
  if (position > 1)
  {
    if (position != 2)
    {
      if (position == 3)
      {
        goto LABEL_32;
      }

      goto LABEL_19;
    }

    if (reason)
    {
      v10 = 0;
      v13 = @"QueueFA";
      goto LABEL_24;
    }

    goto LABEL_16;
  }

  if (position)
  {
    if (position == 1)
    {
      v11 = [(_MPCQueueControllerBehaviorMusic *)self tailInsertionContentItemIDForTargetContentItemID:dCopy];
      if (v11)
      {
LABEL_31:

        goto LABEL_32;
      }

      if (self->_activeItemFlags)
      {
        if (reason)
        {
          v10 = 0;
          v14 = @"active item from AutoPlay";
LABEL_29:
          *reason = v14;
          goto LABEL_31;
        }
      }

      else
      {
        if ([(_MPCQueueControllerBehaviorMusic *)self _allDataSourcesSupportInsertionPositionLast])
        {
          v12 = [(_MPCQueueControllerBehaviorMusic *)self lastSectionContentItemIDForTargetContentItemID:dCopy];
          v10 = v12 != 0;
          if (reason && !v12)
          {
            *reason = @"no UpNext section, no LastSectionContentItemID";
          }

          goto LABEL_31;
        }

        if (reason)
        {
          v10 = 0;
          v14 = @"data source does not support position Tail (interpretted as Last)";
          goto LABEL_29;
        }
      }

      v10 = 0;
      goto LABEL_31;
    }

LABEL_19:
    if (reason)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"unsupported position: %ld", position];
      *reason = v10 = 0;
      goto LABEL_32;
    }

    goto LABEL_16;
  }

LABEL_32:

  return v10;
}

- (void)canReuseQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  if (([objc_opt_class() canLoadQueue:queueCopy reason:0] & 1) == 0)
  {
    goto LABEL_7;
  }

  if ([(_MPCQueueControllerBehaviorMusic *)self _shouldFailWithOverridingErrorForQueue:queueCopy])
  {
    v8 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicBehaviorError" code:10 debugDescription:@"has Queue"];
    (*(completionCopy + 2))(completionCopy, 0, 0, 0, v8);

    goto LABEL_8;
  }

  if (self->_hasUserMutations || [(NSMutableDictionary *)self->_dataSources count]> 1 || [(MPShuffleableSectionedIdentifierList *)self->_identifierList shuffleType])
  {
LABEL_7:
    (*(completionCopy + 2))(completionCopy, 0, 0, 0, 0);
    goto LABEL_8;
  }

  allValues = [(NSMutableDictionary *)self->_dataSources allValues];
  firstObject = [allValues firstObject];

  playbackContext = [firstObject playbackContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _playbackContextOptions = [(_MPCQueueControllerBehaviorMusic *)self _playbackContextOptions];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __61___MPCQueueControllerBehaviorMusic_canReuseQueue_completion___block_invoke;
    v13[3] = &unk_1E8237DD0;
    v16 = completionCopy;
    v14 = playbackContext;
    selfCopy = self;
    [queueCopy getMusicPlaybackContextWithOptions:_playbackContextOptions completion:v13];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, 0, 0);
  }

LABEL_8:
}

- (BOOL)_shouldFailWithOverridingErrorForQueue:(id)queue
{
  v27 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  if (self->_playNowInsertionContentItemID)
  {
    v5 = [(_MPCQueueControllerBehaviorMusic *)self tailInsertionContentItemIDForTargetContentItemID:?];
    if (!v5)
    {
      v15 = 0;
LABEL_22:

      goto LABEL_23;
    }

    host = [(_MPCQueueControllerBehaviorMusic *)self host];
    v7 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:self->_playNowInsertionContentItemID];
    v8 = [(_MPCQueueControllerBehaviorMusic *)self _upNextSectionIdentifierForItem:v7];
    if (v8)
    {
      mediaRemoteOptions = [queueCopy mediaRemoteOptions];
      v10 = [mediaRemoteOptions objectForKeyedSubscript:@"kMRMediaRemoteOptionDialogOptions"];

      if (v10)
      {
        engineID3 = [v10 objectForKeyedSubscript:@"selectedAction"];
        if ([engineID3 isEqualToString:@"clearQueue"])
        {
          sessionID3 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
          if (os_log_type_enabled(sessionID3, OS_LOG_TYPE_DEFAULT))
          {
            engineID = [host engineID];
            sessionID = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
            v21 = 138543618;
            v22 = engineID;
            v23 = 2114;
            v24 = sessionID;
            _os_log_impl(&dword_1C5C61000, sessionID3, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _shouldFailWithOverridingErrorForQueue: | deferring to SetQueue [selectedDialogAction = clearQueue]", &v21, 0x16u);
          }

          goto LABEL_12;
        }
      }

      else
      {
        if ([queueCopy replaceIntent] == 1)
        {
          v17 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            engineID2 = [host engineID];
            sessionID2 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
            v21 = 138543618;
            v22 = engineID2;
            v23 = 2114;
            v24 = sessionID2;
            _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _shouldFailWithOverridingErrorForQueue: | deferring to SetQueue [replaceIntent = .clearUpNext]", &v21, 0x16u);
          }

          v10 = 0;
          goto LABEL_17;
        }

        v10 = 0;
      }

      v15 = 1;
      goto LABEL_21;
    }

    v10 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_17:
      v15 = 0;
LABEL_21:

      goto LABEL_22;
    }

    engineID3 = [host engineID];
    sessionID3 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
    playNowInsertionContentItemID = self->_playNowInsertionContentItemID;
    v21 = 138543874;
    v22 = engineID3;
    v23 = 2114;
    v24 = sessionID3;
    v25 = 2114;
    v26 = playNowInsertionContentItemID;
    _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_ERROR, "[BMUS:%{public}@:%{public}@] _shouldFailWithOverridingErrorForQueue: | unexpected deferring to SetQueue [playNowInsertionContentItemID is non-nil, but upNextSectionID is nil] playNowInsertionContentItemID=%{public}@", &v21, 0x20u);
LABEL_12:

    goto LABEL_17;
  }

  v15 = 0;
LABEL_23:

  return v15;
}

- (void)groupSession:(id)session didUpdateParticipants:(id)participants
{
  sessionCopy = session;
  participants = [sessionCopy participants];
  host = [sessionCopy host];

  [(_MPCQueueControllerBehaviorMusic *)self _updateGroupSessionParticipants:participants localParticipant:host];
}

- (void)groupSessionDidConnect:(id)connect
{
  connectCopy = connect;
  participants = [connectCopy participants];
  host = [connectCopy host];

  [(_MPCQueueControllerBehaviorMusic *)self _updateGroupSessionParticipants:participants localParticipant:host];
}

- (int64_t)userTransitionPreference
{
  standardUserDefaults = [MEMORY[0x1E69708A8] standardUserDefaults];
  v3 = +[MPCPlaybackAccountManager sharedManager];
  fallbackAccount = [v3 fallbackAccount];

  v5 = [standardUserDefaults _areTransitionsEnabledWithSubscription:{objc_msgSend(fallbackAccount, "hasCatalogPlaybackCapability")}];
  v6 = [standardUserDefaults transitionStyleForUserWithCatalogPlaybackCapability:{objc_msgSend(fallbackAccount, "hasCatalogPlaybackCapability")}];
  v7 = 3;
  if (v6 != 1)
  {
    v7 = 0;
  }

  if (!v6)
  {
    v7 = 2;
  }

  if (v5)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (int64_t)transitionSettingsSource
{
  transitionsEnabled = self->_transitionsEnabled;
  transitionStyle = self->_transitionStyle;
  v6 = self->_crossfadeDuration == 0;
  if ((transitionStyle == 1000) != v6)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:1957 description:@"TransitionStyle and CrossfadeDuration must always be from the same source"];
  }

  if (transitionsEnabled == 1000 && transitionStyle != 1000)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:1960 description:@"TransitionsEnabled should never be sourced from user defaults while TransitionStyle is sourced from the queue"];

LABEL_17:
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:1974 description:{@"Unsupported source configuration. transitionsEnabledSourceUserDefaults: %d, transitionStyleSourceUserDefaults: %d, crossfadeDurationSourceUserDefaults: %d", transitionsEnabled == 1000, transitionStyle == 1000, v6}];

    return 0;
  }

  if (transitionsEnabled == 1000 && transitionStyle == 1000)
  {
    return 1;
  }

  if (transitionsEnabled != 1000 && transitionStyle != 1000)
  {
    return 3;
  }

  v9 = transitionStyle == 1000;
  if (transitionsEnabled == 1000)
  {
    v9 = 0;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  return 2;
}

- (double)crossfadeDuration
{
  crossfadeDuration = self->_crossfadeDuration;
  if (crossfadeDuration)
  {

    [(NSNumber *)crossfadeDuration doubleValue];
  }

  else
  {
    standardUserDefaults = [MEMORY[0x1E69708A8] standardUserDefaults];
    [standardUserDefaults crossFadeDuration];
    v7 = v6;

    return v7;
  }

  return result;
}

- (BOOL)shouldDowngradeTransitionStyle
{
  resolvedTransitionStyle = [(_MPCQueueControllerBehaviorMusic *)self resolvedTransitionStyle];
  v3 = +[MPCPlaybackAccountManager sharedManager];
  fallbackAccount = [v3 fallbackAccount];

  LOBYTE(v3) = [fallbackAccount hasCatalogPlaybackCapability];
  LOBYTE(v3) = +[MPCPlaybackEngine deviceSupportsSmartTransitions]& v3 ^ 1;

  return (resolvedTransitionStyle == 1) & v3;
}

- (int64_t)resolvedTransitionStyle
{
  transitionStyle = self->_transitionStyle;
  v4 = +[MPCPlaybackAccountManager sharedManager];
  fallbackAccount = [v4 fallbackAccount];

  if (self->_transitionStyle == 1000)
  {
    standardUserDefaults = [MEMORY[0x1E69708A8] standardUserDefaults];
    transitionStyle = [standardUserDefaults transitionStyleForUserWithCatalogPlaybackCapability:{objc_msgSend(fallbackAccount, "hasCatalogPlaybackCapability")}];
  }

  return transitionStyle;
}

- (void)toggleTransitionsEnabledFromRemoteCommand:(BOOL)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  [(_MPCQueueControllerBehaviorMusic *)self _toggleTransitionsEnabledFromRemoteCommand:commandCopy];
  completionCopy[2](completionCopy, 0);
}

- (BOOL)canUserToggleTransitionsEnabledWithReason:(id *)reason
{
  result = +[MPCPlaybackEngine deviceSupportsTransitions];
  if (reason)
  {
    if (!result)
    {
      *reason = @"device does not support transitions";
    }
  }

  return result;
}

- (id)lastSectionContentItemIDForTargetContentItemID:(id)d
{
  v4 = [(_MPCQueueControllerBehaviorMusic *)self tailInsertionContentItemIDForTargetContentItemID:d];
  if (v4)
  {
    contentItemID = 0;
  }

  else
  {
    orderedSectionIdentifiers = [(MPShuffleableSectionedIdentifierList *)self->_identifierList orderedSectionIdentifiers];
    if ([orderedSectionIdentifiers count] == 1)
    {
      firstObject = [orderedSectionIdentifiers firstObject];
      v8 = [(MPShuffleableSectionedIdentifierList *)self->_identifierList enumeratorWithOptions:24 startPosition:0 endPosition:0];
      nextObject = [v8 nextObject];
      contentItemID = 0;
      if ([nextObject entryType] == 3)
      {
        itemResult = [nextObject itemResult];
        itemIdentifier = [itemResult itemIdentifier];

        itemResult2 = [nextObject itemResult];
        sectionIdentifier = [itemResult2 sectionIdentifier];

        v14 = [(NSMutableDictionary *)self->_dataSources objectForKeyedSubscript:firstObject];
        if ([v14 shouldUsePlaceholderForItem:itemIdentifier inSection:sectionIdentifier])
        {
          contentItemID = 0;
        }

        else
        {
          dataSource = [v14 dataSource];
          v16 = [dataSource modelPlayEventForItem:itemIdentifier inSection:sectionIdentifier];

          if (([v16 itemType] & 0xFFFFFFFFFFFFFFFDLL) == 1)
          {
            [MPCQueueControllerBehaviorMusicIdentifierComponents itemComponentsWithSectionID:sectionIdentifier itemID:itemIdentifier];
            v17 = v19 = v16;
            contentItemID = [v17 contentItemID];

            v16 = v19;
          }

          else
          {
            contentItemID = 0;
          }
        }
      }
    }

    else
    {
      contentItemID = 0;
    }
  }

  return contentItemID;
}

- (void)prepareForCreateStationAfterContentItemID:(id)d
{
  v36 = *MEMORY[0x1E69E9840];
  dCopy = d;
  host = [(_MPCQueueControllerBehaviorMusic *)self host];
  v27 = [host beginEditWithReason:@"BehaviorMusic-prepareForCreateStation"];
  [(_MPCQueueControllerBehaviorMusic *)self _setRepeatType:0 reason:@"PrepareForCreateStation"];
  v28 = dCopy;
  v6 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:dCopy];
  v7 = MEMORY[0x1E6970948];
  itemID = [v6 itemID];
  sectionID = [v6 sectionID];
  v10 = [v7 positionForItem:itemID inSection:sectionID];
  v11 = [_MPCQueueControllerEnumerator enumeratorWithMusicBehavior:self mode:0 options:0 startPosition:v10 endPosition:0];

  nextObject = [v11 nextObject];
  if (nextObject)
  {
    v13 = nextObject;
    do
    {
      itemResult = [v13 itemResult];
      sectionIdentifier = [itemResult sectionIdentifier];
      v16 = [(_MPCQueueControllerBehaviorMusic *)self _identifierListForSection:sectionIdentifier];

      itemResult2 = [v13 itemResult];
      itemIdentifier = [itemResult2 itemIdentifier];
      itemResult3 = [v13 itemResult];
      sectionIdentifier2 = [itemResult3 sectionIdentifier];
      [v16 removeItem:itemIdentifier fromSection:sectionIdentifier2];

      nextObject2 = [v11 nextObject];

      v13 = nextObject2;
    }

    while (nextObject2);
  }

  dataSources = self->_dataSources;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __78___MPCQueueControllerBehaviorMusic_prepareForCreateStationAfterContentItemID___block_invoke;
  v29[3] = &unk_1E8232A10;
  v23 = host;
  v30 = v23;
  selfCopy = self;
  [(NSMutableDictionary *)dataSources enumerateKeysAndObjectsUsingBlock:v29];
  if (!self->_hasUserMutations)
  {
    self->_hasUserMutations = 1;
  }

  v24 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    engineID = [v23 engineID];
    sessionID = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
    *buf = 138543618;
    v33 = engineID;
    v34 = 2114;
    v35 = sessionID;
    _os_log_impl(&dword_1C5C61000, v24, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] prepareForCreateStationAfterContentItemID: | committing edit [queue updated]", buf, 0x16u);
  }

  [v27 commit];
}

- (void)setHostingSharedSessionID:(id)d reason:(id)reason
{
  v28[3] = *MEMORY[0x1E69E9840];
  dCopy = d;
  reasonCopy = reason;
  v9 = self->_activeHostingSharedSessionID;
  v10 = v9;
  if (v9 == dCopy)
  {
LABEL_15:

    goto LABEL_16;
  }

  v11 = [(NSString *)v9 isEqual:dCopy];

  if ((v11 & 1) == 0)
  {
    host = [(_MPCQueueControllerBehaviorMusic *)self host];
    v10 = host;
    if (self->_activeHostingSharedSessionID)
    {
      eventStream = [(NSString *)host eventStream];
      v27[0] = @"session-id";
      sessionID = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
      null = sessionID;
      if (!sessionID)
      {
        null = [MEMORY[0x1E695DFB0] null];
      }

      activeHostingSharedSessionID = self->_activeHostingSharedSessionID;
      v28[0] = null;
      v28[1] = activeHostingSharedSessionID;
      v27[1] = @"shared-session-id";
      v27[2] = @"shared-session-event-reason";
      v28[2] = reasonCopy;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:3];
      [eventStream emitEventType:@"shared-session-end" payload:v17];

      if (!sessionID)
      {
      }
    }

    objc_storeStrong(&self->_activeHostingSharedSessionID, d);
    activeGroupSession = self->_activeGroupSession;
    self->_activeGroupSession = 0;

    if (dCopy)
    {
      eventStream2 = [(NSString *)v10 eventStream];
      v25[0] = @"session-id";
      sessionID2 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
      null2 = sessionID2;
      if (!sessionID2)
      {
        null2 = [MEMORY[0x1E695DFB0] null];
      }

      v26[0] = null2;
      v26[1] = dCopy;
      v25[1] = @"shared-session-id";
      v25[2] = @"shared-session-type";
      v25[3] = @"shared-session-event-reason";
      v26[2] = &unk_1F45991F0;
      v26[3] = reasonCopy;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:4];
      [eventStream2 emitEventType:@"shared-session-begin" payload:v22];

      if (!sessionID2)
      {
      }

      v23 = [MEMORY[0x1E69B0A40] remoteControlGroupSessionWithIdentifier:dCopy delegate:self];
      v24 = self->_activeGroupSession;
      self->_activeGroupSession = v23;
    }

    goto LABEL_15;
  }

LABEL_16:
}

- (id)copyContentItemID:(id)d repeatIteration:(int64_t)iteration
{
  v5 = MPCQueueControllerBehaviorMusicIdentifierComponentsFromContentItemID(d);
  if ([v5 repeatIteration] != iteration)
  {
    v6 = [v5 copyWithRepeatIteration:iteration];

    v5 = v6;
  }

  contentItemID = [v5 contentItemID];

  return contentItemID;
}

- (id)contentItemIDWithoutRepeatIteration:(id)iteration
{
  v3 = MPCQueueControllerBehaviorMusicIdentifierComponentsFromContentItemID(iteration);
  if ([v3 repeatIteration])
  {
    v4 = [v3 copyWithRepeatIteration:0];

    v3 = v4;
  }

  contentItemID = [v3 contentItemID];

  return contentItemID;
}

- (void)findFirstContentItemIDForItemIntersectingIdentifierSet:(id)set completion:(id)completion
{
  setCopy = set;
  completionCopy = completion;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__6927;
  v17 = __Block_byref_object_dispose__6928;
  v18 = 0;
  dataSources = self->_dataSources;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __102___MPCQueueControllerBehaviorMusic_findFirstContentItemIDForItemIntersectingIdentifierSet_completion___block_invoke;
  v10[3] = &unk_1E82328A8;
  v9 = setCopy;
  v11 = v9;
  v12 = &v13;
  [(NSMutableDictionary *)dataSources enumerateKeysAndObjectsUsingBlock:v10];
  completionCopy[2](completionCopy, v14[5], 0);

  _Block_object_dispose(&v13, 8);
}

- (void)getSharedQueueTracklistWithStartingContentItemID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v7 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:dCopy];
  v8 = [_MPCQueueControllerEnumerator enumeratorWithMusicBehavior:self mode:0 options:1 startPosition:0 endPosition:0];
  v9 = objc_alloc_init(MEMORY[0x1E69B1458]);
  v10 = 0;
  nextObject = 0;
  v76 = 0;
  while (1)
  {
    v12 = nextObject;
    nextObject = [v8 nextObject];

    if (!nextObject)
    {
      break;
    }

    entryType = [nextObject entryType];
    switch(entryType)
    {
      case 2:
        autoPlayIdentifierList = self->_autoPlayIdentifierList;
        trackingEntryResult = [nextObject trackingEntryResult];
        sectionIdentifier = [trackingEntryResult sectionIdentifier];
        LODWORD(autoPlayIdentifierList) = [(MPSectionedIdentifierList *)autoPlayIdentifierList hasSection:sectionIdentifier];

        if (autoPlayIdentifierList)
        {
          goto LABEL_49;
        }

        break;
      case 4:
        trackingEntryResult2 = [nextObject trackingEntryResult];
        dataSources = self->_dataSources;
        sectionIdentifier2 = [trackingEntryResult2 sectionIdentifier];
        v24 = [(NSMutableDictionary *)dataSources objectForKeyedSubscript:sectionIdentifier2];

        LOBYTE(sectionIdentifier2) = [v24 shouldRequestAdditionalItemsAtTail];
        if (sectionIdentifier2)
        {
          goto LABEL_49;
        }

        break;
      case 3:
        itemResult = [nextObject itemResult];
        v15 = self->_dataSources;
        sectionIdentifier3 = [itemResult sectionIdentifier];
        v17 = [(NSMutableDictionary *)v15 objectForKeyedSubscript:sectionIdentifier3];
        dataSource = [v17 dataSource];

        sectionIdentifier4 = [itemResult sectionIdentifier];
        identifier = [v76 identifier];
        v74 = v7;
        v72 = v9;
        v69 = itemResult;
        if (sectionIdentifier4 != identifier)
        {
          v20 = [sectionIdentifier4 isEqual:identifier];

          if (v20)
          {
            v9 = v72;
            goto LABEL_30;
          }

          itemIdentifier = [itemResult itemIdentifier];
          sectionIdentifier5 = [itemResult sectionIdentifier];
          sectionIdentifier4 = [dataSource modelPlayEventForItem:itemIdentifier inSection:sectionIdentifier5];

          itemType = [sectionIdentifier4 itemType];
          if (itemType == 4)
          {
            radioStation = [sectionIdentifier4 radioStation];
            identifiers = [radioStation identifiers];
            radio = [identifiers radio];
            stationStringID = [radio stationStringID];

            if (!stationStringID)
            {
              goto LABEL_27;
            }

            v43 = self->_autoPlayIdentifierList;
            sectionIdentifier6 = [v69 sectionIdentifier];
            v45 = [(MPSectionedIdentifierList *)v43 hasSection:sectionIdentifier6];

            v46 = MEMORY[0x1E69E45A8];
            featureName = [sectionIdentifier4 featureName];
            if (v45)
            {
              [v46 autoPlayContainerWithMediaIdentifier:stationStringID featureName:featureName];
            }

            else
            {
              [v46 radioContainerWithMediaIdentifier:stationStringID featureName:featureName];
            }
            v36 = ;
          }

          else
          {
            if (itemType != 3)
            {
              if (itemType == 1)
              {
                album = [sectionIdentifier4 album];
                identifiers2 = [album identifiers];
                stationStringID = [identifiers2 preferredStoreStringIdentifierForPersonID:0];

                if (stationStringID)
                {
                  v34 = MEMORY[0x1E69E45A8];
                  featureName = [sectionIdentifier4 featureName];
                  v36 = [v34 albumContainerWithMediaIdentifier:stationStringID featureName:featureName];
                  goto LABEL_26;
                }
              }

LABEL_27:
              v48 = MEMORY[0x1E69E45A8];
              featureName2 = [sectionIdentifier4 featureName];
              v47 = [v48 groupWithFeatureName:featureName2];

LABEL_28:
              sectionIdentifier7 = [v69 sectionIdentifier];
              [v47 setIdentifier:sectionIdentifier7];

              [v72 appendSection:v47];
              identifier = v76;
              v76 = v47;
              v9 = v72;
              itemResult = v69;
              goto LABEL_29;
            }

            playlist = [sectionIdentifier4 playlist];
            identifiers3 = [playlist identifiers];
            stationStringID = [identifiers3 preferredStoreStringIdentifierForPersonID:0];

            if (!stationStringID)
            {
              goto LABEL_27;
            }

            v39 = MEMORY[0x1E69E45A8];
            featureName = [sectionIdentifier4 featureName];
            v36 = [v39 playlistContainerWithMediaIdentifier:stationStringID featureName:featureName];
          }

LABEL_26:
          v47 = v36;

          if (!v47)
          {
            goto LABEL_27;
          }

          goto LABEL_28;
        }

LABEL_29:

LABEL_30:
        itemIdentifier2 = [itemResult itemIdentifier];
        sectionIdentifier8 = [itemResult sectionIdentifier];
        v53 = [dataSource identifiersForItem:itemIdentifier2 inSection:sectionIdentifier8];

        v70 = v53;
        v54 = [v53 preferredStoreStringIdentifierForPersonID:0];
        if (v54)
        {
          v55 = [MEMORY[0x1E69E45B0] itemWithMediaIdentifier:v54];
          itemIdentifier3 = [itemResult itemIdentifier];
          [v55 setIdentifier:itemIdentifier3];

          v71 = v55;
          [v9 appendItem:v55];
        }

        else
        {
          v71 = 0;
        }

        sectionID = [v74 sectionID];
        sectionIdentifier9 = [itemResult sectionIdentifier];
        if (sectionID != sectionIdentifier9 && ([sectionID isEqual:sectionIdentifier9] & 1) == 0)
        {

          v63 = 1;
          v7 = v74;
          goto LABEL_46;
        }

        v68 = v54;
        itemID = [v74 itemID];
        itemIdentifier4 = [itemResult itemIdentifier];
        v61 = itemIdentifier4;
        if (itemID == itemIdentifier4)
        {

LABEL_40:
          if (v71)
          {
            v64 = [v72 numberOfSections] - 1;
            v65 = [v72 numberOfItemsInSection:v64];
            itemResult = v69;
            if (v10)
            {
              currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
              [currentHandler handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:1704 description:@"Start item was found multiple times while building shared queue tracklist."];
            }

            [MEMORY[0x1E696AC88] msv_indexPathForItem:v65 - 1 inSection:v64];
            sectionID = v10;
            v10 = v63 = 1;
            v7 = v74;
          }

          else
          {
            sectionID = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicBehaviorError" code:3 debugDescription:{@"Start item was missing a media identifier while building shared queue tracklist: startingContentItemID=%@ identifiers=%@", dCopy, v70}];
            (*(completionCopy + 2))(completionCopy, 0, 0, sectionID);
            v63 = 0;
            v7 = v74;
            itemResult = v69;
          }

          v54 = v68;
LABEL_46:

          v9 = v72;
          goto LABEL_47;
        }

        v62 = [itemID isEqual:itemIdentifier4];

        if (v62)
        {
          goto LABEL_40;
        }

        v63 = 1;
        v7 = v74;
        v9 = v72;
        v54 = v68;
        itemResult = v69;
LABEL_47:

        if ((v63 & 1) == 0)
        {
          goto LABEL_52;
        }

        break;
    }
  }

LABEL_49:
  if (v10)
  {
    (*(completionCopy + 2))(completionCopy, v9, v10, 0);
  }

  else
  {
    v67 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicBehaviorError" code:3 debugDescription:@"Failed to find the start item in the shared queue tracklist."];
    (*(completionCopy + 2))(completionCopy, 0, 0, v67);
  }

LABEL_52:
}

- (void)setQueueEndAction:(int64_t)action completion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_musicBehaviorDelegate);
  [WeakRetained behavior:self didChangeActionAtQueueEnd:action];

  completionCopy[2](completionCopy, 0);
}

- (BOOL)isSupportedQueueEndAction:(int64_t)action
{
  if (action == 3)
  {
    return [(_MPCQueueControllerBehaviorMusic *)self canUserEnableAutoPlayWithReason:0];
  }

  else
  {
    return action == 2;
  }
}

- (BOOL)isAutoPlayContentItemID:(id)d
{
  if (d)
  {
    v3 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:?];
    v4 = [v3 behaviorFlags] & 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)setAutoPlayEnabled:(BOOL)enabled targetContentItemID:(id)d completion:(id)completion
{
  enabledCopy = enabled;
  v45 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  host = [(_MPCQueueControllerBehaviorMusic *)self host];
  v11 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    engineID = [host engineID];
    sessionID = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
    autoPlayState = self->_autoPlayState;
    if (autoPlayState >= 0xA)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnexpectedState:%ld", self->_autoPlayState];
    }

    else
    {
      v15 = off_1E8232D58[autoPlayState];
    }

    *buf = 138544130;
    v36 = engineID;
    v37 = 2114;
    v38 = sessionID;
    v39 = 1024;
    v40 = enabledCopy;
    v41 = 2114;
    v42 = v15;
    _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "[AOT:%{public}@:%{public}@] setAutoPlayEnabled:%{BOOL}u | begin [] autoPlayState=%{public}@", buf, 0x26u);
  }

  if (enabledCopy)
  {
    [(_MPCQueueControllerBehaviorMusic *)self _setRepeatType:0 reason:@"SetAutoPlayEnabled"];
  }

  v16 = 0;
  v17 = self->_autoPlayState;
  if (v17 > 4)
  {
    if (v17 > 7)
    {
      if (v17 == 8)
      {
        if (enabledCopy)
        {
          if (self->_autoPlayIdentifierList)
          {
            v19 = 7;
          }

          else
          {
            v19 = 9;
          }

          v16 = @"enabling";
          goto LABEL_56;
        }

        if (self->_activeItemFlags)
        {
          v18 = @"already pending disable";
          goto LABEL_29;
        }

        v16 = @"disabling";
        goto LABEL_51;
      }

      v19 = 0;
      if (v17 != 9)
      {
        goto LABEL_56;
      }
    }

    else if ((v17 - 6) >= 2)
    {
      v19 = 0;
      if (v17 != 5)
      {
        goto LABEL_56;
      }

      if (enabledCopy)
      {
        v16 = @"enabling";
        v19 = 4;
        goto LABEL_56;
      }

      v16 = @"already disabled";
      if (self->_activeItemFlags)
      {
        goto LABEL_55;
      }

LABEL_51:
      v19 = 3;
      goto LABEL_56;
    }

    if (enabledCopy)
    {
      v18 = @"already enabled";
      goto LABEL_29;
    }

    v16 = @"disabling";
    if (self->_activeItemFlags)
    {
      goto LABEL_55;
    }

    goto LABEL_51;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      if (enabledCopy)
      {
        goto LABEL_44;
      }

      if ((self->_activeItemFlags & 1) == 0)
      {
        v16 = @"disabling";
        v19 = 1;
        goto LABEL_56;
      }

      v16 = @"pending disable - activeItem.isAutoPlay";
    }

    else
    {
      if (v17 != 3)
      {
        if (enabledCopy)
        {
          v18 = @"already waiting";
LABEL_29:
          v20 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            engineID2 = [host engineID];
            sessionID2 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
            v23 = self->_autoPlayState;
            if (v23 >= 0xA)
            {
              v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnexpectedState:%ld", self->_autoPlayState];
            }

            else
            {
              v24 = off_1E8232D58[v23];
            }

            *buf = 138544386;
            v36 = engineID2;
            v37 = 2114;
            v38 = sessionID2;
            v39 = 1024;
            v40 = enabledCopy;
            v41 = 2114;
            v42 = v18;
            v43 = 2114;
            v44 = v24;
            _os_log_impl(&dword_1C5C61000, v20, OS_LOG_TYPE_DEFAULT, "[AOT:%{public}@:%{public}@] setAutoPlayEnabled:%{BOOL}u | ignoring setter [%{public}@] autoPlayState=%{public}@", buf, 0x30u);
          }

          goto LABEL_59;
        }

        v16 = @"disabling";
        v19 = 5;
        goto LABEL_56;
      }

      if (enabledCopy)
      {
LABEL_44:
        v16 = @"enabling";
        v19 = 9;
        goto LABEL_56;
      }

      if ((self->_activeItemFlags & 1) == 0)
      {
        v18 = @"already disabled";
        goto LABEL_29;
      }

      v16 = @"activeItem.isAutoPlay";
    }

LABEL_55:
    v25 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:dCopy];
    v26 = MEMORY[0x1E6970948];
    itemID = [v25 itemID];
    sectionID = [v25 sectionID];
    v29 = [v26 positionForItem:itemID inSection:sectionID];
    autoPlayEndPosition = self->_autoPlayEndPosition;
    self->_autoPlayEndPosition = v29;

    v19 = 8;
    goto LABEL_56;
  }

  if (!v17)
  {
    v18 = @"already unknown";
    goto LABEL_29;
  }

  v19 = 0;
  if (v17 == 1)
  {
    v18 = @"already unsupported";
    goto LABEL_29;
  }

LABEL_56:
  v31 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    engineID3 = [host engineID];
    sessionID3 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
    v34 = off_1E8232D58[v19];
    *buf = 138544386;
    v36 = engineID3;
    v37 = 2114;
    v38 = sessionID3;
    v39 = 1024;
    v40 = enabledCopy;
    v41 = 2114;
    v42 = v16;
    v43 = 2114;
    v44 = v34;
    _os_log_impl(&dword_1C5C61000, v31, OS_LOG_TYPE_DEFAULT, "[AOT:%{public}@:%{public}@] setAutoPlayEnabled:%{BOOL}u | transitioning [%{public}@] nextState=%{public}@", buf, 0x30u);
  }

  [(_MPCQueueControllerBehaviorMusic *)self _transitionToAutoPlayState:v19];
LABEL_59:
  completionCopy[2](completionCopy, 0);
}

- (BOOL)canUserEnableAutoPlayWithReason:(id *)reason
{
  autoPlayState = self->_autoPlayState;
  if ((autoPlayState - 1) < 2)
  {
    if (reason)
    {
      v4 = @"unsupported content";
      goto LABEL_10;
    }

    return 0;
  }

  if ((autoPlayState - 4) < 2)
  {
    if (reason)
    {
      v4 = @"waiting for items";
LABEL_10:
      result = 0;
      *reason = v4;
      return result;
    }

    return 0;
  }

  if (!autoPlayState)
  {
    if (reason)
    {
      v4 = @"unknown state";
      goto LABEL_10;
    }

    return 0;
  }

  return 1;
}

- (void)reshuffleWithTargetContentItemID:(id)d completion:(id)completion
{
  v110 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  host = [(_MPCQueueControllerBehaviorMusic *)self host];
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    engineID = [host engineID];
    sessionID = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
    *buf = 138543874;
    v103 = engineID;
    v104 = 2114;
    v105 = sessionID;
    v106 = 2114;
    v107 = dCopy;
    _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] reshuffleWithTargetContentItemID:completion: | starting reshuffle [] targetContentItemID=%{public}@", buf, 0x20u);
  }

  v11 = [host beginEditWithReason:@"BehaviorMusic-reshuffle"];
  shuffleType = self->_shuffleType;
  if (shuffleType)
  {
    [(MPShuffleableSectionedIdentifierList *)self->_identifierList setShuffleType:0];
  }

  self->_shuffleType = 1;
  [(MPShuffleableSectionedIdentifierList *)self->_identifierList setShuffleType:1];
  v13 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    engineID2 = [host engineID];
    [(_MPCQueueControllerBehaviorMusic *)self sessionID];
    v16 = v15 = v11;
    *buf = 138543874;
    v103 = engineID2;
    v104 = 2114;
    v105 = v16;
    v106 = 1024;
    LODWORD(v107) = shuffleType != 0;
    _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] reshuffleWithTargetContentItemID:completion: | enabled shuffle [] shuffleType=Songs wasShuffled=%{BOOL}u", buf, 0x1Cu);

    v11 = v15;
  }

  v17 = [(_MPCQueueControllerBehaviorMusic *)self contentItemIDEnumeratorStartingAfterContentItemID:0 mode:2 options:0];
  nextObject = [v17 nextObject];
  if (nextObject)
  {
    v19 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:nextObject];
    if ([v19 type])
    {
      v84 = nextObject;
      sectionID = [v19 sectionID];
      v21 = [(NSMutableDictionary *)self->_dataSources objectForKeyedSubscript:sectionID];
      v22 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      v93 = v21;
      if (v21)
      {
        v87 = sectionID;
        if (v23)
        {
          engineID3 = [host engineID];
          [(_MPCQueueControllerBehaviorMusic *)self sessionID];
          v88 = v19;
          v25 = shuffleType;
          v26 = v17;
          v27 = v11;
          v29 = v28 = completionCopy;
          *buf = 138543874;
          v103 = engineID3;
          v104 = 2114;
          v105 = v29;
          v106 = 2114;
          v107 = v87;
          _os_log_impl(&dword_1C5C61000, v22, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] reshuffleWithTargetContentItemID:completion: | recreating data source [placeholder start item] sectionID=%{public}@", buf, 0x20u);

          completionCopy = v28;
          v11 = v27;
          v17 = v26;
          shuffleType = v25;
          v19 = v88;
        }

        dataSource = [v21 dataSource];
        v31 = objc_opt_respondsToSelector();

        if (v31)
        {
          v32 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            engineID4 = [host engineID];
            [(_MPCQueueControllerBehaviorMusic *)self sessionID];
            v89 = v19;
            v34 = shuffleType;
            v35 = v17;
            v36 = v11;
            v38 = v37 = completionCopy;
            *buf = 138543618;
            v103 = engineID4;
            v104 = 2114;
            v105 = v38;
            _os_log_impl(&dword_1C5C61000, v32, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] reshuffleWithTargetContentItemID:completion: | clearing data source section []", buf, 0x16u);

            completionCopy = v37;
            v11 = v36;
            v17 = v35;
            shuffleType = v34;
            v19 = v89;
          }

          dataSource2 = [v21 dataSource];
          [dataSource2 clearSection];
        }

        dataSource3 = [v21 dataSource];
        usesIdentifierRegistry = [objc_opt_class() usesIdentifierRegistry];

        v81 = completionCopy;
        if (usesIdentifierRegistry)
        {
          dataSource4 = [v21 dataSource];
          v90 = [dataSource4 identifierRegistryWithExclusiveAccessReturningObject:&__block_literal_global_355];

          v43 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
          v44 = v21;
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            engineID5 = [host engineID];
            sessionID2 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
            *buf = 138543874;
            v103 = engineID5;
            v104 = 2114;
            v105 = sessionID2;
            v106 = 2048;
            v107 = v90;
            _os_log_impl(&dword_1C5C61000, v43, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] reshuffleWithTargetContentItemID:completion: | extracted identifier registry [] identifierRegistry=%p", buf, 0x20u);

            v44 = v93;
          }

          nextObject = v84;
          if (v90)
          {
            itemID = [v19 itemID];
            v48 = v90;
            v82 = [v90 identifierSetForItem:itemID];

            v49 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
            {
              engineID6 = [host engineID];
              sessionID3 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
              *buf = 138543874;
              v103 = engineID6;
              v104 = 2114;
              v105 = sessionID3;
              v51 = sessionID3;
              v106 = 2114;
              v107 = v82;
              _os_log_impl(&dword_1C5C61000, v49, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] reshuffleWithTargetContentItemID:completion: | selected new start item identifiers [] startItemIdentifiers=%{public}@", buf, 0x20u);

              v48 = v90;
            }

            v52 = v82;
          }

          else
          {
            v48 = 0;
            v52 = 0;
          }
        }

        else
        {
          v48 = 0;
          v52 = 0;
          v44 = v21;
          nextObject = v84;
        }

        v83 = v52;
        v92 = v48;
        v68 = [v44 cloneWithNewStartItemIdentifiers:? identifierRegistry:?];
        v69 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
        {
          [host engineID];
          v70 = v85 = v11;
          [(_MPCQueueControllerBehaviorMusic *)self sessionID];
          v72 = v71 = shuffleType;
          *buf = 138544130;
          v103 = v70;
          v104 = 2114;
          v105 = v72;
          v106 = 2048;
          v107 = v93;
          v108 = 2048;
          v109 = v68;
          _os_log_impl(&dword_1C5C61000, v69, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] reshuffleWithTargetContentItemID:completion: | updating data source [] oldDataSource=%p newDataSource=%p", buf, 0x2Au);

          shuffleType = v71;
          v11 = v85;
        }

        v86 = v17;

        [(NSMutableDictionary *)self->_dataSources setObject:v68 forKeyedSubscript:v87];
        v73 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
        {
          [host engineID];
          v75 = v74 = v11;
          [(_MPCQueueControllerBehaviorMusic *)self sessionID];
          v77 = v76 = shuffleType;
          *buf = 138543618;
          v103 = v75;
          v104 = 2114;
          v105 = v77;
          _os_log_impl(&dword_1C5C61000, v73, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] reshuffleWithTargetContentItemID:completion: | replacing data source in identifier list []", buf, 0x16u);

          shuffleType = v76;
          v11 = v74;
        }

        identifierList = self->_identifierList;
        v95[0] = MEMORY[0x1E69E9820];
        v95[1] = 3221225472;
        v95[2] = __80___MPCQueueControllerBehaviorMusic_reshuffleWithTargetContentItemID_completion___block_invoke_356;
        v95[3] = &unk_1E82329E8;
        v96 = v11;
        v97 = host;
        selfCopy = self;
        v100 = v81;
        v99 = nextObject;
        v101 = shuffleType != 0;
        v79 = identifierList;
        sectionID = v87;
        [(MPShuffleableSectionedIdentifierList *)v79 replaceDataSource:v68 forSection:v87 completion:v95];

        completionCopy = v81;
        v17 = v86;
        v67 = v92;
      }

      else
      {
        if (v23)
        {
          [host engineID];
          v65 = v64 = sectionID;
          sessionID4 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
          *buf = 138543874;
          v103 = v65;
          v104 = 2114;
          v105 = sessionID4;
          v106 = 2114;
          v107 = v64;
          _os_log_impl(&dword_1C5C61000, v22, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] reshuffleWithTargetContentItemID:completion: | rolling back edit [failed to find datasource] sectionID=%{public}@", buf, 0x20u);

          sectionID = v64;
        }

        [v11 rollback];
        v67 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicBehaviorError" code:13 debugDescription:{@"no datasource for section: %@", sectionID}];
        (*(completionCopy + 2))(completionCopy, v67);
        nextObject = v84;
      }
    }

    else
    {
      [v11 setSuggestedContentItemIDForStart:nextObject];
      v56 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        engineID7 = [host engineID];
        [(_MPCQueueControllerBehaviorMusic *)self sessionID];
        v91 = v19;
        v58 = shuffleType;
        v59 = v17;
        v60 = v11;
        v62 = v61 = completionCopy;
        *buf = 138543874;
        v103 = engineID7;
        v104 = 2114;
        v105 = v62;
        v106 = 2114;
        v107 = nextObject;
        _os_log_impl(&dword_1C5C61000, v56, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] reshuffleWithTargetContentItemID:completion: | committing edit [update after reshuffle] sugggestedStartingContentItemID=%{public}@", buf, 0x20u);

        completionCopy = v61;
        v11 = v60;
        v17 = v59;
        shuffleType = v58;
        v19 = v91;
      }

      [v11 commit];
      if (!shuffleType)
      {
        [(_MPCQueueControllerBehaviorMusic *)self _emitEventsForPlaybackBehaviorChangeIfNeeded];
        WeakRetained = objc_loadWeakRetained(&self->_musicBehaviorDelegate);
        [WeakRetained behavior:self didChangeShuffleType:1];
      }

      (*(completionCopy + 2))(completionCopy, 0);
    }
  }

  else
  {
    v53 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      engineID8 = [host engineID];
      sessionID5 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
      *buf = 138543618;
      v103 = engineID8;
      v104 = 2114;
      v105 = sessionID5;
      _os_log_impl(&dword_1C5C61000, v53, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] reshuffleWithTargetContentItemID:completion: | rolling back edit [failed to find new start item] ", buf, 0x16u);
    }

    [v11 rollback];
    v19 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicBehaviorError" code:11 debugDescription:@"enumerator produced no items after enabling shuffle"];
    (*(completionCopy + 2))(completionCopy, v19);
  }
}

- (void)setShuffleType:(int64_t)type targetContentItemID:(id)d completion:(id)completion
{
  completionCopy = completion;
  [(_MPCQueueControllerBehaviorMusic *)self _setShuffleType:type startingContentItemID:d randomSource:0];
  completionCopy[2](completionCopy, 0);
}

- (BOOL)canUserChangeShuffleModeWithReason:(id *)reason
{
  v21 = *MEMORY[0x1E69E9840];
  if (self->_activeItemFlags)
  {
    v12 = 0;
    if (reason)
    {
      *reason = @"in autoplay";
    }
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    allSectionIdentifiers = [(MPShuffleableSectionedIdentifierList *)self->_identifierList allSectionIdentifiers];
    v6 = [allSectionIdentifiers countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(allSectionIdentifiers);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = [(NSMutableDictionary *)self->_dataSources objectForKeyedSubscript:v10];
          if ((objc_opt_respondsToSelector() & 1) != 0 && ([v11 section:v10 supportsShuffleType:1] & 1) == 0 && (objc_msgSend(v11, "section:supportsShuffleType:", v10, 2) & 1) == 0)
          {
            if (reason)
            {
              v13 = MEMORY[0x1E696AEC0];
              playbackContext = [v11 playbackContext];
              *reason = [v13 stringWithFormat:@"datasource %@ does not support shuffle", objc_opt_class()];
            }

            v12 = 0;
            goto LABEL_18;
          }
        }

        v7 = [allSectionIdentifiers countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v12 = 1;
LABEL_18:
  }

  return v12;
}

- (void)setRepeatType:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  if (type == 3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:1258 description:@"User default should be resolved before setting on queue controller."];
  }

  [(_MPCQueueControllerBehaviorMusic *)self _setRepeatType:type reason:@"ExternalSetRepeatType"];
  completionCopy[2](completionCopy, 0);
}

- (BOOL)canUserChangeRepeatTypeWithReason:(id *)reason
{
  v22 = *MEMORY[0x1E69E9840];
  if (self->_activeItemFlags)
  {
    v12 = 0;
    if (reason)
    {
      *reason = @"in autoplay";
    }
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    allSectionIdentifiers = [(MPShuffleableSectionedIdentifierList *)self->_identifierList allSectionIdentifiers];
    v6 = [allSectionIdentifiers countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(allSectionIdentifiers);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v11 = [(NSMutableDictionary *)self->_dataSources objectForKeyedSubscript:v10];
          if ([v11 shouldRequestAdditionalItemsAtTail])
          {
            if (reason)
            {
              v13 = @"datasource %@ does not support repeat (infinite tracklist)";
              goto LABEL_18;
            }

LABEL_19:

            v12 = 0;
            goto LABEL_20;
          }

          if ((objc_opt_respondsToSelector() & 1) != 0 && ([v11 section:v10 supportsShuffleType:1] & 1) == 0 && (objc_msgSend(v11, "section:supportsShuffleType:", v10, 2) & 1) == 0)
          {
            if (reason)
            {
              v13 = @"datasource %@ does not support repeat";
LABEL_18:
              v14 = MEMORY[0x1E696AEC0];
              playbackContext = [v11 playbackContext];
              *reason = [v14 stringWithFormat:v13, objc_opt_class()];
            }

            goto LABEL_19;
          }
        }

        v7 = [allSectionIdentifiers countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v12 = 1;
LABEL_20:
  }

  return v12;
}

- (void)didReachEndOfQueueWithReason:(id)reason
{
  reasonCopy = reason;
  if (self->_autoPlayState == 8)
  {
    [(_MPCQueueControllerBehaviorMusic *)self _transitionToAutoPlayState:3];
  }

  WeakRetained = objc_loadWeakRetained(&self->_host);
  v5 = [WeakRetained beginEditWithReason:reasonCopy];

  v6 = [(_MPCQueueControllerBehaviorMusic *)self contentItemIDEnumeratorStartingAfterContentItemID:0 mode:2 options:0];
  nextObject = [v6 nextObject];
  if (nextObject)
  {
    [v5 setSuggestedContentItemIDForStart:nextObject];
  }

  [v5 commit];
}

- (BOOL)isOneShotExportableSessionForContentItemID:(id)d reason:(id *)reason
{
  dCopy = d;
  if ([(MPShuffleableSectionedIdentifierList *)self->_identifierList itemCount])
  {
    v7 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:dCopy];
    if ([v7 isPlaceholder])
    {
      v8 = 0;
      if (reason)
      {
        *reason = @"placeholder item";
      }

      goto LABEL_24;
    }

    sectionID = [v7 sectionID];
    itemID = [v7 itemID];
    v11 = [(_MPCQueueControllerBehaviorMusic *)self _identifierListForSection:sectionID];
    if ([v11 hasItem:itemID inSection:sectionID])
    {
      if (![v11 isDeletedItem:itemID inSection:sectionID])
      {
        v13 = [(NSMutableDictionary *)self->_dataSources objectForKeyedSubscript:sectionID];
        dataSource = [v13 dataSource];
        v15 = [dataSource isExportableMediaTypeForItem:itemID inSection:sectionID];

        if (v15)
        {
          v26 = 0;
          v27 = &v26;
          v28 = 0x2020000000;
          v29 = 1;
          v20 = 0;
          v21 = &v20;
          v22 = 0x3032000000;
          v23 = __Block_byref_object_copy__6927;
          v24 = __Block_byref_object_dispose__6928;
          v25 = 0;
          dataSources = self->_dataSources;
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __86___MPCQueueControllerBehaviorMusic_isOneShotExportableSessionForContentItemID_reason___block_invoke;
          v19[3] = &unk_1E82329C0;
          v19[4] = &v20;
          v19[5] = &v26;
          [(NSMutableDictionary *)dataSources enumerateKeysAndObjectsUsingBlock:v19];
          if (reason)
          {
            v17 = v21[5];
            if (v17)
            {
              *reason = v17;
            }
          }

          v8 = *(v27 + 24);
          _Block_object_dispose(&v20, 8);

          _Block_object_dispose(&v26, 8);
        }

        else
        {
          v8 = 0;
          if (reason)
          {
            *reason = @"item is non-exportable media type";
          }
        }

        goto LABEL_23;
      }

      if (reason)
      {
        v8 = 0;
        v12 = @"item no longer exists";
LABEL_13:
        *reason = v12;
LABEL_23:

LABEL_24:
        goto LABEL_25;
      }
    }

    else if (reason)
    {
      v8 = 0;
      v12 = @"item does not exist";
      goto LABEL_13;
    }

    v8 = 0;
    goto LABEL_23;
  }

  v8 = 0;
  if (reason)
  {
    *reason = @"no items";
  }

LABEL_25:

  return v8 & 1;
}

- (BOOL)isExportableSessionType:(id)type forContentItemID:(id)d extension:(id)extension reason:(id *)reason
{
  typeCopy = type;
  dCopy = d;
  extensionCopy = extension;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:1084 description:{@"unexpected extension: %@", extensionCopy}];
  }

  v14 = [extensionCopy infoForSessionType:typeCopy];
  v15 = v14;
  if (!v14)
  {
    if (reason)
    {
      v17 = 0;
      v18 = @"unknown sessionType [Music]";
LABEL_15:
      *reason = v18;
      goto LABEL_41;
    }

LABEL_16:
    v17 = 0;
    goto LABEL_41;
  }

  if ([v14 exportable])
  {
    if ([(MPShuffleableSectionedIdentifierList *)self->_identifierList itemCount])
    {
      v16 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:dCopy];
      if ([v16 isPlaceholder])
      {
        v17 = 0;
        if (reason)
        {
          *reason = @"placeholder item";
        }

        goto LABEL_40;
      }

      sectionID = [v16 sectionID];
      itemID = [v16 itemID];
      v21 = [(_MPCQueueControllerBehaviorMusic *)self _identifierListForSection:sectionID];
      v45 = v21;
      if (([v21 hasItem:itemID inSection:sectionID] & 1) == 0)
      {
        if (reason)
        {
          v17 = 0;
          v22 = @"item does not exist";
          goto LABEL_23;
        }

LABEL_24:
        v17 = 0;
        goto LABEL_39;
      }

      if ([v21 isDeletedItem:itemID inSection:sectionID])
      {
        if (reason)
        {
          v17 = 0;
          v22 = @"item no longer exists";
LABEL_23:
          *reason = v22;
LABEL_39:

LABEL_40:
          goto LABEL_41;
        }

        goto LABEL_24;
      }

      [(NSMutableDictionary *)self->_dataSources objectForKeyedSubscript:sectionID];
      v24 = v23 = sectionID;
      dataSource = [v24 dataSource];
      v26 = itemID;
      v27 = dataSource;
      v43 = v26;
      v44 = v23;
      LOBYTE(v23) = [dataSource isExportableMediaTypeForItem:? inSection:?];

      if ((v23 & 1) == 0)
      {
        itemID = v43;
        v34 = v44;
        v17 = 0;
        if (reason)
        {
          *reason = @"item is non-exportable media type";
        }

        goto LABEL_38;
      }

      v41 = v24;
      dataSource2 = [v24 dataSource];
      itemID = v43;
      v29 = [dataSource2 accountIDForItem:v43 inSection:v44];

      v40 = v29;
      v30 = MPCHashedDSIDFromDSID(v29);
      account = [v15 account];
      hashedDSID = [account hashedDSID];
      v39 = v30;
      if (hashedDSID == v30)
      {
      }

      else
      {
        v32 = hashedDSID;
        v33 = [hashedDSID isEqual:v30];

        if ((v33 & 1) == 0)
        {
          v34 = v44;
          v17 = 0;
          if (reason)
          {
            *reason = @"sessionType account does not match item account";
          }

LABEL_37:

          v24 = v41;
LABEL_38:

          sectionID = v34;
          goto LABEL_39;
        }
      }

      v53 = 0;
      v54 = &v53;
      v55 = 0x2020000000;
      v56 = 1;
      v47 = 0;
      v48 = &v47;
      v49 = 0x3032000000;
      v50 = __Block_byref_object_copy__6927;
      v51 = __Block_byref_object_dispose__6928;
      v52 = 0;
      dataSources = self->_dataSources;
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __94___MPCQueueControllerBehaviorMusic_isExportableSessionType_forContentItemID_extension_reason___block_invoke;
      v46[3] = &unk_1E82329C0;
      v46[4] = &v47;
      v46[5] = &v53;
      [(NSMutableDictionary *)dataSources enumerateKeysAndObjectsUsingBlock:v46];
      if (reason)
      {
        v36 = v48[5];
        if (v36)
        {
          *reason = v36;
        }
      }

      v34 = v44;
      v17 = *(v54 + 24);
      _Block_object_dispose(&v47, 8);

      _Block_object_dispose(&v53, 8);
      goto LABEL_37;
    }

    if (reason)
    {
      v17 = 0;
      v18 = @"no items";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (!reason)
  {
    goto LABEL_16;
  }

  [v15 exportableReason];
  *reason = v17 = 0;
LABEL_41:

  return v17 & 1;
}

- (id)finalizeStateRestorationWithTargetContentItemID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  host = [(_MPCQueueControllerBehaviorMusic *)self host];
  v9 = dispatch_group_create();
  array = [MEMORY[0x1E695DF70] array];
  if (dCopy)
  {
    v11 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:dCopy];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(NSMutableDictionary *)self->_dataSources copy];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __95___MPCQueueControllerBehaviorMusic_finalizeStateRestorationWithTargetContentItemID_completion___block_invoke;
  v23[3] = &unk_1E8232970;
  v24 = host;
  selfCopy = self;
  v26 = v11;
  v13 = array;
  v27 = v13;
  v28 = v9;
  v14 = v9;
  v15 = v11;
  v16 = host;
  [v12 enumerateKeysAndObjectsUsingBlock:v23];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __95___MPCQueueControllerBehaviorMusic_finalizeStateRestorationWithTargetContentItemID_completion___block_invoke_289;
  v20[3] = &unk_1E8239198;
  v20[4] = self;
  v21 = v13;
  v22 = completionCopy;
  v17 = completionCopy;
  v18 = v13;
  dispatch_group_notify(v14, MEMORY[0x1E69E96A0], v20);

  return 0;
}

- (BOOL)containsRestorableContent
{
  v3 = [(NSMutableDictionary *)self->_dataSources count];
  if (v3)
  {
    LOBYTE(v3) = [(MPShuffleableSectionedIdentifierList *)self->_identifierList itemCount]!= 0;
  }

  return v3;
}

- (void)loadAdditionalUpcomingItems:(int64_t)items completion:(id)completion
{
  v41 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  host = [(_MPCQueueControllerBehaviorMusic *)self host];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v8 = dispatch_group_create();
  dataSources = self->_dataSources;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __75___MPCQueueControllerBehaviorMusic_loadAdditionalUpcomingItems_completion___block_invoke;
  v26[3] = &unk_1E82328F8;
  v26[4] = self;
  v10 = v8;
  v27 = v10;
  itemsCopy = items;
  v11 = host;
  v28 = v11;
  v29 = &v31;
  [(NSMutableDictionary *)dataSources enumerateKeysAndObjectsUsingBlock:v26];
  if (*(v32 + 24) == 1)
  {
    v12 = v25;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v13 = __75___MPCQueueControllerBehaviorMusic_loadAdditionalUpcomingItems_completion___block_invoke_215;
LABEL_13:
    v12[2] = v13;
    v12[3] = &unk_1E8239528;
    v12[4] = completionCopy;
    dispatch_group_notify(v10, MEMORY[0x1E69E96A0], v12);

    goto LABEL_14;
  }

  v14 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    engineID = [v11 engineID];
    sessionID = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
    autoPlayState = self->_autoPlayState;
    if (autoPlayState >= 0xA)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnexpectedState:%ld", self->_autoPlayState];
    }

    else
    {
      v18 = off_1E8232D58[autoPlayState];
    }

    *buf = 138543874;
    v36 = engineID;
    v37 = 2114;
    v38 = sessionID;
    v39 = 2114;
    v40 = v18;
    _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEFAULT, "[ECATS:%{public}@:%{public}@] loadAdditionalUpcomingItems:completion: | evaluating auto play [no other datasources triggered load] autoPlayState=%{public}@", buf, 0x20u);
  }

  if (self->_autoPlayState != 9)
  {
    v12 = v24;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v13 = __75___MPCQueueControllerBehaviorMusic_loadAdditionalUpcomingItems_completion___block_invoke_217;
    goto LABEL_13;
  }

  v19 = _Block_copy(completionCopy);
  loadAdditionalItemsCompletion = self->_loadAdditionalItemsCompletion;
  self->_loadAdditionalItemsCompletion = v19;

  self->_autoPlayIsTriggered = 1;
  v21 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    engineID2 = [v11 engineID];
    sessionID2 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
    *buf = 138543618;
    v36 = engineID2;
    v37 = 2114;
    v38 = sessionID2;
    _os_log_impl(&dword_1C5C61000, v21, OS_LOG_TYPE_DEFAULT, "[AOT:%{public}@:%{public}@] loadAdditionalUpcomingItems:completion: | evaluating autoPlayIsTriggered [no other datasources triggered load] triggered=YES", buf, 0x16u);
  }

  [(_MPCQueueControllerBehaviorMusic *)self _transitionToAutoPlayState:9];
LABEL_14:

  _Block_object_dispose(&v31, 8);
}

- (int64_t)preferredUpcomingItemCount
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  dataSources = self->_dataSources;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62___MPCQueueControllerBehaviorMusic_preferredUpcomingItemCount__block_invoke;
  v12[3] = &unk_1E82328A8;
  v12[4] = self;
  v12[5] = &v13;
  [(NSMutableDictionary *)dataSources enumerateKeysAndObjectsUsingBlock:v12];
  if (self->_autoPlayState == 9)
  {
    _accountForAutoPlay = [(_MPCQueueControllerBehaviorMusic *)self _accountForAutoPlay];
    v5 = [_accountForAutoPlay bag];
    radioConfiguration = [v5 radioConfiguration];

    v7 = v14[3];
    continueListeningMaxUpcomingTracksSizeToMaintain = [radioConfiguration continueListeningMaxUpcomingTracksSizeToMaintain];
    if (v7 <= continueListeningMaxUpcomingTracksSizeToMaintain)
    {
      v9 = continueListeningMaxUpcomingTracksSizeToMaintain;
    }

    else
    {
      v9 = v7;
    }

    v14[3] = v9;
  }

  v10 = v14[3];
  _Block_object_dispose(&v13, 8);
  return v10;
}

- (id)_itemForContentItemID:(id)d allowReuse:(BOOL)reuse
{
  v35 = *MEMORY[0x1E69E9840];
  dCopy = d;
  host = [(_MPCQueueControllerBehaviorMusic *)self host];
  v7 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:dCopy];
  sectionID = [v7 sectionID];
  itemID = [v7 itemID];
  v10 = [(_MPCQueueControllerBehaviorMusic *)self _identifierListForSection:sectionID];
  if (v10)
  {
  }

  else if (([itemID isEqualToString:@"_PLACEHOLDER_AUTOPLAY_"] & 1) == 0)
  {
    v12 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      engineID = [host engineID];
      sessionID = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
      *buf = 138544130;
      v28 = engineID;
      v29 = 2114;
      v30 = sessionID;
      v31 = 2114;
      v32 = dCopy;
      v33 = 2114;
      v34 = sectionID;
      _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "[ITFIT:%{public}@:%{public}@] _itemForContentItemID | returning nil [unknown section ID] contentItemID=%{public}@ sectionID=%{public}@", buf, 0x2Au);
    }

    v18 = 0;
    goto LABEL_16;
  }

  v11 = [(_MPCQueueControllerBehaviorMusic *)self _itemForComponents:v7];
  v12 = v11;
  if (!v11)
  {
LABEL_8:
    v12 = v12;
    v18 = v12;
    goto LABEL_16;
  }

  contentItemID = [v11 contentItemID];
  v14 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:contentItemID];

  sectionID2 = [v14 sectionID];
  v26 = itemID;
  if ([sectionID2 isEqualToString:sectionID])
  {
    itemID2 = [v14 itemID];
    v17 = [itemID2 isEqualToString:itemID];

    if (v17)
    {

      itemID = v26;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v19 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
  {
    engineID2 = [host engineID];
    sessionID2 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
    contentItemID2 = [v12 contentItemID];
    *buf = 138544130;
    v28 = engineID2;
    v29 = 2114;
    v30 = sessionID2;
    v31 = 2114;
    v32 = contentItemID2;
    v33 = 2114;
    v34 = dCopy;
    _os_log_impl(&dword_1C5C61000, v19, OS_LOG_TYPE_FAULT, "[ITFIT:%{public}@:%{public}@] _itemForContentItemID | faulting [content item ID mismatch] item.contentItemID=%{public}@ - contentItemID=%{public}@", buf, 0x2Au);
  }

  v18 = 0;
  itemID = v26;
LABEL_16:

  return v18;
}

- (void)currentItemDidChangeFromContentItemID:(id)d toContentItemID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  objc_storeStrong(&self->_playNowInsertionContentItemID, iD);
  if (iDCopy)
  {
    v7 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:iDCopy];
    dataSources = self->_dataSources;
    sectionID = [v7 sectionID];
    v10 = [(NSMutableDictionary *)dataSources objectForKeyedSubscript:sectionID];

    if (dCopy)
    {
      v11 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:dCopy];
      sectionID2 = [v11 sectionID];
      sectionID3 = [v7 sectionID];
      v14 = [sectionID2 isEqualToString:sectionID3];

      if ((v14 & 1) == 0)
      {
        v15 = self->_dataSources;
        sectionID4 = [v11 sectionID];
        v17 = [(NSMutableDictionary *)v15 objectForKeyedSubscript:sectionID4];

        [v17 itemDidBeginPlayback:0];
      }
    }

    if (![v7 type])
    {
      v18 = [(_MPCQueueControllerBehaviorMusic *)self _itemForContentItemID:iDCopy allowReuse:1];
      [v10 itemDidBeginPlayback:v18];
    }
  }
}

- (id)_stateDictionaryIncludingQueue:(BOOL)queue
{
  queueCopy = queue;
  v31 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p>", objc_opt_class(), self, @"__obj"];
  v6 = v5;
  if (self->_state == 1)
  {
    v7 = @"Ready";
  }

  else
  {
    v7 = @"Loading";
  }

  v29[0] = v5;
  v29[1] = v7;
  v28[1] = @"_state";
  v28[2] = @"_allowsQueueModifications";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_MPCQueueControllerBehaviorMusic allowsQueueModifications](self, "allowsQueueModifications")}];
  v29[2] = v8;
  v28[3] = @"_repeatType";
  v9 = MPRepeatTypeDescription();
  v29[3] = v9;
  v28[4] = @"_shuffleType";
  v10 = MPShuffleTypeDescription();
  v29[4] = v10;
  v28[5] = @"_hasUserMutations";
  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasUserMutations];
  v29[5] = v11;
  v28[6] = @"_autoPlayState";
  autoPlayState = self->_autoPlayState;
  if (autoPlayState >= 0xA)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnexpectedState:%ld", self->_autoPlayState];
  }

  else
  {
    v13 = off_1E8232D58[autoPlayState];
  }

  autoPlayEndPosition = self->_autoPlayEndPosition;
  if (!autoPlayEndPosition)
  {
    autoPlayEndPosition = @"@";
  }

  v29[6] = v13;
  v29[7] = autoPlayEndPosition;
  v28[7] = @"_autoPlayEndPosition";
  v28[8] = @"__wasDecoded";
  v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_wasDecoded];
  v29[8] = v15;
  v28[9] = @"_latestUpNextSectionID";
  v28[10] = @"_playNowInsertionContentItemID";
  v30 = vbslq_s8(vceqzq_s64(*&self->_latestUpNextSectionID), vdupq_n_s64(@"@"), *&self->_latestUpNextSectionID);
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:11];

  if (queueCopy)
  {
    v17 = [v16 mutableCopy];
    v18 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MPShuffleableSectionedIdentifierList itemCount](self->_identifierList, "itemCount")}];
    [v17 setObject:v18 forKeyedSubscript:@"~_identifierListItemCount"];

    v19 = [(MPShuffleableSectionedIdentifierList *)self->_identifierList debugDescription];
    v20 = [v19 componentsSeparatedByString:@"\n"];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = @"@";
    }

    [v17 setObject:v22 forKeyedSubscript:@"~identifierList"];

    v23 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MPSectionedIdentifierList itemCount](self->_autoPlayIdentifierList, "itemCount")}];
    [v17 setObject:v23 forKeyedSubscript:@"~_autoPlayIdentifierListItemCount"];

    v24 = [(MPSectionedIdentifierList *)self->_autoPlayIdentifierList debugDescription];
    v25 = [v24 componentsSeparatedByString:@"\n"];
    [v17 setObject:v25 forKeyedSubscript:@"~autoPlayIdentifierList"];

    v26 = [v17 copy];
    v16 = v26;
  }

  return v16;
}

- (id)contentItemIDEnumeratorStartingAfterContentItemID:(id)d mode:(int64_t)mode options:(unint64_t)options
{
  optionsCopy = options;
  dCopy = d;
  v10 = dCopy;
  if (!self->_identifierList)
  {
    objectEnumerator = [MEMORY[0x1E695E0F0] objectEnumerator];
    goto LABEL_35;
  }

  if (mode == 3)
  {
    if (self->_repeatType == 1)
    {
      v11 = 5;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 1;
  }

  v13 = optionsCopy & 1;
  if (![dCopy length])
  {
    v16 = 0;
    v14 = 0;
    goto LABEL_32;
  }

  v14 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:v10];
  type = [v14 type];
  if (v13 || mode != 1 || !type)
  {
    sectionID = [v14 sectionID];
    itemID = [v14 itemID];
    type2 = [v14 type];
    v16 = 0;
    if (type2 > 1)
    {
      if (type2 == 2)
      {
        v16 = [MEMORY[0x1E6970948] positionForHeadOfSection:sectionID];
        v11 = 5;
      }

      else if (type2 == 3)
      {
        v31 = sectionID;
        v32 = itemID;
        deferredNextContentItemID = [v14 deferredNextContentItemID];

        if (!deferredNextContentItemID)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          objc_msgSend(currentHandler, "handleFailureInMethod:object:file:lineNumber:description:", a2, self, @"_MPCQueueControllerBehaviorMusic.m", 752, @"Invalid identifier components (EndOfQueuePlaceHolder must have deferredNextContentItemID: %@"), v10;
        }

        deferredNextContentItemID2 = [v14 deferredNextContentItemID];
        v24 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:deferredNextContentItemID2];

        v25 = MEMORY[0x1E6970948];
        itemID2 = [v24 itemID];
        sectionID2 = [v24 sectionID];
        v16 = [v25 positionForItem:itemID2 inSection:sectionID2];

        sectionID = v31;
        itemID = v32;
      }
    }

    else if (type2)
    {
      if (type2 == 1)
      {
        v16 = [MEMORY[0x1E6970948] positionForItem:itemID inSection:sectionID];
        v20 = [(NSMutableDictionary *)self->_dataSources objectForKeyedSubscript:sectionID];
        v21 = v20;
        if ((mode & 0xFFFFFFFFFFFFFFFELL) == 2 && v20)
        {
          if ([v20 shouldUsePlaceholderForItem:itemID inSection:sectionID])
          {
            objectEnumerator = [MEMORY[0x1E695E0F0] objectEnumerator];

LABEL_33:
            goto LABEL_34;
          }

          v11 = 5;
        }
      }
    }

    else
    {
      v16 = [MEMORY[0x1E6970948] positionForItem:itemID inSection:sectionID];
    }

LABEL_32:
    v28 = [_MPCQueueControllerEnumerator enumeratorWithMusicBehavior:self mode:mode options:v11 | (8 * v13) startPosition:v16 endPosition:0];
    objectEnumerator = [[_MPCQueueControllerBehaviorMusicEnumerator alloc] initWithQueueEnumerator:v28 startingComponents:v14];

    goto LABEL_33;
  }

  objectEnumerator = [MEMORY[0x1E695E0F0] objectEnumerator];
LABEL_34:

LABEL_35:

  return objectEnumerator;
}

- (BOOL)canNextItemFromContentItemID:(id)d reason:(id *)reason
{
  if (d)
  {
    v6 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:?];
    if ([v6 type] == 2)
    {
      if (reason)
      {
        v7 = 0;
        v8 = @"section placeholder";
LABEL_10:
        *reason = v8;
LABEL_19:

        return v7;
      }
    }

    else
    {
      if ([v6 type] != 3)
      {
        if (v6)
        {
          dataSources = self->_dataSources;
          sectionID = [v6 sectionID];
          v11 = [(NSMutableDictionary *)dataSources objectForKeyedSubscript:sectionID];

          if (v11)
          {
            itemID = [v6 itemID];
            v7 = [v11 canSkipItem:itemID reason:reason];
          }

          else
          {
            v7 = 0;
            if (reason)
            {
              *reason = @"sectionID not in dataSource";
            }
          }
        }

        else
        {
          v7 = 1;
        }

        goto LABEL_19;
      }

      if (reason)
      {
        v7 = 0;
        v8 = @"tail placeholder";
        goto LABEL_10;
      }
    }

    v7 = 0;
    goto LABEL_19;
  }

  v7 = 0;
  if (reason)
  {
    *reason = @"nil contentItemID";
  }

  return v7;
}

- (BOOL)canPreviousItemFromContentItemID:(id)d reason:(id *)reason
{
  if (d)
  {
    v6 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:?];
    if ([v6 type] == 2)
    {
      if (reason)
      {
        v7 = @"section placeholder";
LABEL_10:
        *reason = v7;
      }
    }

    else if ([v6 type] == 3)
    {
      if (reason)
      {
        v7 = @"tail placeholder";
        goto LABEL_10;
      }
    }

    else if (v6)
    {
      dataSources = self->_dataSources;
      sectionID = [v6 sectionID];
      v12 = [(NSMutableDictionary *)dataSources objectForKeyedSubscript:sectionID];

      if (v12)
      {
        itemID = [v6 itemID];
        v8 = [v12 canSkipItem:itemID reason:reason];
      }

      else
      {
        v8 = 0;
        if (reason)
        {
          *reason = @"sectionID not in dataSource";
        }
      }

      goto LABEL_12;
    }

    v8 = 1;
LABEL_12:

    return v8;
  }

  v8 = 0;
  if (reason)
  {
    *reason = @"nil contentItemID";
  }

  return v8;
}

- (BOOL)canJumpToContentItemID:(id)d reason:(id *)reason
{
  dCopy = d;
  v7 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:dCopy];
  itemID = [v7 itemID];
  sectionID = [v7 sectionID];
  v10 = [(_MPCQueueControllerBehaviorMusic *)self _identifierListForSection:sectionID];
  if ([v10 hasItem:itemID inSection:sectionID] && (objc_msgSend(v10, "isDeletedItem:inSection:", itemID, sectionID) & 1) == 0)
  {
    v12 = [(NSMutableDictionary *)self->_dataSources objectForKeyedSubscript:sectionID];
    v11 = [v12 canJumpToItem:itemID reason:reason];
  }

  else if (reason)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"contentItemID (%@) not found", dCopy];
    *reason = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)itemExistsForContentItemID:(id)d
{
  v51 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v6 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:dCopy];
  sectionID = [v6 sectionID];
  v8 = [(_MPCQueueControllerBehaviorMusic *)self _identifierListForSection:sectionID];

  type = [v6 type];
  if (!v8)
  {
    if (type != 1)
    {
      goto LABEL_21;
    }

    itemID = [v6 itemID];
    if (![itemID isEqualToString:@"_PLACEHOLDER_AUTOPLAY_"])
    {
      LOBYTE(v20) = 0;
LABEL_41:

      goto LABEL_42;
    }

    v22 = self->_autoPlayState == 9;
    goto LABEL_26;
  }

  if (type > 1)
  {
    if (type != 2)
    {
      if (type != 3)
      {
        goto LABEL_21;
      }

      deferredNextContentItemID = [v6 deferredNextContentItemID];
      itemID4 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:deferredNextContentItemID];

      sectionID2 = [itemID4 sectionID];
      sectionID8 = [(_MPCQueueControllerBehaviorMusic *)self _identifierListForSection:sectionID2];

      itemID2 = [itemID4 itemID];
      sectionID3 = [itemID4 sectionID];
      v27 = [sectionID8 hasItem:itemID2 inSection:sectionID3];

      if (!v27)
      {
LABEL_20:

        goto LABEL_21;
      }

      dataSources = self->_dataSources;
      sectionID4 = [v6 sectionID];
      v30 = [(NSMutableDictionary *)dataSources objectForKeyedSubscript:sectionID4];

      if (!v30)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        sectionID5 = [v6 sectionID];
        [currentHandler handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:615 description:{@"DataSource does not exists for section: %@ [ItemPlaceholder] contentItemID: %@", sectionID5, dCopy}];
      }

      state = [v30 state];

      if (state == 2)
      {
        LOBYTE(v20) = 1;
        goto LABEL_42;
      }

LABEL_21:
      LOBYTE(v20) = 0;
      goto LABEL_42;
    }

    v35 = self->_dataSources;
    sectionID6 = [v6 sectionID];
    itemID = [(NSMutableDictionary *)v35 objectForKeyedSubscript:sectionID6];

    if (!itemID)
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      allValues = [(NSMutableDictionary *)self->_dataSources allValues];
      v37 = [allValues countByEnumeratingWithState:&v46 objects:v50 count:16];
      if (!v37)
      {
LABEL_38:
        LOBYTE(v20) = 1;
        goto LABEL_40;
      }

      v38 = v37;
      v39 = *v47;
LABEL_32:
      v40 = 0;
      while (1)
      {
        if (*v47 != v39)
        {
          objc_enumerationMutation(allValues);
        }

        if ([*(*(&v46 + 1) + 8 * v40) state] != 1)
        {
          break;
        }

        if (v38 == ++v40)
        {
          v38 = [allValues countByEnumeratingWithState:&v46 objects:v50 count:16];
          if (v38)
          {
            goto LABEL_32;
          }

          goto LABEL_38;
        }
      }

LABEL_39:
      LOBYTE(v20) = 0;
      goto LABEL_40;
    }

    v22 = [itemID state] == 1;
LABEL_26:
    LOBYTE(v20) = v22;
    goto LABEL_41;
  }

  if (!type)
  {
    itemID = [v6 itemID];
    allValues = [v6 sectionID];
    if ([v8 hasItem:itemID inSection:allValues])
    {
      itemID3 = [v6 itemID];
      sectionID7 = [v6 sectionID];
      v20 = [v8 isDeletedItem:itemID3 inSection:sectionID7] ^ 1;

LABEL_40:
      goto LABEL_41;
    }

    goto LABEL_39;
  }

  if (type != 1)
  {
    goto LABEL_21;
  }

  itemID4 = [v6 itemID];
  sectionID8 = [v6 sectionID];
  if (([v8 hasItem:itemID4 inSection:sectionID8] & 1) == 0)
  {
    goto LABEL_20;
  }

  itemID5 = [v6 itemID];
  sectionID9 = [v6 sectionID];
  v14 = [v8 isDeletedItem:itemID5 inSection:sectionID9];

  if (v14)
  {
    goto LABEL_21;
  }

  v15 = self->_dataSources;
  sectionID10 = [v6 sectionID];
  v17 = [(NSMutableDictionary *)v15 objectForKeyedSubscript:sectionID10];

  if (!v17)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    sectionID11 = [v6 sectionID];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:584 description:{@"DataSource does not exists for section: %@ [ItemPlaceholder] contentItemID: %@", sectionID11, dCopy}];
  }

  itemID6 = [v6 itemID];
  sectionID12 = [v6 sectionID];
  LOBYTE(v20) = [v17 shouldUsePlaceholderForItem:itemID6 inSection:sectionID12];

LABEL_42:
  return v20;
}

- (void)activeItemFlagsDidChange:(unsigned __int16)change
{
  if (change)
  {
    [(_MPCQueueControllerBehaviorMusic *)self _setRepeatType:0 reason:@"ActiveItemIsAutoPlay"];
  }

  self->_activeItemFlags = change;
}

- (id)performLoadCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  v9 = objc_opt_class();
  playbackQueue = [commandCopy playbackQueue];
  v25 = 0;
  v11 = [v9 canLoadQueue:playbackQueue reason:&v25];
  v12 = v25;

  if ((v11 & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:497 description:{@"unsupported playback queue: %@", v12}];
  }

  playbackQueue2 = [commandCopy playbackQueue];
  _playbackContextOptions = [(_MPCQueueControllerBehaviorMusic *)self _playbackContextOptions];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __66___MPCQueueControllerBehaviorMusic_performLoadCommand_completion___block_invoke;
  v21[3] = &unk_1E8237DD0;
  selfCopy = self;
  v24 = completionCopy;
  v22 = commandCopy;
  v16 = commandCopy;
  v17 = completionCopy;
  [playbackQueue2 getMusicPlaybackContextWithOptions:_playbackContextOptions completion:v21];

  v18 = [(_MPCQueueControllerBehaviorMusic *)self contentItemIDEnumeratorStartingAfterContentItemID:0 mode:2 options:0];
  nextObject = [v18 nextObject];

  return nextObject;
}

- (void)didConnectToHost:(id)host
{
  lastEmittedBehaviorMetadata = self->_lastEmittedBehaviorMetadata;
  self->_lastEmittedBehaviorMetadata = 0;

  [(_MPCQueueControllerBehaviorMusic *)self _emitEventsForPlaybackBehaviorChangeIfNeeded];
  dataSources = self->_dataSources;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53___MPCQueueControllerBehaviorMusic_didConnectToHost___block_invoke;
  v6[3] = &unk_1E8232830;
  v6[4] = self;
  [(NSMutableDictionary *)dataSources enumerateKeysAndObjectsUsingBlock:v6];
}

- (void)dealloc
{
  [(MPShuffleableSectionedIdentifierList *)self->_identifierList setDelegate:0];
  [(MPShuffleableSectionedIdentifierList *)self->_identifierList setAnnotationDelegate:0];
  [(MPSectionedIdentifierList *)self->_autoPlayIdentifierList setDelegate:0];
  [(MPSectionedIdentifierList *)self->_autoPlayIdentifierList setAnnotationDelegate:0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = _MPCQueueControllerBehaviorMusic;
  [(_MPCQueueControllerBehaviorMusic *)&v4 dealloc];
}

- (_MPCQueueControllerBehaviorMusic)initWithSessionID:(id)d
{
  dCopy = d;
  v15.receiver = self;
  v15.super_class = _MPCQueueControllerBehaviorMusic;
  v5 = [(_MPCQueueControllerBehaviorMusic *)&v15 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E6970978]) initWithIdentifier:dCopy];
    v7 = *(v5 + 16);
    *(v5 + 16) = v6;

    identifier = [*(v5 + 16) identifier];
    v9 = [identifier copy];
    v10 = *(v5 + 2);
    *(v5 + 2) = v9;

    [*(v5 + 16) setDelegate:v5];
    [*(v5 + 16) setAnnotationDelegate:v5];
    *(v5 + 13) = 0;
    *(v5 + 56) = vdupq_n_s64(0x3E8uLL);
    v11 = *(v5 + 17);
    *(v5 + 17) = 0;
    *(v5 + 18) = 0;

    v5[82] = 0;
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v13 = *(v5 + 20);
    *(v5 + 20) = v12;

    [v5 _setupNotifications];
  }

  return v5;
}

- (void)restoreWithSharedCoder:(id)coder block:(id)block
{
  v16 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  coderCopy = coder;
  [(_MPCQueueControllerBehaviorMusic *)self _initializeWithCoder:coderCopy];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nci"];

  if (!v8)
  {
LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  if (![(_MPCQueueControllerBehaviorMusic *)self itemExistsForContentItemID:v8])
  {
    v10 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      sessionID = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
      v12 = 138543618;
      v13 = sessionID;
      v14 = 2114;
      v15 = v8;
      _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "[PSP:…:%{public}@] restoreWithSharedCoder:block: | ignoring nextContentItemID [item does not exist] nextContentItemID=%{public}@", &v12, 0x16u);
    }

    goto LABEL_7;
  }

  v9 = v8;
LABEL_8:
  blockCopy[2](blockCopy, v9);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v18 = coderCopy;
  if (!self->_dataSources)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:308 description:@"Attempt to encode BehaviorMusic without _dataSources"];

    coderCopy = v18;
  }

  [coderCopy encodeObject:self->_identifierList forKey:@"il"];
  [v18 encodeObject:self->_autoPlayIdentifierList forKey:@"apil"];
  [v18 encodeObject:self->_dataSources forKey:@"ds"];
  [v18 encodeInteger:self->_repeatType forKey:@"rt"];
  [v18 encodeInteger:self->_shuffleType forKey:@"st"];
  [v18 encodeBool:self->_hasUserMutations forKey:@"hum"];
  [v18 encodeInteger:self->_autoPlayState forKey:@"aps"];
  [v18 encodeObject:self->_autoPlayEndPosition forKey:@"apep"];
  [v18 encodeBool:self->_autoPlayIsTriggered forKey:@"apit"];
  [v18 encodeObject:self->_latestUpNextSectionID forKey:@"lups"];
  if (_os_feature_enabled_impl())
  {
    msv_userInfo = [v18 msv_userInfo];
    v7 = [msv_userInfo objectForKeyedSubscript:*MEMORY[0x1E6970358]];
    integerValue = [v7 integerValue];

    transitionsEnabled = self->_transitionsEnabled;
    transitionStyle = self->_transitionStyle;
    v11 = self->_crossfadeDuration;
    if (integerValue == 2)
    {
      standardUserDefaults = [MEMORY[0x1E69708A8] standardUserDefaults];
      v13 = +[MPCPlaybackAccountManager sharedManager];
      fallbackAccount = [v13 fallbackAccount];

      if (self->_transitionsEnabled == 1000)
      {
        transitionsEnabled = [standardUserDefaults _areTransitionsEnabledWithSubscription:{objc_msgSend(fallbackAccount, "hasCatalogPlaybackCapability")}];
      }

      if (self->_transitionStyle == 1000)
      {
        transitionStyle = [standardUserDefaults transitionStyleForUserWithCatalogPlaybackCapability:{objc_msgSend(fallbackAccount, "hasCatalogPlaybackCapability")}];
      }

      if (!self->_crossfadeDuration)
      {
        v15 = MEMORY[0x1E696AD98];
        [standardUserDefaults crossFadeDuration];
        v16 = [v15 numberWithDouble:?];

        v11 = v16;
      }
    }

    [v18 encodeInteger:transitionsEnabled forKey:@"tes"];
    [v18 encodeInteger:transitionStyle forKey:@"ts"];
    [v18 encodeObject:v11 forKey:@"cfd"];
  }
}

- (_MPCQueueControllerBehaviorMusic)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(_MPCQueueControllerBehaviorMusic *)self init];
  v6 = v5;
  if (v5)
  {
    [(_MPCQueueControllerBehaviorMusic *)v5 _initializeWithCoder:coderCopy];
  }

  return v6;
}

- (NSString)debugDescription
{
  string = [MEMORY[0x1E696AD60] string];
  sessionID = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
  [string appendFormat:@"## BehaviorMusic <%p> [%@]\n", self, sessionID];

  identifierList = [(_MPCQueueControllerBehaviorMusic *)self identifierList];
  v6 = [identifierList debugDescription];

  if ([(_MPCQueueControllerBehaviorMusic *)self autoPlayEnabled])
  {
    autoPlayIdentifierList = [(_MPCQueueControllerBehaviorMusic *)self autoPlayIdentifierList];
    v8 = [autoPlayIdentifierList debugDescription];
  }

  v9 = [(_MPCQueueControllerBehaviorMusic *)self _stateDictionaryIncludingQueue:0];

  return string;
}

+ (id)makeExtensionWithInvalidatable:(id)invalidatable
{
  invalidatableCopy = invalidatable;
  v4 = [[_MPCQueueControllerBehaviorMusicTransportableExtension alloc] initWithInvalidatable:invalidatableCopy];

  return v4;
}

+ (BOOL)canLoadQueue:(id)queue reason:(id *)reason
{
  v12[5] = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    trackIdentifiers = [queueCopy trackIdentifiers];
    v9 = [trackIdentifiers msv_firstWhere:&__block_literal_global_7242];
    v6 = v9 == 0;

    if (reason && v9)
    {
      v6 = 0;
      *reason = @"GenericTracklist contains URLs";
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = [queueCopy identifier];
      v12[0] = @"InProcess-com.apple.mediaplayer.playbackcontext";
      v12[1] = @"com.apple.music.playbackqueue.tracklist";
      v12[2] = @"com.apple.music.playbackqueue.radio";
      v12[3] = @"com.apple.mediaplayer.playbackcontext";
      v12[4] = @"com.apple.MediaPlaybackCore.playbackContextArchive-v1.opack";
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:5];
      v6 = [v11 containsObject:identifier];

      if (reason && (v6 & 1) == 0)
      {
        *reason = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported custom data playback queue: %@", identifier];
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_3:
        v6 = 1;
        goto LABEL_4;
      }

      if (reason)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported playback queue: %@", objc_opt_class()];
        *reason = v6 = 0;
      }

      else
      {
        v6 = 0;
      }
    }
  }

LABEL_4:

  return v6;
}

@end