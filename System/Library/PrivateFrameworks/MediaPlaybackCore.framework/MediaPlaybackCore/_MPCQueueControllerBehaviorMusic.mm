@interface _MPCQueueControllerBehaviorMusic
+ (BOOL)canLoadQueue:(id)a3 reason:(id *)a4;
+ (id)makeExtensionWithInvalidatable:(id)a3;
- (BOOL)_allDataSourcesSupportInsertionPositionLast;
- (BOOL)_shouldFailWithOverridingErrorForQueue:(id)a3;
- (BOOL)canJumpToContentItemID:(id)a3 reason:(id *)a4;
- (BOOL)canNextItemFromContentItemID:(id)a3 reason:(id *)a4;
- (BOOL)canPreviousItemFromContentItemID:(id)a3 reason:(id *)a4;
- (BOOL)canUserChangeRepeatTypeWithReason:(id *)a3;
- (BOOL)canUserChangeShuffleModeWithReason:(id *)a3;
- (BOOL)canUserEnableAutoPlayWithReason:(id *)a3;
- (BOOL)canUserToggleTransitionsEnabledWithReason:(id *)a3;
- (BOOL)containsRestorableContent;
- (BOOL)isAutoPlayContentItemID:(id)a3;
- (BOOL)isExportableSessionType:(id)a3 forContentItemID:(id)a4 extension:(id)a5 reason:(id *)a6;
- (BOOL)isOneShotExportableSessionForContentItemID:(id)a3 reason:(id *)a4;
- (BOOL)isSupportedInsertionPosition:(int64_t)a3 fromContentItemID:(id)a4 reason:(id *)a5;
- (BOOL)isSupportedQueueEndAction:(int64_t)a3;
- (BOOL)itemExistsForContentItemID:(id)a3;
- (BOOL)shouldDowngradeTransitionStyle;
- (BOOL)transitionsEnabled;
- (MPCQueueControllerBehaviorHost)host;
- (MPCQueueControllerBehaviorMusicDelegate)musicBehaviorDelegate;
- (NSString)debugDescription;
- (_MPCQueueControllerBehaviorMusic)initWithCoder:(id)a3;
- (_MPCQueueControllerBehaviorMusic)initWithSessionID:(id)a3;
- (double)crossfadeDuration;
- (id)_accountForAutoPlay;
- (id)_componentsForContentItemID:(id)a3;
- (id)_idenitiferListForPosition:(int64_t)a3 afterContentItemID:(id)a4 existingUpNextSectionID:(id)a5 createdUpNextSectionID:(id)a6;
- (id)_identifierListForSection:(id)a3;
- (id)_itemForComponents:(id)a3;
- (id)_itemForContentItemID:(id)a3 allowReuse:(BOOL)a4;
- (id)_stateDictionaryIncludingQueue:(BOOL)a3;
- (id)_tailInsertionComponentsForUpNextSectionID:(id)a3;
- (id)_upNextSectionIdentifierForItem:(id)a3 shouldLookInBaseList:(BOOL)a4;
- (id)contentItemIDEnumeratorStartingAfterContentItemID:(id)a3 mode:(int64_t)a4 options:(unint64_t)a5;
- (id)contentItemIDWithoutRepeatIteration:(id)a3;
- (id)copyContentItemID:(id)a3 repeatIteration:(int64_t)a4;
- (id)debugDescriptionForItem:(id)a3 inSection:(id)a4;
- (id)debugDescriptionForSection:(id)a3;
- (id)finalizeStateRestorationWithTargetContentItemID:(id)a3 completion:(id)a4;
- (id)lastSectionContentItemIDForTargetContentItemID:(id)a3;
- (id)performLoadCommand:(id)a3 completion:(id)a4;
- (id)queueReferencesWithMaxCount:(int64_t)a3;
- (id)tailInsertionContentItemIDForTargetContentItemID:(id)a3;
- (int64_t)_autoplayMode;
- (int64_t)_countOfItemsWithinSection:(id)a3 maxCount:(int64_t)a4;
- (int64_t)_privateListeningSourceForContext:(id)a3;
- (int64_t)displayItemCount;
- (int64_t)preferredUpcomingItemCount;
- (int64_t)queueEndAction;
- (int64_t)resolvedTransitionStyle;
- (int64_t)transitionSettingsSource;
- (int64_t)transitionStyle;
- (int64_t)userTransitionPreference;
- (void)_addAutoPlayPlaybackContext:(id)a3 atPosition:(int64_t)a4 afterContentItemID:(id)a5 sectionIdentifier:(id)a6 actions:(unint64_t)a7 completion:(id)a8;
- (void)_addPlaybackContext:(id)a3 atPosition:(int64_t)a4 afterContentItemID:(id)a5 sectionIdentifier:(id)a6 actions:(unint64_t)a7 completion:(id)a8;
- (void)_emitEventsForAddingPlaybackContext:(id)a3 sectionIdentifier:(id)a4;
- (void)_emitEventsForPlaybackBehaviorChangeIfNeeded;
- (void)_evaluateAutoPlayStateAfterItemsChanged;
- (void)_evaluateLoadingDataSourceItemThresholds;
- (void)_initializeWithCoder:(id)a3;
- (void)_qfa_performInsertPlaybackContext:(id)a3 atPosition:(int64_t)a4 afterContentItemID:(id)a5 sectionIdentifier:(id)a6 actions:(unint64_t)a7 completion:(id)a8;
- (void)_setRepeatType:(int64_t)a3 reason:(id)a4;
- (void)_setShuffleType:(int64_t)a3 startingContentItemID:(id)a4 randomSource:(id)a5;
- (void)_setupNotifications;
- (void)_toggleTransitionsEnabledFromRemoteCommand:(BOOL)a3;
- (void)_transitionToAutoPlayState:(int64_t)a3;
- (void)_updateGroupSessionParticipants:(id)a3 localParticipant:(id)a4;
- (void)activeItemFlagsDidChange:(unsigned __int16)a3;
- (void)canReuseQueue:(id)a3 completion:(id)a4;
- (void)clearAllItemsAfterContentItemID:(id)a3;
- (void)clearUpNextAfterContentItemID:(id)a3;
- (void)currentItemDidChangeFromContentItemID:(id)a3 toContentItemID:(id)a4;
- (void)dealloc;
- (void)didConnectToHost:(id)a3;
- (void)didDequeueShuffledItemsInSectionedIdentifierList:(id)a3;
- (void)didReachEndOfQueueWithReason:(id)a3;
- (void)donateStartPlayerItem:(id)a3 completion:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)findFirstContentItemIDForItemIntersectingIdentifierSet:(id)a3 completion:(id)a4;
- (void)getSharedQueueTracklistWithStartingContentItemID:(id)a3 completion:(id)a4;
- (void)groupSession:(id)a3 didUpdateParticipants:(id)a4;
- (void)groupSessionDidConnect:(id)a3;
- (void)loadAdditionalUpcomingItems:(int64_t)a3 completion:(id)a4;
- (void)loadRepresentationForArtworkCatalog:(id)a3 completionHandler:(id)a4;
- (void)moveContentItemID:(id)a3 afterContentItemID:(id)a4 completion:(id)a5;
- (void)moveContentItemID:(id)a3 beforeContentItemID:(id)a4 completion:(id)a5;
- (void)performInsertCommand:(id)a3 targetContentItemID:(id)a4 completion:(id)a5;
- (void)prepareForCreateStationAfterContentItemID:(id)a3;
- (void)removeContentItemID:(id)a3 completion:(id)a4;
- (void)reshuffleWithTargetContentItemID:(id)a3 completion:(id)a4;
- (void)restoreWithSharedCoder:(id)a3 block:(id)a4;
- (void)sectionedIdentifierList:(id)a3 dataSourceDidAddItems:(id)a4 toSection:(id)a5;
- (void)sectionedIdentifierList:(id)a3 dataSourceDidChangeItems:(id)a4 inSection:(id)a5;
- (void)sectionedIdentifierList:(id)a3 dataSourceDidEndTransactionForSection:(id)a4;
- (void)sectionedIdentifierList:(id)a3 dataSourceDidMoveItems:(id)a4 inSection:(id)a5;
- (void)sectionedIdentifierList:(id)a3 dataSourceDidRemoveItems:(id)a4 fromSection:(id)a5;
- (void)sectionedIdentifierList:(id)a3 dataSourceDidUpdateItems:(id)a4 inSection:(id)a5;
- (void)sectionedIdentifierList:(id)a3 dataSourceDidUpdateSection:(id)a4;
- (void)setAutoPlayEnabled:(BOOL)a3 targetContentItemID:(id)a4 completion:(id)a5;
- (void)setHostingSharedSessionID:(id)a3 reason:(id)a4;
- (void)setQueueEndAction:(int64_t)a3 completion:(id)a4;
- (void)setRepeatType:(int64_t)a3 completion:(id)a4;
- (void)setShuffleType:(int64_t)a3 targetContentItemID:(id)a4 completion:(id)a5;
- (void)toggleTransitionsEnabledFromRemoteCommand:(BOOL)a3 completion:(id)a4;
@end

@implementation _MPCQueueControllerBehaviorMusic

- (int64_t)displayItemCount
{
  v3 = [(MPShuffleableSectionedIdentifierList *)self->_identifierList itemCount];
  if ([(_MPCQueueControllerBehaviorMusic *)self autoPlayEnabled]&& ![(_MPCQueueControllerBehaviorMusic *)self repeatType])
  {
    v3 += [(MPSectionedIdentifierList *)self->_autoPlayIdentifierList itemCount];
  }

  return v3;
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
        v5 = [MEMORY[0x1E69708A8] standardUserDefaults];
        v6 = +[MPCPlaybackAccountManager sharedManager];
        v7 = [v6 fallbackAccount];

        LOBYTE(v6) = [v5 _areTransitionsEnabledWithSubscription:{objc_msgSend(v7, "hasCatalogPlaybackCapability")}];
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
  v3 = [(MPShuffleableSectionedIdentifierList *)self->_identifierList allSectionIdentifiers];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
        objc_enumerationMutation(v3);
      }

      v8 = [(NSMutableDictionary *)self->_dataSources objectForKeyedSubscript:*(*(&v13 + 1) + 8 * v7)];
      v9 = ([v8 isFrozen] & 1) != 0 ? 0 : objc_msgSend(v8, "containsLiveStream");
      v10 = [v8 shouldRequestAdditionalItemsAtTail];

      v11 = 0;
      if (v9 & 1) != 0 || (v10)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  v3 = [(_MPCQueueControllerBehaviorMusic *)self resolvedTransitionStyle];
  if ([(_MPCQueueControllerBehaviorMusic *)self shouldDowngradeTransitionStyle])
  {
    return 0;
  }

  else
  {
    return v3;
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

- (void)_updateGroupSessionParticipants:(id)a3 localParticipant:(id)a4
{
  v34[4] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [a3 allObjects];
  v8 = [v7 sortedArrayUsingComparator:&__block_literal_global_751];

  v9 = [v8 msv_map:&__block_literal_global_754];
  v10 = v9;
  if (v6)
  {
    v11 = [v9 mutableCopy];
    v12 = v6;
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

    v17 = [v12 identifier];
    if (v15)
    {
      objc_setProperty_nonatomic_copy(v15, v16, v17, 48);
    }

    v18 = [v12 identity];

    v19 = [v18 identifier];
    v21 = v19;
    if (v15)
    {
      objc_setProperty_nonatomic_copy(v15, v20, v19, 56);

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
    v23 = [(_MPCQueueControllerBehaviorMusic *)self host];
    v24 = [v23 eventStream];
    v33[0] = @"session-id";
    v25 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
    v26 = v25;
    if (!v25)
    {
      v26 = [MEMORY[0x1E695DFB0] null];
    }

    activeHostingSharedSessionID = self->_activeHostingSharedSessionID;
    v34[0] = v26;
    v34[1] = activeHostingSharedSessionID;
    v33[1] = @"shared-session-id";
    v33[2] = @"participants";
    v28 = v10;
    if (!v10)
    {
      v28 = [MEMORY[0x1E695DFB0] null];
    }

    v34[2] = v28;
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
    [v24 emitEventType:@"shared-session-participants-changed" payload:v31];

    if (v10)
    {
      if (v25)
      {
LABEL_20:

        goto LABEL_21;
      }
    }

    else
    {

      if (v25)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_20;
  }

LABEL_21:
}

- (void)donateStartPlayerItem:(id)a3 completion:(id)a4
{
  v70[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
    v10 = [v6 contentItemID];
    *buf = 138543618;
    v66 = v9;
    v67 = 2114;
    v68 = v10;
    _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@] donateStartPlayerItem:… | attempting to donate PlayerItem for contentItemID: %{public}@", buf, 0x16u);
  }

  v11 = [(MPShuffleableSectionedIdentifierList *)self->_identifierList orderedSectionIdentifiers];
  v12 = [v11 firstObject];

  v13 = [(NSMutableDictionary *)self->_dataSources objectForKeyedSubscript:v12];
  v14 = [v13 isRadioDataSource];
  v15 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    if (v16)
    {
      v17 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
      *buf = 138543362;
      v66 = v17;
      _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@] donateStartPlayerItem:… | attempting to donate PlayerItem for radioDataSource", buf, 0xCu);
    }

    v60 = [_MPCQueueControllerEnumerator enumeratorWithMusicBehavior:self mode:0 options:16 startPosition:0 endPosition:0];
    v59 = [v60 nextObject];
    v18 = [v59 itemResult];
    v19 = [v13 dataSource];
    v20 = [v18 itemIdentifier];
    v21 = [v18 sectionIdentifier];
    v22 = [v19 identifiersForItem:v20 inSection:v21];

    v23 = [v6 modelGenericObject];
    v24 = [v23 identifiers];
    v58 = v22;
    LODWORD(v21) = [v22 intersectsSet:v24];

    if (v21)
    {
      v25 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
        v27 = [v18 itemIdentifier];
        v28 = [v18 sectionIdentifier];
        *buf = 138543874;
        v66 = v26;
        v67 = 2114;
        v68 = v27;
        v69 = 2114;
        v70[0] = v28;
        _os_log_impl(&dword_1C5C61000, v25, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@] donateStartPlayerItem:… | removing donated item from radio identifier list. itemIdentifier: %{public}@, sectionIdentifier: %{public}@", buf, 0x20u);
      }

      identifierList = self->_identifierList;
      v30 = [v18 itemIdentifier];
      v31 = [v18 sectionIdentifier];
      [(MPShuffleableSectionedIdentifierList *)identifierList removeItem:v30 fromSection:v31];
    }

    v62 = v12;
    v63 = v7;
    v32 = objc_alloc_init(MPCModelPlaybackContext);
    v33 = objc_alloc_init(MPCModelStorePlaybackItemsRequest);
    quot = [v6 storeSubscriptionAdamID];
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
    v44 = [v6 contentItemID];
    v45 = MPCQueueControllerBehaviorMusicIdentifierComponentsFromContentItemID(v44);

    v46 = [v45 sectionID];
    [(MPCModelPlaybackContext *)v32 setOverrideSILSectionID:v46];

    v47 = MEMORY[0x1E69B1470];
    v48 = [v6 modelGenericObject];
    v49 = [v48 identifiers];
    v50 = [v45 itemID];
    v51 = [v47 pairWithFirst:v49 second:v50];
    [(MPCModelPlaybackContext *)v32 setOverrideStartItemID:v51];

    [(MPCModelPlaybackContext *)v32 setRequest:v33];
    v52 = MEMORY[0x1E6970670];
    v53 = [v6 modelPlayEvent];
    v54 = [v53 radioStation];
    v55 = [v52 genericObjectWithModelObject:v54];
    [(MPCModelPlaybackContext *)v32 setFallbackSectionRepresentation:v55];

    v56 = [v6 modelPlayEvent];
    v57 = [v56 featureName];
    [(MPCModelPlaybackContext *)v32 setPlayActivityFeatureName:v57];

    v7 = v63;
    [(_MPCQueueControllerBehaviorMusic *)self _addPlaybackContext:v32 atPosition:4 afterContentItemID:0 sectionIdentifier:0 actions:16 completion:v63];

    v13 = v61;
    v12 = v62;
  }

  else
  {
    if (v16)
    {
      [(_MPCQueueControllerBehaviorMusic *)self sessionID];
      v42 = v41 = v7;
      *buf = 138543362;
      v66 = v42;
      _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@] donateStartPlayerItem:… | ignoring player item donation for non-radioDataSource", buf, 0xCu);

      v7 = v41;
    }

    v7[2](v7, 0);
  }
}

- (void)_transitionToAutoPlayState:(int64_t)a3
{
  v4 = self;
  v82 = *MEMORY[0x1E69E9840];
  v5 = [(_MPCQueueControllerBehaviorMusic *)self autoPlayEnabled];
  v6 = 0;
  v7 = a3 | (v4->_autoPlayState << 16);
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
        LOWORD(v11) = v13 | v4->_activeItemFlags;
        v6 = 1;
        goto LABEL_55;
      }

      v15 = v7 > 5 || ((1 << a3) & 0x32) == 0;
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
  v59 = [MEMORY[0x1E696AAA8] currentHandler];
  autoPlayState = v4->_autoPlayState;
  if (autoPlayState >= 0xA)
  {
    v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnexpectedState:%ld", v4->_autoPlayState];
  }

  else
  {
    v61 = off_1E8232D58[autoPlayState];
  }

  if (a3 >= 0xA)
  {
    v62 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnexpectedState:%ld", a3];
  }

  else
  {
    v62 = off_1E8232D58[a3];
  }

  [v59 handleFailureInMethod:a2 object:v4 file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:4295 description:{@"Unexpected state transition from: %@ to: %@", v61, v62}];

  v6 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  LOBYTE(v11) = 0;
LABEL_55:
  v66 = v10;
  v67 = v9;
  v17 = [(_MPCQueueControllerBehaviorMusic *)v4 host];
  v18 = MEMORY[0x1E696AEC0];
  v19 = v4->_autoPlayState;
  if (v19 >= 0xA)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnexpectedState:%ld", v4->_autoPlayState];
  }

  else
  {
    v20 = off_1E8232D58[v19];
  }

  if (a3 >= 0xA)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnexpectedState:%ld", a3];
  }

  else
  {
    v21 = off_1E8232D58[a3];
  }

  v22 = [v18 stringWithFormat:@"[ %@ --> %@ ]", v20, v21];

  v23 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [v17 engineID];
    [(_MPCQueueControllerBehaviorMusic *)v4 sessionID];
    v63 = v4;
    v25 = v6;
    v26 = a3;
    v27 = v8;
    v28 = v11;
    v11 = v17;
    v30 = v29 = v5;
    *buf = 138543874;
    v77 = v24;
    v78 = 2114;
    v79 = v30;
    v80 = 2114;
    v81 = v22;
    _os_log_impl(&dword_1C5C61000, v23, OS_LOG_TYPE_DEFAULT, "[AOT:%{public}@:%{public}@] _transitionToAutoPlayState:… | updating state [] transition=%{public}@", buf, 0x20u);

    v5 = v29;
    v17 = v11;
    LOBYTE(v11) = v28;
    v8 = v27;
    a3 = v26;
    v6 = v25;
    v4 = v63;
  }

  v4->_autoPlayState = a3;
  if (v67)
  {
    autoPlayEndPosition = v4->_autoPlayEndPosition;
    v4->_autoPlayEndPosition = 0;

    if (!v6)
    {
      goto LABEL_65;
    }

LABEL_69:
    autoPlayIdentifierList = v4->_autoPlayIdentifierList;
    v4->_autoPlayIdentifierList = 0;

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
    if (v4->_autoPlayIdentifierList || [(MPShuffleableSectionedIdentifierList *)v4->_identifierList itemCount]< 1)
    {
      [(_MPCQueueControllerBehaviorMusic *)v4 _transitionToAutoPlayState:7];
      goto LABEL_98;
    }

    v68 = v5;
    v38 = objc_alloc_init(MEMORY[0x1E6970940]);
    v39 = v4->_autoPlayIdentifierList;
    v4->_autoPlayIdentifierList = v38;

    [(MPSectionedIdentifierList *)v4->_autoPlayIdentifierList setDelegate:v4];
    [(MPSectionedIdentifierList *)v4->_autoPlayIdentifierList setAnnotationDelegate:v4];
    v40 = v4->_autoPlayIdentifierList;
    v41 = [(_MPCQueueControllerBehaviorMusic *)v4 _accountForAutoPlay];
    v42 = +[MPCPlaybackIntent continueListeningRadioPlaybackIntent];
    v43 = [v41 bag];
    v44 = [v43 radioConfiguration];

    if ([v44 isContinueListeningAvailable])
    {
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v69[2] = __63___MPCQueueControllerBehaviorMusic__transitionToAutoPlayState___block_invoke;
      v69[3] = &unk_1E8232C88;
      v75 = a2;
      v69[4] = v4;
      v70 = v41;
      v71 = v44;
      v72 = v17;
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
        v49 = [v17 engineID];
        [(_MPCQueueControllerBehaviorMusic *)v4 sessionID];
        v50 = v65 = v40;
        *buf = 138543874;
        v77 = v49;
        v78 = 2114;
        v79 = v50;
        v80 = 2114;
        v81 = v22;
        _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "[AOT:%{public}@:%{public}@] _transitionToAutoPlayState:… | disabling autoplay [disabled in bag] transition=%{public}@", buf, 0x20u);

        v40 = v65;
      }

      LOBYTE(v11) = v48;
      if (v4->_autoPlayState != 2)
      {
        [(_MPCQueueControllerBehaviorMusic *)v4 _transitionToAutoPlayState:2];
      }
    }

    v5 = v68;
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
    v51 = [(_MPCQueueControllerBehaviorMusic *)v4 autoPlayEnabled];
    if (v5 != v51)
    {
      v52 = v51;
      WeakRetained = objc_loadWeakRetained(&v4->_musicBehaviorDelegate);
      v54 = WeakRetained;
      if (v52)
      {
        v55 = 3;
      }

      else
      {
        v55 = 2;
      }

      [WeakRetained behavior:v4 didChangeActionAtQueueEnd:v55];
    }

    [(_MPCQueueControllerBehaviorMusic *)v4 _emitEventsForPlaybackBehaviorChangeIfNeeded];
    if (v66 && v4->_autoPlayIsTriggered && v4->_autoPlayState != 6)
    {
      v56 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        v57 = [v17 engineID];
        v58 = [(_MPCQueueControllerBehaviorMusic *)v4 sessionID];
        *buf = 138543874;
        v77 = v57;
        v78 = 2114;
        v79 = v58;
        v80 = 2114;
        v81 = v22;
        _os_log_impl(&dword_1C5C61000, v56, OS_LOG_TYPE_DEFAULT, "[AOT:%{public}@:%{public}@] _transitionToAutoPlayState:… | loading autoplay [triggered] transition=%{public}@", buf, 0x20u);
      }

      [(_MPCQueueControllerBehaviorMusic *)v4 _transitionToAutoPlayState:6];
    }

    [v17 behaviorDidChange];
    goto LABEL_98;
  }

LABEL_71:
  if (v4->_state)
  {
    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BehaviorMusic-transitionToAutoPlayState%@", v22];
    v34 = [v17 beginEditWithReason:v33];

    v35 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = [v17 engineID];
      v37 = [(_MPCQueueControllerBehaviorMusic *)v4 sessionID];
      *buf = 138543874;
      v77 = v36;
      v78 = 2114;
      v79 = v37;
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
    v46 = [v17 engineID];
    v47 = [(_MPCQueueControllerBehaviorMusic *)v4 sessionID];
    *buf = 138543874;
    v77 = v46;
    v78 = 2114;
    v79 = v47;
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
    v4 = [MEMORY[0x1E69708A8] standardUserDefaults];
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:self selector:sel__transitionPreferencesChanged name:*MEMORY[0x1E6970380] object:v4];
    [v3 addObserver:self selector:sel__transitionPreferencesChanged name:*MEMORY[0x1E6970388] object:v4];
  }
}

- (void)_toggleTransitionsEnabledFromRemoteCommand:(BOOL)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E69708A8] standardUserDefaults];
  v6 = +[MPCPlaybackAccountManager sharedManager];
  v7 = [v6 fallbackAccount];

  v8 = [v5 _areTransitionsEnabledWithSubscription:{objc_msgSend(v7, "hasCatalogPlaybackCapability")}];
  if (a3 || self->_transitionStyle != 1000)
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
    [v5 setTransitionsEnabled:v8 ^ 1u];
    v10 = 0;
  }

  else
  {
    v10 = v9 != v8;
    if (v9 == v8)
    {
      [v5 setTransitionsEnabled:v8 ^ 1u];
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
    v13 = [(_MPCQueueControllerBehaviorMusic *)self host];
    v14 = [v13 beginEditWithReason:@"BehaviorMusic-setTransitionsEnabled"];
    v15 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v13 engineID];
      v17 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
      v18 = NSStringFromBOOL();
      v20 = 138543874;
      v21 = v16;
      v22 = 2114;
      v23 = v17;
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

- (id)_tailInsertionComponentsForUpNextSectionID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(_MPCQueueControllerBehaviorMusic *)self _identifierListForSection:v4];
    v6 = [MEMORY[0x1E6970948] positionForTailOfSection:v4];
    v7 = [v5 enumeratorWithOptions:9 startPosition:v6 endPosition:0];

    v8 = 0;
    while (1)
    {
      v9 = v8;
      v8 = [v7 nextObject];

      if (!v8)
      {
        break;
      }

      if ([v8 entryType] == 3)
      {
        v10 = [v8 itemResult];
        v11 = [v10 sectionIdentifier];
        v12 = [v8 itemResult];
        v13 = [v12 itemIdentifier];
        v14 = [MPCQueueControllerBehaviorMusicIdentifierComponents itemComponentsWithSectionID:v11 itemID:v13];

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

- (void)_setShuffleType:(int64_t)a3 startingContentItemID:(id)a4 randomSource:(id)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  if (a3 == 1000)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:4080 description:@"User default should be resolved before setting on queue controller."];
  }

  if (self->_shuffleType != a3)
  {
    self->_shuffleType = a3;
    if (v9)
    {
      v11 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:v9];
    }

    else
    {
      v11 = 0;
    }

    v12 = [v11 sectionID];
    v13 = [v11 itemID];
    if ([v11 type] == 3 || objc_msgSend(v11, "type") == 2)
    {

      v13 = 0;
      v12 = 0;
    }

    v24 = v9;
    v14 = [(_MPCQueueControllerBehaviorMusic *)self host];
    v15 = [v14 beginEditWithReason:@"BehaviorMusic-setShuffleType"];
    [(MPShuffleableSectionedIdentifierList *)self->_identifierList setShuffleType:a3 startingItem:v13 inSection:v12 randomSource:v10];
    v16 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      [v14 engineID];
      v17 = v22 = v15;
      v18 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
      MPShuffleTypeDescription();
      v19 = v23 = v10;
      *buf = 138544386;
      v26 = v17;
      v27 = 2114;
      v28 = v18;
      v29 = 2114;
      v30 = v19;
      v31 = 2114;
      v32 = v13;
      v33 = 2114;
      v34 = v12;
      _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _setShuffleType:startingContentItemID:randomSource: | committing edit [queue order changed] shuffleType=%{public}@ startItem=%{public}@ startSection=%{public}@", buf, 0x34u);

      v15 = v22;
      v10 = v23;
    }

    [v15 commit];
    [(_MPCQueueControllerBehaviorMusic *)self _emitEventsForPlaybackBehaviorChangeIfNeeded];
    WeakRetained = objc_loadWeakRetained(&self->_musicBehaviorDelegate);
    [WeakRetained behavior:self didChangeShuffleType:a3];

    v9 = v24;
  }
}

- (void)_setRepeatType:(int64_t)a3 reason:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (self->_repeatType != a3)
  {
    self->_repeatType = a3;
    v7 = [(_MPCQueueControllerBehaviorMusic *)self host];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BehaviorMusic-setRepeatType-%@", v6];
    v9 = [v7 beginEditWithReason:v8];
    v10 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v7 engineID];
      v12 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
      v13 = MPNSStringFromRepeatType();
      *buf = 138544130;
      v16 = v11;
      v17 = 2114;
      v18 = v12;
      v19 = 2114;
      v20 = v6;
      v21 = 2114;
      v22 = v13;
      _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _setRepeatType:reason: | committing edit [repeatType changed: %{public}@] repeatType=%{public}@", buf, 0x2Au);
    }

    [v9 commit];
    [(_MPCQueueControllerBehaviorMusic *)self _emitEventsForPlaybackBehaviorChangeIfNeeded];
    WeakRetained = objc_loadWeakRetained(&self->_musicBehaviorDelegate);
    [WeakRetained behavior:self didChangeRepeatType:a3];
  }
}

- (int64_t)_privateListeningSourceForContext:(id)a3
{
  v3 = a3;
  if (MSVDeviceIsAudioAccessory() && ([MEMORY[0x1E6970538] isCurrentDeviceValidHomeAccessory] & 1) == 0 && (objc_msgSend(MEMORY[0x1E69708A8], "standardUserDefaults"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "isDevicePrivateListeningEnabled"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "BOOLValue"), v5, v4, (v6 & 1) != 0))
  {
    v7 = 1;
  }

  else
  {
    v8 = [v3 privateListeningOverride];

    if (v8)
    {
      v7 = 3;
    }

    else
    {
      v9 = [v3 userIdentity];

      if (v9)
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

- (id)_upNextSectionIdentifierForItem:(id)a3 shouldLookInBaseList:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 type])
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:3915 description:{@"unsupported components type: %d", objc_msgSend(v6, "type")}];

    if (v4)
    {
      goto LABEL_3;
    }
  }

  else if (v4)
  {
LABEL_3:
    v7 = [(MPShuffleableSectionedIdentifierList *)self->_identifierList orderedSectionIdentifiers];
    goto LABEL_6;
  }

  v7 = 0;
LABEL_6:
  v9 = [v7 count];
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
      v11 = [v7 objectAtIndexedSubscript:--v10];
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

  v13 = [(MPSectionedIdentifierList *)self->_autoPlayIdentifierList orderedSectionIdentifiers];

  v14 = [v13 count];
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
      v16 = [v13 objectAtIndexedSubscript:--v15];
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

  if (!v6)
  {
    v23 = v11;
    goto LABEL_66;
  }

  v18 = MEMORY[0x1E6970948];
  v19 = [v6 itemID];
  v20 = [v6 sectionID];
  v65 = [v18 positionForItem:v19 inSection:v20];

  identifierList = self->_identifierList;
  v22 = [v6 sectionID];
  LODWORD(identifierList) = [(MPShuffleableSectionedIdentifierList *)identifierList hasSection:v22];

  if (identifierList)
  {
    if (v17)
    {
      v23 = v11;
      goto LABEL_65;
    }

    v24 = [(MPShuffleableSectionedIdentifierList *)self->_identifierList enumeratorWithOptions:25 startPosition:v65 endPosition:0];
    v25 = [v24 nextObject];
    if (v25)
    {
      v26 = v25;
      do
      {
        v27 = [v26 entryType];
        if (v27 > 3)
        {
          if (v27 == 4)
          {
            v38 = [v26 trackingEntryResult];
            v39 = [v38 sectionIdentifier];
            v40 = v39;
            if (v11 == v39)
            {

LABEL_75:
              v23 = 0;
              goto LABEL_78;
            }

            v41 = [v11 isEqual:v39];

            if (v41)
            {
              goto LABEL_75;
            }
          }

          else if (v27 == 5)
          {
            v32 = [MEMORY[0x1E696AAA8] currentHandler];
            v33 = v32;
            v34 = a2;
            v35 = self;
            v36 = 3982;
            v37 = @"Encountered unexpected End entry while reverse enumerating";
LABEL_37:
            [v32 handleFailureInMethod:v34 object:v35 file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:v36 description:v37];
          }
        }

        else
        {
          switch(v27)
          {
            case 0:
              v32 = [MEMORY[0x1E696AAA8] currentHandler];
              v33 = v32;
              v34 = a2;
              v35 = self;
              v36 = 3985;
              v37 = @"Encountered unexpected Unknown entry while reverse enumerating";
              goto LABEL_37;
            case 2:
              v28 = [v26 trackingEntryResult];
              v29 = [v28 sectionIdentifier];
              v30 = v29;
              if (v11 == v29)
              {

LABEL_77:
                v23 = v11;
LABEL_78:

                goto LABEL_65;
              }

              v31 = [v11 isEqual:v29];

              if (v31)
              {
                goto LABEL_77;
              }

              break;
            case 1:
              goto LABEL_77;
          }
        }

        v42 = [v24 nextObject];

        v26 = v42;
      }

      while (v42);
    }
  }

  autoPlayIdentifierList = self->_autoPlayIdentifierList;
  v44 = [v6 sectionID];
  LODWORD(autoPlayIdentifierList) = [(MPSectionedIdentifierList *)autoPlayIdentifierList hasSection:v44];

  if ((v12 | autoPlayIdentifierList ^ 1))
  {
LABEL_64:
    v23 = 0;
    goto LABEL_65;
  }

  v45 = [(MPSectionedIdentifierList *)self->_autoPlayIdentifierList enumeratorWithOptions:25 startPosition:v65 endPosition:0];
  v46 = [v45 nextObject];
  if (!v46)
  {
LABEL_63:

    goto LABEL_64;
  }

  v47 = v46;
  while (1)
  {
    v48 = [v47 entryType];
    if (v48 <= 3)
    {
      break;
    }

    if (v48 == 4)
    {
      v59 = [v47 trackingEntryResult];
      v60 = [v59 sectionIdentifier];
      v61 = v60;
      if (v11 == v60)
      {

LABEL_70:
        v23 = 0;
        goto LABEL_73;
      }

      v62 = [v11 isEqual:v60];

      if (v62)
      {
        goto LABEL_70;
      }
    }

    else if (v48 == 5)
    {
      v53 = [MEMORY[0x1E696AAA8] currentHandler];
      v54 = v53;
      v55 = a2;
      v56 = self;
      v57 = 4019;
      v58 = @"Encountered unexpected End entry while reverse enumerating";
LABEL_57:
      [v53 handleFailureInMethod:v55 object:v56 file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:v57 description:v58];
    }

LABEL_62:
    v63 = [v45 nextObject];

    v47 = v63;
    if (!v63)
    {
      goto LABEL_63;
    }
  }

  if (!v48)
  {
    v53 = [MEMORY[0x1E696AAA8] currentHandler];
    v54 = v53;
    v55 = a2;
    v56 = self;
    v57 = 4022;
    v58 = @"Encountered unexpected Unknown entry while reverse enumerating";
    goto LABEL_57;
  }

  if (v48 != 2)
  {
    if (v48 == 1)
    {
      goto LABEL_72;
    }

    goto LABEL_62;
  }

  v49 = [v47 trackingEntryResult];
  v50 = [v49 sectionIdentifier];
  v51 = v50;
  if (v11 != v50)
  {
    v52 = [v11 isEqual:v50];

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

- (id)_itemForComponents:(id)a3
{
  v64 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v43 = [MEMORY[0x1E696AAA8] currentHandler];
    [v43 handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:3824 description:{@"Invalid parameter not satisfying: %@", @"components != nil"}];
  }

  v6 = [(_MPCQueueControllerBehaviorMusic *)self host];
  v7 = [v5 sectionID];
  v8 = [v5 itemID];
  v9 = [(NSMutableDictionary *)self->_dataSources objectForKeyedSubscript:v7];
  if ([v5 type] == 2)
  {
    v10 = [v9 tailPlaceholderItem];
    v11 = [v10 copy];

    if (!v11)
    {
      v11 = objc_alloc_init(MEMORY[0x1E6970880]);
    }

    v12 = [v5 contentItemID];
    [v11 setContentItemID:v12 queueSectionID:v7 queueItemID:v8];

    v13 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v6 engineID];
      v15 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
      *buf = 138543874;
      v53 = v14;
      v54 = 2114;
      v55 = v15;
      v56 = 2114;
      v57 = v11;
      v16 = "[ITFIT:%{public}@:%{public}@] _itemForComponents | returning placeholder [SectionPlaceholder] item=%{public}@";
LABEL_18:
      _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEFAULT, v16, buf, 0x20u);

      goto LABEL_42;
    }

    goto LABEL_42;
  }

  if ([v5 type] != 3)
  {
    if ([v5 type] == 1)
    {
      v11 = objc_alloc_init(MEMORY[0x1E6970880]);
      v19 = [v5 contentItemID];
      v20 = [v5 sectionID];
      v21 = [v5 itemID];
      [v11 setContentItemID:v19 queueSectionID:v20 queueItemID:v21];

      if ([v8 isEqualToString:@"_PLACEHOLDER_AUTOPLAY_"])
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
        v14 = [v6 engineID];
        v15 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
        *buf = 138543874;
        v53 = v14;
        v54 = 2114;
        v55 = v15;
        v56 = 2114;
        v57 = v11;
        v16 = "[ITFIT:%{public}@:%{public}@] _itemForComponents | returning placeholder [ItemPlaceholder] item=%{public}@";
        goto LABEL_18;
      }

      goto LABEL_42;
    }

    v13 = [(_MPCQueueControllerBehaviorMusic *)self _identifierListForSection:v7];
    v22 = [v13 hasItem:v8 inSection:v7];
    v23 = [v13 isDeletedItem:v8 inSection:v7];
    v24 = v23;
    if (!v22 || (v23 & 1) != 0)
    {
      v50 = [v5 contentItemID];
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
          [v6 engineID];
          v39 = v46 = v37;
          v40 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
          *buf = 138544642;
          v53 = v39;
          v54 = 2114;
          v55 = v40;
          v56 = 2114;
          v57 = v50;
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
        v47 = [v6 engineID];
        v41 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
        *buf = 138544642;
        v53 = v47;
        v54 = 2114;
        v55 = v41;
        v56 = 2114;
        v57 = v50;
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
        v44 = [MEMORY[0x1E696AAA8] currentHandler];
        [v44 handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:3867 description:{@"Unexpected state: missing dataSourceState for section: %@ dataSources: %@", v7, self->_dataSources}];
      }

      if (![v9 shouldUsePlaceholderForItem:v8 inSection:v7])
      {
        v11 = [v9 itemForItem:v8 inSection:v7];
        v33 = [v5 contentItemID];
        [v11 setContentItemID:v33 queueSectionID:v7 queueItemID:v8];

        -[NSObject setAutoPlayItem:](v11, "setAutoPlayItem:", [v5 behaviorFlags] & 1);
        [v11 setIsHostingSharedSession:self->_activeHostingSharedSessionID != 0];
        v34 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = [v6 engineID];
          v36 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
          *buf = 138543874;
          v53 = v35;
          v54 = 2114;
          v55 = v36;
          v56 = 2114;
          v57 = v11;
          _os_log_impl(&dword_1C5C61000, v34, OS_LOG_TYPE_DEFAULT, "[ITFIT:%{public}@:%{public}@] _itemForComponents | returning item [] item=%{public}@", buf, 0x20u);
        }

        goto LABEL_41;
      }

      v11 = objc_alloc_init(MEMORY[0x1E6970880]);
      v50 = [MPCQueueControllerBehaviorMusicIdentifierComponents itemComponentsWithSectionID:v7 itemID:v8];
      v25 = [v50 copyAsPlaceholder];
      v26 = [v25 contentItemID];
      [v25 sectionID];
      v45 = v6;
      v27 = v48 = v25;
      v28 = [v25 itemID];
      [v11 setContentItemID:v26 queueSectionID:v27 queueItemID:v28];

      v6 = v45;
      [v11 setAutoPlayItem:v13 == self->_autoPlayIdentifierList];
      v29 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = [v45 engineID];
        v31 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
        *buf = 138543874;
        v53 = v30;
        v54 = 2114;
        v55 = v31;
        v56 = 2114;
        v57 = v11;
        _os_log_impl(&dword_1C5C61000, v29, OS_LOG_TYPE_DEFAULT, "[ITFIT:%{public}@:%{public}@] _itemForComponents | returning placeholder [datasource specified placeholder] item=%{public}@", buf, 0x20u);
      }
    }

    v34 = v50;
LABEL_41:

    goto LABEL_42;
  }

  v17 = [v9 tailPlaceholderItem];
  v11 = [v17 copy];

  if (!v11)
  {
    v11 = objc_alloc_init(MEMORY[0x1E6970880]);
  }

  v18 = [v5 contentItemID];
  [v11 setContentItemID:v18 queueSectionID:v7 queueItemID:v8];

  v13 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v6 engineID];
    v15 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
    *buf = 138543874;
    v53 = v14;
    v54 = 2114;
    v55 = v15;
    v56 = 2114;
    v57 = v11;
    v16 = "[ITFIT:%{public}@:%{public}@] _itemForComponents | returning placeholder [EndOfQueuePlaceholder] item=%{public}@";
    goto LABEL_18;
  }

LABEL_42:

  return v11;
}

- (void)_initializeWithCoder:(id)a3
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = a3;
  self->_wasDecoded = 1;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"il"];
  identifierList = self->_identifierList;
  self->_identifierList = v5;

  v7 = self->_identifierList;
  if (v7)
  {
    v8 = [(MPShuffleableSectionedIdentifierList *)v7 identifier];
    sessionID = self->_sessionID;
    self->_sessionID = v8;

    [(MPShuffleableSectionedIdentifierList *)self->_identifierList setDelegate:self];
    [(MPShuffleableSectionedIdentifierList *)self->_identifierList setAnnotationDelegate:self];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"apil"];
    autoPlayIdentifierList = self->_autoPlayIdentifierList;
    self->_autoPlayIdentifierList = v10;

    [(MPSectionedIdentifierList *)self->_autoPlayIdentifierList setDelegate:self];
    [(MPSectionedIdentifierList *)self->_autoPlayIdentifierList setAnnotationDelegate:self];
    self->_repeatType = [v4 decodeIntegerForKey:@"rt"];
    self->_shuffleType = [v4 decodeIntegerForKey:@"st"];
    self->_autoPlayState = [v4 decodeIntegerForKey:@"aps"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"apep"];
    autoPlayEndPosition = self->_autoPlayEndPosition;
    self->_autoPlayEndPosition = v12;

    v14 = [v4 decodeBoolForKey:@"apit"];
    self->_autoPlayIsTriggered = v14;
    if (self->_autoPlayIdentifierList && (v14 & 1) == 0)
    {
      v15 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
        *buf = 138543362;
        v59 = v16;
        _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_DEFAULT, "[AOT:…:%{public}@] initializeWithCoder: | setting autoPlayIsTriggered = YES [decoded non-nil autoPlayIdentifierList]", buf, 0xCu);
      }

      self->_autoPlayIsTriggered = 1;
    }

    v17 = [v4 msv_userInfo];
    v18 = [v17 objectForKeyedSubscript:@"QC.targetContentItemID"];
    if ([v18 length])
    {
      v19 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:v18];
      v20 = [v17 mutableCopy];
      v21 = [v19 sectionID];
      [v20 setObject:v21 forKeyedSubscript:@"SOD.sectionID"];

      [v4 msv_setUserInfo:v20];
    }

    v22 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = [v22 setWithObjects:{v23, v24, objc_opt_class(), 0}];
    v26 = [v4 decodeObjectOfClasses:v25 forKey:@"ds"];
    dataSources = self->_dataSources;
    self->_dataSources = v26;

    if (!self->_dataSources)
    {
      v28 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        v29 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
        v30 = [v4 error];
        *buf = 138543618;
        v59 = v29;
        v60 = 2114;
        v61 = v30;
        _os_log_impl(&dword_1C5C61000, v28, OS_LOG_TYPE_FAULT, "[PSP:…:%{public}@] initializeWithCoder: | error detected [dataSources failed to decode] decoder.error=%{public}@", buf, 0x16u);
      }

      v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v32 = self->_dataSources;
      self->_dataSources = v31;
    }

    self->_hasUserMutations = [v4 decodeBoolForKey:@"hum"];
    [(MPShuffleableSectionedIdentifierList *)self->_identifierList setAutomaticallyReversesNonDestructiveDataSourceEdits:0];
    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lups"];
    latestUpNextSectionID = self->_latestUpNextSectionID;
    self->_latestUpNextSectionID = v33;

    if (!self->_latestUpNextSectionID)
    {
      v51 = v18;
      v52 = v17;
      v35 = [(MPShuffleableSectionedIdentifierList *)self->_identifierList orderedSectionIdentifiers];
      v36 = [(MPSectionedIdentifierList *)self->_autoPlayIdentifierList orderedSectionIdentifiers];
      v37 = v36;
      if (v36)
      {
        v38 = v36;
      }

      else
      {
        v38 = MEMORY[0x1E695E0F0];
      }

      v39 = [v35 arrayByAddingObjectsFromArray:v38];

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v40 = [v39 reverseObjectEnumerator];
      v41 = [v40 countByEnumeratingWithState:&v53 objects:v57 count:16];
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
              objc_enumerationMutation(v40);
            }

            v45 = *(*(&v53 + 1) + 8 * i);
            if ([v45 hasPrefix:@"UPNXT-"])
            {
              objc_storeStrong(&self->_latestUpNextSectionID, v45);
            }
          }

          v42 = [v40 countByEnumeratingWithState:&v53 objects:v57 count:16];
        }

        while (v42);
      }

      v18 = v51;
      v17 = v52;
    }

    if (_os_feature_enabled_impl())
    {
      if ([v4 containsValueForKey:@"tes"] && objc_msgSend(v4, "containsValueForKey:", @"ts"))
      {
        v46 = [v4 decodeIntegerForKey:@"tes"];
        v47 = [v4 decodeIntegerForKey:@"ts"];
        v48 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cfd"];
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
    [v4 failWithError:v49];
  }
}

- (id)_identifierListForSection:(id)a3
{
  v4 = a3;
  p_identifierList = &self->_identifierList;
  if (([(MPShuffleableSectionedIdentifierList *)self->_identifierList hasSection:v4]& 1) != 0)
  {
    goto LABEL_4;
  }

  autoPlayIdentifierList = self->_autoPlayIdentifierList;
  p_autoPlayIdentifierList = &self->_autoPlayIdentifierList;
  if ([(MPSectionedIdentifierList *)autoPlayIdentifierList hasSection:v4])
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
  v3 = [(_MPCQueueControllerBehaviorMusic *)self host];
  dataSources = self->_dataSources;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76___MPCQueueControllerBehaviorMusic__evaluateLoadingDataSourceItemThresholds__block_invoke;
  v6[3] = &unk_1E8232A10;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  [(NSMutableDictionary *)dataSources enumerateKeysAndObjectsUsingBlock:v6];
}

- (void)_evaluateAutoPlayStateAfterItemsChanged
{
  v25 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v3 = [(_MPCQueueControllerBehaviorMusic *)self host];
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
          v15 = [v3 engineID];
          v16 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
          v21 = 138543618;
          v22 = v15;
          v23 = 2114;
          v24 = v16;
          _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_DEFAULT, "[AOT:%{public}@:%{public}@] _evaluateAutoPlayStateAfterItemsChanged | autoplay disabled [finished waitingForItems]", &v21, 0x16u);
        }

        v12 = 3;
      }

      else
      {
        if (v14)
        {
          v19 = [v3 engineID];
          v20 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
          v21 = 138543618;
          v22 = v19;
          v23 = 2114;
          v24 = v20;
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
          v17 = [v3 engineID];
          v18 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
          v21 = 138543618;
          v22 = v17;
          v23 = 2114;
          v24 = v18;
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

      v7 = [v3 engineID];
      v8 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
      v21 = 138543618;
      v22 = v7;
      v23 = 2114;
      v24 = v8;
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

      v7 = [v3 engineID];
      v8 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
      v21 = 138543618;
      v22 = v7;
      v23 = 2114;
      v24 = v8;
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
      v17 = [(_MPCQueueControllerBehaviorMusic *)self host];
      v18 = [v17 eventStream];
      v22[0] = @"session-id";
      v19 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
      v20 = v19;
      if (!v19)
      {
        v20 = [MEMORY[0x1E695DFB0] null];
      }

      v22[1] = @"playback-behavior-metadata";
      v23[0] = v20;
      v23[1] = v3;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
      [v18 emitEventType:@"playback-behavior-changed" payload:v21];

      if (!v19)
      {
      }

      objc_storeStrong(p_lastEmittedBehaviorMetadata, v3);
    }
  }
}

- (void)_emitEventsForAddingPlaybackContext:(id)a3 sectionIdentifier:(id)a4
{
  v119[0] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(_MPCQueueControllerBehaviorMusic *)self host];
  v9 = +[MPCPlaybackAccountManager sharedManager];
  v10 = [v6 userIdentity];
  v94 = v9;
  v11 = [v9 accountForUserIdentity:v10];

  v93 = v11;
  v102 = [v11 hashedDSID];
  v103 = v7;
  v95 = v8;
  v96 = v6;
  v91 = [(_MPCQueueControllerBehaviorMusic *)self _privateListeningSourceForContext:v6];
  if ([v6 conformsToProtocol:&unk_1F45B4200])
  {
    v12 = v6;
    v13 = [v12 playbackRequestEnvironment];
    v110 = [v13 requestingBundleIdentifier];
    v109 = [v13 requestingBundleVersion];
    v14 = [v13 delegationProperties];
    v15 = v14;
    if (v14)
    {
      quot = [v14 storeAccountID];
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
      v97 = [v25 hashedDSID];
      v117[0] = @"device-guid";
      v26 = [v15 deviceGUID];
      v27 = v26;
      if (!v26)
      {
        v27 = [MEMORY[0x1E695DFB0] null];
      }

      v118[0] = v27;
      v117[1] = @"user-agent";
      v28 = [v15 requestUserAgent];
      v29 = v28;
      if (!v28)
      {
        v29 = [MEMORY[0x1E695DFB0] null];
      }

      v118[1] = v29;
      v117[2] = @"device-name";
      v30 = [v15 deviceName];
      v31 = v30;
      if (!v30)
      {
        v31 = [MEMORY[0x1E695DFB0] null];
      }

      v118[2] = v31;
      v117[3] = @"device-software-variant";
      v32 = [v15 systemReleaseType] - 1;
      if (v32 <= 3)
      {
        v33 = off_1E8232D38[v32];
      }

      else
      {
        v33 = [MEMORY[0x1E695DFB0] null];
      }

      v118[3] = v33;
      v101 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v118 forKeys:v117 count:4];
      if (v32 >= 4)
      {
      }

      if (!v30)
      {
      }

      if (!v28)
      {
      }

      if (!v26)
      {
      }

      v115 = @"private-listening-enabled";
      v12 = v107;
      v34 = [v107 privateListeningOverride];
      v35 = v34;
      v36 = MEMORY[0x1E695E118];
      if (v34)
      {
        v36 = v34;
      }

      v116 = v36;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v116 forKeys:&v115 count:1];

      v8 = v95;
      v6 = v96;
      v24 = v97;
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
    v109 = 0;
    v110 = 0;
    v23 = 0;
    v101 = 0;
    v24 = 0;
  }

  v100 = [v6 description];
  v106 = [v6 playActivityFeatureName];
  v108 = [v6 privateListeningOverride];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v43 = v8;
    v44 = v23;
    v45 = v24;
    v37 = 0;
LABEL_43:
    v46 = 0;
    v104 = 0;
    goto LABEL_48;
  }

  v37 = [v6 request];
  v38 = [v6 startItemIdentifiers];
  if (!v38)
  {
    v43 = v8;
    v44 = v23;
    v45 = v24;
    goto LABEL_43;
  }

  v39 = v38;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v40 = v37;
    v41 = [v40 adjustedStartItemIdentifiersForIdentifiers:v39];
    v42 = v41;
    v43 = v8;
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

    v37 = v40;
  }

  else
  {
    v43 = v8;
    v44 = v23;
    v45 = v24;
    v104 = 0;
  }

  v46 = v39;
LABEL_48:
  v47 = MEMORY[0x1E696AEC0];
  v48 = objc_opt_class();
  v49 = [v6 queueDescriptor];
  v50 = objc_opt_class();
  v90 = v37;
  v51 = [v47 stringWithFormat:@"%@-%@-%@", v48, v50, objc_opt_class()];

  v99 = [v43 eventStream];
  v113[0] = @"queue-start-item-ids";
  v52 = v46;
  v53 = v46;
  if (!v46)
  {
    v52 = [MEMORY[0x1E695DFB0] null];
  }

  v85 = v52;
  v114[0] = v52;
  v113[1] = @"queue-adjusted-start-item-ids";
  v54 = v104;
  if (!v104)
  {
    v54 = [MEMORY[0x1E695DFB0] null];
  }

  v84 = v54;
  v114[1] = v54;
  v114[2] = v103;
  v113[2] = @"queue-section-id";
  v113[3] = @"account-id";
  v55 = v102;
  if (!v102)
  {
    v55 = [MEMORY[0x1E695DFB0] null];
  }

  v83 = v55;
  v114[3] = v55;
  v113[4] = @"queue-delegated-account-id";
  v56 = v45;
  if (!v45)
  {
    v56 = [MEMORY[0x1E695DFB0] null];
  }

  v82 = v56;
  v114[4] = v56;
  v113[5] = @"queue-delegated-account-metadata";
  v57 = v44;
  if (!v44)
  {
    v57 = [MEMORY[0x1E695DFB0] null];
  }

  v81 = v57;
  v114[5] = v57;
  v113[6] = @"queue-description";
  v58 = v100;
  if (!v100)
  {
    v58 = [MEMORY[0x1E695DFB0] null];
  }

  v80 = v58;
  v114[6] = v58;
  v113[7] = @"private-listening-source";
  v88 = [MEMORY[0x1E696AD98] numberWithInteger:v91];
  v114[7] = v88;
  v113[8] = @"queue-reporting-metadata";
  v111[0] = @"queue-grouping-id";
  v59 = [v6 playActivityQueueGroupingID];
  v60 = v59;
  if (!v59)
  {
    v59 = [MEMORY[0x1E695DFB0] null];
  }

  v79 = v59;
  v112[0] = v59;
  v111[1] = @"feature-name";
  v61 = v106;
  if (!v106)
  {
    v61 = [MEMORY[0x1E695DFB0] null];
  }

  v78 = v61;
  v112[1] = v61;
  v111[2] = @"reco-data";
  v62 = [v6 playActivityRecommendationData];
  v86 = v62;
  if (!v62)
  {
    v62 = [MEMORY[0x1E695DFB0] null];
  }

  v87 = v60;
  v92 = v44;
  v77 = v62;
  v112[2] = v62;
  v111[3] = @"siri-ref-id";
  v63 = [v6 siriReferenceIdentifier];
  v64 = v63;
  if (!v63)
  {
    v63 = [MEMORY[0x1E695DFB0] null];
  }

  v98 = v45;
  v76 = v63;
  v112[3] = v63;
  v111[4] = @"siri-wha-metrics";
  v65 = [v6 siriWHAMetricsInfo];
  v66 = v65;
  if (!v65)
  {
    v65 = [MEMORY[0x1E695DFB0] null];
  }

  v75 = v65;
  v112[4] = v65;
  v111[5] = @"private-listening-enabled";
  v67 = v108;
  if (!v108)
  {
    v67 = [MEMORY[0x1E695DFB0] null];
  }

  v112[5] = v67;
  v111[6] = @"application-bundle-id";
  v68 = v110;
  if (!v110)
  {
    v68 = [MEMORY[0x1E695DFB0] null];
  }

  v74 = v67;
  v112[6] = v68;
  v111[7] = @"application-version";
  v69 = v109;
  if (!v109)
  {
    v69 = [MEMORY[0x1E695DFB0] null];
  }

  v89 = v53;
  v112[7] = v69;
  v111[8] = @"playback-context-class-name";
  v70 = v51;
  if (!v51)
  {
    v70 = [MEMORY[0x1E695DFB0] null];
  }

  v112[8] = v70;
  v111[9] = @"device-metadata";
  v71 = v101;
  if (!v101)
  {
    v71 = [MEMORY[0x1E695DFB0] null];
  }

  v112[9] = v71;
  v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v112 forKeys:v111 count:10];
  v114[8] = v72;
  v73 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v114 forKeys:v113 count:9];
  [v99 emitEventType:@"queue-add" payload:v73];

  if (!v101)
  {
  }

  if (!v51)
  {
  }

  if (!v109)
  {
  }

  if (!v110)
  {
  }

  if (!v108)
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

  if (!v106)
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

      if (v102)
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
  if (v102)
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

- (int64_t)_countOfItemsWithinSection:(id)a3 maxCount:(int64_t)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E6970948] positionForHeadOfSection:v6];
  v8 = [MEMORY[0x1E6970948] positionForTailOfSection:v6];
  v9 = [_MPCQueueControllerEnumerator enumeratorWithMusicBehavior:self mode:0 options:16 startPosition:v7 endPosition:v8];

  v10 = 0;
  if (a4 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = a4;
  }

  while (1)
  {
    v12 = [v9 nextObject];

    if (!v12)
    {
      break;
    }

    if (v11 == ++v10)
    {
      v10 = v11;
      break;
    }
  }

  return v10;
}

- (id)_componentsForContentItemID:(id)a3
{
  v5 = a3;
  if (![v5 length])
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:3537 description:{@"Invalid parameter not satisfying: %@", @"contentItemID.length > 0"}];
  }

  v6 = MPCQueueControllerBehaviorMusicIdentifierComponentsFromContentItemID(v5);
  autoPlayIdentifierList = self->_autoPlayIdentifierList;
  v8 = [v6 sectionID];
  v9 = [(MPSectionedIdentifierList *)autoPlayIdentifierList hasSection:v8];

  if ([v6 type] == 1)
  {
    v10 = [v6 itemID];
    v11 = [v10 isEqualToString:@"_PLACEHOLDER_AUTOPLAY_"];
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

- (void)_addAutoPlayPlaybackContext:(id)a3 atPosition:(int64_t)a4 afterContentItemID:(id)a5 sectionIdentifier:(id)a6 actions:(unint64_t)a7 completion:(id)a8
{
  v131 = a7;
  v154 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v135 = a5;
  v134 = a6;
  v14 = a8;
  v15 = [v13 copy];
  v16 = [(_MPCQueueControllerBehaviorMusic *)self host];
  if (a4 != 1)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BehaviorMusic-addAutoPlayPlaybackContext-<%@: %p>", objc_opt_class(), v15];
    v133 = [v16 beginEditWithReason:v22];

    v132 = v16;
    if (a4)
    {
      if (a4 != 3)
      {
        v48 = self;
        p_autoPlayIdentifierList = &self->_autoPlayIdentifierList;
        v124 = self->_autoPlayIdentifierList;
        goto LABEL_27;
      }

      v23 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:v135];
      if ([v23 type] != 3)
      {
        goto LABEL_19;
      }

      v24 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [v16 engineID];
        v26 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
        [v23 deferredNextContentItemID];
        v28 = v27 = v23;
        *buf = 138543874;
        v145 = v25;
        v146 = 2114;
        v147 = v26;
        v148 = 2114;
        v149 = v28;
        _os_log_impl(&dword_1C5C61000, v24, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _addAutoPlayPlaybackContext: | converting PositionSpecified item to deferredNextContentItem [specified placeholder item] deferredNextContentItem=%{public}@", buf, 0x20u);

        v23 = v27;
      }

      v29 = [v23 deferredNextContentItemID];

      if (!v29)
      {
        v21 = v133;
        [v133 rollback];
        v30 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = [v16 engineID];
          v32 = self;
          v33 = v23;
          v34 = v31;
          [(_MPCQueueControllerBehaviorMusic *)v32 sessionID];
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
        v14[2](v14, v109);
        goto LABEL_64;
      }
    }

    else
    {
      v23 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:v135];
      if ([v23 type] != 3)
      {
        a4 = 0;
LABEL_22:
        v48 = self;
        p_autoPlayIdentifierList = &self->_autoPlayIdentifierList;
        v49 = self->_autoPlayIdentifierList;
        v124 = v49;
        if (v23)
        {
          v50 = v49;
          v51 = [v23 itemID];
          v52 = v23;
          v53 = [v23 sectionID];
          v54 = [(MPSectionedIdentifierList *)v50 hasItem:v51 inSection:v53];

          if ((v54 & 1) == 0)
          {
            v21 = v133;
            [v133 rollback];
            v55 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
            if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
            {
              v56 = [v132 engineID];
              v57 = [(_MPCQueueControllerBehaviorMusic *)v48 sessionID];
              [v52 sectionID];
              v58 = v126 = v15;
              v59 = [v52 itemID];
              *buf = 138544130;
              v145 = v56;
              v146 = 2114;
              v147 = v57;
              v148 = 2114;
              v149 = v58;
              v150 = 2114;
              v151 = v59;
              _os_log_impl(&dword_1C5C61000, v55, OS_LOG_TYPE_ERROR, "[BMUS:%{public}@:%{public}@] _addAutoPlayPlaybackContext: | rolling back edit [autoPlayIdentifierList does not contain afterItem] afterSection=%{public}@ afterItem=%{public}@", buf, 0x2Au);

              v21 = v133;
              v15 = v126;
            }

            v60 = MEMORY[0x1E696ABC0];
            v61 = [v52 contentItemID];
            v62 = v60;
            v23 = v52;
            v63 = [v62 msv_errorWithDomain:@"MPCMusicBehaviorError" code:4 debugDescription:{@"Cannot insert after unknown item (in autoplay identifier list): %@", v61}];
            v14[2](v14, v63);
            v16 = v132;
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
              [v64 setContinueListeningQueueProvider:v48];
            }
          }

          v125 = v52;
          v65 = [[_MPCQueueControllerBehaviorMusicDataSourceState alloc] initWithPlaybackContext:v15];
          v66 = v48;
          dataSources = v48->_dataSources;
          v68 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v65 sectionIdentifier];
          v69 = [(NSMutableDictionary *)dataSources objectForKeyedSubscript:v68];

          if (v69)
          {
            v117 = [MEMORY[0x1E696AAA8] currentHandler];
            [v117 handleFailureInMethod:a2 object:v48 file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:3410 description:@"Attempting to add datasource for an already existing section."];
          }

          v16 = v132;
          v70 = [v132 eventStream];
          [(_MPCQueueControllerBehaviorMusicDataSourceState *)v65 setEventStream:v70];

          v71 = [v132 playerID];
          [(_MPCQueueControllerBehaviorMusicDataSourceState *)v65 setPlayerID:v71];

          v72 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
          if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
          {
            v73 = [v132 engineID];
            v74 = [(_MPCQueueControllerBehaviorMusic *)v48 sessionID];
            [(_MPCQueueControllerBehaviorMusicDataSourceState *)v65 sectionIdentifier];
            v76 = v75 = v13;
            *buf = 138544130;
            v145 = v73;
            v146 = 2114;
            v147 = v74;
            v148 = 2048;
            v149 = v65;
            v150 = 2114;
            v151 = v76;
            _os_log_impl(&dword_1C5C61000, v72, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _addAutoPlayPlaybackContext: | adding dataSource [] dataSource=%p section=%{public}@", buf, 0x2Au);

            v13 = v75;
            v16 = v132;
          }

          v77 = v66->_dataSources;
          v78 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v65 sectionIdentifier];
          [(NSMutableDictionary *)v77 setObject:v65 forKeyedSubscript:v78];

          v79 = [(MPSectionedIdentifierList *)v66->_autoPlayIdentifierList identifier];
          v80 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v65 sectionIdentifier];
          v122 = v13;
          [(_MPCQueueControllerBehaviorMusic *)v66 _emitEventsForAddingPlaybackContext:v13 sectionIdentifier:v80];

          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __131___MPCQueueControllerBehaviorMusic__addAutoPlayPlaybackContext_atPosition_afterContentItemID_sectionIdentifier_actions_completion___block_invoke;
          aBlock[3] = &unk_1E8232B50;
          v120 = v79;
          v137 = v120;
          v138 = v66;
          v123 = v16;
          v139 = v123;
          v61 = v65;
          v140 = v61;
          v141 = v133;
          v142 = v14;
          v143 = v131 & 1;
          v127 = _Block_copy(aBlock);
          v81 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v61 playbackContext];
          [v81 setShuffleType:0];

          if ((v131 & 1) == 0)
          {
            v82 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v61 playbackContext];
            [v82 clearStartItem];
          }

          if (a4 <= 2)
          {
            if (a4)
            {
              if (a4 == 2)
              {
                v89 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
                if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
                {
                  v90 = [v123 engineID];
                  v91 = [(_MPCQueueControllerBehaviorMusic *)v66 sessionID];
                  v92 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v61 sectionIdentifier];
                  *buf = 138543874;
                  v145 = v90;
                  v146 = 2114;
                  v147 = v91;
                  v148 = 2114;
                  v149 = v92;
                  _os_log_impl(&dword_1C5C61000, v89, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _addAutoPlayPlaybackContext: | adding data source [] position=Last section=%{public}@", buf, 0x20u);

                  v13 = v122;
                  v16 = v132;
                }

                v93 = *p_autoPlayIdentifierList;
                v88 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v61 sectionIdentifier];
                [(MPSectionedIdentifierList *)v93 addDataSourceAtEnd:v61 section:v88 completion:v127];
                goto LABEL_59;
              }

LABEL_58:
              v88 = [MEMORY[0x1E696AAA8] currentHandler];
              [v88 handleFailureInMethod:a2 object:v66 file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:3487 description:{@"Unsupported insertion position %d for %s | ", a4, "-[_MPCQueueControllerBehaviorMusic _addAutoPlayPlaybackContext:atPosition:afterContentItemID:sectionIdentifier:actions:completion:]"}];
LABEL_59:
              v21 = v133;

              if ((v131 & 0x10) == 0 && !v66->_hasUserMutations)
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
              v130 = [v123 engineID];
              v119 = [(_MPCQueueControllerBehaviorMusic *)v66 sessionID];
              v103 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v61 sectionIdentifier];
              v104 = [v125 itemID];
              v105 = [v125 sectionID];
              *buf = 138544386;
              v145 = v130;
              v146 = 2114;
              v147 = v119;
              v148 = 2114;
              v149 = v103;
              v150 = 2114;
              v151 = v104;
              v152 = 2114;
              v153 = v105;
              _os_log_impl(&dword_1C5C61000, v94, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _addAutoPlayPlaybackContext: | adding data source [] position=Head section=%{public}@ afterItem=%{public}@ inSection=%{public}@", buf, 0x34u);
            }
          }

          else
          {
            if (a4 != 3)
            {
              if (a4 == 4)
              {
                v98 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
                if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
                {
                  v99 = [v123 engineID];
                  v100 = [(_MPCQueueControllerBehaviorMusic *)v66 sessionID];
                  v101 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v61 sectionIdentifier];
                  *buf = 138543874;
                  v145 = v99;
                  v146 = 2114;
                  v147 = v100;
                  v148 = 2114;
                  v149 = v101;
                  _os_log_impl(&dword_1C5C61000, v98, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _addAutoPlayPlaybackContext: | adding data source [] position=Start section=%{public}@", buf, 0x20u);

                  v16 = v132;
                }

                v102 = *p_autoPlayIdentifierList;
                v88 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v61 sectionIdentifier];
                [(MPSectionedIdentifierList *)v102 addDataSourceAtStart:v61 section:v88 completion:v127];
                v13 = v122;
                goto LABEL_59;
              }

              if (a4 == 100)
              {
                v83 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
                if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
                {
                  v84 = [v123 engineID];
                  v85 = [(_MPCQueueControllerBehaviorMusic *)v66 sessionID];
                  v86 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v61 sectionIdentifier];
                  *buf = 138544130;
                  v145 = v84;
                  v146 = 2114;
                  v147 = v85;
                  v148 = 2114;
                  v149 = v86;
                  v150 = 2114;
                  v151 = v134;
                  _os_log_impl(&dword_1C5C61000, v83, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _addAutoPlayPlaybackContext: | adding data source [] position=AfterSection section=%{public}@ afterSection=%{public}@", buf, 0x2Au);

                  v13 = v122;
                  v16 = v132;
                }

                v87 = *p_autoPlayIdentifierList;
                v88 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v61 sectionIdentifier];
                [(MPSectionedIdentifierList *)v87 addDataSource:v61 section:v88 afterTailOfSection:v134 completion:v127];
                goto LABEL_59;
              }

              goto LABEL_58;
            }

            v94 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
            if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
            {
              v129 = [v123 engineID];
              v118 = [(_MPCQueueControllerBehaviorMusic *)v66 sessionID];
              v95 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v61 sectionIdentifier];
              v96 = [v125 itemID];
              v97 = [v125 sectionID];
              *buf = 138544386;
              v145 = v129;
              v146 = 2114;
              v147 = v118;
              v148 = 2114;
              v149 = v95;
              v150 = 2114;
              v151 = v96;
              v152 = 2114;
              v153 = v97;
              _os_log_impl(&dword_1C5C61000, v94, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _addAutoPlayPlaybackContext: | adding data source [] position=Specified section=%{public}@ afterItem=%{public}@ inSection=%{public}@", buf, 0x34u);
            }
          }

          v106 = *p_autoPlayIdentifierList;
          v88 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v61 sectionIdentifier];
          v107 = [v125 itemID];
          v108 = [v125 sectionID];
          [(MPSectionedIdentifierList *)v106 addDataSource:v61 section:v88 afterItem:v107 inSection:v108 completion:v127];

          v13 = v122;
          v16 = v132;
          goto LABEL_59;
        }

LABEL_27:
        v52 = 0;
        goto LABEL_28;
      }

      v39 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = [v16 engineID];
        v41 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
        [v23 deferredNextContentItemID];
        v43 = v42 = v23;
        *buf = 138543874;
        v145 = v40;
        v146 = 2114;
        v147 = v41;
        v148 = 2114;
        v149 = v43;
        _os_log_impl(&dword_1C5C61000, v39, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _addAutoPlayPlaybackContext: | converting PositionHead to PositionSpecified after deferredNextContentItem [head (current item was placeholder)] deferredNextContentItem=%{public}@", buf, 0x20u);

        v23 = v42;
      }

      v44 = [v23 deferredNextContentItemID];

      if (!v44)
      {
        v21 = v133;
        [v133 rollback];
        v110 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
        if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
        {
          v111 = [v16 engineID];
          v112 = self;
          v113 = v23;
          v114 = v111;
          [(_MPCQueueControllerBehaviorMusic *)v112 sessionID];
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

    v45 = [v23 deferredNextContentItemID];
    v46 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:v45];
    v47 = v23;
    v23 = v46;

LABEL_19:
    a4 = 3;
    goto LABEL_22;
  }

  v17 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = [v16 engineID];
    [(_MPCQueueControllerBehaviorMusic *)self sessionID];
    v20 = v19 = v16;
    *buf = 138543618;
    v145 = v18;
    v146 = 2114;
    v147 = v20;
    _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_ERROR, "[BMUS:%{public}@:%{public}@] _addAutoPlayPlaybackContext: | failed [insert at Tail is not supported -- MediaPlayer/QueueFA is OFF]", buf, 0x16u);

    v16 = v19;
  }

  v21 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicBehaviorError" code:4 debugDescription:@"Cannot insert at Tail [MediaPlayer/QueueFA is OFF"];
  v14[2](v14, v21);
LABEL_65:
}

- (void)_addPlaybackContext:(id)a3 atPosition:(int64_t)a4 afterContentItemID:(id)a5 sectionIdentifier:(id)a6 actions:(unint64_t)a7 completion:(id)a8
{
  v180 = *MEMORY[0x1E69E9840];
  v156 = a3;
  v155 = a5;
  v154 = a6;
  v15 = a8;
  v16 = [(_MPCQueueControllerBehaviorMusic *)self host];
  if (a4 != 1)
  {
    v133 = a2;
    v20 = [v156 copy];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BehaviorMusic-addPlaybackContext-<%@: %p>", objc_opt_class(), v20];
    v153 = [v16 beginEditWithReason:v21];

    WeakRetained = objc_loadWeakRetained(&self->_musicBehaviorDelegate);
    if (a4 == 3)
    {
      v22 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:v155];
      if ([v22 type] != 3)
      {
        v143 = 3;
        goto LABEL_23;
      }

      v36 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = [v16 engineID];
        v38 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
        [v22 deferredNextContentItemID];
        v136 = a7;
        v39 = self;
        v40 = v22;
        v42 = v41 = v20;
        *buf = 138543874;
        v171 = v37;
        v172 = 2114;
        v173 = v38;
        v174 = 2114;
        v175 = v42;
        _os_log_impl(&dword_1C5C61000, v36, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _addPlaybackContext: | converting PositionSpecified item to deferredNextContentItem [specified placeholder item] deferredNextContentItem=%{public}@", buf, 0x20u);

        v20 = v41;
        v22 = v40;
        self = v39;
        a7 = v136;
      }

      v43 = [v22 deferredNextContentItemID];

      if (!v43)
      {
        v127 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
        if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
        {
          v128 = [v16 engineID];
          v129 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
          *buf = 138543874;
          v171 = v128;
          v172 = 2114;
          v173 = v129;
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
      if (a4)
      {
        p_identifierList = &self->_identifierList;
        v149 = self->_identifierList;
        if (a4 == 2)
        {
          dataSources = self->_dataSources;
          v167[0] = MEMORY[0x1E69E9820];
          v167[1] = 3221225472;
          v167[2] = __123___MPCQueueControllerBehaviorMusic__addPlaybackContext_atPosition_afterContentItemID_sectionIdentifier_actions_completion___block_invoke;
          v167[3] = &unk_1E8232A10;
          v168 = v16;
          v169 = self;
          [(NSMutableDictionary *)dataSources enumerateKeysAndObjectsUsingBlock:v167];

          v22 = 0;
          v143 = 2;
        }

        else
        {
          v143 = a4;
          v22 = 0;
        }

        goto LABEL_29;
      }

      v22 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:v155];
      if ([v22 type] != 3)
      {
        v143 = 0;
        goto LABEL_23;
      }

      v23 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [v16 engineID];
        v25 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
        [v22 deferredNextContentItemID];
        v135 = a7;
        v26 = self;
        v27 = v22;
        v29 = v28 = v20;
        *buf = 138543874;
        v171 = v24;
        v172 = 2114;
        v173 = v25;
        v174 = 2114;
        v175 = v29;
        _os_log_impl(&dword_1C5C61000, v23, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _addPlaybackContext: | converting PositionHead to PositionSpecified after deferredNextContentItem [head (current item was placeholder)] deferredNextContentItem=%{public}@", buf, 0x20u);

        v20 = v28;
        v22 = v27;
        self = v26;
        a7 = v135;
      }

      v30 = [v22 deferredNextContentItemID];

      if (!v30)
      {
        v31 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = [v16 engineID];
          v33 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
          *buf = 138543874;
          v171 = v32;
          v172 = 2114;
          v173 = v33;
          v174 = 2114;
          v175 = v153;
          _os_log_impl(&dword_1C5C61000, v31, OS_LOG_TYPE_ERROR, "[BMUS:%{public}@:%{public}@] _addPlaybackContext: | failed to convert to deferredNextContentItem PositionSpecified [deferredNextContentItemID is nil] edit=%{public}@", buf, 0x20u);
        }

        [(_MPCQueueControllerBehaviorMusicDataSourceState *)v153 rollback];
        v34 = MEMORY[0x1E696ABC0];
        v35 = @"The specified insertion position [head] was unsupported because the current item is a placeholder and there is no deferredNextContentItemAnchorID.";
LABEL_98:
        v126 = [v34 msv_errorWithDomain:@"MPCMusicBehaviorError" code:4 debugDescription:v35];
        v15[2](v15, v126);
        goto LABEL_93;
      }
    }

    v44 = [v22 deferredNextContentItemID];
    v45 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:v44];

    v143 = 3;
    v22 = v45;
LABEL_23:
    p_identifierList = &self->_identifierList;
    v47 = self->_identifierList;
    v149 = v47;
    if (v22)
    {
      v48 = v47;
      v49 = [v22 itemID];
      v50 = [v22 sectionID];
      LOBYTE(v48) = [(MPShuffleableSectionedIdentifierList *)v48 hasItem:v49 inSection:v50];

      if ((v48 & 1) == 0)
      {
        v51 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          v52 = [v16 engineID];
          v53 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
          [v22 sectionID];
          v54 = v144 = v20;
          [v22 itemID];
          v55 = v22;
          v57 = v56 = v15;
          *buf = 138544386;
          v171 = v52;
          v172 = 2114;
          v173 = v53;
          v174 = 2114;
          v175 = v54;
          v176 = 2114;
          v177 = v57;
          v178 = 2114;
          v179 = v153;
          _os_log_impl(&dword_1C5C61000, v51, OS_LOG_TYPE_ERROR, "[BMUS:%{public}@:%{public}@] _addPlaybackContext: | rolling back edit [identifierList does not contain afterItem] afterSection=%{public}@ afterItem=%{public}@ edit=%{public}@", buf, 0x34u);

          v15 = v56;
          v22 = v55;

          v20 = v144;
        }

        [(_MPCQueueControllerBehaviorMusicDataSourceState *)v153 rollback];
        v58 = MEMORY[0x1E696ABC0];
        v59 = [v22 contentItemID];
        v60 = [v58 msv_errorWithDomain:@"MPCMusicBehaviorError" code:4 debugDescription:{@"Cannot insert after unknown item (in identifier list): %@", v59}];
        v15[2](v15, v60);
LABEL_92:
        v126 = v149;

LABEL_93:
        goto LABEL_94;
      }
    }

LABEL_29:
    v61 = [v20 shuffleType];
    if (v61 == 1000)
    {
      v62 = [MEMORY[0x1E69708A8] standardUserDefaults];
      v61 = [v62 musicShuffleType];

      [v20 setShuffleType:v61];
    }

    v150 = v22;
    if ((a7 & 2) != 0 && !v61 && self->_shuffleType)
    {
      self->_shuffleType = 0;
      v63 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        v64 = [v16 engineID];
        v65 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
        v66 = MPShuffleTypeDescription();
        *buf = 138543874;
        v171 = v64;
        v172 = 2114;
        v173 = v65;
        v174 = 2114;
        v175 = v66;
        _os_log_impl(&dword_1C5C61000, v63, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _addPlaybackContext: | setting SIL shuffle type [first data source] shuffleType=%{public}@", buf, 0x20u);
      }

      [(MPShuffleableSectionedIdentifierList *)self->_identifierList setShuffleType:0];
      [(_MPCQueueControllerBehaviorMusic *)self _emitEventsForPlaybackBehaviorChangeIfNeeded];
      [WeakRetained behavior:self didChangeShuffleType:0];
    }

    v67 = [v20 repeatType];
    if (v67 == 3)
    {
      v68 = [MEMORY[0x1E69708A8] standardUserDefaults];
      v67 = [v68 musicRepeatType];

      [v20 setRepeatType:v67];
    }

    if ((a7 & 4) != 0 && self->_repeatType != v67)
    {
      self->_repeatType = v67;
      [(_MPCQueueControllerBehaviorMusic *)self _emitEventsForPlaybackBehaviorChangeIfNeeded];
      [WeakRetained behavior:self didChangeRepeatType:v67];
    }

    if ([objc_opt_class() supportsAutoPlay])
    {
      v69 = [v20 queueEndAction];
      if (v69 == 1000)
      {
        v70 = [v20 userIdentity];
        v71 = [MEMORY[0x1E69708A8] standardUserDefaults];
        v72 = [v71 autoPlayEnabledForUserIdentity:v70];

        if (v72)
        {
          v69 = 3;
        }

        else
        {
          v69 = 2;
        }

        [v20 setQueueEndAction:v69];
      }

      if ((a7 & 0x20) == 0 || self->_autoPlayState)
      {
LABEL_58:
        v77 = [[_MPCQueueControllerBehaviorMusicDataSourceState alloc] initWithPlaybackContext:v20];
        v78 = self->_dataSources;
        v79 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v77 sectionIdentifier];
        v80 = [(NSMutableDictionary *)v78 objectForKeyedSubscript:v79];

        if (v80)
        {
          v130 = [MEMORY[0x1E696AAA8] currentHandler];
          [v130 handleFailureInMethod:v133 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:3252 description:@"Attempting to add datasource for an already existing section."];
        }

        v81 = [v16 eventStream];
        [(_MPCQueueControllerBehaviorMusicDataSourceState *)v77 setEventStream:v81];

        v82 = [v16 playerID];
        [(_MPCQueueControllerBehaviorMusicDataSourceState *)v77 setPlayerID:v82];

        v83 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
        if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
        {
          v84 = [v16 engineID];
          [(_MPCQueueControllerBehaviorMusic *)self sessionID];
          v137 = a7;
          v86 = v85 = self;
          [(_MPCQueueControllerBehaviorMusicDataSourceState *)v77 sectionIdentifier];
          v87 = v61;
          v88 = v20;
          v89 = v16;
          v91 = v90 = v15;
          *buf = 138544130;
          v171 = v84;
          v172 = 2114;
          v173 = v86;
          v174 = 2048;
          v175 = v77;
          v176 = 2114;
          v177 = v91;
          _os_log_impl(&dword_1C5C61000, v83, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _addPlaybackContext: | adding dataSource [] dataSource=%p section=%{public}@", buf, 0x2Au);

          v15 = v90;
          v16 = v89;
          v20 = v88;
          v61 = v87;

          self = v85;
          a7 = v137;
        }

        v92 = self->_dataSources;
        v93 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v77 sectionIdentifier];
        [(NSMutableDictionary *)v92 setObject:v77 forKeyedSubscript:v93];

        v94 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v77 sectionIdentifier];
        [(_MPCQueueControllerBehaviorMusic *)self _emitEventsForAddingPlaybackContext:v156 sectionIdentifier:v94];

        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __123___MPCQueueControllerBehaviorMusic__addPlaybackContext_atPosition_afterContentItemID_sectionIdentifier_actions_completion___block_invoke_653;
        aBlock[3] = &unk_1E8232B00;
        v164 = a7;
        v165 = v61;
        v95 = v16;
        v158 = v95;
        v159 = self;
        v59 = v77;
        v160 = v59;
        v161 = WeakRetained;
        v166 = a7 & 1;
        v162 = v153;
        v163 = v15;
        v151 = _Block_copy(aBlock);
        if ((a7 & 2) == 0)
        {
          v96 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v59 playbackContext];
          [v96 setShuffleType:0];
        }

        if ((a7 & 1) == 0)
        {
          v97 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v59 playbackContext];
          [v97 clearStartItem];
        }

        if (v143 <= 2)
        {
          if (v143)
          {
            if (v143 == 2)
            {
              v105 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
              if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
              {
                v106 = [v95 engineID];
                [(_MPCQueueControllerBehaviorMusic *)self sessionID];
                v139 = a7;
                v107 = a7 = v20;
                [(_MPCQueueControllerBehaviorMusicDataSourceState *)v59 sectionIdentifier];
                v146 = v16;
                v109 = v108 = v15;
                *buf = 138543874;
                v171 = v106;
                v172 = 2114;
                v173 = v107;
                v174 = 2114;
                v175 = v109;
                _os_log_impl(&dword_1C5C61000, v105, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _addPlaybackContext: | adding data source [] position=Last section=%{public}@", buf, 0x20u);

                v15 = v108;
                v16 = v146;

                v20 = a7;
                LOBYTE(a7) = v139;
              }

              v110 = *p_identifierList;
              v104 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v59 sectionIdentifier];
              [(MPShuffleableSectionedIdentifierList *)v110 addDataSourceAtEnd:v59 section:v104 sequentially:1 completion:v151];
              goto LABEL_88;
            }

LABEL_87:
            v104 = [MEMORY[0x1E696AAA8] currentHandler];
            [v104 handleFailureInMethod:v133 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:3333 description:{@"Unsupported insertion position %d for %s | ", v143, "-[_MPCQueueControllerBehaviorMusic _addPlaybackContext:atPosition:afterContentItemID:sectionIdentifier:actions:completion:]"}];
LABEL_88:

            if ((a7 & 0x10) == 0 && !self->_hasUserMutations)
            {
              self->_hasUserMutations = 1;
            }

            [v95 behaviorDidChange];

            v60 = v158;
            v22 = v150;
            goto LABEL_92;
          }

          v147 = v20;
          v140 = v15;
          v111 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
          if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
          {
            v134 = [v95 engineID];
            v132 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
            v112 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v59 sectionIdentifier];
            v113 = [v150 itemID];
            v114 = [v150 sectionID];
            *buf = 138544386;
            v171 = v134;
            v172 = 2114;
            v115 = v132;
            v173 = v132;
            v174 = 2114;
            v175 = v112;
            v176 = 2114;
            v177 = v113;
            v178 = 2114;
            v179 = v114;
            v116 = "[BMUS:%{public}@:%{public}@] _addPlaybackContext: | adding data source [] position=Head section=%{public}@ afterItem=%{public}@ inSection=%{public}@";
            goto LABEL_85;
          }
        }

        else
        {
          if (v143 != 3)
          {
            if (v143 == 4)
            {
              v117 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
              if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
              {
                v118 = [v95 engineID];
                [(_MPCQueueControllerBehaviorMusic *)self sessionID];
                v141 = a7;
                v119 = a7 = v20;
                [(_MPCQueueControllerBehaviorMusicDataSourceState *)v59 sectionIdentifier];
                v148 = v16;
                v121 = v120 = v15;
                *buf = 138543874;
                v171 = v118;
                v172 = 2114;
                v173 = v119;
                v174 = 2114;
                v175 = v121;
                _os_log_impl(&dword_1C5C61000, v117, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _addPlaybackContext: | adding data source [] position=Start section=%{public}@", buf, 0x20u);

                v15 = v120;
                v16 = v148;

                v20 = a7;
                LOBYTE(a7) = v141;
              }

              v122 = *p_identifierList;
              v104 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v59 sectionIdentifier];
              [(MPShuffleableSectionedIdentifierList *)v122 addDataSourceAtStart:v59 section:v104 completion:v151];
              goto LABEL_88;
            }

            if (v143 == 100)
            {
              v98 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
              if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
              {
                v99 = [v95 engineID];
                [(_MPCQueueControllerBehaviorMusic *)self sessionID];
                v138 = a7;
                v100 = a7 = v20;
                [(_MPCQueueControllerBehaviorMusicDataSourceState *)v59 sectionIdentifier];
                v145 = v16;
                v102 = v101 = v15;
                *buf = 138544130;
                v171 = v99;
                v172 = 2114;
                v173 = v100;
                v174 = 2114;
                v175 = v102;
                v176 = 2114;
                v177 = v154;
                _os_log_impl(&dword_1C5C61000, v98, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _addPlaybackContext: | adding data source [] position=AfterSection section=%{public}@ afterSection=%{public}@", buf, 0x2Au);

                v15 = v101;
                v16 = v145;

                v20 = a7;
                LOBYTE(a7) = v138;
              }

              v103 = *p_identifierList;
              v104 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v59 sectionIdentifier];
              [(MPShuffleableSectionedIdentifierList *)v103 addDataSource:v59 section:v104 sequentially:1 afterTailOfSection:v154 completion:v151];
              goto LABEL_88;
            }

            goto LABEL_87;
          }

          v147 = v20;
          v140 = v15;
          v111 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
          if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
          {
            v134 = [v95 engineID];
            v131 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
            v112 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v59 sectionIdentifier];
            v113 = [v150 itemID];
            v114 = [v150 sectionID];
            *buf = 138544386;
            v171 = v134;
            v172 = 2114;
            v115 = v131;
            v173 = v131;
            v174 = 2114;
            v175 = v112;
            v176 = 2114;
            v177 = v113;
            v178 = 2114;
            v179 = v114;
            v116 = "[BMUS:%{public}@:%{public}@] _addPlaybackContext: | adding data source [] position=Specified section=%{public}@ afterItem=%{public}@ inSection=%{public}@";
LABEL_85:
            _os_log_impl(&dword_1C5C61000, v111, OS_LOG_TYPE_DEFAULT, v116, buf, 0x34u);
          }
        }

        v123 = *p_identifierList;
        v104 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v59 sectionIdentifier];
        v124 = [v150 itemID];
        v125 = [v150 sectionID];
        [(MPShuffleableSectionedIdentifierList *)v123 addDataSource:v59 section:v104 sequentially:1 afterItem:v124 inSection:v125 completion:v151];

        v15 = v140;
        v20 = v147;
        goto LABEL_88;
      }

      if (v69 == 3)
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
        v75 = [v16 engineID];
        v76 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
        *buf = 138543618;
        v171 = v75;
        v172 = 2114;
        v173 = v76;
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
    v18 = [v16 engineID];
    v19 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
    *buf = 138543618;
    v171 = v18;
    v172 = 2114;
    v173 = v19;
    _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_ERROR, "[BMUS:%{public}@:%{public}@] _addPlaybackContext: | failed [insert at Tail is not supported -- MediaPlayer/QueueFA is OFF]", buf, 0x16u);
  }

  v20 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicBehaviorError" code:4 debugDescription:@"Cannot insert at Tail [MediaPlayer/QueueFA is OFF]"];
  v15[2](v15, v20);
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
      v8 = [v7 playbackContext];
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_22;
      }

      v9 = v5;
      v10 = self;
      v11 = v8;
      v12 = [v11 playbackRequestEnvironment];
      v13 = [v12 delegationProperties];
      v14 = v13;
      if (v13 && [v13 storeAccountID])
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

      self = v10;
      v5 = v9;
      v4 = v27;
      if (!v22)
      {
LABEL_22:
        v23 = [v8 userIdentity];
        if (!v23)
        {
          v22 = 0;
          goto LABEL_27;
        }

        v24 = v23;
        v22 = [v29 accountForUserIdentity:v23];

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

- (id)queueReferencesWithMaxCount:(int64_t)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = [(_MPCQueueControllerBehaviorMusic *)self host];
  v45 = self;
  v5 = [(_MPCQueueControllerBehaviorMusic *)self _accountForAutoPlay];

  v6 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = [v4 engineID];
      v9 = [(_MPCQueueControllerBehaviorMusic *)v45 sessionID];
      *buf = 138543874;
      v47 = v8;
      v48 = 2114;
      v49 = v9;
      v50 = 2048;
      v51 = a3;
      _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_DEFAULT, "[AOT:%{public}@:%{public}@] queueReferencesWithMaxCount: | enumerating items [] maxCount=%ld", buf, 0x20u);
    }

    v41 = v4;

    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:a3];
    v43 = [_MPCQueueControllerEnumerator enumeratorWithMusicBehavior:v45 mode:1 options:8 startPosition:0 endPosition:0];
    v10 = [v43 nextObject];
    if (v10)
    {
      v11 = v10;
      v42 = v6;
      while (1)
      {
        if ([v6 count]>= a3)
        {
LABEL_18:

          goto LABEL_19;
        }

        v12 = objc_autoreleasePoolPush();
        dataSources = v45->_dataSources;
        v14 = [v11 itemResult];
        v15 = [v14 sectionIdentifier];
        v16 = [(NSMutableDictionary *)dataSources objectForKeyedSubscript:v15];

        if ([v16 state] == 3)
        {
          v17 = [v16 dataSource];
          v18 = [v11 itemResult];
          v19 = [v18 itemIdentifier];
          v20 = [v11 itemResult];
          v21 = [v20 sectionIdentifier];
          v22 = [v17 supportsAutoPlayForItem:v19 inSection:v21];

          if (v22)
          {
            break;
          }
        }

LABEL_17:

        objc_autoreleasePoolPop(v12);
        v35 = [v43 nextObject];

        v11 = v35;
        if (!v35)
        {
          goto LABEL_18;
        }
      }

      v23 = [v11 itemResult];
      v24 = [v23 sectionIdentifier];
      v25 = [v11 itemResult];
      v26 = [v25 itemIdentifier];
      v27 = [MPCQueueControllerBehaviorMusicIdentifierComponents itemComponentsWithSectionID:v24 itemID:v26];

      v28 = [(_MPCQueueControllerBehaviorMusic *)v45 _itemForComponents:v27];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v29 = v28;
        v30 = [v29 trackInfo];
        if ([v30 count])
        {
          v31 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v29, "storeItemInt64ID")}];
          v32 = [MPCModelRadioContentReference referenceWithStoreIdentifier:v31 trackInfo:v30];

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

      v33 = [v28 modelGenericObject];
      v34 = [v28 modelPlayEvent];
      v32 = [MPCModelRadioContentReference referenceWithMPModelObject:v33 containerModelPlayEvent:v34];

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

    v4 = v41;
  }

  else
  {
    if (v7)
    {
      v37 = [v4 engineID];
      [(_MPCQueueControllerBehaviorMusic *)v45 sessionID];
      v39 = v38 = v6;
      *buf = 138543618;
      v47 = v37;
      v48 = 2114;
      v49 = v39;
      _os_log_impl(&dword_1C5C61000, v38, OS_LOG_TYPE_DEFAULT, "[AOT:%{public}@:%{public}@] queueReferencesWithMaxCount: | returning no items [_accountForAutoPlay was nil]", buf, 0x16u);

      v6 = v38;
    }

    v36 = MEMORY[0x1E695E0F0];
  }

  return v36;
}

- (void)didDequeueShuffledItemsInSectionedIdentifierList:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85___MPCQueueControllerBehaviorMusic_didDequeueShuffledItemsInSectionedIdentifierList___block_invoke;
  block[3] = &unk_1E8239298;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)sectionedIdentifierList:(id)a3 dataSourceDidUpdateSection:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __87___MPCQueueControllerBehaviorMusic_sectionedIdentifierList_dataSourceDidUpdateSection___block_invoke;
  v7[3] = &unk_1E82392C0;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

- (void)sectionedIdentifierList:(id)a3 dataSourceDidChangeItems:(id)a4 inSection:(id)a5
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95___MPCQueueControllerBehaviorMusic_sectionedIdentifierList_dataSourceDidChangeItems_inSection___block_invoke;
  block[3] = &unk_1E8239298;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)sectionedIdentifierList:(id)a3 dataSourceDidUpdateItems:(id)a4 inSection:(id)a5
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95___MPCQueueControllerBehaviorMusic_sectionedIdentifierList_dataSourceDidUpdateItems_inSection___block_invoke;
  block[3] = &unk_1E8239298;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)sectionedIdentifierList:(id)a3 dataSourceDidAddItems:(id)a4 toSection:(id)a5
{
  v7 = a3;
  v8 = a5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __92___MPCQueueControllerBehaviorMusic_sectionedIdentifierList_dataSourceDidAddItems_toSection___block_invoke;
  block[3] = &unk_1E82391C0;
  block[4] = self;
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)sectionedIdentifierList:(id)a3 dataSourceDidRemoveItems:(id)a4 fromSection:(id)a5
{
  v7 = a3;
  v8 = a5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97___MPCQueueControllerBehaviorMusic_sectionedIdentifierList_dataSourceDidRemoveItems_fromSection___block_invoke;
  block[3] = &unk_1E82391C0;
  block[4] = self;
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)sectionedIdentifierList:(id)a3 dataSourceDidMoveItems:(id)a4 inSection:(id)a5
{
  v7 = a3;
  v8 = a5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93___MPCQueueControllerBehaviorMusic_sectionedIdentifierList_dataSourceDidMoveItems_inSection___block_invoke;
  block[3] = &unk_1E82391C0;
  block[4] = self;
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)sectionedIdentifierList:(id)a3 dataSourceDidEndTransactionForSection:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98___MPCQueueControllerBehaviorMusic_sectionedIdentifierList_dataSourceDidEndTransactionForSection___block_invoke;
  block[3] = &unk_1E82391C0;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (id)debugDescriptionForItem:(id)a3 inSection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_MPCQueueControllerBehaviorMusic *)self _identifierListForSection:v7];
  if ([v8 hasItem:v6 inSection:v7] && (objc_msgSend(v8, "isDeletedItem:inSection:", v6, v7) & 1) == 0)
  {
    v10 = [MPCQueueControllerBehaviorMusicIdentifierComponents itemComponentsWithSectionID:v7 itemID:v6];
    v11 = [v10 contentItemID];
    v12 = [(_MPCQueueControllerBehaviorMusic *)self _itemForContentItemID:v11 allowReuse:1];
    v13 = [v12 contentItemID];

    v14 = [v10 type];
    v15 = MEMORY[0x1E696AEC0];
    if ((v14 & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      v16 = @"⏳";
    }

    else
    {
      v16 = @"▫️";
    }

    v17 = [v12 mainTitle];
    v9 = [v15 stringWithFormat:@"%@ %@", v16, v17];
  }

  else
  {
    v9 = @"▫️ (null)";
  }

  return v9;
}

- (id)debugDescriptionForSection:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableDictionary *)self->_dataSources objectForKeyedSubscript:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 playbackContext];
    v6 = [v5 descriptionComponents];
    v7 = [v4 state];
    if (v7 > 4)
    {
      v8 = @"▫️";
    }

    else
    {
      v8 = off_1E8232D10[v7];
    }

    if ([v4 isFrozen])
    {
      v8 = [(__CFString *)v8 stringByAppendingString:@"❄️"];
    }

    v10 = MEMORY[0x1E696AD60];
    v22 = v5;
    v11 = [objc_opt_class() description];
    v21 = v8;
    v9 = [v10 stringWithFormat:@"%@ %@", v8, v11];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = [v6 allKeys];
    v13 = [v12 sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];

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
          v19 = [v6 objectForKeyedSubscript:v18];
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

- (void)loadRepresentationForArtworkCatalog:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __90___MPCQueueControllerBehaviorMusic_loadRepresentationForArtworkCatalog_completionHandler___block_invoke;
  v7[3] = &unk_1E8239170;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

- (void)clearUpNextAfterContentItemID:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_MPCQueueControllerBehaviorMusic *)self host];
  v6 = [(_MPCQueueControllerBehaviorMusic *)self tailInsertionContentItemIDForTargetContentItemID:v4];
  if (v6)
  {
    v38 = v5;
    v37 = [v5 beginEditWithReason:@"BehaviorMusic-clearUpNext"];
    v39 = v4;
    v7 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:v4];
    v8 = MEMORY[0x1E6970948];
    v9 = [v7 itemID];
    v36 = v7;
    v10 = [v7 sectionID];
    v11 = [v8 positionForItem:v9 inSection:v10];

    v12 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:v6];
    v13 = MEMORY[0x1E6970948];
    v14 = [v12 itemID];
    v15 = [v12 sectionID];
    v16 = [v13 positionForItem:v14 inSection:v15];

    v34 = v16;
    v35 = v11;
    v17 = [_MPCQueueControllerEnumerator enumeratorWithMusicBehavior:self mode:1 options:64 startPosition:v11 endPosition:v16];
    v18 = [v17 nextObject];
    if (v18)
    {
      v19 = v18;
      do
      {
        v20 = [v19 itemResult];
        v21 = [v20 sectionIdentifier];
        v22 = [(_MPCQueueControllerBehaviorMusic *)self _identifierListForSection:v21];

        v23 = [v19 itemResult];
        v24 = [v23 itemIdentifier];
        v25 = [v19 itemResult];
        v26 = [v25 sectionIdentifier];
        [v22 removeItem:v24 fromSection:v26];

        v27 = [v17 nextObject];

        v19 = v27;
      }

      while (v27);
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
    v5 = v38;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [v38 engineID];
      v30 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
      *buf = 138543618;
      v42 = v29;
      v43 = 2114;
      v44 = v30;
      _os_log_impl(&dword_1C5C61000, v28, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] clearAllItemsAfterContentItemID: | committing edit [queue updated]", buf, 0x16u);
    }

    v31 = v37;
    [v37 commit];

    v4 = v39;
  }

  else
  {
    v31 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [v5 engineID];
      v33 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
      *buf = 138543618;
      v42 = v32;
      v43 = 2114;
      v44 = v33;
      _os_log_impl(&dword_1C5C61000, v31, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] clearAllItemsAfterContentItemID: | ignoring [tailInsertionContentItemID is nil]", buf, 0x16u);
    }
  }
}

- (void)clearAllItemsAfterContentItemID:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_MPCQueueControllerBehaviorMusic *)self host];
  [(_MPCQueueControllerBehaviorMusic *)self _setRepeatType:0 reason:@"ClearAllItems"];
  [(_MPCQueueControllerBehaviorMusic *)self setAutoPlayEnabled:0 targetContentItemID:v4 completion:&__block_literal_global_583];
  v6 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:v4];
  v7 = [(_MPCQueueControllerBehaviorMusic *)self _itemForComponents:v6];
  if (([v7 isAlwaysLive] & 1) == 0 && (self->_activeItemFlags & 1) == 0)
  {
    v27 = v7;
    v28 = v5;
    v26 = [v5 beginEditWithReason:@"BehaviorMusic-clearUpNext"];
    v8 = MEMORY[0x1E6970948];
    v9 = [v6 itemID];
    v10 = [v6 sectionID];
    v11 = [v8 positionForItem:v9 inSection:v10];
    v12 = [_MPCQueueControllerEnumerator enumeratorWithMusicBehavior:self mode:1 options:0 startPosition:v11 endPosition:0];

    v13 = [v12 nextObject];
    if (v13)
    {
      v14 = v13;
      do
      {
        v15 = [v14 itemResult];
        v16 = [v15 sectionIdentifier];
        v17 = [(_MPCQueueControllerBehaviorMusic *)self _identifierListForSection:v16];

        v18 = [v14 itemResult];
        v19 = [v18 itemIdentifier];
        v20 = [v14 itemResult];
        v21 = [v20 sectionIdentifier];
        [v17 removeItem:v19 fromSection:v21];

        v22 = [v12 nextObject];

        v14 = v22;
      }

      while (v22);
    }

    if (!self->_hasUserMutations)
    {
      self->_hasUserMutations = 1;
    }

    v23 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
    v5 = v28;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [v28 engineID];
      v25 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
      *buf = 138543618;
      v30 = v24;
      v31 = 2114;
      v32 = v25;
      _os_log_impl(&dword_1C5C61000, v23, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] clearUpNextAfterContentItemID: | committing edit [queue updated]", buf, 0x16u);
    }

    [v26 commit];
    v7 = v27;
  }
}

- (void)removeContentItemID:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:a3];
  v8 = [v7 sectionID];
  v9 = [v7 itemID];
  v10 = [(_MPCQueueControllerBehaviorMusic *)self _identifierListForSection:v8];
  if ([v10 hasItem:v9 inSection:v8])
  {
    v11 = [(_MPCQueueControllerBehaviorMusic *)self host];
    v12 = [v11 beginEditWithReason:@"BehaviorMusic-removeItem"];
    v13 = [(NSMutableDictionary *)self->_dataSources objectForKeyedSubscript:v8];
    v14 = [v13 containsLiveStream];

    if (v14)
    {
      v15 = [(NSMutableDictionary *)self->_dataSources objectForKeyedSubscript:v8];
      [v15 setFrozen:1];
    }

    [v10 removeItem:v9 fromSection:v8];
    if (!self->_hasUserMutations)
    {
      self->_hasUserMutations = 1;
    }

    v16 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v11 engineID];
      [(_MPCQueueControllerBehaviorMusic *)self sessionID];
      v21 = v11;
      v19 = v18 = v12;
      *buf = 138543618;
      v24 = v17;
      v25 = 2114;
      v26 = v19;
      _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] removeContentItemID:completion: | committing edit [update removed item]", buf, 0x16u);

      v12 = v18;
      v11 = v21;
    }

    [v12 commit];
    [(_MPCQueueControllerBehaviorMusic *)self _evaluateLoadingDataSourceItemThresholds];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67___MPCQueueControllerBehaviorMusic_removeContentItemID_completion___block_invoke;
    block[3] = &unk_1E8239298;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v6[2](v6, 0);
  }

  else
  {
    v20 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicBehaviorError" code:5 debugDescription:@"Requested removing content item that is not in the queue."];
    (v6)[2](v6, v20);
  }
}

- (void)moveContentItemID:(id)a3 beforeContentItemID:(id)a4 completion:(id)a5
{
  v55 = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = a4;
  v11 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:a3];
  v12 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:v10];

  v13 = [v11 sectionID];
  v14 = [(_MPCQueueControllerBehaviorMusic *)self _identifierListForSection:v13];

  v15 = [v11 itemID];
  v16 = [v11 sectionID];
  v17 = [v14 hasItem:v15 inSection:v16];

  if (v17)
  {
    v18 = [v12 sectionID];
    v19 = [(_MPCQueueControllerBehaviorMusic *)self _identifierListForSection:v18];

    v20 = [v12 itemID];
    v21 = [v12 sectionID];
    v22 = [v19 hasItem:v20 inSection:v21];

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
      v9[2](v9, v26);

LABEL_8:
      goto LABEL_9;
    }

    v46 = v19;
    v49 = [(_MPCQueueControllerBehaviorMusic *)self host];
    v48 = [v49 beginEditWithReason:@"BehaviorMusic-moveItemBeforeItem"];
    v27 = MEMORY[0x1E6970948];
    v28 = [v12 itemID];
    v29 = [v12 sectionID];
    v30 = [v27 positionForItem:v28 inSection:v29];
    v31 = [v14 enumeratorWithOptions:9 startPosition:v30 endPosition:0];

    v47 = v31;
    v32 = [v31 nextObject];
    v33 = [v32 entryType];
    if (v33 > 2)
    {
      if (v33 == 3)
      {
        v34 = [v11 itemID];
        v45 = [v11 sectionID];
        v43 = [v32 itemResult];
        v37 = [v43 itemIdentifier];
        v38 = [v32 itemResult];
        v39 = [v38 sectionIdentifier];
        [v14 moveItem:v34 fromSection:v45 afterItem:v37 inSection:v39];

        v19 = v46;
        goto LABEL_21;
      }

      v19 = v46;
      if (v33 == 4)
      {
        v34 = [v11 itemID];
        v35 = [v11 sectionID];
        v44 = [v32 trackingEntryResult];
        v36 = [v44 sectionIdentifier];
        [v14 moveItem:v34 fromSection:v35 afterTailOfSection:v36];
        goto LABEL_20;
      }

      if (v33 != 5)
      {
LABEL_22:
        if (!self->_hasUserMutations)
        {
          self->_hasUserMutations = 1;
        }

        v40 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = [v49 engineID];
          v42 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
          *buf = 138543618;
          v52 = v41;
          v53 = 2114;
          v54 = v42;
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
        v9[2](v9, 0);

        goto LABEL_8;
      }
    }

    else
    {
      v19 = v46;
      if (v33 >= 2)
      {
        if (v33 == 2)
        {
          v34 = [v11 itemID];
          v35 = [v11 sectionID];
          v44 = [v32 trackingEntryResult];
          v36 = [v44 sectionIdentifier];
          [v14 moveItem:v34 fromSection:v35 afterHeadOfSection:v36];
LABEL_20:

          goto LABEL_21;
        }

        goto LABEL_22;
      }
    }

    v34 = [MEMORY[0x1E696AAA8] currentHandler];
    [v34 handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:2715 description:{@"Unexpected entry type when reverse enumerating for before item: %d", objc_msgSend(v32, "entryType")}];
LABEL_21:

    goto LABEL_22;
  }

  v25 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicBehaviorError" code:5 debugDescription:@"Received a move command but the source is not available in the queue."];
  v9[2](v9, v25);

LABEL_9:
}

- (void)moveContentItemID:(id)a3 afterContentItemID:(id)a4 completion:(id)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = a4;
  v10 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:a3];
  v11 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:v9];

  v12 = [v10 sectionID];
  v13 = [(_MPCQueueControllerBehaviorMusic *)self _identifierListForSection:v12];

  v14 = [v10 itemID];
  v15 = [v10 sectionID];
  v16 = [v13 hasItem:v14 inSection:v15];

  if (v16)
  {
    v17 = [v11 sectionID];
    v18 = [(_MPCQueueControllerBehaviorMusic *)self _identifierListForSection:v17];

    v19 = [v11 itemID];
    v20 = [v11 sectionID];
    v21 = [v18 hasItem:v19 inSection:v20];

    if (v21)
    {
      if (v13 == v18)
      {
        v34 = [(_MPCQueueControllerBehaviorMusic *)self host];
        v33 = [v34 beginEditWithReason:@"BehaviorMusic-moveItemAfterItem"];
        v26 = [v10 itemID];
        v27 = [v10 sectionID];
        v28 = [v11 itemID];
        v29 = [v11 sectionID];
        [v13 moveItem:v26 fromSection:v27 afterItem:v28 inSection:v29];

        if (!self->_hasUserMutations)
        {
          self->_hasUserMutations = 1;
        }

        v30 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = [v34 engineID];
          v32 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
          *buf = 138543618;
          v37 = v31;
          v38 = 2114;
          v39 = v32;
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
        v8[2](v8, 0);

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
    (v8)[2](v8, v25);

LABEL_8:
    goto LABEL_9;
  }

  v24 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicBehaviorError" code:5 debugDescription:@"Received a move command but the source is not available in the queue."];
  (v8)[2](v8, v24);

LABEL_9:
}

- (id)_idenitiferListForPosition:(int64_t)a3 afterContentItemID:(id)a4 existingUpNextSectionID:(id)a5 createdUpNextSectionID:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (a3 == 2)
  {
    goto LABEL_2;
  }

  if (!(v12 | v13))
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:2606 description:{@"Missing upNextSectionID for position: %ld afterContentItemID: %@", a3, v11}];
  }

  if (a3 > 2)
  {
    if (a3 == 4)
    {
      v20 = self->_identifierList;
      goto LABEL_19;
    }

    if (a3 != 3)
    {
LABEL_17:
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      [v21 handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:2631 description:{@"Unsupported insertion position %d for %s | ", a3, "-[_MPCQueueControllerBehaviorMusic _idenitiferListForPosition:afterContentItemID:existingUpNextSectionID:createdUpNextSectionID:]"}];

      v17 = 0;
      goto LABEL_20;
    }

LABEL_14:
    if (v12)
    {
LABEL_2:
      v15 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:v11];
      v16 = [v15 sectionID];
      v17 = [(_MPCQueueControllerBehaviorMusic *)self _identifierListForSection:v16];

      goto LABEL_20;
    }

    v19 = self;
    v18 = v14;
    goto LABEL_16;
  }

  if (!a3)
  {
    goto LABEL_14;
  }

  if (a3 != 1)
  {
    goto LABEL_17;
  }

  if (v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = v14;
  }

  v19 = self;
LABEL_16:
  v20 = [(_MPCQueueControllerBehaviorMusic *)v19 _identifierListForSection:v18];
LABEL_19:
  v17 = v20;
LABEL_20:

  return v17;
}

- (void)_qfa_performInsertPlaybackContext:(id)a3 atPosition:(int64_t)a4 afterContentItemID:(id)a5 sectionIdentifier:(id)a6 actions:(unint64_t)a7 completion:(id)a8
{
  v210 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v186 = a5;
  v184 = a6;
  v185 = a8;
  v187 = [(_MPCQueueControllerBehaviorMusic *)self host];
  if (a4 != 2 || (a7 & 0x40) == 0)
  {
    if (a4 == 3)
    {
      v19 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:v186];
      if ([v19 type] != 3)
      {
        a4 = 3;
        goto LABEL_23;
      }

      v31 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = [v187 engineID];
        v33 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
        [v19 deferredNextContentItemID];
        v35 = v34 = v15;
        *buf = 138543874;
        v199 = v32;
        v200 = 2114;
        v201 = v33;
        v202 = 2114;
        v203 = v35;
        _os_log_impl(&dword_1C5C61000, v31, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _performInsertPlaybackContext: | converting PositionSpecified item to deferredNextContentItem [specified placeholder item] deferredNextContentItem=%{public}@", buf, 0x20u);

        v15 = v34;
      }

      v36 = [v19 deferredNextContentItemID];

      if (!v36)
      {
        v62 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          v63 = [v187 engineID];
          v64 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
          *buf = 138543618;
          v199 = v63;
          v200 = 2114;
          v201 = v64;
          _os_log_impl(&dword_1C5C61000, v62, OS_LOG_TYPE_ERROR, "[BMUS:%{public}@:%{public}@] _performInsertPlaybackContext: | failed to convert to deferredNextContentItem PositionSpecified [deferredNextContentItemID is nil]", buf, 0x16u);
        }

        v29 = MEMORY[0x1E696ABC0];
        v30 = @"The specified insertion position [specified] was unsupported because the specified item is a placeholder and there is no deferredNextContentItemAnchorID.";
        goto LABEL_41;
      }
    }

    else
    {
      if (a4)
      {
        v19 = 0;
        goto LABEL_23;
      }

      v19 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:v186];
      if ([v19 type] != 3)
      {
        a4 = 0;
        goto LABEL_23;
      }

      v20 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v187 engineID];
        v22 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
        [v19 deferredNextContentItemID];
        v24 = v23 = v15;
        *buf = 138543874;
        v199 = v21;
        v200 = 2114;
        v201 = v22;
        v202 = 2114;
        v203 = v24;
        _os_log_impl(&dword_1C5C61000, v20, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _performInsertPlaybackContext: | converting PositionHead to PositionSpecified after deferredNextContentItem [head (current item was placeholder)] deferredNextContentItem=%{public}@", buf, 0x20u);

        v15 = v23;
      }

      v25 = [v19 deferredNextContentItemID];

      if (!v25)
      {
        v26 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = [v187 engineID];
          v28 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
          *buf = 138543618;
          v199 = v27;
          v200 = 2114;
          v201 = v28;
          _os_log_impl(&dword_1C5C61000, v26, OS_LOG_TYPE_ERROR, "[BMUS:%{public}@:%{public}@] _performInsertPlaybackContext: | failed to convert to deferredNextContentItem PositionSpecified [deferredNextContentItemID is nil]", buf, 0x16u);
        }

        v29 = MEMORY[0x1E696ABC0];
        v30 = @"The specified insertion position [head] was unsupported because the current item is a placeholder and there is no deferredNextContentItemAnchorID.";
LABEL_41:
        v182 = [v29 msv_errorWithDomain:@"MPCMusicBehaviorError" code:4 debugDescription:v30];
        v185[2](v185, 0);

        goto LABEL_157;
      }
    }

    v37 = [v19 deferredNextContentItemID];
    v38 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:v37];

    a4 = 3;
    v19 = v38;
LABEL_23:
    v181 = [v15 copy];
    v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BehaviorMusic-insertPlaybackContext-<%@: %p>", objc_opt_class(), v181];
    v180 = [v187 beginEditWithReason:v39];

    WeakRetained = objc_loadWeakRetained(&self->_musicBehaviorDelegate);
    v40 = [(_MPCQueueControllerBehaviorMusic *)self tailInsertionContentItemIDForTargetContentItemID:v186];
    v41 = v40;
    if ((a7 & 0x40) == 0 || v40)
    {
      v169 = a2;
      v183 = [(_MPCQueueControllerBehaviorMusic *)self _upNextSectionIdentifierForItem:v19];
      v47 = 0;
      [(_MPCQueueControllerBehaviorMusic *)self _idenitiferListForPosition:a4 afterContentItemID:v186 existingUpNextSectionID:v183 createdUpNextSectionID:0];
      goto LABEL_44;
    }

    v183 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:v186];
    v42 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v183 behaviorFlags];
    v43 = v42;
    if (a4 == 1 && (v42 & 1) != 0)
    {
      [(_MPCQueueControllerBehaviorMusicDataSourceState *)v180 rollback];
      v44 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v45 = [v187 engineID];
        v46 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
        *buf = 138543618;
        v199 = v45;
        v200 = 2114;
        v201 = v46;
        _os_log_impl(&dword_1C5C61000, v44, OS_LOG_TYPE_ERROR, "[BMUS:%{public}@:%{public}@] _performInsertPlaybackContext: | rolling back edit [cannot insert at end of autoPlayIdentifierList]", buf, 0x16u);
      }

      v47 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicBehaviorError" code:4 debugDescription:@"Cannot insert at end of autoPlayIdentifierList [no existing UpNextSection]"];
      (v185[2])(v185, 0, v47);
      goto LABEL_156;
    }

    v172 = v15;
    v48 = MSVNanoIDCreateTaggedPointer();
    v47 = [@"UPNXT-" stringByAppendingString:v48];

    objc_storeStrong(&self->_latestUpNextSectionID, v47);
    v49 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v50 = [v187 engineID];
      [(_MPCQueueControllerBehaviorMusic *)self sessionID];
      v52 = v51 = v47;
      *buf = 138543874;
      v199 = v50;
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
      v178 = a7;
      v58 = self;
      v60 = v59 = v19;
      [(MPSectionedIdentifierList *)autoPlayIdentifierList addDataSource:v54 section:v56 afterItem:v57 inSection:v60 completion:&__block_literal_global_511];
    }

    else
    {
      identifierList = self->_identifierList;
      if (a4 == 1)
      {
        [(MPShuffleableSectionedIdentifierList *)self->_identifierList addDataSourceAtEnd:v54 section:v47 sequentially:1 completion:&__block_literal_global_513];
        goto LABEL_43;
      }

      [(_MPCQueueControllerBehaviorMusicDataSourceState *)v183 itemID];
      v57 = v56 = v47;
      [(_MPCQueueControllerBehaviorMusicDataSourceState *)v183 sectionID];
      v178 = a7;
      v58 = self;
      v60 = v59 = v19;
      [(MPShuffleableSectionedIdentifierList *)identifierList addDataSource:v54 section:v56 sequentially:1 afterItem:v57 inSection:v60 completion:&__block_literal_global_515];
    }

    v19 = v59;
    self = v58;
    a7 = v178;

    v47 = v56;
LABEL_43:

    v183 = 0;
    v15 = v172;
    v41 = 0;
    [(_MPCQueueControllerBehaviorMusic *)self _idenitiferListForPosition:a4 afterContentItemID:v186 existingUpNextSectionID:0 createdUpNextSectionID:v47];
LABEL_44:
    v179 = v176 = v47;
    if (!v179)
    {
      v70 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
      if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        v71 = [v187 engineID];
        v72 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
        *buf = 138544386;
        v199 = v71;
        v200 = 2114;
        v201 = v72;
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
      if (a4 == 4)
      {
        [(_MPCQueueControllerBehaviorMusicDataSourceState *)v180 rollback];
        v65 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          v66 = [v187 engineID];
          v67 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
          *buf = 138543618;
          v199 = v66;
          v200 = 2114;
          v201 = v67;
          _os_log_impl(&dword_1C5C61000, v65, OS_LOG_TYPE_ERROR, "[BMUS:%{public}@:%{public}@] _performInsertPlaybackContext: | rolling back edit [cannot insert at start of autoPlayIdentifierList]", buf, 0x16u);

          v47 = v176;
        }

        v68 = MEMORY[0x1E696ABC0];
        v69 = @"Cannot insert at start of autoPlayIdentifierList";
LABEL_55:
        v74 = [v68 msv_errorWithDomain:@"MPCMusicBehaviorError" code:4 debugDescription:{v69, v165}];
        (v185[2])(v185, 0, v74);
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
      v96 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v94 sectionIdentifier];
      v97 = [(NSMutableDictionary *)dataSources objectForKeyedSubscript:v96];

      if (v97)
      {
        v160 = [MEMORY[0x1E696AAA8] currentHandler];
        [v160 handleFailureInMethod:v169 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:2440 description:@"Attempting to add datasource for an already existing section."];
      }

      v98 = [v187 eventStream];
      [(_MPCQueueControllerBehaviorMusicDataSourceState *)v94 setEventStream:v98];

      v99 = [v187 playerID];
      [(_MPCQueueControllerBehaviorMusicDataSourceState *)v94 setPlayerID:v99];

      v100 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
      if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
      {
        v101 = [v187 engineID];
        v102 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
        [(_MPCQueueControllerBehaviorMusicDataSourceState *)v94 sectionIdentifier];
        v104 = v103 = v15;
        *buf = 138544130;
        v199 = v101;
        v200 = 2114;
        v201 = v102;
        v202 = 2048;
        v203 = v94;
        v204 = 2114;
        v205 = v104;
        _os_log_impl(&dword_1C5C61000, v100, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _performInsertPlaybackContext: | adding dataSource [] dataSource=%p section=%{public}@", buf, 0x2Au);

        v15 = v103;
      }

      v105 = self->_dataSources;
      v106 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v94 sectionIdentifier];
      [(NSMutableDictionary *)v105 setObject:v94 forKeyedSubscript:v106];

      v107 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v94 sectionIdentifier];
      [(_MPCQueueControllerBehaviorMusic *)self _emitEventsForAddingPlaybackContext:v15 sectionIdentifier:v107];

      if ((a7 & 2) == 0)
      {
        v108 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v94 playbackContext];
        [v108 setShuffleType:0];
      }

      v41 = v175;
      if ((a7 & 4) == 0)
      {
        v109 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v94 playbackContext];
        [v109 setRepeatType:0];
      }

      v173 = v15;
      if ((a7 & 1) == 0)
      {
        v110 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v94 playbackContext];
        [v110 clearStartItem];
      }

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __137___MPCQueueControllerBehaviorMusic__qfa_performInsertPlaybackContext_atPosition_afterContentItemID_sectionIdentifier_actions_completion___block_invoke_526;
      aBlock[3] = &unk_1E8232AB0;
      v196 = a7;
      v189 = v181;
      v167 = v187;
      v190 = v167;
      v191 = self;
      v74 = v94;
      v192 = v74;
      v193 = WeakRetained;
      v197 = a7 & 1;
      v194 = v180;
      v195 = v185;
      v166 = _Block_copy(aBlock);
      v111 = self->_identifierList;
      v112 = @"auto";
      if (v179 == v111)
      {
        v112 = @"base";
      }

      v168 = v112;
      v47 = v176;
      if (a4 > 2)
      {
        v19 = v171;
        if (a4 != 3)
        {
          if (a4 == 4)
          {
            v141 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
            if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
            {
              v142 = [v167 engineID];
              v143 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
              v144 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v74 sectionIdentifier];
              *buf = 138544130;
              v199 = v142;
              v200 = 2114;
              v201 = v143;
              v202 = 2114;
              v203 = v168;
              v204 = 2114;
              v205 = v144;
              _os_log_impl(&dword_1C5C61000, v141, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _performInsertPlaybackContext: | adding data source [] sil=%{public}@ position=Start section=%{public}@", buf, 0x2Au);

              v41 = v175;
              v19 = v171;
            }

            if (v179 != v111)
            {
              v161 = [MEMORY[0x1E696AAA8] currentHandler];
              [v161 handleFailureInMethod:v169 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:2558 description:@"Cannot insert at Start of AutoPlay SIL"];
            }

            v145 = self->_identifierList;
            v118 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v74 sectionIdentifier];
            v119 = v166;
            [(MPShuffleableSectionedIdentifierList *)v145 addDataSourceAtStart:v74 section:v118 completion:v166];
            goto LABEL_150;
          }

          if (a4 == 100)
          {
            v120 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
            if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
            {
              v121 = [v167 engineID];
              v122 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
              v123 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v74 sectionIdentifier];
              *buf = 138544386;
              v199 = v121;
              v200 = 2114;
              v201 = v122;
              v202 = 2114;
              v203 = v168;
              v204 = 2114;
              v205 = v123;
              v206 = 2114;
              v207 = v184;
              _os_log_impl(&dword_1C5C61000, v120, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _performInsertPlaybackContext: | adding data source [] sil=%{public}@ position=AfterSection section=%{public}@ afterSection=%{public}@", buf, 0x34u);

              v19 = v171;
              v41 = v175;
            }

            if (v179 == v111)
            {
              v154 = self->_identifierList;
              v118 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v74 sectionIdentifier];
              v119 = v166;
              [(MPShuffleableSectionedIdentifierList *)v154 addDataSource:v74 section:v118 sequentially:1 afterTailOfSection:v184 completion:v166];
            }

            else
            {
              v124 = self->_autoPlayIdentifierList;
              v118 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v74 sectionIdentifier];
              v119 = v166;
              [(MPSectionedIdentifierList *)v124 addDataSource:v74 section:v118 afterTailOfSection:v184 completion:v166];
            }

            goto LABEL_150;
          }

          goto LABEL_118;
        }

        if (!v183)
        {
          if (!v176)
          {
            v163 = [MEMORY[0x1E696AAA8] currentHandler];
            [v163 handleFailureInMethod:v169 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:2535 description:@"Attempt to insert at Specified without creating UpNext section"];
          }

          v148 = _MPCLogCategoryMusicBehavior();
          if (!os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_146;
          }

          v149 = [v167 engineID];
          v150 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
          v151 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v74 sectionIdentifier];
          *buf = 138544386;
          v199 = v149;
          v200 = 2114;
          v201 = v150;
          v202 = 2114;
          v203 = v168;
          v204 = 2114;
          v205 = v151;
          v206 = 2114;
          v207 = v176;
          v152 = "[BMUS:%{public}@:%{public}@] _performInsertPlaybackContext: | adding data source [] sil=%{public}@ position=Specified section=%{public}@ upNextSection=%{public}@";
          goto LABEL_145;
        }

        v125 = _MPCLogCategoryMusicBehavior();
        if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
        {
          v170 = [v167 engineID];
          v126 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
          v127 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v74 sectionIdentifier];
          v128 = [v171 itemID];
          v129 = [v171 sectionID];
          *buf = 138544642;
          v199 = v170;
          v200 = 2114;
          v201 = v126;
          v202 = 2114;
          v203 = v168;
          v204 = 2114;
          v205 = v127;
          v206 = 2114;
          v207 = v128;
          v208 = 2114;
          v209 = v129;
          v130 = "[BMUS:%{public}@:%{public}@] _performInsertPlaybackContext: | adding data source [] sil=%{public}@ position=Specified section=%{public}@ afterItem=%{public}@ inSection=%{public}@";
          goto LABEL_115;
        }
      }

      else
      {
        v19 = v171;
        if (a4)
        {
          if (a4 != 1)
          {
            if (a4 == 2)
            {
              v113 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
              if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
              {
                v114 = [v167 engineID];
                v115 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
                v116 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v74 sectionIdentifier];
                *buf = 138544130;
                v199 = v114;
                v200 = 2114;
                v201 = v115;
                v202 = 2114;
                v203 = v168;
                v204 = 2114;
                v205 = v116;
                _os_log_impl(&dword_1C5C61000, v113, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _performInsertPlaybackContext: | adding data source [] sil=%{public}@ position=Last section=%{public}@", buf, 0x2Au);

                v41 = v175;
                v19 = v171;
              }

              if (v179 == v111)
              {
                v153 = self->_identifierList;
                v118 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v74 sectionIdentifier];
                v119 = v166;
                [(MPShuffleableSectionedIdentifierList *)v153 addDataSourceAtEnd:v74 section:v118 sequentially:1 completion:v166];
              }

              else
              {
                v117 = self->_autoPlayIdentifierList;
                v118 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v74 sectionIdentifier];
                v119 = v166;
                [(MPSectionedIdentifierList *)v117 addDataSourceAtEnd:v74 section:v118 completion:v166];
              }

              goto LABEL_150;
            }

LABEL_118:
            v118 = [MEMORY[0x1E696AAA8] currentHandler];
            [v118 handleFailureInMethod:v169 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:2594 description:{@"Unsupported insertion position %d for %s | ", a4, "-[_MPCQueueControllerBehaviorMusic _qfa_performInsertPlaybackContext:atPosition:afterContentItemID:sectionIdentifier:actions:completion:]"}];
            v119 = v166;
            goto LABEL_151;
          }

          if (v183)
          {
            v136 = _MPCLogCategoryMusicBehavior();
            if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
            {
              v137 = [v167 engineID];
              v138 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
              v139 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v74 sectionIdentifier];
              *buf = 138544386;
              v199 = v137;
              v200 = 2114;
              v201 = v138;
              v202 = 2114;
              v203 = v168;
              v204 = 2114;
              v205 = v139;
              v206 = 2114;
              v207 = v183;
              _os_log_impl(&dword_1C5C61000, v136, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _performInsertPlaybackContext: | adding data source [] sil=%{public}@ position=Tail section=%{public}@ upNextSection=%{public}@", buf, 0x34u);

              v19 = v171;
              v41 = v175;
            }

            if (v179 == v111)
            {
              v159 = self->_identifierList;
              v118 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v74 sectionIdentifier];
              v119 = v166;
              [(MPShuffleableSectionedIdentifierList *)v159 addDataSource:v74 section:v118 sequentially:1 beforeTailOfSection:v183 completion:v166];
            }

            else
            {
              v140 = self->_autoPlayIdentifierList;
              v118 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v74 sectionIdentifier];
              v119 = v166;
              [(MPSectionedIdentifierList *)v140 addDataSource:v74 section:v118 beforeTailOfSection:v183 completion:v166];
            }

            goto LABEL_150;
          }

          if (!v176)
          {
            v164 = [MEMORY[0x1E696AAA8] currentHandler];
            [v164 handleFailureInMethod:v169 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:2573 description:@"Attempt to insert at Tail without creating UpNext section"];
          }

          v148 = _MPCLogCategoryMusicBehavior();
          if (!os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
          {
LABEL_146:

            if (v179 == v111)
            {
              v157 = self->_identifierList;
              v118 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v74 sectionIdentifier];
              v158 = v157;
              v47 = v176;
              v119 = v166;
              [(MPShuffleableSectionedIdentifierList *)v158 addDataSource:v74 section:v118 sequentially:1 beforeTailOfSection:v176 completion:v166];
            }

            else
            {
              v155 = self->_autoPlayIdentifierList;
              v118 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v74 sectionIdentifier];
              v156 = v155;
              v47 = v176;
              v119 = v166;
              [(MPSectionedIdentifierList *)v156 addDataSource:v74 section:v118 beforeTailOfSection:v176 completion:v166];
            }

            goto LABEL_151;
          }

          v149 = [v167 engineID];
          v150 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
          v151 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v74 sectionIdentifier];
          *buf = 138544386;
          v199 = v149;
          v200 = 2114;
          v201 = v150;
          v202 = 2114;
          v203 = v168;
          v204 = 2114;
          v205 = v151;
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
            v162 = [MEMORY[0x1E696AAA8] currentHandler];
            [v162 handleFailureInMethod:v169 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:2512 description:@"Attempt to insert at Head without creating UpNext section"];
          }

          v148 = _MPCLogCategoryMusicBehavior();
          if (!os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_146;
          }

          v149 = [v167 engineID];
          v150 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
          v151 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v74 sectionIdentifier];
          *buf = 138544386;
          v199 = v149;
          v200 = 2114;
          v201 = v150;
          v202 = 2114;
          v203 = v168;
          v204 = 2114;
          v205 = v151;
          v206 = 2114;
          v207 = v176;
          v152 = "[BMUS:%{public}@:%{public}@] _performInsertPlaybackContext: | adding data source [] sil=%{public}@ position=Head section=%{public}@ upNextSection=%{public}@";
          goto LABEL_145;
        }

        v125 = _MPCLogCategoryMusicBehavior();
        if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
        {
          v170 = [v167 engineID];
          v126 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
          v127 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v74 sectionIdentifier];
          v128 = [v171 itemID];
          v129 = [v171 sectionID];
          *buf = 138544642;
          v199 = v170;
          v200 = 2114;
          v201 = v126;
          v202 = 2114;
          v203 = v168;
          v204 = 2114;
          v205 = v127;
          v206 = 2114;
          v207 = v128;
          v208 = 2114;
          v209 = v129;
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
        v118 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v74 sectionIdentifier];
        v132 = [v19 itemID];
        v133 = [v19 sectionID];
        v147 = v146;
        v135 = v166;
        [(MPShuffleableSectionedIdentifierList *)v147 addDataSource:v74 section:v118 sequentially:1 afterItem:v132 inSection:v133 completion:v166];
      }

      else
      {
        v131 = self->_autoPlayIdentifierList;
        v118 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)v74 sectionIdentifier];
        v132 = [v19 itemID];
        v133 = [v19 sectionID];
        v134 = v131;
        v135 = v166;
        [(MPSectionedIdentifierList *)v134 addDataSource:v74 section:v118 afterItem:v132 inSection:v133 completion:v166];
      }

      v19 = v171;
      v119 = v135;
LABEL_150:
      v47 = v176;
LABEL_151:

      if ((a7 & 0x10) == 0 && !self->_hasUserMutations)
      {
        self->_hasUserMutations = 1;
      }

      [v167 behaviorDidChange];

      v15 = v173;
      goto LABEL_155;
    }

    if ([v181 shuffleType] == 1000)
    {
      v75 = [MEMORY[0x1E69708A8] standardUserDefaults];
      v76 = [v75 musicShuffleType];

      [v181 setShuffleType:v76];
    }

    v77 = [v181 repeatType];
    if (v77 == 3)
    {
      v78 = [MEMORY[0x1E69708A8] standardUserDefaults];
      v77 = [v78 musicRepeatType];

      [v181 setRepeatType:v77];
    }

    if ((a7 & 4) != 0 && self->_repeatType != v77)
    {
      self->_repeatType = v77;
      [(_MPCQueueControllerBehaviorMusic *)self _emitEventsForPlaybackBehaviorChangeIfNeeded];
      [WeakRetained behavior:self didChangeRepeatType:v77];
    }

    if ([objc_opt_class() supportsAutoPlay])
    {
      v79 = [v181 queueEndAction];
      if (v79 == 1000)
      {
        v80 = [v181 userIdentity];
        v81 = [MEMORY[0x1E69708A8] standardUserDefaults];
        v82 = v41;
        v83 = self;
        v84 = v19;
        v85 = [v81 autoPlayEnabledForUserIdentity:v80];

        v86 = v85 == 0;
        v19 = v84;
        self = v83;
        v41 = v82;
        if (v86)
        {
          v79 = 2;
        }

        else
        {
          v79 = 3;
        }

        [v181 setQueueEndAction:v79];
      }

      if ((a7 & 0x20) == 0 || self->_autoPlayState)
      {
        goto LABEL_82;
      }

      v87 = self;
      if (v79 == 3)
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
        v91 = [v187 engineID];
        [(_MPCQueueControllerBehaviorMusic *)self sessionID];
        v174 = v41;
        v93 = v92 = v19;
        *buf = 138543618;
        v199 = v91;
        v200 = 2114;
        v201 = v93;
        _os_log_impl(&dword_1C5C61000, v90, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _performInsertPlaybackContext: | disabling auto play [data source unsupported]", buf, 0x16u);

        v19 = v92;
        v41 = v174;
      }

      v87 = self;
      v88 = 1;
    }

    [(_MPCQueueControllerBehaviorMusic *)v87 _transitionToAutoPlayState:v88];
    goto LABEL_82;
  }

  v16 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = [v187 engineID];
    v18 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
    *buf = 138543618;
    v199 = v17;
    v200 = 2114;
    v201 = v18;
    _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_ERROR, "[BMUS:%{public}@:%{public}@] _performInsertPlaybackContext: | failed [insert at Last is not supported -- MediaPlayer/QueueFA is ON]", buf, 0x16u);
  }

  v19 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicBehaviorError" code:4 debugDescription:@"Cannot insert at Last [MediaPlayer/QueueFA is ON]"];
  (v185[2])(v185, 0, v19);
LABEL_157:
}

- (void)performInsertCommand:(id)a3 targetContentItemID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 playbackQueue];
  v12 = [(_MPCQueueControllerBehaviorMusic *)self _playbackContextOptions];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __88___MPCQueueControllerBehaviorMusic_performInsertCommand_targetContentItemID_completion___block_invoke;
  v17[3] = &unk_1E8232A60;
  v21 = v9;
  v22 = v10;
  v18 = v11;
  v19 = v8;
  v20 = self;
  v13 = v9;
  v14 = v8;
  v15 = v11;
  v16 = v10;
  [v15 getMusicPlaybackContextWithOptions:v12 completion:v17];
}

- (id)tailInsertionContentItemIDForTargetContentItemID:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v6 = 0;
    goto LABEL_17;
  }

  v5 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:v4];
  if (![v5 type])
  {
    v7 = [(_MPCQueueControllerBehaviorMusic *)self _upNextSectionIdentifierForItem:v5];
    v8 = [(_MPCQueueControllerBehaviorMusic *)self _tailInsertionComponentsForUpNextSectionID:v7];
    v9 = v4;
    v10 = v9;
    if ([v5 repeatIteration])
    {
      v11 = [v5 copyWithRepeatIteration:0];
      v10 = [v11 contentItemID];
    }

    v12 = [v8 contentItemID];
    if (v10 == v12 || [v10 isEqual:v12])
    {
      v13 = [v5 repeatIteration];

      if (!v13)
      {
        goto LABEL_12;
      }

      v12 = v8;
      v8 = [v8 copyWithRepeatIteration:{objc_msgSend(v5, "repeatIteration")}];
    }

LABEL_12:
    v14 = [v8 contentItemID];
    v6 = v14;
    if (v14 == v9 || [v14 isEqual:v9])
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

- (BOOL)isSupportedInsertionPosition:(int64_t)a3 fromContentItemID:(id)a4 reason:(id *)a5
{
  v9 = a4;
  if (!v9)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:2132 description:{@"Invalid parameter not satisfying: %@", @"contentItemID"}];
  }

  if (![(_MPCQueueControllerBehaviorMusic *)self canNextItemFromContentItemID:v9 reason:a5])
  {
    if (a5 && !*a5)
    {
      v10 = 0;
      v13 = @"unskippable item";
LABEL_24:
      *a5 = v13;
      goto LABEL_32;
    }

LABEL_16:
    v10 = 0;
    goto LABEL_32;
  }

  v10 = 1;
  if (a3 > 1)
  {
    if (a3 != 2)
    {
      if (a3 == 3)
      {
        goto LABEL_32;
      }

      goto LABEL_19;
    }

    if (a5)
    {
      v10 = 0;
      v13 = @"QueueFA";
      goto LABEL_24;
    }

    goto LABEL_16;
  }

  if (a3)
  {
    if (a3 == 1)
    {
      v11 = [(_MPCQueueControllerBehaviorMusic *)self tailInsertionContentItemIDForTargetContentItemID:v9];
      if (v11)
      {
LABEL_31:

        goto LABEL_32;
      }

      if (self->_activeItemFlags)
      {
        if (a5)
        {
          v10 = 0;
          v14 = @"active item from AutoPlay";
LABEL_29:
          *a5 = v14;
          goto LABEL_31;
        }
      }

      else
      {
        if ([(_MPCQueueControllerBehaviorMusic *)self _allDataSourcesSupportInsertionPositionLast])
        {
          v12 = [(_MPCQueueControllerBehaviorMusic *)self lastSectionContentItemIDForTargetContentItemID:v9];
          v10 = v12 != 0;
          if (a5 && !v12)
          {
            *a5 = @"no UpNext section, no LastSectionContentItemID";
          }

          goto LABEL_31;
        }

        if (a5)
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
    if (a5)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"unsupported position: %ld", a3];
      *a5 = v10 = 0;
      goto LABEL_32;
    }

    goto LABEL_16;
  }

LABEL_32:

  return v10;
}

- (void)canReuseQueue:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([objc_opt_class() canLoadQueue:v6 reason:0] & 1) == 0)
  {
    goto LABEL_7;
  }

  if ([(_MPCQueueControllerBehaviorMusic *)self _shouldFailWithOverridingErrorForQueue:v6])
  {
    v8 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicBehaviorError" code:10 debugDescription:@"has Queue"];
    (*(v7 + 2))(v7, 0, 0, 0, v8);

    goto LABEL_8;
  }

  if (self->_hasUserMutations || [(NSMutableDictionary *)self->_dataSources count]> 1 || [(MPShuffleableSectionedIdentifierList *)self->_identifierList shuffleType])
  {
LABEL_7:
    (*(v7 + 2))(v7, 0, 0, 0, 0);
    goto LABEL_8;
  }

  v9 = [(NSMutableDictionary *)self->_dataSources allValues];
  v10 = [v9 firstObject];

  v11 = [v10 playbackContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [(_MPCQueueControllerBehaviorMusic *)self _playbackContextOptions];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __61___MPCQueueControllerBehaviorMusic_canReuseQueue_completion___block_invoke;
    v13[3] = &unk_1E8237DD0;
    v16 = v7;
    v14 = v11;
    v15 = self;
    [v6 getMusicPlaybackContextWithOptions:v12 completion:v13];
  }

  else
  {
    (*(v7 + 2))(v7, 0, 0, 0, 0);
  }

LABEL_8:
}

- (BOOL)_shouldFailWithOverridingErrorForQueue:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_playNowInsertionContentItemID)
  {
    v5 = [(_MPCQueueControllerBehaviorMusic *)self tailInsertionContentItemIDForTargetContentItemID:?];
    if (!v5)
    {
      v15 = 0;
LABEL_22:

      goto LABEL_23;
    }

    v6 = [(_MPCQueueControllerBehaviorMusic *)self host];
    v7 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:self->_playNowInsertionContentItemID];
    v8 = [(_MPCQueueControllerBehaviorMusic *)self _upNextSectionIdentifierForItem:v7];
    if (v8)
    {
      v9 = [v4 mediaRemoteOptions];
      v10 = [v9 objectForKeyedSubscript:@"kMRMediaRemoteOptionDialogOptions"];

      if (v10)
      {
        v11 = [v10 objectForKeyedSubscript:@"selectedAction"];
        if ([v11 isEqualToString:@"clearQueue"])
        {
          v12 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [v6 engineID];
            v14 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
            v21 = 138543618;
            v22 = v13;
            v23 = 2114;
            v24 = v14;
            _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] _shouldFailWithOverridingErrorForQueue: | deferring to SetQueue [selectedDialogAction = clearQueue]", &v21, 0x16u);
          }

          goto LABEL_12;
        }
      }

      else
      {
        if ([v4 replaceIntent] == 1)
        {
          v17 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = [v6 engineID];
            v19 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
            v21 = 138543618;
            v22 = v18;
            v23 = 2114;
            v24 = v19;
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

    v11 = [v6 engineID];
    v12 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
    playNowInsertionContentItemID = self->_playNowInsertionContentItemID;
    v21 = 138543874;
    v22 = v11;
    v23 = 2114;
    v24 = v12;
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

- (void)groupSession:(id)a3 didUpdateParticipants:(id)a4
{
  v5 = a3;
  v7 = [v5 participants];
  v6 = [v5 host];

  [(_MPCQueueControllerBehaviorMusic *)self _updateGroupSessionParticipants:v7 localParticipant:v6];
}

- (void)groupSessionDidConnect:(id)a3
{
  v4 = a3;
  v6 = [v4 participants];
  v5 = [v4 host];

  [(_MPCQueueControllerBehaviorMusic *)self _updateGroupSessionParticipants:v6 localParticipant:v5];
}

- (int64_t)userTransitionPreference
{
  v2 = [MEMORY[0x1E69708A8] standardUserDefaults];
  v3 = +[MPCPlaybackAccountManager sharedManager];
  v4 = [v3 fallbackAccount];

  v5 = [v2 _areTransitionsEnabledWithSubscription:{objc_msgSend(v4, "hasCatalogPlaybackCapability")}];
  v6 = [v2 transitionStyleForUserWithCatalogPlaybackCapability:{objc_msgSend(v4, "hasCatalogPlaybackCapability")}];
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
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:1957 description:@"TransitionStyle and CrossfadeDuration must always be from the same source"];
  }

  if (transitionsEnabled == 1000 && transitionStyle != 1000)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:1960 description:@"TransitionsEnabled should never be sourced from user defaults while TransitionStyle is sourced from the queue"];

LABEL_17:
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:1974 description:{@"Unsupported source configuration. transitionsEnabledSourceUserDefaults: %d, transitionStyleSourceUserDefaults: %d, crossfadeDurationSourceUserDefaults: %d", transitionsEnabled == 1000, transitionStyle == 1000, v6}];

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
    v5 = [MEMORY[0x1E69708A8] standardUserDefaults];
    [v5 crossFadeDuration];
    v7 = v6;

    return v7;
  }

  return result;
}

- (BOOL)shouldDowngradeTransitionStyle
{
  v2 = [(_MPCQueueControllerBehaviorMusic *)self resolvedTransitionStyle];
  v3 = +[MPCPlaybackAccountManager sharedManager];
  v4 = [v3 fallbackAccount];

  LOBYTE(v3) = [v4 hasCatalogPlaybackCapability];
  LOBYTE(v3) = +[MPCPlaybackEngine deviceSupportsSmartTransitions]& v3 ^ 1;

  return (v2 == 1) & v3;
}

- (int64_t)resolvedTransitionStyle
{
  transitionStyle = self->_transitionStyle;
  v4 = +[MPCPlaybackAccountManager sharedManager];
  v5 = [v4 fallbackAccount];

  if (self->_transitionStyle == 1000)
  {
    v6 = [MEMORY[0x1E69708A8] standardUserDefaults];
    transitionStyle = [v6 transitionStyleForUserWithCatalogPlaybackCapability:{objc_msgSend(v5, "hasCatalogPlaybackCapability")}];
  }

  return transitionStyle;
}

- (void)toggleTransitionsEnabledFromRemoteCommand:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  [(_MPCQueueControllerBehaviorMusic *)self _toggleTransitionsEnabledFromRemoteCommand:v4];
  v6[2](v6, 0);
}

- (BOOL)canUserToggleTransitionsEnabledWithReason:(id *)a3
{
  result = +[MPCPlaybackEngine deviceSupportsTransitions];
  if (a3)
  {
    if (!result)
    {
      *a3 = @"device does not support transitions";
    }
  }

  return result;
}

- (id)lastSectionContentItemIDForTargetContentItemID:(id)a3
{
  v4 = [(_MPCQueueControllerBehaviorMusic *)self tailInsertionContentItemIDForTargetContentItemID:a3];
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(MPShuffleableSectionedIdentifierList *)self->_identifierList orderedSectionIdentifiers];
    if ([v6 count] == 1)
    {
      v7 = [v6 firstObject];
      v8 = [(MPShuffleableSectionedIdentifierList *)self->_identifierList enumeratorWithOptions:24 startPosition:0 endPosition:0];
      v9 = [v8 nextObject];
      v5 = 0;
      if ([v9 entryType] == 3)
      {
        v10 = [v9 itemResult];
        v11 = [v10 itemIdentifier];

        v12 = [v9 itemResult];
        v13 = [v12 sectionIdentifier];

        v14 = [(NSMutableDictionary *)self->_dataSources objectForKeyedSubscript:v7];
        if ([v14 shouldUsePlaceholderForItem:v11 inSection:v13])
        {
          v5 = 0;
        }

        else
        {
          v15 = [v14 dataSource];
          v16 = [v15 modelPlayEventForItem:v11 inSection:v13];

          if (([v16 itemType] & 0xFFFFFFFFFFFFFFFDLL) == 1)
          {
            [MPCQueueControllerBehaviorMusicIdentifierComponents itemComponentsWithSectionID:v13 itemID:v11];
            v17 = v19 = v16;
            v5 = [v17 contentItemID];

            v16 = v19;
          }

          else
          {
            v5 = 0;
          }
        }
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)prepareForCreateStationAfterContentItemID:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_MPCQueueControllerBehaviorMusic *)self host];
  v27 = [v5 beginEditWithReason:@"BehaviorMusic-prepareForCreateStation"];
  [(_MPCQueueControllerBehaviorMusic *)self _setRepeatType:0 reason:@"PrepareForCreateStation"];
  v28 = v4;
  v6 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:v4];
  v7 = MEMORY[0x1E6970948];
  v8 = [v6 itemID];
  v9 = [v6 sectionID];
  v10 = [v7 positionForItem:v8 inSection:v9];
  v11 = [_MPCQueueControllerEnumerator enumeratorWithMusicBehavior:self mode:0 options:0 startPosition:v10 endPosition:0];

  v12 = [v11 nextObject];
  if (v12)
  {
    v13 = v12;
    do
    {
      v14 = [v13 itemResult];
      v15 = [v14 sectionIdentifier];
      v16 = [(_MPCQueueControllerBehaviorMusic *)self _identifierListForSection:v15];

      v17 = [v13 itemResult];
      v18 = [v17 itemIdentifier];
      v19 = [v13 itemResult];
      v20 = [v19 sectionIdentifier];
      [v16 removeItem:v18 fromSection:v20];

      v21 = [v11 nextObject];

      v13 = v21;
    }

    while (v21);
  }

  dataSources = self->_dataSources;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __78___MPCQueueControllerBehaviorMusic_prepareForCreateStationAfterContentItemID___block_invoke;
  v29[3] = &unk_1E8232A10;
  v23 = v5;
  v30 = v23;
  v31 = self;
  [(NSMutableDictionary *)dataSources enumerateKeysAndObjectsUsingBlock:v29];
  if (!self->_hasUserMutations)
  {
    self->_hasUserMutations = 1;
  }

  v24 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [v23 engineID];
    v26 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
    *buf = 138543618;
    v33 = v25;
    v34 = 2114;
    v35 = v26;
    _os_log_impl(&dword_1C5C61000, v24, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] prepareForCreateStationAfterContentItemID: | committing edit [queue updated]", buf, 0x16u);
  }

  [v27 commit];
}

- (void)setHostingSharedSessionID:(id)a3 reason:(id)a4
{
  v28[3] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = self->_activeHostingSharedSessionID;
  v10 = v9;
  if (v9 == v7)
  {
LABEL_15:

    goto LABEL_16;
  }

  v11 = [(NSString *)v9 isEqual:v7];

  if ((v11 & 1) == 0)
  {
    v12 = [(_MPCQueueControllerBehaviorMusic *)self host];
    v10 = v12;
    if (self->_activeHostingSharedSessionID)
    {
      v13 = [(NSString *)v12 eventStream];
      v27[0] = @"session-id";
      v14 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
      v15 = v14;
      if (!v14)
      {
        v15 = [MEMORY[0x1E695DFB0] null];
      }

      activeHostingSharedSessionID = self->_activeHostingSharedSessionID;
      v28[0] = v15;
      v28[1] = activeHostingSharedSessionID;
      v27[1] = @"shared-session-id";
      v27[2] = @"shared-session-event-reason";
      v28[2] = v8;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:3];
      [v13 emitEventType:@"shared-session-end" payload:v17];

      if (!v14)
      {
      }
    }

    objc_storeStrong(&self->_activeHostingSharedSessionID, a3);
    activeGroupSession = self->_activeGroupSession;
    self->_activeGroupSession = 0;

    if (v7)
    {
      v19 = [(NSString *)v10 eventStream];
      v25[0] = @"session-id";
      v20 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
      v21 = v20;
      if (!v20)
      {
        v21 = [MEMORY[0x1E695DFB0] null];
      }

      v26[0] = v21;
      v26[1] = v7;
      v25[1] = @"shared-session-id";
      v25[2] = @"shared-session-type";
      v25[3] = @"shared-session-event-reason";
      v26[2] = &unk_1F45991F0;
      v26[3] = v8;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:4];
      [v19 emitEventType:@"shared-session-begin" payload:v22];

      if (!v20)
      {
      }

      v23 = [MEMORY[0x1E69B0A40] remoteControlGroupSessionWithIdentifier:v7 delegate:self];
      v24 = self->_activeGroupSession;
      self->_activeGroupSession = v23;
    }

    goto LABEL_15;
  }

LABEL_16:
}

- (id)copyContentItemID:(id)a3 repeatIteration:(int64_t)a4
{
  v5 = MPCQueueControllerBehaviorMusicIdentifierComponentsFromContentItemID(a3);
  if ([v5 repeatIteration] != a4)
  {
    v6 = [v5 copyWithRepeatIteration:a4];

    v5 = v6;
  }

  v7 = [v5 contentItemID];

  return v7;
}

- (id)contentItemIDWithoutRepeatIteration:(id)a3
{
  v3 = MPCQueueControllerBehaviorMusicIdentifierComponentsFromContentItemID(a3);
  if ([v3 repeatIteration])
  {
    v4 = [v3 copyWithRepeatIteration:0];

    v3 = v4;
  }

  v5 = [v3 contentItemID];

  return v5;
}

- (void)findFirstContentItemIDForItemIntersectingIdentifierSet:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v9 = v6;
  v11 = v9;
  v12 = &v13;
  [(NSMutableDictionary *)dataSources enumerateKeysAndObjectsUsingBlock:v10];
  v7[2](v7, v14[5], 0);

  _Block_object_dispose(&v13, 8);
}

- (void)getSharedQueueTracklistWithStartingContentItemID:(id)a3 completion:(id)a4
{
  v77 = a3;
  v6 = a4;
  v7 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:v77];
  v8 = [_MPCQueueControllerEnumerator enumeratorWithMusicBehavior:self mode:0 options:1 startPosition:0 endPosition:0];
  v9 = objc_alloc_init(MEMORY[0x1E69B1458]);
  v10 = 0;
  v11 = 0;
  v76 = 0;
  while (1)
  {
    v12 = v11;
    v11 = [v8 nextObject];

    if (!v11)
    {
      break;
    }

    v13 = [v11 entryType];
    switch(v13)
    {
      case 2:
        autoPlayIdentifierList = self->_autoPlayIdentifierList;
        v26 = [v11 trackingEntryResult];
        v27 = [v26 sectionIdentifier];
        LODWORD(autoPlayIdentifierList) = [(MPSectionedIdentifierList *)autoPlayIdentifierList hasSection:v27];

        if (autoPlayIdentifierList)
        {
          goto LABEL_49;
        }

        break;
      case 4:
        v21 = [v11 trackingEntryResult];
        dataSources = self->_dataSources;
        v23 = [v21 sectionIdentifier];
        v24 = [(NSMutableDictionary *)dataSources objectForKeyedSubscript:v23];

        LOBYTE(v23) = [v24 shouldRequestAdditionalItemsAtTail];
        if (v23)
        {
          goto LABEL_49;
        }

        break;
      case 3:
        v14 = [v11 itemResult];
        v15 = self->_dataSources;
        v16 = [v14 sectionIdentifier];
        v17 = [(NSMutableDictionary *)v15 objectForKeyedSubscript:v16];
        v73 = [v17 dataSource];

        v18 = [v14 sectionIdentifier];
        v19 = [v76 identifier];
        v74 = v7;
        v72 = v9;
        v69 = v14;
        if (v18 != v19)
        {
          v20 = [v18 isEqual:v19];

          if (v20)
          {
            v9 = v72;
            goto LABEL_30;
          }

          v28 = [v14 itemIdentifier];
          v29 = [v14 sectionIdentifier];
          v18 = [v73 modelPlayEventForItem:v28 inSection:v29];

          v30 = [v18 itemType];
          if (v30 == 4)
          {
            v40 = [v18 radioStation];
            v41 = [v40 identifiers];
            v42 = [v41 radio];
            v33 = [v42 stationStringID];

            if (!v33)
            {
              goto LABEL_27;
            }

            v43 = self->_autoPlayIdentifierList;
            v44 = [v69 sectionIdentifier];
            v45 = [(MPSectionedIdentifierList *)v43 hasSection:v44];

            v46 = MEMORY[0x1E69E45A8];
            v35 = [v18 featureName];
            if (v45)
            {
              [v46 autoPlayContainerWithMediaIdentifier:v33 featureName:v35];
            }

            else
            {
              [v46 radioContainerWithMediaIdentifier:v33 featureName:v35];
            }
            v36 = ;
          }

          else
          {
            if (v30 != 3)
            {
              if (v30 == 1)
              {
                v31 = [v18 album];
                v32 = [v31 identifiers];
                v33 = [v32 preferredStoreStringIdentifierForPersonID:0];

                if (v33)
                {
                  v34 = MEMORY[0x1E69E45A8];
                  v35 = [v18 featureName];
                  v36 = [v34 albumContainerWithMediaIdentifier:v33 featureName:v35];
                  goto LABEL_26;
                }
              }

LABEL_27:
              v48 = MEMORY[0x1E69E45A8];
              v49 = [v18 featureName];
              v47 = [v48 groupWithFeatureName:v49];

LABEL_28:
              v50 = [v69 sectionIdentifier];
              [v47 setIdentifier:v50];

              [v72 appendSection:v47];
              v19 = v76;
              v76 = v47;
              v9 = v72;
              v14 = v69;
              goto LABEL_29;
            }

            v37 = [v18 playlist];
            v38 = [v37 identifiers];
            v33 = [v38 preferredStoreStringIdentifierForPersonID:0];

            if (!v33)
            {
              goto LABEL_27;
            }

            v39 = MEMORY[0x1E69E45A8];
            v35 = [v18 featureName];
            v36 = [v39 playlistContainerWithMediaIdentifier:v33 featureName:v35];
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
        v51 = [v14 itemIdentifier];
        v52 = [v14 sectionIdentifier];
        v53 = [v73 identifiersForItem:v51 inSection:v52];

        v70 = v53;
        v54 = [v53 preferredStoreStringIdentifierForPersonID:0];
        if (v54)
        {
          v55 = [MEMORY[0x1E69E45B0] itemWithMediaIdentifier:v54];
          v56 = [v14 itemIdentifier];
          [v55 setIdentifier:v56];

          v71 = v55;
          [v9 appendItem:v55];
        }

        else
        {
          v71 = 0;
        }

        v57 = [v74 sectionID];
        v58 = [v14 sectionIdentifier];
        if (v57 != v58 && ([v57 isEqual:v58] & 1) == 0)
        {

          v63 = 1;
          v7 = v74;
          goto LABEL_46;
        }

        v68 = v54;
        v59 = [v74 itemID];
        v60 = [v14 itemIdentifier];
        v61 = v60;
        if (v59 == v60)
        {

LABEL_40:
          if (v71)
          {
            v64 = [v72 numberOfSections] - 1;
            v65 = [v72 numberOfItemsInSection:v64];
            v14 = v69;
            if (v10)
            {
              v66 = [MEMORY[0x1E696AAA8] currentHandler];
              [v66 handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:1704 description:@"Start item was found multiple times while building shared queue tracklist."];
            }

            [MEMORY[0x1E696AC88] msv_indexPathForItem:v65 - 1 inSection:v64];
            v57 = v10;
            v10 = v63 = 1;
            v7 = v74;
          }

          else
          {
            v57 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicBehaviorError" code:3 debugDescription:{@"Start item was missing a media identifier while building shared queue tracklist: startingContentItemID=%@ identifiers=%@", v77, v70}];
            (*(v6 + 2))(v6, 0, 0, v57);
            v63 = 0;
            v7 = v74;
            v14 = v69;
          }

          v54 = v68;
LABEL_46:

          v9 = v72;
          goto LABEL_47;
        }

        v62 = [v59 isEqual:v60];

        if (v62)
        {
          goto LABEL_40;
        }

        v63 = 1;
        v7 = v74;
        v9 = v72;
        v54 = v68;
        v14 = v69;
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
    (*(v6 + 2))(v6, v9, v10, 0);
  }

  else
  {
    v67 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicBehaviorError" code:3 debugDescription:@"Failed to find the start item in the shared queue tracklist."];
    (*(v6 + 2))(v6, 0, 0, v67);
  }

LABEL_52:
}

- (void)setQueueEndAction:(int64_t)a3 completion:(id)a4
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_musicBehaviorDelegate);
  [WeakRetained behavior:self didChangeActionAtQueueEnd:a3];

  v7[2](v7, 0);
}

- (BOOL)isSupportedQueueEndAction:(int64_t)a3
{
  if (a3 == 3)
  {
    return [(_MPCQueueControllerBehaviorMusic *)self canUserEnableAutoPlayWithReason:0];
  }

  else
  {
    return a3 == 2;
  }
}

- (BOOL)isAutoPlayContentItemID:(id)a3
{
  if (a3)
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

- (void)setAutoPlayEnabled:(BOOL)a3 targetContentItemID:(id)a4 completion:(id)a5
{
  v6 = a3;
  v45 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = [(_MPCQueueControllerBehaviorMusic *)self host];
  v11 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 engineID];
    v13 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
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
    v36 = v12;
    v37 = 2114;
    v38 = v13;
    v39 = 1024;
    v40 = v6;
    v41 = 2114;
    v42 = v15;
    _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "[AOT:%{public}@:%{public}@] setAutoPlayEnabled:%{BOOL}u | begin [] autoPlayState=%{public}@", buf, 0x26u);
  }

  if (v6)
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
        if (v6)
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

      if (v6)
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

    if (v6)
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
      if (v6)
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
        if (v6)
        {
          v18 = @"already waiting";
LABEL_29:
          v20 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [v10 engineID];
            v22 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
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
            v36 = v21;
            v37 = 2114;
            v38 = v22;
            v39 = 1024;
            v40 = v6;
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

      if (v6)
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
    v25 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:v8];
    v26 = MEMORY[0x1E6970948];
    v27 = [v25 itemID];
    v28 = [v25 sectionID];
    v29 = [v26 positionForItem:v27 inSection:v28];
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
    v32 = [v10 engineID];
    v33 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
    v34 = off_1E8232D58[v19];
    *buf = 138544386;
    v36 = v32;
    v37 = 2114;
    v38 = v33;
    v39 = 1024;
    v40 = v6;
    v41 = 2114;
    v42 = v16;
    v43 = 2114;
    v44 = v34;
    _os_log_impl(&dword_1C5C61000, v31, OS_LOG_TYPE_DEFAULT, "[AOT:%{public}@:%{public}@] setAutoPlayEnabled:%{BOOL}u | transitioning [%{public}@] nextState=%{public}@", buf, 0x30u);
  }

  [(_MPCQueueControllerBehaviorMusic *)self _transitionToAutoPlayState:v19];
LABEL_59:
  v9[2](v9, 0);
}

- (BOOL)canUserEnableAutoPlayWithReason:(id *)a3
{
  autoPlayState = self->_autoPlayState;
  if ((autoPlayState - 1) < 2)
  {
    if (a3)
    {
      v4 = @"unsupported content";
      goto LABEL_10;
    }

    return 0;
  }

  if ((autoPlayState - 4) < 2)
  {
    if (a3)
    {
      v4 = @"waiting for items";
LABEL_10:
      result = 0;
      *a3 = v4;
      return result;
    }

    return 0;
  }

  if (!autoPlayState)
  {
    if (a3)
    {
      v4 = @"unknown state";
      goto LABEL_10;
    }

    return 0;
  }

  return 1;
}

- (void)reshuffleWithTargetContentItemID:(id)a3 completion:(id)a4
{
  v110 = *MEMORY[0x1E69E9840];
  v94 = a3;
  v6 = a4;
  v7 = [(_MPCQueueControllerBehaviorMusic *)self host];
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 engineID];
    v10 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
    *buf = 138543874;
    v103 = v9;
    v104 = 2114;
    v105 = v10;
    v106 = 2114;
    v107 = v94;
    _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] reshuffleWithTargetContentItemID:completion: | starting reshuffle [] targetContentItemID=%{public}@", buf, 0x20u);
  }

  v11 = [v7 beginEditWithReason:@"BehaviorMusic-reshuffle"];
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
    v14 = [v7 engineID];
    [(_MPCQueueControllerBehaviorMusic *)self sessionID];
    v16 = v15 = v11;
    *buf = 138543874;
    v103 = v14;
    v104 = 2114;
    v105 = v16;
    v106 = 1024;
    LODWORD(v107) = shuffleType != 0;
    _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] reshuffleWithTargetContentItemID:completion: | enabled shuffle [] shuffleType=Songs wasShuffled=%{BOOL}u", buf, 0x1Cu);

    v11 = v15;
  }

  v17 = [(_MPCQueueControllerBehaviorMusic *)self contentItemIDEnumeratorStartingAfterContentItemID:0 mode:2 options:0];
  v18 = [v17 nextObject];
  if (v18)
  {
    v19 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:v18];
    if ([v19 type])
    {
      v84 = v18;
      v20 = [v19 sectionID];
      v21 = [(NSMutableDictionary *)self->_dataSources objectForKeyedSubscript:v20];
      v22 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      v93 = v21;
      if (v21)
      {
        v87 = v20;
        if (v23)
        {
          v24 = [v7 engineID];
          [(_MPCQueueControllerBehaviorMusic *)self sessionID];
          v88 = v19;
          v25 = shuffleType;
          v26 = v17;
          v27 = v11;
          v29 = v28 = v6;
          *buf = 138543874;
          v103 = v24;
          v104 = 2114;
          v105 = v29;
          v106 = 2114;
          v107 = v87;
          _os_log_impl(&dword_1C5C61000, v22, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] reshuffleWithTargetContentItemID:completion: | recreating data source [placeholder start item] sectionID=%{public}@", buf, 0x20u);

          v6 = v28;
          v11 = v27;
          v17 = v26;
          shuffleType = v25;
          v19 = v88;
        }

        v30 = [v21 dataSource];
        v31 = objc_opt_respondsToSelector();

        if (v31)
        {
          v32 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v33 = [v7 engineID];
            [(_MPCQueueControllerBehaviorMusic *)self sessionID];
            v89 = v19;
            v34 = shuffleType;
            v35 = v17;
            v36 = v11;
            v38 = v37 = v6;
            *buf = 138543618;
            v103 = v33;
            v104 = 2114;
            v105 = v38;
            _os_log_impl(&dword_1C5C61000, v32, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] reshuffleWithTargetContentItemID:completion: | clearing data source section []", buf, 0x16u);

            v6 = v37;
            v11 = v36;
            v17 = v35;
            shuffleType = v34;
            v19 = v89;
          }

          v39 = [v21 dataSource];
          [v39 clearSection];
        }

        v40 = [v21 dataSource];
        v41 = [objc_opt_class() usesIdentifierRegistry];

        v81 = v6;
        if (v41)
        {
          v42 = [v21 dataSource];
          v90 = [v42 identifierRegistryWithExclusiveAccessReturningObject:&__block_literal_global_355];

          v43 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
          v44 = v21;
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            v45 = [v7 engineID];
            v46 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
            *buf = 138543874;
            v103 = v45;
            v104 = 2114;
            v105 = v46;
            v106 = 2048;
            v107 = v90;
            _os_log_impl(&dword_1C5C61000, v43, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] reshuffleWithTargetContentItemID:completion: | extracted identifier registry [] identifierRegistry=%p", buf, 0x20u);

            v44 = v93;
          }

          v18 = v84;
          if (v90)
          {
            v47 = [v19 itemID];
            v48 = v90;
            v82 = [v90 identifierSetForItem:v47];

            v49 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
            {
              v80 = [v7 engineID];
              v50 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
              *buf = 138543874;
              v103 = v80;
              v104 = 2114;
              v105 = v50;
              v51 = v50;
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
          v18 = v84;
        }

        v83 = v52;
        v92 = v48;
        v68 = [v44 cloneWithNewStartItemIdentifiers:? identifierRegistry:?];
        v69 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
        {
          [v7 engineID];
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
          [v7 engineID];
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
        v97 = v7;
        v98 = self;
        v100 = v81;
        v99 = v18;
        v101 = shuffleType != 0;
        v79 = identifierList;
        v20 = v87;
        [(MPShuffleableSectionedIdentifierList *)v79 replaceDataSource:v68 forSection:v87 completion:v95];

        v6 = v81;
        v17 = v86;
        v67 = v92;
      }

      else
      {
        if (v23)
        {
          [v7 engineID];
          v65 = v64 = v20;
          v66 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
          *buf = 138543874;
          v103 = v65;
          v104 = 2114;
          v105 = v66;
          v106 = 2114;
          v107 = v64;
          _os_log_impl(&dword_1C5C61000, v22, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] reshuffleWithTargetContentItemID:completion: | rolling back edit [failed to find datasource] sectionID=%{public}@", buf, 0x20u);

          v20 = v64;
        }

        [v11 rollback];
        v67 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicBehaviorError" code:13 debugDescription:{@"no datasource for section: %@", v20}];
        (*(v6 + 2))(v6, v67);
        v18 = v84;
      }
    }

    else
    {
      [v11 setSuggestedContentItemIDForStart:v18];
      v56 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        v57 = [v7 engineID];
        [(_MPCQueueControllerBehaviorMusic *)self sessionID];
        v91 = v19;
        v58 = shuffleType;
        v59 = v17;
        v60 = v11;
        v62 = v61 = v6;
        *buf = 138543874;
        v103 = v57;
        v104 = 2114;
        v105 = v62;
        v106 = 2114;
        v107 = v18;
        _os_log_impl(&dword_1C5C61000, v56, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] reshuffleWithTargetContentItemID:completion: | committing edit [update after reshuffle] sugggestedStartingContentItemID=%{public}@", buf, 0x20u);

        v6 = v61;
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

      (*(v6 + 2))(v6, 0);
    }
  }

  else
  {
    v53 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v54 = [v7 engineID];
      v55 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
      *buf = 138543618;
      v103 = v54;
      v104 = 2114;
      v105 = v55;
      _os_log_impl(&dword_1C5C61000, v53, OS_LOG_TYPE_DEFAULT, "[BMUS:%{public}@:%{public}@] reshuffleWithTargetContentItemID:completion: | rolling back edit [failed to find new start item] ", buf, 0x16u);
    }

    [v11 rollback];
    v19 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicBehaviorError" code:11 debugDescription:@"enumerator produced no items after enabling shuffle"];
    (*(v6 + 2))(v6, v19);
  }
}

- (void)setShuffleType:(int64_t)a3 targetContentItemID:(id)a4 completion:(id)a5
{
  v8 = a5;
  [(_MPCQueueControllerBehaviorMusic *)self _setShuffleType:a3 startingContentItemID:a4 randomSource:0];
  v8[2](v8, 0);
}

- (BOOL)canUserChangeShuffleModeWithReason:(id *)a3
{
  v21 = *MEMORY[0x1E69E9840];
  if (self->_activeItemFlags)
  {
    v12 = 0;
    if (a3)
    {
      *a3 = @"in autoplay";
    }
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [(MPShuffleableSectionedIdentifierList *)self->_identifierList allSectionIdentifiers];
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = [(NSMutableDictionary *)self->_dataSources objectForKeyedSubscript:v10];
          if ((objc_opt_respondsToSelector() & 1) != 0 && ([v11 section:v10 supportsShuffleType:1] & 1) == 0 && (objc_msgSend(v11, "section:supportsShuffleType:", v10, 2) & 1) == 0)
          {
            if (a3)
            {
              v13 = MEMORY[0x1E696AEC0];
              v14 = [v11 playbackContext];
              *a3 = [v13 stringWithFormat:@"datasource %@ does not support shuffle", objc_opt_class()];
            }

            v12 = 0;
            goto LABEL_18;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (void)setRepeatType:(int64_t)a3 completion:(id)a4
{
  v8 = a4;
  if (a3 == 3)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:1258 description:@"User default should be resolved before setting on queue controller."];
  }

  [(_MPCQueueControllerBehaviorMusic *)self _setRepeatType:a3 reason:@"ExternalSetRepeatType"];
  v8[2](v8, 0);
}

- (BOOL)canUserChangeRepeatTypeWithReason:(id *)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if (self->_activeItemFlags)
  {
    v12 = 0;
    if (a3)
    {
      *a3 = @"in autoplay";
    }
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = [(MPShuffleableSectionedIdentifierList *)self->_identifierList allSectionIdentifiers];
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v11 = [(NSMutableDictionary *)self->_dataSources objectForKeyedSubscript:v10];
          if ([v11 shouldRequestAdditionalItemsAtTail])
          {
            if (a3)
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
            if (a3)
            {
              v13 = @"datasource %@ does not support repeat";
LABEL_18:
              v14 = MEMORY[0x1E696AEC0];
              v15 = [v11 playbackContext];
              *a3 = [v14 stringWithFormat:v13, objc_opt_class()];
            }

            goto LABEL_19;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

- (void)didReachEndOfQueueWithReason:(id)a3
{
  v8 = a3;
  if (self->_autoPlayState == 8)
  {
    [(_MPCQueueControllerBehaviorMusic *)self _transitionToAutoPlayState:3];
  }

  WeakRetained = objc_loadWeakRetained(&self->_host);
  v5 = [WeakRetained beginEditWithReason:v8];

  v6 = [(_MPCQueueControllerBehaviorMusic *)self contentItemIDEnumeratorStartingAfterContentItemID:0 mode:2 options:0];
  v7 = [v6 nextObject];
  if (v7)
  {
    [v5 setSuggestedContentItemIDForStart:v7];
  }

  [v5 commit];
}

- (BOOL)isOneShotExportableSessionForContentItemID:(id)a3 reason:(id *)a4
{
  v6 = a3;
  if ([(MPShuffleableSectionedIdentifierList *)self->_identifierList itemCount])
  {
    v7 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:v6];
    if ([v7 isPlaceholder])
    {
      v8 = 0;
      if (a4)
      {
        *a4 = @"placeholder item";
      }

      goto LABEL_24;
    }

    v9 = [v7 sectionID];
    v10 = [v7 itemID];
    v11 = [(_MPCQueueControllerBehaviorMusic *)self _identifierListForSection:v9];
    if ([v11 hasItem:v10 inSection:v9])
    {
      if (![v11 isDeletedItem:v10 inSection:v9])
      {
        v13 = [(NSMutableDictionary *)self->_dataSources objectForKeyedSubscript:v9];
        v14 = [v13 dataSource];
        v15 = [v14 isExportableMediaTypeForItem:v10 inSection:v9];

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
          if (a4)
          {
            v17 = v21[5];
            if (v17)
            {
              *a4 = v17;
            }
          }

          v8 = *(v27 + 24);
          _Block_object_dispose(&v20, 8);

          _Block_object_dispose(&v26, 8);
        }

        else
        {
          v8 = 0;
          if (a4)
          {
            *a4 = @"item is non-exportable media type";
          }
        }

        goto LABEL_23;
      }

      if (a4)
      {
        v8 = 0;
        v12 = @"item no longer exists";
LABEL_13:
        *a4 = v12;
LABEL_23:

LABEL_24:
        goto LABEL_25;
      }
    }

    else if (a4)
    {
      v8 = 0;
      v12 = @"item does not exist";
      goto LABEL_13;
    }

    v8 = 0;
    goto LABEL_23;
  }

  v8 = 0;
  if (a4)
  {
    *a4 = @"no items";
  }

LABEL_25:

  return v8 & 1;
}

- (BOOL)isExportableSessionType:(id)a3 forContentItemID:(id)a4 extension:(id)a5 reason:(id *)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v38 = [MEMORY[0x1E696AAA8] currentHandler];
    [v38 handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:1084 description:{@"unexpected extension: %@", v13}];
  }

  v14 = [v13 infoForSessionType:v11];
  v15 = v14;
  if (!v14)
  {
    if (a6)
    {
      v17 = 0;
      v18 = @"unknown sessionType [Music]";
LABEL_15:
      *a6 = v18;
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
      v16 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:v12];
      if ([v16 isPlaceholder])
      {
        v17 = 0;
        if (a6)
        {
          *a6 = @"placeholder item";
        }

        goto LABEL_40;
      }

      v19 = [v16 sectionID];
      v20 = [v16 itemID];
      v21 = [(_MPCQueueControllerBehaviorMusic *)self _identifierListForSection:v19];
      v45 = v21;
      if (([v21 hasItem:v20 inSection:v19] & 1) == 0)
      {
        if (a6)
        {
          v17 = 0;
          v22 = @"item does not exist";
          goto LABEL_23;
        }

LABEL_24:
        v17 = 0;
        goto LABEL_39;
      }

      if ([v21 isDeletedItem:v20 inSection:v19])
      {
        if (a6)
        {
          v17 = 0;
          v22 = @"item no longer exists";
LABEL_23:
          *a6 = v22;
LABEL_39:

LABEL_40:
          goto LABEL_41;
        }

        goto LABEL_24;
      }

      [(NSMutableDictionary *)self->_dataSources objectForKeyedSubscript:v19];
      v24 = v23 = v19;
      v25 = [v24 dataSource];
      v26 = v20;
      v27 = v25;
      v43 = v26;
      v44 = v23;
      LOBYTE(v23) = [v25 isExportableMediaTypeForItem:? inSection:?];

      if ((v23 & 1) == 0)
      {
        v20 = v43;
        v34 = v44;
        v17 = 0;
        if (a6)
        {
          *a6 = @"item is non-exportable media type";
        }

        goto LABEL_38;
      }

      v41 = v24;
      v28 = [v24 dataSource];
      v20 = v43;
      v29 = [v28 accountIDForItem:v43 inSection:v44];

      v40 = v29;
      v30 = MPCHashedDSIDFromDSID(v29);
      v42 = [v15 account];
      v31 = [v42 hashedDSID];
      v39 = v30;
      if (v31 == v30)
      {
      }

      else
      {
        v32 = v31;
        v33 = [v31 isEqual:v30];

        if ((v33 & 1) == 0)
        {
          v34 = v44;
          v17 = 0;
          if (a6)
          {
            *a6 = @"sessionType account does not match item account";
          }

LABEL_37:

          v24 = v41;
LABEL_38:

          v19 = v34;
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
      if (a6)
      {
        v36 = v48[5];
        if (v36)
        {
          *a6 = v36;
        }
      }

      v34 = v44;
      v17 = *(v54 + 24);
      _Block_object_dispose(&v47, 8);

      _Block_object_dispose(&v53, 8);
      goto LABEL_37;
    }

    if (a6)
    {
      v17 = 0;
      v18 = @"no items";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (!a6)
  {
    goto LABEL_16;
  }

  [v15 exportableReason];
  *a6 = v17 = 0;
LABEL_41:

  return v17 & 1;
}

- (id)finalizeStateRestorationWithTargetContentItemID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_MPCQueueControllerBehaviorMusic *)self host];
  v9 = dispatch_group_create();
  v10 = [MEMORY[0x1E695DF70] array];
  if (v6)
  {
    v11 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:v6];
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
  v24 = v8;
  v25 = self;
  v26 = v11;
  v13 = v10;
  v27 = v13;
  v28 = v9;
  v14 = v9;
  v15 = v11;
  v16 = v8;
  [v12 enumerateKeysAndObjectsUsingBlock:v23];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __95___MPCQueueControllerBehaviorMusic_finalizeStateRestorationWithTargetContentItemID_completion___block_invoke_289;
  v20[3] = &unk_1E8239198;
  v20[4] = self;
  v21 = v13;
  v22 = v7;
  v17 = v7;
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

- (void)loadAdditionalUpcomingItems:(int64_t)a3 completion:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(_MPCQueueControllerBehaviorMusic *)self host];
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
  v30 = a3;
  v11 = v7;
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
    v12[4] = v6;
    dispatch_group_notify(v10, MEMORY[0x1E69E96A0], v12);

    goto LABEL_14;
  }

  v14 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v11 engineID];
    v16 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
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
    v36 = v15;
    v37 = 2114;
    v38 = v16;
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

  v19 = _Block_copy(v6);
  loadAdditionalItemsCompletion = self->_loadAdditionalItemsCompletion;
  self->_loadAdditionalItemsCompletion = v19;

  self->_autoPlayIsTriggered = 1;
  v21 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [v11 engineID];
    v23 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
    *buf = 138543618;
    v36 = v22;
    v37 = 2114;
    v38 = v23;
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
    v4 = [(_MPCQueueControllerBehaviorMusic *)self _accountForAutoPlay];
    v5 = [v4 bag];
    v6 = [v5 radioConfiguration];

    v7 = v14[3];
    v8 = [v6 continueListeningMaxUpcomingTracksSizeToMaintain];
    if (v7 <= v8)
    {
      v9 = v8;
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

- (id)_itemForContentItemID:(id)a3 allowReuse:(BOOL)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(_MPCQueueControllerBehaviorMusic *)self host];
  v7 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:v5];
  v8 = [v7 sectionID];
  v9 = [v7 itemID];
  v10 = [(_MPCQueueControllerBehaviorMusic *)self _identifierListForSection:v8];
  if (v10)
  {
  }

  else if (([v9 isEqualToString:@"_PLACEHOLDER_AUTOPLAY_"] & 1) == 0)
  {
    v12 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v6 engineID];
      v24 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
      *buf = 138544130;
      v28 = v23;
      v29 = 2114;
      v30 = v24;
      v31 = 2114;
      v32 = v5;
      v33 = 2114;
      v34 = v8;
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

  v13 = [v11 contentItemID];
  v14 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:v13];

  v15 = [v14 sectionID];
  v26 = v9;
  if ([v15 isEqualToString:v8])
  {
    v16 = [v14 itemID];
    v17 = [v16 isEqualToString:v9];

    if (v17)
    {

      v9 = v26;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v19 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicBehavior");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
  {
    v20 = [v6 engineID];
    v21 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
    v22 = [v12 contentItemID];
    *buf = 138544130;
    v28 = v20;
    v29 = 2114;
    v30 = v21;
    v31 = 2114;
    v32 = v22;
    v33 = 2114;
    v34 = v5;
    _os_log_impl(&dword_1C5C61000, v19, OS_LOG_TYPE_FAULT, "[ITFIT:%{public}@:%{public}@] _itemForContentItemID | faulting [content item ID mismatch] item.contentItemID=%{public}@ - contentItemID=%{public}@", buf, 0x2Au);
  }

  v18 = 0;
  v9 = v26;
LABEL_16:

  return v18;
}

- (void)currentItemDidChangeFromContentItemID:(id)a3 toContentItemID:(id)a4
{
  v19 = a3;
  v6 = a4;
  objc_storeStrong(&self->_playNowInsertionContentItemID, a4);
  if (v6)
  {
    v7 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:v6];
    dataSources = self->_dataSources;
    v9 = [v7 sectionID];
    v10 = [(NSMutableDictionary *)dataSources objectForKeyedSubscript:v9];

    if (v19)
    {
      v11 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:v19];
      v12 = [v11 sectionID];
      v13 = [v7 sectionID];
      v14 = [v12 isEqualToString:v13];

      if ((v14 & 1) == 0)
      {
        v15 = self->_dataSources;
        v16 = [v11 sectionID];
        v17 = [(NSMutableDictionary *)v15 objectForKeyedSubscript:v16];

        [v17 itemDidBeginPlayback:0];
      }
    }

    if (![v7 type])
    {
      v18 = [(_MPCQueueControllerBehaviorMusic *)self _itemForContentItemID:v6 allowReuse:1];
      [v10 itemDidBeginPlayback:v18];
    }
  }
}

- (id)_stateDictionaryIncludingQueue:(BOOL)a3
{
  v3 = a3;
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

  if (v3)
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

- (id)contentItemIDEnumeratorStartingAfterContentItemID:(id)a3 mode:(int64_t)a4 options:(unint64_t)a5
{
  v5 = a5;
  v9 = a3;
  v10 = v9;
  if (!self->_identifierList)
  {
    v12 = [MEMORY[0x1E695E0F0] objectEnumerator];
    goto LABEL_35;
  }

  if (a4 == 3)
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

  v13 = v5 & 1;
  if (![v9 length])
  {
    v16 = 0;
    v14 = 0;
    goto LABEL_32;
  }

  v14 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:v10];
  v15 = [v14 type];
  if (v13 || a4 != 1 || !v15)
  {
    v17 = [v14 sectionID];
    v18 = [v14 itemID];
    v19 = [v14 type];
    v16 = 0;
    if (v19 > 1)
    {
      if (v19 == 2)
      {
        v16 = [MEMORY[0x1E6970948] positionForHeadOfSection:v17];
        v11 = 5;
      }

      else if (v19 == 3)
      {
        v31 = v17;
        v32 = v18;
        v22 = [v14 deferredNextContentItemID];

        if (!v22)
        {
          v30 = [MEMORY[0x1E696AAA8] currentHandler];
          objc_msgSend(v30, "handleFailureInMethod:object:file:lineNumber:description:", a2, self, @"_MPCQueueControllerBehaviorMusic.m", 752, @"Invalid identifier components (EndOfQueuePlaceHolder must have deferredNextContentItemID: %@"), v10;
        }

        v23 = [v14 deferredNextContentItemID];
        v24 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:v23];

        v25 = MEMORY[0x1E6970948];
        v26 = [v24 itemID];
        v27 = [v24 sectionID];
        v16 = [v25 positionForItem:v26 inSection:v27];

        v17 = v31;
        v18 = v32;
      }
    }

    else if (v19)
    {
      if (v19 == 1)
      {
        v16 = [MEMORY[0x1E6970948] positionForItem:v18 inSection:v17];
        v20 = [(NSMutableDictionary *)self->_dataSources objectForKeyedSubscript:v17];
        v21 = v20;
        if ((a4 & 0xFFFFFFFFFFFFFFFELL) == 2 && v20)
        {
          if ([v20 shouldUsePlaceholderForItem:v18 inSection:v17])
          {
            v12 = [MEMORY[0x1E695E0F0] objectEnumerator];

LABEL_33:
            goto LABEL_34;
          }

          v11 = 5;
        }
      }
    }

    else
    {
      v16 = [MEMORY[0x1E6970948] positionForItem:v18 inSection:v17];
    }

LABEL_32:
    v28 = [_MPCQueueControllerEnumerator enumeratorWithMusicBehavior:self mode:a4 options:v11 | (8 * v13) startPosition:v16 endPosition:0];
    v12 = [[_MPCQueueControllerBehaviorMusicEnumerator alloc] initWithQueueEnumerator:v28 startingComponents:v14];

    goto LABEL_33;
  }

  v12 = [MEMORY[0x1E695E0F0] objectEnumerator];
LABEL_34:

LABEL_35:

  return v12;
}

- (BOOL)canNextItemFromContentItemID:(id)a3 reason:(id *)a4
{
  if (a3)
  {
    v6 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:?];
    if ([v6 type] == 2)
    {
      if (a4)
      {
        v7 = 0;
        v8 = @"section placeholder";
LABEL_10:
        *a4 = v8;
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
          v10 = [v6 sectionID];
          v11 = [(NSMutableDictionary *)dataSources objectForKeyedSubscript:v10];

          if (v11)
          {
            v12 = [v6 itemID];
            v7 = [v11 canSkipItem:v12 reason:a4];
          }

          else
          {
            v7 = 0;
            if (a4)
            {
              *a4 = @"sectionID not in dataSource";
            }
          }
        }

        else
        {
          v7 = 1;
        }

        goto LABEL_19;
      }

      if (a4)
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
  if (a4)
  {
    *a4 = @"nil contentItemID";
  }

  return v7;
}

- (BOOL)canPreviousItemFromContentItemID:(id)a3 reason:(id *)a4
{
  if (a3)
  {
    v6 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:?];
    if ([v6 type] == 2)
    {
      if (a4)
      {
        v7 = @"section placeholder";
LABEL_10:
        *a4 = v7;
      }
    }

    else if ([v6 type] == 3)
    {
      if (a4)
      {
        v7 = @"tail placeholder";
        goto LABEL_10;
      }
    }

    else if (v6)
    {
      dataSources = self->_dataSources;
      v11 = [v6 sectionID];
      v12 = [(NSMutableDictionary *)dataSources objectForKeyedSubscript:v11];

      if (v12)
      {
        v13 = [v6 itemID];
        v8 = [v12 canSkipItem:v13 reason:a4];
      }

      else
      {
        v8 = 0;
        if (a4)
        {
          *a4 = @"sectionID not in dataSource";
        }
      }

      goto LABEL_12;
    }

    v8 = 1;
LABEL_12:

    return v8;
  }

  v8 = 0;
  if (a4)
  {
    *a4 = @"nil contentItemID";
  }

  return v8;
}

- (BOOL)canJumpToContentItemID:(id)a3 reason:(id *)a4
{
  v6 = a3;
  v7 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:v6];
  v8 = [v7 itemID];
  v9 = [v7 sectionID];
  v10 = [(_MPCQueueControllerBehaviorMusic *)self _identifierListForSection:v9];
  if ([v10 hasItem:v8 inSection:v9] && (objc_msgSend(v10, "isDeletedItem:inSection:", v8, v9) & 1) == 0)
  {
    v12 = [(NSMutableDictionary *)self->_dataSources objectForKeyedSubscript:v9];
    v11 = [v12 canJumpToItem:v8 reason:a4];
  }

  else if (a4)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"contentItemID (%@) not found", v6];
    *a4 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)itemExistsForContentItemID:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:v5];
  v7 = [v6 sectionID];
  v8 = [(_MPCQueueControllerBehaviorMusic *)self _identifierListForSection:v7];

  v9 = [v6 type];
  if (!v8)
  {
    if (v9 != 1)
    {
      goto LABEL_21;
    }

    v21 = [v6 itemID];
    if (![v21 isEqualToString:@"_PLACEHOLDER_AUTOPLAY_"])
    {
      LOBYTE(v20) = 0;
LABEL_41:

      goto LABEL_42;
    }

    v22 = self->_autoPlayState == 9;
    goto LABEL_26;
  }

  if (v9 > 1)
  {
    if (v9 != 2)
    {
      if (v9 != 3)
      {
        goto LABEL_21;
      }

      v23 = [v6 deferredNextContentItemID];
      v10 = [(_MPCQueueControllerBehaviorMusic *)self _componentsForContentItemID:v23];

      v24 = [v10 sectionID];
      v11 = [(_MPCQueueControllerBehaviorMusic *)self _identifierListForSection:v24];

      v25 = [v10 itemID];
      v26 = [v10 sectionID];
      v27 = [v11 hasItem:v25 inSection:v26];

      if (!v27)
      {
LABEL_20:

        goto LABEL_21;
      }

      dataSources = self->_dataSources;
      v29 = [v6 sectionID];
      v30 = [(NSMutableDictionary *)dataSources objectForKeyedSubscript:v29];

      if (!v30)
      {
        v42 = [MEMORY[0x1E696AAA8] currentHandler];
        v43 = [v6 sectionID];
        [v42 handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:615 description:{@"DataSource does not exists for section: %@ [ItemPlaceholder] contentItemID: %@", v43, v5}];
      }

      v31 = [v30 state];

      if (v31 == 2)
      {
        LOBYTE(v20) = 1;
        goto LABEL_42;
      }

LABEL_21:
      LOBYTE(v20) = 0;
      goto LABEL_42;
    }

    v35 = self->_dataSources;
    v36 = [v6 sectionID];
    v21 = [(NSMutableDictionary *)v35 objectForKeyedSubscript:v36];

    if (!v21)
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v32 = [(NSMutableDictionary *)self->_dataSources allValues];
      v37 = [v32 countByEnumeratingWithState:&v46 objects:v50 count:16];
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
          objc_enumerationMutation(v32);
        }

        if ([*(*(&v46 + 1) + 8 * v40) state] != 1)
        {
          break;
        }

        if (v38 == ++v40)
        {
          v38 = [v32 countByEnumeratingWithState:&v46 objects:v50 count:16];
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

    v22 = [v21 state] == 1;
LABEL_26:
    LOBYTE(v20) = v22;
    goto LABEL_41;
  }

  if (!v9)
  {
    v21 = [v6 itemID];
    v32 = [v6 sectionID];
    if ([v8 hasItem:v21 inSection:v32])
    {
      v33 = [v6 itemID];
      v34 = [v6 sectionID];
      v20 = [v8 isDeletedItem:v33 inSection:v34] ^ 1;

LABEL_40:
      goto LABEL_41;
    }

    goto LABEL_39;
  }

  if (v9 != 1)
  {
    goto LABEL_21;
  }

  v10 = [v6 itemID];
  v11 = [v6 sectionID];
  if (([v8 hasItem:v10 inSection:v11] & 1) == 0)
  {
    goto LABEL_20;
  }

  v12 = [v6 itemID];
  v13 = [v6 sectionID];
  v14 = [v8 isDeletedItem:v12 inSection:v13];

  if (v14)
  {
    goto LABEL_21;
  }

  v15 = self->_dataSources;
  v16 = [v6 sectionID];
  v17 = [(NSMutableDictionary *)v15 objectForKeyedSubscript:v16];

  if (!v17)
  {
    v44 = [MEMORY[0x1E696AAA8] currentHandler];
    v45 = [v6 sectionID];
    [v44 handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:584 description:{@"DataSource does not exists for section: %@ [ItemPlaceholder] contentItemID: %@", v45, v5}];
  }

  v18 = [v6 itemID];
  v19 = [v6 sectionID];
  LOBYTE(v20) = [v17 shouldUsePlaceholderForItem:v18 inSection:v19];

LABEL_42:
  return v20;
}

- (void)activeItemFlagsDidChange:(unsigned __int16)a3
{
  if (a3)
  {
    [(_MPCQueueControllerBehaviorMusic *)self _setRepeatType:0 reason:@"ActiveItemIsAutoPlay"];
  }

  self->_activeItemFlags = a3;
}

- (id)performLoadCommand:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_class();
  v10 = [v7 playbackQueue];
  v25 = 0;
  v11 = [v9 canLoadQueue:v10 reason:&v25];
  v12 = v25;

  if ((v11 & 1) == 0)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:497 description:{@"unsupported playback queue: %@", v12}];
  }

  v14 = [v7 playbackQueue];
  v15 = [(_MPCQueueControllerBehaviorMusic *)self _playbackContextOptions];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __66___MPCQueueControllerBehaviorMusic_performLoadCommand_completion___block_invoke;
  v21[3] = &unk_1E8237DD0;
  v23 = self;
  v24 = v8;
  v22 = v7;
  v16 = v7;
  v17 = v8;
  [v14 getMusicPlaybackContextWithOptions:v15 completion:v21];

  v18 = [(_MPCQueueControllerBehaviorMusic *)self contentItemIDEnumeratorStartingAfterContentItemID:0 mode:2 options:0];
  v19 = [v18 nextObject];

  return v19;
}

- (void)didConnectToHost:(id)a3
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = _MPCQueueControllerBehaviorMusic;
  [(_MPCQueueControllerBehaviorMusic *)&v4 dealloc];
}

- (_MPCQueueControllerBehaviorMusic)initWithSessionID:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _MPCQueueControllerBehaviorMusic;
  v5 = [(_MPCQueueControllerBehaviorMusic *)&v15 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E6970978]) initWithIdentifier:v4];
    v7 = *(v5 + 16);
    *(v5 + 16) = v6;

    v8 = [*(v5 + 16) identifier];
    v9 = [v8 copy];
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

- (void)restoreWithSharedCoder:(id)a3 block:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  [(_MPCQueueControllerBehaviorMusic *)self _initializeWithCoder:v7];
  v8 = [v7 decodeObjectOfClass:objc_opt_class() forKey:@"nci"];

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
      v11 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
      v12 = 138543618;
      v13 = v11;
      v14 = 2114;
      v15 = v8;
      _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "[PSP:…:%{public}@] restoreWithSharedCoder:block: | ignoring nextContentItemID [item does not exist] nextContentItemID=%{public}@", &v12, 0x16u);
    }

    goto LABEL_7;
  }

  v9 = v8;
LABEL_8:
  v6[2](v6, v9);
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v18 = v5;
  if (!self->_dataSources)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusic.m" lineNumber:308 description:@"Attempt to encode BehaviorMusic without _dataSources"];

    v5 = v18;
  }

  [v5 encodeObject:self->_identifierList forKey:@"il"];
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
    v6 = [v18 msv_userInfo];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E6970358]];
    v8 = [v7 integerValue];

    transitionsEnabled = self->_transitionsEnabled;
    transitionStyle = self->_transitionStyle;
    v11 = self->_crossfadeDuration;
    if (v8 == 2)
    {
      v12 = [MEMORY[0x1E69708A8] standardUserDefaults];
      v13 = +[MPCPlaybackAccountManager sharedManager];
      v14 = [v13 fallbackAccount];

      if (self->_transitionsEnabled == 1000)
      {
        transitionsEnabled = [v12 _areTransitionsEnabledWithSubscription:{objc_msgSend(v14, "hasCatalogPlaybackCapability")}];
      }

      if (self->_transitionStyle == 1000)
      {
        transitionStyle = [v12 transitionStyleForUserWithCatalogPlaybackCapability:{objc_msgSend(v14, "hasCatalogPlaybackCapability")}];
      }

      if (!self->_crossfadeDuration)
      {
        v15 = MEMORY[0x1E696AD98];
        [v12 crossFadeDuration];
        v16 = [v15 numberWithDouble:?];

        v11 = v16;
      }
    }

    [v18 encodeInteger:transitionsEnabled forKey:@"tes"];
    [v18 encodeInteger:transitionStyle forKey:@"ts"];
    [v18 encodeObject:v11 forKey:@"cfd"];
  }
}

- (_MPCQueueControllerBehaviorMusic)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_MPCQueueControllerBehaviorMusic *)self init];
  v6 = v5;
  if (v5)
  {
    [(_MPCQueueControllerBehaviorMusic *)v5 _initializeWithCoder:v4];
  }

  return v6;
}

- (NSString)debugDescription
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = [(_MPCQueueControllerBehaviorMusic *)self sessionID];
  [v3 appendFormat:@"## BehaviorMusic <%p> [%@]\n", self, v4];

  v5 = [(_MPCQueueControllerBehaviorMusic *)self identifierList];
  v6 = [v5 debugDescription];

  if ([(_MPCQueueControllerBehaviorMusic *)self autoPlayEnabled])
  {
    v7 = [(_MPCQueueControllerBehaviorMusic *)self autoPlayIdentifierList];
    v8 = [v7 debugDescription];
  }

  v9 = [(_MPCQueueControllerBehaviorMusic *)self _stateDictionaryIncludingQueue:0];

  return v3;
}

+ (id)makeExtensionWithInvalidatable:(id)a3
{
  v3 = a3;
  v4 = [[_MPCQueueControllerBehaviorMusicTransportableExtension alloc] initWithInvalidatable:v3];

  return v4;
}

+ (BOOL)canLoadQueue:(id)a3 reason:(id *)a4
{
  v12[5] = *MEMORY[0x1E69E9840];
  v5 = a3;
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
    v8 = [v5 trackIdentifiers];
    v9 = [v8 msv_firstWhere:&__block_literal_global_7242];
    v6 = v9 == 0;

    if (a4 && v9)
    {
      v6 = 0;
      *a4 = @"GenericTracklist contains URLs";
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v5 identifier];
      v12[0] = @"InProcess-com.apple.mediaplayer.playbackcontext";
      v12[1] = @"com.apple.music.playbackqueue.tracklist";
      v12[2] = @"com.apple.music.playbackqueue.radio";
      v12[3] = @"com.apple.mediaplayer.playbackcontext";
      v12[4] = @"com.apple.MediaPlaybackCore.playbackContextArchive-v1.opack";
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:5];
      v6 = [v11 containsObject:v10];

      if (a4 && (v6 & 1) == 0)
      {
        *a4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported custom data playback queue: %@", v10];
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

      if (a4)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported playback queue: %@", objc_opt_class()];
        *a4 = v6 = 0;
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