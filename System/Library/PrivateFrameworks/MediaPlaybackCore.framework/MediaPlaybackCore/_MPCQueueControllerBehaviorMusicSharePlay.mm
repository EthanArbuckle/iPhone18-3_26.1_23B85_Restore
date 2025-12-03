@interface _MPCQueueControllerBehaviorMusicSharePlay
+ (BOOL)canLoadQueue:(id)queue reason:(id *)reason;
- (BOOL)_useItemPlaceholderForContentItemID:(id)d;
- (BOOL)_useItemPlaceholderForItemID:(id)d;
- (BOOL)canJumpToContentItemID:(id)d reason:(id *)reason;
- (BOOL)canNextItemFromContentItemID:(id)d reason:(id *)reason;
- (BOOL)canPreviousItemFromContentItemID:(id)d reason:(id *)reason;
- (BOOL)canUserChangeRepeatTypeWithReason:(id *)reason;
- (BOOL)canUserChangeShuffleModeWithReason:(id *)reason;
- (BOOL)canUserEnableAutoPlayWithReason:(id *)reason;
- (BOOL)isAutoPlayContentItemID:(id)d;
- (BOOL)isEmpty;
- (BOOL)isSupportedInsertionPosition:(int64_t)position fromContentItemID:(id)d reason:(id *)reason;
- (BOOL)itemExistsForContentItemID:(id)d;
- (MPCQueueControllerBehaviorHost)host;
- (MPCQueueControllerBehaviorMusicDelegate)musicBehaviorDelegate;
- (MPCQueueControllerBehaviorMusicSharePlayDelegate)musicSharePlayBehaviorDelegate;
- (MPCQueueControllerExternalSyncBehaviorHost)externalSyncHost;
- (_MPCQueueControllerBehaviorMusicSharePlay)initWithSessionID:(id)d;
- (id)_componentsForContentItemID:(id)d;
- (id)_componentsForSharedListeningItemID:(id)d;
- (id)_itemForContentItemID:(id)d allowReuse:(BOOL)reuse;
- (id)_itemObjectForSharedListeningItemID:(id)d;
- (id)_mpcSharedListeningEventForICLiveLinkEvent:(id)event;
- (id)_queueAsStateDictionary;
- (id)_sectionObjectForSharedListeningContainerID:(id)d;
- (id)_sectionedCollectionForQueue:(id)queue;
- (id)_stateDictionaryIncludingQueue:(BOOL)queue;
- (id)contentItemIDEnumeratorStartingAfterContentItemID:(id)d mode:(int64_t)mode options:(unint64_t)options;
- (id)contentItemIDWithoutRepeatIteration:(id)iteration;
- (id)copyContentItemID:(id)d repeatIteration:(int64_t)iteration;
- (id)performLoadCommand:(id)command completion:(id)completion;
- (id)playbackCoordinator:(id)coordinator identifierForPlayerItem:(id)item;
- (int64_t)displayItemCount;
- (int64_t)queueExplicitContentState;
- (void)_dequeuePendingActions;
- (void)_emitEventsForAddedSharedListeningContainer:(id)container;
- (void)_emitEventsForParticipants:(id)participants localUserIdentity:(id)identity;
- (void)_emitEventsForPlaybackBehaviorChange;
- (void)_enqueuePendingActionWithLabel:(id)label itemIdentifier:(id)identifier block:(id)block;
- (void)_initializeWithQueue:(id)queue;
- (void)_purgePendingActionsWithLabel:(id)label;
- (void)_reloadCacheDataWithOptions:(unint64_t)options;
- (void)_setQueue:(id)queue;
- (void)canReuseQueue:(id)queue completion:(id)completion;
- (void)clearAllItemsAfterContentItemID:(id)d;
- (void)controller:(id)controller defersResponseReplacement:(id)replacement;
- (void)didConnectToHost:(id)host;
- (void)didJumpToTargetContentItemID:(id)d;
- (void)didStopLiveLink:(id)link;
- (void)disconnectFromHost:(id)host;
- (void)endSynchronizedPlayback;
- (void)findFirstContentItemIDForItemIntersectingIdentifierSet:(id)set completion:(id)completion;
- (void)getExpectedCurrentItemModelObjectWithCompletion:(id)completion;
- (void)getSharedQueueTracklistWithStartingContentItemID:(id)d completion:(id)completion;
- (void)liveLink:(id)link didEncounterError:(id)error willRetry:(BOOL)retry;
- (void)liveLink:(id)link didReceiveDirectCurrentItemChanged:(id)changed fromParticipant:(id)participant;
- (void)liveLink:(id)link didReceiveEvent:(id)event;
- (void)liveLink:(id)link didUpdateParticipants:(id)participants;
- (void)liveLink:(id)link didUpdateQueue:(id)queue;
- (void)liveLinkDidReconnect:(id)reconnect;
- (void)moveContentItemID:(id)d afterContentItemID:(id)iD completion:(id)completion;
- (void)moveContentItemID:(id)d beforeContentItemID:(id)iD completion:(id)completion;
- (void)performInsertCommand:(id)command targetContentItemID:(id)d completion:(id)completion;
- (void)removeContentItemID:(id)d completion:(id)completion;
- (void)reshuffleWithTargetContentItemID:(id)d completion:(id)completion;
- (void)setAllowsQueueModifications:(BOOL)modifications;
- (void)setAutoPlayEnabled:(BOOL)enabled targetContentItemID:(id)d completion:(id)completion;
- (void)setHostingSharedSessionID:(id)d reason:(id)reason;
- (void)setRepeatType:(int64_t)type completion:(id)completion;
- (void)setRequestedPropertySetForEvents:(id)events;
- (void)setShuffleType:(int64_t)type targetContentItemID:(id)d completion:(id)completion;
- (void)updatePlaybackCoordinator:(id)coordinator;
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

- (BOOL)_useItemPlaceholderForContentItemID:(id)d
{
  v5 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self _componentsForContentItemID:d];
  if ([v5 type])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusicSharePlay.m" lineNumber:1813 description:@"This method only supports MPCQueueControllerBehaviorItemTypeItem"];
  }

  itemID = [v5 itemID];
  v7 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self _useItemPlaceholderForItemID:itemID];

  return v7;
}

- (BOOL)_useItemPlaceholderForItemID:(id)d
{
  requestController = self->_requestController;
  dCopy = d;
  response = [(MPRequestResponseController *)requestController response];
  modelResponse = [response modelResponse];
  results = [modelResponse results];

  v9 = [(NSDictionary *)self->_resultsIndexPathMap objectForKeyedSubscript:dCopy];

  if (v9)
  {
    v10 = [results identifiersForItemAtIndexPath:v9];
    isPlaceholder = [v10 isPlaceholder];
  }

  else
  {
    isPlaceholder = 1;
  }

  return isPlaceholder;
}

- (void)_setQueue:(id)queue
{
  queueCopy = queue;
  p_queue = &self->_queue;
  queue = self->_queue;
  if (queue != queueCopy)
  {
    if (!queue || (v8 = [(ICSharedListeningQueue *)queue isAutoPlayEnabled], v8 != [(ICSharedListeningQueue *)queueCopy isAutoPlayEnabled]))
    {
      musicBehaviorDelegate = [(_MPCQueueControllerBehaviorMusicSharePlay *)self musicBehaviorDelegate];
      if ([(_MPCQueueControllerBehaviorMusicSharePlay *)self autoPlayEnabled])
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }

      [musicBehaviorDelegate behavior:self didChangeActionAtQueueEnd:v10];

      [(_MPCQueueControllerBehaviorMusicSharePlay *)self _emitEventsForPlaybackBehaviorChange];
    }

    if (!*p_queue || (v11 = [*p_queue explicitContentState], v11 != -[ICSharedListeningQueue explicitContentState](queueCopy, "explicitContentState")))
    {
      explicitContentState = [(ICSharedListeningQueue *)queueCopy explicitContentState];
      if (explicitContentState == 2)
      {
        v13 = 2;
      }

      else
      {
        v13 = explicitContentState == 1;
      }

      musicSharePlayBehaviorDelegate = [(_MPCQueueControllerBehaviorMusicSharePlay *)self musicSharePlayBehaviorDelegate];
      [musicSharePlayBehaviorDelegate behavior:self didChangeExplicitContentState:v13];
    }

    objc_storeStrong(&self->_queue, queue);
    tracklist = [(ICSharedListeningQueue *)self->_queue tracklist];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __55___MPCQueueControllerBehaviorMusicSharePlay__setQueue___block_invoke;
    v16[3] = &unk_1E8233248;
    v16[4] = self;
    [tracklist enumerateSectionsUsingBlock:v16];

    [(_MPCQueueControllerBehaviorMusicSharePlay *)self _reloadCacheDataWithOptions:0];
  }
}

- (id)_sectionObjectForSharedListeningContainerID:(id)d
{
  dCopy = d;
  response = [(MPRequestResponseController *)self->_requestController response];
  modelResponse = [response modelResponse];
  results = [modelResponse results];

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
  v8 = dCopy;
  v12 = v8;
  v13 = &v14;
  [results enumerateSectionsUsingBlock:v11];
  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

- (id)_sectionedCollectionForQueue:(id)queue
{
  queueCopy = queue;
  host = [(_MPCQueueControllerBehaviorMusicSharePlay *)self host];
  v6 = objc_alloc_init(MEMORY[0x1E6970818]);
  tracklist = [queueCopy tracklist];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74___MPCQueueControllerBehaviorMusicSharePlay__sectionedCollectionForQueue___block_invoke;
  v13[3] = &unk_1E82331F8;
  v8 = v6;
  v14 = v8;
  v15 = queueCopy;
  v16 = host;
  selfCopy = self;
  v9 = host;
  v10 = queueCopy;
  [tracklist enumerateSectionsUsingBlock:v13];

  v11 = v8;
  return v8;
}

- (void)_reloadCacheDataWithOptions:(unint64_t)options
{
  if (options)
  {
    response = [(MPRequestResponseController *)self->_requestController response];
    modelResponse = [response modelResponse];
    results = [modelResponse results];

    v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(results, "totalItemCount")}];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __73___MPCQueueControllerBehaviorMusicSharePlay__reloadCacheDataWithOptions___block_invoke;
    v24[3] = &unk_1E82331A8;
    v25 = v7;
    v8 = v7;
    [results enumerateItemIdentifiersUsingBlock:v24];
    v9 = [v8 copy];
    resultsIndexPathMap = self->_resultsIndexPathMap;
    self->_resultsIndexPathMap = v9;
  }

  tracklist = [(ICSharedListeningQueue *)self->_queue tracklist];
  v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(tracklist, "totalItemCount")}];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __73___MPCQueueControllerBehaviorMusicSharePlay__reloadCacheDataWithOptions___block_invoke_2;
  v20 = &unk_1E8233180;
  v21 = tracklist;
  selfCopy = self;
  v23 = v12;
  v13 = v12;
  v14 = tracklist;
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
    explicitContentState = [(ICSharedListeningQueue *)self->_queue explicitContentState];
    v3 = @"Neutral";
    if (explicitContentState == 2)
    {
      v3 = @"Restricted";
    }
  }

  queue = self->_queue;
  v6 = v3;
  tracklist = [(ICSharedListeningQueue *)queue tracklist];
  array = [MEMORY[0x1E695DF70] array];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __68___MPCQueueControllerBehaviorMusicSharePlay__queueAsStateDictionary__block_invoke;
  v19 = &unk_1E8233180;
  selfCopy = self;
  v21 = array;
  v22 = tracklist;
  v9 = tracklist;
  v10 = array;
  [v9 enumerateSectionsUsingBlock:&v16];
  v23[0] = @"_autoPlayAvailable";
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[ICSharedListeningQueue isAutoPlayAvailable](self->_queue, "isAutoPlayAvailable", v16, v17, v18, v19, selfCopy)}];
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

- (void)_purgePendingActionsWithLabel:(id)label
{
  v35 = *MEMORY[0x1E69E9840];
  labelCopy = label;
  pendingActions = self->_pendingActions;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __75___MPCQueueControllerBehaviorMusicSharePlay__purgePendingActionsWithLabel___block_invoke;
  v26[3] = &unk_1E8233130;
  v18 = labelCopy;
  v27 = v18;
  v6 = [(NSMutableArray *)pendingActions indexesOfObjectsPassingTest:v26];
  v7 = [(NSMutableArray *)self->_pendingActions objectsAtIndexes:v6];
  v17 = v6;
  [(NSMutableArray *)self->_pendingActions removeObjectsAtIndexes:v6];
  selfCopy = self;
  host = [(_MPCQueueControllerBehaviorMusicSharePlay *)self host];
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
          engineID = [host engineID];
          sessionID = [(_MPCQueueControllerBehaviorMusicSharePlay *)selfCopy sessionID];
          *buf = 138543874;
          v29 = engineID;
          v30 = 2114;
          v31 = sessionID;
          v32 = 2114;
          v33 = v12;
          _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEFAULT, "[BMSP:%{public}@:%{public}@] _purgePendingActionsWithLabel: | calling action [purged] action=%{public}@", buf, 0x20u);
        }

        block = [v12 block];
        block[2](block, 2);
      }

      v9 = [obj countByEnumeratingWithState:&v22 objects:v34 count:16];
    }

    while (v9);
  }
}

- (id)_mpcSharedListeningEventForICLiveLinkEvent:(id)event
{
  v117 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  participant = [eventCopy participant];
  identifier = [participant identifier];
  participant2 = [eventCopy participant];
  externalIdentifier = [participant2 externalIdentifier];
  v9 = [MPCSharedListeningEventParticipant participantWithSharedListeningIdentifier:identifier externalIdentifier:externalIdentifier];

  response = [(MPRequestResponseController *)self->_requestController response];
  modelResponse = [response modelResponse];
  results = [modelResponse results];

  type = [eventCopy type];
  v14 = 0;
  if (type <= 2)
  {
    if (type == 1)
    {
      sessionEvent = [eventCopy sessionEvent];
      kind = [sessionEvent kind];
      if ((kind - 1) >= 5)
      {
        v43 = 0;
      }

      else
      {
        v43 = kind;
      }

      v18 = [[MPCSharedListeningSessionEvent alloc] initWithKind:v43];
      v19 = [MPCSharedListeningEvent eventWithSessionEvent:v18 participant:v9];
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_69;
      }

      sessionEvent = [eventCopy playbackEvent];
      kind2 = [sessionEvent kind];
      if ((kind2 - 1) > 3 || (v21 = [[MPCSharedListeningPlaybackEvent alloc] initWithKind:kind2]) == 0)
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

  if (type == 3)
  {
    queueEvent = [eventCopy queueEvent];
    kind3 = [queueEvent kind];
    v14 = 0;
    if (kind3 <= 3)
    {
      switch(kind3)
      {
        case 1:
          contentAdded = [queueEvent contentAdded];
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v114 = __Block_byref_object_copy__7744;
          v115 = __Block_byref_object_dispose__7745;
          v116 = 0;
          containerIdentifier = [contentAdded containerIdentifier];
          itemIdentifiers = [contentAdded itemIdentifiers];
          v59 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(itemIdentifiers, "count")}];
          v107[0] = MEMORY[0x1E69E9820];
          v107[1] = 3221225472;
          v107[2] = __88___MPCQueueControllerBehaviorMusicSharePlay__mpcSharedListeningEventForICLiveLinkEvent___block_invoke;
          v107[3] = &unk_1E82330B8;
          v60 = containerIdentifier;
          v108 = v60;
          v112 = buf;
          v109 = results;
          selfCopy = self;
          v61 = v59;
          v111 = v61;
          [v109 enumerateSectionsUsingBlock:v107];
          v62 = [MPCSharedListeningQueueEventContentAdded alloc];
          v63 = [(MPCSharedListeningQueueEventContentAdded *)v62 initWithItems:v61 container:*(*&buf[8] + 40)];
          v51 = [MPCSharedListeningQueueEvent queueEventWithAddedContent:v63];

          _Block_object_dispose(buf, 8);
          goto LABEL_65;
        case 2:
          contentRemoved = [queueEvent contentRemoved];
          resultsIndexPathMap = self->_resultsIndexPathMap;
          itemIdentifier = [contentRemoved itemIdentifier];
          v81 = [(NSDictionary *)resultsIndexPathMap objectForKeyedSubscript:itemIdentifier];

          if (v81)
          {
            v82 = [results itemAtIndexPath:v81];
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
          contentRemoved = [queueEvent contentReordered];
          v48 = self->_resultsIndexPathMap;
          itemIdentifier2 = [contentRemoved itemIdentifier];
          v27 = [(NSDictionary *)v48 objectForKeyedSubscript:itemIdentifier2];

          if (v27)
          {
            v50 = [results itemAtIndexPath:v27];
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
      if (kind3 <= 5)
      {
        if (kind3 != 4)
        {
          contentRemoved = [queueEvent contentReplaced];
          v25 = self->_resultsIndexPathMap;
          startItemIdentifier = [contentRemoved startItemIdentifier];
          v27 = [(NSDictionary *)v25 objectForKeyedSubscript:startItemIdentifier];

          if (v27)
          {
            v28 = [results itemAtIndexPath:v27];
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

        contentRemoved = [queueEvent playbackModeChanged];
        kind4 = [contentRemoved kind];
        switch(kind4)
        {
          case 3:
            v88 = [MPCSharedListeningQueueEventPlaybackModeChanged alloc];
            autoPlayEnabled = [contentRemoved autoPlayEnabled];
            v69 = [(MPCSharedListeningQueueEventPlaybackModeChanged *)v88 initWithUpdatedAutoPlayEnabled:autoPlayEnabled[2]()];
            break;
          case 2:
            v85 = [MPCSharedListeningQueueEventPlaybackModeChanged alloc];
            autoPlayEnabled = [contentRemoved repeatType];
            v86 = autoPlayEnabled[2]();
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
            autoPlayEnabled = [contentRemoved shuffleType];
            v67 = autoPlayEnabled[2]();
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

      if (kind3 == 6)
      {
        contentPlayedNow = [queueEvent contentPlayedNow];
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v114 = __Block_byref_object_copy__7744;
        v115 = __Block_byref_object_dispose__7745;
        v116 = 0;
        containerIdentifier2 = [contentPlayedNow containerIdentifier];
        v101 = 0;
        v102 = &v101;
        v103 = 0x3032000000;
        v104 = __Block_byref_object_copy__7744;
        v105 = __Block_byref_object_dispose__7745;
        v106 = 0;
        itemIdentifiers2 = [contentPlayedNow itemIdentifiers];
        v73 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(itemIdentifiers2, "count")}];
        v90 = MEMORY[0x1E69E9820];
        v91 = 3221225472;
        v92 = __88___MPCQueueControllerBehaviorMusicSharePlay__mpcSharedListeningEventForICLiveLinkEvent___block_invoke_3;
        v93 = &unk_1E8233108;
        v74 = containerIdentifier2;
        v94 = v74;
        v99 = buf;
        v95 = results;
        selfCopy2 = self;
        v75 = contentPlayedNow;
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

      if (kind3 == 7)
      {
        contentRemoved = [queueEvent contentUpdatedMessage];
        v52 = [MPCSharedListeningQueueEventContentUpdatedMessage alloc];
        localizedTitle = [contentRemoved localizedTitle];
        localizedMessage = [contentRemoved localizedMessage];
        v27 = [(MPCSharedListeningQueueEventContentUpdatedMessage *)v52 initWithLocalizedTitle:localizedTitle localizedMessage:localizedMessage];

        v55 = [MPCSharedListeningQueueEvent queueEventWithContentUpdatedMessage:v27];
LABEL_62:
        v51 = v55;
        goto LABEL_63;
      }
    }

LABEL_68:

    goto LABEL_69;
  }

  if (type != 4)
  {
    if (type != 5)
    {
      goto LABEL_69;
    }

    sessionEvent = [eventCopy customEvent];
    v16 = [MPCSharedListeningCustomEvent alloc];
    localizedMessage2 = [sessionEvent localizedMessage];
    v18 = [(MPCSharedListeningCustomEvent *)v16 initWithLocalizedMessage:localizedMessage2];

    v19 = [MPCSharedListeningEvent eventWithCustomEvent:v18 participant:v9];
    goto LABEL_24;
  }

  reactionEvent = [eventCopy reactionEvent];
  v33 = self->_resultsIndexPathMap;
  itemIdentifier3 = [reactionEvent itemIdentifier];
  v35 = [(NSDictionary *)v33 objectForKeyedSubscript:itemIdentifier3];

  if (v35 && ([results itemAtIndexPath:v35], v36 = objc_claimAutoreleasedReturnValue(), host = objc_msgSend(v36, "copyWithPropertySet:", self->_requestedPropertySetForEvents), v36, host))
  {
    v38 = [MPCSharedListeningReactionEvent alloc];
    reaction = [reactionEvent reaction];
    reactionIdentifier = [reactionEvent reactionIdentifier];
    v41 = [(MPCSharedListeningReactionEvent *)v38 initWithReaction:reaction reactionIdentifier:reactionIdentifier item:host];

    v14 = [MPCSharedListeningEvent eventWithReactionEvent:v41 participant:v9];
  }

  else
  {
    host = [(_MPCQueueControllerBehaviorMusicSharePlay *)self host];
    v44 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicSharePlayBehavior");
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      engineID = [host engineID];
      sessionID = [(_MPCQueueControllerBehaviorMusicSharePlay *)self sessionID];
      itemIdentifier4 = [reactionEvent itemIdentifier];
      *buf = 138543874;
      *&buf[4] = engineID;
      *&buf[12] = 2114;
      *&buf[14] = sessionID;
      *&buf[22] = 2114;
      v114 = itemIdentifier4;
      _os_log_impl(&dword_1C5C61000, v44, OS_LOG_TYPE_ERROR, "[BMSP:%{public}@:%{public}@] _mpcSharedListeningEventForICLiveLinkEvent: | dropping event [unknown item] event=Reaction itemIdentifier=%{public}@", buf, 0x20u);
    }

    v14 = 0;
  }

LABEL_69:

  return v14;
}

- (id)_itemObjectForSharedListeningItemID:(id)d
{
  requestController = self->_requestController;
  dCopy = d;
  response = [(MPRequestResponseController *)requestController response];
  modelResponse = [response modelResponse];
  results = [modelResponse results];

  v9 = [(NSDictionary *)self->_resultsIndexPathMap objectForKeyedSubscript:dCopy];

  if (v9)
  {
    v10 = [results itemAtIndexPath:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_initializeWithQueue:(id)queue
{
  queueCopy = queue;
  host = [(_MPCQueueControllerBehaviorMusicSharePlay *)self host];
  v7 = [host beginEditWithReason:@"BehaviorMusicSharePlay-initialLoad"];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66___MPCQueueControllerBehaviorMusicSharePlay__initializeWithQueue___block_invoke;
  v11[3] = &unk_1E8233068;
  v12 = host;
  selfCopy = self;
  v15 = queueCopy;
  v16 = a2;
  v14 = v7;
  v8 = queueCopy;
  v9 = v7;
  v10 = host;
  [v8 getExpectedCurrentItemWithCompletion:v11];
}

- (void)_enqueuePendingActionWithLabel:(id)label itemIdentifier:(id)identifier block:(id)block
{
  v26 = *MEMORY[0x1E69E9840];
  labelCopy = label;
  identifierCopy = identifier;
  blockCopy = block;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v11 = [(NSDictionary *)self->_resultsIndexPathMap objectForKeyedSubscript:identifierCopy];
  if (v11)
  {
    response = [(MPRequestResponseController *)self->_requestController response];
    modelResponse = [response modelResponse];
    results = [modelResponse results];

    host = [(_MPCQCBMSPPendingAction *)results identifiersForItemAtIndexPath:v11];
    if (([host isPlaceholder] & 1) == 0)
    {
      blockCopy[2](blockCopy, 0);
      goto LABEL_8;
    }
  }

  results = objc_alloc_init(_MPCQCBMSPPendingAction);
  [(_MPCQCBMSPPendingAction *)results setLabel:labelCopy];
  [(_MPCQCBMSPPendingAction *)results setItemIdentifier:identifierCopy];
  v16 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:5.0];
  [(_MPCQCBMSPPendingAction *)results setExpirationDate:v16];

  [(_MPCQCBMSPPendingAction *)results setBlock:blockCopy];
  [(NSMutableArray *)self->_pendingActions addObject:results];
  host = [(_MPCQueueControllerBehaviorMusicSharePlay *)self host];
  v17 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicSharePlayBehavior");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    engineID = [host engineID];
    sessionID = [(_MPCQueueControllerBehaviorMusicSharePlay *)self sessionID];
    v20 = 138543874;
    v21 = engineID;
    v22 = 2114;
    v23 = sessionID;
    v24 = 2114;
    v25 = results;
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

  host = [(_MPCQueueControllerBehaviorMusicSharePlay *)self host];
  eventStream = [host eventStream];
  v13[0] = @"session-id";
  sessionID = [(_MPCQueueControllerBehaviorMusicSharePlay *)self sessionID];
  null = sessionID;
  if (!sessionID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = @"playback-behavior-metadata";
  v14[0] = null;
  v11 = @"autoplay-mode";
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
  v12 = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v14[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [eventStream emitEventType:@"playback-behavior-changed" payload:v10];

  if (!sessionID)
  {
  }
}

- (void)_emitEventsForParticipants:(id)participants localUserIdentity:(id)identity
{
  v23[3] = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __90___MPCQueueControllerBehaviorMusicSharePlay__emitEventsForParticipants_localUserIdentity___block_invoke;
  v20 = &unk_1E8233018;
  v7 = identityCopy;
  v21 = v7;
  v8 = [participants msv_compactMap:&v17];
  v9 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self host:v17];
  eventStream = [v9 eventStream];
  v22[0] = @"session-id";
  sessionID = [(_MPCQueueControllerBehaviorMusicSharePlay *)self sessionID];
  null = sessionID;
  if (!sessionID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v23[0] = null;
  v22[1] = @"shared-session-id";
  sessionID2 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self sessionID];
  null2 = sessionID2;
  if (!sessionID2)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v22[2] = @"participants";
  v15 = MEMORY[0x1E695E0F0];
  if (v8)
  {
    v15 = v8;
  }

  v23[1] = null2;
  v23[2] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];
  [eventStream emitEventType:@"shared-session-participants-changed" payload:v16];

  if (!sessionID2)
  {
  }

  if (!sessionID)
  {
  }
}

- (void)_emitEventsForAddedSharedListeningContainer:(id)container
{
  v19[4] = *MEMORY[0x1E69E9840];
  containerCopy = container;
  host = [(_MPCQueueControllerBehaviorMusicSharePlay *)self host];
  eventStream = [host eventStream];
  v18[0] = @"queue-section-id";
  identifier = [containerCopy identifier];
  v19[0] = identifier;
  v18[1] = @"account-id";
  v6 = +[MPCPlaybackAccountManager sharedManager];
  activeAccount = [v6 activeAccount];
  hashedDSID = [activeAccount hashedDSID];
  null = hashedDSID;
  if (!hashedDSID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v19[1] = null;
  v19[2] = &unk_1F4599220;
  v18[2] = @"private-listening-source";
  v18[3] = @"queue-reporting-metadata";
  v16[0] = @"feature-name";
  featureName = [containerCopy featureName];
  null2 = featureName;
  if (!featureName)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v17[0] = null2;
  v17[1] = @"MusicSharePlayBehavior";
  v16[1] = @"playback-context-class-name";
  v16[2] = @"private-listening-enabled";
  v17[2] = MEMORY[0x1E695E118];
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
  v19[3] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:4];
  [eventStream emitEventType:@"queue-add" payload:v13];

  if (!featureName)
  {
  }

  if (!hashedDSID)
  {
  }
}

- (void)_dequeuePendingActions
{
  v53 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  date = [MEMORY[0x1E695DF00] date];
  host = [(_MPCQueueControllerBehaviorMusicSharePlay *)self host];
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
  v36 = date;
  while (2)
  {
    for (i = 0; i != v40; ++i)
    {
      if (*v43 != v39)
      {
        objc_enumerationMutation(obj);
      }

      v5 = *(*(&v42 + 1) + 8 * i);
      expirationDate = [v5 expirationDate];
      v7 = [date laterDate:expirationDate];

      if (v7 == date)
      {
        v23 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicSharePlayBehavior");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          engineID = [host engineID];
          sessionID = [(_MPCQueueControllerBehaviorMusicSharePlay *)self sessionID];
          *buf = 138543874;
          v47 = engineID;
          v48 = 2114;
          v49 = sessionID;
          v50 = 2114;
          v51 = v5;
          _os_log_impl(&dword_1C5C61000, v23, OS_LOG_TYPE_ERROR, "[BMSP:%{public}@:%{public}@] _dequeuePendingActions | calling action [expired] action=%{public}@", buf, 0x20u);
        }

        ++v41;
        block = [v5 block];
        block[2](block, 1);

        continue;
      }

      queue = self->_queue;
      itemIdentifier = [v5 itemIdentifier];
      v10 = [(ICSharedListeningQueue *)queue itemForIdentifier:itemIdentifier];

      if (!v10)
      {
        v10 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicSharePlayBehavior");
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
LABEL_30:

          goto LABEL_31;
        }

        engineID2 = [host engineID];
        sessionID2 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self sessionID];
        itemIdentifier2 = [v5 itemIdentifier];
        *buf = 138543874;
        v47 = engineID2;
        v48 = 2114;
        v49 = sessionID2;
        v50 = 2114;
        v51 = itemIdentifier2;
        _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "[BMSP:%{public}@:%{public}@] _dequeuePendingActions | stopping [no such item] missingItemID=%{public}@", buf, 0x20u);
        goto LABEL_28;
      }

      response = [(MPRequestResponseController *)self->_requestController response];
      modelResponse = [response modelResponse];
      engineID2 = [modelResponse results];

      resultsIndexPathMap = self->_resultsIndexPathMap;
      itemIdentifier3 = [v5 itemIdentifier];
      v16 = [(NSDictionary *)resultsIndexPathMap objectForKeyedSubscript:itemIdentifier3];

      if (!v16)
      {
        sessionID2 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicSharePlayBehavior");
        if (!os_log_type_enabled(sessionID2, OS_LOG_TYPE_DEFAULT))
        {
LABEL_29:

          goto LABEL_30;
        }

        itemIdentifier2 = [host engineID];
        sessionID3 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self sessionID];
        itemIdentifier4 = [v5 itemIdentifier];
        *buf = 138543874;
        v47 = itemIdentifier2;
        v48 = 2114;
        v49 = sessionID3;
        v50 = 2114;
        v51 = itemIdentifier4;
        _os_log_impl(&dword_1C5C61000, sessionID2, OS_LOG_TYPE_DEFAULT, "[BMSP:%{public}@:%{public}@] _dequeuePendingActions | stopping [waiting for item metadata] itemID=%{public}@", buf, 0x20u);

LABEL_28:
        goto LABEL_29;
      }

      v17 = [engineID2 identifiersForItemAtIndexPath:v16];
      isPlaceholder = [v17 isPlaceholder];
      v19 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicSharePlayBehavior");
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
      if (isPlaceholder)
      {
        if (v20)
        {
          engineID3 = [host engineID];
          sessionID4 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self sessionID];
          *buf = 138543874;
          v47 = engineID3;
          v48 = 2114;
          v49 = sessionID4;
          v50 = 2114;
          v51 = v17;
          _os_log_impl(&dword_1C5C61000, v19, OS_LOG_TYPE_DEFAULT, "[BMSP:%{public}@:%{public}@] _dequeuePendingActions | stopping [placeholder item] idSet=%{public}@", buf, 0x20u);

          date = v36;
        }
      }

      else
      {
        selfCopy = self;
        if (v20)
        {
          [host engineID];
          v28 = v35 = v10;
          sessionID5 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self sessionID];
          *buf = 138543874;
          v47 = v28;
          v48 = 2114;
          v49 = sessionID5;
          v50 = 2114;
          v51 = v5;
          _os_log_impl(&dword_1C5C61000, v19, OS_LOG_TYPE_DEFAULT, "[BMSP:%{public}@:%{public}@] _dequeuePendingActions | calling action [satisfied] action=%{public}@", buf, 0x20u);

          v10 = v35;
        }

        block2 = [v5 block];
        block2[2](block2, 0);

        ++v41;
        self = selfCopy;
        date = v36;
      }

      if (isPlaceholder)
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

- (id)_componentsForSharedListeningItemID:(id)d
{
  dCopy = d;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__7744;
  v17 = __Block_byref_object_dispose__7745;
  v18 = 0;
  tracklist = [(ICSharedListeningQueue *)self->_queue tracklist];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __81___MPCQueueControllerBehaviorMusicSharePlay__componentsForSharedListeningItemID___block_invoke;
  v9[3] = &unk_1E8232FE0;
  v6 = dCopy;
  v10 = v6;
  selfCopy = self;
  v12 = &v13;
  [tracklist enumerateItemsUsingBlock:v9];

  v7 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v7;
}

- (id)_componentsForContentItemID:(id)d
{
  dCopy = d;
  if (![dCopy length])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusicSharePlay.m" lineNumber:1207 description:{@"Invalid parameter not satisfying: %@", @"contentItemID.length > 0"}];
  }

  v6 = MPCQueueControllerBehaviorMusicIdentifierComponentsFromContentItemID(dCopy);
  queue = self->_queue;
  itemID = [v6 itemID];
  v9 = [(ICSharedListeningQueue *)queue itemForIdentifier:itemID];

  v10 = [v6 copyWithBehaviorFlags:{objc_msgSend(v9, "isAutoPlayItem")}];

  return v10;
}

- (void)liveLink:(id)link didReceiveEvent:(id)event
{
  eventCopy = event;
  v4 = eventCopy;
  msv_dispatch_on_main_queue();
}

- (void)liveLink:(id)link didReceiveDirectCurrentItemChanged:(id)changed fromParticipant:(id)participant
{
  changedCopy = changed;
  participantCopy = participant;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __105___MPCQueueControllerBehaviorMusicSharePlay_liveLink_didReceiveDirectCurrentItemChanged_fromParticipant___block_invoke;
  v12[3] = &unk_1E8238588;
  v12[4] = self;
  v13 = changedCopy;
  v14 = participantCopy;
  v15 = a2;
  v10 = participantCopy;
  v11 = changedCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v12);
}

- (void)liveLink:(id)link didUpdateQueue:(id)queue
{
  queueCopy = queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69___MPCQueueControllerBehaviorMusicSharePlay_liveLink_didUpdateQueue___block_invoke;
  v7[3] = &unk_1E82392C0;
  v7[4] = self;
  v8 = queueCopy;
  v6 = queueCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

- (void)liveLink:(id)link didUpdateParticipants:(id)participants
{
  linkCopy = link;
  participantsCopy = participants;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76___MPCQueueControllerBehaviorMusicSharePlay_liveLink_didUpdateParticipants___block_invoke;
  block[3] = &unk_1E82391C0;
  block[4] = self;
  v11 = participantsCopy;
  v12 = linkCopy;
  v8 = linkCopy;
  v9 = participantsCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)liveLink:(id)link didEncounterError:(id)error willRetry:(BOOL)retry
{
  errorCopy = error;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82___MPCQueueControllerBehaviorMusicSharePlay_liveLink_didEncounterError_willRetry___block_invoke;
  block[3] = &unk_1E8232F70;
  retryCopy = retry;
  block[4] = self;
  v10 = errorCopy;
  v8 = errorCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)didStopLiveLink:(id)link
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61___MPCQueueControllerBehaviorMusicSharePlay_didStopLiveLink___block_invoke;
  block[3] = &unk_1E8239298;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)liveLinkDidReconnect:(id)reconnect
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66___MPCQueueControllerBehaviorMusicSharePlay_liveLinkDidReconnect___block_invoke;
  block[3] = &unk_1E8239298;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (id)playbackCoordinator:(id)coordinator identifierForPlayerItem:(id)item
{
  contentItemID = [item contentItemID];
  v6 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self _componentsForContentItemID:contentItemID];
  itemID = [v6 itemID];

  return itemID;
}

- (void)controller:(id)controller defersResponseReplacement:(id)replacement
{
  replacementCopy = replacement;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82___MPCQueueControllerBehaviorMusicSharePlay_controller_defersResponseReplacement___block_invoke;
  v7[3] = &unk_1E8239170;
  v7[4] = self;
  v8 = replacementCopy;
  v6 = replacementCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

- (int64_t)displayItemCount
{
  tracklist = [(ICSharedListeningQueue *)self->_queue tracklist];
  totalItemCount = [tracklist totalItemCount];

  return totalItemCount;
}

- (void)clearAllItemsAfterContentItemID:(id)d
{
  v4 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self _componentsForContentItemID:d];
  queue = self->_queue;
  v10 = v4;
  itemID = [v4 itemID];
  v7 = [(ICSharedListeningQueue *)queue itemForIdentifier:itemID];

  if (v7)
  {
    v8 = self->_queue;
    itemID2 = [v10 itemID];
    [(ICSharedListeningQueue *)v8 removeAllItemIdentifiersAfterItemIdentifier:itemID2];
  }
}

- (void)removeContentItemID:(id)d completion:(id)completion
{
  completionCopy = completion;
  v7 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self _componentsForContentItemID:d];
  queue = self->_queue;
  v14 = v7;
  itemID = [v7 itemID];
  v10 = [(ICSharedListeningQueue *)queue itemForIdentifier:itemID];

  if (v10)
  {
    v11 = self->_queue;
    itemID2 = [v14 itemID];
    [(ICSharedListeningQueue *)v11 removeItemIdentifier:itemID2];

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v13 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicSharePlayBehaviorError" code:8 debugDescription:@"Received a remove command but the item is not available in the queue."];
    completionCopy[2](completionCopy, v13);

    completionCopy = v13;
  }
}

- (void)moveContentItemID:(id)d afterContentItemID:(id)iD completion:(id)completion
{
  iDCopy = iD;
  completionCopy = completion;
  v9 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self _componentsForContentItemID:d];
  queue = self->_queue;
  itemID = [v9 itemID];
  v12 = [(ICSharedListeningQueue *)queue itemForIdentifier:itemID];

  if (v12)
  {
    v13 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self _componentsForContentItemID:iDCopy];
    v14 = self->_queue;
    itemID2 = [v13 itemID];
    v16 = [(ICSharedListeningQueue *)v14 itemForIdentifier:itemID2];

    if (v16)
    {
      v17 = self->_queue;
      itemID3 = [v9 itemID];
      itemID4 = [v13 itemID];
      [(ICSharedListeningQueue *)v17 moveItemIdentifier:itemID3 afterItemIdentifier:itemID4];

      completionCopy[2](completionCopy, 0);
    }

    else
    {
      v20 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicSharePlayBehaviorError" code:8 debugDescription:@"Received a move command but the target is not available in the queue."];
      (completionCopy)[2](completionCopy, v20);
    }
  }

  else
  {
    v13 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicSharePlayBehaviorError" code:8 debugDescription:@"Received a move command but the source is not available in the queue."];
    (completionCopy)[2](completionCopy, v13);
  }
}

- (void)moveContentItemID:(id)d beforeContentItemID:(id)iD completion:(id)completion
{
  iDCopy = iD;
  completionCopy = completion;
  v9 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self _componentsForContentItemID:d];
  queue = self->_queue;
  itemID = [v9 itemID];
  v12 = [(ICSharedListeningQueue *)queue itemForIdentifier:itemID];

  if (v12)
  {
    v13 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self _componentsForContentItemID:iDCopy];
    v14 = self->_queue;
    itemID2 = [v13 itemID];
    v16 = [(ICSharedListeningQueue *)v14 itemForIdentifier:itemID2];

    if (v16)
    {
      v17 = self->_queue;
      itemID3 = [v9 itemID];
      itemID4 = [v13 itemID];
      [(ICSharedListeningQueue *)v17 moveItemIdentifier:itemID3 beforeItemIdentifier:itemID4];

      completionCopy[2](completionCopy, 0);
    }

    else
    {
      v20 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicSharePlayBehaviorError" code:8 debugDescription:@"Received a move command but the target is not available in the queue."];
      (completionCopy)[2](completionCopy, v20);
    }
  }

  else
  {
    v13 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicSharePlayBehaviorError" code:8 debugDescription:@"Received a move command but the source is not available in the queue."];
    (completionCopy)[2](completionCopy, v13);
  }
}

- (void)performInsertCommand:(id)command targetContentItemID:(id)d completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  playbackQueue = [commandCopy playbackQueue];
  externalSyncHost = [(_MPCQueueControllerBehaviorMusicSharePlay *)self externalSyncHost];
  v12 = [externalSyncHost beginExternalSyncEditWithReason:@"PerformInsertCommand"];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __97___MPCQueueControllerBehaviorMusicSharePlay_performInsertCommand_targetContentItemID_completion___block_invoke;
  v17[3] = &unk_1E8232F40;
  v18 = playbackQueue;
  v19 = v12;
  v20 = commandCopy;
  selfCopy = self;
  v22 = completionCopy;
  v23 = a2;
  v13 = commandCopy;
  v14 = v12;
  v15 = completionCopy;
  v16 = playbackQueue;
  [v16 getMusicPlaybackContextWithOptions:0 completion:v17];
}

- (BOOL)isSupportedInsertionPosition:(int64_t)position fromContentItemID:(id)d reason:(id *)reason
{
  dCopy = d;
  v9 = 1;
  if (position <= 1)
  {
    if (!position)
    {
      goto LABEL_21;
    }

    if (position == 1)
    {
      if (reason)
      {
        position = @"cannot insert at Tail";
        goto LABEL_19;
      }

LABEL_20:
      v9 = 0;
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  if (position == 4)
  {
    if (reason)
    {
      position = @"cannot insert at Start";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (position == 3)
  {
    goto LABEL_21;
  }

  if (position != 2)
  {
LABEL_15:
    if (reason)
    {
      position = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown insertion position: %d", position];
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (self->_activeItemFlags)
  {
    if (reason)
    {
      position = @"active item from auto play";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if ([(ICSharedListeningQueue *)self->_queue hasActiveRadioStation])
  {
    if (reason)
    {
      position = @"queue contains radio station";
LABEL_19:
      v9 = 0;
      *reason = position;
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_21:

  return v9;
}

- (void)setAllowsQueueModifications:(BOOL)modifications
{
  v12 = *MEMORY[0x1E69E9840];
  host = [(_MPCQueueControllerBehaviorMusicSharePlay *)self host];
  v5 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicSharePlayBehavior");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    engineID = [host engineID];
    sessionID = [(_MPCQueueControllerBehaviorMusicSharePlay *)self sessionID];
    v8 = 138543618;
    v9 = engineID;
    v10 = 2114;
    v11 = sessionID;
    _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_ERROR, "[BMSP:%{public}@:%{public}@] setAllowsQueueModifications: | ignoring unsupported option [cannot disable queue modifications]", &v8, 0x16u);
  }
}

- (void)canReuseQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  if ([queueCopy replaceIntent] == 3)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_6:
    if ([_MPCQueueControllerBehaviorMusic canLoadQueue:queueCopy reason:0]&& self->_queue)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __70___MPCQueueControllerBehaviorMusicSharePlay_canReuseQueue_completion___block_invoke;
      v9[3] = &unk_1E8237C68;
      v9[4] = self;
      v10 = completionCopy;
      [queueCopy getMusicPlaybackContextWithOptions:0 completion:v9];

      goto LABEL_10;
    }

LABEL_9:
    (*(completionCopy + 2))(completionCopy, 0, 0, 0, 0);
    goto LABEL_10;
  }

  identifier = [queueCopy identifier];
  if (![@"InProcess-com.apple.music.playbackqueue.sharedlistening" isEqualToString:identifier])
  {

    goto LABEL_6;
  }

  (*(completionCopy + 2))(completionCopy, 0, 0, 0, 0);

LABEL_10:
}

- (void)setRequestedPropertySetForEvents:(id)events
{
  eventsCopy = events;
  if (!eventsCopy)
  {
    eventsCopy = [MEMORY[0x1E69708B0] emptyPropertySet];
  }

  if (self->_requestedPropertySetForEvents != eventsCopy)
  {
    v7 = eventsCopy;
    v5 = [(MPPropertySet *)eventsCopy copy];
    requestedPropertySetForEvents = self->_requestedPropertySetForEvents;
    self->_requestedPropertySetForEvents = v5;

    eventsCopy = v7;
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

- (void)updatePlaybackCoordinator:(id)coordinator
{
  v20 = *MEMORY[0x1E69E9840];
  coordinatorCopy = coordinator;
  playbackCoordinator = self->_playbackCoordinator;
  if (playbackCoordinator != coordinatorCopy)
  {
    delegate = [(AVPlayerPlaybackCoordinator *)playbackCoordinator delegate];

    if (delegate == self)
    {
      [(AVPlayerPlaybackCoordinator *)self->_playbackCoordinator setDelegate:0];
    }

    objc_storeStrong(&self->_playbackCoordinator, coordinator);
    [(AVPlayerPlaybackCoordinator *)self->_playbackCoordinator setDelegate:self];
    if (self->_playbackCoordinator)
    {
      queue = [(_MPCQueueControllerBehaviorMusicSharePlay *)self queue];

      if (queue)
      {
        host = [(_MPCQueueControllerBehaviorMusicSharePlay *)self host];
        v10 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicSharePlayBehavior");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          engineID = [host engineID];
          sessionID = [(_MPCQueueControllerBehaviorMusicSharePlay *)self sessionID];
          v13 = self->_playbackCoordinator;
          v14 = 138543874;
          v15 = engineID;
          v16 = 2114;
          v17 = sessionID;
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
  delegate = [(AVPlayerPlaybackCoordinator *)v5 delegate];

  if (delegate == self)
  {
    [(AVPlayerPlaybackCoordinator *)v5 setDelegate:0];
  }

  playbackCoordinator = self->_playbackCoordinator;
  self->_playbackCoordinator = 0;

  [(ICLiveLink *)self->_liveLink endSynchronizedPlayback];
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

- (void)setHostingSharedSessionID:(id)d reason:(id)reason
{
  if (d)
  {
    v5 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self musicSharePlayBehaviorDelegate:d];
    [v5 behavior:self didEndSharePlaySessionWithReason:2];
  }
}

- (void)findFirstContentItemIDForItemIntersectingIdentifierSet:(id)set completion:(id)completion
{
  completionCopy = completion;
  requestController = self->_requestController;
  setCopy = set;
  response = [(MPRequestResponseController *)requestController response];
  modelResponse = [response modelResponse];
  results = [modelResponse results];

  v11 = [results indexPathForItemWithIdentifiersIntersectingSet:setCopy];

  if (v11)
  {
    v12 = [results identifiersForItemAtIndexPath:v11];
    vendorID = [v12 vendorID];
    v14 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self _componentsForSharedListeningItemID:vendorID];

    contentItemID = [v14 contentItemID];
    completionCopy[2](completionCopy, contentItemID, 0);
  }

  else
  {
    completionCopy[2](completionCopy, 0, 0);
  }
}

- (void)getSharedQueueTracklistWithStartingContentItemID:(id)d completion:(id)completion
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusicSharePlay.m" lineNumber:637 description:@"Cannot get a shared queue tracklist from an existing shared queue."];
}

- (BOOL)isAutoPlayContentItemID:(id)d
{
  v3 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self _componentsForContentItemID:d];
  behaviorFlags = [v3 behaviorFlags];

  return behaviorFlags & 1;
}

- (void)setAutoPlayEnabled:(BOOL)enabled targetContentItemID:(id)d completion:(id)completion
{
  enabledCopy = enabled;
  dCopy = d;
  completionCopy = completion;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __95___MPCQueueControllerBehaviorMusicSharePlay_setAutoPlayEnabled_targetContentItemID_completion___block_invoke;
  v12[3] = &unk_1E8232EA0;
  objc_copyWeak(&v14, &location);
  v15 = enabledCopy;
  v11 = completionCopy;
  v13 = v11;
  [(ICSharedListeningQueue *)queue setAutoPlayEnabled:enabledCopy completion:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (BOOL)canUserEnableAutoPlayWithReason:(id *)reason
{
  result = [(ICSharedListeningQueue *)self->_queue isAutoPlayAvailable];
  if (reason)
  {
    if (!result)
    {
      *reason = @"AutoPlay unavailable in this SharePlay session";
    }
  }

  return result;
}

- (void)reshuffleWithTargetContentItemID:(id)d completion:(id)completion
{
  v5 = MEMORY[0x1E696ABC0];
  completionCopy = completion;
  v7 = [v5 msv_errorWithDomain:@"MPCMusicSharePlayBehaviorError" code:3 debugDescription:@"Shuffle is not supported in SharePlay."];
  (*(completion + 2))(completionCopy, v7);
}

- (void)setShuffleType:(int64_t)type targetContentItemID:(id)d completion:(id)completion
{
  v6 = MEMORY[0x1E696ABC0];
  completionCopy = completion;
  v8 = [v6 msv_errorWithDomain:@"MPCMusicSharePlayBehaviorError" code:3 debugDescription:@"Shuffle is not supported in SharePlay."];
  (*(completion + 2))(completionCopy, v8);
}

- (BOOL)canUserChangeShuffleModeWithReason:(id *)reason
{
  if (reason)
  {
    *reason = @"in shared listening mode";
  }

  return 0;
}

- (void)setRepeatType:(int64_t)type completion:(id)completion
{
  v5 = MEMORY[0x1E696ABC0];
  completionCopy = completion;
  v7 = [v5 msv_errorWithDomain:@"MPCMusicSharePlayBehaviorError" code:3 debugDescription:@"Repeat is not supported in SharePlay."];
  (*(completion + 2))(completionCopy, v7);
}

- (BOOL)canUserChangeRepeatTypeWithReason:(id *)reason
{
  if (reason)
  {
    *reason = @"in shared listening mode";
  }

  return 0;
}

- (void)didJumpToTargetContentItemID:(id)d
{
  v6 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self _componentsForContentItemID:d];
  liveLink = self->_liveLink;
  itemID = [v6 itemID];
  [(ICLiveLink *)liveLink broadcastDirectCurrentItemChangedToItemIdentifier:itemID];
}

- (id)_itemForContentItemID:(id)d allowReuse:(BOOL)reuse
{
  v51 = *MEMORY[0x1E69E9840];
  dCopy = d;
  host = [(_MPCQueueControllerBehaviorMusicSharePlay *)self host];
  v6 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self _componentsForContentItemID:dCopy];
  if ([v6 type])
  {
    v7 = objc_alloc_init(MEMORY[0x1E6970880]);
    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
    v9 = [v8 localizedStringForKey:@"LOADING_AUDIO_LABEL" value:&stru_1F454A698 table:@"MediaPlayer"];
    [(MPCModelGenericAVItem *)v7 setMainTitle:v9];

    queue = [(_MPCQueueControllerBehaviorMusicSharePlay *)self queue];
    itemID = [v6 itemID];
    v12 = [queue itemForIdentifier:itemID];
    mediaIdentifier = [v12 mediaIdentifier];
    -[MPCModelGenericAVItem setStoreItemInt64ID:](v7, "setStoreItemInt64ID:", [mediaIdentifier longLongValue]);

    itemID2 = [v6 itemID];
    [(MPCModelGenericAVItem *)v7 setQueueIdentifier:itemID2];

    contentItemID = [v6 contentItemID];
    sectionID = [v6 sectionID];
    itemID3 = [v6 itemID];
    [(MPCModelGenericAVItem *)v7 setContentItemID:contentItemID queueSectionID:sectionID queueItemID:itemID3];
    goto LABEL_5;
  }

  response = [(MPRequestResponseController *)self->_requestController response];
  modelResponse = [response modelResponse];
  contentItemID = [modelResponse results];

  resultsIndexPathMap = self->_resultsIndexPathMap;
  itemID4 = [v6 itemID];
  sectionID = [(NSDictionary *)resultsIndexPathMap objectForKeyedSubscript:itemID4];

  if (sectionID)
  {
    itemID3 = [contentItemID itemAtIndexPath:sectionID];
    v42 = -[NSObject sectionAtIndex:](contentItemID, "sectionAtIndex:", [sectionID section]);
    request = [(MPRequestResponseController *)self->_requestController request];
    modelRequest = [request modelRequest];
    playbackRequestEnvironment = [modelRequest playbackRequestEnvironment];

    v25 = [MPCModelGenericAVItem alloc];
    request2 = [(MPRequestResponseController *)self->_requestController request];
    modelRequest2 = [request2 modelRequest];
    [modelRequest2 itemProperties];
    v28 = v43 = dCopy;
    v7 = [(MPCModelGenericAVItem *)v25 initWithGenericObject:itemID3 itemProperties:v28 playbackRequestEnvironment:playbackRequestEnvironment identityPropertySet:self->_identityPropertySet];

    itemID5 = [v6 itemID];
    [(MPCModelGenericAVItem *)v7 setQueueIdentifier:itemID5];

    contentItemID2 = [v6 contentItemID];
    sectionID2 = [v6 sectionID];
    itemID6 = [v6 itemID];
    [(MPCModelGenericAVItem *)v7 setContentItemID:contentItemID2 queueSectionID:sectionID2 queueItemID:itemID6];

    dCopy = v43;
    userIdentity = [playbackRequestEnvironment userIdentity];
    v34 = [MPCMediaLibraryPlaybackAssetCacheProvider deviceLibraryProviderWithUserIdentity:userIdentity];
    [(MPCModelGenericAVItem *)v7 setAssetCacheProvider:v34];

    v35 = [MEMORY[0x1E6970708] playEventWithModelObject:v42 featureName:@"MusicSharePlayBehavior"];
    [(MPCModelGenericAVItem *)v7 setModelPlayEvent:v35];

    -[MPCModelGenericAVItem setAutoPlayItem:](v7, "setAutoPlayItem:", [v6 behaviorFlags] & 1);
    [(NSHashTable *)self->_activeModelGenericAVItems addObject:v7];

LABEL_5:
    contentItemID = os_log_create("com.apple.amp.mediaplaybackcore", "MusicSharePlayBehavior");
    if (os_log_type_enabled(contentItemID, OS_LOG_TYPE_DEFAULT))
    {
      engineID = [host engineID];
      sessionID = [(_MPCQueueControllerBehaviorMusicSharePlay *)self sessionID];
      *buf = 138543874;
      v46 = engineID;
      v47 = 2114;
      v48 = sessionID;
      v49 = 2114;
      v50 = v7;
      _os_log_impl(&dword_1C5C61000, contentItemID, OS_LOG_TYPE_DEFAULT, "[ITFIT:%{public}@:%{public}@] _itemForComponents | returning item [] item=%{public}@", buf, 0x20u);
    }

    goto LABEL_10;
  }

  v38 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicSharePlayBehavior");
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    engineID2 = [host engineID];
    sessionID2 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self sessionID];
    *buf = 138543874;
    v46 = engineID2;
    v47 = 2114;
    v48 = sessionID2;
    v49 = 2114;
    v50 = dCopy;
    _os_log_impl(&dword_1C5C61000, v38, OS_LOG_TYPE_DEFAULT, "[ITFIT:%{public}@:%{public}@] _itemForContentItemID: | returning nil [unknown contentItemID] contentItemID=%{public}@", buf, 0x20u);
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (id)_stateDictionaryIncludingQueue:(BOOL)queue
{
  queueCopy = queue;
  v12[1] = *MEMORY[0x1E69E9840];
  v11 = @"_obj";
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p>", objc_opt_class(), self];
  v12[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  if (queueCopy)
  {
    v7 = [v6 mutableCopy];
    _queueAsStateDictionary = [(_MPCQueueControllerBehaviorMusicSharePlay *)self _queueAsStateDictionary];
    [v7 setObject:_queueAsStateDictionary forKeyedSubscript:@"queue"];

    v9 = [v7 copy];
    v6 = v9;
  }

  return v6;
}

- (id)contentItemIDEnumeratorStartingAfterContentItemID:(id)d mode:(int64_t)mode options:(unint64_t)options
{
  optionsCopy = options;
  v23[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (self->_liveLinkStopped)
  {
    v8 = [MPCQueueControllerBehaviorMusicIdentifierComponents placeholderComponentsWithLoadingSectionID:@"LiveLinkStopped"];
    contentItemID = [v8 contentItemID];
    v23[0] = contentItemID;
    v9ContentItemID = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    objectEnumerator = [v9ContentItemID objectEnumerator];
LABEL_19:

LABEL_20:
    goto LABEL_21;
  }

  v12 = [(NSArray *)self->_enumeratorContentItemIDs copy];
  v8 = v12;
  if (dCopy)
  {
    v13 = [v12 indexOfObject:dCopy];
    if (v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self _componentsForContentItemID:dCopy];
      itemSpecificContentItemID = [v14 itemSpecificContentItemID];

      if (!itemSpecificContentItemID || ([v14 itemSpecificContentItemID], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v8, "indexOfObject:", v16), v16, v17 == 0x7FFFFFFFFFFFFFFFLL) || ((optionsCopy & 1) != 0 ? (v13 = v17 + 1) : (v13 = v17 - 1), v13 == 0x7FFFFFFFFFFFFFFFLL))
      {
        objectEnumerator = [MEMORY[0x1E695E0F0] objectEnumerator];

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
    contentItemID = [MPCQueueControllerBehaviorMusicIdentifierComponents placeholderComponentsWithLoadingSectionID:@"WaitingForFirstQueue"];
    v9ContentItemID = [contentItemID contentItemID];
    v22 = v9ContentItemID;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
    objectEnumerator = [v19 objectEnumerator];

    goto LABEL_19;
  }

  if (optionsCopy)
  {
    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      contentItemID = [v8 subarrayWithRange:{0, v13}];
      reverseObjectEnumerator = [contentItemID reverseObjectEnumerator];
      goto LABEL_28;
    }

    reverseObjectEnumerator2 = [v8 reverseObjectEnumerator];
  }

  else
  {
    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      contentItemID = [v8 subarrayWithRange:{v13 + 1, objc_msgSend(v8, "count") + ~v13}];
      reverseObjectEnumerator = [contentItemID objectEnumerator];
LABEL_28:
      objectEnumerator = reverseObjectEnumerator;
      goto LABEL_20;
    }

    reverseObjectEnumerator2 = [v8 objectEnumerator];
  }

  objectEnumerator = reverseObjectEnumerator2;
LABEL_21:

  return objectEnumerator;
}

- (BOOL)isEmpty
{
  items = [(ICSharedListeningQueue *)self->_queue items];
  v3 = [items count] == 0;

  return v3;
}

- (BOOL)canNextItemFromContentItemID:(id)d reason:(id *)reason
{
  dCopy = d;
  v7 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self _componentsForContentItemID:dCopy];
  if ([v7 type] == 3)
  {
    if (reason)
    {
      v8 = 0;
      *reason = @"tail placeholder";
      goto LABEL_12;
    }

LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  queue = self->_queue;
  itemID = [v7 itemID];
  v11 = [(ICSharedListeningQueue *)queue itemForIdentifier:itemID];

  if (!v11)
  {
    if (reason)
    {
      v14 = MEMORY[0x1E696AEC0];
      itemID2 = [v7 itemID];
      *reason = [v14 stringWithFormat:@"ICSharedListeningQueue does not contain itemID: %@", itemID2];
    }

    goto LABEL_11;
  }

  v12 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self contentItemIDEnumeratorStartingAfterContentItemID:dCopy mode:2 options:0];
  nextObject = [v12 nextObject];
  v8 = nextObject != 0;
  if (reason && !nextObject)
  {
    *reason = @"end of shared listening queue";
  }

LABEL_12:
  return v8;
}

- (BOOL)canPreviousItemFromContentItemID:(id)d reason:(id *)reason
{
  v6 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self _componentsForContentItemID:d];
  queue = self->_queue;
  itemID = [v6 itemID];
  v9 = [(ICSharedListeningQueue *)queue itemForIdentifier:itemID];

  if (reason && !v9)
  {
    v10 = MEMORY[0x1E696AEC0];
    itemID2 = [v6 itemID];
    *reason = [v10 stringWithFormat:@"ICSharedListeningQueue does not contain itemID: %@", itemID2];
  }

  return v9 != 0;
}

- (BOOL)canJumpToContentItemID:(id)d reason:(id *)reason
{
  v6 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self _componentsForContentItemID:d];
  queue = self->_queue;
  itemID = [v6 itemID];
  v9 = [(ICSharedListeningQueue *)queue itemForIdentifier:itemID];

  if (reason && !v9)
  {
    v10 = MEMORY[0x1E696AEC0];
    itemID2 = [v6 itemID];
    *reason = [v10 stringWithFormat:@"ICSharedListeningQueue does not contain itemID: %@", itemID2];
  }

  return v9 != 0;
}

- (BOOL)itemExistsForContentItemID:(id)d
{
  dCopy = d;
  v6 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self _componentsForContentItemID:dCopy];
  v7 = v6;
  if (self->_liveLinkStopped)
  {
    if ([v6 type] == 2)
    {
      sectionID = [v7 sectionID];
      itemID = sectionID;
      v10 = @"LiveLinkStopped";
LABEL_11:
      LOBYTE(currentHandler) = [sectionID isEqualToString:v10];
      goto LABEL_21;
    }
  }

  else
  {
    if (self->_queue)
    {
      itemID = [v6 itemID];
      type = [v7 type];
      LOBYTE(currentHandler) = 0;
      if (type > 1)
      {
        if (type == 2)
        {
          LOBYTE(currentHandler) = self->_queue != 0;
        }

        else if (type == 3)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusicSharePlay.m" lineNumber:384 description:{@"Unexpected contentItemID in itemExistsForContentItemID (MPCQueueControllerBehaviorItemTypeEndOfQueuePlaceholder): %@", dCopy}];

          LOBYTE(currentHandler) = 0;
        }

        goto LABEL_21;
      }

      if (type)
      {
        if (type != 1)
        {
LABEL_21:

          goto LABEL_22;
        }

        itemSpecificContentItemID = [v7 itemSpecificContentItemID];
        LOBYTE(currentHandler) = [(_MPCQueueControllerBehaviorMusicSharePlay *)self _useItemPlaceholderForContentItemID:itemSpecificContentItemID];
      }

      else
      {
        itemSpecificContentItemID = [(ICSharedListeningQueue *)self->_queue itemForIdentifier:itemID];
        if (itemSpecificContentItemID)
        {
          LODWORD(currentHandler) = ![(_MPCQueueControllerBehaviorMusicSharePlay *)self _useItemPlaceholderForContentItemID:dCopy];
        }

        else
        {
          LOBYTE(currentHandler) = 0;
        }
      }

      goto LABEL_21;
    }

    if ([v6 type] == 2)
    {
      sectionID = [v7 sectionID];
      itemID = sectionID;
      v10 = @"WaitingForFirstQueue";
      goto LABEL_11;
    }
  }

  LOBYTE(currentHandler) = 0;
LABEL_22:

  return currentHandler;
}

- (id)performLoadCommand:(id)command completion:(id)completion
{
  v64 = *MEMORY[0x1E69E9840];
  commandCopy = command;
  completionCopy = completion;
  v9 = objc_opt_class();
  playbackQueue = [commandCopy playbackQueue];
  v55 = 0;
  v11 = [v9 canLoadQueue:playbackQueue reason:&v55];
  v12 = v55;

  if ((v11 & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusicSharePlay.m" lineNumber:291 description:{@"unsupported playback queue: %@", v12}];
  }

  host = [(_MPCQueueControllerBehaviorMusicSharePlay *)self host];
  mediaRemoteOptions = [commandCopy mediaRemoteOptions];
  v16 = [mediaRemoteOptions objectForKeyedSubscript:@"sharedListeningToken"];

  if (v16)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      playbackQueue2 = [commandCopy playbackQueue];
      self->_joiningAsInitiator = [playbackQueue2 isRequestingImmediatePlayback];

      v18 = +[MPCPlaybackRequestEnvironment activeAccountRequestEnvironment];
      playbackRequestEnvironment = self->_playbackRequestEnvironment;
      self->_playbackRequestEnvironment = v18;

      _createStoreRequestContext = [(MPCPlaybackRequestEnvironment *)self->_playbackRequestEnvironment _createStoreRequestContext];
      v54 = 0;
      v21 = [[MPCModelGenericAVItemUserIdentityPropertySet alloc] initWithRequestContext:_createStoreRequestContext error:&v54];
      v22 = v54;
      identityPropertySet = self->_identityPropertySet;
      self->_identityPropertySet = v21;

      v52 = host;
      if (v22 || !self->_identityPropertySet)
      {
        v24 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicSharePlayBehavior");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          engineID = [host engineID];
          [(_MPCQueueControllerBehaviorMusicSharePlay *)self sessionID];
          v27 = v26 = v12;
          *buf = 138543874;
          v57 = engineID;
          v58 = 2114;
          v59 = v27;
          v60 = 2114;
          v61 = v22;
          _os_log_impl(&dword_1C5C61000, v24, OS_LOG_TYPE_DEFAULT, "[BMSP:%{public}@:%{public}@] performLoadCommand:completion: | failing command [failed to load identity properties] error=%{public}@", buf, 0x20u);

          v12 = v26;
          host = v52;
        }

        v28 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicSharePlayBehaviorError" code:2 underlyingError:v22 debugDescription:@"failed to load identity properties"];

        completionCopy[2](completionCopy, v28);
      }

      v32 = _Block_copy(completionCopy);
      loadingCompletionHandler = self->_loadingCompletionHandler;
      self->_loadingCompletionHandler = v32;

      sharedListeningProperties = [v16 sharedListeningProperties];
      sessionIdentifier = [sharedListeningProperties sessionIdentifier];

      identity = [v16 identity];
      v51 = +[MPCSharedListeningLiveLinkReusePool sharedReusePool];
      v37 = [v51 liveLinkForSessionID:sessionIdentifier];
      v53 = identity;
      if (v37)
      {
        v38 = v37;
        v39 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicSharePlayBehavior");
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          engineID2 = [host engineID];
          [(_MPCQueueControllerBehaviorMusicSharePlay *)self sessionID];
          v41 = v49 = v12;
          *buf = 138544130;
          v57 = engineID2;
          v58 = 2114;
          v59 = v41;
          v60 = 2048;
          v61 = v38;
          v62 = 2114;
          v63 = sessionIdentifier;
          _os_log_impl(&dword_1C5C61000, v39, OS_LOG_TYPE_DEFAULT, "[BMSP:%{public}@:%{public}@] performLoadCommand:completion: | reusing live link [] liveLink=%p sessionID=%{public}@", buf, 0x2Au);

          v12 = v49;
        }
      }

      else
      {
        v38 = [MEMORY[0x1E69E4448] linkWithSessionIdentifier:sessionIdentifier identity:identity];
        v42 = os_log_create("com.apple.amp.mediaplaybackcore", "MusicSharePlayBehavior");
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          engineID3 = [host engineID];
          sessionID = [(_MPCQueueControllerBehaviorMusicSharePlay *)self sessionID];
          *buf = 138544130;
          v57 = engineID3;
          v58 = 2114;
          v59 = sessionID;
          v60 = 2048;
          v61 = v38;
          v62 = 2114;
          v63 = sessionIdentifier;
          _os_log_impl(&dword_1C5C61000, v42, OS_LOG_TYPE_DEFAULT, "[BMSP:%{public}@:%{public}@] performLoadCommand:completion: | allocating live link [] liveLink=%p sessionID=%{public}@", buf, 0x2Au);
        }

        [v51 storeLiveLink:v38 forSessionID:sessionIdentifier];
      }

      [v38 setDelegate:self];
      liveLink = self->_liveLink;
      self->_liveLink = v38;
      v45 = v38;

      v46 = v53;
      [(ICLiveLink *)self->_liveLink updateWithIdentity:v53];
      if (([(ICLiveLink *)self->_liveLink isStarted]& 1) != 0)
      {
        queue = [v45 queue];

        if (queue)
        {
          [(_MPCQueueControllerBehaviorMusicSharePlay *)self _initializeWithQueue:queue];
          v45 = queue;
        }

        else
        {
          v45 = 0;
        }

        host = v52;
        v46 = v53;
      }

      else
      {
        [(ICLiveLink *)self->_liveLink start];
        host = v52;
      }
    }

    else
    {
      v29 = MEMORY[0x1E696ABC0];
      v30 = objc_opt_class();
      _createStoreRequestContext = NSStringFromClass(v30);
      v31 = [v29 msv_errorWithDomain:@"MPCMusicSharePlayBehaviorError" code:1 debugDescription:{@"Unsupported playback queue for SharePlay behavior [sharedListeningToken is unknown type: %@]", _createStoreRequestContext}];
      completionCopy[2](completionCopy, v31);
    }
  }

  else
  {
    _createStoreRequestContext = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicSharePlayBehaviorError" code:1 debugDescription:@"Unsupported playback queue for SharePlay behavior [options did not contain 'sharedListeningToken']"];
    completionCopy[2](completionCopy, _createStoreRequestContext);
  }

  return 0;
}

- (void)disconnectFromHost:(id)host
{
  v10[2] = *MEMORY[0x1E69E9840];
  [(_MPCQueueControllerBehaviorMusicSharePlay *)self endSynchronizedPlayback];
  WeakRetained = objc_loadWeakRetained(&self->_host);
  eventStream = [WeakRetained eventStream];
  v9[0] = @"session-id";
  sessionID = [(_MPCQueueControllerBehaviorMusicSharePlay *)self sessionID];
  null = sessionID;
  if (!sessionID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v9[1] = @"shared-session-event-reason";
  v10[0] = null;
  v10[1] = @"MusicSharePlayBehavior Teardown";
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [eventStream emitEventType:@"shared-session-end" payload:v8];

  if (!sessionID)
  {
  }

  objc_storeWeak(&self->_host, 0);
}

- (void)didConnectToHost:(id)host
{
  v11[4] = *MEMORY[0x1E69E9840];
  eventStream = [host eventStream];
  v10[0] = @"session-id";
  sessionID = [(_MPCQueueControllerBehaviorMusicSharePlay *)self sessionID];
  null = sessionID;
  if (!sessionID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v11[0] = null;
  v10[1] = @"shared-session-id";
  sessionID2 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self sessionID];
  null2 = sessionID2;
  if (!sessionID2)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = null2;
  v11[2] = &unk_1F4599208;
  v10[2] = @"shared-session-type";
  v10[3] = @"shared-session-event-reason";
  v11[3] = @"MusicSharePlayBehavior Setup";
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];
  [eventStream emitEventType:@"shared-session-begin" payload:v9];

  if (!sessionID2)
  {
  }

  if (!sessionID)
  {
  }
}

- (_MPCQueueControllerBehaviorMusicSharePlay)initWithSessionID:(id)d
{
  dCopy = d;
  v17.receiver = self;
  v17.super_class = _MPCQueueControllerBehaviorMusicSharePlay;
  v5 = [(_MPCQueueControllerBehaviorMusicSharePlay *)&v17 init];
  if (v5)
  {
    v6 = [dCopy copy];
    sessionID = v5->_sessionID;
    v5->_sessionID = v6;

    array = [MEMORY[0x1E695DF70] array];
    pendingActions = v5->_pendingActions;
    v5->_pendingActions = array;

    v10 = [MEMORY[0x1E695DFA8] set];
    knownContainerIDs = v5->_knownContainerIDs;
    v5->_knownContainerIDs = v10;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    activeModelGenericAVItems = v5->_activeModelGenericAVItems;
    v5->_activeModelGenericAVItems = weakObjectsHashTable;

    v14 = objc_alloc_init(MEMORY[0x1E6970910]);
    requestController = v5->_requestController;
    v5->_requestController = v14;

    [(MPRequestResponseController *)v5->_requestController setDelegate:v5];
    [(MPRequestResponseController *)v5->_requestController beginAutomaticResponseLoading];
  }

  return v5;
}

- (void)getExpectedCurrentItemModelObjectWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(_MPCQueueControllerBehaviorMusicSharePlay *)self queue];

  if (queue)
  {
    queue2 = [(_MPCQueueControllerBehaviorMusicSharePlay *)self queue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __93___MPCQueueControllerBehaviorMusicSharePlay_getExpectedCurrentItemModelObjectWithCompletion___block_invoke;
    v9[3] = &unk_1E8232E50;
    v9[4] = self;
    v10 = completionCopy;
    v11 = a2;
    [queue2 getExpectedCurrentItemWithCompletion:v9];
  }

  else
  {
    v8 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicSharePlayBehaviorError" code:14 debugDescription:@"Cannot get model object before the live link queue has loaded"];
    (*(completionCopy + 2))(completionCopy, 0, v8);
  }
}

+ (BOOL)canLoadQueue:(id)queue reason:(id *)reason
{
  queueCopy = queue;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [queueCopy identifier];
    v7 = [@"InProcess-com.apple.music.playbackqueue.sharedlistening" isEqualToString:identifier];
    v8 = v7;
    if (reason && (v7 & 1) == 0)
    {
      *reason = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported custom data playback queue: %@", identifier];
    }
  }

  else if (reason)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported playback queue: %@", objc_opt_class()];
    *reason = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end