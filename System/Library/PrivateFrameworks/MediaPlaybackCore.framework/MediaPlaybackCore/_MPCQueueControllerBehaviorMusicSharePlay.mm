@interface _MPCQueueControllerBehaviorMusicSharePlay
+ (BOOL)canLoadQueue:(id)a3 reason:(id *)a4;
- (BOOL)_useItemPlaceholderForContentItemID:(id)a3;
- (BOOL)_useItemPlaceholderForItemID:(id)a3;
- (BOOL)canJumpToContentItemID:(id)a3 reason:(id *)a4;
- (BOOL)canNextItemFromContentItemID:(id)a3 reason:(id *)a4;
- (BOOL)canPreviousItemFromContentItemID:(id)a3 reason:(id *)a4;
- (BOOL)canUserChangeRepeatTypeWithReason:(id *)a3;
- (BOOL)canUserChangeShuffleModeWithReason:(id *)a3;
- (BOOL)canUserEnableAutoPlayWithReason:(id *)a3;
- (BOOL)isAutoPlayContentItemID:(id)a3;
- (BOOL)isEmpty;
- (BOOL)isSupportedInsertionPosition:(int64_t)a3 fromContentItemID:(id)a4 reason:(id *)a5;
- (BOOL)itemExistsForContentItemID:(id)a3;
- (MPCQueueControllerBehaviorHost)host;
- (MPCQueueControllerBehaviorMusicDelegate)musicBehaviorDelegate;
- (MPCQueueControllerBehaviorMusicSharePlayDelegate)musicSharePlayBehaviorDelegate;
- (MPCQueueControllerExternalSyncBehaviorHost)externalSyncHost;
- (_MPCQueueControllerBehaviorMusicSharePlay)initWithSessionID:(id)a3;
- (id)_componentsForContentItemID:(id)a3;
- (id)_componentsForSharedListeningItemID:(id)a3;
- (id)_itemForContentItemID:(id)a3 allowReuse:(BOOL)a4;
- (id)_itemObjectForSharedListeningItemID:(id)a3;
- (id)_mpcSharedListeningEventForICLiveLinkEvent:(id)a3;
- (id)_queueAsStateDictionary;
- (id)_sectionObjectForSharedListeningContainerID:(id)a3;
- (id)_sectionedCollectionForQueue:(id)a3;
- (id)_stateDictionaryIncludingQueue:(BOOL)a3;
- (id)contentItemIDEnumeratorStartingAfterContentItemID:(id)a3 mode:(int64_t)a4 options:(unint64_t)a5;
- (id)contentItemIDWithoutRepeatIteration:(id)a3;
- (id)copyContentItemID:(id)a3 repeatIteration:(int64_t)a4;
- (id)performLoadCommand:(id)a3 completion:(id)a4;
- (id)playbackCoordinator:(id)a3 identifierForPlayerItem:(id)a4;
- (int64_t)displayItemCount;
- (int64_t)queueExplicitContentState;
- (void)_dequeuePendingActions;
- (void)_emitEventsForAddedSharedListeningContainer:(id)a3;
- (void)_emitEventsForParticipants:(id)a3 localUserIdentity:(id)a4;
- (void)_emitEventsForPlaybackBehaviorChange;
- (void)_enqueuePendingActionWithLabel:(id)a3 itemIdentifier:(id)a4 block:(id)a5;
- (void)_initializeWithQueue:(id)a3;
- (void)_purgePendingActionsWithLabel:(id)a3;
- (void)_reloadCacheDataWithOptions:(unint64_t)a3;
- (void)_setQueue:(id)a3;
- (void)canReuseQueue:(id)a3 completion:(id)a4;
- (void)clearAllItemsAfterContentItemID:(id)a3;
- (void)controller:(id)a3 defersResponseReplacement:(id)a4;
- (void)didConnectToHost:(id)a3;
- (void)didJumpToTargetContentItemID:(id)a3;
- (void)didStopLiveLink:(id)a3;
- (void)disconnectFromHost:(id)a3;
- (void)endSynchronizedPlayback;
- (void)findFirstContentItemIDForItemIntersectingIdentifierSet:(id)a3 completion:(id)a4;
- (void)getExpectedCurrentItemModelObjectWithCompletion:(id)a3;
- (void)getSharedQueueTracklistWithStartingContentItemID:(id)a3 completion:(id)a4;
- (void)liveLink:(id)a3 didEncounterError:(id)a4 willRetry:(BOOL)a5;
- (void)liveLink:(id)a3 didReceiveDirectCurrentItemChanged:(id)a4 fromParticipant:(id)a5;
- (void)liveLink:(id)a3 didReceiveEvent:(id)a4;
- (void)liveLink:(id)a3 didUpdateParticipants:(id)a4;
- (void)liveLink:(id)a3 didUpdateQueue:(id)a4;
- (void)liveLinkDidReconnect:(id)a3;
- (void)moveContentItemID:(id)a3 afterContentItemID:(id)a4 completion:(id)a5;
- (void)moveContentItemID:(id)a3 beforeContentItemID:(id)a4 completion:(id)a5;
- (void)performInsertCommand:(id)a3 targetContentItemID:(id)a4 completion:(id)a5;
- (void)removeContentItemID:(id)a3 completion:(id)a4;
- (void)reshuffleWithTargetContentItemID:(id)a3 completion:(id)a4;
- (void)setAllowsQueueModifications:(BOOL)a3;
- (void)setAutoPlayEnabled:(BOOL)a3 targetContentItemID:(id)a4 completion:(id)a5;
- (void)setHostingSharedSessionID:(id)a3 reason:(id)a4;
- (void)setRepeatType:(int64_t)a3 completion:(id)a4;
- (void)setRequestedPropertySetForEvents:(id)a3;
- (void)setShuffleType:(int64_t)a3 targetContentItemID:(id)a4 completion:(id)a5;
- (void)updatePlaybackCoordinator:(id)a3;
@end

@implementation _MPCQueueControllerBehaviorMusicSharePlay

- (MPCQueueControllerBehaviorMusicSharePlayDelegate)musicSharePlayBehaviorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_musicSharePlayBehaviorDelegate);

  return WeakRetained;
}

- (MPCQueueControllerBehaviorMusicDelegate)musicBehaviorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_musicBehaviorDelegate);

  return WeakRetained;
}

- (MPCQueueControllerExternalSyncBehaviorHost)externalSyncHost
{
  WeakRetained = objc_loadWeakRetained(&self->_externalSyncHost);

  return WeakRetained;
}

- (MPCQueueControllerBehaviorHost)host
{
  WeakRetained = objc_loadWeakRetained(&self->_host);

  return WeakRetained;
}

- (BOOL)_useItemPlaceholderForContentItemID:(id)a3
{
  v5 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self _componentsForContentItemID:a3];
  if ([v5 type])
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusicSharePlay.m" lineNumber:1813 description:@"This method only supports MPCQueueControllerBehaviorItemTypeItem"];
  }

  v6 = [v5 itemID];
  v7 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self _useItemPlaceholderForItemID:v6];

  return v7;
}

- (BOOL)_useItemPlaceholderForItemID:(id)a3
{
  requestController = self->_requestController;
  v5 = a3;
  v6 = [(MPRequestResponseController *)requestController response];
  v7 = [v6 modelResponse];
  v8 = [v7 results];

  v9 = [(NSDictionary *)self->_resultsIndexPathMap objectForKeyedSubscript:v5];

  if (v9)
  {
    v10 = [v8 identifiersForItemAtIndexPath:v9];
    v11 = [v10 isPlaceholder];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (void)_setQueue:(id)a3
{
  v5 = a3;
  p_queue = &self->_queue;
  queue = self->_queue;
  if (queue != v5)
  {
    if (!queue || (v8 = [(ICSharedListeningQueue *)queue isAutoPlayEnabled], v8 != [(ICSharedListeningQueue *)v5 isAutoPlayEnabled]))
    {
      v9 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self musicBehaviorDelegate];
      if ([(_MPCQueueControllerBehaviorMusicSharePlay *)self autoPlayEnabled])
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }

      [v9 behavior:self didChangeActionAtQueueEnd:v10];

      [(_MPCQueueControllerBehaviorMusicSharePlay *)self _emitEventsForPlaybackBehaviorChange];
    }

    if (!*p_queue || (v11 = [*p_queue explicitContentState], v11 != -[ICSharedListeningQueue explicitContentState](v5, "explicitContentState")))
    {
      v12 = [(ICSharedListeningQueue *)v5 explicitContentState];
      if (v12 == 2)
      {
        v13 = 2;
      }

      else
      {
        v13 = v12 == 1;
      }

      v14 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self musicSharePlayBehaviorDelegate];
      [v14 behavior:self didChangeExplicitContentState:v13];
    }

    objc_storeStrong(&self->_queue, a3);
    v15 = [(ICSharedListeningQueue *)self->_queue tracklist];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __55___MPCQueueControllerBehaviorMusicSharePlay__setQueue___block_invoke;
    v16[3] = &unk_1E8233248;
    v16[4] = self;
    [v15 enumerateSectionsUsingBlock:v16];

    [(_MPCQueueControllerBehaviorMusicSharePlay *)self _reloadCacheDataWithOptions:0];
  }
}

- (id)_sectionObjectForSharedListeningContainerID:(id)a3
{
  v4 = a3;
  v5 = [(MPRequestResponseController *)self->_requestController response];
  v6 = [v5 modelResponse];
  v7 = [v6 results];

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__7744;
  v18 = __Block_byref_object_dispose__7745;
  v19 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __89___MPCQueueControllerBehaviorMusicSharePlay__sectionObjectForSharedListeningContainerID___block_invoke;
  v11[3] = &unk_1E8233220;
  v8 = v4;
  v12 = v8;
  v13 = &v14;
  [v7 enumerateSectionsUsingBlock:v11];
  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

- (id)_sectionedCollectionForQueue:(id)a3
{
  v4 = a3;
  v5 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self host];
  v6 = objc_alloc_init(MEMORY[0x1E6970818]);
  v7 = [v4 tracklist];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74___MPCQueueControllerBehaviorMusicSharePlay__sectionedCollectionForQueue___block_invoke;
  v13[3] = &unk_1E82331F8;
  v8 = v6;
  v14 = v8;
  v15 = v4;
  v16 = v5;
  v17 = self;
  v9 = v5;
  v10 = v4;
  [v7 enumerateSectionsUsingBlock:v13];

  v11 = v8;
  return v8;
}

- (void)_reloadCacheDataWithOptions:(unint64_t)a3
{
  if (a3)
  {
    v4 = [(MPRequestResponseController *)self->_requestController response];
    v5 = [v4 modelResponse];
    v6 = [v5 results];

    v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v6, "totalItemCount")}];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __73___MPCQueueControllerBehaviorMusicSharePlay__reloadCacheDataWithOptions___block_invoke;
    v24[3] = &unk_1E82331A8;
    v25 = v7;
    v8 = v7;
    [v6 enumerateItemIdentifiersUsingBlock:v24];
    v9 = [v8 copy];
    resultsIndexPathMap = self->_resultsIndexPathMap;
    self->_resultsIndexPathMap = v9;
  }

  v11 = [(ICSharedListeningQueue *)self->_queue tracklist];
  v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v11, "totalItemCount")}];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __73___MPCQueueControllerBehaviorMusicSharePlay__reloadCacheDataWithOptions___block_invoke_2;
  v20 = &unk_1E8233180;
  v21 = v11;
  v22 = self;
  v23 = v12;
  v13 = v12;
  v14 = v11;
  [v14 enumerateSectionsUsingBlock:&v17];
  v15 = [v13 copy];
  enumeratorContentItemIDs = self->_enumeratorContentItemIDs;
  self->_enumeratorContentItemIDs = v15;
}

- (id)_queueAsStateDictionary
{
  v24[5] = *MEMORY[0x1E69E9840];
  if ([(ICSharedListeningQueue *)self->_queue explicitContentState]== 1)
  {
    v3 = @"Explicit";
  }

  else
  {
    v4 = [(ICSharedListeningQueue *)self->_queue explicitContentState];
    v3 = @"Neutral";
    if (v4 == 2)
    {
      v3 = @"Restricted";
    }
  }

  queue = self->_queue;
  v6 = v3;
  v7 = [(ICSharedListeningQueue *)queue tracklist];
  v8 = [MEMORY[0x1E695DF70] array];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __68___MPCQueueControllerBehaviorMusicSharePlay__queueAsStateDictionary__block_invoke;
  v19 = &unk_1E8233180;
  v20 = self;
  v21 = v8;
  v22 = v7;
  v9 = v7;
  v10 = v8;
  [v9 enumerateSectionsUsingBlock:&v16];
  v23[0] = @"_autoPlayAvailable";
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[ICSharedListeningQueue isAutoPlayAvailable](self->_queue, "isAutoPlayAvailable", v16, v17, v18, v19, v20)}];
  v24[0] = v11;
  v23[1] = @"_autoPlayEnabled";
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[ICSharedListeningQueue isAutoPlayEnabled](self->_queue, "isAutoPlayEnabled")}];
  v24[1] = v12;
  v23[2] = @"_hasActiveRadioStation";
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[ICSharedListeningQueue hasActiveRadioStation](self->_queue, "hasActiveRadioStation")}];
  v24[2] = v13;
  v24[3] = v6;
  v23[3] = @"_explicitContentState";
  v23[4] = @"tracklist";
  v24[4] = v10;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:5];

  return v14;
}

- (void)_purgePendingActionsWithLabel:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  pendingActions = self->_pendingActions;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __75___MPCQueueControllerBehaviorMusicSharePlay__purgePendingActionsWithLabel___block_invoke;
  v26[3] = &unk_1E8233130;
  v18 = v4;
  v27 = v18;
  v6 = [(NSMutableArray *)pendingActions indexesOfObjectsPassingTest:v26];
  v7 = [(NSMutableArray *)self->_pendingActions objectsAtIndexes:v6];
  v17 = v6;
  [(NSMutableArray *)self->_pendingActions removeObjectsAtIndexes:v6];
  v19 = self;
  v20 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self host];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v22 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicSharePlayBehavior");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [v20 engineID];
          v15 = [(_MPCQueueControllerBehaviorMusicSharePlay *)v19 sessionID];
          *buf = 138543874;
          v29 = v14;
          v30 = 2114;
          v31 = v15;
          v32 = 2114;
          v33 = v12;
          _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEFAULT, "[BMSP:%{public}@:%{public}@] _purgePendingActionsWithLabel: | calling action [purged] action=%{public}@", buf, 0x20u);
        }

        v16 = [v12 block];
        v16[2](v16, 2);
      }

      v9 = [obj countByEnumeratingWithState:&v22 objects:v34 count:16];
    }

    while (v9);
  }
}

- (id)_mpcSharedListeningEventForICLiveLinkEvent:(id)a3
{
  v117 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 participant];
  v6 = [v5 identifier];
  v7 = [v4 participant];
  v8 = [v7 externalIdentifier];
  v9 = [MPCSharedListeningEventParticipant participantWithSharedListeningIdentifier:v6 externalIdentifier:v8];

  v10 = [(MPRequestResponseController *)self->_requestController response];
  v11 = [v10 modelResponse];
  v12 = [v11 results];

  v13 = [v4 type];
  v14 = 0;
  if (v13 <= 2)
  {
    if (v13 == 1)
    {
      v15 = [v4 sessionEvent];
      v42 = [v15 kind];
      if ((v42 - 1) >= 5)
      {
        v43 = 0;
      }

      else
      {
        v43 = v42;
      }

      v18 = [[MPCSharedListeningSessionEvent alloc] initWithKind:v43];
      v19 = [MPCSharedListeningEvent eventWithSessionEvent:v18 participant:v9];
    }

    else
    {
      if (v13 != 2)
      {
        goto LABEL_69;
      }

      v15 = [v4 playbackEvent];
      v20 = [v15 kind];
      if ((v20 - 1) > 3 || (v21 = [[MPCSharedListeningPlaybackEvent alloc] initWithKind:v20]) == 0)
      {
        v14 = 0;
        goto LABEL_26;
      }

      v18 = v21;
      v19 = [MPCSharedListeningEvent eventWithPlaybackEvent:v21 participant:v9];
    }

LABEL_24:
    v14 = v19;

LABEL_26:
    goto LABEL_69;
  }

  if (v13 == 3)
  {
    v22 = [v4 queueEvent];
    v23 = [v22 kind];
    v14 = 0;
    if (v23 <= 3)
    {
      switch(v23)
      {
        case 1:
          v56 = [v22 contentAdded];
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v114 = __Block_byref_object_copy__7744;
          v115 = __Block_byref_object_dispose__7745;
          v116 = 0;
          v57 = [v56 containerIdentifier];
          v58 = [v56 itemIdentifiers];
          v59 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v58, "count")}];
          v107[0] = MEMORY[0x1E69E9820];
          v107[1] = 3221225472;
          v107[2] = __88___MPCQueueControllerBehaviorMusicSharePlay__mpcSharedListeningEventForICLiveLinkEvent___block_invoke;
          v107[3] = &unk_1E82330B8;
          v60 = v57;
          v108 = v60;
          v112 = buf;
          v109 = v12;
          v110 = self;
          v61 = v59;
          v111 = v61;
          [v109 enumerateSectionsUsingBlock:v107];
          v62 = [MPCSharedListeningQueueEventContentAdded alloc];
          v63 = [(MPCSharedListeningQueueEventContentAdded *)v62 initWithItems:v61 container:*(*&buf[8] + 40)];
          v51 = [MPCSharedListeningQueueEvent queueEventWithAddedContent:v63];

          _Block_object_dispose(buf, 8);
          goto LABEL_65;
        case 2:
          v24 = [v22 contentRemoved];
          resultsIndexPathMap = self->_resultsIndexPathMap;
          v80 = [v24 itemIdentifier];
          v81 = [(NSDictionary *)resultsIndexPathMap objectForKeyedSubscript:v80];

          if (v81)
          {
            v82 = [v12 itemAtIndexPath:v81];
            v83 = [v82 copyWithPropertySet:self->_requestedPropertySetForEvents];
          }

          else
          {
            v83 = 0;
          }

          v84 = [[MPCSharedListeningQueueEventContentRemoved alloc] initWithItem:v83];
          v51 = [MPCSharedListeningQueueEvent queueEventWithRemovedContent:v84];

          goto LABEL_64;
        case 3:
          v24 = [v22 contentReordered];
          v48 = self->_resultsIndexPathMap;
          v49 = [v24 itemIdentifier];
          v27 = [(NSDictionary *)v48 objectForKeyedSubscript:v49];

          if (v27)
          {
            v50 = [v12 itemAtIndexPath:v27];
            v29 = [v50 copyWithPropertySet:self->_requestedPropertySetForEvents];

            if (v29)
            {
              v30 = [[MPCSharedListeningQueueEventContentReordered alloc] initWithItem:v29];
              v31 = [MPCSharedListeningQueueEvent queueEventWithReorderedContent:v30];
              goto LABEL_37;
            }
          }

LABEL_41:
          v51 = 0;
          goto LABEL_63;
      }
    }

    else
    {
      if (v23 <= 5)
      {
        if (v23 != 4)
        {
          v24 = [v22 contentReplaced];
          v25 = self->_resultsIndexPathMap;
          v26 = [v24 startItemIdentifier];
          v27 = [(NSDictionary *)v25 objectForKeyedSubscript:v26];

          if (v27)
          {
            v28 = [v12 itemAtIndexPath:v27];
            v29 = [v28 copyWithPropertySet:self->_requestedPropertySetForEvents];

            if (v29)
            {
              v30 = [[MPCSharedListeningQueueEventContentReplaced alloc] initWithStartItem:v29];
              v31 = [MPCSharedListeningQueueEvent queueEventWithReplacedContent:v30];
LABEL_37:
              v51 = v31;

LABEL_63:
LABEL_64:

LABEL_65:
              if (v51)
              {
                v14 = [MPCSharedListeningEvent eventWithQueueEvent:v51 participant:v9];
              }

              else
              {
                v14 = 0;
              }

              goto LABEL_68;
            }
          }

          goto LABEL_41;
        }

        v24 = [v22 playbackModeChanged];
        v64 = [v24 kind];
        switch(v64)
        {
          case 3:
            v88 = [MPCSharedListeningQueueEventPlaybackModeChanged alloc];
            v66 = [v24 autoPlayEnabled];
            v69 = [(MPCSharedListeningQueueEventPlaybackModeChanged *)v88 initWithUpdatedAutoPlayEnabled:v66[2]()];
            break;
          case 2:
            v85 = [MPCSharedListeningQueueEventPlaybackModeChanged alloc];
            v66 = [v24 repeatType];
            v86 = v66[2]();
            if (v86 == 3)
            {
              v87 = 2;
            }

            else
            {
              v87 = v86 == 2;
            }

            v69 = [(MPCSharedListeningQueueEventPlaybackModeChanged *)v85 initWithUpdatedRepeatType:v87];
            break;
          case 1:
            v65 = [MPCSharedListeningQueueEventPlaybackModeChanged alloc];
            v66 = [v24 shuffleType];
            v67 = v66[2]();
            if (v67 == 3)
            {
              v68 = 2;
            }

            else
            {
              v68 = v67 == 2;
            }

            v69 = [(MPCSharedListeningQueueEventPlaybackModeChanged *)v65 initWithUpdatedShuffleType:v68];
            break;
          default:
            goto LABEL_72;
        }

        v27 = v69;

        if (v27)
        {
          v55 = [MPCSharedListeningQueueEvent queueEventWithPlaybackModeChanged:v27];
          goto LABEL_62;
        }

LABEL_72:
        v51 = 0;
        goto LABEL_64;
      }

      if (v23 == 6)
      {
        v70 = [v22 contentPlayedNow];
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v114 = __Block_byref_object_copy__7744;
        v115 = __Block_byref_object_dispose__7745;
        v116 = 0;
        v71 = [v70 containerIdentifier];
        v101 = 0;
        v102 = &v101;
        v103 = 0x3032000000;
        v104 = __Block_byref_object_copy__7744;
        v105 = __Block_byref_object_dispose__7745;
        v106 = 0;
        v72 = [v70 itemIdentifiers];
        v73 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v72, "count")}];
        v90 = MEMORY[0x1E69E9820];
        v91 = 3221225472;
        v92 = __88___MPCQueueControllerBehaviorMusicSharePlay__mpcSharedListeningEventForICLiveLinkEvent___block_invoke_3;
        v93 = &unk_1E8233108;
        v74 = v71;
        v94 = v74;
        v99 = buf;
        v95 = v12;
        v96 = self;
        v75 = v70;
        v97 = v75;
        v100 = &v101;
        v76 = v73;
        v98 = v76;
        [v95 enumerateSectionsUsingBlock:&v90];
        v77 = [MPCSharedListeningQueueEventContentPlayedNow alloc];
        v78 = [(MPCSharedListeningQueueEventContentPlayedNow *)v77 initWithItems:v76 container:*(*&buf[8] + 40) startItem:v102[5], v90, v91, v92, v93];
        v51 = [MPCSharedListeningQueueEvent queueEventWithPlayedNowContent:v78];

        _Block_object_dispose(&v101, 8);
        _Block_object_dispose(buf, 8);

        goto LABEL_65;
      }

      if (v23 == 7)
      {
        v24 = [v22 contentUpdatedMessage];
        v52 = [MPCSharedListeningQueueEventContentUpdatedMessage alloc];
        v53 = [v24 localizedTitle];
        v54 = [v24 localizedMessage];
        v27 = [(MPCSharedListeningQueueEventContentUpdatedMessage *)v52 initWithLocalizedTitle:v53 localizedMessage:v54];

        v55 = [MPCSharedListeningQueueEvent queueEventWithContentUpdatedMessage:v27];
LABEL_62:
        v51 = v55;
        goto LABEL_63;
      }
    }

LABEL_68:

    goto LABEL_69;
  }

  if (v13 != 4)
  {
    if (v13 != 5)
    {
      goto LABEL_69;
    }

    v15 = [v4 customEvent];
    v16 = [MPCSharedListeningCustomEvent alloc];
    v17 = [v15 localizedMessage];
    v18 = [(MPCSharedListeningCustomEvent *)v16 initWithLocalizedMessage:v17];

    v19 = [MPCSharedListeningEvent eventWithCustomEvent:v18 participant:v9];
    goto LABEL_24;
  }

  v32 = [v4 reactionEvent];
  v33 = self->_resultsIndexPathMap;
  v34 = [v32 itemIdentifier];
  v35 = [(NSDictionary *)v33 objectForKeyedSubscript:v34];

  if (v35 && ([v12 itemAtIndexPath:v35], v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v36, "copyWithPropertySet:", self->_requestedPropertySetForEvents), v36, v37))
  {
    v38 = [MPCSharedListeningReactionEvent alloc];
    v39 = [v32 reaction];
    v40 = [v32 reactionIdentifier];
    v41 = [(MPCSharedListeningReactionEvent *)v38 initWithReaction:v39 reactionIdentifier:v40 item:v37];

    v14 = [MPCSharedListeningEvent eventWithReactionEvent:v41 participant:v9];
  }

  else
  {
    v37 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self host];
    v44 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicSharePlayBehavior");
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = [v37 engineID];
      v46 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self sessionID];
      v47 = [v32 itemIdentifier];
      *buf = 138543874;
      *&buf[4] = v45;
      *&buf[12] = 2114;
      *&buf[14] = v46;
      *&buf[22] = 2114;
      v114 = v47;
      _os_log_impl(&dword_1C5C61000, v44, OS_LOG_TYPE_ERROR, "[BMSP:%{public}@:%{public}@] _mpcSharedListeningEventForICLiveLinkEvent: | dropping event [unknown item] event=Reaction itemIdentifier=%{public}@", buf, 0x20u);
    }

    v14 = 0;
  }

LABEL_69:

  return v14;
}

- (id)_itemObjectForSharedListeningItemID:(id)a3
{
  requestController = self->_requestController;
  v5 = a3;
  v6 = [(MPRequestResponseController *)requestController response];
  v7 = [v6 modelResponse];
  v8 = [v7 results];

  v9 = [(NSDictionary *)self->_resultsIndexPathMap objectForKeyedSubscript:v5];

  if (v9)
  {
    v10 = [v8 itemAtIndexPath:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_initializeWithQueue:(id)a3
{
  v5 = a3;
  v6 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self host];
  v7 = [v6 beginEditWithReason:@"BehaviorMusicSharePlay-initialLoad"];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66___MPCQueueControllerBehaviorMusicSharePlay__initializeWithQueue___block_invoke;
  v11[3] = &unk_1E8233068;
  v12 = v6;
  v13 = self;
  v15 = v5;
  v16 = a2;
  v14 = v7;
  v8 = v5;
  v9 = v7;
  v10 = v6;
  [v8 getExpectedCurrentItemWithCompletion:v11];
}

- (void)_enqueuePendingActionWithLabel:(id)a3 itemIdentifier:(id)a4 block:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v11 = [(NSDictionary *)self->_resultsIndexPathMap objectForKeyedSubscript:v9];
  if (v11)
  {
    v12 = [(MPRequestResponseController *)self->_requestController response];
    v13 = [v12 modelResponse];
    v14 = [v13 results];

    v15 = [(_MPCQCBMSPPendingAction *)v14 identifiersForItemAtIndexPath:v11];
    if (([v15 isPlaceholder] & 1) == 0)
    {
      v10[2](v10, 0);
      goto LABEL_8;
    }
  }

  v14 = objc_alloc_init(_MPCQCBMSPPendingAction);
  [(_MPCQCBMSPPendingAction *)v14 setLabel:v8];
  [(_MPCQCBMSPPendingAction *)v14 setItemIdentifier:v9];
  v16 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:5.0];
  [(_MPCQCBMSPPendingAction *)v14 setExpirationDate:v16];

  [(_MPCQCBMSPPendingAction *)v14 setBlock:v10];
  [(NSMutableArray *)self->_pendingActions addObject:v14];
  v15 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self host];
  v17 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicSharePlayBehavior");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v15 engineID];
    v19 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self sessionID];
    v20 = 138543874;
    v21 = v18;
    v22 = 2114;
    v23 = v19;
    v24 = 2114;
    v25 = v14;
    _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_DEFAULT, "[BMSP:%{public}@:%{public}@] _enqueuePendingActionWithLabel:itemIdentifier:block: | enqueuing [] action=%{public}@", &v20, 0x20u);
  }

LABEL_8:
}

- (void)_emitEventsForPlaybackBehaviorChange
{
  v14[2] = *MEMORY[0x1E69E9840];
  if ([(_MPCQueueControllerBehaviorMusicSharePlay *)self autoPlayEnabled])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self host];
  v5 = [v4 eventStream];
  v13[0] = @"session-id";
  v6 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self sessionID];
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = @"playback-behavior-metadata";
  v14[0] = v7;
  v11 = @"autoplay-mode";
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
  v12 = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v14[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [v5 emitEventType:@"playback-behavior-changed" payload:v10];

  if (!v6)
  {
  }
}

- (void)_emitEventsForParticipants:(id)a3 localUserIdentity:(id)a4
{
  v23[3] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __90___MPCQueueControllerBehaviorMusicSharePlay__emitEventsForParticipants_localUserIdentity___block_invoke;
  v20 = &unk_1E8233018;
  v7 = v6;
  v21 = v7;
  v8 = [a3 msv_compactMap:&v17];
  v9 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self host:v17];
  v10 = [v9 eventStream];
  v22[0] = @"session-id";
  v11 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self sessionID];
  v12 = v11;
  if (!v11)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v23[0] = v12;
  v22[1] = @"shared-session-id";
  v13 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self sessionID];
  v14 = v13;
  if (!v13)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v22[2] = @"participants";
  v15 = MEMORY[0x1E695E0F0];
  if (v8)
  {
    v15 = v8;
  }

  v23[1] = v14;
  v23[2] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];
  [v10 emitEventType:@"shared-session-participants-changed" payload:v16];

  if (!v13)
  {
  }

  if (!v11)
  {
  }
}

- (void)_emitEventsForAddedSharedListeningContainer:(id)a3
{
  v19[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self host];
  v15 = [v14 eventStream];
  v18[0] = @"queue-section-id";
  v5 = [v4 identifier];
  v19[0] = v5;
  v18[1] = @"account-id";
  v6 = +[MPCPlaybackAccountManager sharedManager];
  v7 = [v6 activeAccount];
  v8 = [v7 hashedDSID];
  v9 = v8;
  if (!v8)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v19[1] = v9;
  v19[2] = &unk_1F4599220;
  v18[2] = @"private-listening-source";
  v18[3] = @"queue-reporting-metadata";
  v16[0] = @"feature-name";
  v10 = [v4 featureName];
  v11 = v10;
  if (!v10)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v17[0] = v11;
  v17[1] = @"MusicSharePlayBehavior";
  v16[1] = @"playback-context-class-name";
  v16[2] = @"private-listening-enabled";
  v17[2] = MEMORY[0x1E695E118];
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
  v19[3] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:4];
  [v15 emitEventType:@"queue-add" payload:v13];

  if (!v10)
  {
  }

  if (!v8)
  {
  }
}

- (void)_dequeuePendingActions
{
  v53 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v3 = [MEMORY[0x1E695DF00] date];
  v37 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self host];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = self->_pendingActions;
  v40 = [(NSMutableArray *)obj countByEnumeratingWithState:&v42 objects:v52 count:16];
  if (!v40)
  {
    v41 = 0;
    goto LABEL_31;
  }

  v41 = 0;
  v39 = *v43;
  v36 = v3;
  while (2)
  {
    for (i = 0; i != v40; ++i)
    {
      if (*v43 != v39)
      {
        objc_enumerationMutation(obj);
      }

      v5 = *(*(&v42 + 1) + 8 * i);
      v6 = [v5 expirationDate];
      v7 = [v3 laterDate:v6];

      if (v7 == v3)
      {
        v23 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicSharePlayBehavior");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = [v37 engineID];
          v25 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self sessionID];
          *buf = 138543874;
          v47 = v24;
          v48 = 2114;
          v49 = v25;
          v50 = 2114;
          v51 = v5;
          _os_log_impl(&dword_1C5C61000, v23, OS_LOG_TYPE_ERROR, "[BMSP:%{public}@:%{public}@] _dequeuePendingActions | calling action [expired] action=%{public}@", buf, 0x20u);
        }

        ++v41;
        v26 = [v5 block];
        v26[2](v26, 1);

        continue;
      }

      queue = self->_queue;
      v9 = [v5 itemIdentifier];
      v10 = [(ICSharedListeningQueue *)queue itemForIdentifier:v9];

      if (!v10)
      {
        v10 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicSharePlayBehavior");
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
LABEL_30:

          goto LABEL_31;
        }

        v13 = [v37 engineID];
        v31 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self sessionID];
        v32 = [v5 itemIdentifier];
        *buf = 138543874;
        v47 = v13;
        v48 = 2114;
        v49 = v31;
        v50 = 2114;
        v51 = v32;
        _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "[BMSP:%{public}@:%{public}@] _dequeuePendingActions | stopping [no such item] missingItemID=%{public}@", buf, 0x20u);
        goto LABEL_28;
      }

      v11 = [(MPRequestResponseController *)self->_requestController response];
      v12 = [v11 modelResponse];
      v13 = [v12 results];

      resultsIndexPathMap = self->_resultsIndexPathMap;
      v15 = [v5 itemIdentifier];
      v16 = [(NSDictionary *)resultsIndexPathMap objectForKeyedSubscript:v15];

      if (!v16)
      {
        v31 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicSharePlayBehavior");
        if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
LABEL_29:

          goto LABEL_30;
        }

        v32 = [v37 engineID];
        v33 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self sessionID];
        v34 = [v5 itemIdentifier];
        *buf = 138543874;
        v47 = v32;
        v48 = 2114;
        v49 = v33;
        v50 = 2114;
        v51 = v34;
        _os_log_impl(&dword_1C5C61000, v31, OS_LOG_TYPE_DEFAULT, "[BMSP:%{public}@:%{public}@] _dequeuePendingActions | stopping [waiting for item metadata] itemID=%{public}@", buf, 0x20u);

LABEL_28:
        goto LABEL_29;
      }

      v17 = [v13 identifiersForItemAtIndexPath:v16];
      v18 = [v17 isPlaceholder];
      v19 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicSharePlayBehavior");
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
      if (v18)
      {
        if (v20)
        {
          v21 = [v37 engineID];
          v22 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self sessionID];
          *buf = 138543874;
          v47 = v21;
          v48 = 2114;
          v49 = v22;
          v50 = 2114;
          v51 = v17;
          _os_log_impl(&dword_1C5C61000, v19, OS_LOG_TYPE_DEFAULT, "[BMSP:%{public}@:%{public}@] _dequeuePendingActions | stopping [placeholder item] idSet=%{public}@", buf, 0x20u);

          v3 = v36;
        }
      }

      else
      {
        v27 = self;
        if (v20)
        {
          [v37 engineID];
          v28 = v35 = v10;
          v29 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self sessionID];
          *buf = 138543874;
          v47 = v28;
          v48 = 2114;
          v49 = v29;
          v50 = 2114;
          v51 = v5;
          _os_log_impl(&dword_1C5C61000, v19, OS_LOG_TYPE_DEFAULT, "[BMSP:%{public}@:%{public}@] _dequeuePendingActions | calling action [satisfied] action=%{public}@", buf, 0x20u);

          v10 = v35;
        }

        v30 = [v5 block];
        v30[2](v30, 0);

        ++v41;
        self = v27;
        v3 = v36;
      }

      if (v18)
      {
        goto LABEL_31;
      }
    }

    v40 = [(NSMutableArray *)obj countByEnumeratingWithState:&v42 objects:v52 count:16];
    if (v40)
    {
      continue;
    }

    break;
  }

LABEL_31:

  [(NSMutableArray *)self->_pendingActions removeObjectsInRange:0, v41];
}

- (id)_componentsForSharedListeningItemID:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__7744;
  v17 = __Block_byref_object_dispose__7745;
  v18 = 0;
  v5 = [(ICSharedListeningQueue *)self->_queue tracklist];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __81___MPCQueueControllerBehaviorMusicSharePlay__componentsForSharedListeningItemID___block_invoke;
  v9[3] = &unk_1E8232FE0;
  v6 = v4;
  v10 = v6;
  v11 = self;
  v12 = &v13;
  [v5 enumerateItemsUsingBlock:v9];

  v7 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v7;
}

- (id)_componentsForContentItemID:(id)a3
{
  v5 = a3;
  if (![v5 length])
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusicSharePlay.m" lineNumber:1207 description:{@"Invalid parameter not satisfying: %@", @"contentItemID.length > 0"}];
  }

  v6 = MPCQueueControllerBehaviorMusicIdentifierComponentsFromContentItemID(v5);
  queue = self->_queue;
  v8 = [v6 itemID];
  v9 = [(ICSharedListeningQueue *)queue itemForIdentifier:v8];

  v10 = [v6 copyWithBehaviorFlags:{objc_msgSend(v9, "isAutoPlayItem")}];

  return v10;
}

- (void)liveLink:(id)a3 didReceiveEvent:(id)a4
{
  v5 = a4;
  v4 = v5;
  msv_dispatch_on_main_queue();
}

- (void)liveLink:(id)a3 didReceiveDirectCurrentItemChanged:(id)a4 fromParticipant:(id)a5
{
  v8 = a4;
  v9 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __105___MPCQueueControllerBehaviorMusicSharePlay_liveLink_didReceiveDirectCurrentItemChanged_fromParticipant___block_invoke;
  v12[3] = &unk_1E8238588;
  v12[4] = self;
  v13 = v8;
  v14 = v9;
  v15 = a2;
  v10 = v9;
  v11 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], v12);
}

- (void)liveLink:(id)a3 didUpdateQueue:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69___MPCQueueControllerBehaviorMusicSharePlay_liveLink_didUpdateQueue___block_invoke;
  v7[3] = &unk_1E82392C0;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

- (void)liveLink:(id)a3 didUpdateParticipants:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76___MPCQueueControllerBehaviorMusicSharePlay_liveLink_didUpdateParticipants___block_invoke;
  block[3] = &unk_1E82391C0;
  block[4] = self;
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)liveLink:(id)a3 didEncounterError:(id)a4 willRetry:(BOOL)a5
{
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82___MPCQueueControllerBehaviorMusicSharePlay_liveLink_didEncounterError_willRetry___block_invoke;
  block[3] = &unk_1E8232F70;
  v11 = a5;
  block[4] = self;
  v10 = v7;
  v8 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)didStopLiveLink:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61___MPCQueueControllerBehaviorMusicSharePlay_didStopLiveLink___block_invoke;
  block[3] = &unk_1E8239298;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)liveLinkDidReconnect:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66___MPCQueueControllerBehaviorMusicSharePlay_liveLinkDidReconnect___block_invoke;
  block[3] = &unk_1E8239298;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (id)playbackCoordinator:(id)a3 identifierForPlayerItem:(id)a4
{
  v5 = [a4 contentItemID];
  v6 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self _componentsForContentItemID:v5];
  v7 = [v6 itemID];

  return v7;
}

- (void)controller:(id)a3 defersResponseReplacement:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82___MPCQueueControllerBehaviorMusicSharePlay_controller_defersResponseReplacement___block_invoke;
  v7[3] = &unk_1E8239170;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

- (int64_t)displayItemCount
{
  v2 = [(ICSharedListeningQueue *)self->_queue tracklist];
  v3 = [v2 totalItemCount];

  return v3;
}

- (void)clearAllItemsAfterContentItemID:(id)a3
{
  v4 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self _componentsForContentItemID:a3];
  queue = self->_queue;
  v10 = v4;
  v6 = [v4 itemID];
  v7 = [(ICSharedListeningQueue *)queue itemForIdentifier:v6];

  if (v7)
  {
    v8 = self->_queue;
    v9 = [v10 itemID];
    [(ICSharedListeningQueue *)v8 removeAllItemIdentifiersAfterItemIdentifier:v9];
  }
}

- (void)removeContentItemID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self _componentsForContentItemID:a3];
  queue = self->_queue;
  v14 = v7;
  v9 = [v7 itemID];
  v10 = [(ICSharedListeningQueue *)queue itemForIdentifier:v9];

  if (v10)
  {
    v11 = self->_queue;
    v12 = [v14 itemID];
    [(ICSharedListeningQueue *)v11 removeItemIdentifier:v12];

    v6[2](v6, 0);
  }

  else
  {
    v13 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicSharePlayBehaviorError" code:8 debugDescription:@"Received a remove command but the item is not available in the queue."];
    v6[2](v6, v13);

    v6 = v13;
  }
}

- (void)moveContentItemID:(id)a3 afterContentItemID:(id)a4 completion:(id)a5
{
  v21 = a4;
  v8 = a5;
  v9 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self _componentsForContentItemID:a3];
  queue = self->_queue;
  v11 = [v9 itemID];
  v12 = [(ICSharedListeningQueue *)queue itemForIdentifier:v11];

  if (v12)
  {
    v13 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self _componentsForContentItemID:v21];
    v14 = self->_queue;
    v15 = [v13 itemID];
    v16 = [(ICSharedListeningQueue *)v14 itemForIdentifier:v15];

    if (v16)
    {
      v17 = self->_queue;
      v18 = [v9 itemID];
      v19 = [v13 itemID];
      [(ICSharedListeningQueue *)v17 moveItemIdentifier:v18 afterItemIdentifier:v19];

      v8[2](v8, 0);
    }

    else
    {
      v20 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicSharePlayBehaviorError" code:8 debugDescription:@"Received a move command but the target is not available in the queue."];
      (v8)[2](v8, v20);
    }
  }

  else
  {
    v13 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicSharePlayBehaviorError" code:8 debugDescription:@"Received a move command but the source is not available in the queue."];
    (v8)[2](v8, v13);
  }
}

- (void)moveContentItemID:(id)a3 beforeContentItemID:(id)a4 completion:(id)a5
{
  v21 = a4;
  v8 = a5;
  v9 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self _componentsForContentItemID:a3];
  queue = self->_queue;
  v11 = [v9 itemID];
  v12 = [(ICSharedListeningQueue *)queue itemForIdentifier:v11];

  if (v12)
  {
    v13 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self _componentsForContentItemID:v21];
    v14 = self->_queue;
    v15 = [v13 itemID];
    v16 = [(ICSharedListeningQueue *)v14 itemForIdentifier:v15];

    if (v16)
    {
      v17 = self->_queue;
      v18 = [v9 itemID];
      v19 = [v13 itemID];
      [(ICSharedListeningQueue *)v17 moveItemIdentifier:v18 beforeItemIdentifier:v19];

      v8[2](v8, 0);
    }

    else
    {
      v20 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicSharePlayBehaviorError" code:8 debugDescription:@"Received a move command but the target is not available in the queue."];
      (v8)[2](v8, v20);
    }
  }

  else
  {
    v13 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicSharePlayBehaviorError" code:8 debugDescription:@"Received a move command but the source is not available in the queue."];
    (v8)[2](v8, v13);
  }
}

- (void)performInsertCommand:(id)a3 targetContentItemID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 playbackQueue];
  v11 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self externalSyncHost];
  v12 = [v11 beginExternalSyncEditWithReason:@"PerformInsertCommand"];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __97___MPCQueueControllerBehaviorMusicSharePlay_performInsertCommand_targetContentItemID_completion___block_invoke;
  v17[3] = &unk_1E8232F40;
  v18 = v10;
  v19 = v12;
  v20 = v8;
  v21 = self;
  v22 = v9;
  v23 = a2;
  v13 = v8;
  v14 = v12;
  v15 = v9;
  v16 = v10;
  [v16 getMusicPlaybackContextWithOptions:0 completion:v17];
}

- (BOOL)isSupportedInsertionPosition:(int64_t)a3 fromContentItemID:(id)a4 reason:(id *)a5
{
  v8 = a4;
  v9 = 1;
  if (a3 <= 1)
  {
    if (!a3)
    {
      goto LABEL_21;
    }

    if (a3 == 1)
    {
      if (a5)
      {
        v10 = @"cannot insert at Tail";
        goto LABEL_19;
      }

LABEL_20:
      v9 = 0;
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  if (a3 == 4)
  {
    if (a5)
    {
      v10 = @"cannot insert at Start";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (a3 == 3)
  {
    goto LABEL_21;
  }

  if (a3 != 2)
  {
LABEL_15:
    if (a5)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown insertion position: %d", a3];
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (self->_activeItemFlags)
  {
    if (a5)
    {
      v10 = @"active item from auto play";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if ([(ICSharedListeningQueue *)self->_queue hasActiveRadioStation])
  {
    if (a5)
    {
      v10 = @"queue contains radio station";
LABEL_19:
      v9 = 0;
      *a5 = v10;
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_21:

  return v9;
}

- (void)setAllowsQueueModifications:(BOOL)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self host];
  v5 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicSharePlayBehavior");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [v4 engineID];
    v7 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self sessionID];
    v8 = 138543618;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_ERROR, "[BMSP:%{public}@:%{public}@] setAllowsQueueModifications: | ignoring unsupported option [cannot disable queue modifications]", &v8, 0x16u);
  }
}

- (void)canReuseQueue:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 replaceIntent] == 3)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_6:
    if ([_MPCQueueControllerBehaviorMusic canLoadQueue:v6 reason:0]&& self->_queue)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __70___MPCQueueControllerBehaviorMusicSharePlay_canReuseQueue_completion___block_invoke;
      v9[3] = &unk_1E8237C68;
      v9[4] = self;
      v10 = v7;
      [v6 getMusicPlaybackContextWithOptions:0 completion:v9];

      goto LABEL_10;
    }

LABEL_9:
    (*(v7 + 2))(v7, 0, 0, 0, 0);
    goto LABEL_10;
  }

  v8 = [v6 identifier];
  if (![@"InProcess-com.apple.music.playbackqueue.sharedlistening" isEqualToString:v8])
  {

    goto LABEL_6;
  }

  (*(v7 + 2))(v7, 0, 0, 0, 0);

LABEL_10:
}

- (void)setRequestedPropertySetForEvents:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [MEMORY[0x1E69708B0] emptyPropertySet];
  }

  if (self->_requestedPropertySetForEvents != v4)
  {
    v7 = v4;
    v5 = [(MPPropertySet *)v4 copy];
    requestedPropertySetForEvents = self->_requestedPropertySetForEvents;
    self->_requestedPropertySetForEvents = v5;

    v4 = v7;
  }
}

- (int64_t)queueExplicitContentState
{
  result = [(ICSharedListeningQueue *)self->_queue explicitContentState];
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

- (void)updatePlaybackCoordinator:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  playbackCoordinator = self->_playbackCoordinator;
  if (playbackCoordinator != v5)
  {
    v7 = [(AVPlayerPlaybackCoordinator *)playbackCoordinator delegate];

    if (v7 == self)
    {
      [(AVPlayerPlaybackCoordinator *)self->_playbackCoordinator setDelegate:0];
    }

    objc_storeStrong(&self->_playbackCoordinator, a3);
    [(AVPlayerPlaybackCoordinator *)self->_playbackCoordinator setDelegate:self];
    if (self->_playbackCoordinator)
    {
      v8 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self queue];

      if (v8)
      {
        v9 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self host];
        v10 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicSharePlayBehavior");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [v9 engineID];
          v12 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self sessionID];
          v13 = self->_playbackCoordinator;
          v14 = 138543874;
          v15 = v11;
          v16 = 2114;
          v17 = v12;
          v18 = 2114;
          v19 = v13;
          _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "[BMSP:%{public}@:%{public}@] updatePlaybackCoordinator: | begin synchronized playback with AVPlaybackCoordinator [] playbackCoordinator=%{public}@", &v14, 0x20u);
        }

        [(ICLiveLink *)self->_liveLink beginSynchronizedPlaybackWithAVPlaybackCoordinator:self->_playbackCoordinator];
      }
    }
  }
}

- (void)endSynchronizedPlayback
{
  v5 = self->_playbackCoordinator;
  v3 = [(AVPlayerPlaybackCoordinator *)v5 delegate];

  if (v3 == self)
  {
    [(AVPlayerPlaybackCoordinator *)v5 setDelegate:0];
  }

  playbackCoordinator = self->_playbackCoordinator;
  self->_playbackCoordinator = 0;

  [(ICLiveLink *)self->_liveLink endSynchronizedPlayback];
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

- (void)setHostingSharedSessionID:(id)a3 reason:(id)a4
{
  if (a3)
  {
    v5 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self musicSharePlayBehaviorDelegate:a3];
    [v5 behavior:self didEndSharePlaySessionWithReason:2];
  }
}

- (void)findFirstContentItemIDForItemIntersectingIdentifierSet:(id)a3 completion:(id)a4
{
  v16 = a4;
  requestController = self->_requestController;
  v7 = a3;
  v8 = [(MPRequestResponseController *)requestController response];
  v9 = [v8 modelResponse];
  v10 = [v9 results];

  v11 = [v10 indexPathForItemWithIdentifiersIntersectingSet:v7];

  if (v11)
  {
    v12 = [v10 identifiersForItemAtIndexPath:v11];
    v13 = [v12 vendorID];
    v14 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self _componentsForSharedListeningItemID:v13];

    v15 = [v14 contentItemID];
    v16[2](v16, v15, 0);
  }

  else
  {
    v16[2](v16, 0, 0);
  }
}

- (void)getSharedQueueTracklistWithStartingContentItemID:(id)a3 completion:(id)a4
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusicSharePlay.m" lineNumber:637 description:@"Cannot get a shared queue tracklist from an existing shared queue."];
}

- (BOOL)isAutoPlayContentItemID:(id)a3
{
  v3 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self _componentsForContentItemID:a3];
  v4 = [v3 behaviorFlags];

  return v4 & 1;
}

- (void)setAutoPlayEnabled:(BOOL)a3 targetContentItemID:(id)a4 completion:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __95___MPCQueueControllerBehaviorMusicSharePlay_setAutoPlayEnabled_targetContentItemID_completion___block_invoke;
  v12[3] = &unk_1E8232EA0;
  objc_copyWeak(&v14, &location);
  v15 = v6;
  v11 = v9;
  v13 = v11;
  [(ICSharedListeningQueue *)queue setAutoPlayEnabled:v6 completion:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (BOOL)canUserEnableAutoPlayWithReason:(id *)a3
{
  result = [(ICSharedListeningQueue *)self->_queue isAutoPlayAvailable];
  if (a3)
  {
    if (!result)
    {
      *a3 = @"AutoPlay unavailable in this SharePlay session";
    }
  }

  return result;
}

- (void)reshuffleWithTargetContentItemID:(id)a3 completion:(id)a4
{
  v5 = MEMORY[0x1E696ABC0];
  v6 = a4;
  v7 = [v5 msv_errorWithDomain:@"MPCMusicSharePlayBehaviorError" code:3 debugDescription:@"Shuffle is not supported in SharePlay."];
  (*(a4 + 2))(v6, v7);
}

- (void)setShuffleType:(int64_t)a3 targetContentItemID:(id)a4 completion:(id)a5
{
  v6 = MEMORY[0x1E696ABC0];
  v7 = a5;
  v8 = [v6 msv_errorWithDomain:@"MPCMusicSharePlayBehaviorError" code:3 debugDescription:@"Shuffle is not supported in SharePlay."];
  (*(a5 + 2))(v7, v8);
}

- (BOOL)canUserChangeShuffleModeWithReason:(id *)a3
{
  if (a3)
  {
    *a3 = @"in shared listening mode";
  }

  return 0;
}

- (void)setRepeatType:(int64_t)a3 completion:(id)a4
{
  v5 = MEMORY[0x1E696ABC0];
  v6 = a4;
  v7 = [v5 msv_errorWithDomain:@"MPCMusicSharePlayBehaviorError" code:3 debugDescription:@"Repeat is not supported in SharePlay."];
  (*(a4 + 2))(v6, v7);
}

- (BOOL)canUserChangeRepeatTypeWithReason:(id *)a3
{
  if (a3)
  {
    *a3 = @"in shared listening mode";
  }

  return 0;
}

- (void)didJumpToTargetContentItemID:(id)a3
{
  v6 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self _componentsForContentItemID:a3];
  liveLink = self->_liveLink;
  v5 = [v6 itemID];
  [(ICLiveLink *)liveLink broadcastDirectCurrentItemChangedToItemIdentifier:v5];
}

- (id)_itemForContentItemID:(id)a3 allowReuse:(BOOL)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v44 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self host];
  v6 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self _componentsForContentItemID:v5];
  if ([v6 type])
  {
    v7 = objc_alloc_init(MEMORY[0x1E6970880]);
    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
    v9 = [v8 localizedStringForKey:@"LOADING_AUDIO_LABEL" value:&stru_1F454A698 table:@"MediaPlayer"];
    [(MPCModelGenericAVItem *)v7 setMainTitle:v9];

    v10 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self queue];
    v11 = [v6 itemID];
    v12 = [v10 itemForIdentifier:v11];
    v13 = [v12 mediaIdentifier];
    -[MPCModelGenericAVItem setStoreItemInt64ID:](v7, "setStoreItemInt64ID:", [v13 longLongValue]);

    v14 = [v6 itemID];
    [(MPCModelGenericAVItem *)v7 setQueueIdentifier:v14];

    v15 = [v6 contentItemID];
    v16 = [v6 sectionID];
    v17 = [v6 itemID];
    [(MPCModelGenericAVItem *)v7 setContentItemID:v15 queueSectionID:v16 queueItemID:v17];
    goto LABEL_5;
  }

  v18 = [(MPRequestResponseController *)self->_requestController response];
  v19 = [v18 modelResponse];
  v15 = [v19 results];

  resultsIndexPathMap = self->_resultsIndexPathMap;
  v21 = [v6 itemID];
  v16 = [(NSDictionary *)resultsIndexPathMap objectForKeyedSubscript:v21];

  if (v16)
  {
    v17 = [v15 itemAtIndexPath:v16];
    v42 = -[NSObject sectionAtIndex:](v15, "sectionAtIndex:", [v16 section]);
    v22 = [(MPRequestResponseController *)self->_requestController request];
    v23 = [v22 modelRequest];
    v24 = [v23 playbackRequestEnvironment];

    v25 = [MPCModelGenericAVItem alloc];
    v26 = [(MPRequestResponseController *)self->_requestController request];
    v27 = [v26 modelRequest];
    [v27 itemProperties];
    v28 = v43 = v5;
    v7 = [(MPCModelGenericAVItem *)v25 initWithGenericObject:v17 itemProperties:v28 playbackRequestEnvironment:v24 identityPropertySet:self->_identityPropertySet];

    v29 = [v6 itemID];
    [(MPCModelGenericAVItem *)v7 setQueueIdentifier:v29];

    v30 = [v6 contentItemID];
    v31 = [v6 sectionID];
    v32 = [v6 itemID];
    [(MPCModelGenericAVItem *)v7 setContentItemID:v30 queueSectionID:v31 queueItemID:v32];

    v5 = v43;
    v33 = [v24 userIdentity];
    v34 = [MPCMediaLibraryPlaybackAssetCacheProvider deviceLibraryProviderWithUserIdentity:v33];
    [(MPCModelGenericAVItem *)v7 setAssetCacheProvider:v34];

    v35 = [MEMORY[0x1E6970708] playEventWithModelObject:v42 featureName:@"MusicSharePlayBehavior"];
    [(MPCModelGenericAVItem *)v7 setModelPlayEvent:v35];

    -[MPCModelGenericAVItem setAutoPlayItem:](v7, "setAutoPlayItem:", [v6 behaviorFlags] & 1);
    [(NSHashTable *)self->_activeModelGenericAVItems addObject:v7];

LABEL_5:
    v15 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicSharePlayBehavior");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v36 = [v44 engineID];
      v37 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self sessionID];
      *buf = 138543874;
      v46 = v36;
      v47 = 2114;
      v48 = v37;
      v49 = 2114;
      v50 = v7;
      _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_DEFAULT, "[ITFIT:%{public}@:%{public}@] _itemForComponents | returning item [] item=%{public}@", buf, 0x20u);
    }

    goto LABEL_10;
  }

  v38 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicSharePlayBehavior");
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v39 = [v44 engineID];
    v40 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self sessionID];
    *buf = 138543874;
    v46 = v39;
    v47 = 2114;
    v48 = v40;
    v49 = 2114;
    v50 = v5;
    _os_log_impl(&dword_1C5C61000, v38, OS_LOG_TYPE_DEFAULT, "[ITFIT:%{public}@:%{public}@] _itemForContentItemID: | returning nil [unknown contentItemID] contentItemID=%{public}@", buf, 0x20u);
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (id)_stateDictionaryIncludingQueue:(BOOL)a3
{
  v3 = a3;
  v12[1] = *MEMORY[0x1E69E9840];
  v11 = @"_obj";
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p>", objc_opt_class(), self];
  v12[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  if (v3)
  {
    v7 = [v6 mutableCopy];
    v8 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self _queueAsStateDictionary];
    [v7 setObject:v8 forKeyedSubscript:@"queue"];

    v9 = [v7 copy];
    v6 = v9;
  }

  return v6;
}

- (id)contentItemIDEnumeratorStartingAfterContentItemID:(id)a3 mode:(int64_t)a4 options:(unint64_t)a5
{
  v5 = a5;
  v23[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (self->_liveLinkStopped)
  {
    v8 = [MPCQueueControllerBehaviorMusicIdentifierComponents placeholderComponentsWithLoadingSectionID:@"LiveLinkStopped"];
    v9 = [v8 contentItemID];
    v23[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    v11 = [v10 objectEnumerator];
LABEL_19:

LABEL_20:
    goto LABEL_21;
  }

  v12 = [(NSArray *)self->_enumeratorContentItemIDs copy];
  v8 = v12;
  if (v7)
  {
    v13 = [v12 indexOfObject:v7];
    if (v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self _componentsForContentItemID:v7];
      v15 = [v14 itemSpecificContentItemID];

      if (!v15 || ([v14 itemSpecificContentItemID], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v8, "indexOfObject:", v16), v16, v17 == 0x7FFFFFFFFFFFFFFFLL) || ((v5 & 1) != 0 ? (v13 = v17 + 1) : (v13 = v17 - 1), v13 == 0x7FFFFFFFFFFFFFFFLL))
      {
        v11 = [MEMORY[0x1E695E0F0] objectEnumerator];

        goto LABEL_21;
      }
    }
  }

  else
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (!self->_queue)
  {
    v9 = [MPCQueueControllerBehaviorMusicIdentifierComponents placeholderComponentsWithLoadingSectionID:@"WaitingForFirstQueue"];
    v10 = [v9 contentItemID];
    v22 = v10;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
    v11 = [v19 objectEnumerator];

    goto LABEL_19;
  }

  if (v5)
  {
    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = [v8 subarrayWithRange:{0, v13}];
      v21 = [v9 reverseObjectEnumerator];
      goto LABEL_28;
    }

    v18 = [v8 reverseObjectEnumerator];
  }

  else
  {
    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = [v8 subarrayWithRange:{v13 + 1, objc_msgSend(v8, "count") + ~v13}];
      v21 = [v9 objectEnumerator];
LABEL_28:
      v11 = v21;
      goto LABEL_20;
    }

    v18 = [v8 objectEnumerator];
  }

  v11 = v18;
LABEL_21:

  return v11;
}

- (BOOL)isEmpty
{
  v2 = [(ICSharedListeningQueue *)self->_queue items];
  v3 = [v2 count] == 0;

  return v3;
}

- (BOOL)canNextItemFromContentItemID:(id)a3 reason:(id *)a4
{
  v6 = a3;
  v7 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self _componentsForContentItemID:v6];
  if ([v7 type] == 3)
  {
    if (a4)
    {
      v8 = 0;
      *a4 = @"tail placeholder";
      goto LABEL_12;
    }

LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  queue = self->_queue;
  v10 = [v7 itemID];
  v11 = [(ICSharedListeningQueue *)queue itemForIdentifier:v10];

  if (!v11)
  {
    if (a4)
    {
      v14 = MEMORY[0x1E696AEC0];
      v15 = [v7 itemID];
      *a4 = [v14 stringWithFormat:@"ICSharedListeningQueue does not contain itemID: %@", v15];
    }

    goto LABEL_11;
  }

  v12 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self contentItemIDEnumeratorStartingAfterContentItemID:v6 mode:2 options:0];
  v13 = [v12 nextObject];
  v8 = v13 != 0;
  if (a4 && !v13)
  {
    *a4 = @"end of shared listening queue";
  }

LABEL_12:
  return v8;
}

- (BOOL)canPreviousItemFromContentItemID:(id)a3 reason:(id *)a4
{
  v6 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self _componentsForContentItemID:a3];
  queue = self->_queue;
  v8 = [v6 itemID];
  v9 = [(ICSharedListeningQueue *)queue itemForIdentifier:v8];

  if (a4 && !v9)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = [v6 itemID];
    *a4 = [v10 stringWithFormat:@"ICSharedListeningQueue does not contain itemID: %@", v11];
  }

  return v9 != 0;
}

- (BOOL)canJumpToContentItemID:(id)a3 reason:(id *)a4
{
  v6 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self _componentsForContentItemID:a3];
  queue = self->_queue;
  v8 = [v6 itemID];
  v9 = [(ICSharedListeningQueue *)queue itemForIdentifier:v8];

  if (a4 && !v9)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = [v6 itemID];
    *a4 = [v10 stringWithFormat:@"ICSharedListeningQueue does not contain itemID: %@", v11];
  }

  return v9 != 0;
}

- (BOOL)itemExistsForContentItemID:(id)a3
{
  v5 = a3;
  v6 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self _componentsForContentItemID:v5];
  v7 = v6;
  if (self->_liveLinkStopped)
  {
    if ([v6 type] == 2)
    {
      v8 = [v7 sectionID];
      v9 = v8;
      v10 = @"LiveLinkStopped";
LABEL_11:
      LOBYTE(v12) = [v8 isEqualToString:v10];
      goto LABEL_21;
    }
  }

  else
  {
    if (self->_queue)
    {
      v9 = [v6 itemID];
      v11 = [v7 type];
      LOBYTE(v12) = 0;
      if (v11 > 1)
      {
        if (v11 == 2)
        {
          LOBYTE(v12) = self->_queue != 0;
        }

        else if (v11 == 3)
        {
          v12 = [MEMORY[0x1E696AAA8] currentHandler];
          [v12 handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusicSharePlay.m" lineNumber:384 description:{@"Unexpected contentItemID in itemExistsForContentItemID (MPCQueueControllerBehaviorItemTypeEndOfQueuePlaceholder): %@", v5}];

          LOBYTE(v12) = 0;
        }

        goto LABEL_21;
      }

      if (v11)
      {
        if (v11 != 1)
        {
LABEL_21:

          goto LABEL_22;
        }

        v13 = [v7 itemSpecificContentItemID];
        LOBYTE(v12) = [(_MPCQueueControllerBehaviorMusicSharePlay *)self _useItemPlaceholderForContentItemID:v13];
      }

      else
      {
        v13 = [(ICSharedListeningQueue *)self->_queue itemForIdentifier:v9];
        if (v13)
        {
          LODWORD(v12) = ![(_MPCQueueControllerBehaviorMusicSharePlay *)self _useItemPlaceholderForContentItemID:v5];
        }

        else
        {
          LOBYTE(v12) = 0;
        }
      }

      goto LABEL_21;
    }

    if ([v6 type] == 2)
    {
      v8 = [v7 sectionID];
      v9 = v8;
      v10 = @"WaitingForFirstQueue";
      goto LABEL_11;
    }
  }

  LOBYTE(v12) = 0;
LABEL_22:

  return v12;
}

- (id)performLoadCommand:(id)a3 completion:(id)a4
{
  v64 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_class();
  v10 = [v7 playbackQueue];
  v55 = 0;
  v11 = [v9 canLoadQueue:v10 reason:&v55];
  v12 = v55;

  if ((v11 & 1) == 0)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusicSharePlay.m" lineNumber:291 description:{@"unsupported playback queue: %@", v12}];
  }

  v14 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self host];
  v15 = [v7 mediaRemoteOptions];
  v16 = [v15 objectForKeyedSubscript:@"sharedListeningToken"];

  if (v16)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v7 playbackQueue];
      self->_joiningAsInitiator = [v17 isRequestingImmediatePlayback];

      v18 = +[MPCPlaybackRequestEnvironment activeAccountRequestEnvironment];
      playbackRequestEnvironment = self->_playbackRequestEnvironment;
      self->_playbackRequestEnvironment = v18;

      v20 = [(MPCPlaybackRequestEnvironment *)self->_playbackRequestEnvironment _createStoreRequestContext];
      v54 = 0;
      v21 = [[MPCModelGenericAVItemUserIdentityPropertySet alloc] initWithRequestContext:v20 error:&v54];
      v22 = v54;
      identityPropertySet = self->_identityPropertySet;
      self->_identityPropertySet = v21;

      v52 = v14;
      if (v22 || !self->_identityPropertySet)
      {
        v24 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicSharePlayBehavior");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [v14 engineID];
          [(_MPCQueueControllerBehaviorMusicSharePlay *)self sessionID];
          v27 = v26 = v12;
          *buf = 138543874;
          v57 = v25;
          v58 = 2114;
          v59 = v27;
          v60 = 2114;
          v61 = v22;
          _os_log_impl(&dword_1C5C61000, v24, OS_LOG_TYPE_DEFAULT, "[BMSP:%{public}@:%{public}@] performLoadCommand:completion: | failing command [failed to load identity properties] error=%{public}@", buf, 0x20u);

          v12 = v26;
          v14 = v52;
        }

        v28 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicSharePlayBehaviorError" code:2 underlyingError:v22 debugDescription:@"failed to load identity properties"];

        v8[2](v8, v28);
      }

      v32 = _Block_copy(v8);
      loadingCompletionHandler = self->_loadingCompletionHandler;
      self->_loadingCompletionHandler = v32;

      v34 = [v16 sharedListeningProperties];
      v35 = [v34 sessionIdentifier];

      v36 = [v16 identity];
      v51 = +[MPCSharedListeningLiveLinkReusePool sharedReusePool];
      v37 = [v51 liveLinkForSessionID:v35];
      v53 = v36;
      if (v37)
      {
        v38 = v37;
        v39 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicSharePlayBehavior");
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = [v14 engineID];
          [(_MPCQueueControllerBehaviorMusicSharePlay *)self sessionID];
          v41 = v49 = v12;
          *buf = 138544130;
          v57 = v40;
          v58 = 2114;
          v59 = v41;
          v60 = 2048;
          v61 = v38;
          v62 = 2114;
          v63 = v35;
          _os_log_impl(&dword_1C5C61000, v39, OS_LOG_TYPE_DEFAULT, "[BMSP:%{public}@:%{public}@] performLoadCommand:completion: | reusing live link [] liveLink=%p sessionID=%{public}@", buf, 0x2Au);

          v12 = v49;
        }
      }

      else
      {
        v38 = [MEMORY[0x1E69E4448] linkWithSessionIdentifier:v35 identity:v36];
        v42 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicSharePlayBehavior");
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v43 = [v14 engineID];
          v50 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self sessionID];
          *buf = 138544130;
          v57 = v43;
          v58 = 2114;
          v59 = v50;
          v60 = 2048;
          v61 = v38;
          v62 = 2114;
          v63 = v35;
          _os_log_impl(&dword_1C5C61000, v42, OS_LOG_TYPE_DEFAULT, "[BMSP:%{public}@:%{public}@] performLoadCommand:completion: | allocating live link [] liveLink=%p sessionID=%{public}@", buf, 0x2Au);
        }

        [v51 storeLiveLink:v38 forSessionID:v35];
      }

      [v38 setDelegate:self];
      liveLink = self->_liveLink;
      self->_liveLink = v38;
      v45 = v38;

      v46 = v53;
      [(ICLiveLink *)self->_liveLink updateWithIdentity:v53];
      if (([(ICLiveLink *)self->_liveLink isStarted]& 1) != 0)
      {
        v47 = [v45 queue];

        if (v47)
        {
          [(_MPCQueueControllerBehaviorMusicSharePlay *)self _initializeWithQueue:v47];
          v45 = v47;
        }

        else
        {
          v45 = 0;
        }

        v14 = v52;
        v46 = v53;
      }

      else
      {
        [(ICLiveLink *)self->_liveLink start];
        v14 = v52;
      }
    }

    else
    {
      v29 = MEMORY[0x1E696ABC0];
      v30 = objc_opt_class();
      v20 = NSStringFromClass(v30);
      v31 = [v29 msv_errorWithDomain:@"MPCMusicSharePlayBehaviorError" code:1 debugDescription:{@"Unsupported playback queue for SharePlay behavior [sharedListeningToken is unknown type: %@]", v20}];
      v8[2](v8, v31);
    }
  }

  else
  {
    v20 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicSharePlayBehaviorError" code:1 debugDescription:@"Unsupported playback queue for SharePlay behavior [options did not contain 'sharedListeningToken']"];
    v8[2](v8, v20);
  }

  return 0;
}

- (void)disconnectFromHost:(id)a3
{
  v10[2] = *MEMORY[0x1E69E9840];
  [(_MPCQueueControllerBehaviorMusicSharePlay *)self endSynchronizedPlayback];
  WeakRetained = objc_loadWeakRetained(&self->_host);
  v5 = [WeakRetained eventStream];
  v9[0] = @"session-id";
  v6 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self sessionID];
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v9[1] = @"shared-session-event-reason";
  v10[0] = v7;
  v10[1] = @"MusicSharePlayBehavior Teardown";
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [v5 emitEventType:@"shared-session-end" payload:v8];

  if (!v6)
  {
  }

  objc_storeWeak(&self->_host, 0);
}

- (void)didConnectToHost:(id)a3
{
  v11[4] = *MEMORY[0x1E69E9840];
  v4 = [a3 eventStream];
  v10[0] = @"session-id";
  v5 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self sessionID];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v11[0] = v6;
  v10[1] = @"shared-session-id";
  v7 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self sessionID];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = v8;
  v11[2] = &unk_1F4599208;
  v10[2] = @"shared-session-type";
  v10[3] = @"shared-session-event-reason";
  v11[3] = @"MusicSharePlayBehavior Setup";
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];
  [v4 emitEventType:@"shared-session-begin" payload:v9];

  if (!v7)
  {
  }

  if (!v5)
  {
  }
}

- (_MPCQueueControllerBehaviorMusicSharePlay)initWithSessionID:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = _MPCQueueControllerBehaviorMusicSharePlay;
  v5 = [(_MPCQueueControllerBehaviorMusicSharePlay *)&v17 init];
  if (v5)
  {
    v6 = [v4 copy];
    sessionID = v5->_sessionID;
    v5->_sessionID = v6;

    v8 = [MEMORY[0x1E695DF70] array];
    pendingActions = v5->_pendingActions;
    v5->_pendingActions = v8;

    v10 = [MEMORY[0x1E695DFA8] set];
    knownContainerIDs = v5->_knownContainerIDs;
    v5->_knownContainerIDs = v10;

    v12 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    activeModelGenericAVItems = v5->_activeModelGenericAVItems;
    v5->_activeModelGenericAVItems = v12;

    v14 = objc_alloc_init(MEMORY[0x1E6970910]);
    requestController = v5->_requestController;
    v5->_requestController = v14;

    [(MPRequestResponseController *)v5->_requestController setDelegate:v5];
    [(MPRequestResponseController *)v5->_requestController beginAutomaticResponseLoading];
  }

  return v5;
}

- (void)getExpectedCurrentItemModelObjectWithCompletion:(id)a3
{
  v5 = a3;
  v6 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self queue];

  if (v6)
  {
    v7 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self queue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __93___MPCQueueControllerBehaviorMusicSharePlay_getExpectedCurrentItemModelObjectWithCompletion___block_invoke;
    v9[3] = &unk_1E8232E50;
    v9[4] = self;
    v10 = v5;
    v11 = a2;
    [v7 getExpectedCurrentItemWithCompletion:v9];
  }

  else
  {
    v8 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicSharePlayBehaviorError" code:14 debugDescription:@"Cannot get model object before the live link queue has loaded"];
    (*(v5 + 2))(v5, 0, v8);
  }
}

+ (BOOL)canLoadQueue:(id)a3 reason:(id *)a4
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 identifier];
    v7 = [@"InProcess-com.apple.music.playbackqueue.sharedlistening" isEqualToString:v6];
    v8 = v7;
    if (a4 && (v7 & 1) == 0)
    {
      *a4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported custom data playback queue: %@", v6];
    }
  }

  else if (a4)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported playback queue: %@", objc_opt_class()];
    *a4 = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end