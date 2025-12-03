@interface MPCModelRadioQueueFeeder
+ (id)sharedQueue;
+ (void)__CRASH_FOR_UNEXPECTED_TRACK_DELETE__;
- (BOOL)_isTransientLoadingError:(id)error;
- (BOOL)canSkipItem:(id)item reason:(id *)reason;
- (BOOL)containsLiveStream;
- (BOOL)shouldRequestAdditionalItemsWhenReachingTailOfSection:(id)section;
- (MPCModelRadioQueueFeeder)init;
- (MPCQueueControllerBehaviorMusicDataSourceDelegate)delegate;
- (NSString)playbackEngineID;
- (id)_defaultGetTracksRequestWithContext:(id)context radioStation:(id)station;
- (id)_errorForRequest:(id)request withError:(id)error;
- (id)accountIDForItem:(id)item inSection:(id)section;
- (id)firstModelPlayEvent;
- (id)identifiersForItem:(id)item inSection:(id)section;
- (id)itemForItem:(id)item inSection:(id)section;
- (id)placeholderItemForLoadingAdditionalItemsInSection:(id)section;
- (id)supplementalPlaybackContextWithReason:(int64_t)reason;
- (int64_t)prefetchThresholdForSection:(id)section;
- (int64_t)supplementalPlaybackContextBehavior;
- (unint64_t)itemCountInSection:(id)section;
- (void)_allowCellularStreamingDidChangeNotification:(id)notification;
- (void)_beginBackgroundTaskAssertion;
- (void)_beginObservingIdentityStoreForSignOut;
- (void)_detectSignOutForIdentityStore:(id)store;
- (void)_detectSignOutForIdentityStoreChangeNotification:(id)notification;
- (void)_endBackgroundTaskAssertion;
- (void)_endObservingIdentityStoreForSignOut;
- (void)_handleGetTracksResponse:(id)response getTracksError:(id)error fromRequest:(id)request completion:(id)completion;
- (void)_handlePersonalizationResponse:(id)response personalizationError:(id)error fromRequest:(id)request completion:(id)completion;
- (void)_loadTracksWithRequest:(id)request completion:(id)completion;
- (void)_observePersonalizationResponse:(id)response;
- (void)_removeAllTracks;
- (void)_removeRestrictedTracks;
- (void)_repersonalizeCurrentTracks;
- (void)_responseDidInvalidate;
- (void)_responseDidInvalidateNotification:(id)notification;
- (void)_updateAdditionalLoadingSupport;
- (void)dealloc;
- (void)environmentMonitorDidChangeNetworkType:(id)type;
- (void)getRepresentativeMetadataForPlaybackContext:(id)context properties:(id)properties completion:(id)completion;
- (void)itemDidBeginPlayback:(id)playback;
- (void)loadAdditionalItemsWithCount:(int64_t)count forSection:(id)section completion:(id)completion;
- (void)loadPlaybackContext:(id)context completion:(id)completion;
- (void)reloadSection:(id)section completion:(id)completion;
@end

@implementation MPCModelRadioQueueFeeder

- (BOOL)containsLiveStream
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  tracks = [(MPCModelRadioPlaybackQueue *)self->_playbackQueue tracks];
  allItems = [tracks allItems];

  v4 = [allItems countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(allItems);
        }

        if ([*(*(&v8 + 1) + 8 * i) trackType] == 4)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [allItems countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (MPCQueueControllerBehaviorMusicDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSString)playbackEngineID
{
  delegate = [(MPCModelRadioQueueFeeder *)self delegate];
  playbackEngineID = [delegate playbackEngineID];

  return playbackEngineID;
}

- (void)_repersonalizeCurrentTracks
{
  tracks = [(MPCModelRadioPlaybackQueue *)self->_playbackQueue tracks];
  if ([tracks totalItemCount] >= 1)
  {
    queueGeneration = self->_queueGeneration;
    objc_initWeak(&location, self);
    v5 = [[MPCModelRadioPersonalizationRequest alloc] initWithRadioStationTracks:tracks];
    itemKind = [(MPCModelRadioPersonalizationRequest *)v5 itemKind];
    v7 = [objc_msgSend(itemKind "modelClass")];
    [(MPCModelRadioPersonalizationRequest *)v5 setItemProperties:v7];

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __55__MPCModelRadioQueueFeeder__repersonalizeCurrentTracks__block_invoke;
    v8[3] = &unk_1E8235880;
    objc_copyWeak(v9, &location);
    v9[1] = queueGeneration;
    [(MPCModelRadioPersonalizationRequest *)v5 performWithResponseHandler:v8];
    objc_destroyWeak(v9);

    objc_destroyWeak(&location);
  }
}

void __55__MPCModelRadioQueueFeeder__repersonalizeCurrentTracks__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__MPCModelRadioQueueFeeder__repersonalizeCurrentTracks__block_invoke_2;
  block[3] = &unk_1E8235858;
  objc_copyWeak(v8, (a1 + 32));
  v4 = *(a1 + 40);
  v7 = v3;
  v8[1] = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(v8);
}

void __55__MPCModelRadioQueueFeeder__repersonalizeCurrentTracks__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (*(a1 + 32))
  {
    v3 = WeakRetained == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3 && WeakRetained[19] == *(a1 + 48))
  {
    v4 = WeakRetained;
    [WeakRetained[10] updateWithPersonalizedResponse:?];
    [v4 _observePersonalizationResponse:*(a1 + 32)];
    WeakRetained = v4;
  }
}

- (void)_responseDidInvalidate
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__MPCModelRadioQueueFeeder__responseDidInvalidate__block_invoke;
  block[3] = &unk_1E8239298;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __50__MPCModelRadioQueueFeeder__responseDidInvalidate__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E6970920] sharedRestrictionsMonitor];
  v3 = [v2 allowsExplicitContent];

  if ((v3 & 1) == 0)
  {
    [*(a1 + 32) _removeRestrictedTracks];
  }

  v4 = *(a1 + 32);

  return [v4 _repersonalizeCurrentTracks];
}

- (void)_removeRestrictedTracks
{
  v25 = *MEMORY[0x1E69E9840];
  removeExplicitItems = [(MPCModelRadioPlaybackQueue *)self->_playbackQueue removeExplicitItems];
  if ([removeExplicitItems hasChanges])
  {
    ++self->_queueGeneration;
    v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      deletedIndexes = [removeExplicitItems deletedIndexes];
      *buf = 134218240;
      selfCopy = self;
      v23 = 2048;
      v24 = [deletedIndexes count];
      _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_ERROR, "[RQF:%p] _removeRestrictedTracks | removedItems.count=%ld", buf, 0x16u);
    }

    v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    v7 = os_signpost_id_make_with_pointer(v6, self->_playbackQueue);

    v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    v9 = v8;
    v10 = v7 - 1;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "rqf:_removeRestrictedTracks:apply", "", buf, 2u);
    }

    v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    v12 = v11;
    if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v12, OS_SIGNPOST_EVENT, v7, "rqf:_removeRestrictedTracks:apply", "applying", buf, 2u);
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __51__MPCModelRadioQueueFeeder__removeRestrictedTracks__block_invoke;
    v18[3] = &unk_1E8235830;
    v13 = removeExplicitItems;
    v19 = v13;
    selfCopy2 = self;
    [(MPQueueFeeder *)self identifierRegistryWithExclusiveAccess:v18];
    section = self->_section;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __51__MPCModelRadioQueueFeeder__removeRestrictedTracks__block_invoke_3;
    v17[3] = &unk_1E82356D0;
    v17[4] = self;
    [(MPMutableIdentifierListSection *)section applyChanges:v13 itemLookupBlock:v17];
    v15 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    v16 = v15;
    if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v16, OS_SIGNPOST_INTERVAL_END, v7, "rqf:_removeRestrictedTracks:apply", "", buf, 2u);
    }
  }
}

uint64_t __51__MPCModelRadioQueueFeeder__removeRestrictedTracks__block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__MPCModelRadioQueueFeeder__removeRestrictedTracks__block_invoke_2;
  v4[3] = &unk_1E8235748;
  v2 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  return [a2 applyChanges:v2 identifierSetLookupBlock:v4];
}

id __51__MPCModelRadioQueueFeeder__removeRestrictedTracks__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__MPCModelRadioQueueFeeder__removeRestrictedTracks__block_invoke_4;
  v5[3] = &__block_descriptor_40_e41__16__0__MPQueueFeederIdentifierRegistry_8l;
  v5[4] = a2;
  v3 = [v2 identifierRegistryWithExclusiveAccessReturningObject:v5];

  return v3;
}

id __51__MPCModelRadioQueueFeeder__removeRestrictedTracks__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(*(a1 + 32) + 80) trackModels];
  v5 = [v4 indexPathForGlobalIndex:a2];

  v6 = [*(*(a1 + 32) + 80) trackModels];
  v7 = [v6 identifiersForItemAtIndexPath:v5];

  return v7;
}

- (void)_removeAllTracks
{
  v21 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  itemIdentifiers = [(MPMutableIdentifierListSection *)self->_section itemIdentifiers];
  v4 = [itemIdentifiers copy];

  v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v6 = os_signpost_id_make_with_pointer(v5, self->_playbackQueue);

  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v8 = v7;
  v9 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "rqf:_removeAllTracks:diff", "", buf, 2u);
  }

  v10 = [MEMORY[0x1E69704C8] changeDetailsWithPreviousCount:objc_msgSend(v4 finalCount:"count") isEqualBlock:0 isUpdatedBlock:{&__block_literal_global_148, &__block_literal_global_150}];
  v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v12 = v11;
  if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 138543362;
    v20 = v10;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v12, OS_SIGNPOST_INTERVAL_END, v6, "rqf:_removeAllTracks:diff", "changes=%{public}@", buf, 0xCu);
  }

  if (v10)
  {
    v13 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    v14 = v13;
    if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v6, "rqf:_removeAllTracks:apply", "", buf, 2u);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__MPCModelRadioQueueFeeder__removeAllTracks__block_invoke_151;
    block[3] = &unk_1E82391E8;
    block[4] = self;
    v18 = v6;
    v17 = v10;
    v15 = MEMORY[0x1E69E96A0];
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __44__MPCModelRadioQueueFeeder__removeAllTracks__block_invoke_151(uint64_t a1)
{
  [*(*(a1 + 32) + 80) removeAllItems];
  v2 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v3 = v2;
  v4 = *(a1 + 48);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v3, OS_SIGNPOST_EVENT, v4, "rqf:_removeAllTracks:apply", "applying", buf, 2u);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __44__MPCModelRadioQueueFeeder__removeAllTracks__block_invoke_152;
  v13[3] = &unk_1E8235808;
  v5 = *(a1 + 32);
  v14 = *(a1 + 40);
  [v5 identifierRegistryWithExclusiveAccess:v13];
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 72);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__MPCModelRadioQueueFeeder__removeAllTracks__block_invoke_3;
  v12[3] = &unk_1E82356D0;
  v12[4] = v7;
  [v8 applyChanges:v6 itemLookupBlock:v12];
  v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v10 = v9;
  v11 = *(a1 + 48);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v10, OS_SIGNPOST_INTERVAL_END, v11, "rqf:_removeAllTracks:apply", "", buf, 2u);
  }
}

id __44__MPCModelRadioQueueFeeder__removeAllTracks__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__MPCModelRadioQueueFeeder__removeAllTracks__block_invoke_4;
  v5[3] = &__block_descriptor_40_e41__16__0__MPQueueFeederIdentifierRegistry_8l;
  v5[4] = a2;
  v3 = [v2 identifierRegistryWithExclusiveAccessReturningObject:v5];

  return v3;
}

- (void)_observePersonalizationResponse:(id)response
{
  v12 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  if (self->_lastResponse != responseCopy)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v7 = defaultCenter;
    v8 = MEMORY[0x1E6970240];
    if (self->_lastResponse)
    {
      [defaultCenter removeObserver:self name:*MEMORY[0x1E6970240] object:?];
    }

    objc_storeStrong(&self->_lastResponse, response);
    if (self->_lastResponse)
    {
      [v7 addObserver:self selector:sel__responseDidInvalidateNotification_ name:*v8 object:?];
      if (![(MPModelResponse *)self->_lastResponse isValid])
      {
        v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = 134217984;
          selfCopy = self;
          _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_INFO, "[RQF:%p] personalization response invalidated", &v10, 0xCu);
        }

        [(MPCModelRadioQueueFeeder *)self _responseDidInvalidate];
      }
    }
  }
}

- (void)_loadTracksWithRequest:(id)request completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  [(MPCModelRadioQueueFeeder *)self _beginBackgroundTaskAssertion];
  v8 = self->_siriAssetInfo;
  siriAssetInfo = self->_siriAssetInfo;
  self->_siriAssetInfo = 0;

  objc_initWeak(&location, self);
  v10 = [[MPCModelRadioGetTracksOperation alloc] initWithGetTracksRequest:requestCopy siriAssetInfo:v8 radioQueueFeeder:self];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __62__MPCModelRadioQueueFeeder__loadTracksWithRequest_completion___block_invoke;
  v17[3] = &unk_1E82357C0;
  v17[4] = self;
  v11 = requestCopy;
  v18 = v11;
  objc_copyWeak(&v20, &location);
  v12 = completionCopy;
  v19 = v12;
  [(MPCModelRadioGetTracksOperation *)v10 setCompletionHandler:v17];
  v13 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    sharedQueue = [objc_opt_class() sharedQueue];
    operationCount = [sharedQueue operationCount];
    *buf = 134218498;
    selfCopy = self;
    v24 = 2114;
    v25 = v11;
    v26 = 2048;
    v27 = operationCount;
    _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEFAULT, "[RQF:%p] _loadTracksWithRequest:… | starting [] request=%{public}@ sharedQueue.operationCount=%ld", buf, 0x20u);
  }

  sharedQueue2 = [objc_opt_class() sharedQueue];
  [sharedQueue2 addOperation:v10];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __62__MPCModelRadioQueueFeeder__loadTracksWithRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__MPCModelRadioQueueFeeder__loadTracksWithRequest_completion___block_invoke_2;
  block[3] = &unk_1E8235798;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = v7;
  v20 = v8;
  v12 = v8;
  v13 = v7;
  v14 = v9;
  objc_copyWeak(&v22, (a1 + 56));
  v21 = *(a1 + 48);
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v22);
}

void __62__MPCModelRadioQueueFeeder__loadTracksWithRequest_completion___block_invoke_2(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v7 = *(a1 + 56);
      v8 = [*(a1 + 64) urlMetrics];
      v9 = [v8 firstObject];
      v10 = [v9 humanDescription];
      v11 = [*(a1 + 32) treeDescription];
      *buf = 134219010;
      v26 = v5;
      v27 = 2114;
      v28 = v6;
      v29 = 2114;
      v30 = v7;
      v31 = 2114;
      v32 = v10;
      v33 = 2114;
      v34 = v11;
      _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_ERROR, "[RQF:%p] _loadTracksWithRequest:… | finished [] request=%{public}@ response=%{public}@ metrics='%{public}@' error=%{public}@", buf, 0x34u);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    v15 = [*(a1 + 64) urlMetrics];
    v16 = [v15 firstObject];
    v17 = [v16 humanDescription];
    *buf = 134218754;
    v26 = v12;
    v27 = 2114;
    v28 = v13;
    v29 = 2114;
    v30 = v14;
    v31 = 2114;
    v32 = v17;
    _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "[RQF:%p] _loadTracksWithRequest:… | finished [] request=%{public}@ response=%{public}@ metrics='%{public}@'", buf, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v19 = *(a1 + 32);
  v21 = *(a1 + 48);
  v20 = *(a1 + 56);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __62__MPCModelRadioQueueFeeder__loadTracksWithRequest_completion___block_invoke_142;
  v22[3] = &unk_1E8236B80;
  v24 = *(a1 + 72);
  v23 = *(a1 + 64);
  [WeakRetained _handleGetTracksResponse:v20 getTracksError:v19 fromRequest:v21 completion:v22];
}

- (BOOL)_isTransientLoadingError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = [domain isEqualToString:*MEMORY[0x1E69E4198]];

  if (v5)
  {
    code = [errorCopy code];
    v8 = code == -7100 || code == -7103;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_handlePersonalizationResponse:(id)response personalizationError:(id)error fromRequest:(id)request completion:(id)completion
{
  v88 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  errorCopy = error;
  requestCopy = request;
  completionCopy = completion;
  v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v15 = os_signpost_id_make_with_pointer(v14, responseCopy);

  v16 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v17 = v16;
  spid = v15;
  v18 = v15 - 1;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "rqf:_handlePersonalizationResponse", "", buf, 2u);
  }

  if (responseCopy)
  {
    v69 = completionCopy;
    v71 = requestCopy;
    v72 = errorCopy;
    if (!self->_queueGeneration)
    {
      radioStation = [(MPCModelRadioPlaybackContext *)self->_playbackContext radioStation];
      identifiers = [radioStation identifiers];
      radio = [identifiers radio];
      stationStringID = [radio stationStringID];
      v23 = [stationStringID length];

      if (!v23)
      {
        radioStationTracks = [responseCopy radioStationTracks];
        firstSection = [radioStationTracks firstSection];
        identifiers2 = [firstSection identifiers];
        radio2 = [identifiers2 radio];
        stationStringID2 = [radio2 stationStringID];

        if ([(MPCModelRadioQueueFeeder *)stationStringID2 length])
        {
          v29 = [(MPCModelRadioPlaybackContext *)self->_playbackContext copy];
          radioStationTracks2 = [responseCopy radioStationTracks];
          firstSection2 = [radioStationTracks2 firstSection];
          [(MPCModelRadioPlaybackContext *)v29 setRadioStation:firstSection2];

          playbackContext = self->_playbackContext;
          self->_playbackContext = v29;

          v33 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            selfCopy5 = self;
            v84 = 2114;
            v85 = stationStringID2;
            _os_log_impl(&dword_1C5C61000, v33, OS_LOG_TYPE_DEFAULT, "[RQF:%p] _handlePersonalizationResponse: | updating section [gained stationID] newStationID=%{public}@", buf, 0x16u);
          }

          section = self->_section;
          if (!section)
          {
            self->_needsSectionUpdate = 1;
            section = self->_section;
          }

          [(MPMutableIdentifierListSection *)section updateSection];
        }

        else
        {
        }
      }
    }

    numberOfItems = [(MPCModelRadioPlaybackQueue *)self->_playbackQueue numberOfItems];
    results = [responseCopy results];
    totalItemCount = [results totalItemCount];

    if (numberOfItems == totalItemCount)
    {
      v42 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218496;
        selfCopy5 = self;
        v84 = 2048;
        v85 = numberOfItems;
        v86 = 2048;
        v87 = numberOfItems;
        _os_log_impl(&dword_1C5C61000, v42, OS_LOG_TYPE_ERROR, "[RQF:%p] _handlePersonalizationResponse: | setting _hasReachedTracklistEnd=YES [no new items] previousCount=%ld finalCount=%ld", buf, 0x20u);
      }

      self->_hasReachedTracklistEnd = 1;
    }

    ++self->_queueGeneration;
    trackModels = [(MPCModelRadioPlaybackQueue *)self->_playbackQueue trackModels];
    allItems = [trackModels allItems];
    v45 = [allItems copy];

    [(MPCModelRadioPlaybackQueue *)self->_playbackQueue updateWithPersonalizedResponse:responseCopy];
    [(MPCModelRadioQueueFeeder *)self _observePersonalizationResponse:responseCopy];
    mEMORY[0x1E6970920] = [MEMORY[0x1E6970920] sharedRestrictionsMonitor];
    LOBYTE(allItems) = [mEMORY[0x1E6970920] allowsExplicitContent];

    completionCopy = v70;
    if ((allItems & 1) == 0)
    {
      removeExplicitItems = [(MPCModelRadioPlaybackQueue *)self->_playbackQueue removeExplicitItems];
    }

    [(MPCModelRadioQueueFeeder *)self _beginObservingIdentityStoreForSignOut];
    trackModels2 = [(MPCModelRadioPlaybackQueue *)self->_playbackQueue trackModels];
    allItems2 = [trackModels2 allItems];
    v50 = [allItems2 copy];

    v51 = MEMORY[0x1E69704C8];
    v52 = [v45 count];
    v53 = [v50 count];
    v79[0] = MEMORY[0x1E69E9820];
    v79[1] = 3221225472;
    v79[2] = __103__MPCModelRadioQueueFeeder__handlePersonalizationResponse_personalizationError_fromRequest_completion___block_invoke;
    v79[3] = &unk_1E8235640;
    v35 = v45;
    v80 = v35;
    v54 = v50;
    v81 = v54;
    v55 = [v51 changeDetailsWithPreviousCount:v52 finalCount:v53 isEqualBlock:v79 isUpdatedBlock:&__block_literal_global_133];
    v56 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    v57 = v56;
    if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v56))
    {
      *buf = 138543362;
      selfCopy5 = v55;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v57, OS_SIGNPOST_INTERVAL_END, spid, "rqf:_handlePersonalizationResponse:diff", "changes=%{public}@", buf, 0xCu);
    }

    requestCopy = v71;
    if (v55)
    {
      v58 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        selfCopy5 = self;
        v84 = 2114;
        v85 = v55;
        _os_log_impl(&dword_1C5C61000, v58, OS_LOG_TYPE_DEFAULT, "[RQF:%p] _handlePersonalizationResponse: | applying diff [] changes=%{public}@", buf, 0x16u);
      }

      v59 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      v60 = v59;
      if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v59))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C5C61000, v60, OS_SIGNPOST_INTERVAL_BEGIN, spid, "rqf:_handlePersonalizationResponse:apply", "", buf, 2u);
      }

      v75[0] = MEMORY[0x1E69E9820];
      v75[1] = 3221225472;
      v75[2] = __103__MPCModelRadioQueueFeeder__handlePersonalizationResponse_personalizationError_fromRequest_completion___block_invoke_134;
      v75[3] = &unk_1E8235770;
      v61 = v55;
      v76 = v61;
      v77 = v54;
      selfCopy4 = self;
      [(MPQueueFeeder *)self identifierRegistryWithExclusiveAccess:v75];
      v62 = self->_section;
      v74[0] = MEMORY[0x1E69E9820];
      v74[1] = 3221225472;
      v74[2] = __103__MPCModelRadioQueueFeeder__handlePersonalizationResponse_personalizationError_fromRequest_completion___block_invoke_4;
      v74[3] = &unk_1E82356D0;
      v74[4] = self;
      [(MPMutableIdentifierListSection *)v62 applyChanges:v61 itemLookupBlock:v74];
      v63 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      v64 = v63;
      if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v63))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C5C61000, v64, OS_SIGNPOST_INTERVAL_END, spid, "rqf:_handlePersonalizationResponse:apply", "", buf, 2u);
      }
    }

    errorCopy = v72;
    if (v70)
    {
      v70[2](v70, 0);
    }

    v65 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    v66 = v65;
    if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v65))
    {
      results2 = [responseCopy results];
      totalItemCount2 = [results2 totalItemCount];
      *buf = 134217984;
      selfCopy5 = totalItemCount2;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v66, OS_SIGNPOST_INTERVAL_END, spid, "rqf:_handlePersonalizationResponse", "numberOfItems=%lld", buf, 0xCu);
    }
  }

  else
  {
    v35 = [(MPCModelRadioQueueFeeder *)self _errorForRequest:requestCopy withError:errorCopy];
    v36 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    v37 = v36;
    if (v18 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
    {
      *buf = 138543362;
      selfCopy5 = v35;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v37, OS_SIGNPOST_INTERVAL_END, v15, "rqf:_handlePersonalizationResponse", "error=%{public}@", buf, 0xCu);
    }

    v38 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy5 = self;
      v84 = 2114;
      v85 = v35;
      _os_log_impl(&dword_1C5C61000, v38, OS_LOG_TYPE_ERROR, "[RQF:%p] _handlePersonalizationResponse: | failing [queueGeneration = 0] error=%{public}@", buf, 0x16u);
    }

    completionCopy[2](completionCopy, v35);
  }
}

uint64_t __103__MPCModelRadioQueueFeeder__handlePersonalizationResponse_personalizationError_fromRequest_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v6 = [v5 identifiers];

  v7 = [*(a1 + 40) objectAtIndexedSubscript:a3];
  v8 = [v7 identifiers];

  v9 = [v6 intersectsSet:v8];
  return v9;
}

void __103__MPCModelRadioQueueFeeder__handlePersonalizationResponse_personalizationError_fromRequest_completion___block_invoke_134(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __103__MPCModelRadioQueueFeeder__handlePersonalizationResponse_personalizationError_fromRequest_completion___block_invoke_2_135;
  v6[3] = &unk_1E8235748;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __103__MPCModelRadioQueueFeeder__handlePersonalizationResponse_personalizationError_fromRequest_completion___block_invoke_3;
  v5[3] = &unk_1E82356D0;
  v5[4] = *(a1 + 48);
  [a2 applyChanges:v4 identifierSetLookupBlock:v6 itemIdentifierLookupBlock:v5];
}

id __103__MPCModelRadioQueueFeeder__handlePersonalizationResponse_personalizationError_fromRequest_completion___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __103__MPCModelRadioQueueFeeder__handlePersonalizationResponse_personalizationError_fromRequest_completion___block_invoke_5;
  v5[3] = &__block_descriptor_40_e41__16__0__MPQueueFeederIdentifierRegistry_8l;
  v5[4] = a2;
  v3 = [v2 identifierRegistryWithExclusiveAccessReturningObject:v5];

  return v3;
}

id __103__MPCModelRadioQueueFeeder__handlePersonalizationResponse_personalizationError_fromRequest_completion___block_invoke_2_135(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v3 = [v2 identifiers];

  return v3;
}

__CFString *__103__MPCModelRadioQueueFeeder__handlePersonalizationResponse_personalizationError_fromRequest_completion___block_invoke_3(uint64_t a1)
{
  if ([*(a1 + 32) containsLiveStream])
  {
    v1 = @"STREAM";
  }

  else
  {
    v1 = MSVNanoIDCreateTaggedPointer();
  }

  return v1;
}

- (void)_handleGetTracksResponse:(id)response getTracksError:(id)error fromRequest:(id)request completion:(id)completion
{
  v44 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  errorCopy = error;
  requestCopy = request;
  completionCopy = completion;
  if (responseCopy)
  {
    v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    v15 = os_signpost_id_make_with_pointer(v14, responseCopy);

    v16 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    v17 = v16;
    v18 = (v15 - 1);
    if ((v15 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "rqf:_handleGetTracksResponse:merge", "", buf, 2u);
    }

    if (self->_currentItem)
    {
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __91__MPCModelRadioQueueFeeder__handleGetTracksResponse_getTracksError_fromRequest_completion___block_invoke;
      v37[3] = &unk_1E8235550;
      v37[4] = self;
      v19 = [(MPQueueFeeder *)self identifierRegistryWithExclusiveAccessReturningInteger:v37];
    }

    else
    {
      v19 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v22 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      selfCopy3 = self;
      v40 = 2048;
      v41 = v19;
      _os_log_impl(&dword_1C5C61000, v22, OS_LOG_TYPE_INFO, "[RQF:%p] _handleGetTracksResponse: | merging playback queue [] currentIndex=%lld", buf, 0x16u);
    }

    v20 = [(MPCModelRadioPlaybackQueue *)self->_playbackQueue tracksByApplyingTracksResponse:responseCopy currentIndex:v19];
    v23 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    v24 = v23;
    if (v18 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v23))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v24, OS_SIGNPOST_INTERVAL_END, v15, "rqf:_handleGetTracksResponse:merge", "", buf, 2u);
    }

    objc_initWeak(&location, self);
    v25 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    v26 = v25;
    if (v18 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v25))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v26, OS_SIGNPOST_INTERVAL_BEGIN, v15, "rqf:_handleGetTracksResponse:personalize", "", buf, 2u);
    }

    v27 = [[MPCModelRadioPersonalizationRequest alloc] initWithRadioStationTracks:v20];
    [(MPCModelRadioPersonalizationRequest *)v27 setAnalyticsSignpostsEnabled:1];
    itemKind = [(MPCModelRadioPersonalizationRequest *)v27 itemKind];
    v29 = [objc_msgSend(itemKind "modelClass")];
    [(MPCModelRadioPersonalizationRequest *)v27 setItemProperties:v29];

    v30 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      totalItemCount = [v20 totalItemCount];
      *buf = 134218498;
      selfCopy3 = self;
      v40 = 2048;
      v41 = totalItemCount;
      v42 = 2114;
      v43 = v27;
      _os_log_impl(&dword_1C5C61000, v30, OS_LOG_TYPE_DEFAULT, "[RQF:%p] _handleGetTracksResponse: | starting personalization [] request.trackCount=%ld request=%{public}@", buf, 0x20u);
    }

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __91__MPCModelRadioQueueFeeder__handleGetTracksResponse_getTracksError_fromRequest_completion___block_invoke_127;
    v32[3] = &unk_1E8235720;
    v32[4] = self;
    v32[5] = v27;
    objc_copyWeak(v35, &location);
    v33 = requestCopy;
    v34 = completionCopy;
    v35[1] = v15;
    [(MPCModelRadioPersonalizationRequest *)v27 performWithResponseHandler:v32];

    objc_destroyWeak(v35);
    objc_destroyWeak(&location);
  }

  else
  {
    v20 = [(MPCModelRadioQueueFeeder *)self _errorForRequest:requestCopy withError:errorCopy];
    v21 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy3 = self;
      v40 = 2114;
      v41 = v20;
      _os_log_impl(&dword_1C5C61000, v21, OS_LOG_TYPE_ERROR, "[RQF:%p] _handleGetTracksResponse: | failed [no track response] error=%{public}@", buf, 0x16u);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v20);
    }
  }

  [(MPCModelRadioQueueFeeder *)self _endBackgroundTaskAssertion];
}

uint64_t __91__MPCModelRadioQueueFeeder__handleGetTracksResponse_getTracksError_fromRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 120);
  v3 = a2;
  v4 = [v2 queueIdentifier];
  v5 = [v3 indexForItem:v4];

  return v5;
}

void __91__MPCModelRadioQueueFeeder__handleGetTracksResponse_getTracksError_fromRequest_completion___block_invoke_127(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __91__MPCModelRadioQueueFeeder__handleGetTracksResponse_getTracksError_fromRequest_completion___block_invoke_2;
  v11[3] = &unk_1E82356F8;
  v12 = *(a1 + 32);
  v13 = v5;
  v7 = v5;
  objc_copyWeak(v17, (a1 + 64));
  v14 = v6;
  v15 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 72);
  v16 = v8;
  v17[1] = v9;
  v10 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v11);

  objc_destroyWeak(v17);
}

void __91__MPCModelRadioQueueFeeder__handleGetTracksResponse_getTracksError_fromRequest_completion___block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v16 = 134218498;
    v17 = v3;
    v18 = 2114;
    v19 = v4;
    v20 = 2114;
    v21 = v5;
    _os_log_impl(&dword_1C5C61000, v2, OS_LOG_TYPE_DEFAULT, "[RQF:%p] _handleGetTracksResponse: | finished personalization [] request=%{public}@ response=%{public}@", &v16, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 80));
  [WeakRetained _handlePersonalizationResponse:*(a1 + 48) personalizationError:*(a1 + 56) fromRequest:*(a1 + 64) completion:*(a1 + 72)];
  v7 = *(a1 + 56);
  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v9 = v8;
  v10 = *(a1 + 88);
  if (v7)
  {
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v11 = *(a1 + 56);
      v16 = 138543362;
      v17 = v11;
      v12 = " error=%{public}@";
      v13 = v9;
      v14 = v10;
      v15 = 12;
LABEL_10:
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v13, OS_SIGNPOST_INTERVAL_END, v14, "rqf:_handleGetTracksResponse:personalize", v12, &v16, v15);
    }
  }

  else if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    LOWORD(v16) = 0;
    v12 = "";
    v13 = v9;
    v14 = v10;
    v15 = 2;
    goto LABEL_10;
  }
}

- (id)_errorForRequest:(id)request withError:(id)error
{
  v47[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  errorCopy = error;
  v8 = [errorCopy msv_errorByUnwrappingDomain:*MEMORY[0x1E69E4208]];

  if (v8)
  {
    v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy7 = self;
      v42 = 2114;
      v43 = errorCopy;
      v10 = "[RQF:%p] _errorForRequest:withError: | setting _hasReachedTracklistEnd=YES [received ICRadioServerErrorDomain] underlyingError=%{public}@";
LABEL_10:
      _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_ERROR, v10, buf, 0x16u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v11 = *MEMORY[0x1E69E4198];
  v12 = [errorCopy msv_errorByUnwrappingDomain:*MEMORY[0x1E69E4198] code:-7101];

  if (v12)
  {
    v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy7 = self;
      v42 = 2114;
      v43 = errorCopy;
      v10 = "[RQF:%p] _errorForRequest:withError: | setting _hasReachedTracklistEnd=YES [received ICErrorCodeInvalidRequest] underlyingError=%{public}@";
      goto LABEL_10;
    }

LABEL_11:

    self->_hasReachedTracklistEnd = 1;
    v14 = errorCopy;
    goto LABEL_12;
  }

  v13 = [errorCopy msv_errorByUnwrappingDomain:v11 code:-7007];

  if (v13)
  {
    v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy7 = self;
      v42 = 2114;
      v43 = errorCopy;
      v10 = "[RQF:%p] _errorForRequest:withError: | setting _hasReachedTracklistEnd=YES [received ICErrorCodePrivacyAcknowledgementRequired] underlyingError=%{public}@";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v16 = errorCopy;
  v14 = v16;
  if (self->_queueGeneration)
  {
    v17 = [v16 msv_errorByUnwrappingDomain:v11 code:-7100];

    if (v17)
    {
      v18 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        selfCopy7 = self;
        v42 = 2114;
        v43 = v14;
        _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_ERROR, "[RQF:%p] _errorForRequest:withError: | setting _hasReachedTracklistEnd=YES [received ICErrorCodeConnectionFailed] underlyingError=%{public}@", buf, 0x16u);
      }

      self->_hasReachedTracklistEnd = 1;
    }
  }

  else
  {
    self->_hasReachedTracklistEnd = 1;
    if (_os_feature_enabled_impl())
    {
      v46 = @"ICRadioContentReferenceType";
      v19 = MEMORY[0x1E696AD98];
      seedContentReference = [requestCopy seedContentReference];
      v21 = [v19 numberWithInteger:{objc_msgSend(seedContentReference, "contentType")}];
      v47[0] = v21;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:&v46 count:1];
    }

    else
    {
      v22 = MPCRadioPlaybackGetLocalizedUserInfoForError(requestCopy, v14);
    }

    v23 = v14;
    v24 = [v23 msv_errorByUnwrappingDomain:*MEMORY[0x1E696A978] code:-1009];

    v25 = v23;
    if (v24)
    {
      mEMORY[0x1E69E4428] = [MEMORY[0x1E69E4428] sharedMonitor];
      networkType = [mEMORY[0x1E69E4428] networkType];

      standardUserDefaults = [MEMORY[0x1E69708A8] standardUserDefaults];
      if ([standardUserDefaults preferredMusicLowBandwidthResolution] < 1)
      {
        v30 = 0;
      }

      else
      {
        mEMORY[0x1E69704E0] = [MEMORY[0x1E69704E0] sharedCloudController];
        v30 = [mEMORY[0x1E69704E0] isCellularDataRestrictedForMusic] ^ 1;
      }

      v31 = _MPCLogCategoryPlayback();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218496;
        selfCopy7 = self;
        v42 = 2048;
        v43 = networkType;
        v44 = 1024;
        v45 = v30;
        _os_log_impl(&dword_1C5C61000, v31, OS_LOG_TYPE_ERROR, "[RQF:%p] _errorForRequest:withError: | Received NSURLErrorNotConnectedToInternet [] currentNetworkType=%li cellularDataAllowed=%{BOOL}u", buf, 0x1Cu);
      }

      if ((v30 & 1) != 0 || !ICEnvironmentNetworkTypeIsCellular())
      {
        v32 = _MPCLogCategoryPlayback();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218242;
          selfCopy7 = self;
          v42 = 2114;
          v43 = v23;
          _os_log_impl(&dword_1C5C61000, v32, OS_LOG_TYPE_ERROR, "[RQF:%p] _errorForRequest:withError: | Transforming error to 'radio queue feeder network unavailable' [] underlyingError=%{public}@", buf, 0x16u);
        }

        v33 = -1004;
        v34 = @"Network Unavailable";
      }

      else
      {
        v32 = _MPCLogCategoryPlayback();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *buf = 134218242;
          selfCopy7 = self;
          v42 = 2114;
          v43 = v23;
          _os_log_impl(&dword_1C5C61000, v32, OS_LOG_TYPE_INFO, "[RQF:%p] _errorForRequest:withError: | Transforming error to 'cellular restricted error' [network type cellular] underlyingError=%{public}@", buf, 0x16u);
        }

        v33 = -1003;
        v34 = @"Cellular Restricted";
      }

      v38[0] = @"ICEnvironmentNetworkType";
      v35 = [MEMORY[0x1E696AD98] numberWithInteger:networkType];
      v38[1] = @"isMusicCellularStreamingAllowed";
      v39[0] = v35;
      v36 = [MEMORY[0x1E696AD98] numberWithBool:v30];
      v39[1] = v36;
      v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];
      v25 = [v23 msv_errorByWrappingWithDomain:@"MPCModelRadioQueueFeederError" code:v33 userInfo:v37 debugDescription:{@"radio request failed with reason: %@", v34}];
    }

    if (!v25)
    {
      v25 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCModelRadioQueueFeederError" code:-1005 debugDescription:@"Invalid case -- missing underlyingError"];
    }

    v14 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:*MEMORY[0x1E696F790] code:3 underlyingError:v25 userInfo:v22 debugDescription:@"radio request failed"];
  }

LABEL_12:

  return v14;
}

- (void)_endObservingIdentityStoreForSignOut
{
  if (self->_observedIdentityStore)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E69E4380] object:self->_observedIdentityStore];
    observedIdentityStore = self->_observedIdentityStore;
    self->_observedIdentityStore = 0;
  }
}

- (void)_endBackgroundTaskAssertion
{
  objc_initWeak(&location, self);
  v2 = dispatch_time(0, 1000000000);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55__MPCModelRadioQueueFeeder__endBackgroundTaskAssertion__block_invoke;
  v3[3] = &unk_1E8239500;
  objc_copyWeak(&v4, &location);
  dispatch_after(v2, MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __55__MPCModelRadioQueueFeeder__endBackgroundTaskAssertion__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[14] - 1;
    WeakRetained[14] = v3;
    if (!v3)
    {
      v4 = *MEMORY[0x1E69B1358];
      if (WeakRetained[13] != *MEMORY[0x1E69B1358])
      {
        v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          v6 = v2[13];
          v8 = 134218240;
          v9 = v2;
          v10 = 2048;
          v11 = v6;
          _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_INFO, "[RQF:%p] _beginBackgroundTaskAssertion | ended task [] backgroundTaskIdentifier=%lu", &v8, 0x16u);
        }

        v7 = MPSharedBackgroundTaskProvider();
        [v7 endTask:v2[13]];

        v2[13] = v4;
      }
    }
  }
}

- (void)_detectSignOutForIdentityStore:(id)store
{
  v18 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  identity = [(ICStoreRequestContext *)self->_storeRequestContext identity];
  v13 = 0;
  v6 = [storeCopy getPropertiesForUserIdentity:identity error:&v13];
  v7 = v13;

  if (v7)
  {
    v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      treeDescription = [v7 treeDescription];
      *buf = 134218242;
      selfCopy = self;
      v16 = 2114;
      v17 = treeDescription;
      _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_ERROR, "[RQF:%p] _detectSignOutForIdentityStore: | error=%{public}@", buf, 0x16u);
    }

    goto LABEL_6;
  }

  if (!v6)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__MPCModelRadioQueueFeeder__detectSignOutForIdentityStore___block_invoke;
    block[3] = &unk_1E82392C0;
    v11 = storeCopy;
    selfCopy2 = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v8 = v11;
LABEL_6:
  }
}

void __59__MPCModelRadioQueueFeeder__detectSignOutForIdentityStore___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  if (*(a1 + 32) == *(v1 + 168) && (*(v1 + 184) & 1) == 0)
  {
    *(v1 + 128) = 1;
    *(*(a1 + 40) + 184) = 1;
    [*(a1 + 40) _removeAllTracks];
    v3 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 40);
      v5 = 134217984;
      v6 = v4;
      _os_log_impl(&dword_1C5C61000, v3, OS_LOG_TYPE_ERROR, "[RQF:%p] _detectSignOutForIdentityStore: | clearing tracklist [nil active account]", &v5, 0xCu);
    }
  }
}

- (id)_defaultGetTracksRequestWithContext:(id)context radioStation:(id)station
{
  v5 = MEMORY[0x1E69E4548];
  stationCopy = station;
  contextCopy = context;
  v8 = objc_alloc_init(v5);
  mEMORY[0x1E6970920] = [MEMORY[0x1E6970920] sharedRestrictionsMonitor];
  allowsExplicitContent = [mEMORY[0x1E6970920] allowsExplicitContent];

  [v8 setAllowsExplicitContent:allowsExplicitContent];
  [v8 setRequestContext:contextCopy];

  [v8 setShouldResponseContainStationMetadata:1];
  v11 = MEMORY[0x1E695E118];
  [v8 setPrivateListeningEnabled:MEMORY[0x1E695E118]];
  [v8 setDelegatedPrivateListeningEnabled:v11];
  identifiers = [stationCopy identifiers];

  if (identifiers)
  {
    radio = [identifiers radio];
    stationHash = [radio stationHash];
    [v8 setStationHash:stationHash];

    radio2 = [identifiers radio];
    [v8 setStationID:{objc_msgSend(radio2, "stationID")}];

    radio3 = [identifiers radio];
    stationStringID = [radio3 stationStringID];
    [v8 setStationStringID:stationStringID];
  }

  return v8;
}

- (void)_beginObservingIdentityStoreForSignOut
{
  identityStore = [(ICStoreRequestContext *)self->_storeRequestContext identityStore];
  if (self->_observedIdentityStore != identityStore)
  {
    obj = identityStore;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = defaultCenter;
    v6 = MEMORY[0x1E69E4380];
    if (self->_observedIdentityStore)
    {
      [defaultCenter removeObserver:self name:*MEMORY[0x1E69E4380] object:?];
    }

    objc_storeStrong(&self->_observedIdentityStore, obj);
    if (self->_observedIdentityStore)
    {
      [v5 addObserver:self selector:sel__detectSignOutForIdentityStoreChangeNotification_ name:*v6 object:?];
      [(MPCModelRadioQueueFeeder *)self _detectSignOutForIdentityStore:self->_observedIdentityStore];
    }

    identityStore = obj;
  }
}

- (void)_beginBackgroundTaskAssertion
{
  v20 = *MEMORY[0x1E69E9840];
  backgroundTasks = self->_backgroundTasks;
  self->_backgroundTasks = backgroundTasks + 1;
  v4 = *MEMORY[0x1E69B1358];
  if (!backgroundTasks || self->_backgroundTaskIdentifier == v4)
  {
    v5 = [(MPCModelRadioQueueFeeder *)self description];
    v6 = MPSharedBackgroundTaskProvider();
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __57__MPCModelRadioQueueFeeder__beginBackgroundTaskAssertion__block_invoke;
    v15[3] = &unk_1E8239298;
    v15[4] = self;
    self->_backgroundTaskIdentifier = [v6 beginTaskWithName:v5 expirationHandler:v15];

    backgroundTaskIdentifier = self->_backgroundTaskIdentifier;
    v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    v9 = v8;
    if (backgroundTaskIdentifier == v4)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        selfCopy2 = self;
        v10 = "[RQF:%p] _beginBackgroundTaskAssertion | failed to start task []";
        v11 = v9;
        v12 = OS_LOG_TYPE_ERROR;
        v13 = 12;
LABEL_8:
        _os_log_impl(&dword_1C5C61000, v11, v12, v10, buf, v13);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v14 = self->_backgroundTaskIdentifier;
      *buf = 134218240;
      selfCopy2 = self;
      v18 = 2048;
      v19 = v14;
      v10 = "[RQF:%p] _beginBackgroundTaskAssertion | started task [] backgroundTaskIdentifier=%lu";
      v11 = v9;
      v12 = OS_LOG_TYPE_INFO;
      v13 = 22;
      goto LABEL_8;
    }
  }
}

void __57__MPCModelRadioQueueFeeder__beginBackgroundTaskAssertion__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = MPSharedBackgroundTaskProvider();
  [v2 endTask:*(*(a1 + 32) + 104)];

  v3 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 104);
    v6 = 134218240;
    v7 = v4;
    v8 = 2048;
    v9 = v5;
    _os_log_impl(&dword_1C5C61000, v3, OS_LOG_TYPE_ERROR, "[RQF:%p] _beginBackgroundTaskAssertion | task expired [] backgroundTaskIdentifier=%lu", &v6, 0x16u);
  }

  *(*(a1 + 32) + 104) = *MEMORY[0x1E69B1358];
}

- (void)environmentMonitorDidChangeNetworkType:(id)type
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__MPCModelRadioQueueFeeder_environmentMonitorDidChangeNetworkType___block_invoke;
  block[3] = &unk_1E8239298;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_responseDidInvalidateNotification:(id)notification
{
  notificationCopy = notification;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__MPCModelRadioQueueFeeder__responseDidInvalidateNotification___block_invoke;
  v6[3] = &unk_1E82392C0;
  v7 = notificationCopy;
  selfCopy = self;
  v5 = notificationCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __63__MPCModelRadioQueueFeeder__responseDidInvalidateNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  v3 = *(*(a1 + 40) + 136);

  if (v2 == v3)
  {
    v4 = *(a1 + 40);

    [v4 _responseDidInvalidate];
  }
}

- (void)_detectSignOutForIdentityStoreChangeNotification:(id)notification
{
  notificationCopy = notification;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __77__MPCModelRadioQueueFeeder__detectSignOutForIdentityStoreChangeNotification___block_invoke;
  v6[3] = &unk_1E82392C0;
  v7 = notificationCopy;
  selfCopy = self;
  v5 = notificationCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __77__MPCModelRadioQueueFeeder__detectSignOutForIdentityStoreChangeNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  v3 = *(*(a1 + 40) + 168);

  if (v2 == v3)
  {
    v4 = *(a1 + 40);
    v5 = v4[21];

    [v4 _detectSignOutForIdentityStore:v5];
  }
}

- (void)_allowCellularStreamingDidChangeNotification:(id)notification
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__MPCModelRadioQueueFeeder__allowCellularStreamingDidChangeNotification___block_invoke;
  block[3] = &unk_1E8239298;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_updateAdditionalLoadingSupport
{
  v11 = *MEMORY[0x1E69E9840];
  standardUserDefaults = [MEMORY[0x1E69708A8] standardUserDefaults];
  preferredMusicLowBandwidthResolution = [standardUserDefaults preferredMusicLowBandwidthResolution];

  mEMORY[0x1E69E4428] = [MEMORY[0x1E69E4428] sharedMonitor];
  [mEMORY[0x1E69E4428] networkType];
  IsCellular = ICEnvironmentNetworkTypeIsCellular();

  v7 = IsCellular ^ 1;
  if (preferredMusicLowBandwidthResolution > 0)
  {
    v7 = 1;
  }

  if (self->_supportsLoadingAdditionalItems != v7)
  {
    self->_supportsLoadingAdditionalItems = v7;
    if ((v7 & 1) == 0)
    {
      v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = 134217984;
        selfCopy = self;
        _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_ERROR, "[RQF:%p] _updateAdditionalLoadingSupport | loading additional items disabled [cellular streaming restricted]", &v9, 0xCu);
      }
    }
  }
}

- (id)firstModelPlayEvent
{
  v3 = MEMORY[0x1E6970708];
  radioStation = [(MPCModelRadioPlaybackQueue *)self->_playbackQueue radioStation];
  playActivityFeatureName = [(MPQueueFeeder *)self playActivityFeatureName];
  v6 = [v3 playEventWithModelObject:radioStation featureName:playActivityFeatureName];

  return v6;
}

- (void)reloadSection:(id)section completion:(id)completion
{
  v33 = *MEMORY[0x1E69E9840];
  sectionCopy = section;
  objc_storeStrong(&self->_section, section);
  completionCopy = completion;
  if (self->_needsSectionUpdate)
  {
    [(MPMutableIdentifierListSection *)self->_section updateSection];
    self->_needsSectionUpdate = 0;
  }

  v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v10 = os_signpost_id_make_with_pointer(v9, sectionCopy);

  v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v12 = v11;
  v13 = v10 - 1;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "rqf:reloadSection", "", buf, 2u);
  }

  itemIdentifiers = [sectionCopy itemIdentifiers];
  v15 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v16 = v15;
  if (v13 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v10, "rqf:reloadSection:diff", "", buf, 2u);
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __53__MPCModelRadioQueueFeeder_reloadSection_completion___block_invoke;
  v28[3] = &unk_1E8235688;
  v17 = itemIdentifiers;
  v29 = v17;
  selfCopy = self;
  v18 = [(MPQueueFeeder *)self identifierRegistryWithExclusiveAccessReturningObject:v28];
  v19 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v20 = v19;
  if (v13 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *buf = 138543362;
    v32 = v18;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v20, OS_SIGNPOST_INTERVAL_END, v10, "rqf:reloadSection:diff", "changes=%{public}@", buf, 0xCu);
  }

  if (v18)
  {
    v21 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    v22 = v21;
    if (v13 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v10, "rqf:reloadSection:apply", "", buf, 2u);
    }

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __53__MPCModelRadioQueueFeeder_reloadSection_completion___block_invoke_87;
    v27[3] = &unk_1E82356D0;
    v27[4] = self;
    [sectionCopy applyChanges:v18 itemLookupBlock:v27];
    v23 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    v24 = v23;
    if (v13 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v24, OS_SIGNPOST_INTERVAL_END, v10, "rqf:reloadSection:apply", "", buf, 2u);
    }
  }

  v25 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v26 = v25;
  if (v13 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v26, OS_SIGNPOST_INTERVAL_END, v10, "rqf:reloadSection", "", buf, 2u);
  }

  completionCopy[2](completionCopy, 0);
}

id __53__MPCModelRadioQueueFeeder_reloadSection_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E69704C8];
  v5 = [*(a1 + 32) count];
  v6 = [*(a1 + 40) itemCount];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__MPCModelRadioQueueFeeder_reloadSection_completion___block_invoke_2;
  v10[3] = &unk_1E8235640;
  v11 = *(a1 + 32);
  v12 = v3;
  v7 = v3;
  v8 = [v4 changeDetailsWithPreviousCount:v5 finalCount:v6 isEqualBlock:v10 isUpdatedBlock:&__block_literal_global_86];

  return v8;
}

id __53__MPCModelRadioQueueFeeder_reloadSection_completion___block_invoke_87(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__MPCModelRadioQueueFeeder_reloadSection_completion___block_invoke_2_88;
  v5[3] = &__block_descriptor_40_e41__16__0__MPQueueFeederIdentifierRegistry_8l;
  v5[4] = a2;
  v3 = [v2 identifierRegistryWithExclusiveAccessReturningObject:v5];

  return v3;
}

uint64_t __53__MPCModelRadioQueueFeeder_reloadSection_completion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v6 = [*(a1 + 40) itemAtIndex:a3];
  v7 = [v5 isEqual:v6];

  return v7;
}

- (id)placeholderItemForLoadingAdditionalItemsInSection:(id)section
{
  if ([(MPCModelRadioPlaybackContext *)self->_playbackContext continueListeningStation])
  {
    v4 = 0;
  }

  else
  {
    radioStation = [(MPCModelRadioPlaybackQueue *)self->_playbackQueue radioStation];
    if (radioStation)
    {
      v6 = objc_alloc_init(MEMORY[0x1E6970880]);
      v7 = MEMORY[0x1E69706F8];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __78__MPCModelRadioQueueFeeder_placeholderItemForLoadingAdditionalItemsInSection___block_invoke;
      v11[3] = &unk_1E82392C0;
      v8 = v6;
      v12 = v8;
      v13 = radioStation;
      [v7 performWithoutEnforcement:v11];
      v9 = v13;
      v4 = v8;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

void __78__MPCModelRadioQueueFeeder_placeholderItemForLoadingAdditionalItemsInSection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) name];
  if ([v2 length])
  {
    v3 = [*(a1 + 40) name];
    [*(a1 + 32) setMainTitle:v3];
  }

  else
  {
    v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
    v4 = [v3 localizedStringForKey:@"LOADING_AUDIO_LABEL" value:&stru_1F454A698 table:@"MediaPlayer"];
    [*(a1 + 32) setMainTitle:v4];
  }

  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MediaPlayer"];
  v6 = [v5 localizedStringForKey:@"RADIO_LABEL" value:&stru_1F454A698 table:@"MediaPlayer"];
  [*(a1 + 32) setArtist:v6];

  if ([*(a1 + 40) hasLoadedValueForKey:*MEMORY[0x1E696FE70]])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __78__MPCModelRadioQueueFeeder_placeholderItemForLoadingAdditionalItemsInSection___block_invoke_2;
    v7[3] = &unk_1E8235618;
    v8 = *(a1 + 40);
    [*(a1 + 32) setArtworkCatalogBlock:v7];
  }
}

- (void)loadAdditionalItemsWithCount:(int64_t)count forSection:(id)section completion:(id)completion
{
  v31 = *MEMORY[0x1E69E9840];
  sectionCopy = section;
  completionCopy = completion;
  radioStation = [(MPCModelRadioPlaybackQueue *)self->_playbackQueue radioStation];
  v11 = [(MPCModelRadioQueueFeeder *)self _defaultGetTracksRequestWithContext:self->_storeRequestContext radioStation:radioStation];
  [v11 setReasonType:3];
  if (count <= 1)
  {
    countCopy = 1;
  }

  else
  {
    countCopy = count;
  }

  [v11 setRequestedTrackCount:countCopy];
  v13 = os_log_create("com.apple.amp.mediaplaybackcore", "Default");
  v14 = os_signpost_id_generate(v13);

  v15 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    selfCopy = self;
    v27 = 2048;
    countCopy2 = count;
    v29 = 2114;
    v30 = sectionCopy;
    _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_DEFAULT, "[RQF:%p] loadAdditionalItemsWithCount:%ld forSection:%{public}@ | calling load", buf, 0x20u);
  }

  v16 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v17 = v16;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v14, "rqf:loadAdditionalItems:loadTracks", "", buf, 2u);
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __79__MPCModelRadioQueueFeeder_loadAdditionalItemsWithCount_forSection_completion___block_invoke;
  v20[3] = &unk_1E82355F0;
  v23 = v14;
  countCopy3 = count;
  v20[4] = self;
  v21 = sectionCopy;
  v22 = completionCopy;
  v18 = completionCopy;
  v19 = sectionCopy;
  [(MPCModelRadioQueueFeeder *)self _loadTracksWithRequest:v11 completion:v20];
}

void __79__MPCModelRadioQueueFeeder_loadAdditionalItemsWithCount_forSection_completion___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v6 = v5;
  v7 = a1[7];
  if (v4)
  {
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      v16 = 138543362;
      v17 = v4;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v6, OS_SIGNPOST_INTERVAL_END, v7, "rqf:loadAdditionalItems:loadTracks", " error=%{public}@", &v16, 0xCu);
    }

    v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = a1[8];
      v10 = a1[4];
      v11 = a1[5];
      v12 = [v4 treeDescription];
      v16 = 134218754;
      v17 = v10;
      v18 = 2048;
      v19 = v9;
      v20 = 2114;
      v21 = v11;
      v22 = 2114;
      v23 = v12;
      _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_ERROR, "[RQF:%p] loadAdditionalItemsWithCount:%ld forSection:%{public}@ | completed error=%{public}@", &v16, 0x2Au);
    }
  }

  else
  {
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      LOWORD(v16) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v6, OS_SIGNPOST_INTERVAL_END, v7, "rqf:loadAdditionalItems:loadTracks", "", &v16, 2u);
    }

    v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = a1[8];
      v14 = a1[4];
      v15 = a1[5];
      v16 = 134218498;
      v17 = v14;
      v18 = 2048;
      v19 = v13;
      v20 = 2114;
      v21 = v15;
      _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "[RQF:%p] loadAdditionalItemsWithCount:%ld forSection:%{public}@ | completed", &v16, 0x20u);
    }
  }

  (*(a1[6] + 16))();
}

- (int64_t)prefetchThresholdForSection:(id)section
{
  if (![(MPCModelRadioPlaybackContext *)self->_playbackContext continueListeningStation])
  {
    return 1;
  }

  result = [(MPCModelRadioPlaybackContext *)self->_playbackContext continueListeningPrefetchThreshold];
  if (result <= 1)
  {
    return 1;
  }

  return result;
}

- (BOOL)shouldRequestAdditionalItemsWhenReachingTailOfSection:(id)section
{
  sectionCopy = section;
  if (self->_supportsLoadingAdditionalItems && !self->_hasReachedTracklistEnd)
  {
    v5 = ![(MPCModelRadioQueueFeeder *)self containsLiveStream];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)itemForItem:(id)item inSection:(id)section
{
  v30 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  sectionCopy = section;
  section = self->_section;
  if (section)
  {
    sectionIdentifier = [(MPMutableIdentifierListSection *)section sectionIdentifier];
    v11 = [sectionCopy isEqualToString:sectionIdentifier];

    if ((v11 & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      sectionIdentifier2 = [(MPMutableIdentifierListSection *)self->_section sectionIdentifier];
      [currentHandler handleFailureInMethod:a2 object:self file:@"MPCModelRadioQueueFeeder.m" lineNumber:375 description:{@"Provided section identifier did not match stored section identifier: %@ != %@", sectionCopy, sectionIdentifier2}];
    }
  }

  if (self->_playbackQueue)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __50__MPCModelRadioQueueFeeder_itemForItem_inSection___block_invoke;
    v22[3] = &unk_1E8235550;
    v14 = itemCopy;
    v23 = v14;
    v15 = [(MPQueueFeeder *)self identifierRegistryWithExclusiveAccessReturningInteger:v22];
    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      associatedParticipantIdentifier = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(associatedParticipantIdentifier, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218498;
        selfCopy2 = self;
        v26 = 2114;
        v27 = v14;
        v28 = 2114;
        v29 = sectionCopy;
        _os_log_impl(&dword_1C5C61000, associatedParticipantIdentifier, OS_LOG_TYPE_ERROR, "[RQF:%p] itemForItem:%{public}@ inSection:%{public}@ | returning nil [no index for item in registry]", buf, 0x20u);
      }

      v17 = 0;
    }

    else
    {
      v19 = [(MPCModelRadioPlaybackQueue *)self->_playbackQueue AVItemAtIndex:v15];
      v17 = v19;
      if (!v19)
      {
LABEL_15:
        v18 = v23;
        goto LABEL_16;
      }

      [v19 setFeeder:self];
      [v17 setQueueIdentifier:v14];
      v20 = [(MPCModelRadioQueueFeeder *)self modelPlayEventForItem:v14 inSection:sectionCopy];
      [v17 setModelPlayEvent:v20];

      associatedParticipantIdentifier = [(MPCModelRadioPlaybackContext *)self->_playbackContext associatedParticipantIdentifier];
      [v17 setAssociatedParticipantIdentifier:associatedParticipantIdentifier];
    }

    goto LABEL_15;
  }

  v18 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218498;
    selfCopy2 = self;
    v26 = 2114;
    v27 = itemCopy;
    v28 = 2114;
    v29 = sectionCopy;
    _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_ERROR, "[RQF:%p] itemForItem:%{public}@ inSection:%{public}@ | returning nil [no playbackQueue]", buf, 0x20u);
  }

  v17 = 0;
LABEL_16:

  return v17;
}

- (id)identifiersForItem:(id)item inSection:(id)section
{
  itemCopy = item;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__MPCModelRadioQueueFeeder_identifiersForItem_inSection___block_invoke;
  v9[3] = &unk_1E82355C8;
  v10 = itemCopy;
  v6 = itemCopy;
  v7 = [(MPQueueFeeder *)self identifierRegistryWithExclusiveAccessReturningObject:v9];

  return v7;
}

id __57__MPCModelRadioQueueFeeder_identifiersForItem_inSection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 indexForItem:*(a1 + 32)];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 identifierSetAtIndex:v4];
  }

  return v5;
}

- (void)loadPlaybackContext:(id)context completion:(id)completion
{
  v130[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  completionCopy = completion;
  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v11 = os_signpost_id_make_with_pointer(v10, contextCopy);

  v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v13 = v12;
  v14 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "rqf:loadPlaybackContext", "", buf, 2u);
  }

  mEMORY[0x1E6970920] = [MEMORY[0x1E6970920] sharedRestrictionsMonitor];
  allowsRadioService = [mEMORY[0x1E6970920] allowsRadioService];

  if (allowsRadioService)
  {
    v108 = v11 - 1;
    v109 = a2;
    v110 = v11;
    playActivityRecommendationData = [contextCopy playActivityRecommendationData];
    [(MPQueueFeeder *)self setPlayActivityRecommendationData:playActivityRecommendationData];

    playActivityQueueGroupingID = [contextCopy playActivityQueueGroupingID];
    [(MPQueueFeeder *)self setPlayActivityQueueGroupingID:playActivityQueueGroupingID];

    playActivityFeatureName = [contextCopy playActivityFeatureName];
    [(MPQueueFeeder *)self setPlayActivityFeatureName:playActivityFeatureName];

    siriReferenceIdentifier = [contextCopy siriReferenceIdentifier];
    [(MPQueueFeeder *)self setSiriReferenceIdentifier:siriReferenceIdentifier];

    siriWHAMetricsInfo = [contextCopy siriWHAMetricsInfo];
    [(MPQueueFeeder *)self setSiriWHAMetricsInfo:siriWHAMetricsInfo];

    playbackRequestEnvironment = [contextCopy playbackRequestEnvironment];
    playbackRequestEnvironment = self->_playbackRequestEnvironment;
    self->_playbackRequestEnvironment = playbackRequestEnvironment;

    v24 = [MPCNetworkRequestMonitoredTag alloc];
    v129[0] = @"network-request-initiator";
    v129[1] = @"queue-section-id";
    v130[0] = @"MPCModelRadioQueueFeeder";
    delegate = [(MPCModelRadioQueueFeeder *)self delegate];
    sectionIdentifier = [delegate sectionIdentifier];
    null = sectionIdentifier;
    if (!sectionIdentifier)
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    v130[1] = null;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v130 forKeys:v129 count:2];
    v29 = [(MPCNetworkRequestMonitoredTag *)v24 initWithContextInfo:v28 engineInfoProvider:self];

    if (!sectionIdentifier)
    {
    }

    v30 = [(MPCPlaybackRequestEnvironment *)self->_playbackRequestEnvironment _createStoreRequestContextWithTag:v29];
    storeRequestContext = self->_storeRequestContext;
    self->_storeRequestContext = v30;

    objc_storeStrong(&self->_playbackContext, context);
    v32 = [[MPCModelRadioPlaybackQueue alloc] initWithPlaybackContext:contextCopy];
    playbackQueue = self->_playbackQueue;
    self->_playbackQueue = v32;

    siriAssetInfo = [contextCopy siriAssetInfo];
    siriAssetInfo = self->_siriAssetInfo;
    self->_siriAssetInfo = siriAssetInfo;

    v36 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback_Oversize");
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = [(NSString *)self->_siriAssetInfo length];
      v38 = self->_siriAssetInfo;
      *buf = 134218754;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = contextCopy;
      v125 = 2048;
      v126 = v37;
      v127 = 2112;
      v128 = v38;
      _os_log_impl(&dword_1C5C61000, v36, OS_LOG_TYPE_DEFAULT, "[RQF:%p] loadPlaybackContext:%{public}@ | [] siriAssetInfo=(:%ld)%@", buf, 0x2Au);
    }

    v39 = [MPCModelGenericAVItemUserIdentityPropertySet alloc];
    v40 = self->_storeRequestContext;
    v122 = 0;
    v41 = [(MPCModelGenericAVItemUserIdentityPropertySet *)v39 initWithRequestContext:v40 error:&v122];
    v42 = v122;
    [(MPCModelRadioPlaybackQueue *)self->_playbackQueue setIdentityPropertySet:v41];

    if (v42 || ([(MPCModelRadioPlaybackQueue *)self->_playbackQueue identityPropertySet], v50 = objc_claimAutoreleasedReturnValue(), v50, !v50))
    {
      v43 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v42;
        _os_log_impl(&dword_1C5C61000, v43, OS_LOG_TYPE_ERROR, "[RQF:%p] loadPlaybackContext:… | failed to load identity properties [] error=%{public}@", buf, 0x16u);
      }

      (*(completionCopy + 2))(completionCopy, 0, 0, v42);
      goto LABEL_51;
    }

    v106 = completionCopy;
    [(MPCModelRadioQueueFeeder *)self _endObservingIdentityStoreForSignOut];
    v51 = [(MPCModelRadioQueueFeeder *)self _defaultGetTracksRequestWithContext:self->_storeRequestContext radioStation:0];
    radioStation = [contextCopy radioStation];
    identifiers = [radioStation identifiers];
    radio = [identifiers radio];
    stationStringID = [radio stationStringID];

    v107 = stationStringID;
    if (![contextCopy continueListeningStation])
    {
      v60 = v51;
      [v51 setReasonType:1];
      v61 = [stationStringID length];
      v62 = v110;
      if (!v61)
      {
        nowPlayingContentReference = [contextCopy nowPlayingContentReference];
        iCRadioContentReference = [nowPlayingContentReference ICRadioContentReference];
        [v51 setNowPlayingContentReference:iCRadioContentReference];

        nowPlayingContentReference2 = [contextCopy nowPlayingContentReference];
        [v51 setPreservingCurrentlyPlayingItem:nowPlayingContentReference2 != 0];

        seedContentReference = [contextCopy seedContentReference];
        iCRadioContentReference2 = [seedContentReference ICRadioContentReference];
        [v51 setSeedContentReference:iCRadioContentReference2];

        v76 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        completionCopy = v106;
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
        {
          seedContentReference2 = [v60 seedContentReference];
          nowPlayingContentReference3 = [v60 nowPlayingContentReference];
          *buf = 134218498;
          *&buf[4] = self;
          *&buf[12] = 2114;
          *&buf[14] = seedContentReference2;
          v125 = 2114;
          v126 = nowPlayingContentReference3;
          _os_log_impl(&dword_1C5C61000, v76, OS_LOG_TYPE_DEFAULT, "[RQF:%p] loadPlaybackContext:… | requesting new station [] seedContentReference=%{public}@, nowPlayingContentReference=%{public}@", buf, 0x20u);
        }

        v92 = v108;
        v77 = v60;
        goto LABEL_47;
      }

      radioStation2 = [contextCopy radioStation];
      identifiers2 = [radioStation2 identifiers];
      [identifiers2 radio];
      v66 = v65 = v51;
      stationHash = [v66 stationHash];
      [v51 setStationHash:stationHash];

      radioStation3 = [contextCopy radioStation];
      identifiers3 = [radioStation3 identifiers];
      radio2 = [identifiers3 radio];
      [v51 setStationID:{objc_msgSend(radio2, "stationID")}];

      radioStation4 = [contextCopy radioStation];
      identifiers4 = [radioStation4 identifiers];
      radio3 = [identifiers4 radio];
      stationStringID2 = [radio3 stationStringID];
      [v51 setStationStringID:stationStringID2];

      stationURL = [contextCopy stationURL];
      [v51 setStationURL:stationURL];

      v76 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      v77 = v51;
      completionCopy = v106;
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        stationStringID3 = [v65 stationStringID];
        [v65 stationHash];
        v80 = v79 = v77;
        stationURL2 = [v79 stationURL];
        *buf = 134218754;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = stationStringID3;
        v125 = 2114;
        v126 = v80;
        v127 = 2114;
        v128 = stationURL2;
        _os_log_impl(&dword_1C5C61000, v76, OS_LOG_TYPE_DEFAULT, "[RQF:%p] loadPlaybackContext:… | resuming station [] stationID=%{public}@ stationHash=%{public}@ stationURL=%{public}@", buf, 0x2Au);

        v77 = v79;
        v62 = v110;
      }

LABEL_46:
      v92 = v108;
LABEL_47:

      v93 = objc_alloc_init(MEMORY[0x1E69B13F0]);
      v94 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      v95 = v94;
      if (v92 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v94))
      {
        reasonType = [v77 reasonType];
        *buf = 67109120;
        *&buf[4] = reasonType;
        _os_signpost_emit_with_name_impl(&dword_1C5C61000, v95, OS_SIGNPOST_INTERVAL_BEGIN, v62, "rqf:loadPlaybackContext:getTracks", "reasonType=%d", buf, 8u);
      }

      v111[0] = MEMORY[0x1E69E9820];
      v111[1] = 3221225472;
      v111[2] = __59__MPCModelRadioQueueFeeder_loadPlaybackContext_completion___block_invoke;
      v111[3] = &unk_1E82355A0;
      v112 = v93;
      selfCopy = self;
      v116 = v109;
      v117 = v62;
      v114 = v77;
      v115 = completionCopy;
      v97 = v93;
      [(MPCModelRadioQueueFeeder *)self _loadTracksWithRequest:v77 completion:v111];

      v42 = 0;
LABEL_51:

      goto LABEL_52;
    }

    v105 = v51;
    if ([stationStringID length])
    {
      [v51 setReasonType:1];
      [v51 setStationStringID:stationStringID];
      v56 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      completionCopy = v106;
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = stationStringID;
        v57 = "[RQF:%p] loadPlaybackContext:… | resuming continue listening station [] stationID=%{public}@";
        v58 = v56;
        v59 = 22;
LABEL_34:
        _os_log_impl(&dword_1C5C61000, v58, OS_LOG_TYPE_DEFAULT, v57, buf, v59);
      }
    }

    else
    {
      [v51 setReasonType:6];
      v56 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      completionCopy = v106;
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = self;
        v57 = "[RQF:%p] loadPlaybackContext:… | requesting new continue listening station";
        v58 = v56;
        v59 = 12;
        goto LABEL_34;
      }
    }

    continueListeningMaxQueueReferences = [(MPCModelRadioPlaybackContext *)self->_playbackContext continueListeningMaxQueueReferences];
    if (continueListeningMaxQueueReferences <= 0)
    {
      v83 = 10;
    }

    else
    {
      v83 = continueListeningMaxQueueReferences;
    }

    continueListeningQueueProvider = [contextCopy continueListeningQueueProvider];
    v85 = [continueListeningQueueProvider queueReferencesWithMaxCount:v83];

    v86 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v85, "count")}];
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    v76 = v85;
    v87 = [v76 countByEnumeratingWithState:&v118 objects:v123 count:16];
    if (v87)
    {
      v88 = v87;
      v89 = *v119;
      do
      {
        for (i = 0; i != v88; ++i)
        {
          if (*v119 != v89)
          {
            objc_enumerationMutation(v76);
          }

          iCRadioContentReference3 = [*(*(&v118 + 1) + 8 * i) ICRadioContentReference];
          [v86 addObject:iCRadioContentReference3];
        }

        v88 = [v76 countByEnumeratingWithState:&v118 objects:v123 count:16];
      }

      while (v88);
    }

    v77 = v105;
    [v105 setQueueContentReferences:v86];

    v62 = v110;
    goto LABEL_46;
  }

  v29 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:64 debugDescription:@"Radio service is restricted"];
  v44 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v45 = v44;
  if (v29)
  {
    if (v14 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v44))
    {
      goto LABEL_28;
    }

    *buf = 67109378;
    *&buf[8] = 2114;
    *&buf[10] = v29;
    v46 = "allowsRadioService=%d error=%{public}@";
    v47 = v45;
    v48 = v11;
    v49 = 18;
  }

  else
  {
    if (v14 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v44))
    {
      goto LABEL_28;
    }

    *buf = 67109120;
    v46 = "allowsRadioService=%d";
    v47 = v45;
    v48 = v11;
    v49 = 8;
  }

  _os_signpost_emit_with_name_impl(&dword_1C5C61000, v47, OS_SIGNPOST_INTERVAL_END, v48, "rqf:loadPlaybackContext:allowsRadioService", v46, buf, v49);
LABEL_28:

  (*(completionCopy + 2))(completionCopy, 0, 0, v29);
LABEL_52:
}

void __59__MPCModelRadioQueueFeeder_loadPlaybackContext_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  if (([v6 disarm] & 1) == 0)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:*(a1 + 64) object:*(a1 + 40) file:@"MPCModelRadioQueueFeeder.m" lineNumber:360 description:@"_loadTracksWithRequest completion called more than once"];
  }

  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v9 = v8;
  v10 = *(a1 + 72);
  if (v5)
  {
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v11 = [*(a1 + 48) reasonType];
      v18 = 67109378;
      v19 = v11;
      v20 = 2114;
      v21 = v5;
      v12 = "reasonType=%d error=%{public}@";
      v13 = v9;
      v14 = v10;
      v15 = 18;
LABEL_10:
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v13, OS_SIGNPOST_INTERVAL_END, v14, "rqf:loadPlaybackContext:getTracks", v12, &v18, v15);
    }
  }

  else if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v16 = [*(a1 + 48) reasonType];
    v18 = 67109120;
    v19 = v16;
    v12 = "reasonType=%d";
    v13 = v9;
    v14 = v10;
    v15 = 8;
    goto LABEL_10;
  }

  (*(*(a1 + 56) + 16))(*(a1 + 56), 0, v7, v5);
}

- (unint64_t)itemCountInSection:(id)section
{
  itemIdentifiers = [(MPMutableIdentifierListSection *)self->_section itemIdentifiers];
  v4 = [itemIdentifiers count];

  return v4;
}

- (id)accountIDForItem:(id)item inSection:(id)section
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [(MPCModelRadioPlaybackQueue *)self->_playbackQueue identityPropertySet:item];
  delegatedIdentityProperties = [v5 delegatedIdentityProperties];
  v7 = delegatedIdentityProperties;
  if (delegatedIdentityProperties)
  {
    dSID = [delegatedIdentityProperties DSID];
  }

  else
  {
    identityPropertySet = [(MPCModelRadioPlaybackQueue *)self->_playbackQueue identityPropertySet];
    identityProperties = [identityPropertySet identityProperties];
    dSID = [identityProperties DSID];
  }

  if (dSID)
  {
    quot = [dSID longLongValue];
    if (quot)
    {
      v12 = quot;
      v13 = &v19 + 1;
      do
      {
        v14 = lldiv(quot, 10);
        quot = v14.quot;
        if (v14.rem >= 0)
        {
          LOBYTE(v15) = v14.rem;
        }

        else
        {
          v15 = -v14.rem;
        }

        *(v13 - 2) = v15 + 48;
        v16 = (v13 - 2);
        --v13;
      }

      while (v14.quot);
      if (v12 < 0)
      {
        *(v13 - 2) = 45;
        v16 = (v13 - 2);
      }

      v17 = CFStringCreateWithBytes(0, v16, &v19 - v16, 0x8000100u, 0);
    }

    else
    {
      v17 = @"0";
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)supplementalPlaybackContextWithReason:(int64_t)reason
{
  v35[2] = *MEMORY[0x1E69E9840];
  v4 = NSStringFromMPPlaybackContextSupplementalReason();
  if ([(MPCModelRadioQueueFeeder *)self containsLiveStream])
  {
    v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      selfCopy4 = self;
      v32 = 2114;
      v33 = v4;
      _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "[RQF:%p] supplementalPlaybackContextWithReason:%{public}@ | returning NullPlaybackContext [station contains stream]", buf, 0x16u);
    }

    v6 = objc_alloc_init(_MPCNullPlaybackContext);
  }

  else
  {
    numberOfItems = [(MPCModelRadioPlaybackQueue *)self->_playbackQueue numberOfItems];
    if (numberOfItems)
    {
      v8 = numberOfItems;
      v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:numberOfItems];
      if (v8 >= 1)
      {
        for (i = 0; i != v8; ++i)
        {
          v11 = [(MPCModelRadioPlaybackQueue *)self->_playbackQueue trackForItemAtIndex:i];
          if ([v11 storeAdamID])
          {
            quot = [v11 storeAdamID];
            if (quot)
            {
              v13 = quot;
              v14 = v35 + 1;
              do
              {
                v15 = lldiv(quot, 10);
                quot = v15.quot;
                if (v15.rem >= 0)
                {
                  LOBYTE(v16) = v15.rem;
                }

                else
                {
                  v16 = -v15.rem;
                }

                *(v14 - 2) = v16 + 48;
                v17 = (v14 - 2);
                --v14;
              }

              while (v15.quot);
              if (v13 < 0)
              {
                *(v14 - 2) = 45;
                v17 = (v14 - 2);
              }

              v18 = CFStringCreateWithBytes(0, v17, v35 - v17, 0x8000100u, 0);
            }

            else
            {
              v18 = @"0";
            }

            [v9 addObject:v18];
          }
        }
      }

      if ([v9 count])
      {
        v19 = objc_alloc_init(MPCModelStorePlaybackItemsRequest);
        [(MPCModelStorePlaybackItemsRequest *)v19 setStoreIDs:v9];
        [(MPCModelStorePlaybackItemsRequest *)v19 setClientIdentifier:@"com.apple.Music"];
        v6 = objc_alloc_init(MPCModelPlaybackContext);
        [(_MPCNullPlaybackContext *)v6 setRequest:v19];
        [(_MPCNullPlaybackContext *)v6 setPlaybackRequestEnvironment:self->_playbackRequestEnvironment];
        v20 = objc_alloc(MEMORY[0x1E6970670]);
        emptyIdentifierSet = [MEMORY[0x1E6970550] emptyIdentifierSet];
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __66__MPCModelRadioQueueFeeder_supplementalPlaybackContextWithReason___block_invoke;
        v29[3] = &unk_1E8235578;
        v29[4] = self;
        v22 = [v20 initWithIdentifiers:emptyIdentifierSet block:v29];
        [(_MPCNullPlaybackContext *)v6 setFallbackSectionRepresentation:v22];

        playActivityQueueGroupingID = [(MPQueueFeeder *)self playActivityQueueGroupingID];
        [(_MPCNullPlaybackContext *)v6 setPlayActivityQueueGroupingID:playActivityQueueGroupingID];

        playActivityFeatureName = [(MPQueueFeeder *)self playActivityFeatureName];
        [(_MPCNullPlaybackContext *)v6 setPlayActivityFeatureName:playActivityFeatureName];

        playActivityRecommendationData = [(MPQueueFeeder *)self playActivityRecommendationData];
        [(_MPCNullPlaybackContext *)v6 setPlayActivityRecommendationData:playActivityRecommendationData];

        v26 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218498;
          selfCopy4 = self;
          v32 = 2114;
          v33 = v4;
          v34 = 2114;
          v35[0] = v6;
          _os_log_impl(&dword_1C5C61000, v26, OS_LOG_TYPE_DEFAULT, "[RQF:%p] supplementalPlaybackContextWithReason:%{public}@ | context=%{public}@", buf, 0x20u);
        }
      }

      else
      {
        v19 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(&v19->super.super, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218498;
          selfCopy4 = self;
          v32 = 2114;
          v33 = v4;
          v34 = 2048;
          v35[0] = v8;
          _os_log_impl(&dword_1C5C61000, &v19->super.super, OS_LOG_TYPE_DEFAULT, "[RQF:%p] supplementalPlaybackContextWithReason:%{public}@ | returning nil context [no valid station tracks] count=%ld", buf, 0x20u);
        }

        v6 = 0;
      }
    }

    else
    {
      v27 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        selfCopy4 = self;
        v32 = 2114;
        v33 = v4;
        _os_log_impl(&dword_1C5C61000, v27, OS_LOG_TYPE_DEFAULT, "[RQF:%p] supplementalPlaybackContextWithReason:%{public}@ | returning nil [no items]", buf, 0x16u);
      }

      v6 = 0;
    }
  }

  return v6;
}

void __66__MPCModelRadioQueueFeeder_supplementalPlaybackContextWithReason___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 80);
  v3 = a2;
  v4 = [v2 radioStation];
  [v3 setRadioStation:v4];
}

- (int64_t)supplementalPlaybackContextBehavior
{
  if ([(MPCModelRadioQueueFeeder *)self containsLiveStream])
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

- (BOOL)canSkipItem:(id)item reason:(id *)reason
{
  itemCopy = item;
  if (![(MPCModelRadioQueueFeeder *)self containsLiveStream])
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __47__MPCModelRadioQueueFeeder_canSkipItem_reason___block_invoke;
    v19 = &unk_1E8235550;
    v8 = itemCopy;
    v20 = v8;
    v9 = [(MPQueueFeeder *)self identifierRegistryWithExclusiveAccessReturningInteger:&v16];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (reason)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot find item: %@", v8, v16, v17, v18, v19];
        *reason = v7 = 0;
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_20;
    }

    v10 = v9;
    radioStation = [(MPCModelRadioPlaybackQueue *)self->_playbackQueue radioStation];
    v12 = [(MPCModelRadioPlaybackQueue *)self->_playbackQueue trackForItemAtIndex:v10];
    v13 = v12;
    if (!v12)
    {
      goto LABEL_11;
    }

    if ([v12 isSkippable])
    {
      if ([v13 trackType] != 4 || objc_msgSend(radioStation, "subtype") == 1)
      {
LABEL_11:
        v7 = 1;
LABEL_19:

LABEL_20:
        goto LABEL_21;
      }

      if (reason)
      {
        v14 = @"station is a stream";
        goto LABEL_15;
      }
    }

    else if (reason)
    {
      v14 = @"station track not skippable";
LABEL_15:
      v7 = 0;
      *reason = v14;
      goto LABEL_19;
    }

    v7 = 0;
    goto LABEL_19;
  }

  v7 = 0;
  if (reason)
  {
    *reason = @"live item";
  }

LABEL_21:

  return v7;
}

- (void)itemDidBeginPlayback:(id)playback
{
  v11 = *MEMORY[0x1E69E9840];
  playbackCopy = playback;
  if (self->_currentItem != playbackCopy)
  {
    v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134218242;
      selfCopy = self;
      v9 = 2114;
      v10 = playbackCopy;
      _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_DEFAULT, "[RQF:%p] itemDidBeginPlayback: %{public}@", &v7, 0x16u);
    }

    objc_storeStrong(&self->_currentItem, playback);
  }
}

- (void)getRepresentativeMetadataForPlaybackContext:(id)context properties:(id)properties completion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __94__MPCModelRadioQueueFeeder_getRepresentativeMetadataForPlaybackContext_properties_completion___block_invoke;
  v9[3] = &unk_1E8235528;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  [(MPCModelRadioQueueFeeder *)self loadPlaybackContext:context completion:v9];
}

void __94__MPCModelRadioQueueFeeder_getRepresentativeMetadataForPlaybackContext_properties_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a4)
  {
    v5 = *(a1 + 40);
    v6 = *(v5 + 16);
    v14 = a3;
    v6(v5, 0);
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = a3;
    v9 = [v7 firstModelPlayEvent];
    v10 = [v9 radioStation];

    if (v10)
    {
      v11 = MEMORY[0x1E6970670];
      v12 = [v9 radioStation];
      v10 = [v11 genericObjectWithModelObject:v12];

      v13 = 0;
    }

    else
    {
      v13 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:1 debugDescription:{@"Could not convert station into metadata: %@", v9}];
    }

    v14 = v13;
    (*(*(a1 + 40) + 16))();
  }
}

- (void)dealloc
{
  mEMORY[0x1E69E4428] = [MEMORY[0x1E69E4428] sharedMonitor];
  [mEMORY[0x1E69E4428] unregisterObserver:self];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E6970368] object:0];
  if (self->_lastResponse)
  {
    [defaultCenter removeObserver:self name:*MEMORY[0x1E6970240] object:?];
  }

  if (self->_observedIdentityStore)
  {
    [defaultCenter removeObserver:self name:*MEMORY[0x1E69E4380] object:?];
  }

  if (self->_backgroundTaskIdentifier != *MEMORY[0x1E69B1358])
  {
    v5 = MPSharedBackgroundTaskProvider();
    [v5 endTask:self->_backgroundTaskIdentifier];
  }

  v6.receiver = self;
  v6.super_class = MPCModelRadioQueueFeeder;
  [(MPCModelRadioQueueFeeder *)&v6 dealloc];
}

- (MPCModelRadioQueueFeeder)init
{
  v10.receiver = self;
  v10.super_class = MPCModelRadioQueueFeeder;
  v2 = [(MPQueueFeeder *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MPCPlaybackRequestEnvironment);
    playbackRequestEnvironment = v2->_playbackRequestEnvironment;
    v2->_playbackRequestEnvironment = v3;

    currentDeviceInfo = [MEMORY[0x1E69E4420] currentDeviceInfo];
    hasCellularDataCapability = [currentDeviceInfo hasCellularDataCapability];

    if (hasCellularDataCapability)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v2 selector:sel__allowCellularStreamingDidChangeNotification_ name:*MEMORY[0x1E6970368] object:0];

      mEMORY[0x1E69E4428] = [MEMORY[0x1E69E4428] sharedMonitor];
      [mEMORY[0x1E69E4428] registerObserver:v2];

      [(MPCModelRadioQueueFeeder *)v2 _updateAdditionalLoadingSupport];
    }

    else
    {
      v2->_supportsLoadingAdditionalItems = 1;
    }
  }

  return v2;
}

+ (void)__CRASH_FOR_UNEXPECTED_TRACK_DELETE__
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPCModelRadioQueueFeeder.m" lineNumber:813 description:{@"Unexpected change details (2 inserted, 1 deleted) for Radio tracklist"}];
}

+ (id)sharedQueue
{
  if (sharedQueue_onceToken != -1)
  {
    dispatch_once(&sharedQueue_onceToken, &__block_literal_global_17105);
  }

  v3 = sharedQueue___operationQueue;

  return v3;
}

uint64_t __39__MPCModelRadioQueueFeeder_sharedQueue__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v1 = sharedQueue___operationQueue;
  sharedQueue___operationQueue = v0;

  [sharedQueue___operationQueue setName:@"com.apple.MediaPlaybackCore.MPCModelRadioQueueFeeder.loadingOperationQueue"];
  [sharedQueue___operationQueue setMaxConcurrentOperationCount:6];
  v2 = sharedQueue___operationQueue;

  return [v2 setQualityOfService:25];
}

@end