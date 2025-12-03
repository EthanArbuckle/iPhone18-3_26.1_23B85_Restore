@interface MPCQueueController
+ (BOOL)isSupportedSessionType:(id)type reason:(id *)reason;
+ (id)allKnownSessionTypes;
+ (id)describePlayer:(id)player;
+ (int64_t)behaviorForQueue:(id)queue;
+ (void)registerPublisher:(id)publisher;
+ (void)unregisterPublisher:(id)publisher;
- (BOOL)_playerItemDidBecomeActiveWithContentItemID:(id)d;
- (BOOL)_withRestorableBehavior:(id)behavior;
- (BOOL)_withTransportableBehavior:(id)behavior;
- (BOOL)canNextTrackForContentItemID:(id)d reason:(id *)reason;
- (BOOL)canPreviousTrackForContentItemID:(id)d reason:(id *)reason;
- (BOOL)containsRestorableContent;
- (BOOL)isEmpty;
- (BOOL)isExportableSessionType:(id)type forContentItemID:(id)d reason:(id *)reason;
- (BOOL)isOneShotExportableSessionForContentItemID:(id)d reason:(id *)reason;
- (BOOL)isUserSelectedContentItemID:(id)d;
- (MPCPlaybackEngineEventStream)eventStream;
- (MPCPlaybackIntent)fallbackPlaybackIntent;
- (MPCQueueController)init;
- (MPCQueueController)initWithBehaviorType:(int64_t)type sessionID:(id)d;
- (MPCQueueController)initWithCoder:(id)coder;
- (MPCQueueControllerBehaviorMusic)music;
- (MPCQueueControllerBehaviorMusicSharePlay)musicSharePlay;
- (MPCQueueControllerBehaviorTransitionTogglableImplementation)transitionTogglable;
- (MPCQueueControllerDelegate)delegate;
- (MPCQueueControllerPlaybackEngine)playbackEngine;
- (MPCQueueControllerReusableBehavior)reusableBehavior;
- (MPCQueueControllerUpNextBehavior)upNextBehavior;
- (NSString)debugDescription;
- (NSString)engineID;
- (NSString)playerID;
- (NSString)revisionString;
- (NSString)targetContentItemID;
- (id)_contentItemIDWithOffset:(int64_t)offset fromItemID:(id)d mode:(int64_t)mode didReachEnd:(BOOL *)end;
- (id)_itemForContentItemID:(id)d allowReuse:(BOOL)reuse;
- (id)_stateDictionaryIncludingQueue:(BOOL)queue;
- (id)beginEditWithReason:(id)reason;
- (id)beginExternalSyncEditWithReason:(id)reason;
- (id)contentItemIDAtIndex:(int64_t)index;
- (id)contentItemIDWithoutRepeatIteration:(id)iteration;
- (id)contentItemIDsFromOffset:(int64_t)offset toOffset:(int64_t)toOffset mode:(int64_t)mode nowPlayingIndex:(int64_t *)index;
- (id)segmentForCodingKey:(id)key;
- (id)startPlayerItemContinuable;
- (int64_t)displayIndexForContentItemID:(id)d;
- (int64_t)displayItemCount;
- (int64_t)targetContentItemSource;
- (int64_t)versionForSegment:(id)segment;
- (void)_commitEdit:(id)edit;
- (void)_currentItemDidChangeFromItem:(id)item toItem:(id)toItem;
- (void)_emitEventsForItemChangeFromItem:(id)item toCurrentItem:(id)currentItem;
- (void)_evaluateContextAwareTriggersWithReason:(id)reason;
- (void)_evaluateCurrentItemWithEdit:(id)edit;
- (void)_rollbackEdit:(id)edit;
- (void)_setTargetContentItemID:(id)d source:(int64_t)source;
- (void)_updateQueueIndexForItemIfNeeded:(id)needed;
- (void)_withDynamicBehavior:(id)behavior;
- (void)_withExternalSyncBehavior:(id)behavior;
- (void)_withUpNextBehavior:(id)behavior;
- (void)dealloc;
- (void)didConnectToPlaybackEngine:(id)engine;
- (void)didDisconnectFromPlaybackEngine:(id)engine;
- (void)didRestoreVersion:(int64_t)version forSegment:(id)segment;
- (void)didSignificantlyChangeItem:(id)item;
- (void)donateStartPlayerItem:(id)item completion:(id)completion;
- (void)encodeWithCoder:(id)coder;
- (void)engine:(id)engine didChangeItemElapsedTime:(double)time rate:(float)rate;
- (void)engine:(id)engine didChangeToState:(unint64_t)state;
- (void)engine:(id)engine didReachEndOfQueueWithReason:(id)reason;
- (void)enumerateContentItemIDsInMode:(int64_t)mode block:(id)block;
- (void)finalizeStateRestorationWithLoadingItemReady:(id)ready completion:(id)completion;
- (void)incrementVersionForSegment:(id)segment;
- (void)jumpToContentItemID:(id)d;
- (void)jumpToContentItemID:(id)d direction:(int64_t)direction;
- (void)jumpToFirstContentItemWithSource:(int64_t)source;
- (void)performAfterEdits:(id)edits;
- (void)performAllowingEditsToChangeCurrentItem:(id)item;
- (void)performSetQueue:(id)queue loadingItemReady:(id)ready completion:(id)completion;
- (void)playerItemDidBecomeCurrent:(id)current;
- (void)upNextBehaviorDidChange;
- (void)willConnectToPlaybackEngine:(id)engine;
- (void)willDisconnectFromPlaybackEngine:(id)engine;
@end

@implementation MPCQueueController

+ (id)allKnownSessionTypes
{
  v2 = +[_MPCQueueControllerRegistry shared];
  transportableExtensions = [v2 transportableExtensions];

  v4 = NSAllMapTableValues(transportableExtensions);
  v5 = [v4 msv_flatMap:&__block_literal_global_19021];

  return v5;
}

- (MPCQueueControllerUpNextBehavior)upNextBehavior
{
  if ([(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl conformsToProtocol:&unk_1F45A2308])
  {
    behaviorImpl = self->_behaviorImpl;
  }

  else
  {
    behaviorImpl = 0;
  }

  return behaviorImpl;
}

- (MPCQueueControllerBehaviorMusic)music
{
  if ([(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl conformsToProtocol:&unk_1F45ADCB8])
  {
    behaviorImpl = self->_behaviorImpl;
  }

  else
  {
    behaviorImpl = 0;
  }

  return behaviorImpl;
}

- (MPCQueueControllerBehaviorMusicSharePlay)musicSharePlay
{
  if ([(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl conformsToProtocol:&unk_1F45AFDC8])
  {
    behaviorImpl = self->_behaviorImpl;
  }

  else
  {
    behaviorImpl = 0;
  }

  return behaviorImpl;
}

- (NSString)revisionString
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(NSMutableDictionary *)self->_coderVersions objectForKeyedSubscript:@"behavior"];
  v4 = [v2 stringWithFormat:@"behavior=%@", v3];

  return v4;
}

- (MPCQueueControllerBehaviorTransitionTogglableImplementation)transitionTogglable
{
  if ([(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl conformsToProtocol:&unk_1F45ADE78])
  {
    behaviorImpl = self->_behaviorImpl;
  }

  else
  {
    behaviorImpl = 0;
  }

  return behaviorImpl;
}

- (MPCQueueControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (MPCQueueControllerPlaybackEngine)playbackEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);

  return WeakRetained;
}

- (void)donateStartPlayerItem:(id)item completion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  completionCopy = completion;
  startPlayerItemContinuable = [(MPCQueueController *)self startPlayerItemContinuable];

  if (startPlayerItemContinuable)
  {
    engineID = [(MPCQueueController *)self engineID];
    startPlayerItemContinuable2 = [(MPCQueueController *)self startPlayerItemContinuable];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __55__MPCQueueController_donateStartPlayerItem_completion___block_invoke;
    v15[3] = &unk_1E8237B08;
    v16 = engineID;
    selfCopy = self;
    v18 = itemCopy;
    v19 = completionCopy;
    v11 = engineID;
    [startPlayerItemContinuable2 donateStartPlayerItem:v18 completion:v15];
  }

  else
  {
    v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      engineID2 = [(MPCQueueController *)self engineID];
      sessionID = [(MPCQueueController *)self sessionID];
      *buf = 138543618;
      v21 = engineID2;
      v22 = 2114;
      v23 = sessionID;
      _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_ERROR, "[PSYNC:%{public}@:%{public}@] donateStartPlayerItem | failed to donate startPlayerItem since the behavior does not support start player item donation", buf, 0x16u);
    }

    v11 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:76 debugDescription:@"Behavior does not support start player item donation"];
    (*(completionCopy + 2))(completionCopy, v11);
  }
}

void __55__MPCQueueController_donateStartPlayerItem_completion___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = [*(a1 + 40) sessionID];
      v14 = 138543874;
      v15 = v6;
      v16 = 2114;
      v17 = v7;
      v18 = 2114;
      v19 = v3;
      _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_ERROR, "[PSYNC:%{public}@:%{public}@] donateStartPlayerItem | failed to donate startPlayerItem with error: %{public}@", &v14, 0x20u);
    }

    v8 = *(*(a1 + 56) + 16);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = [*(a1 + 40) sessionID];
      v11 = [*(a1 + 48) contentItemID];
      v14 = 138543874;
      v15 = v9;
      v16 = 2114;
      v17 = v10;
      v18 = 2114;
      v19 = v11;
      _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] donateStartPlayerItem | attempting to donate start player item with contentItemID: %{public}@", &v14, 0x20u);
    }

    v12 = *(a1 + 40);
    v13 = [*(a1 + 48) contentItemID];
    [v12 _setTargetContentItemID:v13 source:2];

    [*(a1 + 40) playerItemDidBecomeCurrent:*(a1 + 48)];
    v8 = *(*(a1 + 56) + 16);
  }

  v8();
}

- (id)_stateDictionaryIncludingQueue:(BOOL)queue
{
  queueCopy = queue;
  v20[7] = *MEMORY[0x1E69E9840];
  v19[0] = @"__obj";
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p>", objc_opt_class(), self];
  v6 = v5;
  targetContentItemID = self->_targetContentItemID;
  targetContentItemSource = self->_targetContentItemSource;
  if (!targetContentItemID)
  {
    targetContentItemID = @"@";
  }

  v20[0] = v5;
  v20[1] = targetContentItemID;
  v19[1] = @"_targetContentItemID";
  v19[2] = @"_loadingContentItemID";
  loadingContentItemID = self->_loadingContentItemID;
  if (!loadingContentItemID)
  {
    loadingContentItemID = @"@";
  }

  v20[2] = loadingContentItemID;
  v19[3] = @"_targetContentItemSource";
  if (targetContentItemSource <= 3)
  {
    if (targetContentItemSource > 1)
    {
      if (targetContentItemSource == 2)
      {
        targetContentItemSource = @"UserSelected";
      }

      else
      {
        targetContentItemSource = @"NaturalTransition";
      }

      goto LABEL_25;
    }

    if (!targetContentItemSource)
    {
      targetContentItemSource = @"Unknown";
      goto LABEL_25;
    }

    if (targetContentItemSource == 1)
    {
      targetContentItemSource = @"StartItem";
      goto LABEL_25;
    }
  }

  else
  {
    if (targetContentItemSource <= 5)
    {
      if (targetContentItemSource == 4)
      {
        targetContentItemSource = @"ExternalSync";
      }

      else
      {
        targetContentItemSource = @"Redirect";
      }

      goto LABEL_25;
    }

    switch(targetContentItemSource)
    {
      case 6:
        targetContentItemSource = @"QueueBoundary";
        goto LABEL_25;
      case 7:
        targetContentItemSource = @"Restored";
        goto LABEL_25;
      case 100:
        targetContentItemSource = @"Loading";
        goto LABEL_25;
    }
  }

  targetContentItemSource = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown/%ld", targetContentItemSource];
LABEL_25:
  if (targetContentItemSource)
  {
    v11 = targetContentItemSource;
  }

  else
  {
    v11 = @"@";
  }

  v20[3] = v11;
  v19[4] = @"_currentItem";
  v12 = [(MPAVItem *)self->_currentItem description];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = @"@";
  }

  v20[4] = v14;
  v19[5] = @"_loadingAdditionalItems";
  v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_loadingAdditionalItems];
  v20[5] = v15;
  v19[6] = @"behaviorImpl";
  v16 = [(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl _stateDictionaryIncludingQueue:queueCopy];
  v20[6] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:7];

  return v17;
}

- (void)performAllowingEditsToChangeCurrentItem:(id)item
{
  itemCopy = item;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (_MPCQueueControllerEditAllowsChangingCurrentItemPThreadKey_sOnceToken != -1)
  {
    dispatch_once(&_MPCQueueControllerEditAllowsChangingCurrentItemPThreadKey_sOnceToken, &__block_literal_global_924);
  }

  v5 = _MPCQueueControllerEditAllowsChangingCurrentItemPThreadKey_sThreadKey;
  pthread_setspecific(_MPCQueueControllerEditAllowsChangingCurrentItemPThreadKey_sThreadKey, 1);
  array = [MEMORY[0x1E695DF70] array];
  potentialCurrentItemEdits = self->_potentialCurrentItemEdits;
  self->_potentialCurrentItemEdits = array;

  itemCopy[2](itemCopy);
  pthread_setspecific(v5, 0);
  if (!self->_targetContentItemID && [(NSMutableArray *)self->_potentialCurrentItemEdits count])
  {
    v8 = [(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl contentItemIDEnumeratorStartingAfterContentItemID:0 mode:2 options:0];
    nextObject = [v8 nextObject];

    [(MPCQueueController *)self _setTargetContentItemID:nextObject source:0];
  }
}

- (void)_updateQueueIndexForItemIfNeeded:(id)needed
{
  v28 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  v5 = neededCopy;
  if (neededCopy && ([neededCopy isRadioItem] & 1) == 0 && (objc_msgSend(objc_opt_class(), "isPlaceholder") & 1) == 0)
  {
    contentItemID = [v5 contentItemID];
    v7 = contentItemID;
    if (contentItemID == self->_targetContentItemID)
    {
    }

    else
    {
      v8 = [(NSString *)contentItemID isEqual:?];

      if (!v8)
      {
        goto LABEL_21;
      }
    }

    v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    v10 = os_signpost_id_generate(v9);

    v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    v12 = v11;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      LOWORD(v24) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "qc:_updateContentItemQueueIndexForItem", "", &v24, 2u);
    }

    contentItemID2 = [v5 contentItemID];
    v14 = [(MPCQueueController *)self displayIndexForContentItemID:contentItemID2];

    displayItemCount = [(MPCQueueController *)self displayItemCount];
    v16 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
    if (displayItemCount >= 1)
    {
      v17 = [MEMORY[0x1E696AD98] numberWithInteger:displayItemCount];
      [v16 setObject:v17 forKeyedSubscript:*MEMORY[0x1E69B1048]];
    }

    if (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = [MEMORY[0x1E696AD98] numberWithInteger:v14];
      [v16 setObject:v18 forKeyedSubscript:*MEMORY[0x1E69B0FA0]];
    }

    if ([v16 count])
    {
      v19 = objc_alloc(MEMORY[0x1E6970830]);
      contentItemID3 = [v5 contentItemID];
      v21 = [v19 initWithIdentifier:contentItemID3];

      [v21 setNowPlayingInfo:v16];
    }

    v22 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    v23 = v22;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      v24 = 134218240;
      v25 = v14;
      v26 = 2048;
      v27 = displayItemCount;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v23, OS_SIGNPOST_INTERVAL_END, v10, "qc:_updateContentItemQueueIndexForItem", "index=%ld count=%ld", &v24, 0x16u);
    }
  }

LABEL_21:
}

- (id)_itemForContentItemID:(id)d allowReuse:(BOOL)reuse
{
  reuseCopy = reuse;
  v34 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (!dCopy)
  {
    v9 = 0;
    goto LABEL_11;
  }

  if (reuseCopy)
  {
    contentItemID = [(MPAVItem *)self->_currentItem contentItemID];
    v8 = [contentItemID isEqual:dCopy];

    if (v8)
    {
      v9 = self->_currentItem;
      goto LABEL_11;
    }
  }

  v10 = dCopy;
  if ([v10 hasPrefix:@"⏳"])
  {

LABEL_9:
    v9 = objc_opt_new();
    WeakRetained = [(MPCQueueController *)self sessionID];
    [(MPAVItem *)v9 setContentItemID:v10 queueSectionID:@"QC" queueItemID:WeakRetained];
LABEL_10:

    goto LABEL_11;
  }

  v11 = [v10 hasPrefix:@"♻️"];

  if (v11)
  {
    goto LABEL_9;
  }

  v9 = [(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl _itemForContentItemID:v10 allowReuse:reuseCopy];
  [(MPCQueueController *)self _updateQueueIndexForItemIfNeeded:v9];
  if ([(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl playbackPositionRestorationPolicy]== 1 && self->_lastSavedTime > 0.0)
  {
    contentItemID2 = [(MPAVItem *)v9 contentItemID];
    v15 = contentItemID2;
    if (contentItemID2 == self->_restoreLastStartTimePositionToContentItemID)
    {
    }

    else
    {
      v16 = [(NSString *)contentItemID2 isEqual:?];

      if (!v16)
      {
        goto LABEL_25;
      }
    }

    if (([(MPAVItem *)v9 isAlwaysLive]& 1) == 0)
    {
      playbackEngine = [(MPCQueueController *)self playbackEngine];
      v18 = _MPCLogCategoryPlayback();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        engineID = [playbackEngine engineID];
        sessionID = [(MPCQueueController *)self sessionID];
        lastSavedTime = self->_lastSavedTime;
        v26 = 138544130;
        v27 = engineID;
        v28 = 2114;
        v29 = sessionID;
        v30 = 2114;
        v31 = v10;
        v32 = 2048;
        v33 = lastSavedTime;
        _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] _itemForContentItemID:%{public}@ | restoring time [id matches last saved time ID] lastSavedTime=%g", &v26, 0x2Au);
      }

      v22 = [MEMORY[0x1E696AD98] numberWithDouble:self->_lastSavedTime];
      [(MPAVItem *)v9 setInitialPlaybackStartTimeOverride:v22];
    }

    restoreLastStartTimePositionToContentItemID = self->_restoreLastStartTimePositionToContentItemID;
    self->_restoreLastStartTimePositionToContentItemID = 0;

    self->_lastSavedTime = 0.0;
  }

LABEL_25:
  if ([(MPAVItem *)v9 conformsToProtocol:&unk_1F459C7A8])
  {
    v9 = v9;
    WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);
    eventStream = [WeakRetained eventStream];
    [(MPAVItem *)v9 setEventStream:eventStream];

    playerID = [WeakRetained playerID];
    [(MPAVItem *)v9 setPlayerID:playerID];

    goto LABEL_10;
  }

LABEL_11:

  return v9;
}

- (void)_emitEventsForItemChangeFromItem:(id)item toCurrentItem:(id)currentItem
{
  v258[4] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  currentItemCopy = currentItem;
  modelPlayEvent = [itemCopy modelPlayEvent];
  genericObjectRepresentation = [modelPlayEvent genericObjectRepresentation];
  modelPlayEvent2 = [currentItemCopy modelPlayEvent];
  genericObjectRepresentation2 = [modelPlayEvent2 genericObjectRepresentation];
  v11 = 0;
  v12 = genericObjectRepresentation == 0;
  if (!genericObjectRepresentation2)
  {
    v12 = 0;
  }

  v229 = v12;
  if (genericObjectRepresentation2)
  {
    v13 = 0;
  }

  else
  {
    v13 = genericObjectRepresentation != 0;
  }

  v226 = v13;
  v235 = genericObjectRepresentation2;
  v236 = genericObjectRepresentation;
  if (genericObjectRepresentation && genericObjectRepresentation2)
  {
    queueSectionID = [currentItemCopy queueSectionID];
    queueSectionID2 = [itemCopy queueSectionID];
    v16 = queueSectionID;
    v17 = queueSectionID2;
    v18 = v16;
    v19 = v17;
    v20 = v19;
    if (v18 == v19)
    {
    }

    else
    {
      v21 = [v18 isEqual:v19];

      if ((v21 & 1) == 0)
      {
        v11 = 1;
LABEL_13:

        goto LABEL_14;
      }
    }

    identifiers = [v236 identifiers];
    identifiers2 = [v235 identifiers];
    v11 = [identifiers intersectsSet:identifiers2] ^ 1;

    goto LABEL_13;
  }

LABEL_14:
  if (modelPlayEvent2 && modelPlayEvent && !v11)
  {
    mpc_nestedPlayEvent = [modelPlayEvent mpc_nestedPlayEvent];
    mpc_nestedPlayEvent2 = [modelPlayEvent2 mpc_nestedPlayEvent];
    v26 = mpc_nestedPlayEvent2;
    if ((mpc_nestedPlayEvent || !mpc_nestedPlayEvent2) && (!mpc_nestedPlayEvent || mpc_nestedPlayEvent2))
    {
      identifiers3 = [mpc_nestedPlayEvent identifiers];
      identifiers4 = [v26 identifiers];
      v11 = [identifiers3 intersectsSet:identifiers4];
    }

    else
    {
      v11 = 1;
    }
  }

  didReachEnd = 0;
  v30 = itemCopy == 0;
  if (!currentItemCopy)
  {
    v30 = 0;
  }

  v232 = v30;
  if (currentItemCopy)
  {
    v31 = 0;
  }

  else
  {
    v31 = itemCopy != 0;
  }

  if (itemCopy && currentItemCopy)
  {
    contentItemID = [itemCopy contentItemID];
    contentItemID2 = [currentItemCopy contentItemID];
    v34 = contentItemID;
    v35 = contentItemID2;
    v36 = v34;
    v37 = v35;
    v38 = v37;
    if (v36 == v37)
    {
    }

    else
    {
      v39 = [v36 isEqual:v37];

      if ((v39 & 1) == 0)
      {
        didReachEnd = 1;
LABEL_36:

        goto LABEL_37;
      }
    }

    didReachEnd = [itemCopy didReachEnd];
    goto LABEL_36;
  }

LABEL_37:
  queueItemID = [itemCopy queueItemID];
  if ([currentItemCopy conformsToProtocol:&unk_1F459C6E8])
  {
    v40 = currentItemCopy;
  }

  else
  {
    v40 = 0;
  }

  v41 = v40;
  v42 = v41;
  if (itemCopy == currentItemCopy && ([v41 previousQueueItemID], v43 = objc_claimAutoreleasedReturnValue(), v43, v43))
  {
    previousQueueItemID = [v42 previousQueueItemID];
    queueItemID2 = [currentItemCopy queueItemID];
    v46 = previousQueueItemID;
    v47 = queueItemID2;
    if (v46 == v47)
    {
      v48 = 1;
    }

    else
    {
      v48 = [v46 isEqual:v47];
    }

    previousQueueItemID2 = [v42 previousQueueItemID];

    if (v48)
    {
      didReachEnd = 0;
      v241 = 0;
    }

    else
    {
      jingleTimedMetadata = [v42 jingleTimedMetadata];
      v241 = jingleTimedMetadata != 0;

      didReachEnd = 1;
    }

    queueItemID = previousQueueItemID2;
  }

  else
  {
    v241 = 0;
  }

  playbackEngine = [(MPCQueueController *)self playbackEngine];
  v51 = v31 | didReachEnd;
  v52 = 0x1E696A000uLL;
  v237 = modelPlayEvent2;
  v242 = v42;
  v234 = modelPlayEvent;
  if (v51)
  {
    v223 = didReachEnd;
    v53 = MEMORY[0x1E696AD98];
    v54 = itemCopy;
    v55 = itemCopy;
    [v55 time];
    v57 = v56;
    v58 = v55;
    [v58 durationIfAvailable];
    if (v59 >= v57)
    {
      v60 = v57;
    }

    else
    {
      v60 = v59;
    }

    if (v60 < 0.0)
    {
      v60 = 0.0;
    }

    v61 = v60;

    v62 = [v53 numberWithDouble:v61];
    eventStream = [playbackEngine eventStream];
    if ([v58 isPlaceholder])
    {
      v64 = @"item-placeholder-end";
    }

    else
    {
      v64 = @"item-end";
    }

    v257[0] = @"queue-section-id";
    queueSectionID3 = [v58 queueSectionID];
    v258[0] = queueSectionID3;
    v258[1] = queueItemID;
    v257[1] = @"queue-item-id";
    v257[2] = @"item-end-position";
    v66 = v62;
    if (v241)
    {
      lastMetadataChangeTime = [currentItemCopy lastMetadataChangeTime];
      modelPlayEvent = lastMetadataChangeTime;
      if (lastMetadataChangeTime)
      {
        v66 = lastMetadataChangeTime;
      }

      else
      {
        v66 = v62;
      }
    }

    v258[2] = v66;
    v257[3] = @"item-did-play-to-end";
    v68 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v58, "didReachEnd")}];
    v258[3] = v68;
    v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v258 forKeys:v257 count:4];
    [eventStream emitEventType:v64 payload:v69];

    if (v241)
    {
    }

    itemCopy = v54;
    modelPlayEvent = v234;
    modelPlayEvent2 = v237;
    v42 = v242;
    v52 = 0x1E696A000;
    didReachEnd = v223;
  }

  if ((v226 | v11))
  {
    genericObjectRepresentation3 = [modelPlayEvent genericObjectRepresentation];
    anyObject = [genericObjectRepresentation3 anyObject];
    identifiers5 = [anyObject identifiers];

    if (([identifiers5 isPlaceholder] & 1) == 0)
    {
      v73 = didReachEnd;
      v74 = v52;
      eventStream2 = [playbackEngine eventStream];
      v255[0] = @"queue-section-id";
      queueSectionID4 = [itemCopy queueSectionID];
      v255[1] = @"container-ids";
      v256[0] = queueSectionID4;
      null = identifiers5;
      if (!identifiers5)
      {
        null = [MEMORY[0x1E695DFB0] null];
      }

      v256[1] = null;
      v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v256 forKeys:v255 count:2];
      [eventStream2 emitEventType:@"container-end" payload:v78];

      if (!identifiers5)
      {
      }

      modelPlayEvent2 = v237;
      v52 = v74;
      didReachEnd = v73;
      modelPlayEvent = v234;
    }

    v42 = v242;
  }

  if ((v229 | v11))
  {
    [(MPCQueueController *)self incrementVersionForSegment:@"containerPayload"];
    genericObjectRepresentation4 = [modelPlayEvent2 genericObjectRepresentation];
    anyObject2 = [genericObjectRepresentation4 anyObject];
    identifiers6 = [anyObject2 identifiers];

    if (([identifiers6 isPlaceholder] & 1) == 0)
    {
      eventStream3 = [playbackEngine eventStream];
      queueSectionID5 = [currentItemCopy queueSectionID];
      v230 = itemCopy;
      v82 = modelPlayEvent2;
      genericObjectRepresentation5 = [v82 genericObjectRepresentation];
      anyObject3 = [genericObjectRepresentation5 anyObject];
      identifiers7 = [anyObject3 identifiers];

      [MEMORY[0x1E695DF90] dictionaryWithCapacity:5];
      v224 = didReachEnd;
      v87 = v86 = modelPlayEvent;
      [v87 setObject:queueSectionID5 forKeyedSubscript:@"queue-section-id"];
      modelKind = [identifiers7 modelKind];
      [v87 setObject:modelKind forKeyedSubscript:@"container-kind"];

      [v87 setObject:identifiers7 forKeyedSubscript:@"container-ids"];
      v89 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:5];
      [v87 setObject:v89 forKeyedSubscript:@"container-metadata"];
      v90 = MEMORY[0x1E69706F8];
      v244[0] = MEMORY[0x1E69E9820];
      v244[1] = 3221225472;
      v244[2] = ___ContainerBeginPayload_block_invoke;
      v244[3] = &unk_1E8239310;
      v91 = v89;
      v245 = v91;
      v92 = v82;
      v246 = v92;
      v93 = genericObjectRepresentation5;
      v247 = v93;
      v94 = v87;
      modelPlayEvent = v86;
      didReachEnd = v224;
      v95 = v94;
      v248 = v94;
      [v90 performWithoutEnforcement:v244];
      v96 = v95;

      v52 = 0x1E696A000uLL;
      itemCopy = v230;

      [eventStream3 emitEventType:@"container-begin" payload:v96];
      modelPlayEvent2 = v237;
    }

    v42 = v242;
  }

  if ((v232 | didReachEnd))
  {
    [(MPCQueueController *)self incrementVersionForSegment:@"itemPayload"];
    modelGenericObject = [currentItemCopy modelGenericObject];
    flattenedGenericObject = [modelGenericObject flattenedGenericObject];

    anyObject4 = [flattenedGenericObject anyObject];
    identifiers8 = [anyObject4 identifiers];

    v228 = identifiers8;
    if ([flattenedGenericObject type] == 1)
    {
      song = [flattenedGenericObject song];
      isArtistUploadedContent = [song isArtistUploadedContent];

      v103 = *(v52 + 3480);
      song2 = [flattenedGenericObject song];
      v105 = [v103 numberWithInteger:{objc_msgSend(song2, "discNumber")}];

      v106 = *(v52 + 3480);
      song3 = [flattenedGenericObject song];
      trackNumber = [song3 trackNumber];
      v109 = v106;
      identifiers8 = v228;
      v240 = [v109 numberWithInteger:trackNumber];

      v110 = v105;
    }

    else
    {
      isArtistUploadedContent = 0;
      v110 = 0;
      v240 = 0;
    }

    [currentItemCopy durationIfAvailable];
    v112 = v111;
    playbackInfo = [currentItemCopy playbackInfo];
    [currentItemCopy _expectedStartTimeWithPlaybackInfo:playbackInfo];
    v115 = v114;
    v210 = playbackInfo;
    [currentItemCopy _expectedStopTimeWithPlaybackInfo:playbackInfo];
    v117 = v116;
    eventStream4 = [playbackEngine eventStream];
    isPlaceholder = [currentItemCopy isPlaceholder];
    v119 = @"item-begin";
    if (isPlaceholder)
    {
      v119 = @"item-placeholder-begin";
    }

    v197 = v119;
    v253[0] = @"queue-section-id";
    queueSectionID6 = [currentItemCopy queueSectionID];
    v254[0] = queueSectionID6;
    v253[1] = @"queue-item-id";
    queueItemID3 = [currentItemCopy queueItemID];
    v254[1] = queueItemID3;
    v253[2] = @"item-kind";
    modelKind2 = [identifiers8 modelKind];
    v207 = modelKind2;
    if (!modelKind2)
    {
      modelKind2 = [MEMORY[0x1E695DFB0] null];
    }

    v189 = modelKind2;
    v254[2] = modelKind2;
    v253[3] = @"item-ids";
    null2 = identifiers8;
    if (!identifiers8)
    {
      null2 = [MEMORY[0x1E695DFB0] null];
    }

    v188 = null2;
    v254[3] = null2;
    v253[4] = @"item-metadata";
    v251[0] = @"item-duration";
    v206 = [*(v52 + 3480) numberWithDouble:v112];
    v252[0] = v206;
    v251[1] = @"item-title";
    mainTitle = [currentItemCopy mainTitle];
    v205 = mainTitle;
    if (!mainTitle)
    {
      mainTitle = [MEMORY[0x1E695DFB0] null];
    }

    v187 = mainTitle;
    v252[1] = mainTitle;
    v251[2] = @"item-has-video";
    v204 = [*(v52 + 3480) numberWithInt:{objc_msgSend(currentItemCopy, "type") == 2}];
    v252[2] = v204;
    v251[3] = @"item-initial-position";
    lastMetadataChangeTime2 = [currentItemCopy lastMetadataChangeTime];
    v203 = lastMetadataChangeTime2;
    if (lastMetadataChangeTime2)
    {
      v202 = 0;
    }

    else
    {
      lastMetadataChangeTime2 = [currentItemCopy initialPlaybackStartTime];
      if (lastMetadataChangeTime2)
      {
        v202 = 0;
        v168 = lastMetadataChangeTime2;
      }

      else
      {
        lastMetadataChangeTime2 = [MEMORY[0x1E695DFB0] null];
        v168 = 0;
        v202 = 1;
      }
    }

    v191 = lastMetadataChangeTime2;
    v252[3] = lastMetadataChangeTime2;
    v251[4] = @"item-start-boundary";
    v201 = [*(v52 + 3480) numberWithDouble:{v115, v168}];
    v252[4] = v201;
    v251[5] = @"item-end-boundary";
    v200 = [*(v52 + 3480) numberWithDouble:v117];
    v252[5] = v200;
    v251[6] = @"item-artist-uploaded";
    v199 = [*(v52 + 3480) numberWithBool:isArtistUploadedContent];
    v252[6] = v199;
    v251[7] = @"item-is-start-item";
    v198 = [*(v52 + 3480) numberWithBool:{objc_msgSend(currentItemCopy, "isStartItem")}];
    v252[7] = v198;
    v251[8] = @"item-is-placeholder";
    isPlaceholder2 = [currentItemCopy isPlaceholder];
    if (isPlaceholder2)
    {
      null3 = MEMORY[0x1E695E118];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
    }

    v190 = null3;
    v252[8] = null3;
    v251[9] = @"requires-mpaf";
    v195 = [*(v52 + 3480) numberWithBool:{objc_msgSend(v42, "shouldReportPlayEvents")}];
    v252[9] = v195;
    v251[10] = @"uses-bookmarking";
    v194 = [*(v52 + 3480) numberWithBool:{objc_msgSend(currentItemCopy, "usesBookmarking")}];
    v252[10] = v194;
    v251[11] = @"explicit-treatment";
    explicitBadge = [currentItemCopy explicitBadge];
    v126 = explicitBadge;
    if (!explicitBadge)
    {
      explicitBadge = [MEMORY[0x1E695DFB0] null];
    }

    v186 = explicitBadge;
    v252[11] = explicitBadge;
    v251[12] = @"disc-number";
    null4 = v110;
    if (!v110)
    {
      null4 = [MEMORY[0x1E695DFB0] null];
    }

    v185 = null4;
    v252[12] = null4;
    v251[13] = @"track-number";
    null5 = v240;
    if (!v240)
    {
      null5 = [MEMORY[0x1E695DFB0] null];
    }

    v184 = null5;
    v252[13] = null5;
    v251[14] = @"podcast-store-id";
    podcastStoreID = [currentItemCopy podcastStoreID];
    v225 = podcastStoreID;
    if (!podcastStoreID)
    {
      podcastStoreID = [MEMORY[0x1E695DFB0] null];
    }

    v183 = podcastStoreID;
    v252[14] = podcastStoreID;
    v251[15] = @"podcast-feed-url";
    podcastFeedURL = [currentItemCopy podcastFeedURL];
    v222 = podcastFeedURL;
    if (!podcastFeedURL)
    {
      podcastFeedURL = [MEMORY[0x1E695DFB0] null];
    }

    v182 = podcastFeedURL;
    v252[15] = podcastFeedURL;
    v251[16] = @"podcast-asset-url";
    podcastAssetURL = [currentItemCopy podcastAssetURL];
    v220 = podcastAssetURL;
    if (!podcastAssetURL)
    {
      podcastAssetURL = [MEMORY[0x1E695DFB0] null];
    }

    v181 = podcastAssetURL;
    v252[16] = podcastAssetURL;
    v251[17] = @"podcast-item-type";
    podcastItemType = [currentItemCopy podcastItemType];
    v219 = podcastItemType;
    if (!podcastItemType)
    {
      podcastItemType = [MEMORY[0x1E695DFB0] null];
    }

    v180 = podcastItemType;
    v252[17] = podcastItemType;
    v251[18] = @"podcast-media-type";
    podcastMediaType = [currentItemCopy podcastMediaType];
    v218 = podcastMediaType;
    if (!podcastMediaType)
    {
      podcastMediaType = [MEMORY[0x1E695DFB0] null];
    }

    v179 = podcastMediaType;
    v252[18] = podcastMediaType;
    v251[19] = @"podcast-price-type";
    podcastPriceType = [currentItemCopy podcastPriceType];
    v217 = podcastPriceType;
    if (!podcastPriceType)
    {
      podcastPriceType = [MEMORY[0x1E695DFB0] null];
    }

    v178 = podcastPriceType;
    v252[19] = podcastPriceType;
    v251[20] = @"podcast-content-guid";
    podcastContentGUID = [currentItemCopy podcastContentGUID];
    v216 = podcastContentGUID;
    if (!podcastContentGUID)
    {
      podcastContentGUID = [MEMORY[0x1E695DFB0] null];
    }

    v177 = podcastContentGUID;
    v252[20] = podcastContentGUID;
    v251[21] = @"podcast-subscription-state";
    podcastSubscriptionState = [currentItemCopy podcastSubscriptionState];
    v215 = podcastSubscriptionState;
    if (!podcastSubscriptionState)
    {
      podcastSubscriptionState = [MEMORY[0x1E695DFB0] null];
    }

    v176 = podcastSubscriptionState;
    v252[21] = podcastSubscriptionState;
    v251[22] = @"podcast-news-subscription-information";
    newsSubscriptionInformation = [currentItemCopy newsSubscriptionInformation];
    v214 = newsSubscriptionInformation;
    if (!newsSubscriptionInformation)
    {
      newsSubscriptionInformation = [MEMORY[0x1E695DFB0] null];
    }

    v193 = v126;
    v175 = newsSubscriptionInformation;
    v252[22] = newsSubscriptionInformation;
    v251[23] = @"podcast-music-subscription-information";
    musicSubscriptionInformation = [currentItemCopy musicSubscriptionInformation];
    v213 = musicSubscriptionInformation;
    if (!musicSubscriptionInformation)
    {
      musicSubscriptionInformation = [MEMORY[0x1E695DFB0] null];
    }

    v174 = musicSubscriptionInformation;
    v252[23] = musicSubscriptionInformation;
    v251[24] = @"podcast-subscribable";
    null6 = [*(v52 + 3480) numberWithBool:{objc_msgSend(currentItemCopy, "podcastIsSubscribable")}];
    v192 = null6;
    if (!null6)
    {
      null6 = [MEMORY[0x1E695DFB0] null];
    }

    v173 = null6;
    v252[24] = null6;
    v251[25] = @"podcast-page-context";
    podcastPageContext = [currentItemCopy podcastPageContext];
    v141 = podcastPageContext;
    if (!podcastPageContext)
    {
      podcastPageContext = [MEMORY[0x1E695DFB0] null];
    }

    v212 = flattenedGenericObject;
    v172 = podcastPageContext;
    v252[25] = podcastPageContext;
    v251[26] = @"podcast-preferred-rate";
    podcastsPreferredPlaybackRate = [currentItemCopy podcastsPreferredPlaybackRate];
    v143 = podcastsPreferredPlaybackRate;
    if (!podcastsPreferredPlaybackRate)
    {
      podcastsPreferredPlaybackRate = [MEMORY[0x1E695DFB0] null];
    }

    v211 = v110;
    v231 = itemCopy;
    v171 = podcastsPreferredPlaybackRate;
    v252[26] = podcastsPreferredPlaybackRate;
    v251[27] = @"podcast-playback-setting-source";
    playbackSettingsSource = [currentItemCopy playbackSettingsSource];
    v145 = playbackSettingsSource;
    if (!playbackSettingsSource)
    {
      playbackSettingsSource = [MEMORY[0x1E695DFB0] null];
    }

    v170 = playbackSettingsSource;
    v252[27] = playbackSettingsSource;
    v146 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v252 forKeys:v251 count:28];
    v254[4] = v146;
    v253[5] = @"item-start-position";
    initialPlaybackStartTime = [currentItemCopy initialPlaybackStartTime];
    null7 = initialPlaybackStartTime;
    if (!initialPlaybackStartTime)
    {
      null7 = [MEMORY[0x1E695DFB0] null];
    }

    v254[5] = null7;
    v253[6] = @"radio-track-info";
    trackInfoData = [v42 trackInfoData];
    null8 = trackInfoData;
    if (!trackInfoData)
    {
      null8 = [MEMORY[0x1E695DFB0] null];
    }

    v254[6] = null8;
    v151 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v254 forKeys:v253 count:7];
    [eventStream4 emitEventType:v197 payload:v151];

    if (!trackInfoData)
    {
    }

    if (!initialPlaybackStartTime)
    {
    }

    modelPlayEvent = v234;
    v42 = v242;
    if (!v145)
    {
    }

    itemCopy = v231;
    if (!v143)
    {
    }

    if (!v141)
    {
    }

    if (!v192)
    {
    }

    modelPlayEvent2 = v237;
    v152 = v213;
    if (!v213)
    {

      v152 = 0;
    }

    v153 = v214;
    if (!v214)
    {

      v153 = 0;
    }

    v154 = v215;
    if (!v215)
    {

      v154 = 0;
    }

    v155 = v216;
    if (!v216)
    {

      v155 = 0;
    }

    v156 = v217;
    if (!v217)
    {

      v156 = 0;
    }

    v157 = v218;
    if (!v218)
    {

      v157 = 0;
    }

    v158 = v219;
    if (!v219)
    {

      v158 = 0;
    }

    v159 = v220;
    if (!v220)
    {

      v159 = 0;
    }

    v160 = v222;
    if (!v222)
    {

      v160 = 0;
    }

    v161 = v225;
    if (!v225)
    {

      v161 = 0;
    }

    if (v240)
    {
      if (v211)
      {
        goto LABEL_170;
      }
    }

    else
    {

      if (v211)
      {
LABEL_170:
        if (v193)
        {
          goto LABEL_171;
        }

LABEL_191:

LABEL_171:
        if ((isPlaceholder2 & 1) == 0)
        {
        }

        if (v202)
        {
        }

        if (!v203)
        {
        }

        if (!v205)
        {
        }

        if (v228)
        {
          if (v207)
          {
LABEL_181:

            goto LABEL_182;
          }
        }

        else
        {

          if (v207)
          {
            goto LABEL_181;
          }
        }

        goto LABEL_181;
      }
    }

    if (v193)
    {
      goto LABEL_171;
    }

    goto LABEL_191;
  }

LABEL_182:
  if (v241)
  {
    eventStream5 = [playbackEngine eventStream];
    v249[0] = @"queue-section-id";
    queueSectionID7 = [currentItemCopy queueSectionID];
    v250[0] = queueSectionID7;
    v249[1] = @"queue-item-id";
    queueItemID4 = [currentItemCopy queueItemID];
    v250[1] = queueItemID4;
    v249[2] = @"item-timed-metadata";
    jingleTimedMetadata2 = [v42 jingleTimedMetadata];
    null9 = jingleTimedMetadata2;
    if (!jingleTimedMetadata2)
    {
      null9 = [MEMORY[0x1E695DFB0] null];
    }

    v250[2] = null9;
    v167 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v250 forKeys:v249 count:3];
    [eventStream5 emitEventType:@"item-timed-metadata-ping" payload:v167];

    if (!jingleTimedMetadata2)
    {
    }

    v42 = v242;
  }
}

- (void)_currentItemDidChangeFromItem:(id)item toItem:(id)toItem
{
  v43 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  toItemCopy = toItem;
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);
  v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    engineID = [WeakRetained engineID];
    sessionID = [(MPCQueueController *)self sessionID];
    contentItemID = [itemCopy contentItemID];
    contentItemID2 = [toItemCopy contentItemID];
    v33 = 138544130;
    v34 = engineID;
    v35 = 2114;
    v36 = sessionID;
    v37 = 2114;
    v38 = contentItemID;
    v39 = 2114;
    v40 = contentItemID2;
    _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] _currentItemDidChangeFromItem:%{public}@ toItem:%{public}@ | emitting events for item change", &v33, 0x2Au);
  }

  [(MPCQueueController *)self _emitEventsForItemChangeFromItem:itemCopy toCurrentItem:toItemCopy];
  v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    engineID2 = [WeakRetained engineID];
    sessionID2 = [(MPCQueueController *)self sessionID];
    contentItemID3 = [itemCopy contentItemID];
    contentItemID4 = [toItemCopy contentItemID];
    v33 = 138544130;
    v34 = engineID2;
    v35 = 2114;
    v36 = sessionID2;
    v37 = 2114;
    v38 = contentItemID3;
    v39 = 2114;
    v40 = contentItemID4;
    _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] _currentItemDidChangeFromItem:%{public}@ toItem:%{public}@ | updating current item", &v33, 0x2Au);
  }

  [(MPAVItem *)self->_currentItem setObserver:0];
  objc_storeStrong(&self->_currentItem, toItem);
  [(MPAVItem *)self->_currentItem setObserver:self];
  if (itemCopy && [itemCopy isPlaceholder] && -[MPCQueueControllerBehaviorImplementation playbackPositionRestorationPolicy](self->_behaviorImpl, "playbackPositionRestorationPolicy") == 1)
  {
    initialPlaybackStartTime = [toItemCopy initialPlaybackStartTime];
    [initialPlaybackStartTime doubleValue];
    self->_lastSavedTime = v20;

    v21 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      engineID3 = [WeakRetained engineID];
      sessionID3 = [(MPCQueueController *)self sessionID];
      contentItemID5 = [itemCopy contentItemID];
      contentItemID6 = [toItemCopy contentItemID];
      lastSavedTime = self->_lastSavedTime;
      v33 = 138544386;
      v34 = engineID3;
      v35 = 2114;
      v36 = sessionID3;
      v37 = 2114;
      v38 = contentItemID5;
      v39 = 2114;
      v40 = contentItemID6;
      v41 = 2048;
      v42 = lastSavedTime;
      _os_log_impl(&dword_1C5C61000, v21, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] _currentItemDidChangeFromItem:%{public}@ toItem:%{public}@ | updating saved time [item changed] lastSavedTime=%f", &v33, 0x34u);
    }
  }

  [(MPCQueueController *)self _updateQueueIndexForItemIfNeeded:self->_currentItem];
  contentItemID7 = [itemCopy contentItemID];
  if ([contentItemID7 hasPrefix:@"⏳"])
  {

LABEL_14:
    contentItemID7 = 0;
LABEL_15:
    v29 = 0;
    goto LABEL_16;
  }

  v28 = [contentItemID7 hasPrefix:@"♻️"];

  if (v28)
  {
    goto LABEL_14;
  }

  if (!contentItemID7)
  {
    goto LABEL_15;
  }

  v29 = [(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl componentsForContentItemID:contentItemID7];
LABEL_16:
  contentItemID8 = [toItemCopy contentItemID];
  if (contentItemID8)
  {
    v31 = [(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl componentsForContentItemID:contentItemID8];
  }

  else
  {
    v31 = 0;
  }

  behaviorFlags = [v29 behaviorFlags];
  if (behaviorFlags != [v31 behaviorFlags])
  {
    -[MPCQueueControllerBehaviorImplementation activeItemFlagsDidChange:](self->_behaviorImpl, "activeItemFlagsDidChange:", [v31 behaviorFlags]);
  }

  [(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl currentItemDidChangeFromContentItemID:contentItemID7 toContentItemID:contentItemID8];
  [(MPCQueueController *)self incrementVersionForSegment:@"metadata"];
}

- (void)_evaluateContextAwareTriggersWithReason:(id)reason
{
  v25 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);
  v7 = self->_targetContentItemID;
  if ([(NSString *)v7 hasPrefix:@"⏳"])
  {
  }

  else
  {
    v8 = [(NSString *)v7 hasPrefix:@"♻️"];

    if (!v8)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __62__MPCQueueController__evaluateContextAwareTriggersWithReason___block_invoke;
      v13[3] = &unk_1E8235DD0;
      v13[4] = self;
      v14 = WeakRetained;
      v15 = reasonCopy;
      v16 = a2;
      [(MPCQueueController *)self _withDynamicBehavior:v13];

      goto LABEL_8;
    }
  }

  v9 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    engineID = [WeakRetained engineID];
    sessionID = [(MPCQueueController *)self sessionID];
    targetContentItemID = self->_targetContentItemID;
    *buf = 138544130;
    v18 = engineID;
    v19 = 2114;
    v20 = sessionID;
    v21 = 2114;
    v22 = reasonCopy;
    v23 = 2114;
    v24 = targetContentItemID;
    _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_DEFAULT, "[ECATS:%{public}@:%{public}@] _evaluateContextAwareTriggersWithReason:%{public}@ | skipping [targetContentItemID is QC-Placeholder] targetContentItemID=%{public}@", buf, 0x2Au);
  }

LABEL_8:
}

void __62__MPCQueueController__evaluateContextAwareTriggersWithReason___block_invoke(uint64_t a1, void *a2)
{
  v72 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 preferredUpcomingItemCount];
  if (v4 >= 1)
  {
    v5 = v4;
    v6 = *(*(a1 + 32) + 32);
    v7 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6 == 1)
    {
      if (!v8)
      {
LABEL_25:

        goto LABEL_26;
      }

      v9 = [*(a1 + 40) engineID];
      v10 = [*(a1 + 32) sessionID];
      v11 = *(a1 + 48);
      *buf = 138544130;
      v63 = v9;
      v64 = 2114;
      v65 = v10;
      v66 = 2114;
      v67 = v11;
      v68 = 2048;
      v69 = v5;
      _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "[ECATS:%{public}@:%{public}@] _evaluateContextAwareTriggersWithReason:'%{public}@' | skipping [already loading] preferredUpcomingItemCount=%ld", buf, 0x2Au);
    }

    else
    {
      if (v8)
      {
        v12 = [*(a1 + 40) engineID];
        v13 = [*(a1 + 32) sessionID];
        v14 = *(a1 + 48);
        *buf = 138544130;
        v63 = v12;
        v64 = 2114;
        v65 = v13;
        v66 = 2114;
        v67 = v14;
        v68 = 2048;
        v69 = v5;
        _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "[ECATS:%{public}@:%{public}@] _evaluateContextAwareTriggersWithReason:'%{public}@' | checking [] preferredUpcomingItemCount=%ld", buf, 0x2Au);
      }

      v7 = [v3 contentItemIDEnumeratorStartingAfterContentItemID:*(*(a1 + 32) + 64) mode:1 options:0];
      v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:v5];
      v10 = 0;
      v15 = 0;
      while (1)
      {
        v16 = v10;
        v10 = [v7 nextObject];

        if (!v10)
        {
          break;
        }

        ++v15;
        [v9 addObject:v10];
        if (v5 == v15)
        {
          v15 = v5;
          break;
        }
      }

      v17 = __OFSUB__(v5, v15);
      v18 = v5 - v15;
      if ((v18 < 0) ^ v17 | (v18 == 0))
      {
        v29 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v33 = [*(a1 + 40) engineID];
          v34 = [*(a1 + 32) sessionID];
          v35 = *(a1 + 48);
          *buf = 138544130;
          v63 = v33;
          v64 = 2114;
          v65 = v34;
          v66 = 2114;
          v67 = v35;
          v68 = 2048;
          v69 = v5;
          _os_log_impl(&dword_1C5C61000, v29, OS_LOG_TYPE_DEFAULT, "[ECATS:%{public}@:%{public}@] _evaluateContextAwareTriggersWithReason:'%{public}@' | satisfied [] preferredUpcomingItemCount=%ld", buf, 0x2Au);
        }
      }

      else
      {
        if (![v9 count] || (v19 = *(*(a1 + 32) + 40), v19 != v9) && !objc_msgSend(v19, "isEqual:", v9))
        {
          v36 = [v9 copy];
          v37 = *(a1 + 32);
          v38 = *(v37 + 40);
          *(v37 + 40) = v36;

          *(*(a1 + 32) + 32) = 1;
          v39 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            v40 = [*(a1 + 40) engineID];
            v41 = [*(a1 + 32) sessionID];
            v42 = *(a1 + 48);
            *buf = 138544130;
            v63 = v40;
            v64 = 2114;
            v65 = v41;
            v66 = 2114;
            v67 = v42;
            v68 = 2048;
            v69 = v18;
            _os_log_impl(&dword_1C5C61000, v39, OS_LOG_TYPE_DEFAULT, "[ECATS:%{public}@:%{public}@] _evaluateContextAwareTriggersWithReason:'%{public}@' | requesting %ld items", buf, 0x2Au);
          }

          v43 = objc_alloc(MEMORY[0x1E69B13F0]);
          v56[0] = MEMORY[0x1E69E9820];
          v56[1] = 3221225472;
          v56[2] = __62__MPCQueueController__evaluateContextAwareTriggersWithReason___block_invoke_451;
          v56[3] = &unk_1E82391E8;
          v44 = *(a1 + 32);
          v58 = *(a1 + 56);
          v56[4] = v44;
          v45 = v3;
          v57 = v45;
          v46 = [v43 initWithDeallocHandler:v56];
          v51[0] = MEMORY[0x1E69E9820];
          v51[1] = 3221225472;
          v51[2] = __62__MPCQueueController__evaluateContextAwareTriggersWithReason___block_invoke_2;
          v51[3] = &unk_1E8235DA8;
          v47 = *(a1 + 40);
          v48 = *(a1 + 32);
          v52 = v47;
          v53 = v48;
          v54 = *(a1 + 48);
          v55 = v46;
          v49 = v46;
          [v45 loadAdditionalUpcomingItems:v18 completion:v51];

          goto LABEL_24;
        }

        v20 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [*(a1 + 40) engineID];
          v22 = [*(a1 + 32) sessionID];
          v50 = *(a1 + 48);
          v23 = [v9 msv_compactDescription];
          *buf = 138544386;
          v63 = v21;
          v64 = 2114;
          v65 = v22;
          v66 = 2114;
          v67 = v50;
          v68 = 2048;
          v69 = v5;
          v70 = 2114;
          v71 = v23;
          v24 = v23;
          _os_log_impl(&dword_1C5C61000, v20, OS_LOG_TYPE_DEFAULT, "[ECATS:%{public}@:%{public}@] _evaluateContextAwareTriggersWithReason:'%{public}@' | skipping [matching ecats stack] preferredUpcomingItemCount=%ld ecatsStack=[%{public}@]", buf, 0x34u);
        }

        v25 = MEMORY[0x1E69B13D8];
        v26 = *MEMORY[0x1E69B1340];
        v27 = *(a1 + 48);
        v59[0] = @"reason";
        v59[1] = @"lastECATSStack";
        v28 = *(*(a1 + 32) + 40);
        v60[0] = v27;
        v60[1] = v28;
        v59[2] = @"preferredUpcomingItemCount";
        v29 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
        v60[2] = v29;
        v59[3] = @"queueController";
        v30 = [*(a1 + 32) _stateDictionaryIncludingQueue:1];
        v60[3] = v30;
        v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:v59 count:4];
        v61 = v31;
        v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v61 count:1];
        [v25 snapshotWithDomain:v26 type:@"Bug" subType:@"Rogue-ECATS" context:@"MatchingECATSStack" triggerThresholdValues:&stru_1F454A698 events:v32 completion:0];
      }
    }

LABEL_24:

    goto LABEL_25;
  }

LABEL_26:
}

void __62__MPCQueueController__evaluateContextAwareTriggersWithReason___block_invoke_451(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:a1[6] object:a1[4] file:@"MPCQueueController.m" lineNumber:1520 description:{@"Behavior did not call completion for loadAdditionalUpcomingItems: %@", a1[5]}];
}

void __62__MPCQueueController__evaluateContextAwareTriggersWithReason___block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 32) engineID];
      v7 = [*(a1 + 40) sessionID];
      v8 = *(a1 + 48);
      v9 = [v3 treeDescription];
      *buf = 138544130;
      v15 = v6;
      v16 = 2114;
      v17 = v7;
      v18 = 2114;
      v19 = v8;
      v20 = 2114;
      v21 = v9;
      _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_ERROR, "[ECATS:%{public}@:%{public}@] _evaluateContextAwareTriggersWithReason:'%{public}@' | finished error=%{public}@", buf, 0x2Au);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [*(a1 + 32) engineID];
    v11 = [*(a1 + 40) sessionID];
    v12 = *(a1 + 48);
    *buf = 138543874;
    v15 = v10;
    v16 = 2114;
    v17 = v11;
    v18 = 2114;
    v19 = v12;
    _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "[ECATS:%{public}@:%{public}@] _evaluateContextAwareTriggersWithReason:'%{public}@' | finished", buf, 0x20u);
  }

  v13 = *(a1 + 56);
  msv_dispatch_on_main_queue();
}

uint64_t __62__MPCQueueController__evaluateContextAwareTriggersWithReason___block_invoke_455(uint64_t a1)
{
  result = [*(a1 + 32) disarm];
  if (result)
  {
    *(*(a1 + 40) + 32) = 0;
    v3 = *(a1 + 40);

    return [v3 _evaluateContextAwareTriggersWithReason:@"Finished loading additional"];
  }

  return result;
}

- (id)_contentItemIDWithOffset:(int64_t)offset fromItemID:(id)d mode:(int64_t)mode didReachEnd:(BOOL *)end
{
  dCopy = d;
  v11 = dCopy;
  if (!dCopy)
  {
    goto LABEL_5;
  }

  if (offset)
  {
    if ([dCopy hasPrefix:@"⏳"] & 1) != 0 || (objc_msgSend(v11, "hasPrefix:", @"♻️"))
    {
LABEL_5:
      v12 = 0;
      goto LABEL_29;
    }

    v13 = [(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl contentItemIDEnumeratorStartingAfterContentItemID:v11 mode:mode options:offset >> 63];
    v12 = 0;
    if (((offset & 0x4000000000000000) != 0) ^ __OFSUB__(offset, -offset) | (offset == -offset))
    {
      offsetCopy = -offset;
    }

    else
    {
      offsetCopy = offset;
    }

    v15 = offsetCopy + 1;
    while (1)
    {
      nextObject = [v13 nextObject];
      if (!nextObject)
      {
        break;
      }

      v17 = nextObject;

      behaviorImpl = self->_behaviorImpl;
      if (offset < 1)
      {
        if (([(MPCQueueControllerBehaviorImplementation *)behaviorImpl canPreviousItemFromContentItemID:v17 reason:0]& 1) == 0)
        {
LABEL_20:
          v12 = v17;

          goto LABEL_28;
        }
      }

      else if (([(MPCQueueControllerBehaviorImplementation *)behaviorImpl canNextItemFromContentItemID:v17 reason:0]& 1) == 0)
      {
        goto LABEL_20;
      }

      --v15;
      v12 = v17;
      if (v15 <= 1)
      {
        v19 = 0;
        v12 = v17;
        goto LABEL_22;
      }
    }

    if (offset < 1)
    {
      v19 = 0;
    }

    else
    {

      v12 = 0;
      v19 = 1;
    }

LABEL_22:
    if (end)
    {
      *end = v19;
    }

    if (v12)
    {
      v19 = 1;
    }

    if (!v19)
    {
      v12 = v11;
    }

LABEL_28:
  }

  else
  {
    v12 = dCopy;
  }

LABEL_29:

  return v12;
}

- (void)_rollbackEdit:(id)edit
{
  editCopy = edit;
  v3 = editCopy;
  msv_dispatch_on_main_queue();
}

void __36__MPCQueueController__rollbackEdit___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) playbackEngine];
  v3 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v2 engineID];
    v5 = [*(a1 + 32) sessionID];
    v6 = *(a1 + 40);
    v20 = 138543874;
    v21 = v4;
    v22 = 2114;
    v23 = v5;
    v24 = 2114;
    v25 = v6;
    _os_log_impl(&dword_1C5C61000, v3, OS_LOG_TYPE_DEFAULT, "[QUCON:%{public}@:%{public}@] rollbackEdit:… | rolling back edit [] edit=%{public}@", &v20, 0x20u);
  }

  v7 = *(*(a1 + 32) + 128);
  v8 = [*(a1 + 40) identifier];
  [v7 removeObjectForKey:v8];

  v9 = *(a1 + 32);
  if (*(v9 + 8))
  {
    if ([*(v9 + 128) count])
    {
      v10 = [*(*(a1 + 32) + 128) objectEnumerator];
      v11 = [v10 msv_map:&__block_literal_global_427];

      v12 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v2 engineID];
        v14 = [*(a1 + 32) sessionID];
        v15 = [*(*(a1 + 32) + 128) count];
        v20 = 138544130;
        v21 = v13;
        v22 = 2114;
        v23 = v14;
        v24 = 2048;
        v25 = v15;
        v26 = 2114;
        v27 = v11;
        _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] performAfterEdits:… | waiting for continuation [%ld edits remain] activeEdits=%{public}@", &v20, 0x2Au);
      }
    }

    else
    {
      v16 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v2 engineID];
        v18 = [*(a1 + 32) sessionID];
        v20 = 138543618;
        v21 = v17;
        v22 = 2114;
        v23 = v18;
        _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] performAfterEdits:… | calling continuation [no edits]", &v20, 0x16u);
      }

      (*(*(*(a1 + 32) + 8) + 16))();
      v19 = *(a1 + 32);
      v11 = *(v19 + 8);
      *(v19 + 8) = 0;
    }
  }
}

- (void)_commitEdit:(id)edit
{
  editCopy = edit;
  v3 = editCopy;
  msv_dispatch_on_main_queue();
}

void __34__MPCQueueController__commitEdit___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) playbackEngine];
  v3 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v2 engineID];
    v5 = [*(a1 + 32) sessionID];
    v6 = *(a1 + 40);
    v22 = 138543874;
    v23 = v4;
    v24 = 2114;
    v25 = v5;
    v26 = 2114;
    v27 = v6;
    _os_log_impl(&dword_1C5C61000, v3, OS_LOG_TYPE_DEFAULT, "[QUCON:%{public}@:%{public}@] commitEdit:… | committing edit [] edit=%{public}@", &v22, 0x20u);
  }

  [*(a1 + 32) _evaluateCurrentItemWithEdit:*(a1 + 40)];
  v7 = *(a1 + 32);
  v8 = [v7 currentItem];
  [v7 _updateQueueIndexForItemIfNeeded:v8];

  [*(a1 + 32) _evaluateContextAwareTriggersWithReason:@"commit edit"];
  v9 = *(*(a1 + 32) + 128);
  v10 = [*(a1 + 40) identifier];
  [v9 removeObjectForKey:v10];

  [*(a1 + 32) incrementVersionForSegment:@"behavior"];
  v11 = *(a1 + 32);
  if (*(v11 + 8))
  {
    if ([*(v11 + 128) count])
    {
      v12 = [*(*(a1 + 32) + 128) objectEnumerator];
      v13 = [v12 msv_map:&__block_literal_global_424];

      v14 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v2 engineID];
        v16 = [*(a1 + 32) sessionID];
        v17 = [*(*(a1 + 32) + 128) count];
        v22 = 138544130;
        v23 = v15;
        v24 = 2114;
        v25 = v16;
        v26 = 2048;
        v27 = v17;
        v28 = 2114;
        v29 = v13;
        _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] performAfterEdits:… | waiting for continuation [%ld edits remain] activeEdits=%{public}@", &v22, 0x2Au);
      }
    }

    else
    {
      v18 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v2 engineID];
        v20 = [*(a1 + 32) sessionID];
        v22 = 138543618;
        v23 = v19;
        v24 = 2114;
        v25 = v20;
        _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] performAfterEdits:… | calling continuation [no edits]", &v22, 0x16u);
      }

      (*(*(*(a1 + 32) + 8) + 16))();
      v21 = *(a1 + 32);
      v13 = *(v21 + 8);
      *(v21 + 8) = 0;
    }
  }
}

- (void)_evaluateCurrentItemWithEdit:(id)edit
{
  v86 = *MEMORY[0x1E69E9840];
  editCopy = edit;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);
  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    engineID = [WeakRetained engineID];
    sessionID = [(MPCQueueController *)self sessionID];
    identifier = [editCopy identifier];
    label = [editCopy label];
    *buf = 138544130;
    v77 = engineID;
    v78 = 2114;
    v79 = sessionID;
    v80 = 2114;
    v81 = identifier;
    v82 = 2114;
    v83 = label;
    _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] _evaluateCurrentItemWithEdit:%{public}@ | committed %{public}@", buf, 0x2Au);
  }

  delegate = [(MPCQueueController *)self delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    suggestedStartingContentItemID = editCopy;
    targetContentItemID = [suggestedStartingContentItemID targetContentItemID];
    if (targetContentItemID)
    {
      v15 = targetContentItemID;
      v16 = [(NSString *)self->_targetContentItemID isEqualToString:targetContentItemID];
      v17 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      if (!v16)
      {
        if (v18)
        {
          engineID2 = [WeakRetained engineID];
          sessionID2 = [(MPCQueueController *)self sessionID];
          identifier2 = [suggestedStartingContentItemID identifier];
          *buf = 138544130;
          v77 = engineID2;
          v78 = 2114;
          v79 = sessionID2;
          v80 = 2114;
          v81 = identifier2;
          v82 = 2114;
          v83 = v15;
          _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] _evaluateCurrentItemWithEdit:%{public}@ | updating target [external sync] targetContentItemID=%{public}@", buf, 0x2Au);
        }

        [(MPCQueueController *)self _setTargetContentItemID:v15 source:4];
        goto LABEL_32;
      }

      if (!v18)
      {
LABEL_9:

LABEL_32:
        [delegate queueControllerDidChangeContents:self];
LABEL_66:

        goto LABEL_67;
      }

      engineID3 = [WeakRetained engineID];
      sessionID3 = [(MPCQueueController *)self sessionID];
      identifier3 = [suggestedStartingContentItemID identifier];
      *buf = 138544130;
      v77 = engineID3;
      v78 = 2114;
      v79 = sessionID3;
      v80 = 2114;
      v81 = identifier3;
      v82 = 2114;
      v83 = v15;
      v22 = "[PSYNC:%{public}@:%{public}@] _evaluateCurrentItemWithEdit:%{public}@ | no change detected [external sync, current target valid] targetContentItemID=%{public}@";
LABEL_8:
      _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_DEFAULT, v22, buf, 0x2Au);

      goto LABEL_9;
    }
  }

  suggestedStartingContentItemID = [editCopy suggestedStartingContentItemID];
  if (([editCopy allowsChangingCurrentItem] & 1) == 0)
  {
    targetContentItemID = self->_targetContentItemID;
    if (targetContentItemID)
    {
LABEL_22:
      v15 = targetContentItemID;
      if ([(NSString *)v15 hasPrefix:@"⏳"])
      {
      }

      else
      {
        v35 = [(NSString *)v15 hasPrefix:@"♻️"];

        if (!v35)
        {
          if (v15)
          {
            if ([(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl itemExistsForContentItemID:v15])
            {
              v17 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
              if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_9;
              }

              engineID3 = [WeakRetained engineID];
              sessionID3 = [(MPCQueueController *)self sessionID];
              identifier3 = [editCopy identifier];
              *buf = 138544130;
              v77 = engineID3;
              v78 = 2114;
              v79 = sessionID3;
              v80 = 2114;
              v81 = identifier3;
              v82 = 2114;
              v83 = v15;
              v22 = "[PSYNC:%{public}@:%{public}@] _evaluateCurrentItemWithEdit:%{public}@ | no change detected [current target valid] targetContentItemID=%{public}@";
              goto LABEL_8;
            }

            suggestedContentItemIDsForDeletedContentItemIDs = [editCopy suggestedContentItemIDsForDeletedContentItemIDs];
            v49 = [suggestedContentItemIDsForDeletedContentItemIDs objectForKeyedSubscript:v15];

            if (v49)
            {
              v50 = _MPCLogCategoryQueueController();
              if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
              {
                engineID4 = [WeakRetained engineID];
                sessionID4 = [(MPCQueueController *)self sessionID];
                identifier4 = [editCopy identifier];
                *buf = 138544386;
                v77 = engineID4;
                v78 = 2114;
                v79 = sessionID4;
                v80 = 2114;
                v81 = identifier4;
                v53 = identifier4;
                v82 = 2114;
                v83 = v15;
                v84 = 2114;
                v85 = suggestedStartingContentItemID;
                _os_log_impl(&dword_1C5C61000, v50, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] _evaluateCurrentItemWithEdit:%{public}@ | updating target [prong 1: current target invalid, edit suggested replacement] invalidID=%{public}@ targetContentItemID=%{public}@", buf, 0x34u);
              }

              [(MPCQueueController *)self _setTargetContentItemID:v49 source:5];
              goto LABEL_65;
            }
          }

LABEL_53:
          v49 = [(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl contentItemIDEnumeratorStartingAfterContentItemID:v15 mode:2 options:0];
          nextObject = [v49 nextObject];
          if (nextObject)
          {
            if ([(NSString *)v15 isEqualToString:nextObject])
            {
              currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
              [currentHandler handleFailureInMethod:a2 object:self file:@"MPCQueueController.m" lineNumber:1339 description:{@"Bug in %@: itemExistsForContentItemID returned NO while contentItemIDEnumeratorStartingAfterContentItemID returned the same contentItemID: %@", objc_opt_class(), v15}];
            }

            v55 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              [WeakRetained engineID];
              v56 = v69 = delegate;
              [(MPCQueueController *)self sessionID];
              v57 = v73 = v49;
              identifier5 = [editCopy identifier];
              *buf = 138544386;
              v77 = v56;
              v78 = 2114;
              v79 = v57;
              v80 = 2114;
              v81 = identifier5;
              v82 = 2114;
              v83 = v15;
              v84 = 2114;
              v85 = nextObject;
              _os_log_impl(&dword_1C5C61000, v55, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] _evaluateCurrentItemWithEdit:%{public}@ | updating target [prong 2: current target invalid, enumerated from invalid item] invalidID=%{public}@ targetContentItemID=%{public}@", buf, 0x34u);

              v49 = v73;
              delegate = v69;
            }

            selfCopy2 = self;
            v60 = nextObject;
          }

          else
          {
            v61 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
            v62 = os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT);
            if (!suggestedStartingContentItemID)
            {
              if (v62)
              {
                engineID5 = [WeakRetained engineID];
                sessionID5 = [(MPCQueueController *)self sessionID];
                [editCopy identifier];
                v67 = v75 = v49;
                *buf = 138544130;
                v77 = engineID5;
                v78 = 2114;
                v79 = sessionID5;
                v80 = 2114;
                v81 = v67;
                v82 = 2114;
                v83 = v15;
                _os_log_impl(&dword_1C5C61000, v61, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] _evaluateCurrentItemWithEdit:%{public}@ | queue boundary [prong 4: current target invalid, no replacement found] invalidID=%{public}@", buf, 0x2Au);

                v49 = v75;
              }

              [(MPCQueueController *)self _setTargetContentItemID:0 source:0];
              [delegate queueControllerDidReachUnexpectedEndOfQueue:self];
              goto LABEL_64;
            }

            if (v62)
            {
              engineID6 = [WeakRetained engineID];
              [(MPCQueueController *)self sessionID];
              v63 = v74 = v49;
              identifier6 = [editCopy identifier];
              *buf = 138544386;
              v77 = engineID6;
              v78 = 2114;
              v79 = v63;
              v80 = 2114;
              v81 = identifier6;
              v65 = identifier6;
              v82 = 2114;
              v83 = v15;
              v84 = 2114;
              v85 = suggestedStartingContentItemID;
              _os_log_impl(&dword_1C5C61000, v61, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] _evaluateCurrentItemWithEdit:%{public}@ | updating target [prong 3: current target invalid, edit suggested start item] invalidID=%{public}@ targetContentItemID=%{public}@", buf, 0x34u);

              v49 = v74;
            }

            selfCopy2 = self;
            v60 = suggestedStartingContentItemID;
          }

          [(MPCQueueController *)selfCopy2 _setTargetContentItemID:v60 source:5];
LABEL_64:

LABEL_65:
          goto LABEL_66;
        }
      }

      if (self->_loadingContentItemID)
      {
        v36 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          engineID7 = [WeakRetained engineID];
          sessionID6 = [(MPCQueueController *)self sessionID];
          identifier7 = [editCopy identifier];
          *buf = 138544130;
          v77 = engineID7;
          v78 = 2114;
          v79 = sessionID6;
          v80 = 2114;
          v81 = identifier7;
          v82 = 2114;
          v83 = v15;
          _os_log_impl(&dword_1C5C61000, v36, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] _evaluateCurrentItemWithEdit:%{public}@ | no change detected [targetContentItemID is QC-Placeholder] targetContentItemID=%{public}@", buf, 0x2Au);
        }

        goto LABEL_66;
      }

      v15 = 0;
      goto LABEL_53;
    }
  }

  if (!suggestedStartingContentItemID)
  {
    v31 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      engineID8 = [WeakRetained engineID];
      sessionID7 = [(MPCQueueController *)self sessionID];
      identifier8 = [editCopy identifier];
      *buf = 138543874;
      v77 = engineID8;
      v78 = 2114;
      v79 = sessionID7;
      v80 = 2114;
      v81 = identifier8;
      _os_log_impl(&dword_1C5C61000, v31, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] _evaluateCurrentItemWithEdit:%{public}@ | no suggested start item [edit allows item change]", buf, 0x20u);
    }

    [delegate queueControllerDidChangeContents:self];
    targetContentItemID = self->_targetContentItemID;
    goto LABEL_22;
  }

  if ([(NSString *)self->_targetContentItemID isEqualToString:suggestedStartingContentItemID]&& !self->_handlingQueueBoundary)
  {
    v44 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      engineID9 = [WeakRetained engineID];
      sessionID8 = [(MPCQueueController *)self sessionID];
      identifier9 = [editCopy identifier];
      *buf = 138544130;
      v77 = engineID9;
      v78 = 2114;
      v79 = sessionID8;
      v80 = 2114;
      v81 = identifier9;
      v82 = 2114;
      v83 = suggestedStartingContentItemID;
      _os_log_impl(&dword_1C5C61000, v44, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] _evaluateCurrentItemWithEdit:%{public}@ | no change detected [edit allows item change] targetContentItemID=%{public}@", buf, 0x2Au);
    }

    goto LABEL_48;
  }

  v24 = [(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl itemExistsForContentItemID:suggestedStartingContentItemID];
  v25 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
  v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
  if (v24)
  {
    if (v26)
    {
      engineID10 = [WeakRetained engineID];
      sessionID9 = [(MPCQueueController *)self sessionID];
      identifier10 = [editCopy identifier];
      *buf = 138544130;
      v77 = engineID10;
      v78 = 2114;
      v79 = sessionID9;
      v80 = 2114;
      v81 = identifier10;
      v82 = 2114;
      v83 = suggestedStartingContentItemID;
      v30 = "[PSYNC:%{public}@:%{public}@] _evaluateCurrentItemWithEdit:%{public}@ | updating target [edit allows item change] targetContentItemID=%{public}@";
LABEL_35:
      _os_log_impl(&dword_1C5C61000, v25, OS_LOG_TYPE_DEFAULT, v30, buf, 0x2Au);
    }
  }

  else if (v26)
  {
    engineID10 = [WeakRetained engineID];
    sessionID9 = [(MPCQueueController *)self sessionID];
    identifier10 = [editCopy identifier];
    *buf = 138544130;
    v77 = engineID10;
    v78 = 2114;
    v79 = sessionID9;
    v80 = 2114;
    v81 = identifier10;
    v82 = 2114;
    v83 = suggestedStartingContentItemID;
    v30 = "[PSYNC:%{public}@:%{public}@] _evaluateCurrentItemWithEdit:%{public}@ | updating to UNKNOWN target [edit allows item change - item does NOT exist] targetContentItemID=%{public}@";
    goto LABEL_35;
  }

  objc_storeStrong(&self->_preferredFirstContentItemID, suggestedStartingContentItemID);
  if (self->_handlingQueueBoundary)
  {
    v43 = 6;
  }

  else
  {
    v43 = 1;
  }

  [(MPCQueueController *)self _setTargetContentItemID:suggestedStartingContentItemID source:v43];
LABEL_48:
  [delegate queueControllerDidChangeContents:self];
LABEL_67:
}

- (void)didSignificantlyChangeItem:(id)item
{
  currentItem = self->_currentItem;
  if (currentItem == item)
  {
    [(MPCQueueController *)self _emitEventsForItemChangeFromItem:currentItem toCurrentItem:self->_currentItem];
  }
}

- (int64_t)displayIndexForContentItemID:(id)d
{
  dCopy = d;
  v5 = self->_targetContentItemID;
  music = [(MPCQueueController *)self music];

  if (music)
  {
    music2 = [(MPCQueueController *)self music];
    v8 = [music2 contentItemIDWithoutRepeatIteration:dCopy];

    music3 = [(MPCQueueController *)self music];
    v10 = [music3 contentItemIDWithoutRepeatIteration:v5];

    v5 = v10;
  }

  else
  {
    v8 = dCopy;
  }

  if (v8 == v5 || [(NSString *)v8 isEqual:v5])
  {
    v11 = [(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl contentItemIDEnumeratorStartingAfterContentItemID:0 mode:1 options:0];
    nextObject = [v11 nextObject];
    if (nextObject)
    {
      nextObject2 = nextObject;
      v14 = 0;
      while (1)
      {
        v15 = nextObject2;
        v16 = v15;
        if (v8 == v15)
        {
          break;
        }

        v17 = [(NSString *)v8 isEqual:v15];

        if (v17)
        {
          goto LABEL_15;
        }

        ++v14;
        nextObject2 = [v11 nextObject];

        if (!nextObject2)
        {
          v16 = 0;
          goto LABEL_15;
        }
      }

LABEL_15:
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (int64_t)displayItemCount
{
  upNextBehavior = [(MPCQueueController *)self upNextBehavior];
  displayItemCount = [upNextBehavior displayItemCount];

  return displayItemCount;
}

- (void)playerItemDidBecomeCurrent:(id)current
{
  v16 = *MEMORY[0x1E69E9840];
  currentCopy = current;
  contentItemID = [currentCopy contentItemID];
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);
  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    engineID = [WeakRetained engineID];
    sessionID = [(MPCQueueController *)self sessionID];
    v10 = 138543874;
    v11 = engineID;
    v12 = 2114;
    v13 = sessionID;
    v14 = 2114;
    v15 = contentItemID;
    _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] playerItemDidBecomeCurrent:%{public}@", &v10, 0x20u);
  }

  if ([(MPCQueueController *)self _playerItemDidBecomeActiveWithContentItemID:contentItemID])
  {
    [(MPCQueueController *)self _currentItemDidChangeFromItem:self->_currentItem toItem:currentCopy];
  }
}

- (BOOL)_playerItemDidBecomeActiveWithContentItemID:(id)d
{
  v42 = *MEMORY[0x1E69E9840];
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);
  targetContentItemID = [(MPCQueueController *)self targetContentItemID];
  if (targetContentItemID == dCopy || [(NSString *)dCopy isEqual:targetContentItemID])
  {
    v8 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      engineID = [WeakRetained engineID];
      sessionID = [(MPCQueueController *)self sessionID];
      *buf = 138544130;
      v33 = engineID;
      v34 = 2114;
      v35 = sessionID;
      v36 = 2114;
      v37 = dCopy;
      v38 = 2114;
      v39 = targetContentItemID;
      _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] _playerItemDidBecomeActiveWithContentItemID:%{public}@ | achieved sync [] targetItemID=%{public}@", buf, 0x2Au);
    }

    self->_syncResetAttempts = 0;
    v11 = 1;
  }

  else
  {
    delegate = [(MPCQueueController *)self delegate];
    if (self->_loadingContentItemID)
    {
      v13 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        engineID2 = [WeakRetained engineID];
        sessionID2 = [(MPCQueueController *)self sessionID];
        loadingContentItemID = self->_loadingContentItemID;
        syncResetAttempts = self->_syncResetAttempts;
        *buf = 138544386;
        v33 = engineID2;
        v34 = 2114;
        v35 = sessionID2;
        v36 = 2114;
        v37 = dCopy;
        v38 = 2114;
        v39 = loadingContentItemID;
        v40 = 2048;
        v41 = syncResetAttempts;
        _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] _playerItemDidBecomeActiveWithContentItemID:%{public}@ | resetting player [unexpected transition, loading] expectedNextTargetID=%{public}@ attempts=%ld", buf, 0x34u);
      }

      v18 = self->_syncResetAttempts;
      self->_syncResetAttempts = v18 + 1;
      if (v18 >= 4)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"MPCQueueController.m" lineNumber:1151 description:{@"MF did not synchronize within 5 resets: %@ != %@", dCopy, self->_loadingContentItemID}];
      }

      [delegate queueController:self didDetectMismatchForActiveContentItemID:dCopy targetContentItemID:self->_loadingContentItemID];
      v11 = 0;
    }

    else
    {
      v31 = 0;
      v19 = [(MPCQueueController *)self contentItemIDWithCurrentItemOffset:dCopy != 0 mode:3 didReachEnd:&v31];
      if (v19 == dCopy || [(NSString *)dCopy isEqual:v19])
      {
        v20 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          engineID3 = [WeakRetained engineID];
          sessionID3 = [(MPCQueueController *)self sessionID];
          *buf = 138543874;
          v33 = engineID3;
          v34 = 2114;
          v35 = sessionID3;
          v36 = 2114;
          v37 = dCopy;
          _os_log_impl(&dword_1C5C61000, v20, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] _playerItemDidBecomeActiveWithContentItemID:%{public}@ | updating target [expected natural transition]", buf, 0x20u);
        }

        [(MPCQueueController *)self _setTargetContentItemID:dCopy source:3];
        self->_syncResetAttempts = 0;
        v11 = 1;
      }

      else
      {
        v23 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          engineID4 = [WeakRetained engineID];
          sessionID4 = [(MPCQueueController *)self sessionID];
          v26 = self->_syncResetAttempts;
          *buf = 138544386;
          v33 = engineID4;
          v34 = 2114;
          v35 = sessionID4;
          v36 = 2114;
          v37 = dCopy;
          v38 = 2114;
          v39 = v19;
          v40 = 2048;
          v41 = v26;
          _os_log_impl(&dword_1C5C61000, v23, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] _playerItemDidBecomeActiveWithContentItemID:%{public}@ | resetting player [unexpected transition] expectedNextTargetID=%{public}@ attempts=%ld", buf, 0x34u);
        }

        v27 = self->_syncResetAttempts;
        self->_syncResetAttempts = v27 + 1;
        if (v27 >= 4)
        {
          currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler2 handleFailureInMethod:a2 object:self file:@"MPCQueueController.m" lineNumber:1167 description:{@"MF did not synchronize within 5 resets: %@ != %@", dCopy, v19}];
        }

        [delegate queueController:self didDetectMismatchForActiveContentItemID:dCopy targetContentItemID:v19];
        v11 = v31;
      }
    }
  }

  return v11 & 1;
}

- (void)engine:(id)engine didChangeItemElapsedTime:(double)time rate:(float)rate
{
  v29 = *MEMORY[0x1E69E9840];
  engineCopy = engine;
  standardUserDefaults = [MEMORY[0x1E69708A8] standardUserDefaults];
  disablePeriodicStateRestore = [standardUserDefaults disablePeriodicStateRestore];

  if ((disablePeriodicStateRestore & 1) == 0 && [(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl playbackPositionRestorationPolicy]== 1)
  {
    currentItem = self->_currentItem;
    if (currentItem)
    {
      if (([(MPAVItem *)currentItem isPlaceholder]& 1) == 0 && ([(MPAVItem *)self->_currentItem isAlwaysLive]& 1) == 0)
      {
        mediaRemotePublisher = [engineCopy mediaRemotePublisher];
        infoCenter = [mediaRemotePublisher infoCenter];
        if ([infoCenter playbackState] == 1)
        {
          lastSavedTime = self->_lastSavedTime;

          if (lastSavedTime != time)
          {
            self->_lastSavedTime = time;
            v15 = _MPCLogCategoryQueueController();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              engineID = [engineCopy engineID];
              sessionID = [(MPCQueueController *)self sessionID];
              contentItemID = [(MPAVItem *)self->_currentItem contentItemID];
              v19 = 138544386;
              v20 = engineID;
              v21 = 2114;
              v22 = sessionID;
              v23 = 2048;
              timeCopy = time;
              v25 = 2048;
              rateCopy = rate;
              v27 = 2114;
              v28 = contentItemID;
              _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_DEFAULT, "[SNM:%{public}@:%{public}@] engine:didChangeItemElapsedTime:%f rate:%f | updating saved time [engine time changed] activeItemID=%{public}@", &v19, 0x34u);
            }

            [(MPCQueueController *)self incrementVersionForSegment:@"metadata"];
          }
        }

        else
        {
        }
      }
    }
  }
}

- (void)engine:(id)engine didChangeToState:(unint64_t)state
{
  v23 = *MEMORY[0x1E69E9840];
  engineCopy = engine;
  if ([(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl playbackPositionRestorationPolicy]== 1 && (state == 4 || state == 2))
  {
    currentItem = self->_currentItem;
    if (currentItem)
    {
      if (([(MPAVItem *)currentItem isPlaceholder]& 1) == 0)
      {
        v8 = 0.0;
        if (([(MPAVItem *)self->_currentItem isAlwaysLive]& 1) == 0)
        {
          player = [engineCopy player];
          [player currentTime];
          v8 = v10;
        }

        if (self->_lastSavedTime != v8)
        {
          self->_lastSavedTime = v8;
          v11 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = off_1E8235FD8[state - 2];
            contentItemID = [(MPAVItem *)self->_currentItem contentItemID];
            lastSavedTime = self->_lastSavedTime;
            v15 = 134218754;
            selfCopy = self;
            v17 = 2114;
            v18 = v12;
            v19 = 2114;
            v20 = contentItemID;
            v21 = 2048;
            v22 = lastSavedTime;
            _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "queueController %p: engine:didChangeToState: updating saved time [changed to state %{public}@] currentItem=%{public}@ lastSavedTime=%f", &v15, 0x2Au);
          }

          [(MPCQueueController *)self incrementVersionForSegment:@"metadata"];
        }
      }
    }
  }
}

- (void)engine:(id)engine didReachEndOfQueueWithReason:(id)reason
{
  v20 = *MEMORY[0x1E69E9840];
  engineCopy = engine;
  reasonCopy = reason;
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    engineID = [engineCopy engineID];
    sessionID = [(MPCQueueController *)self sessionID];
    *buf = 138543874;
    v15 = engineID;
    v16 = 2114;
    v17 = sessionID;
    v18 = 2114;
    v19 = reasonCopy;
    _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] engine:didReachEndOfQueueWithReason:%{public}@", buf, 0x20u);
  }

  self->_handlingQueueBoundary = 1;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__MPCQueueController_engine_didReachEndOfQueueWithReason___block_invoke;
  v12[3] = &unk_1E82392C0;
  v12[4] = self;
  v13 = reasonCopy;
  v11 = reasonCopy;
  [(MPCQueueController *)self performAllowingEditsToChangeCurrentItem:v12];
  self->_handlingQueueBoundary = 0;
}

void __58__MPCQueueController_engine_didReachEndOfQueueWithReason___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __58__MPCQueueController_engine_didReachEndOfQueueWithReason___block_invoke_2;
  v2[3] = &unk_1E8235D80;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _withUpNextBehavior:v2];
}

- (id)beginExternalSyncEditWithReason:(id)reason
{
  v26[2] = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  if (!reasonCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCQueueController.m" lineNumber:1073 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
  }

  v6 = [MPCQueueControllerExternalSyncEdit alloc];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v26[0] = v8;
  v26[1] = reasonCopy;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v10 = [v9 componentsJoinedByString:@"-"];
  v11 = [(MPCQueueControllerEdit *)v6 initWithQueueController:self label:v10];

  if ([(MPCQueueControllerEdit *)v11 allowsChangingCurrentItem])
  {
    [(NSMutableArray *)self->_potentialCurrentItemEdits addObject:v11];
  }

  activeEdits = self->_activeEdits;
  identifier = [(MPCQueueControllerEdit *)v11 identifier];
  [(NSMapTable *)activeEdits setObject:v11 forKey:identifier];

  playbackEngine = [(MPCQueueController *)self playbackEngine];
  v15 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    engineID = [playbackEngine engineID];
    sessionID = [(MPCQueueController *)self sessionID];
    *buf = 138543874;
    v21 = engineID;
    v22 = 2114;
    v23 = sessionID;
    v24 = 2114;
    v25 = v11;
    _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_DEFAULT, "[QUCON:%{public}@:%{public}@] beginExternalSyncEditWithReason:… | created edit [] edit=%{public}@", buf, 0x20u);
  }

  return v11;
}

- (MPCPlaybackIntent)fallbackPlaybackIntent
{
  playbackEngine = [(MPCQueueController *)self playbackEngine];
  fallbackPlaybackIntent = [playbackEngine fallbackPlaybackIntent];

  return fallbackPlaybackIntent;
}

- (NSString)playerID
{
  playbackEngine = [(MPCQueueController *)self playbackEngine];
  playerID = [playbackEngine playerID];

  return playerID;
}

- (NSString)engineID
{
  playbackEngine = [(MPCQueueController *)self playbackEngine];
  engineID = [playbackEngine engineID];

  return engineID;
}

- (MPCPlaybackEngineEventStream)eventStream
{
  playbackEngine = [(MPCQueueController *)self playbackEngine];
  eventStream = [playbackEngine eventStream];

  return eventStream;
}

- (void)upNextBehaviorDidChange
{
  playbackEngine = [(MPCQueueController *)self playbackEngine];
  mediaRemotePublisher = [playbackEngine mediaRemotePublisher];
  [mediaRemotePublisher publishIfNeeded];

  [(MPCQueueController *)self incrementVersionForSegment:@"behavior"];
}

- (id)beginEditWithReason:(id)reason
{
  v25[2] = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  if (!reasonCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCQueueController.m" lineNumber:1033 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
  }

  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v25[0] = v7;
  v25[1] = reasonCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v9 = [v8 componentsJoinedByString:@"-"];

  v10 = [[MPCQueueControllerEdit alloc] initWithQueueController:self label:v9];
  if ([(MPCQueueControllerEdit *)v10 allowsChangingCurrentItem])
  {
    [(NSMutableArray *)self->_potentialCurrentItemEdits addObject:v10];
  }

  activeEdits = self->_activeEdits;
  identifier = [(MPCQueueControllerEdit *)v10 identifier];
  [(NSMapTable *)activeEdits setObject:v10 forKey:identifier];

  playbackEngine = [(MPCQueueController *)self playbackEngine];
  v14 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    engineID = [playbackEngine engineID];
    sessionID = [(MPCQueueController *)self sessionID];
    *buf = 138543874;
    v20 = engineID;
    v21 = 2114;
    v22 = sessionID;
    v23 = 2114;
    v24 = v10;
    _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEFAULT, "[QUCON:%{public}@:%{public}@] beginEditWithReason:… | created edit [] edit=%{public}@", buf, 0x20u);
  }

  return v10;
}

- (id)startPlayerItemContinuable
{
  if ([(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl conformsToProtocol:&unk_1F45ADD48])
  {
    behaviorImpl = self->_behaviorImpl;
  }

  else
  {
    behaviorImpl = 0;
  }

  return behaviorImpl;
}

- (MPCQueueControllerReusableBehavior)reusableBehavior
{
  if ([(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl conformsToProtocol:&unk_1F45A24D0])
  {
    behaviorImpl = self->_behaviorImpl;
  }

  else
  {
    behaviorImpl = 0;
  }

  return behaviorImpl;
}

- (void)_withUpNextBehavior:(id)behavior
{
  behaviorCopy = behavior;
  if ([(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl conformsToProtocol:&unk_1F45A2390])
  {
    behaviorCopy[2](behaviorCopy, self->_behaviorImpl);
  }
}

- (BOOL)_withTransportableBehavior:(id)behavior
{
  behaviorCopy = behavior;
  v5 = [(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl conformsToProtocol:&unk_1F45A1DD8];
  if (v5)
  {
    behaviorCopy[2](behaviorCopy, self->_behaviorImpl);
  }

  return v5;
}

- (BOOL)_withRestorableBehavior:(id)behavior
{
  behaviorCopy = behavior;
  v5 = [(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl conformsToProtocol:&unk_1F45A2030];
  if (v5)
  {
    behaviorCopy[2](behaviorCopy, self->_behaviorImpl);
  }

  return v5;
}

- (void)_withExternalSyncBehavior:(id)behavior
{
  behaviorCopy = behavior;
  if ([(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl conformsToProtocol:&unk_1F45AFEC0])
  {
    behaviorCopy[2](behaviorCopy, self->_behaviorImpl);
  }
}

- (void)_withDynamicBehavior:(id)behavior
{
  behaviorCopy = behavior;
  if ([(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl conformsToProtocol:&unk_1F45A2448])
  {
    behaviorCopy[2](behaviorCopy, self->_behaviorImpl);
  }
}

- (void)jumpToFirstContentItemWithSource:(int64_t)source
{
  v27 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);
  if (source <= 3)
  {
    if (source <= 1)
    {
      if (!source)
      {
        source = @"Unknown";
        goto LABEL_21;
      }

      if (source == 1)
      {
        source = @"StartItem";
        goto LABEL_21;
      }

LABEL_20:
      source = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown/%ld", source];
      goto LABEL_21;
    }

    if (source == 2)
    {
      source = @"UserSelected";
    }

    else
    {
      source = @"NaturalTransition";
    }
  }

  else
  {
    if (source > 5)
    {
      switch(source)
      {
        case 6:
          source = @"QueueBoundary";
          goto LABEL_21;
        case 7:
          source = @"Restored";
          goto LABEL_21;
        case 100:
          source = @"Loading";
          goto LABEL_21;
      }

      goto LABEL_20;
    }

    if (source == 4)
    {
      source = @"ExternalSync";
    }

    else
    {
      source = @"Redirect";
    }
  }

LABEL_21:
  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    engineID = [WeakRetained engineID];
    sessionID = [(MPCQueueController *)self sessionID];
    behaviorImpl = self->_behaviorImpl;
    *buf = 138544130;
    v20 = engineID;
    v21 = 2114;
    v22 = sessionID;
    v23 = 2114;
    v24 = source;
    v25 = 2114;
    v26 = behaviorImpl;
    _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] jumpToFirstContentItemWithSource:%{public}@ | enumerating behavior from nil [] behavior=%{public}@", buf, 0x2Au);
  }

  v11 = [(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl contentItemIDEnumeratorStartingAfterContentItemID:0 mode:2 options:0];
  nextObject = [v11 nextObject];
  v13 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    engineID2 = [WeakRetained engineID];
    sessionID2 = [(MPCQueueController *)self sessionID];
    *buf = 138544130;
    v20 = engineID2;
    v21 = 2114;
    v22 = sessionID2;
    v23 = 2114;
    v24 = source;
    v25 = 2114;
    v26 = nextObject;
    _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] jumpToFirstContentItemWithSource:%{public}@ | updating target [] firstContentItemID=%{public}@", buf, 0x2Au);
  }

  [(MPCQueueController *)self _setTargetContentItemID:nextObject source:source];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __55__MPCQueueController_jumpToFirstContentItemWithSource___block_invoke;
  v17[3] = &unk_1E8235CC8;
  v18 = nextObject;
  v16 = nextObject;
  [(MPCQueueController *)self _withExternalSyncBehavior:v17];
}

- (void)jumpToContentItemID:(id)d
{
  v30 = *MEMORY[0x1E69E9840];
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);
  v6 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    engineID = [WeakRetained engineID];
    sessionID = [(MPCQueueController *)self sessionID];
    behaviorImpl = self->_behaviorImpl;
    *buf = 138544130;
    v23 = engineID;
    v24 = 2114;
    v25 = sessionID;
    v26 = 2114;
    v27 = dCopy;
    v28 = 2114;
    v29 = behaviorImpl;
    _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] jumpToContentItemID:%{public}@ | validating item [] behavior=%{public}@", buf, 0x2Au);
  }

  v10 = self->_behaviorImpl;
  v21 = 0;
  v11 = [(MPCQueueControllerBehaviorImplementation *)v10 canJumpToContentItemID:dCopy reason:&v21];
  v12 = v21;
  v13 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
  v14 = v13;
  if (v11)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      engineID2 = [WeakRetained engineID];
      sessionID2 = [(MPCQueueController *)self sessionID];
      *buf = 138543874;
      v23 = engineID2;
      v24 = 2114;
      v25 = sessionID2;
      v26 = 2114;
      v27 = dCopy;
      _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] jumpToContentItemID:%{public}@ | updating target", buf, 0x20u);
    }

    [(MPCQueueController *)self _setTargetContentItemID:dCopy source:2];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __42__MPCQueueController_jumpToContentItemID___block_invoke;
    v19[3] = &unk_1E8235CC8;
    v20 = dCopy;
    [(MPCQueueController *)self _withExternalSyncBehavior:v19];
    v14 = v20;
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    engineID3 = [WeakRetained engineID];
    sessionID3 = [(MPCQueueController *)self sessionID];
    *buf = 138544130;
    v23 = engineID3;
    v24 = 2114;
    v25 = sessionID3;
    v26 = 2114;
    v27 = dCopy;
    v28 = 2114;
    v29 = v12;
    _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_ERROR, "[PSYNC:%{public}@:%{public}@] jumpToContentItemID:%{public}@ | failing skip [%{public}@]", buf, 0x2Au);
  }
}

- (void)jumpToContentItemID:(id)d direction:(int64_t)direction
{
  v42 = *MEMORY[0x1E69E9840];
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);
  if ((direction + 1) > 6)
  {
    v9 = @"MPCPlayerDirectionReverseJump";
  }

  else
  {
    v9 = off_1E8235FA0[direction + 1];
  }

  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    engineID = [WeakRetained engineID];
    sessionID = [(MPCQueueController *)self sessionID];
    behaviorImpl = self->_behaviorImpl;
    *buf = 138544386;
    v33 = engineID;
    v34 = 2114;
    v35 = sessionID;
    v36 = 2114;
    v37 = dCopy;
    v38 = 2114;
    v39 = v9;
    v40 = 2114;
    v41 = behaviorImpl;
    _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] jumpToContentItemID:%{public}@ direction:%{public}@ | validating item [] behavior=%{public}@", buf, 0x34u);
  }

  if (direction <= 0)
  {
    if (direction != -2)
    {
      if (direction != -1)
      {
        if (direction)
        {
          goto LABEL_23;
        }

LABEL_17:
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"MPCQueueController.m" lineNumber:911 description:{@"Unsupported jump direction: %ld", direction}];
        goto LABEL_30;
      }

      targetContentItemID = self->_targetContentItemID;
      v30 = 0;
      v23 = [(MPCQueueController *)self canPreviousTrackForContentItemID:targetContentItemID reason:&v30];
      currentHandler = v30;
      if (v23)
      {
        goto LABEL_22;
      }

      v16 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        engineID2 = [WeakRetained engineID];
        sessionID2 = [(MPCQueueController *)self sessionID];
        *buf = 138544386;
        v33 = engineID2;
        v34 = 2114;
        v35 = sessionID2;
        v36 = 2114;
        v37 = dCopy;
        v38 = 2114;
        v39 = v9;
        v40 = 2114;
        v41 = currentHandler;
        v19 = "[PSYNC:%{public}@:%{public}@] jumpToContentItemID:%{public}@ direction:%{public}@ | failing previous [%{public}@]";
        goto LABEL_28;
      }

LABEL_29:

      goto LABEL_30;
    }

    goto LABEL_14;
  }

  switch(direction)
  {
    case 1:
      v20 = self->_targetContentItemID;
      v29 = 0;
      v21 = [(MPCQueueController *)self canNextTrackForContentItemID:v20 reason:&v29];
      currentHandler = v29;
      if (!v21)
      {
        v16 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_29;
        }

        engineID2 = [WeakRetained engineID];
        sessionID2 = [(MPCQueueController *)self sessionID];
        *buf = 138544386;
        v33 = engineID2;
        v34 = 2114;
        v35 = sessionID2;
        v36 = 2114;
        v37 = dCopy;
        v38 = 2114;
        v39 = v9;
        v40 = 2114;
        v41 = currentHandler;
        v19 = "[PSYNC:%{public}@:%{public}@] jumpToContentItemID:%{public}@ direction:%{public}@ | failing next [%{public}@]";
        goto LABEL_28;
      }

LABEL_22:

      break;
    case 5:
      goto LABEL_17;
    case 2:
LABEL_14:
      v31 = 0;
      v14 = [(MPCQueueController *)self canJumpToContentItemID:dCopy reason:&v31];
      currentHandler = v31;
      if (!v14)
      {
        v16 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_29;
        }

        engineID2 = [WeakRetained engineID];
        sessionID2 = [(MPCQueueController *)self sessionID];
        *buf = 138544386;
        v33 = engineID2;
        v34 = 2114;
        v35 = sessionID2;
        v36 = 2114;
        v37 = dCopy;
        v38 = 2114;
        v39 = v9;
        v40 = 2114;
        v41 = currentHandler;
        v19 = "[PSYNC:%{public}@:%{public}@] jumpToContentItemID:%{public}@ direction:%{public}@ | failing jump [%{public}@]";
LABEL_28:
        _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_ERROR, v19, buf, 0x34u);

        goto LABEL_29;
      }

      goto LABEL_22;
  }

LABEL_23:
  v24 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    engineID3 = [WeakRetained engineID];
    sessionID3 = [(MPCQueueController *)self sessionID];
    *buf = 138544130;
    v33 = engineID3;
    v34 = 2114;
    v35 = sessionID3;
    v36 = 2114;
    v37 = dCopy;
    v38 = 2114;
    v39 = v9;
    _os_log_impl(&dword_1C5C61000, v24, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] jumpToContentItemID:%{public}@ direction:%{public}@ | updating target", buf, 0x2Au);
  }

  [(MPCQueueController *)self _setTargetContentItemID:dCopy source:2];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __52__MPCQueueController_jumpToContentItemID_direction___block_invoke;
  v27[3] = &unk_1E8235CC8;
  v28 = dCopy;
  [(MPCQueueController *)self _withExternalSyncBehavior:v27];
  currentHandler = v28;
LABEL_30:
}

- (void)_setTargetContentItemID:(id)d source:(int64_t)source
{
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    engineID = [WeakRetained engineID];
    sessionID = [(MPCQueueController *)self sessionID];
    if (source <= 3)
    {
      if (source > 1)
      {
        if (source == 2)
        {
          source = @"UserSelected";
        }

        else
        {
          source = @"NaturalTransition";
        }

        goto LABEL_22;
      }

      if (!source)
      {
        source = @"Unknown";
        goto LABEL_22;
      }

      if (source == 1)
      {
        source = @"StartItem";
        goto LABEL_22;
      }
    }

    else
    {
      if (source <= 5)
      {
        if (source == 4)
        {
          source = @"ExternalSync";
        }

        else
        {
          source = @"Redirect";
        }

        goto LABEL_22;
      }

      switch(source)
      {
        case 6:
          source = @"QueueBoundary";
          goto LABEL_22;
        case 7:
          source = @"Restored";
          goto LABEL_22;
        case 100:
          source = @"Loading";
LABEL_22:
          *buf = 138544130;
          v16 = engineID;
          v17 = 2114;
          v18 = sessionID;
          v19 = 2114;
          v20 = dCopy;
          v21 = 2114;
          v22 = source;
          _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] setTargetContentItemID:%{public}@ source:%{public}@ | updating target", buf, 0x2Au);

          goto LABEL_23;
      }
    }

    source = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown/%ld", source];
    goto LABEL_22;
  }

LABEL_23:

  targetContentItemID = self->_targetContentItemID;
  self->_targetContentItemID = dCopy;
  v13 = dCopy;

  self->_targetContentItemSource = source;
  [(MPCQueueController *)self _evaluateContextAwareTriggersWithReason:@"targetItem changed"];
  delegate = [(MPCQueueController *)self delegate];
  [delegate queueController:self didChangeTargetContentItemID:v13];

  [(MPCQueueController *)self incrementVersionForSegment:@"metadata"];
}

- (BOOL)isUserSelectedContentItemID:(id)d
{
  dCopy = d;
  targetContentItemID = [(MPCQueueController *)self targetContentItemID];
  v6 = targetContentItemID;
  if (targetContentItemID == dCopy)
  {
  }

  else
  {
    v7 = [dCopy isEqual:targetContentItemID];

    if (!v7)
    {
      goto LABEL_7;
    }
  }

  targetContentItemSource = [(MPCQueueController *)self targetContentItemSource];
  v9 = 1;
  if (targetContentItemSource <= 2)
  {
    if (!targetContentItemSource)
    {
LABEL_7:
      v9 = 0;
      goto LABEL_8;
    }

    if (targetContentItemSource == 1)
    {
      preferredFirstContentItemID = [(MPCQueueController *)self preferredFirstContentItemID];
      if (preferredFirstContentItemID != dCopy)
      {
        v9 = [dCopy isEqual:preferredFirstContentItemID];
      }
    }
  }

  else if ((targetContentItemSource - 3) < 4 || targetContentItemSource == 100)
  {
    goto LABEL_7;
  }

LABEL_8:

  return v9;
}

- (void)finalizeStateRestorationWithLoadingItemReady:(id)ready completion:(id)completion
{
  v42 = *MEMORY[0x1E69E9840];
  readyCopy = ready;
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__18856;
  v34 = __Block_byref_object_dispose__18857;
  v35 = 0;
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __78__MPCQueueController_finalizeStateRestorationWithLoadingItemReady_completion___block_invoke;
  v25 = &unk_1E8235D58;
  v29 = &v30;
  selfCopy = self;
  v9 = WeakRetained;
  v27 = v9;
  v10 = completionCopy;
  v28 = v10;
  if ([(MPCQueueController *)self _withRestorableBehavior:&v22])
  {
    v11 = v31[5];
    if (v11)
    {
      v12 = v11;
      p_loadingContentItemID = &self->_loadingContentItemID;
      loadingContentItemID = self->_loadingContentItemID;
      self->_loadingContentItemID = v12;
    }

    else
    {
      loadingContentItemID = [(MPCQueueController *)self sessionID:v22];
      v16 = [@"♻️-" stringByAppendingString:loadingContentItemID];
      p_loadingContentItemID = &self->_loadingContentItemID;
      v17 = self->_loadingContentItemID;
      self->_loadingContentItemID = v16;
    }

    v18 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      engineID = [v9 engineID];
      sessionID = [(MPCQueueController *)self sessionID];
      v21 = *p_loadingContentItemID;
      *buf = 138543874;
      v37 = engineID;
      v38 = 2114;
      v39 = sessionID;
      v40 = 2114;
      v41 = v21;
      _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] finalizeStateRestorationWithLoadingItemReady:… | updating loading content item [] loadingContentItemID=%{public}@", buf, 0x20u);
    }

    readyCopy[2](readyCopy);
  }

  else
  {
    v15 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:59 debugDescription:{@"State restoration is not supported", v22, v23, v24, v25, selfCopy, v27}];
    (*(v10 + 2))(v10, v15);
  }

  _Block_object_dispose(&v30, 8);
}

void __78__MPCQueueController_finalizeStateRestorationWithLoadingItemReady_completion___block_invoke(uint64_t a1, void *a2)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 64);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__MPCQueueController_finalizeStateRestorationWithLoadingItemReady_completion___block_invoke_2;
  v10[3] = &unk_1E8236E20;
  v10[4] = v5;
  v11 = v4;
  v12 = *(a1 + 48);
  v7 = [a2 finalizeStateRestorationWithTargetContentItemID:v6 completion:v10];
  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void __78__MPCQueueController_finalizeStateRestorationWithLoadingItemReady_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __78__MPCQueueController_finalizeStateRestorationWithLoadingItemReady_completion___block_invoke_3;
  v6[3] = &unk_1E8237160;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v4;
  v8 = v3;
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __78__MPCQueueController_finalizeStateRestorationWithLoadingItemReady_completion___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 120);
  *(v2 + 120) = 0;

  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 40) engineID];
    v6 = [*(a1 + 32) sessionID];
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] finalizeStateRestorationWithLoadingItemReady:… | clearing loading content item", &v9, 0x16u);
  }

  if (!*(a1 + 48))
  {
    *(*(a1 + 32) + 72) = 7;
    v7 = [*(a1 + 32) delegate];
    [v7 queueController:*(a1 + 32) didChangeTargetContentItemID:*(*(a1 + 32) + 64)];
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)performAfterEdits:(id)edits
{
  v32 = *MEMORY[0x1E69E9840];
  editsCopy = edits;
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);
  if ([(NSMapTable *)self->_activeEdits count])
  {
    objectEnumerator = [(NSMapTable *)self->_activeEdits objectEnumerator];
    v7 = [objectEnumerator msv_map:&__block_literal_global_146];

    v8 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      engineID = [WeakRetained engineID];
      sessionID = [(MPCQueueController *)self sessionID];
      v11 = [(NSMapTable *)self->_activeEdits count];
      *buf = 138544130;
      v25 = engineID;
      v26 = 2114;
      v27 = sessionID;
      v28 = 2048;
      v29 = v11;
      v30 = 2114;
      v31 = v7;
      _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] performAfterEdits:… | storing continuation [%ld edits remain] activeEdits=%{public}@", buf, 0x2Au);
    }

    v12 = _Block_copy(self->_postEditContinuation);
    v13 = v12;
    if (v12)
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __40__MPCQueueController_performAfterEdits___block_invoke_147;
      v21[3] = &unk_1E8238438;
      v22 = v12;
      v23 = editsCopy;
      v14 = _Block_copy(v21);
      postEditContinuation = self->_postEditContinuation;
      self->_postEditContinuation = v14;

      v16 = v22;
    }

    else
    {
      v20 = _Block_copy(editsCopy);
      v16 = self->_postEditContinuation;
      self->_postEditContinuation = v20;
    }
  }

  else
  {
    v17 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      engineID2 = [WeakRetained engineID];
      sessionID2 = [(MPCQueueController *)self sessionID];
      *buf = 138543618;
      v25 = engineID2;
      v26 = 2114;
      v27 = sessionID2;
      _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] performAfterEdits:… | calling continuation [no edits]", buf, 0x16u);
    }

    editsCopy[2](editsCopy);
  }
}

uint64_t __40__MPCQueueController_performAfterEdits___block_invoke_147(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)performSetQueue:(id)queue loadingItemReady:(id)ready completion:(id)completion
{
  v43 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  completionCopy = completion;
  readyCopy = ready;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);
  behaviorImpl = self->_behaviorImpl;
  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = __66__MPCQueueController_performSetQueue_loadingItemReady_completion___block_invoke;
  v30 = &unk_1E8237B08;
  selfCopy = self;
  v13 = WeakRetained;
  v32 = v13;
  v14 = queueCopy;
  v33 = v14;
  v15 = completionCopy;
  v34 = v15;
  v16 = [(MPCQueueControllerBehaviorImplementation *)behaviorImpl performLoadCommand:v14 completion:&v27];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
    loadingContentItemID = self->_loadingContentItemID;
    self->_loadingContentItemID = v18;
  }

  else
  {
    loadingContentItemID = [(MPCQueueController *)self sessionID:v27];
    v20 = [@"⏳-" stringByAppendingString:loadingContentItemID];
    v21 = self->_loadingContentItemID;
    self->_loadingContentItemID = v20;
  }

  v22 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    engineID = [v13 engineID];
    sessionID = [(MPCQueueController *)self sessionID];
    commandID = [v14 commandID];
    v26 = self->_loadingContentItemID;
    *buf = 138544130;
    v36 = engineID;
    v37 = 2114;
    v38 = sessionID;
    v39 = 2114;
    v40 = commandID;
    v41 = 2114;
    v42 = v26;
    _os_log_impl(&dword_1C5C61000, v22, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] performSetQueue:%{public}@ … | updating loading content item [] loadingContentItemID=%{public}@", buf, 0x2Au);
  }

  readyCopy[2](readyCopy);
}

void __66__MPCQueueController_performSetQueue_loadingItemReady_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__MPCQueueController_performSetQueue_loadingItemReady_completion___block_invoke_2;
  block[3] = &unk_1E8237048;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v4;
  v9 = *(a1 + 48);
  v5 = *(a1 + 56);
  v10 = v3;
  v11 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __66__MPCQueueController_performSetQueue_loadingItemReady_completion___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 120);
  *(v2 + 120) = 0;

  v4 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 40) engineID];
    v6 = [*(a1 + 32) sessionID];
    v7 = [*(a1 + 48) commandID];
    v10 = 138543874;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] performSetQueue:%{public}@ … | clearing loading content item", &v10, 0x20u);
  }

  v8 = [*(a1 + 32) delegate];
  [v8 queueController:*(a1 + 32) didChangeTargetContentItemID:*(*(a1 + 32) + 64)];

  return (*(*(a1 + 64) + 16))();
}

- (id)contentItemIDWithoutRepeatIteration:(id)iteration
{
  iterationCopy = iteration;
  music = [(MPCQueueController *)self music];
  v6 = [music contentItemIDWithoutRepeatIteration:iterationCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = iterationCopy;
  }

  v9 = v8;

  return v8;
}

- (BOOL)isEmpty
{
  v2 = [(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl contentItemIDEnumeratorStartingAfterContentItemID:0 mode:2 options:0];
  nextObject = [v2 nextObject];
  v4 = nextObject == 0;

  return v4;
}

- (void)enumerateContentItemIDsInMode:(int64_t)mode block:(id)block
{
  blockCopy = block;
  v13 = 0;
  loadingContentItemID = self->_loadingContentItemID;
  if (loadingContentItemID)
  {
    goto LABEL_6;
  }

  v8 = self->_targetContentItemID;
  if ([(NSString *)v8 hasPrefix:@"⏳"])
  {

LABEL_5:
    loadingContentItemID = self->_targetContentItemID;
LABEL_6:
    blockCopy[2](blockCopy, loadingContentItemID, &v13);
    goto LABEL_7;
  }

  v9 = [(NSString *)v8 hasPrefix:@"♻️"];

  if (v9)
  {
    goto LABEL_5;
  }

  if (self->_targetContentItemID)
  {
    v10 = [(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl contentItemIDEnumeratorStartingAfterContentItemID:0 mode:mode options:0];
    nextObject = [v10 nextObject];
    do
    {
      blockCopy[2](blockCopy, nextObject, &v13);
      if (v13)
      {
        break;
      }

      nextObject2 = [v10 nextObject];

      nextObject = nextObject2;
    }

    while (nextObject2);
  }

LABEL_7:
}

- (id)contentItemIDsFromOffset:(int64_t)offset toOffset:(int64_t)toOffset mode:(int64_t)mode nowPlayingIndex:(int64_t *)index
{
  v31[1] = *MEMORY[0x1E69E9840];
  if (self->_loadingContentItemID)
  {
    *index = 0;
    v31[0] = self->_loadingContentItemID;
    v8 = MEMORY[0x1E695DEC8];
    p_targetContentItemID = v31;
LABEL_7:
    v16 = [v8 arrayWithObjects:p_targetContentItemID count:{1, mode}];
    goto LABEL_8;
  }

  v14 = self->_targetContentItemID;
  if ([(NSString *)v14 hasPrefix:@"⏳"])
  {

LABEL_6:
    *index = 0;
    targetContentItemID = self->_targetContentItemID;
    v8 = MEMORY[0x1E695DEC8];
    p_targetContentItemID = &targetContentItemID;
    goto LABEL_7;
  }

  v15 = [(NSString *)v14 hasPrefix:@"♻️"];

  if (v15)
  {
    goto LABEL_6;
  }

  if (self->_targetContentItemID)
  {
    if (!(toOffset | offset))
    {
      *index = 0;
      v29 = self->_targetContentItemID;
      v8 = MEMORY[0x1E695DEC8];
      p_targetContentItemID = &v29;
      goto LABEL_7;
    }

    *index = 0x7FFFFFFFFFFFFFFFLL;
    v18 = [MEMORY[0x1E695DF70] arrayWithCapacity:toOffset - offset + 1];
    if (offset < 0)
    {
      v19 = [(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl contentItemIDEnumeratorStartingAfterContentItemID:self->_targetContentItemID mode:mode options:1];
      if (v19 && -offset >= 1)
      {
        v20 = 0;
        v28 = -(toOffset & (toOffset >> 63));
        do
        {
          nextObject = [v19 nextObject];
          if (!nextObject)
          {
            break;
          }

          v22 = nextObject;
          if (v20 >= v28)
          {
            [v18 insertObject:nextObject atIndex:0];
          }

          ++v20;
        }

        while (-offset != v20);
      }
    }

    if (offset <= 0 && (toOffset & 0x8000000000000000) == 0)
    {
      *index = [v18 count];
      if (!self->_targetContentItemID)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"MPCQueueController.m" lineNumber:698 description:@"ContentItemID was nil [current item]"];
      }

      [v18 addObject:?];
    }

    if (toOffset >= 1)
    {
      v23 = [(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl contentItemIDEnumeratorStartingAfterContentItemID:self->_targetContentItemID mode:mode options:0];
      v24 = 0;
      do
      {
        nextObject2 = [v23 nextObject];
        if (!nextObject2)
        {
          break;
        }

        v26 = nextObject2;
        if (v24 >= offset)
        {
          [v18 addObject:nextObject2];
        }

        ++v24;
      }

      while (toOffset != v24);
    }

    v16 = [v18 copy];
  }

  else
  {
    *index = 0x7FFFFFFFFFFFFFFFLL;
    v16 = MEMORY[0x1E695E0F0];
  }

LABEL_8:

  return v16;
}

- (id)contentItemIDAtIndex:(int64_t)index
{
  v4 = [(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl contentItemIDEnumeratorStartingAfterContentItemID:0 mode:1 options:0];
  v5 = v4;
  if (index < 0)
  {
    nextObject = 0;
  }

  else
  {
    nextObject = [v4 nextObject];
    if (nextObject)
    {
      v7 = index + 1;
      do
      {
        if (!--v7)
        {
          break;
        }

        nextObject = [v5 nextObject];
      }

      while (nextObject);
    }
  }

  return nextObject;
}

- (BOOL)canNextTrackForContentItemID:(id)d reason:(id *)reason
{
  dCopy = d;
  v7 = dCopy;
  if (!dCopy)
  {
    if (reason)
    {
      v8 = 0;
      v9 = @"no item";
      goto LABEL_8;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_11;
  }

  if (([dCopy hasPrefix:@"⏳"] & 1) == 0 && !objc_msgSend(v7, "hasPrefix:", @"♻️"))
  {
    v8 = [(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl canNextItemFromContentItemID:v7 reason:reason];
    goto LABEL_11;
  }

  if (!reason)
  {
    goto LABEL_9;
  }

  v8 = 0;
  v9 = @"QC-Placeholder";
LABEL_8:
  *reason = v9;
LABEL_11:

  return v8;
}

- (BOOL)canPreviousTrackForContentItemID:(id)d reason:(id *)reason
{
  dCopy = d;
  v7 = dCopy;
  if (!dCopy)
  {
    if (reason)
    {
      v8 = 0;
      v9 = @"no item";
      goto LABEL_8;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_11;
  }

  if (([dCopy hasPrefix:@"⏳"] & 1) == 0 && !objc_msgSend(v7, "hasPrefix:", @"♻️"))
  {
    v8 = [(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl canPreviousItemFromContentItemID:v7 reason:reason];
    goto LABEL_11;
  }

  if (!reason)
  {
    goto LABEL_9;
  }

  v8 = 0;
  v9 = @"QC-Placeholder";
LABEL_8:
  *reason = v9;
LABEL_11:

  return v8;
}

- (void)incrementVersionForSegment:(id)segment
{
  v4 = MEMORY[0x1E696AD98];
  coderVersions = self->_coderVersions;
  segmentCopy = segment;
  v7 = [(NSMutableDictionary *)coderVersions objectForKeyedSubscript:segmentCopy];
  v8 = [v4 numberWithInteger:{objc_msgSend(v7, "integerValue") + 1}];
  [(NSMutableDictionary *)self->_coderVersions setObject:v8 forKeyedSubscript:segmentCopy];

  delegate = [(MPCQueueController *)self delegate];
  [delegate queueController:self didIncrementVersionForSegment:segmentCopy];
}

- (int64_t)versionForSegment:(id)segment
{
  v3 = [(NSMutableDictionary *)self->_coderVersions objectForKeyedSubscript:segment];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (void)didRestoreVersion:(int64_t)version forSegment:(id)segment
{
  v6 = MEMORY[0x1E696AD98];
  segmentCopy = segment;
  v8 = [v6 numberWithInteger:version];
  [(NSMutableDictionary *)self->_coderVersions setObject:v8 forKeyedSubscript:segmentCopy];
}

- (id)segmentForCodingKey:(id)key
{
  if (key == @"cpay")
  {
    v3 = @"containerPayload";
  }

  else
  {
    v3 = @"metadata";
  }

  if (key == @"pers")
  {
    v4 = @"itemPayload";
  }

  else
  {
    v4 = v3;
  }

  if (key == @"ipay")
  {
    v5 = @"itemPayload";
  }

  else
  {
    v5 = v4;
  }

  if (key == @"be")
  {
    return @"behavior";
  }

  else
  {
    return v5;
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_behaviorType forKey:@"bet"];
  [coderCopy encodeObject:self->_behaviorImpl forKey:@"be"];
  [coderCopy encodeObject:self->_targetContentItemID forKey:@"tci"];
  [coderCopy encodeInteger:self->_targetContentItemSource forKey:@"tcis"];
  [coderCopy encodeDouble:@"lst" forKey:self->_lastSavedTime];
  if (self->_behaviorType == 2)
  {
    currentItem = [(MPCQueueController *)self currentItem];
    modelGenericObject = [currentItem modelGenericObject];
    identifiers = [modelGenericObject identifiers];

    universalStore = [identifiers universalStore];
    if ([universalStore subscriptionAdamID])
    {
    }

    else
    {
      universalStore2 = [identifiers universalStore];
      universalCloudLibraryID = [universalStore2 universalCloudLibraryID];
      v11 = [universalCloudLibraryID length];

      if (!v11)
      {
LABEL_10:

        goto LABEL_11;
      }
    }

    mEMORY[0x1E6970950] = [MEMORY[0x1E6970950] sharedServerObjectDatabase];
    v24 = 0;
    v13 = [mEMORY[0x1E6970950] payloadDataForIdentifierSet:identifiers outError:&v24];
    v14 = v24;

    if ([v13 length])
    {
      personalizedStore = [identifiers personalizedStore];
      personID = [personalizedStore personID];
      [coderCopy encodeObject:personID forKey:@"pers"];

      [coderCopy encodeObject:v13 forKey:@"ipay"];
      currentItem2 = [(MPCQueueController *)self currentItem];
      modelPlayEvent = [currentItem2 modelPlayEvent];
      genericObjectRepresentation = [modelPlayEvent genericObjectRepresentation];
      identifiers2 = [genericObjectRepresentation identifiers];

      if (identifiers2)
      {
        mEMORY[0x1E6970950]2 = [MEMORY[0x1E6970950] sharedServerObjectDatabase];
        v23 = 0;
        v22 = [mEMORY[0x1E6970950]2 payloadDataForIdentifierSet:identifiers2 outError:&v23];

        [coderCopy encodeObject:v22 forKey:@"cpay"];
      }
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (MPCQueueController)initWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [(MPCQueueController *)self init];
  if (!v6)
  {
    goto LABEL_17;
  }

  if ([coderCopy containsValueForKey:@"bet"])
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tci"];
    targetContentItemID = v6->_targetContentItemID;
    v6->_targetContentItemID = v7;

    v6->_targetContentItemSource = [coderCopy decodeIntegerForKey:@"tcis"];
    v9 = [coderCopy decodeIntegerForKey:@"bet"];
    v6->_behaviorType = v9;
    if (v9 == 4)
    {
      v22 = MEMORY[0x1E695DFD8];
      v23 = objc_opt_class();
      v24 = objc_opt_class();
      currentHandler = [v22 setWithObjects:{v23, v24, objc_opt_class(), 0}];
      v25 = [coderCopy decodeObjectOfClasses:currentHandler forKey:@"be"];
      behaviorImpl = v6->_behaviorImpl;
      v6->_behaviorImpl = v25;
    }

    else if (v9 == 2)
    {
      msv_userInfo = [coderCopy msv_userInfo];
      currentHandler = [msv_userInfo mutableCopy];

      [currentHandler setObject:v6->_targetContentItemID forKeyedSubscript:@"QC.targetContentItemID"];
      v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pers"];
      [currentHandler setObject:v12 forKeyedSubscript:@"QC.SOD.personID"];

      v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ipay"];
      [currentHandler setObject:v13 forKeyedSubscript:@"QC.SOD.itemPayloadData"];

      v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cpay"];
      [currentHandler setObject:v14 forKeyedSubscript:@"QC.SOD.containerPayloadData"];

      [coderCopy msv_setUserInfo:currentHandler];
      v15 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_msgSend(objc_opt_class(), "musicBehaviorClass"), 0}];
      v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"be"];
      v17 = v6->_behaviorImpl;
      v6->_behaviorImpl = v16;
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v6 file:@"MPCQueueController.m" lineNumber:513 description:{@"Attempt to decode unsupported behaviorType: %lld", v6->_behaviorType}];
    }

    if (v6->_behaviorImpl)
    {
      goto LABEL_11;
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [(_MPCQueueControllerBehaviorMusic *)currentHandler2 handleFailureInMethod:a2 object:v6 file:@"MPCQueueController.m" lineNumber:517 description:@"Failed to decode behaviorImpl"];
  }

  else
  {
    v18 = [[_MPCQueueControllerBehaviorMusic alloc] initWithSessionID:0];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __36__MPCQueueController_initWithCoder___block_invoke;
    v33[3] = &unk_1E8235D10;
    v19 = v6;
    v34 = v19;
    [(_MPCQueueControllerBehaviorMusic *)v18 restoreWithSharedCoder:coderCopy block:v33];
    v19->_behaviorType = 2;
    v20 = v19->_behaviorImpl;
    v19->_behaviorImpl = v18;
    currentHandler2 = v18;
  }

LABEL_11:
  if (v6->_targetContentItemID && [coderCopy containsValueForKey:@"lst"])
  {
    objc_storeStrong(&v6->_restoreLastStartTimePositionToContentItemID, v6->_targetContentItemID);
    [coderCopy decodeDoubleForKey:@"lst"];
    v6->_lastSavedTime = v27;
  }

  sessionID = [(MPCQueueControllerBehaviorImplementation *)v6->_behaviorImpl sessionID];

  if (!sessionID)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:v6 file:@"MPCQueueController.m" lineNumber:537 description:{@"behaviorImpl must have sessionID: %@", v6->_behaviorImpl}];
  }

  [(MPCQueueControllerBehaviorImplementation *)v6->_behaviorImpl connectToHost:v6];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __36__MPCQueueController_initWithCoder___block_invoke_2;
  v31[3] = &unk_1E8235CC8;
  v32 = v6;
  [(MPCQueueController *)v32 _withExternalSyncBehavior:v31];

LABEL_17:
  return v6;
}

void __36__MPCQueueController_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 64), a2);
  v4 = a2;
  *(*(a1 + 32) + 72) = 7;
}

- (void)didDisconnectFromPlaybackEngine:(id)engine
{
  v9[1] = *MEMORY[0x1E69E9840];
  engineCopy = engine;
  if (self->_currentItem)
  {
    objc_storeWeak(&self->_playbackEngine, engineCopy);
    [(MPCQueueController *)self _emitEventsForItemChangeFromItem:self->_currentItem toCurrentItem:0];
  }

  if (objc_opt_respondsToSelector())
  {
    [(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl didDisconnectFromHost:self];
  }

  eventStream = [engineCopy eventStream];
  v8 = @"session-id";
  sessionID = [(MPCQueueController *)self sessionID];
  v9[0] = sessionID;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [eventStream emitEventType:@"session-end" payload:v7];

  objc_storeWeak(&self->_playbackEngine, 0);
}

- (void)didConnectToPlaybackEngine:(id)engine
{
  v9[2] = *MEMORY[0x1E69E9840];
  eventStream = [engine eventStream];
  v8[0] = @"session-id";
  sessionID = [(MPCQueueController *)self sessionID];
  v8[1] = @"behavior-type";
  v9[0] = sessionID;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MPCQueueController behaviorType](self, "behaviorType")}];
  v9[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  [eventStream emitEventType:@"session-begin" payload:v7];

  if (objc_opt_respondsToSelector())
  {
    [(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl didConnectToHost:self];
  }

  if (self->_currentItem)
  {
    [(MPCQueueController *)self _emitEventsForItemChangeFromItem:0 toCurrentItem:?];
  }
}

- (void)willDisconnectFromPlaybackEngine:(id)engine
{
  engineCopy = engine;
  music = [(MPCQueueController *)self music];
  [music setHostingSharedSessionID:0 reason:@"Local Session Teardown [GroupSession will continue]"];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__MPCQueueController_willDisconnectFromPlaybackEngine___block_invoke;
  v6[3] = &unk_1E8235CC8;
  v6[4] = self;
  [(MPCQueueController *)self _withExternalSyncBehavior:v6];
  [(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl disconnectFromHost:self];
  [engineCopy removeEngineObserver:self];

  objc_storeWeak(&self->_playbackEngine, 0);
}

- (void)willConnectToPlaybackEngine:(id)engine
{
  engineCopy = engine;
  objc_storeWeak(&self->_playbackEngine, engineCopy);
  [engineCopy addEngineObserver:self];
  [(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl connectToHost:self];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__MPCQueueController_willConnectToPlaybackEngine___block_invoke;
  v7[3] = &unk_1E8235CC8;
  v7[4] = self;
  [(MPCQueueController *)self _withExternalSyncBehavior:v7];
  music = [(MPCQueueController *)self music];
  hostingSharedSessionID = [engineCopy hostingSharedSessionID];

  [music setHostingSharedSessionID:hostingSharedSessionID reason:@"Local Session Setup [continuing GroupSession]"];
}

- (BOOL)isOneShotExportableSessionForContentItemID:(id)d reason:(id *)reason
{
  dCopy = d;
  if (([dCopy hasPrefix:@"⏳"] & 1) != 0 || objc_msgSend(dCopy, "hasPrefix:", @"♻️"))
  {
    v7 = 0;
    if (reason)
    {
      *reason = @"QC-Placeholder content item ID";
    }
  }

  else
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__18856;
    v23 = __Block_byref_object_dispose__18857;
    v24 = 0;
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __72__MPCQueueController_isOneShotExportableSessionForContentItemID_reason___block_invoke;
    v11[3] = &unk_1E8235CA0;
    v13 = &v15;
    v12 = dCopy;
    v14 = &v19;
    if ([(MPCQueueController *)self _withTransportableBehavior:v11])
    {
      v7 = *(v16 + 24);
      if (reason && (v16[3] & 1) == 0)
      {
        v8 = v20[5];
        v9 = @"not supported by transportableBehavior";
        if (v8)
        {
          v9 = v8;
        }

        *reason = v9;
        v7 = *(v16 + 24);
      }
    }

    else
    {
      v7 = 0;
      if (reason)
      {
        *reason = @"current Behavior is non-transportable";
      }
    }

    _Block_object_dispose(&v15, 8);
    _Block_object_dispose(&v19, 8);
  }

  return v7 & 1;
}

void __72__MPCQueueController_isOneShotExportableSessionForContentItemID_reason___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = a1[4];
    v5 = *(a1[6] + 8);
    obj = *(v5 + 40);
    v6 = [v3 isOneShotExportableSessionForContentItemID:v4 reason:&obj];
    objc_storeStrong((v5 + 40), obj);
    *(*(a1[5] + 8) + 24) = v6;
  }
}

- (BOOL)isExportableSessionType:(id)type forContentItemID:(id)d reason:(id *)reason
{
  typeCopy = type;
  dCopy = d;
  v10 = +[_MPCQueueControllerRegistry shared];
  transportableExtensions = [v10 transportableExtensions];
  v12 = NSMapGet(transportableExtensions, self->_behaviorType);

  allKnownSessionTypes = [v12 allKnownSessionTypes];
  if (([allKnownSessionTypes containsObject:typeCopy] & 1) == 0)
  {
    if (reason)
    {
      v15 = 0;
      v16 = @"other behavior session type";
LABEL_9:
      *reason = v16;
      goto LABEL_20;
    }

LABEL_10:
    v15 = 0;
    goto LABEL_20;
  }

  v14 = dCopy;
  if ([v14 hasPrefix:@"⏳"])
  {

    goto LABEL_7;
  }

  v17 = [v14 hasPrefix:@"♻️"];

  if (v17)
  {
LABEL_7:
    if (reason)
    {
      v15 = 0;
      v16 = @"QC-Placeholder content item ID";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__18856;
  v35 = __Block_byref_object_dispose__18857;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __70__MPCQueueController_isExportableSessionType_forContentItemID_reason___block_invoke;
  v21[3] = &unk_1E8235C78;
  v25 = &v27;
  v22 = typeCopy;
  v23 = v14;
  v24 = v12;
  v26 = &v31;
  if ([(MPCQueueController *)self _withTransportableBehavior:v21])
  {
    v15 = *(v28 + 24);
    if (reason && (v28[3] & 1) == 0)
    {
      v18 = v32[5];
      v19 = @"not supported by transportableBehavior";
      if (v18)
      {
        v19 = v18;
      }

      *reason = v19;
      v15 = *(v28 + 24);
    }
  }

  else
  {
    v15 = 0;
    if (reason)
    {
      *reason = @"current Behavior is non-transportable";
    }
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);

LABEL_20:
  return v15 & 1;
}

void __70__MPCQueueController_isExportableSessionType_forContentItemID_reason___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = *(a1[8] + 8);
  obj = *(v6 + 40);
  v7 = [a2 isExportableSessionType:v3 forContentItemID:v4 extension:v5 reason:&obj];
  objc_storeStrong((v6 + 40), obj);
  *(*(a1[7] + 8) + 24) = v7;
}

- (BOOL)containsRestorableContent
{
  if (self->_loadingContentItemID)
  {
    v2 = 0;
  }

  else
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 0;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __47__MPCQueueController_containsRestorableContent__block_invoke;
    v4[3] = &unk_1E8235C30;
    v4[4] = &v5;
    [(MPCQueueController *)self _withRestorableBehavior:v4];
    v2 = *(v6 + 24);
    _Block_object_dispose(&v5, 8);
  }

  return v2 & 1;
}

uint64_t __47__MPCQueueController_containsRestorableContent__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 containsRestorableContent];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (int64_t)targetContentItemSource
{
  if (self->_loadingContentItemID)
  {
    return 100;
  }

  else
  {
    return self->_targetContentItemSource;
  }
}

- (NSString)targetContentItemID
{
  loadingContentItemID = self->_loadingContentItemID;
  if (!loadingContentItemID)
  {
    loadingContentItemID = self->_targetContentItemID;
  }

  return loadingContentItemID;
}

- (NSString)debugDescription
{
  string = [MEMORY[0x1E696AD60] string];
  [string appendFormat:@"## QueueController <%p>\n", self];
  v4 = [(MPCQueueController *)self _stateDictionaryIncludingQueue:1];
  v5 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v4 options:11 error:0];
  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v5 encoding:4];

  return string;
}

- (void)dealloc
{
  MEMORY[0x1C6955540](self->_stateHandle, a2);
  v3.receiver = self;
  v3.super_class = MPCQueueController;
  [(MPCQueueController *)&v3 dealloc];
}

- (MPCQueueController)initWithBehaviorType:(int64_t)type sessionID:(id)d
{
  dCopy = d;
  v7 = 0;
  if (type <= 2)
  {
    if (type > 2)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (type == 3 || type == 4)
  {
LABEL_8:
    v8 = objc_opt_class();
    goto LABEL_9;
  }

  if (type != 5)
  {
    goto LABEL_10;
  }

  v8 = __testBehaviorClass;
LABEL_9:
  v7 = v8;
LABEL_10:
  v9 = [[v7 alloc] initWithSessionID:dCopy];
  v10 = [(MPCQueueController *)self init];
  v11 = v10;
  if (v10)
  {
    v10->_behaviorType = type;
    objc_storeStrong(&v10->_behaviorImpl, v9);
  }

  return v11;
}

- (MPCQueueController)init
{
  v13[2] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = MPCQueueController;
  v2 = [(MPCQueueController *)&v11 init];
  if (v2)
  {
    v12[0] = @"behavior";
    v12[1] = @"metadata";
    v13[0] = &unk_1F4599418;
    v13[1] = &unk_1F4599418;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v4 = [v3 mutableCopy];
    coderVersions = v2->_coderVersions;
    v2->_coderVersions = v4;

    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    activeEdits = v2->_activeEdits;
    v2->_activeEdits = strongToWeakObjectsMapTable;

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __26__MPCQueueController_init__block_invoke;
    v9[3] = &unk_1E8239270;
    v10 = v2;
    v10->_stateHandle = __26__MPCQueueController_init__block_invoke(v9);
  }

  return v2;
}

uint64_t __26__MPCQueueController_init__block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v1 = MEMORY[0x1E69E96A0];
  objc_copyWeak(&v4, &location);
  v2 = MSVLogAddStateHandler();
  objc_destroyWeak(&v4);

  objc_destroyWeak(&location);
  return v2;
}

uint64_t __26__MPCQueueController_init__block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = WeakRetained;
    if (WeakRetained)
    {
      v8 = [WeakRetained _stateDictionaryIncludingQueue:1];
      v9 = v5[2](v5, v8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)isSupportedSessionType:(id)type reason:(id *)reason
{
  typeCopy = type;
  v6 = +[_MPCQueueControllerRegistry shared];
  transportableExtensions = [v6 transportableExtensions];

  v8 = 0;
  do
  {
    v9 = NSMapGet(transportableExtensions, v8);
    allKnownSessionTypes = [v9 allKnownSessionTypes];
    if ([allKnownSessionTypes containsObject:typeCopy])
    {
      v12 = +[MPCPlaybackEngine isSystemMusic];
      if (v8 == 4 && v12)
      {
        if (reason)
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"behavior[%@] unavailable in SystemMusicApplication", @"podcasts"];
LABEL_14:
          *reason = v11 = 0;
LABEL_17:

          goto LABEL_18;
        }
      }

      else
      {
        v13 = +[MPCPlaybackEngine isSystemPodcasts];
        if ((v8 & 6) != 2 || !v13)
        {
          v11 = [v9 isSupportedSessionType:typeCopy reason:reason];
          goto LABEL_17;
        }

        if (reason)
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"behavior[%@] unavailable in SystemPodcastsApplication", off_1E8235F80[v8 - 2]];
          goto LABEL_14;
        }
      }

      v11 = 0;
      goto LABEL_17;
    }

    ++v8;
  }

  while (v8 != 6);
  v11 = 0;
  if (reason)
  {
    *reason = @"unknown sessionType [QC]";
  }

LABEL_18:

  return v11;
}

+ (void)unregisterPublisher:(id)publisher
{
  publisherCopy = publisher;
  v6 = +[_MPCQueueControllerRegistry shared];
  publisherProxy = [v6 publisherProxy];
  objects = [publisherProxy objects];
  [objects removeObject:publisherCopy];
}

+ (void)registerPublisher:(id)publisher
{
  publisherCopy = publisher;
  v6 = +[_MPCQueueControllerRegistry shared];
  publisherProxy = [v6 publisherProxy];
  objects = [publisherProxy objects];
  [objects addObject:publisherCopy];
}

+ (int64_t)behaviorForQueue:(id)queue
{
  queueCopy = queue;
  if (([objc_opt_class() isSystemPodcasts] & 1) == 0)
  {
    if ([objc_msgSend(self "musicBehaviorClass")])
    {
      v5 = 2;
      goto LABEL_12;
    }

    if ([_MPCQueueControllerBehaviorMusicSharePlay canLoadQueue:queueCopy reason:0])
    {
      v5 = 3;
      goto LABEL_12;
    }
  }

  v5 = 0;
  if (![_MPCQueueControllerBehaviorEmpty canLoadQueue:queueCopy reason:0])
  {
    if ([_MPCQueueControllerBehaviorPodcasts canLoadQueue:queueCopy reason:0])
    {
      v5 = 4;
    }

    else if ([__testBehaviorClass canLoadQueue:queueCopy reason:0])
    {
      v5 = 5;
    }

    else
    {
      v5 = 0;
    }
  }

LABEL_12:

  return v5;
}

+ (id)describePlayer:(id)player
{
  playerCopy = player;
  v4 = [MEMORY[0x1E6970850] infoCenterForPlayerID:playerCopy];
  playbackEngine = [v4 playbackEngine];
  v6 = playbackEngine;
  if (playbackEngine)
  {
    queueController = [playbackEngine queueController];
    if (queueController)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        string = [MEMORY[0x1E696AD60] string];
        [string appendFormat:@"# Player: %@\n\n", playerCopy];
        v9 = [queueController debugDescription];
        [string appendString:v9];
      }

      else
      {
        v10 = MEMORY[0x1E696AEC0];
        v11 = objc_opt_class();
        v9 = NSStringFromClass(v11);
        string = [v10 stringWithFormat:@"Unexpected queueController class found: %@", v9];
      }
    }

    else
    {
      string = [MEMORY[0x1E696AEC0] stringWithFormat:@"No queue controller for %@", playerCopy];
    }
  }

  else
  {
    string = [MEMORY[0x1E696AEC0] stringWithFormat:@"No player found for %@", playerCopy];
  }

  return string;
}

@end