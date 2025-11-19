@interface _MPCQueueControllerBehaviorMusicDataSourceState
- (BOOL)canJumpToItem:(id)a3 reason:(id *)a4;
- (BOOL)canSkipItem:(id)a3 reason:(id *)a4;
- (BOOL)isPlayableItem:(id)a3 inSection:(id)a4;
- (BOOL)isRadioDataSource;
- (BOOL)section:(id)a3 shouldShuffleExcludeItem:(id)a4;
- (BOOL)section:(id)a3 supportsShuffleType:(int64_t)a4;
- (BOOL)shouldRequestAdditionalItemsAtTail;
- (BOOL)shouldUsePlaceholderForItem:(id)a3 inSection:(id)a4;
- (MPCPlaybackEngineEventStream)eventStream;
- (MPPlaceholderAVItem)tailPlaceholderItem;
- (NSString)description;
- (NSString)preferredStartContentItemID;
- (_MPCQueueControllerBehaviorMusicDataSourceState)initWithCoder:(id)a3;
- (_MPCQueueControllerBehaviorMusicDataSourceState)initWithPlaybackContext:(id)a3;
- (id)_rtcSourceServiceName;
- (id)cloneWithNewStartItemIdentifiers:(id)a3 identifierRegistry:(id)a4;
- (id)firstItemIntersectingIdentifierSet:(id)a3;
- (id)getTailPlaceholderItemAndState:(int64_t *)a3;
- (id)playbackEngineID;
- (int64_t)prefetchThreshold;
- (void)_buildPlaceholder;
- (void)_inLock_buildPlaceholder;
- (void)encodeWithCoder:(id)a3;
- (void)itemDidBeginPlayback:(id)a3;
- (void)loadAdditionalItemsIfNeededWithCount:(int64_t)a3 completion:(id)a4;
- (void)reloadSection:(id)a3 completion:(id)a4;
- (void)updatePlaybackContext;
@end

@implementation _MPCQueueControllerBehaviorMusicDataSourceState

- (BOOL)shouldRequestAdditionalItemsAtTail
{
  if (!self->_frozen && (*&self->_supportedMethods & 0x80) != 0)
  {
    return [(MPCQueueControllerBehaviorMusicDataSource *)self->_dataSource shouldRequestAdditionalItemsWhenReachingTailOfSection:self->_sectionIdentifier];
  }

  else
  {
    return 0;
  }
}

- (NSString)preferredStartContentItemID
{
  v3 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)self preferredStartItemIdentifier];
  if (v3)
  {
    v4 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)self sectionIdentifier];
    v5 = [MPCQueueControllerBehaviorMusicIdentifierComponents itemComponentsWithSectionID:v4 itemID:v3];

    v6 = [v5 contentItemID];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (MPCPlaybackEngineEventStream)eventStream
{
  WeakRetained = objc_loadWeakRetained(&self->_eventStream);

  return WeakRetained;
}

- (id)playbackEngineID
{
  WeakRetained = objc_loadWeakRetained(&self->_eventStream);
  v3 = [WeakRetained engineID];

  return v3;
}

- (id)_rtcSourceServiceName
{
  if ([(MPCQueueControllerBehaviorMusicDataSource *)self->_dataSource conformsToProtocol:&unk_1F45B70A8])
  {
    v3 = [(MPCQueueControllerBehaviorMusicDataSource *)self->_dataSource rtcReportingPlayQueueSourceIdentifier];
    v4 = [MPCRTCEventConsumer playerServiceNameWithPlayerID:self->_playerID];
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v4, v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_inLock_buildPlaceholder
{
  os_unfair_lock_assert_owner(&self->_stateLock);
  if ((*&self->_supportedMethods & 1) == 0 || ([(MPCQueueControllerBehaviorMusicDataSource *)self->_dataSource placeholderItemForLoadingAdditionalItemsInSection:self->_sectionIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v3 = objc_alloc_init(MEMORY[0x1E6970880]);
  }

  v8 = [MPCQueueControllerBehaviorMusicIdentifierComponents placeholderComponentsWithLoadingSectionID:self->_sectionIdentifier];
  v4 = [v8 contentItemID];
  v5 = [v8 sectionID];
  v6 = [v8 itemID];
  [v3 setContentItemID:v4 queueSectionID:v5 queueItemID:v6];

  tailPlaceholderItem = self->_tailPlaceholderItem;
  self->_tailPlaceholderItem = v3;
}

- (void)_buildPlaceholder
{
  os_unfair_lock_lock(&self->_stateLock);
  [(_MPCQueueControllerBehaviorMusicDataSourceState *)self _inLock_buildPlaceholder];

  os_unfair_lock_unlock(&self->_stateLock);
}

- (BOOL)section:(id)a3 shouldShuffleExcludeItem:(id)a4
{
  if ((*&self->_supportedMethods & 0x800) != 0)
  {
    return [(MPCQueueControllerBehaviorMusicDataSource *)self->_dataSource section:a3 shouldShuffleExcludeItem:a4];
  }

  else
  {
    return 0;
  }
}

- (BOOL)section:(id)a3 supportsShuffleType:(int64_t)a4
{
  if (self->_frozen)
  {
    return a4 == 1;
  }

  else
  {
    return [(MPCQueueControllerBehaviorMusicDataSource *)self->_dataSource section:a3 supportsShuffleType:a4];
  }
}

- (void)reloadSection:(id)a3 completion:(id)a4
{
  v44[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v7 sectionIdentifier];
  v10 = v9;
  if (v9 != self->_sectionIdentifier)
  {
    v11 = [(NSString *)v9 isEqual:?];

    if (v11)
    {
      goto LABEL_5;
    }

    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [v7 sectionIdentifier];
    [v10 handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusicDataSourceState.m" lineNumber:438 description:{@"Attempt to connect section for different ID | %@ != %@", v12, self->_sectionIdentifier}];
  }

LABEL_5:
  os_unfair_lock_lock(&self->_stateLock);
  state = self->_state;
  self->_state = 1;
  [(_MPCQueueControllerBehaviorMusicDataSourceState *)self _inLock_buildPlaceholder];
  os_unfair_lock_unlock(&self->_stateLock);
  v14 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    sectionIdentifier = self->_sectionIdentifier;
    if (state >= 5)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown[%ld]", state];
    }

    else
    {
      v16 = off_1E8232DD0[state];
    }

    *buf = 138543618;
    v38 = sectionIdentifier;
    v39 = 2114;
    v40 = v16;
    _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEFAULT, "[DASOS:%{public}@] reloadSection:… | changing state [starting reloadSection] oldState=%{public}@ newState=Loading", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_eventStream);
  v18 = self->_sectionIdentifier;
  v43 = @"queue-section-id";
  v44[0] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
  [WeakRetained emitEventType:@"queue-load-begin" payload:v19];

  v20 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)self playbackContext];
  v21 = [v20 copy];

  v22 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController_Oversize");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = self->_sectionIdentifier;
    dataSource = self->_dataSource;
    *buf = 138543874;
    v38 = v23;
    v39 = 2048;
    v40 = dataSource;
    v41 = 2114;
    v42 = v21;
    _os_log_impl(&dword_1C5C61000, v22, OS_LOG_TYPE_DEFAULT, "[DASOS:%{public}@] reloadSection:… | loading playback context [dataSource %p] playbackContext=%{public}@ ", buf, 0x20u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76___MPCQueueControllerBehaviorMusicDataSourceState_reloadSection_completion___block_invoke;
  aBlock[3] = &unk_1E8237160;
  aBlock[4] = self;
  v25 = v21;
  v34 = v25;
  v26 = v8;
  v36 = v26;
  v27 = v7;
  v35 = v27;
  v28 = _Block_copy(aBlock);
  v29 = [MEMORY[0x1E69708A8] standardUserDefaults];
  v30 = [v29 delayQueueLoadDuration];

  if (v30)
  {
    [v30 doubleValue];
    v32 = dispatch_time(0, (v31 * 1000000000.0));
    dispatch_after(v32, MEMORY[0x1E69E96A0], v28);
  }

  else
  {
    v28[2](v28);
  }

  if (*&self->_supportedMethods)
  {
    os_unfair_lock_lock(&self->_stateLock);
    [(_MPCQueueControllerBehaviorMusicDataSourceState *)self _inLock_buildPlaceholder];
    os_unfair_lock_unlock(&self->_stateLock);
  }
}

- (id)cloneWithNewStartItemIdentifiers:(id)a3 identifierRegistry:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)self playbackContext];
  v9 = [v8 copy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 setStartItemIdentifiers:v6];
  }

  v10 = [[_MPCQueueControllerBehaviorMusicDataSourceState alloc] initWithPlaybackContext:v9];
  objc_storeStrong(&v10->_sectionIdentifier, self->_sectionIdentifier);
  objc_storeStrong(&v10->_originalPlaybackContext, self->_originalPlaybackContext);
  objc_storeStrong(&v10->_supplementalPlaybackContext, self->_supplementalPlaybackContext);
  v10->_supplementalPlaybackContextBehavior = self->_supplementalPlaybackContextBehavior;
  v10->_state = self->_state;
  v10->_frozen = self->_frozen;
  objc_storeStrong(&v10->_preferredStartItemIdentifier, self->_preferredStartItemIdentifier);
  WeakRetained = objc_loadWeakRetained(&self->_eventStream);
  objc_storeWeak(&v10->_eventStream, WeakRetained);

  objc_storeStrong(&v10->_playerID, self->_playerID);
  os_unfair_lock_lock(&self->_stateLock);
  objc_storeStrong(&v10->_tailPlaceholderItem, self->_tailPlaceholderItem);
  os_unfair_lock_unlock(&self->_stateLock);
  if (v7 && [objc_opt_class() usesIdentifierRegistry])
  {
    [(MPCQueueControllerBehaviorMusicDataSource *)v10->_dataSource replaceIdentifierRegistry:v7];
  }

  return v10;
}

- (void)updatePlaybackContext
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if ((*&self->_supportedMethods & 0x1000) != 0)
  {
    v4 = [(MPCQueueControllerBehaviorMusicDataSource *)self->_dataSource updatedPlaybackContext];
    v5 = objc_opt_class();
    if (v5 != objc_opt_class())
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = objc_opt_class();
      [v7 handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusicDataSourceState.m" lineNumber:394 description:{@"UpdatedPlaybackContext changed types %@ != %@", v8, objc_opt_class()}];
    }

    objc_storeStrong(&self->_playbackContext, v4);
    originalPlaybackContext = self->_originalPlaybackContext;
    self->_originalPlaybackContext = v4;
  }
}

- (MPPlaceholderAVItem)tailPlaceholderItem
{
  os_unfair_lock_lock(&self->_stateLock);
  v3 = self->_tailPlaceholderItem;
  os_unfair_lock_unlock(&self->_stateLock);

  return v3;
}

- (void)loadAdditionalItemsIfNeededWithCount:(int64_t)a3 completion:(id)a4
{
  v32[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  os_unfair_lock_lock(&self->_stateLock);
  state = self->_state;
  os_unfair_lock_unlock(&self->_stateLock);
  if (self->_frozen || (state - 1) <= 1)
  {
    v11 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      sectionIdentifier = self->_sectionIdentifier;
      frozen = self->_frozen;
      *buf = 138543874;
      v28 = sectionIdentifier;
      v29 = 1024;
      *v30 = frozen;
      *&v30[4] = 2050;
      *&v30[6] = state;
      _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "[DASOS:%{public}@] loadAdditionalItemsIfNeededWithCompletion: additional loading skipped [data source loading or frozen] - _frozen=%{BOOL}u _state=%{public}ld", buf, 0x1Cu);
    }

    goto LABEL_17;
  }

  if ((*&self->_supportedMethods & 0x80) == 0)
  {
    v8 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->_sectionIdentifier;
      *buf = 138543618;
      v28 = v9;
      v29 = 2048;
      *v30 = a3;
      v10 = "[DASOS:%{public}@] loadAdditionalItemsIfNeededWithCount:%ld… | additional loading skipped [data source doesn't support loading more]";
LABEL_15:
      _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, v10, buf, 0x16u);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  if (![(MPCQueueControllerBehaviorMusicDataSource *)self->_dataSource shouldRequestAdditionalItemsWhenReachingTailOfSection:self->_sectionIdentifier])
  {
    v8 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v21 = self->_sectionIdentifier;
      *buf = 138543618;
      v28 = v21;
      v29 = 2048;
      *v30 = a3;
      v10 = "[DASOS:%{public}@] loadAdditionalItemsIfNeededWithCount:%ld… | additional loading skipped [data source doesn't want to load more]";
      goto LABEL_15;
    }

LABEL_16:

LABEL_17:
    v6[2](v6, 0);
    goto LABEL_18;
  }

  WeakRetained = objc_loadWeakRetained(&self->_eventStream);
  v15 = self->_sectionIdentifier;
  v31 = @"queue-section-id";
  v32[0] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  [WeakRetained emitEventType:@"queue-load-begin" payload:v16];

  os_unfair_lock_lock(&self->_stateLock);
  v17 = self->_state;
  self->_state = 2;
  [(_MPCQueueControllerBehaviorMusicDataSourceState *)self _inLock_buildPlaceholder];
  os_unfair_lock_unlock(&self->_stateLock);
  v18 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = self->_sectionIdentifier;
    if (v17 >= 5)
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown[%ld]", v17];
    }

    else
    {
      v20 = off_1E8232DD0[v17];
    }

    *buf = 138543874;
    v28 = v19;
    v29 = 2048;
    *v30 = a3;
    *&v30[8] = 2114;
    *&v30[10] = v20;
    _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_DEFAULT, "[DASOS:%{public}@] loadAdditionalItemsIfNeededWithCount:%ld… | changing state [start loading additional] oldState=%{public}@ newState=LoadingAdditionalItems", buf, 0x20u);
  }

  dataSource = self->_dataSource;
  v23 = self->_sectionIdentifier;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __99___MPCQueueControllerBehaviorMusicDataSourceState_loadAdditionalItemsIfNeededWithCount_completion___block_invoke;
  v24[3] = &unk_1E8236C20;
  v24[4] = self;
  v26 = a3;
  v25 = v6;
  [(MPCQueueControllerBehaviorMusicDataSource *)dataSource loadAdditionalItemsWithCount:a3 forSection:v23 completion:v24];

LABEL_18:
}

- (BOOL)isPlayableItem:(id)a3 inSection:(id)a4
{
  if ((*&self->_supportedMethods & 0x400) != 0)
  {
    return [(MPCQueueControllerBehaviorMusicDataSource *)self->_dataSource isPlayableItem:a3 inSection:a4];
  }

  else
  {
    return 1;
  }
}

- (BOOL)shouldUsePlaceholderForItem:(id)a3 inSection:(id)a4
{
  if ((*&self->_supportedMethods & 0x200) != 0)
  {
    return [(MPCQueueControllerBehaviorMusicDataSource *)self->_dataSource shouldUsePlaceholderForItem:a3 inSection:a4];
  }

  else
  {
    return 0;
  }
}

- (int64_t)prefetchThreshold
{
  if ((*&self->_supportedMethods & 0x100) != 0)
  {
    return [(MPCQueueControllerBehaviorMusicDataSource *)self->_dataSource prefetchThresholdForSection:self->_sectionIdentifier];
  }

  else
  {
    return 0;
  }
}

- (void)itemDidBeginPlayback:(id)a3
{
  if ((*&self->_supportedMethods & 0x40) != 0)
  {
    [(MPCQueueControllerBehaviorMusicDataSource *)self->_dataSource itemDidBeginPlayback:a3];
  }
}

- (BOOL)isRadioDataSource
{
  if ((*&self->_supportedMethods & 0x2000) != 0)
  {
    return [(MPCQueueControllerBehaviorMusicDataSource *)self->_dataSource containsRadioContent];
  }

  else
  {
    return 0;
  }
}

- (id)firstItemIntersectingIdentifierSet:(id)a3
{
  if ((*&self->_supportedMethods & 0x20) != 0)
  {
    v5 = [(MPCQueueControllerBehaviorMusicDataSource *)self->_dataSource firstItemIntersectingIdentifierSet:a3, v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)canSkipItem:(id)a3 reason:(id *)a4
{
  if ((*&self->_supportedMethods & 0x10) != 0)
  {
    return [(MPCQueueControllerBehaviorMusicDataSource *)self->_dataSource canSkipItem:a3 reason:a4];
  }

  else
  {
    return 1;
  }
}

- (BOOL)canJumpToItem:(id)a3 reason:(id *)a4
{
  if ((*&self->_supportedMethods & 8) != 0)
  {
    return [(MPCQueueControllerBehaviorMusicDataSource *)self->_dataSource canJumpToItem:a3 reason:a4];
  }

  else
  {
    return 1;
  }
}

- (id)getTailPlaceholderItemAndState:(int64_t *)a3
{
  os_unfair_lock_lock(&self->_stateLock);
  v5 = self->_tailPlaceholderItem;
  if (a3)
  {
    *a3 = self->_state;
  }

  os_unfair_lock_unlock(&self->_stateLock);

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  frozen = self->_frozen;
  v18 = v4;
  if ((self->_supplementalPlaybackContextBehavior & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    [v4 encodeObject:self->_playbackContext forKey:@"pc"];
    goto LABEL_20;
  }

  if ((*&self->_supportedMethods & 4) != 0)
  {
    supplementalPlaybackContextBehavior = [(MPCQueueControllerBehaviorMusicDataSource *)self->_dataSource supplementalPlaybackContextBehavior];
    p_super = self->_originalPlaybackContext;
    if (supplementalPlaybackContextBehavior == 3)
    {
      frozen = 1;
      goto LABEL_10;
    }
  }

  else
  {
    p_super = self->_originalPlaybackContext;
    supplementalPlaybackContextBehavior = 0;
  }

  if (([(MPPlaybackContext *)p_super containsRestorableContent]& 1) == 0)
  {
    v8 = objc_alloc_init(_MPCNullPlaybackContext);
    v9 = [(MPPlaybackContext *)p_super description];
    [(_MPCNullPlaybackContext *)v8 setLabel:v9];

    p_super = &v8->super;
  }

  [v18 encodeObject:p_super forKey:@"pc"];
LABEL_10:
  if (self->_supplementalPlaybackContext == self->_playbackContext)
  {
    [v18 encodeObject:? forKey:?];
    supplementalPlaybackContextBehavior = self->_supplementalPlaybackContextBehavior;
  }

  else
  {
    supportedMethods = self->_supportedMethods;
    if ((supportedMethods & 2) != 0)
    {
      v11 = [v18 msv_userInfo];
      v12 = [v11 objectForKeyedSubscript:*MEMORY[0x1E6970358]];
      v13 = [v12 integerValue];

      v14 = [(MPCQueueControllerBehaviorMusicDataSource *)self->_dataSource supplementalPlaybackContextWithReason:v13];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
        v16 = [(MPPlaybackContext *)p_super description];
        [v15 setLabel:v16];
      }

      [v18 encodeObject:v14 forKey:@"spc"];

      supportedMethods = self->_supportedMethods;
    }

    if ((supportedMethods & 4) == 0)
    {
      goto LABEL_19;
    }
  }

  [v18 encodeInteger:supplementalPlaybackContextBehavior forKey:@"spcb"];
LABEL_19:

LABEL_20:
  [v18 encodeObject:self->_sectionIdentifier forKey:@"si"];
  [v18 encodeBool:frozen forKey:@"f"];
  if ([objc_opt_class() usesIdentifierRegistry])
  {
    v17 = [(MPCQueueControllerBehaviorMusicDataSource *)self->_dataSource identifierRegistryWithExclusiveAccessReturningObject:&__block_literal_global_7476];
    [v18 encodeObject:v17 forKey:@"reg"];
  }
}

- (_MPCQueueControllerBehaviorMusicDataSourceState)initWithCoder:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"si"];
  v7 = [v5 msv_userInfo];
  v8 = [v7 objectForKeyedSubscript:@"SOD.sectionID"];
  v9 = v8;
  if (v6 == v8)
  {

    goto LABEL_5;
  }

  v10 = [v6 isEqual:v8];

  if (v10)
  {
LABEL_5:
    v11 = [v7 mutableCopy];
    v12 = [v11 objectForKeyedSubscript:@"QC.SOD.personID"];
    [v11 setObject:v12 forKeyedSubscript:@"SPIR.SOD.personID"];

    v13 = [v11 objectForKeyedSubscript:@"QC.SOD.itemPayloadData"];
    [v11 setObject:v13 forKeyedSubscript:@"SPIR.SOD.itemPayloadData"];

    v14 = [v11 objectForKeyedSubscript:@"QC.SOD.containerPayloadData"];
    [v11 setObject:v14 forKeyedSubscript:@"SPIR.SOD.containerPayloadData"];

    [v5 msv_setUserInfo:v11];
  }

  v15 = [v5 decodeIntegerForKey:@"spcb"];
  v16 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"spc"];
  v17 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"pc"];
  [v5 msv_setUserInfo:v7];
  if ((v15 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    LOBYTE(v18) = 1;
  }

  else
  {
    v18 = [v17 isSupported] ^ 1;
  }

  if ((v18 & (v16 != 0)) != 0)
  {
    v19 = v16;
  }

  else
  {
    v19 = v17;
  }

  v20 = v19;
  if (!v20)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"_MPCQueueControllerBehaviorMusicDataSourceState.m" lineNumber:150 description:{@"No active context for datasoure state for section: %@", v6}];
  }

  v21 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)self initWithPlaybackContext:v20];
  v22 = v21;
  if (v21)
  {
    v21->_state = 1;
    objc_storeStrong(&v21->_sectionIdentifier, v6);
    v23 = os_log_create("com.apple.amp.mediaplaybackcore", "QueueController");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      sectionIdentifier = v22->_sectionIdentifier;
      *buf = 138543362;
      v29 = sectionIdentifier;
      _os_log_impl(&dword_1C5C61000, v23, OS_LOG_TYPE_DEFAULT, "[DASOS:%{public}@] initWithCoder: | changing state [init] oldState=Unknown newState=Loading", buf, 0xCu);
    }

    objc_storeStrong(&v22->_originalPlaybackContext, v17);
    objc_storeStrong(&v22->_supplementalPlaybackContext, v16);
    v22->_supplementalPlaybackContextBehavior = v15;
    v22->_frozen = [v5 decodeBoolForKey:@"f"];
    if ([objc_opt_class() usesIdentifierRegistry] && objc_msgSend(objc_opt_class(), "restoresIdentifierRegistry"))
    {
      v25 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"reg"];
      [(MPCQueueControllerBehaviorMusicDataSource *)v22->_dataSource replaceIdentifierRegistry:v25];
    }
  }

  return v22;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)self playbackContext];
  v5 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)self originalPlaybackContext];
  v6 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)self supplementalPlaybackContext];
  v7 = [v3 stringWithFormat:@"<_MPCQueueControllerDataSourceState %p> playbackContext: %@ - originalContext: %@ - supplementalContext: %@", self, v4, v5, v6];

  return v7;
}

- (_MPCQueueControllerBehaviorMusicDataSourceState)initWithPlaybackContext:(id)a3
{
  v6 = a3;
  v30.receiver = self;
  v30.super_class = _MPCQueueControllerBehaviorMusicDataSourceState;
  v7 = [(_MPCQueueControllerBehaviorMusicDataSourceState *)&v30 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_playbackContext, a3);
    objc_storeStrong(&v8->_originalPlaybackContext, a3);
    v9 = [v6 queueFeederClass];
    v10 = objc_alloc_init(v9);
    if (!v10)
    {
      v29 = [MEMORY[0x1E696AAA8] currentHandler];
      [v29 handleFailureInMethod:a2 object:v8 file:@"_MPCQueueControllerBehaviorMusicDataSourceState.m" lineNumber:80 description:{@"Failed to instantiate queueFeederClass: %@", v9}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v10 setDelegate:v8];
    }

    objc_storeStrong(&v8->_dataSource, v10);
    v11 = [v6 overrideSILSectionID];
    v12 = [v11 length];

    if (v12)
    {
      [v6 overrideSILSectionID];
    }

    else
    {
      MSVNanoIDCreateTaggedPointer();
    }
    v13 = ;
    sectionIdentifier = v8->_sectionIdentifier;
    v8->_sectionIdentifier = v13;

    v8->_stateLock._os_unfair_lock_opaque = 0;
    *&v8->_supportedMethods = *&v8->_supportedMethods & 0xFFFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v15 = 2;
    }

    else
    {
      v15 = 0;
    }

    *&v8->_supportedMethods = *&v8->_supportedMethods & 0xFFFD | v15;
    if (objc_opt_respondsToSelector())
    {
      v16 = 4;
    }

    else
    {
      v16 = 0;
    }

    *&v8->_supportedMethods = *&v8->_supportedMethods & 0xFFFB | v16;
    if (objc_opt_respondsToSelector())
    {
      v17 = 8;
    }

    else
    {
      v17 = 0;
    }

    *&v8->_supportedMethods = *&v8->_supportedMethods & 0xFFF7 | v17;
    if (objc_opt_respondsToSelector())
    {
      v18 = 16;
    }

    else
    {
      v18 = 0;
    }

    *&v8->_supportedMethods = *&v8->_supportedMethods & 0xFFEF | v18;
    if (objc_opt_respondsToSelector())
    {
      v19 = 32;
    }

    else
    {
      v19 = 0;
    }

    *&v8->_supportedMethods = *&v8->_supportedMethods & 0xFFDF | v19;
    if (objc_opt_respondsToSelector())
    {
      v20 = 64;
    }

    else
    {
      v20 = 0;
    }

    *&v8->_supportedMethods = *&v8->_supportedMethods & 0xFFBF | v20;
    if (objc_opt_respondsToSelector())
    {
      v21 = 128;
    }

    else
    {
      v21 = 0;
    }

    *&v8->_supportedMethods = *&v8->_supportedMethods & 0xFF7F | v21;
    if (objc_opt_respondsToSelector())
    {
      v22 = 256;
    }

    else
    {
      v22 = 0;
    }

    *&v8->_supportedMethods = *&v8->_supportedMethods & 0xFEFF | v22;
    if (objc_opt_respondsToSelector())
    {
      v23 = 512;
    }

    else
    {
      v23 = 0;
    }

    *&v8->_supportedMethods = *&v8->_supportedMethods & 0xFDFF | v23;
    if (objc_opt_respondsToSelector())
    {
      v24 = 1024;
    }

    else
    {
      v24 = 0;
    }

    *&v8->_supportedMethods = *&v8->_supportedMethods & 0xFBFF | v24;
    if (objc_opt_respondsToSelector())
    {
      v25 = 2048;
    }

    else
    {
      v25 = 0;
    }

    *&v8->_supportedMethods = *&v8->_supportedMethods & 0xF7FF | v25;
    if (objc_opt_respondsToSelector())
    {
      v26 = 4096;
    }

    else
    {
      v26 = 0;
    }

    *&v8->_supportedMethods = *&v8->_supportedMethods & 0xEFFF | v26;
    if (objc_opt_respondsToSelector())
    {
      v27 = 0x2000;
    }

    else
    {
      v27 = 0;
    }

    *&v8->_supportedMethods = *&v8->_supportedMethods & 0xDFFF | v27;
  }

  return v8;
}

@end