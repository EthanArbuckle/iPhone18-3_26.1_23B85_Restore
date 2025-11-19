@interface MPCQueueController
+ (BOOL)isSupportedSessionType:(id)a3 reason:(id *)a4;
+ (id)allKnownSessionTypes;
+ (id)describePlayer:(id)a3;
+ (int64_t)behaviorForQueue:(id)a3;
+ (void)registerPublisher:(id)a3;
+ (void)unregisterPublisher:(id)a3;
- (BOOL)_playerItemDidBecomeActiveWithContentItemID:(id)a3;
- (BOOL)_withRestorableBehavior:(id)a3;
- (BOOL)_withTransportableBehavior:(id)a3;
- (BOOL)canNextTrackForContentItemID:(id)a3 reason:(id *)a4;
- (BOOL)canPreviousTrackForContentItemID:(id)a3 reason:(id *)a4;
- (BOOL)containsRestorableContent;
- (BOOL)isEmpty;
- (BOOL)isExportableSessionType:(id)a3 forContentItemID:(id)a4 reason:(id *)a5;
- (BOOL)isOneShotExportableSessionForContentItemID:(id)a3 reason:(id *)a4;
- (BOOL)isUserSelectedContentItemID:(id)a3;
- (MPCPlaybackEngineEventStream)eventStream;
- (MPCPlaybackIntent)fallbackPlaybackIntent;
- (MPCQueueController)init;
- (MPCQueueController)initWithBehaviorType:(int64_t)a3 sessionID:(id)a4;
- (MPCQueueController)initWithCoder:(id)a3;
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
- (id)_contentItemIDWithOffset:(int64_t)a3 fromItemID:(id)a4 mode:(int64_t)a5 didReachEnd:(BOOL *)a6;
- (id)_itemForContentItemID:(id)a3 allowReuse:(BOOL)a4;
- (id)_stateDictionaryIncludingQueue:(BOOL)a3;
- (id)beginEditWithReason:(id)a3;
- (id)beginExternalSyncEditWithReason:(id)a3;
- (id)contentItemIDAtIndex:(int64_t)a3;
- (id)contentItemIDWithoutRepeatIteration:(id)a3;
- (id)contentItemIDsFromOffset:(int64_t)a3 toOffset:(int64_t)a4 mode:(int64_t)a5 nowPlayingIndex:(int64_t *)a6;
- (id)segmentForCodingKey:(id)a3;
- (id)startPlayerItemContinuable;
- (int64_t)displayIndexForContentItemID:(id)a3;
- (int64_t)displayItemCount;
- (int64_t)targetContentItemSource;
- (int64_t)versionForSegment:(id)a3;
- (void)_commitEdit:(id)a3;
- (void)_currentItemDidChangeFromItem:(id)a3 toItem:(id)a4;
- (void)_emitEventsForItemChangeFromItem:(id)a3 toCurrentItem:(id)a4;
- (void)_evaluateContextAwareTriggersWithReason:(id)a3;
- (void)_evaluateCurrentItemWithEdit:(id)a3;
- (void)_rollbackEdit:(id)a3;
- (void)_setTargetContentItemID:(id)a3 source:(int64_t)a4;
- (void)_updateQueueIndexForItemIfNeeded:(id)a3;
- (void)_withDynamicBehavior:(id)a3;
- (void)_withExternalSyncBehavior:(id)a3;
- (void)_withUpNextBehavior:(id)a3;
- (void)dealloc;
- (void)didConnectToPlaybackEngine:(id)a3;
- (void)didDisconnectFromPlaybackEngine:(id)a3;
- (void)didRestoreVersion:(int64_t)a3 forSegment:(id)a4;
- (void)didSignificantlyChangeItem:(id)a3;
- (void)donateStartPlayerItem:(id)a3 completion:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)engine:(id)a3 didChangeItemElapsedTime:(double)a4 rate:(float)a5;
- (void)engine:(id)a3 didChangeToState:(unint64_t)a4;
- (void)engine:(id)a3 didReachEndOfQueueWithReason:(id)a4;
- (void)enumerateContentItemIDsInMode:(int64_t)a3 block:(id)a4;
- (void)finalizeStateRestorationWithLoadingItemReady:(id)a3 completion:(id)a4;
- (void)incrementVersionForSegment:(id)a3;
- (void)jumpToContentItemID:(id)a3;
- (void)jumpToContentItemID:(id)a3 direction:(int64_t)a4;
- (void)jumpToFirstContentItemWithSource:(int64_t)a3;
- (void)performAfterEdits:(id)a3;
- (void)performAllowingEditsToChangeCurrentItem:(id)a3;
- (void)performSetQueue:(id)a3 loadingItemReady:(id)a4 completion:(id)a5;
- (void)playerItemDidBecomeCurrent:(id)a3;
- (void)upNextBehaviorDidChange;
- (void)willConnectToPlaybackEngine:(id)a3;
- (void)willDisconnectFromPlaybackEngine:(id)a3;
@end

@implementation MPCQueueController

+ (id)allKnownSessionTypes
{
  v2 = +[_MPCQueueControllerRegistry shared];
  v3 = [v2 transportableExtensions];

  v4 = NSAllMapTableValues(v3);
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

- (void)donateStartPlayerItem:(id)a3 completion:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(MPCQueueController *)self startPlayerItemContinuable];

  if (v8)
  {
    v9 = [(MPCQueueController *)self engineID];
    v10 = [(MPCQueueController *)self startPlayerItemContinuable];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __55__MPCQueueController_donateStartPlayerItem_completion___block_invoke;
    v15[3] = &unk_1E8237B08;
    v16 = v9;
    v17 = self;
    v18 = v6;
    v19 = v7;
    v11 = v9;
    [v10 donateStartPlayerItem:v18 completion:v15];
  }

  else
  {
    v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [(MPCQueueController *)self engineID];
      v14 = [(MPCQueueController *)self sessionID];
      *buf = 138543618;
      v21 = v13;
      v22 = 2114;
      v23 = v14;
      _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_ERROR, "[PSYNC:%{public}@:%{public}@] donateStartPlayerItem | failed to donate startPlayerItem since the behavior does not support start player item donation", buf, 0x16u);
    }

    v11 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:76 debugDescription:@"Behavior does not support start player item donation"];
    (*(v7 + 2))(v7, v11);
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

- (id)_stateDictionaryIncludingQueue:(BOOL)a3
{
  v3 = a3;
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
        v10 = @"UserSelected";
      }

      else
      {
        v10 = @"NaturalTransition";
      }

      goto LABEL_25;
    }

    if (!targetContentItemSource)
    {
      v10 = @"Unknown";
      goto LABEL_25;
    }

    if (targetContentItemSource == 1)
    {
      v10 = @"StartItem";
      goto LABEL_25;
    }
  }

  else
  {
    if (targetContentItemSource <= 5)
    {
      if (targetContentItemSource == 4)
      {
        v10 = @"ExternalSync";
      }

      else
      {
        v10 = @"Redirect";
      }

      goto LABEL_25;
    }

    switch(targetContentItemSource)
    {
      case 6:
        v10 = @"QueueBoundary";
        goto LABEL_25;
      case 7:
        v10 = @"Restored";
        goto LABEL_25;
      case 100:
        v10 = @"Loading";
        goto LABEL_25;
    }
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown/%ld", targetContentItemSource];
LABEL_25:
  if (v10)
  {
    v11 = v10;
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
  v16 = [(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl _stateDictionaryIncludingQueue:v3];
  v20[6] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:7];

  return v17;
}

- (void)performAllowingEditsToChangeCurrentItem:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (_MPCQueueControllerEditAllowsChangingCurrentItemPThreadKey_sOnceToken != -1)
  {
    dispatch_once(&_MPCQueueControllerEditAllowsChangingCurrentItemPThreadKey_sOnceToken, &__block_literal_global_924);
  }

  v5 = _MPCQueueControllerEditAllowsChangingCurrentItemPThreadKey_sThreadKey;
  pthread_setspecific(_MPCQueueControllerEditAllowsChangingCurrentItemPThreadKey_sThreadKey, 1);
  v6 = [MEMORY[0x1E695DF70] array];
  potentialCurrentItemEdits = self->_potentialCurrentItemEdits;
  self->_potentialCurrentItemEdits = v6;

  v4[2](v4);
  pthread_setspecific(v5, 0);
  if (!self->_targetContentItemID && [(NSMutableArray *)self->_potentialCurrentItemEdits count])
  {
    v8 = [(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl contentItemIDEnumeratorStartingAfterContentItemID:0 mode:2 options:0];
    v9 = [v8 nextObject];

    [(MPCQueueController *)self _setTargetContentItemID:v9 source:0];
  }
}

- (void)_updateQueueIndexForItemIfNeeded:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 isRadioItem] & 1) == 0 && (objc_msgSend(objc_opt_class(), "isPlaceholder") & 1) == 0)
  {
    v6 = [v5 contentItemID];
    v7 = v6;
    if (v6 == self->_targetContentItemID)
    {
    }

    else
    {
      v8 = [(NSString *)v6 isEqual:?];

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

    v13 = [v5 contentItemID];
    v14 = [(MPCQueueController *)self displayIndexForContentItemID:v13];

    v15 = [(MPCQueueController *)self displayItemCount];
    v16 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
    if (v15 >= 1)
    {
      v17 = [MEMORY[0x1E696AD98] numberWithInteger:v15];
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
      v20 = [v5 contentItemID];
      v21 = [v19 initWithIdentifier:v20];

      [v21 setNowPlayingInfo:v16];
    }

    v22 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    v23 = v22;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      v24 = 134218240;
      v25 = v14;
      v26 = 2048;
      v27 = v15;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v23, OS_SIGNPOST_INTERVAL_END, v10, "qc:_updateContentItemQueueIndexForItem", "index=%ld count=%ld", &v24, 0x16u);
    }
  }

LABEL_21:
}

- (id)_itemForContentItemID:(id)a3 allowReuse:(BOOL)a4
{
  v4 = a4;
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v9 = 0;
    goto LABEL_11;
  }

  if (v4)
  {
    v7 = [(MPAVItem *)self->_currentItem contentItemID];
    v8 = [v7 isEqual:v6];

    if (v8)
    {
      v9 = self->_currentItem;
      goto LABEL_11;
    }
  }

  v10 = v6;
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

  v9 = [(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl _itemForContentItemID:v10 allowReuse:v4];
  [(MPCQueueController *)self _updateQueueIndexForItemIfNeeded:v9];
  if ([(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl playbackPositionRestorationPolicy]== 1 && self->_lastSavedTime > 0.0)
  {
    v14 = [(MPAVItem *)v9 contentItemID];
    v15 = v14;
    if (v14 == self->_restoreLastStartTimePositionToContentItemID)
    {
    }

    else
    {
      v16 = [(NSString *)v14 isEqual:?];

      if (!v16)
      {
        goto LABEL_25;
      }
    }

    if (([(MPAVItem *)v9 isAlwaysLive]& 1) == 0)
    {
      v17 = [(MPCQueueController *)self playbackEngine];
      v18 = _MPCLogCategoryPlayback();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v17 engineID];
        v20 = [(MPCQueueController *)self sessionID];
        lastSavedTime = self->_lastSavedTime;
        v26 = 138544130;
        v27 = v19;
        v28 = 2114;
        v29 = v20;
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
    v24 = [WeakRetained eventStream];
    [(MPAVItem *)v9 setEventStream:v24];

    v25 = [WeakRetained playerID];
    [(MPAVItem *)v9 setPlayerID:v25];

    goto LABEL_10;
  }

LABEL_11:

  return v9;
}

- (void)_emitEventsForItemChangeFromItem:(id)a3 toCurrentItem:(id)a4
{
  v258[4] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 modelPlayEvent];
  v8 = [v7 genericObjectRepresentation];
  v9 = [v6 modelPlayEvent];
  v10 = [v9 genericObjectRepresentation];
  v11 = 0;
  v12 = v8 == 0;
  if (!v10)
  {
    v12 = 0;
  }

  v229 = v12;
  if (v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = v8 != 0;
  }

  v226 = v13;
  v235 = v10;
  v236 = v8;
  if (v8 && v10)
  {
    v14 = [v6 queueSectionID];
    v15 = [v5 queueSectionID];
    v16 = v14;
    v17 = v15;
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

    v22 = [v236 identifiers];
    v23 = [v235 identifiers];
    v11 = [v22 intersectsSet:v23] ^ 1;

    goto LABEL_13;
  }

LABEL_14:
  if (v9 && v7 && !v11)
  {
    v24 = [v7 mpc_nestedPlayEvent];
    v25 = [v9 mpc_nestedPlayEvent];
    v26 = v25;
    if ((v24 || !v25) && (!v24 || v25))
    {
      v27 = [v24 identifiers];
      v28 = [v26 identifiers];
      v11 = [v27 intersectsSet:v28];
    }

    else
    {
      v11 = 1;
    }
  }

  v29 = 0;
  v30 = v5 == 0;
  if (!v6)
  {
    v30 = 0;
  }

  v232 = v30;
  if (v6)
  {
    v31 = 0;
  }

  else
  {
    v31 = v5 != 0;
  }

  if (v5 && v6)
  {
    v32 = [v5 contentItemID];
    v33 = [v6 contentItemID];
    v34 = v32;
    v35 = v33;
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
        v29 = 1;
LABEL_36:

        goto LABEL_37;
      }
    }

    v29 = [v5 didReachEnd];
    goto LABEL_36;
  }

LABEL_37:
  v238 = [v5 queueItemID];
  if ([v6 conformsToProtocol:&unk_1F459C6E8])
  {
    v40 = v6;
  }

  else
  {
    v40 = 0;
  }

  v41 = v40;
  v42 = v41;
  if (v5 == v6 && ([v41 previousQueueItemID], v43 = objc_claimAutoreleasedReturnValue(), v43, v43))
  {
    v44 = [v42 previousQueueItemID];
    v45 = [v6 queueItemID];
    v46 = v44;
    v47 = v45;
    if (v46 == v47)
    {
      v48 = 1;
    }

    else
    {
      v48 = [v46 isEqual:v47];
    }

    v49 = [v42 previousQueueItemID];

    if (v48)
    {
      v29 = 0;
      v241 = 0;
    }

    else
    {
      v50 = [v42 jingleTimedMetadata];
      v241 = v50 != 0;

      v29 = 1;
    }

    v238 = v49;
  }

  else
  {
    v241 = 0;
  }

  v243 = [(MPCQueueController *)self playbackEngine];
  v51 = v31 | v29;
  v52 = 0x1E696A000uLL;
  v237 = v9;
  v242 = v42;
  v234 = v7;
  if (v51)
  {
    v223 = v29;
    v53 = MEMORY[0x1E696AD98];
    v54 = v5;
    v55 = v5;
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
    v63 = [v243 eventStream];
    if ([v58 isPlaceholder])
    {
      v64 = @"item-placeholder-end";
    }

    else
    {
      v64 = @"item-end";
    }

    v257[0] = @"queue-section-id";
    v65 = [v58 queueSectionID];
    v258[0] = v65;
    v258[1] = v238;
    v257[1] = @"queue-item-id";
    v257[2] = @"item-end-position";
    v66 = v62;
    if (v241)
    {
      v67 = [v6 lastMetadataChangeTime];
      v7 = v67;
      if (v67)
      {
        v66 = v67;
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
    [v63 emitEventType:v64 payload:v69];

    if (v241)
    {
    }

    v5 = v54;
    v7 = v234;
    v9 = v237;
    v42 = v242;
    v52 = 0x1E696A000;
    v29 = v223;
  }

  if ((v226 | v11))
  {
    v70 = [v7 genericObjectRepresentation];
    v71 = [v70 anyObject];
    v72 = [v71 identifiers];

    if (([v72 isPlaceholder] & 1) == 0)
    {
      v73 = v29;
      v74 = v52;
      v75 = [v243 eventStream];
      v255[0] = @"queue-section-id";
      v76 = [v5 queueSectionID];
      v255[1] = @"container-ids";
      v256[0] = v76;
      v77 = v72;
      if (!v72)
      {
        v77 = [MEMORY[0x1E695DFB0] null];
      }

      v256[1] = v77;
      v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v256 forKeys:v255 count:2];
      [v75 emitEventType:@"container-end" payload:v78];

      if (!v72)
      {
      }

      v9 = v237;
      v52 = v74;
      v29 = v73;
      v7 = v234;
    }

    v42 = v242;
  }

  if ((v229 | v11))
  {
    [(MPCQueueController *)self incrementVersionForSegment:@"containerPayload"];
    v79 = [v9 genericObjectRepresentation];
    v80 = [v79 anyObject];
    v81 = [v80 identifiers];

    if (([v81 isPlaceholder] & 1) == 0)
    {
      v227 = [v243 eventStream];
      v221 = [v6 queueSectionID];
      v230 = v5;
      v82 = v9;
      v83 = [v82 genericObjectRepresentation];
      v84 = [v83 anyObject];
      v85 = [v84 identifiers];

      [MEMORY[0x1E695DF90] dictionaryWithCapacity:5];
      v224 = v29;
      v87 = v86 = v7;
      [v87 setObject:v221 forKeyedSubscript:@"queue-section-id"];
      v88 = [v85 modelKind];
      [v87 setObject:v88 forKeyedSubscript:@"container-kind"];

      [v87 setObject:v85 forKeyedSubscript:@"container-ids"];
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
      v93 = v83;
      v247 = v93;
      v94 = v87;
      v7 = v86;
      v29 = v224;
      v95 = v94;
      v248 = v94;
      [v90 performWithoutEnforcement:v244];
      v96 = v95;

      v52 = 0x1E696A000uLL;
      v5 = v230;

      [v227 emitEventType:@"container-begin" payload:v96];
      v9 = v237;
    }

    v42 = v242;
  }

  if ((v232 | v29))
  {
    [(MPCQueueController *)self incrementVersionForSegment:@"itemPayload"];
    v97 = [v6 modelGenericObject];
    v98 = [v97 flattenedGenericObject];

    v99 = [v98 anyObject];
    v100 = [v99 identifiers];

    v228 = v100;
    if ([v98 type] == 1)
    {
      v101 = [v98 song];
      v102 = [v101 isArtistUploadedContent];

      v103 = *(v52 + 3480);
      v104 = [v98 song];
      v105 = [v103 numberWithInteger:{objc_msgSend(v104, "discNumber")}];

      v106 = *(v52 + 3480);
      v107 = [v98 song];
      v108 = [v107 trackNumber];
      v109 = v106;
      v100 = v228;
      v240 = [v109 numberWithInteger:v108];

      v110 = v105;
    }

    else
    {
      v102 = 0;
      v110 = 0;
      v240 = 0;
    }

    [v6 durationIfAvailable];
    v112 = v111;
    v113 = [v6 playbackInfo];
    [v6 _expectedStartTimeWithPlaybackInfo:v113];
    v115 = v114;
    v210 = v113;
    [v6 _expectedStopTimeWithPlaybackInfo:v113];
    v117 = v116;
    v233 = [v243 eventStream];
    v118 = [v6 isPlaceholder];
    v119 = @"item-begin";
    if (v118)
    {
      v119 = @"item-placeholder-begin";
    }

    v197 = v119;
    v253[0] = @"queue-section-id";
    v209 = [v6 queueSectionID];
    v254[0] = v209;
    v253[1] = @"queue-item-id";
    v208 = [v6 queueItemID];
    v254[1] = v208;
    v253[2] = @"item-kind";
    v120 = [v100 modelKind];
    v207 = v120;
    if (!v120)
    {
      v120 = [MEMORY[0x1E695DFB0] null];
    }

    v189 = v120;
    v254[2] = v120;
    v253[3] = @"item-ids";
    v121 = v100;
    if (!v100)
    {
      v121 = [MEMORY[0x1E695DFB0] null];
    }

    v188 = v121;
    v254[3] = v121;
    v253[4] = @"item-metadata";
    v251[0] = @"item-duration";
    v206 = [*(v52 + 3480) numberWithDouble:v112];
    v252[0] = v206;
    v251[1] = @"item-title";
    v122 = [v6 mainTitle];
    v205 = v122;
    if (!v122)
    {
      v122 = [MEMORY[0x1E695DFB0] null];
    }

    v187 = v122;
    v252[1] = v122;
    v251[2] = @"item-has-video";
    v204 = [*(v52 + 3480) numberWithInt:{objc_msgSend(v6, "type") == 2}];
    v252[2] = v204;
    v251[3] = @"item-initial-position";
    v123 = [v6 lastMetadataChangeTime];
    v203 = v123;
    if (v123)
    {
      v202 = 0;
    }

    else
    {
      v123 = [v6 initialPlaybackStartTime];
      if (v123)
      {
        v202 = 0;
        v168 = v123;
      }

      else
      {
        v123 = [MEMORY[0x1E695DFB0] null];
        v168 = 0;
        v202 = 1;
      }
    }

    v191 = v123;
    v252[3] = v123;
    v251[4] = @"item-start-boundary";
    v201 = [*(v52 + 3480) numberWithDouble:{v115, v168}];
    v252[4] = v201;
    v251[5] = @"item-end-boundary";
    v200 = [*(v52 + 3480) numberWithDouble:v117];
    v252[5] = v200;
    v251[6] = @"item-artist-uploaded";
    v199 = [*(v52 + 3480) numberWithBool:v102];
    v252[6] = v199;
    v251[7] = @"item-is-start-item";
    v198 = [*(v52 + 3480) numberWithBool:{objc_msgSend(v6, "isStartItem")}];
    v252[7] = v198;
    v251[8] = @"item-is-placeholder";
    v196 = [v6 isPlaceholder];
    if (v196)
    {
      v124 = MEMORY[0x1E695E118];
    }

    else
    {
      v124 = [MEMORY[0x1E695DFB0] null];
    }

    v190 = v124;
    v252[8] = v124;
    v251[9] = @"requires-mpaf";
    v195 = [*(v52 + 3480) numberWithBool:{objc_msgSend(v42, "shouldReportPlayEvents")}];
    v252[9] = v195;
    v251[10] = @"uses-bookmarking";
    v194 = [*(v52 + 3480) numberWithBool:{objc_msgSend(v6, "usesBookmarking")}];
    v252[10] = v194;
    v251[11] = @"explicit-treatment";
    v125 = [v6 explicitBadge];
    v126 = v125;
    if (!v125)
    {
      v125 = [MEMORY[0x1E695DFB0] null];
    }

    v186 = v125;
    v252[11] = v125;
    v251[12] = @"disc-number";
    v127 = v110;
    if (!v110)
    {
      v127 = [MEMORY[0x1E695DFB0] null];
    }

    v185 = v127;
    v252[12] = v127;
    v251[13] = @"track-number";
    v128 = v240;
    if (!v240)
    {
      v128 = [MEMORY[0x1E695DFB0] null];
    }

    v184 = v128;
    v252[13] = v128;
    v251[14] = @"podcast-store-id";
    v129 = [v6 podcastStoreID];
    v225 = v129;
    if (!v129)
    {
      v129 = [MEMORY[0x1E695DFB0] null];
    }

    v183 = v129;
    v252[14] = v129;
    v251[15] = @"podcast-feed-url";
    v130 = [v6 podcastFeedURL];
    v222 = v130;
    if (!v130)
    {
      v130 = [MEMORY[0x1E695DFB0] null];
    }

    v182 = v130;
    v252[15] = v130;
    v251[16] = @"podcast-asset-url";
    v131 = [v6 podcastAssetURL];
    v220 = v131;
    if (!v131)
    {
      v131 = [MEMORY[0x1E695DFB0] null];
    }

    v181 = v131;
    v252[16] = v131;
    v251[17] = @"podcast-item-type";
    v132 = [v6 podcastItemType];
    v219 = v132;
    if (!v132)
    {
      v132 = [MEMORY[0x1E695DFB0] null];
    }

    v180 = v132;
    v252[17] = v132;
    v251[18] = @"podcast-media-type";
    v133 = [v6 podcastMediaType];
    v218 = v133;
    if (!v133)
    {
      v133 = [MEMORY[0x1E695DFB0] null];
    }

    v179 = v133;
    v252[18] = v133;
    v251[19] = @"podcast-price-type";
    v134 = [v6 podcastPriceType];
    v217 = v134;
    if (!v134)
    {
      v134 = [MEMORY[0x1E695DFB0] null];
    }

    v178 = v134;
    v252[19] = v134;
    v251[20] = @"podcast-content-guid";
    v135 = [v6 podcastContentGUID];
    v216 = v135;
    if (!v135)
    {
      v135 = [MEMORY[0x1E695DFB0] null];
    }

    v177 = v135;
    v252[20] = v135;
    v251[21] = @"podcast-subscription-state";
    v136 = [v6 podcastSubscriptionState];
    v215 = v136;
    if (!v136)
    {
      v136 = [MEMORY[0x1E695DFB0] null];
    }

    v176 = v136;
    v252[21] = v136;
    v251[22] = @"podcast-news-subscription-information";
    v137 = [v6 newsSubscriptionInformation];
    v214 = v137;
    if (!v137)
    {
      v137 = [MEMORY[0x1E695DFB0] null];
    }

    v193 = v126;
    v175 = v137;
    v252[22] = v137;
    v251[23] = @"podcast-music-subscription-information";
    v138 = [v6 musicSubscriptionInformation];
    v213 = v138;
    if (!v138)
    {
      v138 = [MEMORY[0x1E695DFB0] null];
    }

    v174 = v138;
    v252[23] = v138;
    v251[24] = @"podcast-subscribable";
    v139 = [*(v52 + 3480) numberWithBool:{objc_msgSend(v6, "podcastIsSubscribable")}];
    v192 = v139;
    if (!v139)
    {
      v139 = [MEMORY[0x1E695DFB0] null];
    }

    v173 = v139;
    v252[24] = v139;
    v251[25] = @"podcast-page-context";
    v140 = [v6 podcastPageContext];
    v141 = v140;
    if (!v140)
    {
      v140 = [MEMORY[0x1E695DFB0] null];
    }

    v212 = v98;
    v172 = v140;
    v252[25] = v140;
    v251[26] = @"podcast-preferred-rate";
    v142 = [v6 podcastsPreferredPlaybackRate];
    v143 = v142;
    if (!v142)
    {
      v142 = [MEMORY[0x1E695DFB0] null];
    }

    v211 = v110;
    v231 = v5;
    v171 = v142;
    v252[26] = v142;
    v251[27] = @"podcast-playback-setting-source";
    v144 = [v6 playbackSettingsSource];
    v145 = v144;
    if (!v144)
    {
      v144 = [MEMORY[0x1E695DFB0] null];
    }

    v170 = v144;
    v252[27] = v144;
    v146 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v252 forKeys:v251 count:28];
    v254[4] = v146;
    v253[5] = @"item-start-position";
    v147 = [v6 initialPlaybackStartTime];
    v148 = v147;
    if (!v147)
    {
      v148 = [MEMORY[0x1E695DFB0] null];
    }

    v254[5] = v148;
    v253[6] = @"radio-track-info";
    v149 = [v42 trackInfoData];
    v150 = v149;
    if (!v149)
    {
      v150 = [MEMORY[0x1E695DFB0] null];
    }

    v254[6] = v150;
    v151 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v254 forKeys:v253 count:7];
    [v233 emitEventType:v197 payload:v151];

    if (!v149)
    {
    }

    if (!v147)
    {
    }

    v7 = v234;
    v42 = v242;
    if (!v145)
    {
    }

    v5 = v231;
    if (!v143)
    {
    }

    if (!v141)
    {
    }

    if (!v192)
    {
    }

    v9 = v237;
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
        if ((v196 & 1) == 0)
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
    v162 = [v243 eventStream];
    v249[0] = @"queue-section-id";
    v163 = [v6 queueSectionID];
    v250[0] = v163;
    v249[1] = @"queue-item-id";
    v164 = [v6 queueItemID];
    v250[1] = v164;
    v249[2] = @"item-timed-metadata";
    v165 = [v42 jingleTimedMetadata];
    v166 = v165;
    if (!v165)
    {
      v166 = [MEMORY[0x1E695DFB0] null];
    }

    v250[2] = v166;
    v167 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v250 forKeys:v249 count:3];
    [v162 emitEventType:@"item-timed-metadata-ping" payload:v167];

    if (!v165)
    {
    }

    v42 = v242;
  }
}

- (void)_currentItemDidChangeFromItem:(id)a3 toItem:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);
  v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [WeakRetained engineID];
    v11 = [(MPCQueueController *)self sessionID];
    v12 = [v6 contentItemID];
    v13 = [v7 contentItemID];
    v33 = 138544130;
    v34 = v10;
    v35 = 2114;
    v36 = v11;
    v37 = 2114;
    v38 = v12;
    v39 = 2114;
    v40 = v13;
    _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] _currentItemDidChangeFromItem:%{public}@ toItem:%{public}@ | emitting events for item change", &v33, 0x2Au);
  }

  [(MPCQueueController *)self _emitEventsForItemChangeFromItem:v6 toCurrentItem:v7];
  v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [WeakRetained engineID];
    v16 = [(MPCQueueController *)self sessionID];
    v17 = [v6 contentItemID];
    v18 = [v7 contentItemID];
    v33 = 138544130;
    v34 = v15;
    v35 = 2114;
    v36 = v16;
    v37 = 2114;
    v38 = v17;
    v39 = 2114;
    v40 = v18;
    _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] _currentItemDidChangeFromItem:%{public}@ toItem:%{public}@ | updating current item", &v33, 0x2Au);
  }

  [(MPAVItem *)self->_currentItem setObserver:0];
  objc_storeStrong(&self->_currentItem, a4);
  [(MPAVItem *)self->_currentItem setObserver:self];
  if (v6 && [v6 isPlaceholder] && -[MPCQueueControllerBehaviorImplementation playbackPositionRestorationPolicy](self->_behaviorImpl, "playbackPositionRestorationPolicy") == 1)
  {
    v19 = [v7 initialPlaybackStartTime];
    [v19 doubleValue];
    self->_lastSavedTime = v20;

    v21 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [WeakRetained engineID];
      v23 = [(MPCQueueController *)self sessionID];
      v24 = [v6 contentItemID];
      v25 = [v7 contentItemID];
      lastSavedTime = self->_lastSavedTime;
      v33 = 138544386;
      v34 = v22;
      v35 = 2114;
      v36 = v23;
      v37 = 2114;
      v38 = v24;
      v39 = 2114;
      v40 = v25;
      v41 = 2048;
      v42 = lastSavedTime;
      _os_log_impl(&dword_1C5C61000, v21, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] _currentItemDidChangeFromItem:%{public}@ toItem:%{public}@ | updating saved time [item changed] lastSavedTime=%f", &v33, 0x34u);
    }
  }

  [(MPCQueueController *)self _updateQueueIndexForItemIfNeeded:self->_currentItem];
  v27 = [v6 contentItemID];
  if ([v27 hasPrefix:@"⏳"])
  {

LABEL_14:
    v27 = 0;
LABEL_15:
    v29 = 0;
    goto LABEL_16;
  }

  v28 = [v27 hasPrefix:@"♻️"];

  if (v28)
  {
    goto LABEL_14;
  }

  if (!v27)
  {
    goto LABEL_15;
  }

  v29 = [(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl componentsForContentItemID:v27];
LABEL_16:
  v30 = [v7 contentItemID];
  if (v30)
  {
    v31 = [(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl componentsForContentItemID:v30];
  }

  else
  {
    v31 = 0;
  }

  v32 = [v29 behaviorFlags];
  if (v32 != [v31 behaviorFlags])
  {
    -[MPCQueueControllerBehaviorImplementation activeItemFlagsDidChange:](self->_behaviorImpl, "activeItemFlagsDidChange:", [v31 behaviorFlags]);
  }

  [(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl currentItemDidChangeFromContentItemID:v27 toContentItemID:v30];
  [(MPCQueueController *)self incrementVersionForSegment:@"metadata"];
}

- (void)_evaluateContextAwareTriggersWithReason:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
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
      v15 = v5;
      v16 = a2;
      [(MPCQueueController *)self _withDynamicBehavior:v13];

      goto LABEL_8;
    }
  }

  v9 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [WeakRetained engineID];
    v11 = [(MPCQueueController *)self sessionID];
    targetContentItemID = self->_targetContentItemID;
    *buf = 138544130;
    v18 = v10;
    v19 = 2114;
    v20 = v11;
    v21 = 2114;
    v22 = v5;
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

- (id)_contentItemIDWithOffset:(int64_t)a3 fromItemID:(id)a4 mode:(int64_t)a5 didReachEnd:(BOOL *)a6
{
  v10 = a4;
  v11 = v10;
  if (!v10)
  {
    goto LABEL_5;
  }

  if (a3)
  {
    if ([v10 hasPrefix:@"⏳"] & 1) != 0 || (objc_msgSend(v11, "hasPrefix:", @"♻️"))
    {
LABEL_5:
      v12 = 0;
      goto LABEL_29;
    }

    v13 = [(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl contentItemIDEnumeratorStartingAfterContentItemID:v11 mode:a5 options:a3 >> 63];
    v12 = 0;
    if (((a3 & 0x4000000000000000) != 0) ^ __OFSUB__(a3, -a3) | (a3 == -a3))
    {
      v14 = -a3;
    }

    else
    {
      v14 = a3;
    }

    v15 = v14 + 1;
    while (1)
    {
      v16 = [v13 nextObject];
      if (!v16)
      {
        break;
      }

      v17 = v16;

      behaviorImpl = self->_behaviorImpl;
      if (a3 < 1)
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

    if (a3 < 1)
    {
      v19 = 0;
    }

    else
    {

      v12 = 0;
      v19 = 1;
    }

LABEL_22:
    if (a6)
    {
      *a6 = v19;
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
    v12 = v10;
  }

LABEL_29:

  return v12;
}

- (void)_rollbackEdit:(id)a3
{
  v4 = a3;
  v3 = v4;
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

- (void)_commitEdit:(id)a3
{
  v4 = a3;
  v3 = v4;
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

- (void)_evaluateCurrentItemWithEdit:(id)a3
{
  v86 = *MEMORY[0x1E69E9840];
  v5 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);
  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [WeakRetained engineID];
    v9 = [(MPCQueueController *)self sessionID];
    v10 = [v5 identifier];
    v11 = [v5 label];
    *buf = 138544130;
    v77 = v8;
    v78 = 2114;
    v79 = v9;
    v80 = 2114;
    v81 = v10;
    v82 = 2114;
    v83 = v11;
    _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] _evaluateCurrentItemWithEdit:%{public}@ | committed %{public}@", buf, 0x2Au);
  }

  v12 = [(MPCQueueController *)self delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v5;
    v14 = [v13 targetContentItemID];
    if (v14)
    {
      v15 = v14;
      v16 = [(NSString *)self->_targetContentItemID isEqualToString:v14];
      v17 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      if (!v16)
      {
        if (v18)
        {
          v40 = [WeakRetained engineID];
          v41 = [(MPCQueueController *)self sessionID];
          v42 = [v13 identifier];
          *buf = 138544130;
          v77 = v40;
          v78 = 2114;
          v79 = v41;
          v80 = 2114;
          v81 = v42;
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
        [v12 queueControllerDidChangeContents:self];
LABEL_66:

        goto LABEL_67;
      }

      v19 = [WeakRetained engineID];
      v20 = [(MPCQueueController *)self sessionID];
      v21 = [v13 identifier];
      *buf = 138544130;
      v77 = v19;
      v78 = 2114;
      v79 = v20;
      v80 = 2114;
      v81 = v21;
      v82 = 2114;
      v83 = v15;
      v22 = "[PSYNC:%{public}@:%{public}@] _evaluateCurrentItemWithEdit:%{public}@ | no change detected [external sync, current target valid] targetContentItemID=%{public}@";
LABEL_8:
      _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_DEFAULT, v22, buf, 0x2Au);

      goto LABEL_9;
    }
  }

  v13 = [v5 suggestedStartingContentItemID];
  if (([v5 allowsChangingCurrentItem] & 1) == 0)
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

              v19 = [WeakRetained engineID];
              v20 = [(MPCQueueController *)self sessionID];
              v21 = [v5 identifier];
              *buf = 138544130;
              v77 = v19;
              v78 = 2114;
              v79 = v20;
              v80 = 2114;
              v81 = v21;
              v82 = 2114;
              v83 = v15;
              v22 = "[PSYNC:%{public}@:%{public}@] _evaluateCurrentItemWithEdit:%{public}@ | no change detected [current target valid] targetContentItemID=%{public}@";
              goto LABEL_8;
            }

            v48 = [v5 suggestedContentItemIDsForDeletedContentItemIDs];
            v49 = [v48 objectForKeyedSubscript:v15];

            if (v49)
            {
              v50 = _MPCLogCategoryQueueController();
              if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
              {
                v72 = [WeakRetained engineID];
                v51 = [(MPCQueueController *)self sessionID];
                v52 = [v5 identifier];
                *buf = 138544386;
                v77 = v72;
                v78 = 2114;
                v79 = v51;
                v80 = 2114;
                v81 = v52;
                v53 = v52;
                v82 = 2114;
                v83 = v15;
                v84 = 2114;
                v85 = v13;
                _os_log_impl(&dword_1C5C61000, v50, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] _evaluateCurrentItemWithEdit:%{public}@ | updating target [prong 1: current target invalid, edit suggested replacement] invalidID=%{public}@ targetContentItemID=%{public}@", buf, 0x34u);
              }

              [(MPCQueueController *)self _setTargetContentItemID:v49 source:5];
              goto LABEL_65;
            }
          }

LABEL_53:
          v49 = [(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl contentItemIDEnumeratorStartingAfterContentItemID:v15 mode:2 options:0];
          v54 = [v49 nextObject];
          if (v54)
          {
            if ([(NSString *)v15 isEqualToString:v54])
            {
              v68 = [MEMORY[0x1E696AAA8] currentHandler];
              [v68 handleFailureInMethod:a2 object:self file:@"MPCQueueController.m" lineNumber:1339 description:{@"Bug in %@: itemExistsForContentItemID returned NO while contentItemIDEnumeratorStartingAfterContentItemID returned the same contentItemID: %@", objc_opt_class(), v15}];
            }

            v55 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              [WeakRetained engineID];
              v56 = v69 = v12;
              [(MPCQueueController *)self sessionID];
              v57 = v73 = v49;
              v58 = [v5 identifier];
              *buf = 138544386;
              v77 = v56;
              v78 = 2114;
              v79 = v57;
              v80 = 2114;
              v81 = v58;
              v82 = 2114;
              v83 = v15;
              v84 = 2114;
              v85 = v54;
              _os_log_impl(&dword_1C5C61000, v55, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] _evaluateCurrentItemWithEdit:%{public}@ | updating target [prong 2: current target invalid, enumerated from invalid item] invalidID=%{public}@ targetContentItemID=%{public}@", buf, 0x34u);

              v49 = v73;
              v12 = v69;
            }

            v59 = self;
            v60 = v54;
          }

          else
          {
            v61 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
            v62 = os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT);
            if (!v13)
            {
              if (v62)
              {
                v71 = [WeakRetained engineID];
                v66 = [(MPCQueueController *)self sessionID];
                [v5 identifier];
                v67 = v75 = v49;
                *buf = 138544130;
                v77 = v71;
                v78 = 2114;
                v79 = v66;
                v80 = 2114;
                v81 = v67;
                v82 = 2114;
                v83 = v15;
                _os_log_impl(&dword_1C5C61000, v61, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] _evaluateCurrentItemWithEdit:%{public}@ | queue boundary [prong 4: current target invalid, no replacement found] invalidID=%{public}@", buf, 0x2Au);

                v49 = v75;
              }

              [(MPCQueueController *)self _setTargetContentItemID:0 source:0];
              [v12 queueControllerDidReachUnexpectedEndOfQueue:self];
              goto LABEL_64;
            }

            if (v62)
            {
              v70 = [WeakRetained engineID];
              [(MPCQueueController *)self sessionID];
              v63 = v74 = v49;
              v64 = [v5 identifier];
              *buf = 138544386;
              v77 = v70;
              v78 = 2114;
              v79 = v63;
              v80 = 2114;
              v81 = v64;
              v65 = v64;
              v82 = 2114;
              v83 = v15;
              v84 = 2114;
              v85 = v13;
              _os_log_impl(&dword_1C5C61000, v61, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] _evaluateCurrentItemWithEdit:%{public}@ | updating target [prong 3: current target invalid, edit suggested start item] invalidID=%{public}@ targetContentItemID=%{public}@", buf, 0x34u);

              v49 = v74;
            }

            v59 = self;
            v60 = v13;
          }

          [(MPCQueueController *)v59 _setTargetContentItemID:v60 source:5];
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
          v37 = [WeakRetained engineID];
          v38 = [(MPCQueueController *)self sessionID];
          v39 = [v5 identifier];
          *buf = 138544130;
          v77 = v37;
          v78 = 2114;
          v79 = v38;
          v80 = 2114;
          v81 = v39;
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

  if (!v13)
  {
    v31 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [WeakRetained engineID];
      v33 = [(MPCQueueController *)self sessionID];
      v34 = [v5 identifier];
      *buf = 138543874;
      v77 = v32;
      v78 = 2114;
      v79 = v33;
      v80 = 2114;
      v81 = v34;
      _os_log_impl(&dword_1C5C61000, v31, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] _evaluateCurrentItemWithEdit:%{public}@ | no suggested start item [edit allows item change]", buf, 0x20u);
    }

    [v12 queueControllerDidChangeContents:self];
    targetContentItemID = self->_targetContentItemID;
    goto LABEL_22;
  }

  if ([(NSString *)self->_targetContentItemID isEqualToString:v13]&& !self->_handlingQueueBoundary)
  {
    v44 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = [WeakRetained engineID];
      v46 = [(MPCQueueController *)self sessionID];
      v47 = [v5 identifier];
      *buf = 138544130;
      v77 = v45;
      v78 = 2114;
      v79 = v46;
      v80 = 2114;
      v81 = v47;
      v82 = 2114;
      v83 = v13;
      _os_log_impl(&dword_1C5C61000, v44, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] _evaluateCurrentItemWithEdit:%{public}@ | no change detected [edit allows item change] targetContentItemID=%{public}@", buf, 0x2Au);
    }

    goto LABEL_48;
  }

  v24 = [(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl itemExistsForContentItemID:v13];
  v25 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
  v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
  if (v24)
  {
    if (v26)
    {
      v27 = [WeakRetained engineID];
      v28 = [(MPCQueueController *)self sessionID];
      v29 = [v5 identifier];
      *buf = 138544130;
      v77 = v27;
      v78 = 2114;
      v79 = v28;
      v80 = 2114;
      v81 = v29;
      v82 = 2114;
      v83 = v13;
      v30 = "[PSYNC:%{public}@:%{public}@] _evaluateCurrentItemWithEdit:%{public}@ | updating target [edit allows item change] targetContentItemID=%{public}@";
LABEL_35:
      _os_log_impl(&dword_1C5C61000, v25, OS_LOG_TYPE_DEFAULT, v30, buf, 0x2Au);
    }
  }

  else if (v26)
  {
    v27 = [WeakRetained engineID];
    v28 = [(MPCQueueController *)self sessionID];
    v29 = [v5 identifier];
    *buf = 138544130;
    v77 = v27;
    v78 = 2114;
    v79 = v28;
    v80 = 2114;
    v81 = v29;
    v82 = 2114;
    v83 = v13;
    v30 = "[PSYNC:%{public}@:%{public}@] _evaluateCurrentItemWithEdit:%{public}@ | updating to UNKNOWN target [edit allows item change - item does NOT exist] targetContentItemID=%{public}@";
    goto LABEL_35;
  }

  objc_storeStrong(&self->_preferredFirstContentItemID, v13);
  if (self->_handlingQueueBoundary)
  {
    v43 = 6;
  }

  else
  {
    v43 = 1;
  }

  [(MPCQueueController *)self _setTargetContentItemID:v13 source:v43];
LABEL_48:
  [v12 queueControllerDidChangeContents:self];
LABEL_67:
}

- (void)didSignificantlyChangeItem:(id)a3
{
  currentItem = self->_currentItem;
  if (currentItem == a3)
  {
    [(MPCQueueController *)self _emitEventsForItemChangeFromItem:currentItem toCurrentItem:self->_currentItem];
  }
}

- (int64_t)displayIndexForContentItemID:(id)a3
{
  v4 = a3;
  v5 = self->_targetContentItemID;
  v6 = [(MPCQueueController *)self music];

  if (v6)
  {
    v7 = [(MPCQueueController *)self music];
    v8 = [v7 contentItemIDWithoutRepeatIteration:v4];

    v9 = [(MPCQueueController *)self music];
    v10 = [v9 contentItemIDWithoutRepeatIteration:v5];

    v5 = v10;
  }

  else
  {
    v8 = v4;
  }

  if (v8 == v5 || [(NSString *)v8 isEqual:v5])
  {
    v11 = [(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl contentItemIDEnumeratorStartingAfterContentItemID:0 mode:1 options:0];
    v12 = [v11 nextObject];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      while (1)
      {
        v15 = v13;
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
        v13 = [v11 nextObject];

        if (!v13)
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
  v2 = [(MPCQueueController *)self upNextBehavior];
  v3 = [v2 displayItemCount];

  return v3;
}

- (void)playerItemDidBecomeCurrent:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 contentItemID];
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);
  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [WeakRetained engineID];
    v9 = [(MPCQueueController *)self sessionID];
    v10 = 138543874;
    v11 = v8;
    v12 = 2114;
    v13 = v9;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] playerItemDidBecomeCurrent:%{public}@", &v10, 0x20u);
  }

  if ([(MPCQueueController *)self _playerItemDidBecomeActiveWithContentItemID:v5])
  {
    [(MPCQueueController *)self _currentItemDidChangeFromItem:self->_currentItem toItem:v4];
  }
}

- (BOOL)_playerItemDidBecomeActiveWithContentItemID:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);
  v7 = [(MPCQueueController *)self targetContentItemID];
  if (v7 == v5 || [(NSString *)v5 isEqual:v7])
  {
    v8 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [WeakRetained engineID];
      v10 = [(MPCQueueController *)self sessionID];
      *buf = 138544130;
      v33 = v9;
      v34 = 2114;
      v35 = v10;
      v36 = 2114;
      v37 = v5;
      v38 = 2114;
      v39 = v7;
      _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] _playerItemDidBecomeActiveWithContentItemID:%{public}@ | achieved sync [] targetItemID=%{public}@", buf, 0x2Au);
    }

    self->_syncResetAttempts = 0;
    v11 = 1;
  }

  else
  {
    v12 = [(MPCQueueController *)self delegate];
    if (self->_loadingContentItemID)
    {
      v13 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [WeakRetained engineID];
        v15 = [(MPCQueueController *)self sessionID];
        loadingContentItemID = self->_loadingContentItemID;
        syncResetAttempts = self->_syncResetAttempts;
        *buf = 138544386;
        v33 = v14;
        v34 = 2114;
        v35 = v15;
        v36 = 2114;
        v37 = v5;
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
        v29 = [MEMORY[0x1E696AAA8] currentHandler];
        [v29 handleFailureInMethod:a2 object:self file:@"MPCQueueController.m" lineNumber:1151 description:{@"MF did not synchronize within 5 resets: %@ != %@", v5, self->_loadingContentItemID}];
      }

      [v12 queueController:self didDetectMismatchForActiveContentItemID:v5 targetContentItemID:self->_loadingContentItemID];
      v11 = 0;
    }

    else
    {
      v31 = 0;
      v19 = [(MPCQueueController *)self contentItemIDWithCurrentItemOffset:v5 != 0 mode:3 didReachEnd:&v31];
      if (v19 == v5 || [(NSString *)v5 isEqual:v19])
      {
        v20 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [WeakRetained engineID];
          v22 = [(MPCQueueController *)self sessionID];
          *buf = 138543874;
          v33 = v21;
          v34 = 2114;
          v35 = v22;
          v36 = 2114;
          v37 = v5;
          _os_log_impl(&dword_1C5C61000, v20, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] _playerItemDidBecomeActiveWithContentItemID:%{public}@ | updating target [expected natural transition]", buf, 0x20u);
        }

        [(MPCQueueController *)self _setTargetContentItemID:v5 source:3];
        self->_syncResetAttempts = 0;
        v11 = 1;
      }

      else
      {
        v23 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [WeakRetained engineID];
          v25 = [(MPCQueueController *)self sessionID];
          v26 = self->_syncResetAttempts;
          *buf = 138544386;
          v33 = v24;
          v34 = 2114;
          v35 = v25;
          v36 = 2114;
          v37 = v5;
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
          v30 = [MEMORY[0x1E696AAA8] currentHandler];
          [v30 handleFailureInMethod:a2 object:self file:@"MPCQueueController.m" lineNumber:1167 description:{@"MF did not synchronize within 5 resets: %@ != %@", v5, v19}];
        }

        [v12 queueController:self didDetectMismatchForActiveContentItemID:v5 targetContentItemID:v19];
        v11 = v31;
      }
    }
  }

  return v11 & 1;
}

- (void)engine:(id)a3 didChangeItemElapsedTime:(double)a4 rate:(float)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [MEMORY[0x1E69708A8] standardUserDefaults];
  v10 = [v9 disablePeriodicStateRestore];

  if ((v10 & 1) == 0 && [(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl playbackPositionRestorationPolicy]== 1)
  {
    currentItem = self->_currentItem;
    if (currentItem)
    {
      if (([(MPAVItem *)currentItem isPlaceholder]& 1) == 0 && ([(MPAVItem *)self->_currentItem isAlwaysLive]& 1) == 0)
      {
        v12 = [v8 mediaRemotePublisher];
        v13 = [v12 infoCenter];
        if ([v13 playbackState] == 1)
        {
          lastSavedTime = self->_lastSavedTime;

          if (lastSavedTime != a4)
          {
            self->_lastSavedTime = a4;
            v15 = _MPCLogCategoryQueueController();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v16 = [v8 engineID];
              v17 = [(MPCQueueController *)self sessionID];
              v18 = [(MPAVItem *)self->_currentItem contentItemID];
              v19 = 138544386;
              v20 = v16;
              v21 = 2114;
              v22 = v17;
              v23 = 2048;
              v24 = a4;
              v25 = 2048;
              v26 = a5;
              v27 = 2114;
              v28 = v18;
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

- (void)engine:(id)a3 didChangeToState:(unint64_t)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl playbackPositionRestorationPolicy]== 1 && (a4 == 4 || a4 == 2))
  {
    currentItem = self->_currentItem;
    if (currentItem)
    {
      if (([(MPAVItem *)currentItem isPlaceholder]& 1) == 0)
      {
        v8 = 0.0;
        if (([(MPAVItem *)self->_currentItem isAlwaysLive]& 1) == 0)
        {
          v9 = [v6 player];
          [v9 currentTime];
          v8 = v10;
        }

        if (self->_lastSavedTime != v8)
        {
          self->_lastSavedTime = v8;
          v11 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = off_1E8235FD8[a4 - 2];
            v13 = [(MPAVItem *)self->_currentItem contentItemID];
            lastSavedTime = self->_lastSavedTime;
            v15 = 134218754;
            v16 = self;
            v17 = 2114;
            v18 = v12;
            v19 = 2114;
            v20 = v13;
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

- (void)engine:(id)a3 didReachEndOfQueueWithReason:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 engineID];
    v10 = [(MPCQueueController *)self sessionID];
    *buf = 138543874;
    v15 = v9;
    v16 = 2114;
    v17 = v10;
    v18 = 2114;
    v19 = v7;
    _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] engine:didReachEndOfQueueWithReason:%{public}@", buf, 0x20u);
  }

  self->_handlingQueueBoundary = 1;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__MPCQueueController_engine_didReachEndOfQueueWithReason___block_invoke;
  v12[3] = &unk_1E82392C0;
  v12[4] = self;
  v13 = v7;
  v11 = v7;
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

- (id)beginExternalSyncEditWithReason:(id)a3
{
  v26[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"MPCQueueController.m" lineNumber:1073 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
  }

  v6 = [MPCQueueControllerExternalSyncEdit alloc];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v26[0] = v8;
  v26[1] = v5;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v10 = [v9 componentsJoinedByString:@"-"];
  v11 = [(MPCQueueControllerEdit *)v6 initWithQueueController:self label:v10];

  if ([(MPCQueueControllerEdit *)v11 allowsChangingCurrentItem])
  {
    [(NSMutableArray *)self->_potentialCurrentItemEdits addObject:v11];
  }

  activeEdits = self->_activeEdits;
  v13 = [(MPCQueueControllerEdit *)v11 identifier];
  [(NSMapTable *)activeEdits setObject:v11 forKey:v13];

  v14 = [(MPCQueueController *)self playbackEngine];
  v15 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v14 engineID];
    v17 = [(MPCQueueController *)self sessionID];
    *buf = 138543874;
    v21 = v16;
    v22 = 2114;
    v23 = v17;
    v24 = 2114;
    v25 = v11;
    _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_DEFAULT, "[QUCON:%{public}@:%{public}@] beginExternalSyncEditWithReason:… | created edit [] edit=%{public}@", buf, 0x20u);
  }

  return v11;
}

- (MPCPlaybackIntent)fallbackPlaybackIntent
{
  v2 = [(MPCQueueController *)self playbackEngine];
  v3 = [v2 fallbackPlaybackIntent];

  return v3;
}

- (NSString)playerID
{
  v2 = [(MPCQueueController *)self playbackEngine];
  v3 = [v2 playerID];

  return v3;
}

- (NSString)engineID
{
  v2 = [(MPCQueueController *)self playbackEngine];
  v3 = [v2 engineID];

  return v3;
}

- (MPCPlaybackEngineEventStream)eventStream
{
  v2 = [(MPCQueueController *)self playbackEngine];
  v3 = [v2 eventStream];

  return v3;
}

- (void)upNextBehaviorDidChange
{
  v3 = [(MPCQueueController *)self playbackEngine];
  v4 = [v3 mediaRemotePublisher];
  [v4 publishIfNeeded];

  [(MPCQueueController *)self incrementVersionForSegment:@"behavior"];
}

- (id)beginEditWithReason:(id)a3
{
  v25[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"MPCQueueController.m" lineNumber:1033 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
  }

  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v25[0] = v7;
  v25[1] = v5;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v9 = [v8 componentsJoinedByString:@"-"];

  v10 = [[MPCQueueControllerEdit alloc] initWithQueueController:self label:v9];
  if ([(MPCQueueControllerEdit *)v10 allowsChangingCurrentItem])
  {
    [(NSMutableArray *)self->_potentialCurrentItemEdits addObject:v10];
  }

  activeEdits = self->_activeEdits;
  v12 = [(MPCQueueControllerEdit *)v10 identifier];
  [(NSMapTable *)activeEdits setObject:v10 forKey:v12];

  v13 = [(MPCQueueController *)self playbackEngine];
  v14 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v13 engineID];
    v16 = [(MPCQueueController *)self sessionID];
    *buf = 138543874;
    v20 = v15;
    v21 = 2114;
    v22 = v16;
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

- (void)_withUpNextBehavior:(id)a3
{
  v4 = a3;
  if ([(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl conformsToProtocol:&unk_1F45A2390])
  {
    v4[2](v4, self->_behaviorImpl);
  }
}

- (BOOL)_withTransportableBehavior:(id)a3
{
  v4 = a3;
  v5 = [(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl conformsToProtocol:&unk_1F45A1DD8];
  if (v5)
  {
    v4[2](v4, self->_behaviorImpl);
  }

  return v5;
}

- (BOOL)_withRestorableBehavior:(id)a3
{
  v4 = a3;
  v5 = [(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl conformsToProtocol:&unk_1F45A2030];
  if (v5)
  {
    v4[2](v4, self->_behaviorImpl);
  }

  return v5;
}

- (void)_withExternalSyncBehavior:(id)a3
{
  v4 = a3;
  if ([(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl conformsToProtocol:&unk_1F45AFEC0])
  {
    v4[2](v4, self->_behaviorImpl);
  }
}

- (void)_withDynamicBehavior:(id)a3
{
  v4 = a3;
  if ([(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl conformsToProtocol:&unk_1F45A2448])
  {
    v4[2](v4, self->_behaviorImpl);
  }
}

- (void)jumpToFirstContentItemWithSource:(int64_t)a3
{
  v27 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);
  if (a3 <= 3)
  {
    if (a3 <= 1)
    {
      if (!a3)
      {
        v6 = @"Unknown";
        goto LABEL_21;
      }

      if (a3 == 1)
      {
        v6 = @"StartItem";
        goto LABEL_21;
      }

LABEL_20:
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown/%ld", a3];
      goto LABEL_21;
    }

    if (a3 == 2)
    {
      v6 = @"UserSelected";
    }

    else
    {
      v6 = @"NaturalTransition";
    }
  }

  else
  {
    if (a3 > 5)
    {
      switch(a3)
      {
        case 6:
          v6 = @"QueueBoundary";
          goto LABEL_21;
        case 7:
          v6 = @"Restored";
          goto LABEL_21;
        case 100:
          v6 = @"Loading";
          goto LABEL_21;
      }

      goto LABEL_20;
    }

    if (a3 == 4)
    {
      v6 = @"ExternalSync";
    }

    else
    {
      v6 = @"Redirect";
    }
  }

LABEL_21:
  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [WeakRetained engineID];
    v9 = [(MPCQueueController *)self sessionID];
    behaviorImpl = self->_behaviorImpl;
    *buf = 138544130;
    v20 = v8;
    v21 = 2114;
    v22 = v9;
    v23 = 2114;
    v24 = v6;
    v25 = 2114;
    v26 = behaviorImpl;
    _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] jumpToFirstContentItemWithSource:%{public}@ | enumerating behavior from nil [] behavior=%{public}@", buf, 0x2Au);
  }

  v11 = [(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl contentItemIDEnumeratorStartingAfterContentItemID:0 mode:2 options:0];
  v12 = [v11 nextObject];
  v13 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [WeakRetained engineID];
    v15 = [(MPCQueueController *)self sessionID];
    *buf = 138544130;
    v20 = v14;
    v21 = 2114;
    v22 = v15;
    v23 = 2114;
    v24 = v6;
    v25 = 2114;
    v26 = v12;
    _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] jumpToFirstContentItemWithSource:%{public}@ | updating target [] firstContentItemID=%{public}@", buf, 0x2Au);
  }

  [(MPCQueueController *)self _setTargetContentItemID:v12 source:a3];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __55__MPCQueueController_jumpToFirstContentItemWithSource___block_invoke;
  v17[3] = &unk_1E8235CC8;
  v18 = v12;
  v16 = v12;
  [(MPCQueueController *)self _withExternalSyncBehavior:v17];
}

- (void)jumpToContentItemID:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);
  v6 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [WeakRetained engineID];
    v8 = [(MPCQueueController *)self sessionID];
    behaviorImpl = self->_behaviorImpl;
    *buf = 138544130;
    v23 = v7;
    v24 = 2114;
    v25 = v8;
    v26 = 2114;
    v27 = v4;
    v28 = 2114;
    v29 = behaviorImpl;
    _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] jumpToContentItemID:%{public}@ | validating item [] behavior=%{public}@", buf, 0x2Au);
  }

  v10 = self->_behaviorImpl;
  v21 = 0;
  v11 = [(MPCQueueControllerBehaviorImplementation *)v10 canJumpToContentItemID:v4 reason:&v21];
  v12 = v21;
  v13 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
  v14 = v13;
  if (v11)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [WeakRetained engineID];
      v16 = [(MPCQueueController *)self sessionID];
      *buf = 138543874;
      v23 = v15;
      v24 = 2114;
      v25 = v16;
      v26 = 2114;
      v27 = v4;
      _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] jumpToContentItemID:%{public}@ | updating target", buf, 0x20u);
    }

    [(MPCQueueController *)self _setTargetContentItemID:v4 source:2];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __42__MPCQueueController_jumpToContentItemID___block_invoke;
    v19[3] = &unk_1E8235CC8;
    v20 = v4;
    [(MPCQueueController *)self _withExternalSyncBehavior:v19];
    v14 = v20;
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v17 = [WeakRetained engineID];
    v18 = [(MPCQueueController *)self sessionID];
    *buf = 138544130;
    v23 = v17;
    v24 = 2114;
    v25 = v18;
    v26 = 2114;
    v27 = v4;
    v28 = 2114;
    v29 = v12;
    _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_ERROR, "[PSYNC:%{public}@:%{public}@] jumpToContentItemID:%{public}@ | failing skip [%{public}@]", buf, 0x2Au);
  }
}

- (void)jumpToContentItemID:(id)a3 direction:(int64_t)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);
  if ((a4 + 1) > 6)
  {
    v9 = @"MPCPlayerDirectionReverseJump";
  }

  else
  {
    v9 = off_1E8235FA0[a4 + 1];
  }

  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [WeakRetained engineID];
    v12 = [(MPCQueueController *)self sessionID];
    behaviorImpl = self->_behaviorImpl;
    *buf = 138544386;
    v33 = v11;
    v34 = 2114;
    v35 = v12;
    v36 = 2114;
    v37 = v7;
    v38 = 2114;
    v39 = v9;
    v40 = 2114;
    v41 = behaviorImpl;
    _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] jumpToContentItemID:%{public}@ direction:%{public}@ | validating item [] behavior=%{public}@", buf, 0x34u);
  }

  if (a4 <= 0)
  {
    if (a4 != -2)
    {
      if (a4 != -1)
      {
        if (a4)
        {
          goto LABEL_23;
        }

LABEL_17:
        v15 = [MEMORY[0x1E696AAA8] currentHandler];
        [v15 handleFailureInMethod:a2 object:self file:@"MPCQueueController.m" lineNumber:911 description:{@"Unsupported jump direction: %ld", a4}];
        goto LABEL_30;
      }

      targetContentItemID = self->_targetContentItemID;
      v30 = 0;
      v23 = [(MPCQueueController *)self canPreviousTrackForContentItemID:targetContentItemID reason:&v30];
      v15 = v30;
      if (v23)
      {
        goto LABEL_22;
      }

      v16 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = [WeakRetained engineID];
        v18 = [(MPCQueueController *)self sessionID];
        *buf = 138544386;
        v33 = v17;
        v34 = 2114;
        v35 = v18;
        v36 = 2114;
        v37 = v7;
        v38 = 2114;
        v39 = v9;
        v40 = 2114;
        v41 = v15;
        v19 = "[PSYNC:%{public}@:%{public}@] jumpToContentItemID:%{public}@ direction:%{public}@ | failing previous [%{public}@]";
        goto LABEL_28;
      }

LABEL_29:

      goto LABEL_30;
    }

    goto LABEL_14;
  }

  switch(a4)
  {
    case 1:
      v20 = self->_targetContentItemID;
      v29 = 0;
      v21 = [(MPCQueueController *)self canNextTrackForContentItemID:v20 reason:&v29];
      v15 = v29;
      if (!v21)
      {
        v16 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_29;
        }

        v17 = [WeakRetained engineID];
        v18 = [(MPCQueueController *)self sessionID];
        *buf = 138544386;
        v33 = v17;
        v34 = 2114;
        v35 = v18;
        v36 = 2114;
        v37 = v7;
        v38 = 2114;
        v39 = v9;
        v40 = 2114;
        v41 = v15;
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
      v14 = [(MPCQueueController *)self canJumpToContentItemID:v7 reason:&v31];
      v15 = v31;
      if (!v14)
      {
        v16 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_29;
        }

        v17 = [WeakRetained engineID];
        v18 = [(MPCQueueController *)self sessionID];
        *buf = 138544386;
        v33 = v17;
        v34 = 2114;
        v35 = v18;
        v36 = 2114;
        v37 = v7;
        v38 = 2114;
        v39 = v9;
        v40 = 2114;
        v41 = v15;
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
    v25 = [WeakRetained engineID];
    v26 = [(MPCQueueController *)self sessionID];
    *buf = 138544130;
    v33 = v25;
    v34 = 2114;
    v35 = v26;
    v36 = 2114;
    v37 = v7;
    v38 = 2114;
    v39 = v9;
    _os_log_impl(&dword_1C5C61000, v24, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] jumpToContentItemID:%{public}@ direction:%{public}@ | updating target", buf, 0x2Au);
  }

  [(MPCQueueController *)self _setTargetContentItemID:v7 source:2];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __52__MPCQueueController_jumpToContentItemID_direction___block_invoke;
  v27[3] = &unk_1E8235CC8;
  v28 = v7;
  [(MPCQueueController *)self _withExternalSyncBehavior:v27];
  v15 = v28;
LABEL_30:
}

- (void)_setTargetContentItemID:(id)a3 source:(int64_t)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [WeakRetained engineID];
    v10 = [(MPCQueueController *)self sessionID];
    if (a4 <= 3)
    {
      if (a4 > 1)
      {
        if (a4 == 2)
        {
          v11 = @"UserSelected";
        }

        else
        {
          v11 = @"NaturalTransition";
        }

        goto LABEL_22;
      }

      if (!a4)
      {
        v11 = @"Unknown";
        goto LABEL_22;
      }

      if (a4 == 1)
      {
        v11 = @"StartItem";
        goto LABEL_22;
      }
    }

    else
    {
      if (a4 <= 5)
      {
        if (a4 == 4)
        {
          v11 = @"ExternalSync";
        }

        else
        {
          v11 = @"Redirect";
        }

        goto LABEL_22;
      }

      switch(a4)
      {
        case 6:
          v11 = @"QueueBoundary";
          goto LABEL_22;
        case 7:
          v11 = @"Restored";
          goto LABEL_22;
        case 100:
          v11 = @"Loading";
LABEL_22:
          *buf = 138544130;
          v16 = v9;
          v17 = 2114;
          v18 = v10;
          v19 = 2114;
          v20 = v6;
          v21 = 2114;
          v22 = v11;
          _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] setTargetContentItemID:%{public}@ source:%{public}@ | updating target", buf, 0x2Au);

          goto LABEL_23;
      }
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown/%ld", a4];
    goto LABEL_22;
  }

LABEL_23:

  targetContentItemID = self->_targetContentItemID;
  self->_targetContentItemID = v6;
  v13 = v6;

  self->_targetContentItemSource = a4;
  [(MPCQueueController *)self _evaluateContextAwareTriggersWithReason:@"targetItem changed"];
  v14 = [(MPCQueueController *)self delegate];
  [v14 queueController:self didChangeTargetContentItemID:v13];

  [(MPCQueueController *)self incrementVersionForSegment:@"metadata"];
}

- (BOOL)isUserSelectedContentItemID:(id)a3
{
  v4 = a3;
  v5 = [(MPCQueueController *)self targetContentItemID];
  v6 = v5;
  if (v5 == v4)
  {
  }

  else
  {
    v7 = [v4 isEqual:v5];

    if (!v7)
    {
      goto LABEL_7;
    }
  }

  v8 = [(MPCQueueController *)self targetContentItemSource];
  v9 = 1;
  if (v8 <= 2)
  {
    if (!v8)
    {
LABEL_7:
      v9 = 0;
      goto LABEL_8;
    }

    if (v8 == 1)
    {
      v11 = [(MPCQueueController *)self preferredFirstContentItemID];
      if (v11 != v4)
      {
        v9 = [v4 isEqual:v11];
      }
    }
  }

  else if ((v8 - 3) < 4 || v8 == 100)
  {
    goto LABEL_7;
  }

LABEL_8:

  return v9;
}

- (void)finalizeStateRestorationWithLoadingItemReady:(id)a3 completion:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
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
  v26 = self;
  v9 = WeakRetained;
  v27 = v9;
  v10 = v7;
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
      v19 = [v9 engineID];
      v20 = [(MPCQueueController *)self sessionID];
      v21 = *p_loadingContentItemID;
      *buf = 138543874;
      v37 = v19;
      v38 = 2114;
      v39 = v20;
      v40 = 2114;
      v41 = v21;
      _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] finalizeStateRestorationWithLoadingItemReady:… | updating loading content item [] loadingContentItemID=%{public}@", buf, 0x20u);
    }

    v6[2](v6);
  }

  else
  {
    v15 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:59 debugDescription:{@"State restoration is not supported", v22, v23, v24, v25, v26, v27}];
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

- (void)performAfterEdits:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);
  if ([(NSMapTable *)self->_activeEdits count])
  {
    v6 = [(NSMapTable *)self->_activeEdits objectEnumerator];
    v7 = [v6 msv_map:&__block_literal_global_146];

    v8 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [WeakRetained engineID];
      v10 = [(MPCQueueController *)self sessionID];
      v11 = [(NSMapTable *)self->_activeEdits count];
      *buf = 138544130;
      v25 = v9;
      v26 = 2114;
      v27 = v10;
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
      v23 = v4;
      v14 = _Block_copy(v21);
      postEditContinuation = self->_postEditContinuation;
      self->_postEditContinuation = v14;

      v16 = v22;
    }

    else
    {
      v20 = _Block_copy(v4);
      v16 = self->_postEditContinuation;
      self->_postEditContinuation = v20;
    }
  }

  else
  {
    v17 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [WeakRetained engineID];
      v19 = [(MPCQueueController *)self sessionID];
      *buf = 138543618;
      v25 = v18;
      v26 = 2114;
      v27 = v19;
      _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] performAfterEdits:… | calling continuation [no edits]", buf, 0x16u);
    }

    v4[2](v4);
  }
}

uint64_t __40__MPCQueueController_performAfterEdits___block_invoke_147(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)performSetQueue:(id)a3 loadingItemReady:(id)a4 completion:(id)a5
{
  v43 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);
  behaviorImpl = self->_behaviorImpl;
  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = __66__MPCQueueController_performSetQueue_loadingItemReady_completion___block_invoke;
  v30 = &unk_1E8237B08;
  v31 = self;
  v13 = WeakRetained;
  v32 = v13;
  v14 = v8;
  v33 = v14;
  v15 = v9;
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
    v23 = [v13 engineID];
    v24 = [(MPCQueueController *)self sessionID];
    v25 = [v14 commandID];
    v26 = self->_loadingContentItemID;
    *buf = 138544130;
    v36 = v23;
    v37 = 2114;
    v38 = v24;
    v39 = 2114;
    v40 = v25;
    v41 = 2114;
    v42 = v26;
    _os_log_impl(&dword_1C5C61000, v22, OS_LOG_TYPE_DEFAULT, "[PSYNC:%{public}@:%{public}@] performSetQueue:%{public}@ … | updating loading content item [] loadingContentItemID=%{public}@", buf, 0x2Au);
  }

  v10[2](v10);
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

- (id)contentItemIDWithoutRepeatIteration:(id)a3
{
  v4 = a3;
  v5 = [(MPCQueueController *)self music];
  v6 = [v5 contentItemIDWithoutRepeatIteration:v4];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  v9 = v8;

  return v8;
}

- (BOOL)isEmpty
{
  v2 = [(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl contentItemIDEnumeratorStartingAfterContentItemID:0 mode:2 options:0];
  v3 = [v2 nextObject];
  v4 = v3 == 0;

  return v4;
}

- (void)enumerateContentItemIDsInMode:(int64_t)a3 block:(id)a4
{
  v6 = a4;
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
    v6[2](v6, loadingContentItemID, &v13);
    goto LABEL_7;
  }

  v9 = [(NSString *)v8 hasPrefix:@"♻️"];

  if (v9)
  {
    goto LABEL_5;
  }

  if (self->_targetContentItemID)
  {
    v10 = [(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl contentItemIDEnumeratorStartingAfterContentItemID:0 mode:a3 options:0];
    v11 = [v10 nextObject];
    do
    {
      v6[2](v6, v11, &v13);
      if (v13)
      {
        break;
      }

      v12 = [v10 nextObject];

      v11 = v12;
    }

    while (v12);
  }

LABEL_7:
}

- (id)contentItemIDsFromOffset:(int64_t)a3 toOffset:(int64_t)a4 mode:(int64_t)a5 nowPlayingIndex:(int64_t *)a6
{
  v31[1] = *MEMORY[0x1E69E9840];
  if (self->_loadingContentItemID)
  {
    *a6 = 0;
    v31[0] = self->_loadingContentItemID;
    v8 = MEMORY[0x1E695DEC8];
    p_targetContentItemID = v31;
LABEL_7:
    v16 = [v8 arrayWithObjects:p_targetContentItemID count:{1, a5}];
    goto LABEL_8;
  }

  v14 = self->_targetContentItemID;
  if ([(NSString *)v14 hasPrefix:@"⏳"])
  {

LABEL_6:
    *a6 = 0;
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
    if (!(a4 | a3))
    {
      *a6 = 0;
      v29 = self->_targetContentItemID;
      v8 = MEMORY[0x1E695DEC8];
      p_targetContentItemID = &v29;
      goto LABEL_7;
    }

    *a6 = 0x7FFFFFFFFFFFFFFFLL;
    v18 = [MEMORY[0x1E695DF70] arrayWithCapacity:a4 - a3 + 1];
    if (a3 < 0)
    {
      v19 = [(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl contentItemIDEnumeratorStartingAfterContentItemID:self->_targetContentItemID mode:a5 options:1];
      if (v19 && -a3 >= 1)
      {
        v20 = 0;
        v28 = -(a4 & (a4 >> 63));
        do
        {
          v21 = [v19 nextObject];
          if (!v21)
          {
            break;
          }

          v22 = v21;
          if (v20 >= v28)
          {
            [v18 insertObject:v21 atIndex:0];
          }

          ++v20;
        }

        while (-a3 != v20);
      }
    }

    if (a3 <= 0 && (a4 & 0x8000000000000000) == 0)
    {
      *a6 = [v18 count];
      if (!self->_targetContentItemID)
      {
        v27 = [MEMORY[0x1E696AAA8] currentHandler];
        [v27 handleFailureInMethod:a2 object:self file:@"MPCQueueController.m" lineNumber:698 description:@"ContentItemID was nil [current item]"];
      }

      [v18 addObject:?];
    }

    if (a4 >= 1)
    {
      v23 = [(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl contentItemIDEnumeratorStartingAfterContentItemID:self->_targetContentItemID mode:a5 options:0];
      v24 = 0;
      do
      {
        v25 = [v23 nextObject];
        if (!v25)
        {
          break;
        }

        v26 = v25;
        if (v24 >= a3)
        {
          [v18 addObject:v25];
        }

        ++v24;
      }

      while (a4 != v24);
    }

    v16 = [v18 copy];
  }

  else
  {
    *a6 = 0x7FFFFFFFFFFFFFFFLL;
    v16 = MEMORY[0x1E695E0F0];
  }

LABEL_8:

  return v16;
}

- (id)contentItemIDAtIndex:(int64_t)a3
{
  v4 = [(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl contentItemIDEnumeratorStartingAfterContentItemID:0 mode:1 options:0];
  v5 = v4;
  if (a3 < 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v4 nextObject];
    if (v6)
    {
      v7 = a3 + 1;
      do
      {
        if (!--v7)
        {
          break;
        }

        v6 = [v5 nextObject];
      }

      while (v6);
    }
  }

  return v6;
}

- (BOOL)canNextTrackForContentItemID:(id)a3 reason:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    if (a4)
    {
      v8 = 0;
      v9 = @"no item";
      goto LABEL_8;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_11;
  }

  if (([v6 hasPrefix:@"⏳"] & 1) == 0 && !objc_msgSend(v7, "hasPrefix:", @"♻️"))
  {
    v8 = [(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl canNextItemFromContentItemID:v7 reason:a4];
    goto LABEL_11;
  }

  if (!a4)
  {
    goto LABEL_9;
  }

  v8 = 0;
  v9 = @"QC-Placeholder";
LABEL_8:
  *a4 = v9;
LABEL_11:

  return v8;
}

- (BOOL)canPreviousTrackForContentItemID:(id)a3 reason:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    if (a4)
    {
      v8 = 0;
      v9 = @"no item";
      goto LABEL_8;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_11;
  }

  if (([v6 hasPrefix:@"⏳"] & 1) == 0 && !objc_msgSend(v7, "hasPrefix:", @"♻️"))
  {
    v8 = [(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl canPreviousItemFromContentItemID:v7 reason:a4];
    goto LABEL_11;
  }

  if (!a4)
  {
    goto LABEL_9;
  }

  v8 = 0;
  v9 = @"QC-Placeholder";
LABEL_8:
  *a4 = v9;
LABEL_11:

  return v8;
}

- (void)incrementVersionForSegment:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  coderVersions = self->_coderVersions;
  v6 = a3;
  v7 = [(NSMutableDictionary *)coderVersions objectForKeyedSubscript:v6];
  v8 = [v4 numberWithInteger:{objc_msgSend(v7, "integerValue") + 1}];
  [(NSMutableDictionary *)self->_coderVersions setObject:v8 forKeyedSubscript:v6];

  v9 = [(MPCQueueController *)self delegate];
  [v9 queueController:self didIncrementVersionForSegment:v6];
}

- (int64_t)versionForSegment:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_coderVersions objectForKeyedSubscript:a3];
  v4 = [v3 integerValue];

  return v4;
}

- (void)didRestoreVersion:(int64_t)a3 forSegment:(id)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithInteger:a3];
  [(NSMutableDictionary *)self->_coderVersions setObject:v8 forKeyedSubscript:v7];
}

- (id)segmentForCodingKey:(id)a3
{
  if (a3 == @"cpay")
  {
    v3 = @"containerPayload";
  }

  else
  {
    v3 = @"metadata";
  }

  if (a3 == @"pers")
  {
    v4 = @"itemPayload";
  }

  else
  {
    v4 = v3;
  }

  if (a3 == @"ipay")
  {
    v5 = @"itemPayload";
  }

  else
  {
    v5 = v4;
  }

  if (a3 == @"be")
  {
    return @"behavior";
  }

  else
  {
    return v5;
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:self->_behaviorType forKey:@"bet"];
  [v4 encodeObject:self->_behaviorImpl forKey:@"be"];
  [v4 encodeObject:self->_targetContentItemID forKey:@"tci"];
  [v4 encodeInteger:self->_targetContentItemSource forKey:@"tcis"];
  [v4 encodeDouble:@"lst" forKey:self->_lastSavedTime];
  if (self->_behaviorType == 2)
  {
    v5 = [(MPCQueueController *)self currentItem];
    v6 = [v5 modelGenericObject];
    v7 = [v6 identifiers];

    v8 = [v7 universalStore];
    if ([v8 subscriptionAdamID])
    {
    }

    else
    {
      v9 = [v7 universalStore];
      v10 = [v9 universalCloudLibraryID];
      v11 = [v10 length];

      if (!v11)
      {
LABEL_10:

        goto LABEL_11;
      }
    }

    v12 = [MEMORY[0x1E6970950] sharedServerObjectDatabase];
    v24 = 0;
    v13 = [v12 payloadDataForIdentifierSet:v7 outError:&v24];
    v14 = v24;

    if ([v13 length])
    {
      v15 = [v7 personalizedStore];
      v16 = [v15 personID];
      [v4 encodeObject:v16 forKey:@"pers"];

      [v4 encodeObject:v13 forKey:@"ipay"];
      v17 = [(MPCQueueController *)self currentItem];
      v18 = [v17 modelPlayEvent];
      v19 = [v18 genericObjectRepresentation];
      v20 = [v19 identifiers];

      if (v20)
      {
        v21 = [MEMORY[0x1E6970950] sharedServerObjectDatabase];
        v23 = 0;
        v22 = [v21 payloadDataForIdentifierSet:v20 outError:&v23];

        [v4 encodeObject:v22 forKey:@"cpay"];
      }
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (MPCQueueController)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [(MPCQueueController *)self init];
  if (!v6)
  {
    goto LABEL_17;
  }

  if ([v5 containsValueForKey:@"bet"])
  {
    v7 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"tci"];
    targetContentItemID = v6->_targetContentItemID;
    v6->_targetContentItemID = v7;

    v6->_targetContentItemSource = [v5 decodeIntegerForKey:@"tcis"];
    v9 = [v5 decodeIntegerForKey:@"bet"];
    v6->_behaviorType = v9;
    if (v9 == 4)
    {
      v22 = MEMORY[0x1E695DFD8];
      v23 = objc_opt_class();
      v24 = objc_opt_class();
      v11 = [v22 setWithObjects:{v23, v24, objc_opt_class(), 0}];
      v25 = [v5 decodeObjectOfClasses:v11 forKey:@"be"];
      behaviorImpl = v6->_behaviorImpl;
      v6->_behaviorImpl = v25;
    }

    else if (v9 == 2)
    {
      v10 = [v5 msv_userInfo];
      v11 = [v10 mutableCopy];

      [v11 setObject:v6->_targetContentItemID forKeyedSubscript:@"QC.targetContentItemID"];
      v12 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"pers"];
      [v11 setObject:v12 forKeyedSubscript:@"QC.SOD.personID"];

      v13 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"ipay"];
      [v11 setObject:v13 forKeyedSubscript:@"QC.SOD.itemPayloadData"];

      v14 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"cpay"];
      [v11 setObject:v14 forKeyedSubscript:@"QC.SOD.containerPayloadData"];

      [v5 msv_setUserInfo:v11];
      v15 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_msgSend(objc_opt_class(), "musicBehaviorClass"), 0}];
      v16 = [v5 decodeObjectOfClasses:v15 forKey:@"be"];
      v17 = v6->_behaviorImpl;
      v6->_behaviorImpl = v16;
    }

    else
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:v6 file:@"MPCQueueController.m" lineNumber:513 description:{@"Attempt to decode unsupported behaviorType: %lld", v6->_behaviorType}];
    }

    if (v6->_behaviorImpl)
    {
      goto LABEL_11;
    }

    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [(_MPCQueueControllerBehaviorMusic *)v21 handleFailureInMethod:a2 object:v6 file:@"MPCQueueController.m" lineNumber:517 description:@"Failed to decode behaviorImpl"];
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
    [(_MPCQueueControllerBehaviorMusic *)v18 restoreWithSharedCoder:v5 block:v33];
    v19->_behaviorType = 2;
    v20 = v19->_behaviorImpl;
    v19->_behaviorImpl = v18;
    v21 = v18;
  }

LABEL_11:
  if (v6->_targetContentItemID && [v5 containsValueForKey:@"lst"])
  {
    objc_storeStrong(&v6->_restoreLastStartTimePositionToContentItemID, v6->_targetContentItemID);
    [v5 decodeDoubleForKey:@"lst"];
    v6->_lastSavedTime = v27;
  }

  v28 = [(MPCQueueControllerBehaviorImplementation *)v6->_behaviorImpl sessionID];

  if (!v28)
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:a2 object:v6 file:@"MPCQueueController.m" lineNumber:537 description:{@"behaviorImpl must have sessionID: %@", v6->_behaviorImpl}];
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

- (void)didDisconnectFromPlaybackEngine:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_currentItem)
  {
    objc_storeWeak(&self->_playbackEngine, v4);
    [(MPCQueueController *)self _emitEventsForItemChangeFromItem:self->_currentItem toCurrentItem:0];
  }

  if (objc_opt_respondsToSelector())
  {
    [(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl didDisconnectFromHost:self];
  }

  v5 = [v4 eventStream];
  v8 = @"session-id";
  v6 = [(MPCQueueController *)self sessionID];
  v9[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v5 emitEventType:@"session-end" payload:v7];

  objc_storeWeak(&self->_playbackEngine, 0);
}

- (void)didConnectToPlaybackEngine:(id)a3
{
  v9[2] = *MEMORY[0x1E69E9840];
  v4 = [a3 eventStream];
  v8[0] = @"session-id";
  v5 = [(MPCQueueController *)self sessionID];
  v8[1] = @"behavior-type";
  v9[0] = v5;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MPCQueueController behaviorType](self, "behaviorType")}];
  v9[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  [v4 emitEventType:@"session-begin" payload:v7];

  if (objc_opt_respondsToSelector())
  {
    [(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl didConnectToHost:self];
  }

  if (self->_currentItem)
  {
    [(MPCQueueController *)self _emitEventsForItemChangeFromItem:0 toCurrentItem:?];
  }
}

- (void)willDisconnectFromPlaybackEngine:(id)a3
{
  v4 = a3;
  v5 = [(MPCQueueController *)self music];
  [v5 setHostingSharedSessionID:0 reason:@"Local Session Teardown [GroupSession will continue]"];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__MPCQueueController_willDisconnectFromPlaybackEngine___block_invoke;
  v6[3] = &unk_1E8235CC8;
  v6[4] = self;
  [(MPCQueueController *)self _withExternalSyncBehavior:v6];
  [(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl disconnectFromHost:self];
  [v4 removeEngineObserver:self];

  objc_storeWeak(&self->_playbackEngine, 0);
}

- (void)willConnectToPlaybackEngine:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_playbackEngine, v4);
  [v4 addEngineObserver:self];
  [(MPCQueueControllerBehaviorImplementation *)self->_behaviorImpl connectToHost:self];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__MPCQueueController_willConnectToPlaybackEngine___block_invoke;
  v7[3] = &unk_1E8235CC8;
  v7[4] = self;
  [(MPCQueueController *)self _withExternalSyncBehavior:v7];
  v5 = [(MPCQueueController *)self music];
  v6 = [v4 hostingSharedSessionID];

  [v5 setHostingSharedSessionID:v6 reason:@"Local Session Setup [continuing GroupSession]"];
}

- (BOOL)isOneShotExportableSessionForContentItemID:(id)a3 reason:(id *)a4
{
  v6 = a3;
  if (([v6 hasPrefix:@"⏳"] & 1) != 0 || objc_msgSend(v6, "hasPrefix:", @"♻️"))
  {
    v7 = 0;
    if (a4)
    {
      *a4 = @"QC-Placeholder content item ID";
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
    v12 = v6;
    v14 = &v19;
    if ([(MPCQueueController *)self _withTransportableBehavior:v11])
    {
      v7 = *(v16 + 24);
      if (a4 && (v16[3] & 1) == 0)
      {
        v8 = v20[5];
        v9 = @"not supported by transportableBehavior";
        if (v8)
        {
          v9 = v8;
        }

        *a4 = v9;
        v7 = *(v16 + 24);
      }
    }

    else
    {
      v7 = 0;
      if (a4)
      {
        *a4 = @"current Behavior is non-transportable";
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

- (BOOL)isExportableSessionType:(id)a3 forContentItemID:(id)a4 reason:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = +[_MPCQueueControllerRegistry shared];
  v11 = [v10 transportableExtensions];
  v12 = NSMapGet(v11, self->_behaviorType);

  v13 = [v12 allKnownSessionTypes];
  if (([v13 containsObject:v8] & 1) == 0)
  {
    if (a5)
    {
      v15 = 0;
      v16 = @"other behavior session type";
LABEL_9:
      *a5 = v16;
      goto LABEL_20;
    }

LABEL_10:
    v15 = 0;
    goto LABEL_20;
  }

  v14 = v9;
  if ([v14 hasPrefix:@"⏳"])
  {

    goto LABEL_7;
  }

  v17 = [v14 hasPrefix:@"♻️"];

  if (v17)
  {
LABEL_7:
    if (a5)
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
  v22 = v8;
  v23 = v14;
  v24 = v12;
  v26 = &v31;
  if ([(MPCQueueController *)self _withTransportableBehavior:v21])
  {
    v15 = *(v28 + 24);
    if (a5 && (v28[3] & 1) == 0)
    {
      v18 = v32[5];
      v19 = @"not supported by transportableBehavior";
      if (v18)
      {
        v19 = v18;
      }

      *a5 = v19;
      v15 = *(v28 + 24);
    }
  }

  else
  {
    v15 = 0;
    if (a5)
    {
      *a5 = @"current Behavior is non-transportable";
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
  v3 = [MEMORY[0x1E696AD60] string];
  [v3 appendFormat:@"## QueueController <%p>\n", self];
  v4 = [(MPCQueueController *)self _stateDictionaryIncludingQueue:1];
  v5 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v4 options:11 error:0];
  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v5 encoding:4];

  return v3;
}

- (void)dealloc
{
  MEMORY[0x1C6955540](self->_stateHandle, a2);
  v3.receiver = self;
  v3.super_class = MPCQueueController;
  [(MPCQueueController *)&v3 dealloc];
}

- (MPCQueueController)initWithBehaviorType:(int64_t)a3 sessionID:(id)a4
{
  v6 = a4;
  v7 = 0;
  if (a3 <= 2)
  {
    if (a3 > 2)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (a3 == 3 || a3 == 4)
  {
LABEL_8:
    v8 = objc_opt_class();
    goto LABEL_9;
  }

  if (a3 != 5)
  {
    goto LABEL_10;
  }

  v8 = __testBehaviorClass;
LABEL_9:
  v7 = v8;
LABEL_10:
  v9 = [[v7 alloc] initWithSessionID:v6];
  v10 = [(MPCQueueController *)self init];
  v11 = v10;
  if (v10)
  {
    v10->_behaviorType = a3;
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

    v6 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    activeEdits = v2->_activeEdits;
    v2->_activeEdits = v6;

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

+ (BOOL)isSupportedSessionType:(id)a3 reason:(id *)a4
{
  v5 = a3;
  v6 = +[_MPCQueueControllerRegistry shared];
  v7 = [v6 transportableExtensions];

  v8 = 0;
  do
  {
    v9 = NSMapGet(v7, v8);
    v10 = [v9 allKnownSessionTypes];
    if ([v10 containsObject:v5])
    {
      v12 = +[MPCPlaybackEngine isSystemMusic];
      if (v8 == 4 && v12)
      {
        if (a4)
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"behavior[%@] unavailable in SystemMusicApplication", @"podcasts"];
LABEL_14:
          *a4 = v11 = 0;
LABEL_17:

          goto LABEL_18;
        }
      }

      else
      {
        v13 = +[MPCPlaybackEngine isSystemPodcasts];
        if ((v8 & 6) != 2 || !v13)
        {
          v11 = [v9 isSupportedSessionType:v5 reason:a4];
          goto LABEL_17;
        }

        if (a4)
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
  if (a4)
  {
    *a4 = @"unknown sessionType [QC]";
  }

LABEL_18:

  return v11;
}

+ (void)unregisterPublisher:(id)a3
{
  v3 = a3;
  v6 = +[_MPCQueueControllerRegistry shared];
  v4 = [v6 publisherProxy];
  v5 = [v4 objects];
  [v5 removeObject:v3];
}

+ (void)registerPublisher:(id)a3
{
  v3 = a3;
  v6 = +[_MPCQueueControllerRegistry shared];
  v4 = [v6 publisherProxy];
  v5 = [v4 objects];
  [v5 addObject:v3];
}

+ (int64_t)behaviorForQueue:(id)a3
{
  v4 = a3;
  if (([objc_opt_class() isSystemPodcasts] & 1) == 0)
  {
    if ([objc_msgSend(a1 "musicBehaviorClass")])
    {
      v5 = 2;
      goto LABEL_12;
    }

    if ([_MPCQueueControllerBehaviorMusicSharePlay canLoadQueue:v4 reason:0])
    {
      v5 = 3;
      goto LABEL_12;
    }
  }

  v5 = 0;
  if (![_MPCQueueControllerBehaviorEmpty canLoadQueue:v4 reason:0])
  {
    if ([_MPCQueueControllerBehaviorPodcasts canLoadQueue:v4 reason:0])
    {
      v5 = 4;
    }

    else if ([__testBehaviorClass canLoadQueue:v4 reason:0])
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

+ (id)describePlayer:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E6970850] infoCenterForPlayerID:v3];
  v5 = [v4 playbackEngine];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 queueController];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [MEMORY[0x1E696AD60] string];
        [v8 appendFormat:@"# Player: %@\n\n", v3];
        v9 = [v7 debugDescription];
        [v8 appendString:v9];
      }

      else
      {
        v10 = MEMORY[0x1E696AEC0];
        v11 = objc_opt_class();
        v9 = NSStringFromClass(v11);
        v8 = [v10 stringWithFormat:@"Unexpected queueController class found: %@", v9];
      }
    }

    else
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No queue controller for %@", v3];
    }
  }

  else
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No player found for %@", v3];
  }

  return v8;
}

@end