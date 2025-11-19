@interface MRNowPlayingPlayerClientRequests
- (MRNowPlayingPlayerClientRequests)initWithPlayerPath:(id)a3;
- (MRPlaybackQueue)playbackQueue;
- (MRPlayer)playerProperties;
- (NSArray)supportedCommands;
- (id)debugDescription;
- (unsigned)playbackState;
- (void)_handleEnqueuedPlaybackQueueRequest:(void *)a3 completion:;
- (void)_onSerialQueue_updatePlaybackQueueIfUninitialized:(void *)a1;
- (void)_onSerialQueue_updateSupportedCommandsIfUninitialized:(void *)a1;
- (void)dealloc;
- (void)enqueuePlaybackQueueRequest:(id)a3 completion:(id)a4;
- (void)handlePlaybackStateRequestWithCompletion:(id)a3;
- (void)handlePlayerPropertiesRequestWithCompletion:(id)a3;
- (void)handleSupportedCommandsRequestWithCompletion:(id)a3;
- (void)restoreNowPlayingClientState;
- (void)setPlaybackQueue:(id)a3;
- (void)setPlayerProperties:(id)a3;
- (void)setSupportedCommands:(id)a3;
- (void)updateContentItemArtwork:(id)a3;
- (void)updateContentItems:(id)a3;
- (void)updatePlaybackQueue:(uint64_t)a1;
- (void)updatePlaybackQueueIfUninitialized:(id)a3;
- (void)updatePlaybackStateIfUninitialized:(unsigned int)a3;
- (void)updateSupportedCommandsIfUninitialized:(id)a3;
@end

@implementation MRNowPlayingPlayerClientRequests

- (MRPlaybackQueue)playbackQueue
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__40;
  v10 = __Block_byref_object_dispose__40;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__MRNowPlayingPlayerClientRequests_playbackQueue__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __49__MRNowPlayingPlayerClientRequests_playbackQueue__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (MRNowPlayingPlayerClientRequests)initWithPlayerPath:(id)a3
{
  v6 = a3;
  v19.receiver = self;
  v19.super_class = MRNowPlayingPlayerClientRequests;
  v7 = [(MRNowPlayingPlayerClientRequests *)&v19 init];
  if (v7)
  {
    if (([v6 isResolved] & 1) == 0)
    {
      [(MRNowPlayingPlayerClientRequests *)a2 initWithPlayerPath:v7, v6];
    }

    objc_storeStrong(&v7->_playerPath, a3);
    v8 = objc_opt_class();
    Name = class_getName(v8);
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create(Name, v10);
    serialQueue = v7->_serialQueue;
    v7->_serialQueue = v11;

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.MRNowPlayingPlayerClientRequests.response", v13);
    responseQueue = v7->_responseQueue;
    v7->_responseQueue = v14;

    v16 = [[MRPlaybackQueueSubscriptionController alloc] initWithPlayerPath:v6];
    subscriptionController = v7->_subscriptionController;
    v7->_subscriptionController = v16;
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MRNowPlayingPlayerClientRequests;
  [(MRNowPlayingPlayerClientRequests *)&v4 dealloc];
}

- (id)debugDescription
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__40;
  v9 = __Block_byref_object_dispose__40;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __52__MRNowPlayingPlayerClientRequests_debugDescription__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = *(a1 + 32);
  v5 = *(v4 + 104);
  v6 = *(v4 + 32);
  v11 = MRMediaRemoteCopyPlaybackStateDescription(*(v4 + 16));
  v7 = [v3 initWithFormat:@"    playerPath = %@\n    playerProperties = %@\n    playbackState = %@\n    playbackQueue = %@\n    supportedCommands = %@\n", v5, v6, v11, *(*(a1 + 32) + 8), *(*(a1 + 32) + 24)];
  v8 = MRCreateFormattedDebugDescriptionFromClass(v2, v7);
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void __53__MRNowPlayingPlayerClientRequests_setPlaybackState___block_invoke(uint64_t a1)
{
  v2 = _MRLogForCategory(1uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __53__MRNowPlayingPlayerClientRequests_setPlaybackState___block_invoke_cold_1(a1);
  }

  *(*(a1 + 32) + 16) = *(a1 + 40);
}

- (unsigned)playbackState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__MRNowPlayingPlayerClientRequests_playbackState__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setSupportedCommands:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7 = v4;
  v6 = v4;
  msv_dispatch_sync_on_queue();
}

void __57__MRNowPlayingPlayerClientRequests_setSupportedCommands___block_invoke(uint64_t a1)
{
  v2 = _MRLogForCategory(1uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __57__MRNowPlayingPlayerClientRequests_setSupportedCommands___block_invoke_cold_1(a1);
  }

  v3 = [*(a1 + 40) copy];
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = v3;
}

- (NSArray)supportedCommands
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__40;
  v10 = __Block_byref_object_dispose__40;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__MRNowPlayingPlayerClientRequests_supportedCommands__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __53__MRNowPlayingPlayerClientRequests_supportedCommands__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setPlaybackQueue:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7 = v4;
  v6 = v4;
  msv_dispatch_sync_on_queue();
}

void __53__MRNowPlayingPlayerClientRequests_setPlaybackQueue___block_invoke(uint64_t a1)
{
  v2 = _MRLogForCategory(1uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __53__MRNowPlayingPlayerClientRequests_setPlaybackQueue___block_invoke_cold_1(a1);
  }

  v3 = [*(a1 + 40) copy];
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  *(v4 + 8) = v3;
}

- (void)setPlayerProperties:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7 = v4;
  v6 = v4;
  msv_dispatch_sync_on_queue();
}

void __56__MRNowPlayingPlayerClientRequests_setPlayerProperties___block_invoke(uint64_t a1)
{
  v2 = _MRLogForCategory(1uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __56__MRNowPlayingPlayerClientRequests_setPlayerProperties___block_invoke_cold_1(a1);
  }

  v3 = [*(a1 + 40) copy];
  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  *(v4 + 32) = v3;
}

- (MRPlayer)playerProperties
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__40;
  v10 = __Block_byref_object_dispose__40;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__MRNowPlayingPlayerClientRequests_playerProperties__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __52__MRNowPlayingPlayerClientRequests_playerProperties__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)updateContentItems:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7 = v4;
  v6 = v4;
  msv_dispatch_sync_on_queue();
}

void __55__MRNowPlayingPlayerClientRequests_updateContentItems___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 8))
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v2 = *(a1 + 40);
    v3 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v3)
    {
      v5 = v3;
      v6 = *v17;
      *&v4 = 138543618;
      v15 = v4;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v17 != v6)
          {
            objc_enumerationMutation(v2);
          }

          v8 = *(*(&v16 + 1) + 8 * i);
          v9 = *(*(a1 + 32) + 8);
          v10 = [v8 identifier];
          v11 = [v9 contentItemForIdentifier:v10];

          if (v11)
          {
            v12 = _MRLogForCategory(1uLL);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
              v13 = *(*(a1 + 32) + 104);
              *buf = v15;
              v21 = v13;
              v22 = 2112;
              v23 = v8;
              _os_log_debug_impl(&dword_1A2860000, v12, OS_LOG_TYPE_DEBUG, "[MRNowPlayingPlayerClientRequests] %{public}@ UpdatingCache: contentItem %@", buf, 0x16u);
            }

            MRContentItemMerge(v11, v8);
          }
        }

        v5 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v5);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)updateContentItemArtwork:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__MRNowPlayingPlayerClientRequests_updateContentItemArtwork___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

void __61__MRNowPlayingPlayerClientRequests_updateContentItemArtwork___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 8))
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v2 = *(a1 + 40);
    v3 = [v2 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v3)
    {
      v5 = v3;
      v6 = *v32;
      *&v4 = 138543618;
      v30 = v4;
      do
      {
        v7 = 0;
        do
        {
          if (*v32 != v6)
          {
            objc_enumerationMutation(v2);
          }

          v8 = *(*(a1 + 32) + 8);
          v9 = [*(*(&v31 + 1) + 8 * v7) identifier];
          v10 = [v8 contentItemForIdentifier:v9];

          if (v10)
          {
            if (MRContentItemGetArtworkData(v10))
            {
              v11 = _MRLogForCategory(1uLL);
              if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
              {
                v21 = *(*(a1 + 32) + 104);
                v22 = MRContentItemCopyMinimalReadableDescription(v10);
                *buf = v30;
                v36 = v21;
                v37 = 2112;
                v38 = v22;
                _os_log_debug_impl(&dword_1A2860000, v11, OS_LOG_TYPE_DEBUG, "[MRNowPlayingPlayerClientRequests] %{public}@ UpdatingCache: clearing contentItemArtwork for %@", buf, 0x16u);
              }

              MRContentItemSetArtworkData(v10, 0);
            }

            v12 = [v10 artworks];
            v13 = [v12 count];

            if (v13)
            {
              v14 = _MRLogForCategory(1uLL);
              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
              {
                v23 = *(*(a1 + 32) + 104);
                v24 = MRContentItemCopyMinimalReadableDescription(v10);
                *buf = v30;
                v36 = v23;
                v37 = 2112;
                v38 = v24;
                _os_log_debug_impl(&dword_1A2860000, v14, OS_LOG_TYPE_DEBUG, "[MRNowPlayingPlayerClientRequests] %{public}@ UpdatingCache: clearing formatted data artworks for %@", buf, 0x16u);
              }

              [v10 setArtworks:0];
            }

            v15 = [v10 remoteArtworks];
            v16 = [v15 count];

            if (v16)
            {
              v17 = _MRLogForCategory(1uLL);
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
              {
                v25 = *(*(a1 + 32) + 104);
                v26 = MRContentItemCopyMinimalReadableDescription(v10);
                *buf = v30;
                v36 = v25;
                v37 = 2112;
                v38 = v26;
                _os_log_debug_impl(&dword_1A2860000, v17, OS_LOG_TYPE_DEBUG, "[MRNowPlayingPlayerClientRequests] %{public}@ UpdatingCache: clearing formatted remote artworks for %@", buf, 0x16u);
              }

              [v10 setRemoteArtworks:0];
            }

            v18 = [v10 animatedArtworks];
            v19 = [v18 count];

            if (v19)
            {
              v20 = _MRLogForCategory(1uLL);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
              {
                v27 = *(*(a1 + 32) + 104);
                v28 = MRContentItemCopyMinimalReadableDescription(v10);
                *buf = v30;
                v36 = v27;
                v37 = 2112;
                v38 = v28;
                _os_log_debug_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEBUG, "[MRNowPlayingPlayerClientRequests] %{public}@ UpdatingCache: clearing animated artworks for %@", buf, 0x16u);
              }

              [v10 setAnimatedArtworks:0];
            }
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v2 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v5);
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

void __56__MRNowPlayingPlayerClientRequests_updatePlaybackQueue___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3[1])
  {
    v10 = [v2 contentItems];
    [v3 updateContentItems:?];
    v4 = *MEMORY[0x1E69E9840];
  }

  else
  {
    if (v2 && [v2 hasLocation])
    {
      v5 = [*(a1 + 40) contentItemWithOffset:0];
      if (v5)
      {
        v6 = [MRPlaybackQueue alloc];
        v11[0] = v5;
        v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
        v8 = [(MRPlaybackQueue *)v6 initWithContentItems:v7 location:0 withPropertiesFromPlaybackQueue:*(a1 + 40)];
        [*(a1 + 32) setPlaybackQueue:v8];
      }
    }

    v9 = *MEMORY[0x1E69E9840];
  }
}

- (void)updatePlaybackQueueIfUninitialized:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__MRNowPlayingPlayerClientRequests_updatePlaybackQueueIfUninitialized___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

- (void)updatePlaybackStateIfUninitialized:(unsigned int)a3
{
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __71__MRNowPlayingPlayerClientRequests_updatePlaybackStateIfUninitialized___block_invoke;
  v4[3] = &unk_1E769E760;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(serialQueue, v4);
}

- (void)updateSupportedCommandsIfUninitialized:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__MRNowPlayingPlayerClientRequests_updateSupportedCommandsIfUninitialized___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

- (void)enqueuePlaybackQueueRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__MRNowPlayingPlayerClientRequests_enqueuePlaybackQueueRequest_completion___block_invoke;
  block[3] = &unk_1E769E410;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(serialQueue, block);
}

void __75__MRNowPlayingPlayerClientRequests_enqueuePlaybackQueueRequest_completion___block_invoke(id *a1)
{
  v2 = [a1[4] copy];
  v3 = [v2 containsNonDefaultAssets];
  v4 = a1[5];
  if (v3)
  {
    v5 = v4[12];
    if (!v5)
    {
      v6 = 96;
LABEL_6:
      v7 = objc_alloc_init(MEMORY[0x1E696ADC8]);
      v8 = a1[5];
      v9 = *&v8[v6];
      *&v8[v6] = v7;

      [*(a1[5] + v6) setMaxConcurrentOperationCount:1];
      v5 = *(a1[5] + v6);
    }
  }

  else
  {
    v5 = v4[11];
    if (!v5)
    {
      v6 = 88;
      goto LABEL_6;
    }
  }

  v10 = v5;
  objc_initWeak(&location, a1[5]);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__MRNowPlayingPlayerClientRequests_enqueuePlaybackQueueRequest_completion___block_invoke_2;
  v12[3] = &unk_1E76A3590;
  objc_copyWeak(&v15, &location);
  v11 = v2;
  v13 = v11;
  v14 = a1[6];
  [v10 addOperationWithBlock:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __75__MRNowPlayingPlayerClientRequests_enqueuePlaybackQueueRequest_completion___block_invoke_2(void **a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [(MRNowPlayingPlayerClientRequests *)WeakRetained _handleEnqueuedPlaybackQueueRequest:a1[5] completion:?];
  }

  else
  {
    Error = MRMediaRemoteCreateError(1);
    v4 = a1[5];
    if (v4)
    {
      v4[2](v4, 0, Error);
    }
  }
}

- (void)_handleEnqueuedPlaybackQueueRequest:(void *)a3 completion:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__40;
    v36 = __Block_byref_object_dispose__40;
    v37 = 0;
    v7 = [a1 playbackQueue];
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__40;
    v30 = __Block_byref_object_dispose__40;
    v31 = MRPlaybackQueueCreateFromCache(v7, v5, 0, *(a1 + 104));
    if (v27[5])
    {
      if (!v6)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v8 = dispatch_semaphore_create(0);
      v24[0] = 0;
      v24[1] = v24;
      v24[2] = 0x2020000000;
      v25 = 1;
      v9 = MRGetSharedService();
      v10 = *(a1 + 104);
      v11 = *(a1 + 48);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __83__MRNowPlayingPlayerClientRequests__handleEnqueuedPlaybackQueueRequest_completion___block_invoke;
      v19[3] = &unk_1E76A35B8;
      v22 = &v26;
      v23 = &v32;
      v21 = v24;
      v19[4] = a1;
      v12 = v8;
      v20 = v12;
      MRMediaRemoteServiceRequestNowPlayingPlaybackQueue(v9, v5, v10, v11, v19);
      v13 = dispatch_time(0, 3000000000);
      if (dispatch_semaphore_wait(v12, v13))
      {
        v14 = *(a1 + 48);
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __83__MRNowPlayingPlayerClientRequests__handleEnqueuedPlaybackQueueRequest_completion___block_invoke_2;
        v15[3] = &unk_1E769E800;
        v17 = v24;
        v16 = v5;
        v18 = &v32;
        dispatch_sync(v14, v15);
      }

      _Block_object_dispose(v24, 8);
      if (!v6)
      {
        goto LABEL_9;
      }
    }

    v6[2](v6, v27[5], v33[5]);
LABEL_9:
    _Block_object_dispose(&v26, 8);

    _Block_object_dispose(&v32, 8);
  }
}

void __83__MRNowPlayingPlayerClientRequests__handleEnqueuedPlaybackQueueRequest_completion___block_invoke(uint64_t *a1, void *a2, void *a3)
{
  obj = a2;
  v5 = a3;
  v6 = *(a1[6] + 8);
  v8 = *(v6 + 24);
  v7 = (v6 + 24);
  if (v8 == 1)
  {
    __83__MRNowPlayingPlayerClientRequests__handleEnqueuedPlaybackQueueRequest_completion___block_invoke_cold_1(v7, a1, obj, v5);
  }
}

void __83__MRNowPlayingPlayerClientRequests__handleEnqueuedPlaybackQueueRequest_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24) == 1)
  {
    *(v1 + 24) = 0;
    v3 = _MRLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __83__MRNowPlayingPlayerClientRequests__handleEnqueuedPlaybackQueueRequest_completion___block_invoke_2_cold_1(a1, v3);
    }

    Error = MRMediaRemoteCreateError(26);
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = Error;
  }
}

- (void)handleSupportedCommandsRequestWithCompletion:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(MRNowPlayingPlayerClientRequests *)a2 handleSupportedCommandsRequestWithCompletion:?];
  }

  serialQueue = self->_serialQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __81__MRNowPlayingPlayerClientRequests_handleSupportedCommandsRequestWithCompletion___block_invoke;
  v8[3] = &unk_1E769A0A0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_sync(serialQueue, v8);
}

void __81__MRNowPlayingPlayerClientRequests_handleSupportedCommandsRequestWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 24))
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v5 = *(v2 + 64);
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = *(a1 + 32);
      v8 = *(v7 + 64);
      *(v7 + 64) = v6;

      v5 = *(*(a1 + 32) + 64);
    }

    v9 = [*(a1 + 40) copy];
    v10 = MEMORY[0x1A58E3570]();
    [v5 addObject:v10];

    if ([*(*(a1 + 32) + 64) count] == 1)
    {
      v11 = MRGetSharedService();
      v12 = *(a1 + 32);
      v13 = *(v12 + 104);
      v14 = *(v12 + 40);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __81__MRNowPlayingPlayerClientRequests_handleSupportedCommandsRequestWithCompletion___block_invoke_2;
      v15[3] = &unk_1E769C420;
      v15[4] = v12;
      MRMediaRemoteServiceGetSupportedCommands(v11, v13, v14, v15);
    }
  }
}

- (void)handlePlaybackStateRequestWithCompletion:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(MRNowPlayingPlayerClientRequests *)a2 handlePlaybackStateRequestWithCompletion:?];
  }

  serialQueue = self->_serialQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77__MRNowPlayingPlayerClientRequests_handlePlaybackStateRequestWithCompletion___block_invoke;
  v8[3] = &unk_1E769A0A0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_sync(serialQueue, v8);
}

void __77__MRNowPlayingPlayerClientRequests_handlePlaybackStateRequestWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 16))
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v5 = *(v2 + 72);
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = *(a1 + 32);
      v8 = *(v7 + 72);
      *(v7 + 72) = v6;

      v5 = *(*(a1 + 32) + 72);
    }

    v9 = [*(a1 + 40) copy];
    v10 = MEMORY[0x1A58E3570]();
    [v5 addObject:v10];

    if ([*(*(a1 + 32) + 72) count] == 1)
    {
      v11 = MRGetSharedService();
      v12 = *(a1 + 32);
      v13 = *(v12 + 104);
      v14 = *(v12 + 40);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __77__MRNowPlayingPlayerClientRequests_handlePlaybackStateRequestWithCompletion___block_invoke_2;
      v15[3] = &unk_1E76A35E0;
      v15[4] = v12;
      MRMediaRemoteServiceGetPlaybackState(v11, v13, v14, v15);
    }
  }
}

void __77__MRNowPlayingPlayerClientRequests_handlePlaybackStateRequestWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 32);
  if (!*(v6 + 16))
  {
    [v6 setPlaybackState:a2];
    v6 = *(a1 + 32);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = *(v6 + 72);
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(a1 + 32) + 16);
        (*(*(*(&v14 + 1) + 8 * v11) + 16))(*(*(&v14 + 1) + 8 * v11));
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [*(*(a1 + 32) + 72) removeAllObjects];
  v13 = *MEMORY[0x1E69E9840];
}

- (void)handlePlayerPropertiesRequestWithCompletion:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(MRNowPlayingPlayerClientRequests *)a2 handlePlayerPropertiesRequestWithCompletion:?];
  }

  serialQueue = self->_serialQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __80__MRNowPlayingPlayerClientRequests_handlePlayerPropertiesRequestWithCompletion___block_invoke;
  v8[3] = &unk_1E769A0A0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_sync(serialQueue, v8);
}

void __80__MRNowPlayingPlayerClientRequests_handlePlayerPropertiesRequestWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 32))
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v5 = *(v2 + 80);
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = *(a1 + 32);
      v8 = *(v7 + 80);
      *(v7 + 80) = v6;

      v5 = *(*(a1 + 32) + 80);
    }

    v9 = [*(a1 + 40) copy];
    v10 = MEMORY[0x1A58E3570]();
    [v5 addObject:v10];

    if ([*(*(a1 + 32) + 80) count] == 1)
    {
      v11 = MRGetSharedService();
      v12 = *(a1 + 32);
      v13 = *(v12 + 104);
      v14 = *(v12 + 40);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __80__MRNowPlayingPlayerClientRequests_handlePlayerPropertiesRequestWithCompletion___block_invoke_2;
      v15[3] = &unk_1E76A3608;
      v15[4] = v12;
      MRMediaRemoteServiceGetPlayerProperties(v11, v13, v14, v15);
    }
  }
}

void __80__MRNowPlayingPlayerClientRequests_handlePlayerPropertiesRequestWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (!*(v7 + 32))
  {
    [v7 setPlayerProperties:v5];
    v7 = *(a1 + 32);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = *(v7 + 80);
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(a1 + 32) + 32);
        (*(*(*(&v15 + 1) + 8 * v12) + 16))(*(*(&v15 + 1) + 8 * v12));
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  [*(*(a1 + 32) + 80) removeAllObjects];
  v14 = *MEMORY[0x1E69E9840];
}

- (void)restoreNowPlayingClientState
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__MRNowPlayingPlayerClientRequests_restoreNowPlayingClientState__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

void __64__MRNowPlayingPlayerClientRequests_restoreNowPlayingClientState__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = 0;

  *(*(a1 + 32) + 16) = 0;
  v6 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:*(*(a1 + 32) + 112) requiringSecureCoding:1 error:0];
  if (v6)
  {
    MRMediaRemotePlaybackQueueResetRequestsWithDataForPlayer(*(*(a1 + 32) + 104), v6);
  }

  [*(*(a1 + 32) + 56) removeAllObjects];
}

- (void)updatePlaybackQueue:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 40);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __56__MRNowPlayingPlayerClientRequests_updatePlaybackQueue___block_invoke;
    v6[3] = &unk_1E769A4A0;
    v6[4] = a1;
    v7 = v3;
    dispatch_sync(v5, v6);
  }
}

- (void)_onSerialQueue_updatePlaybackQueueIfUninitialized:(void *)a1
{
  v3 = a2;
  if (a1 && !a1[1])
  {
    v4 = v3;
    [a1 setPlaybackQueue:v3];
    v3 = v4;
  }
}

_DWORD *__71__MRNowPlayingPlayerClientRequests_updatePlaybackStateIfUninitialized___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    if (!result[4])
    {
      return [result setPlaybackState:*(a1 + 40)];
    }
  }

  return result;
}

- (void)_onSerialQueue_updateSupportedCommandsIfUninitialized:(void *)a1
{
  v3 = a2;
  if (a1 && !a1[3])
  {
    v4 = v3;
    [a1 setSupportedCommands:v3];
    v3 = v4;
  }
}

void __81__MRNowPlayingPlayerClientRequests_handleSupportedCommandsRequestWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  [(MRNowPlayingPlayerClientRequests *)*(a1 + 32) _onSerialQueue_updateSupportedCommandsIfUninitialized:a2];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = *(*(a1 + 32) + 64);
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(a1 + 32) + 24);
        (*(*(*(&v13 + 1) + 8 * v10) + 16))(*(*(&v13 + 1) + 8 * v10));
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [*(*(a1 + 32) + 64) removeAllObjects];
  v12 = *MEMORY[0x1E69E9840];
}

- (void)initWithPlayerPath:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"MRNowPlayingPlayerClientRequests.m" lineNumber:45 description:{@"Trying to instantiate an unresolved MRNowPlayingPlayerClientRequests %@", a3}];
}

void __53__MRNowPlayingPlayerClientRequests_setPlaybackState___block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = HIDWORD(*(*(a1 + 32) + 104));
  v9 = MRMediaRemoteCopyPlaybackStateDescription(*(a1 + 40));
  OUTLINED_FUNCTION_1_21(&dword_1A2860000, v1, v2, "[MRNowPlayingPlayerClientRequests] %{public}@ UpdatingCache: playbackState %{public}@", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x1E69E9840];
}

void __57__MRNowPlayingPlayerClientRequests_setSupportedCommands___block_invoke_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 104);
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEBUG, "[MRNowPlayingPlayerClientRequests] %{public}@ UpdatingCache: supportedCommands %{public}@", v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void __53__MRNowPlayingPlayerClientRequests_setPlaybackQueue___block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 104);
  v9 = [*(a1 + 40) minimalReadableDescription];
  OUTLINED_FUNCTION_1_21(&dword_1A2860000, v2, v3, "[MRNowPlayingPlayerClientRequests] %{public}@ UpdatingCache: playbackQueue %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

void __56__MRNowPlayingPlayerClientRequests_setPlayerProperties___block_invoke_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 104);
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEBUG, "[MRNowPlayingPlayerClientRequests] %{public}@ UpdatingCache: playerProperties %{public}@", v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

intptr_t __83__MRNowPlayingPlayerClientRequests__handleEnqueuedPlaybackQueueRequest_completion___block_invoke_cold_1(_BYTE *a1, uint64_t *a2, id obj, void *a4)
{
  *a1 = 0;
  objc_storeStrong((*(a2[7] + 8) + 40), obj);
  objc_storeStrong((*(a2[8] + 8) + 40), a4);
  [(MRNowPlayingPlayerClientRequests *)a2[4] updatePlaybackQueue:?];
  v6 = a2[5];

  return dispatch_semaphore_signal(v6);
}

void __83__MRNowPlayingPlayerClientRequests__handleEnqueuedPlaybackQueueRequest_completion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = 138543362;
  v5 = v2;
  _os_log_error_impl(&dword_1A2860000, a2, OS_LOG_TYPE_ERROR, "Timed out getting playback queue for now playing request: %{public}@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)handleSupportedCommandsRequestWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MRNowPlayingPlayerClientRequests.m" lineNumber:324 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
}

- (void)handlePlaybackStateRequestWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MRNowPlayingPlayerClientRequests.m" lineNumber:354 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
}

- (void)handlePlayerPropertiesRequestWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MRNowPlayingPlayerClientRequests.m" lineNumber:384 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
}

@end