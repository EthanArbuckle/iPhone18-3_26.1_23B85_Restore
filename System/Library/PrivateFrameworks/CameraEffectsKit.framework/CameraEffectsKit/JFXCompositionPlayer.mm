@interface JFXCompositionPlayer
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentCMTime;
- (BOOL)JFX_clipDataSourceHasClip:(id)a3;
- (BOOL)isAudioMuted;
- (BOOL)isPlaying;
- (BOOL)isRequestOfTypePendingOrQueued:(unint64_t)a3;
- (BOOL)isRequestOfTypeQueued:(unint64_t)a3;
- (BOOL)pause:(id)a3;
- (BOOL)play:(id)a3;
- (BOOL)setAudioMuted:(BOOL)a3 completionBlock:(id)a4;
- (BOOL)updateComposition:(id)a3;
- (BOOL)updateCompositionForClip:(id)a3 completion:(id)a4;
- (CGSize)renderSize;
- (JFXCompositionPlayer)initWithClipsDataSource:(id)a3 seekPosition:(int)a4 audioMuted:(BOOL)a5;
- (JFXCompositionPlayerDelegate)playbackDelegate;
- (id)firstQueuedRequestOfType:(unint64_t)a3;
- (id)removeAllRequests;
- (id)removeRequestOfType:(unint64_t)a3;
- (id)requestWithBlock:(id)a3 ofType:(unint64_t)a4 completion:(id)a5;
- (int)currentTime;
- (int)duration;
- (void)appendRequests:(id)a3;
- (void)cancelQueuedCompositionUpdateRequestFromClip:(id)a3;
- (void)cancelQueuedRequestOfType:(unint64_t)a3;
- (void)checkPendingRequestForTimeOut;
- (void)clearQueuedRequests;
- (void)completePendingRequest:(BOOL)a3 wasCancelled:(BOOL)a4 error:(id)a5;
- (void)completeRequest:(id)a3 success:(BOOL)a4 wasCancelled:(BOOL)a5 error:(id)a6;
- (void)configureCompositorCompletionBlock;
- (void)createPlayer;
- (void)dealloc;
- (void)destroyPlayer;
- (void)dispatchBlockWhenDone:(id)a3;
- (void)doClipCompositionUpdate:(id)a3;
- (void)doMuteAudio:(BOOL)a3;
- (void)doPause;
- (void)doPlay;
- (void)doUpdateComposition;
- (void)enqueueRequest:(id)a3;
- (void)executeNextRequest;
- (void)executeRequestCompletionBlock:(id)a3 success:(BOOL)a4 wasCancelled:(BOOL)a5 error:(id)a6;
- (void)handleChangeAudioMutedCompleted;
- (void)handleClipCompositionUpdateTimedOut;
- (void)handleCompositionRefreshCompleted:(BOOL)a3;
- (void)handlePlaybackBegan;
- (void)handlePlaybackPaused;
- (void)handleReadyForDisplay:(BOOL)a3;
- (void)handleSeekCompleted:(BOOL)a3;
- (void)handleUpdateCompositionCompleted:(BOOL)a3 wasCancelled:(BOOL)a4 error:(id)a5;
- (void)handleUpdateCompositionForClipCompleted:(BOOL)a3;
- (void)notifyPlayerViewSizeChanged;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)removeCompositorCompletionBlock;
- (void)resetPlaybackTimeChangedObserverInterval;
- (void)seek:(int)a3 cancelQueuedRequest:(BOOL)a4 tolerance:(int)a5 completion:(id)a6;
- (void)setCachedCurrentTimeForCompositionUpdate:(id *)a3;
- (void)setPlaybackTimeChangedObserverInterval:(id *)a3;
- (void)setPlayerView:(id)a3 completionBlock:(id)a4;
- (void)setWasCurrentTime:(id *)a3;
- (void)setupPlaybackTimeChangedObserver;
- (void)teardownSetPlaceHolder:(BOOL)a3;
- (void)throttleRequestWithCompletionBlock:(id)a3 ofType:(unint64_t)a4;
- (void)warnTooManyLiveCompositors:(id)a3;
@end

@implementation JFXCompositionPlayer

- (JFXCompositionPlayer)initWithClipsDataSource:(id)a3 seekPosition:(int)a4 audioMuted:(BOOL)a5
{
  v9 = a3;
  v18.receiver = self;
  v18.super_class = JFXCompositionPlayer;
  v10 = [(JFXCompositionPlayer *)&v18 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_clipsDataSource, a3);
    v11->_playbackTimeChangedObserverInterval.epoch = 0;
    *&v11->_playbackTimeChangedObserverInterval.value = kDefaultPlaybackTimeObserverInterval;
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    requestQueue = v11->_requestQueue;
    v11->_requestQueue = v12;

    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 addObserver:v11 selector:sel_warnTooManyLiveCompositors_ name:*MEMORY[0x277D41B78] object:0];

    CMTimeFromFrameTime(a4, [(JFXCompositionPlayableElementsDataSource *)v11->_clipsDataSource frameRate], &v17);
    v11->_wasCurrentTime = v17;
    v15 = MEMORY[0x277CC08F0];
    *&v11->_cachedCurrentTimeForCompositionUpdate.value = *MEMORY[0x277CC08F0];
    v11->_cachedCurrentTimeForCompositionUpdate.epoch = *(v15 + 16);
    v11->_wasAudioMuted = a5;
    v11->_wasPlaying = 0;
    v11->_parentCode = -1;
  }

  return v11;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  [(JFXCompositionPlayer *)self teardownSetPlaceHolder:0];
  v4.receiver = self;
  v4.super_class = JFXCompositionPlayer;
  [(JFXCompositionPlayer *)&v4 dealloc];
}

- (void)teardownSetPlaceHolder:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x277D85DE8];
  v5 = JFXLog_DebugPlayback();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(JFXCompositionPlayer *)self displayName];
    v13 = 138543362;
    v14 = v6;
    _os_log_impl(&dword_242A3B000, v5, OS_LOG_TYPE_DEFAULT, "Player %{public}@ Tear Down", &v13, 0xCu);
  }

  v7 = [(JFXCompositionPlayer *)self playbackDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(JFXCompositionPlayer *)self playbackDelegate];
    [v9 playbackReadyForDisplayChanged:self isReady:0 setPlaceHolder:v3];
  }

  [(JFXCompositionPlayer *)self clearQueuedRequests];
  v10 = [(JFXCompositionPlayer *)self pendingRequest];

  if (v10)
  {
    v11 = [(JFXCompositionPlayer *)self pendingRequest];
    [(JFXCompositionPlayer *)self executeRequestCompletionBlock:v11 success:0 wasCancelled:1 error:0];

    [(JFXCompositionPlayer *)self setPendingRequest:0];
  }

  [(JFXCompositionPlayer *)self destroyPlayer];
  v12 = [(JFXCompositionPlayer *)self playerView];
  [v12 setPlayer:0];
}

- (id)requestWithBlock:(id)a3 ofType:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[JFXCompositionPlayerRequest alloc] initWithBlock:v9 ofType:a4];

  [(JFXCompositionPlayerRequest *)v10 setPlayer:self];
  [(JFXCompositionPlayerRequest *)v10 setCompletionBlock:v8];

  return v10;
}

- (BOOL)isRequestOfTypePendingOrQueued:(unint64_t)a3
{
  v5 = [(JFXCompositionPlayer *)self pendingRequest];
  v6 = [v5 type];

  if (v6 == a3)
  {
    return 1;
  }

  return [(JFXCompositionPlayer *)self isRequestOfTypeQueued:a3];
}

- (id)firstQueuedRequestOfType:(unint64_t)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(JFXCompositionPlayer *)self requestQueue];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 type] == a3)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)checkPendingRequestForTimeOut
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a1 pendingRequest];
  v6 = 138543618;
  v7 = v5;
  v8 = 2048;
  v9 = a3;
  _os_log_error_impl(&dword_242A3B000, a2, OS_LOG_TYPE_ERROR, "Request %{public}@ Timed Out because it had not completed executing in %f sec", &v6, 0x16u);
}

- (id)removeRequestOfType:(unint64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(JFXCompositionPlayer *)self requestQueue];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 type] == a3)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v12 = [(JFXCompositionPlayer *)self requestQueue];
    [v12 removeObjectsInArray:v5];
  }

  return v5;
}

- (id)removeAllRequests
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(JFXCompositionPlayer *)self requestQueue];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(JFXCompositionPlayer *)self requestQueue];
    [v3 addObjectsFromArray:v6];

    v7 = [(JFXCompositionPlayer *)self requestQueue];
    [v7 removeAllObjects];
  }

  return v3;
}

- (void)appendRequests:(id)a3
{
  v5 = a3;
  if ([v5 count])
  {
    v4 = [(JFXCompositionPlayer *)self requestQueue];
    [v4 addObjectsFromArray:v5];
  }
}

- (BOOL)isRequestOfTypeQueued:(unint64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(JFXCompositionPlayer *)self requestQueue];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v11 + 1) + 8 * i) type] == a3)
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (void)clearQueuedRequests
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(JFXCompositionPlayer *)self requestQueue];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(JFXCompositionPlayer *)self executeRequestCompletionBlock:*(*(&v9 + 1) + 8 * v7++) success:0 wasCancelled:1 error:0];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = [(JFXCompositionPlayer *)self requestQueue];
  [v8 removeAllObjects];
}

- (void)cancelQueuedRequestOfType:(unint64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(JFXCompositionPlayer *)self requestQueue];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      if ([v10 type] == a3)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v11 = v10;

    if (!v11)
    {
      return;
    }

    [(JFXCompositionPlayer *)self executeRequestCompletionBlock:v11 success:0 wasCancelled:1 error:0];
    v12 = [(JFXCompositionPlayer *)self requestQueue];
    [v12 removeObjectIdenticalTo:v11];

    v5 = v11;
  }

LABEL_12:
}

- (void)cancelQueuedCompositionUpdateRequestFromClip:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(JFXCompositionPlayer *)self requestQueue];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v6)
  {
LABEL_11:
    v11 = v5;
    goto LABEL_14;
  }

  v7 = v6;
  v8 = *v17;
LABEL_3:
  v9 = 0;
  while (1)
  {
    if (*v17 != v8)
    {
      objc_enumerationMutation(v5);
    }

    v10 = *(*(&v16 + 1) + 8 * v9);
    if ([v10 type] != 5)
    {
      goto LABEL_9;
    }

    v11 = v10;
    v12 = [v11 clipUUID];
    v13 = [v4 uuid];
    v14 = [v12 isEqualToString:v13];

    if (v14)
    {
      break;
    }

LABEL_9:
    if (v7 == ++v9)
    {
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }
  }

  if (!v11)
  {
    goto LABEL_15;
  }

  [(JFXCompositionPlayer *)self executeRequestCompletionBlock:v11 success:0 wasCancelled:1 error:0];
  v15 = [(JFXCompositionPlayer *)self requestQueue];
  [v15 removeObjectIdenticalTo:v11];

LABEL_14:
LABEL_15:
}

- (void)enqueueRequest:(id)a3
{
  v4 = a3;
  v5 = [(JFXCompositionPlayer *)self requestQueue];
  [v5 addObject:v4];

  [v4 didEnqueue];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  [v4 setStartTime:?];
  v6 = JFXLog_DebugPlayback();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);

  if (v7)
  {
    v8 = JFXLog_DebugPlayback();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(JFXCompositionPlayer *)v4 enqueueRequest:v8];
    }
  }

  v9 = [(JFXCompositionPlayer *)self pendingRequest];
  if (v9)
  {
  }

  else
  {
    v10 = [(JFXCompositionPlayer *)self requestQueue];
    v11 = [v10 count];

    if (v11 == 1)
    {
      [(JFXCompositionPlayer *)self executeNextRequest];
    }
  }
}

- (void)executeNextRequest
{
  [(JFXCompositionPlayer *)self setPendingRequest:0];
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__JFXCompositionPlayer_executeNextRequest__block_invoke;
  block[3] = &unk_278D7C248;
  block[4] = self;
  objc_copyWeak(&v8, &location);
  v3 = MEMORY[0x277D85CD0];
  dispatch_async(MEMORY[0x277D85CD0], block);
  v4 = dispatch_time(0, 5000000000);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__JFXCompositionPlayer_executeNextRequest__block_invoke_150;
  v5[3] = &unk_278D7B1C8;
  objc_copyWeak(&v6, &location);
  dispatch_after(v4, v3, v5);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __42__JFXCompositionPlayer_executeNextRequest__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) pendingRequest];

  if (!v2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      v4 = [*(a1 + 32) requestQueue];
      v5 = [v4 firstObject];

      if (v5)
      {
        v6 = [*(a1 + 32) requestQueue];
        [v6 removeObjectAtIndex:0];

        [*(a1 + 32) setPendingRequest:v5];
        v7 = JFXLog_DebugPlayback();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [*(a1 + 32) pendingRequest];
          v11 = 138543362;
          v12 = v8;
          _os_log_impl(&dword_242A3B000, v7, OS_LOG_TYPE_DEFAULT, "Request %{public}@ started", &v11, 0xCu);
        }

        [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
        [v5 setStartTime:?];
        [v5 didBegin];
        v9 = [v5 block];
        v10 = [v5 uniqueID];
        (v9)[2](v9, v10);
      }
    }
  }
}

void __42__JFXCompositionPlayer_executeNextRequest__block_invoke_150(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained checkPendingRequestForTimeOut];
}

- (void)completePendingRequest:(BOOL)a3 wasCancelled:(BOOL)a4 error:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v9 = [(JFXCompositionPlayer *)self pendingRequest];
  [(JFXCompositionPlayer *)self executeRequestCompletionBlock:v9 success:v6 wasCancelled:v5 error:v8];

  [(JFXCompositionPlayer *)self executeNextRequest];
}

- (void)completeRequest:(id)a3 success:(BOOL)a4 wasCancelled:(BOOL)a5 error:(id)a6
{
  v10 = a3;
  v11 = a6;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __67__JFXCompositionPlayer_completeRequest_success_wasCancelled_error___block_invoke;
  v14[3] = &unk_278D7C270;
  v14[4] = self;
  v15 = v10;
  v17 = a4;
  v18 = a5;
  v16 = v11;
  v12 = v11;
  v13 = v10;
  dispatch_async(MEMORY[0x277D85CD0], v14);
}

void __67__JFXCompositionPlayer_completeRequest_success_wasCancelled_error___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) pendingRequest];
  v3 = [v2 uniqueID];
  v4 = [v3 isEqualToString:*(a1 + 40)];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 56);
    v7 = *(a1 + 57);
    v8 = *(a1 + 48);

    [v5 completePendingRequest:v6 wasCancelled:v7 error:v8];
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [*(a1 + 32) requestQueue];
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
LABEL_7:
      v13 = 0;
      while (1)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * v13);
        v15 = [v14 uniqueID];
        v16 = [v15 isEqualToString:*(a1 + 40)];

        if (v16)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v11)
          {
            goto LABEL_7;
          }

          goto LABEL_16;
        }
      }

      v17 = v14;

      if (!v17)
      {
        return;
      }

      [*(a1 + 32) executeRequestCompletionBlock:v17 success:*(a1 + 56) wasCancelled:*(a1 + 57) error:*(a1 + 48)];
      v18 = [*(a1 + 32) requestQueue];
      [v18 removeObjectIdenticalTo:v17];

      v9 = v17;
    }

LABEL_16:
  }
}

- (void)executeRequestCompletionBlock:(id)a3 success:(BOOL)a4 wasCancelled:(BOOL)a5 error:(id)a6
{
  v7 = a5;
  v32 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = JFXLog_DebugPlayback();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);

  if (v7)
  {
    if (v13)
    {
      v14 = JFXLog_DebugPlayback();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v29 = v10;
        _os_log_impl(&dword_242A3B000, v14, OS_LOG_TYPE_DEFAULT, "Request %{public}@ was throttled", buf, 0xCu);
      }
    }

    [v10 didCancel];
  }

  else
  {
    if (v13)
    {
      v15 = JFXLog_DebugPlayback();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
        v17 = v16;
        v18 = [(JFXCompositionPlayer *)self pendingRequest];
        [v18 startTime];
        *buf = 138543618;
        v29 = v10;
        v30 = 2048;
        v31 = v17 - v19;
        _os_log_impl(&dword_242A3B000, v15, OS_LOG_TYPE_DEFAULT, "Request %{public}@ completed in %f sec", buf, 0x16u);
      }
    }

    [v10 didComplete];
  }

  v20 = [v10 completionBlock];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__JFXCompositionPlayer_executeRequestCompletionBlock_success_wasCancelled_error___block_invoke;
  block[3] = &unk_278D7C298;
  v26 = a4;
  v27 = v7;
  v24 = v11;
  v25 = v20;
  v21 = v11;
  v22 = v20;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __81__JFXCompositionPlayer_executeRequestCompletionBlock_success_wasCancelled_error___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 49), *(a1 + 32));
  }

  return result;
}

- (void)throttleRequestWithCompletionBlock:(id)a3 ofType:(unint64_t)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = JFXLog_DebugPlayback();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [JFXCompositionPlayerRequest stringFromRequestType:a4];
    v9 = [(JFXCompositionPlayer *)self displayName];
    *buf = 138543618;
    v14 = v8;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&dword_242A3B000, v7, OS_LOG_TYPE_DEFAULT, "Request type %{public}@ for player %{public}@ throttled because already pending", buf, 0x16u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__JFXCompositionPlayer_throttleRequestWithCompletionBlock_ofType___block_invoke;
  block[3] = &unk_278D7A168;
  v12 = v6;
  v10 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __66__JFXCompositionPlayer_throttleRequestWithCompletionBlock_ofType___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 1, 0);
  }

  return result;
}

- (void)dispatchBlockWhenDone:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __46__JFXCompositionPlayer_dispatchBlockWhenDone___block_invoke;
  v9 = &unk_278D7C2C0;
  objc_copyWeak(&v10, &location);
  v5 = [(JFXCompositionPlayer *)self requestWithBlock:&v6 ofType:6 completion:v4];
  [(JFXCompositionPlayer *)self enqueueRequest:v5, v6, v7, v8, v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __46__JFXCompositionPlayer_dispatchBlockWhenDone___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained completeRequest:v3 success:1 wasCancelled:0 error:0];
}

- (BOOL)play:(id)a3
{
  v4 = a3;
  v5 = [(JFXCompositionPlayer *)self isRequestOfTypePendingOrQueued:2];
  if (v5)
  {
    [(JFXCompositionPlayer *)self throttleRequestWithCompletionBlock:v4 ofType:2];
  }

  else
  {
    objc_initWeak(&location, self);
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __29__JFXCompositionPlayer_play___block_invoke;
    v12 = &unk_278D7C2C0;
    objc_copyWeak(&v13, &location);
    v6 = MEMORY[0x245D22230](&v9);
    v7 = [(JFXCompositionPlayer *)self requestWithBlock:v6 ofType:2 completion:v4, v9, v10, v11, v12];
    [(JFXCompositionPlayer *)self enqueueRequest:v7];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return !v5;
}

void __29__JFXCompositionPlayer_play___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained player];
    v6 = [v5 timeControlStatus];

    if (v6 == 2)
    {
      [v4 completeRequest:v7 success:1 wasCancelled:0 error:0];
    }

    else
    {
      [v4 doPlay];
    }
  }
}

- (void)setPlaybackTimeChangedObserverInterval:(id *)a3
{
  if (a3->var2)
  {
    time1 = *a3;
    v6 = **&MEMORY[0x277CC08F0];
    if (CMTimeCompare(&time1, &v6))
    {
      v5 = *&a3->var0;
      self->_playbackTimeChangedObserverInterval.epoch = a3->var3;
      *&self->_playbackTimeChangedObserverInterval.value = v5;
      [(JFXCompositionPlayer *)self setupPlaybackTimeChangedObserver];
    }
  }
}

- (void)resetPlaybackTimeChangedObserverInterval
{
  v3 = 0;
  v2 = kDefaultPlaybackTimeObserverInterval;
  [(JFXCompositionPlayer *)self setPlaybackTimeChangedObserverInterval:&v2];
}

- (void)handlePlaybackBegan
{
  [(JFXCompositionPlayer *)self removeCompositorCompletionBlock];
  v3 = [(JFXCompositionPlayer *)self pendingRequest];
  v4 = [v3 type];

  if (v4 == 2)
  {
    [(JFXCompositionPlayer *)self completePendingRequest:1 wasCancelled:0 error:0];
  }

  v5 = [(JFXCompositionPlayer *)self playbackDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(JFXCompositionPlayer *)self playbackDelegate];
    [v7 playbackDidStart:self];
  }
}

- (BOOL)pause:(id)a3
{
  v4 = a3;
  v5 = [(JFXCompositionPlayer *)self isRequestOfTypePendingOrQueued:3];
  if (v5)
  {
    [(JFXCompositionPlayer *)self throttleRequestWithCompletionBlock:v4 ofType:3];
  }

  else
  {
    objc_initWeak(&location, self);
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __30__JFXCompositionPlayer_pause___block_invoke;
    v12 = &unk_278D7C2C0;
    objc_copyWeak(&v13, &location);
    v6 = MEMORY[0x245D22230](&v9);
    v7 = [(JFXCompositionPlayer *)self requestWithBlock:v6 ofType:3 completion:v4, v9, v10, v11, v12];
    [(JFXCompositionPlayer *)self enqueueRequest:v7];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return !v5;
}

void __30__JFXCompositionPlayer_pause___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained player];
    if (v5 && (v6 = v5, [v4 player], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "timeControlStatus"), v7, v6, v8))
    {
      [v4 doPause];
    }

    else
    {
      [v4 completeRequest:v9 success:1 wasCancelled:0 error:0];
    }
  }
}

- (void)handlePlaybackPaused
{
  [(JFXCompositionPlayer *)self configureCompositorCompletionBlock];
  v3 = [(JFXCompositionPlayer *)self pendingRequest];
  v4 = [v3 type];

  if (v4 == 3)
  {
    [(JFXCompositionPlayer *)self completePendingRequest:1 wasCancelled:0 error:0];
  }

  v18 = 0uLL;
  v19 = 0;
  v5 = [(JFXCompositionPlayer *)self player];
  v6 = v5;
  if (v5)
  {
    [v5 currentTime];
  }

  else
  {
    v18 = 0uLL;
    v19 = 0;
  }

  v7 = [(JFXCompositionPlayer *)self clipsDataSource];
  v8 = [v7 frameRate];
  v16 = v18;
  v17 = v19;
  v9 = FrameTimeFromCMTime(&v16, v8);

  v10 = [(JFXCompositionPlayer *)self player];
  v11 = [v10 currentItem];
  v12 = [v11 customVideoCompositor];
  v16 = v18;
  v17 = v19;
  [v12 signalScheduling:&v16 playerRate:0.0];

  v13 = [(JFXCompositionPlayer *)self playbackDelegate];
  LOBYTE(v11) = objc_opt_respondsToSelector();

  if (v11)
  {
    v14 = [(JFXCompositionPlayer *)self playbackDelegate];
    [v14 playbackDidStop:self currentTime:v9];
  }

  v15 = [(JFXCompositionPlayer *)self composition];
  v16 = v18;
  v17 = v19;
  [v15 notifyPlaybackDidStopAtTime:&v16];
}

- (void)seek:(int)a3 cancelQueuedRequest:(BOOL)a4 tolerance:(int)a5 completion:(id)a6
{
  v7 = a4;
  v8 = *&a3;
  v10 = a6;
  if (v7)
  {
    [(JFXCompositionPlayer *)self cancelQueuedRequestOfType:4];
  }

  objc_initWeak(&location, self);
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __70__JFXCompositionPlayer_seek_cancelQueuedRequest_tolerance_completion___block_invoke;
  v17 = &unk_278D7C338;
  objc_copyWeak(&v19, &location);
  v20 = v8;
  v21 = a5;
  v18 = self;
  v11 = MEMORY[0x245D22230](&v14);
  v12 = [JFXCompositionSeekRequest alloc];
  v13 = [(JFXCompositionSeekRequest *)v12 initWithBlock:v11 withSeekTime:v8, v14, v15, v16, v17];
  [(JFXCompositionPlayerRequest *)v13 setPlayer:self];
  [(JFXCompositionPlayerRequest *)v13 setCompletionBlock:v10];
  [(JFXCompositionPlayer *)self enqueueRequest:v13];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __70__JFXCompositionPlayer_seek_cancelQueuedRequest_tolerance_completion___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained clipsDataSource];
    v7 = [v6 frameRate];

    memset(v21, 0, 24);
    CMTimeFromFrameTime(*(a1 + 48), v7, v21);
    memset(&v20, 0, sizeof(v20));
    CMTimeFromFrameTime(*(a1 + 52), v7, &v20);
    v8 = [v5 composition];
    v9 = v8;
    if (v8)
    {
      [v8 duration];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    time1 = v21[0];
    v10 = CMTimeCompare(&time1, &time2) > 0;

    if (v10)
    {
      v11 = [v5 composition];
      v12 = v11;
      if (v11)
      {
        [v11 duration];
      }

      else
      {
        memset(&time2, 0, sizeof(time2));
      }

      v21[0] = time2;
    }

    v13 = [v5 player];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __70__JFXCompositionPlayer_seek_cancelQueuedRequest_tolerance_completion___block_invoke_2;
    v16[3] = &unk_278D7C310;
    v17 = v21[0];
    v14 = *(a1 + 32);
    v16[4] = v5;
    v16[5] = v14;
    time2 = v21[0];
    time1 = v20;
    v15 = v20;
    [v13 seekToTime:&time2 toleranceBefore:&time1 toleranceAfter:&v15 completionHandler:v16];
  }
}

__n128 __70__JFXCompositionPlayer_seek_cancelQueuedRequest_tolerance_completion___block_invoke_2(uint64_t a1, char a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __70__JFXCompositionPlayer_seek_cancelQueuedRequest_tolerance_completion___block_invoke_3;
  v4[3] = &unk_278D7C2E8;
  v7 = *(a1 + 64);
  v2 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = v2;
  v8 = a2;
  dispatch_async(MEMORY[0x277D85CD0], v4);
  return result;
}

uint64_t __70__JFXCompositionPlayer_seek_cancelQueuedRequest_tolerance_completion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) player];
  v3 = [v2 timeControlStatus];

  if (v3 == 2)
  {
    v4 = [*(a1 + 32) player];
    v5 = [v4 currentItem];
    v6 = [v5 customVideoCompositor];
    [v6 signalSchedulingResetSearch];

    v7 = [*(a1 + 32) player];
    v8 = [v7 currentItem];
    v9 = [v8 customVideoCompositor];
    v10 = [*(a1 + 32) player];
    [v10 rate];
    v13 = *(a1 + 48);
    v14 = *(a1 + 64);
    [v9 signalScheduling:&v13 playerRate:?];
  }

  if (([*(a1 + 40) isRequestOfTypeQueued:4] & 1) == 0)
  {
    v11 = [*(a1 + 40) composition];
    v13 = *(a1 + 48);
    v14 = *(a1 + 64);
    [v11 notifyNeedsEffectPropertiesUpdatedForPlaybackTime:&v13];
  }

  return [*(a1 + 32) handleSeekCompleted:*(a1 + 72)];
}

- (void)handleSeekCompleted:(BOOL)a3
{
  v3 = a3;
  v5 = [(JFXCompositionPlayer *)self pendingRequest];
  v6 = [v5 type];

  if (v6 == 4)
  {

    [(JFXCompositionPlayer *)self completePendingRequest:v3 wasCancelled:0 error:0];
  }
}

- (BOOL)setAudioMuted:(BOOL)a3 completionBlock:(id)a4
{
  v6 = a4;
  [(JFXCompositionPlayer *)self cancelQueuedRequestOfType:7];
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__JFXCompositionPlayer_setAudioMuted_completionBlock___block_invoke;
  v10[3] = &unk_278D7C360;
  objc_copyWeak(&v11, &location);
  v12 = a3;
  v7 = MEMORY[0x245D22230](v10);
  v8 = [(JFXCompositionPlayer *)self requestWithBlock:v7 ofType:7 completion:v6];
  [(JFXCompositionPlayer *)self enqueueRequest:v8];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return 1;
}

void __54__JFXCompositionPlayer_setAudioMuted_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained player];
    v6 = [v5 isMuted];
    v7 = *(a1 + 40);

    if (v7 == v6)
    {
      [v4 completeRequest:v8 success:1 wasCancelled:0 error:0];
    }

    else
    {
      [v4 doMuteAudio:*(a1 + 40)];
      [v4 handleChangeAudioMutedCompleted];
    }
  }
}

- (void)handleChangeAudioMutedCompleted
{
  v3 = [(JFXCompositionPlayer *)self pendingRequest];
  v4 = [v3 type];

  if (v4 == 7)
  {

    [(JFXCompositionPlayer *)self completePendingRequest:1 wasCancelled:0 error:0];
  }
}

- (void)setPlayerView:(id)a3 completionBlock:(id)a4
{
  v7 = a3;
  p_playerView = &self->_playerView;
  if (self->_playerView != v7)
  {
    v10 = v7;
    objc_storeStrong(p_playerView, a3);
    v9 = a4;
    [(JFXCompositionPlayer *)self updateComposition:v9];

    v7 = v10;
  }

  MEMORY[0x2821F96F8](p_playerView, v7);
}

- (void)notifyPlayerViewSizeChanged
{
  v3 = [(JFXCompositionPlayer *)self playerView];
  [v3 displaySize];
  v5 = v4;
  v7 = v6;

  v8 = [(JFXCompositionPlayer *)self composition];
  [v8 viewSize];
  v10 = v9;
  v12 = v11;

  if ((v5 != v10 || v7 != v12) && (v5 != *MEMORY[0x277CBF3A8] || v7 != *(MEMORY[0x277CBF3A8] + 8)))
  {
    v15 = [(JFXCompositionPlayer *)self composition];
    [v15 setViewSize:{v5, v7}];
  }
}

- (BOOL)updateComposition:(id)a3
{
  v4 = a3;
  v5 = [(JFXCompositionPlayer *)self isRequestOfTypeQueued:1];
  if (v5)
  {
    [(JFXCompositionPlayer *)self throttleRequestWithCompletionBlock:v4 ofType:1];
  }

  else
  {
    if ([(JFXCompositionPlayer *)self isRequestOfTypeQueued:5])
    {
      do
      {
        [(JFXCompositionPlayer *)self cancelQueuedRequestOfType:5];
      }

      while ([(JFXCompositionPlayer *)self isRequestOfTypeQueued:5]);
    }

    objc_initWeak(&location, self);
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __42__JFXCompositionPlayer_updateComposition___block_invoke;
    v13 = &unk_278D7C2C0;
    objc_copyWeak(&v14, &location);
    v6 = MEMORY[0x245D22230](&v10);
    v7 = [JFXCompositionUpdateRequest alloc];
    v8 = [(JFXCompositionUpdateRequest *)v7 initWithBlock:v6, v10, v11, v12, v13];
    [(JFXCompositionPlayerRequest *)v8 setCompletionBlock:v4];
    [(JFXCompositionPlayerRequest *)v8 setPlayer:self];
    [(JFXCompositionPlayer *)self enqueueRequest:v8];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return !v5;
}

void __42__JFXCompositionPlayer_updateComposition___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained doUpdateComposition];
}

- (void)doUpdateComposition
{
  v65 = *MEMORY[0x277D85DE8];
  v3 = [(JFXCompositionPlayer *)self clipsDataSource];
  v4 = [v3 count];

  if (v4 < 1)
  {
LABEL_6:
    v8 = [(JFXCompositionPlayer *)self playbackDelegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(JFXCompositionPlayer *)self playbackDelegate];
      [v10 playbackReadyForDisplayChanged:self isReady:0 setPlaceHolder:1];
    }

    v11 = [(JFXCompositionPlayer *)self composition];

    if (v11)
    {
      v12 = [(JFXCompositionPlayer *)self player];
      -[JFXCompositionPlayer setWasPlaying:](self, "setWasPlaying:", [v12 timeControlStatus] == 2);

      v13 = [(JFXCompositionPlayer *)self player];
      v14 = v13;
      if (v13)
      {
        [v13 currentTime];
      }

      else
      {
        memset(&location[2], 0, sizeof(CMTime));
      }

      buf = location[2];
      [(JFXCompositionPlayer *)self setWasCurrentTime:&buf];

      v23 = [(JFXCompositionPlayer *)self player];
      -[JFXCompositionPlayer setWasAudioMuted:](self, "setWasAudioMuted:", [v23 isMuted]);
    }

    else
    {
      v15 = objc_alloc([objc_opt_class() compositionClass]);
      v16 = [(JFXCompositionPlayer *)self clipsDataSource];
      v17 = [v15 initWithClipsDataSource:v16];
      [(JFXCompositionPlayer *)self setComposition:v17];

      if ([(JFXCompositionPlayer *)self parentCode]!= -1)
      {
        v18 = [(JFXCompositionPlayer *)self parentCode];
        v19 = [(JFXCompositionPlayer *)self composition];
        [v19 setParentCode:v18];
      }
    }

    [(JFXCompositionPlayer *)self wasCurrentTime];
    buf = location[1];
    [(JFXCompositionPlayer *)self setCachedCurrentTimeForCompositionUpdate:&buf];
    v24 = [(JFXCompositionPlayer *)self playerView];
    [v24 displaySize];
    v26 = v25;
    v28 = v27;

    if (v26 != *MEMORY[0x277CBF3A8] || v28 != *(MEMORY[0x277CBF3A8] + 8))
    {
      v29 = [(JFXCompositionPlayer *)self composition];
      [v29 setViewSize:{v26, v28}];
    }

    v30 = [(JFXCompositionPlayer *)self composition];
    [v30 markDirty];

    v31 = [(JFXCompositionPlayer *)self composition];
    v32 = [v31 playerItem];

    [(JFXCompositionPlayer *)self createPlayer];
    v33 = [(JFXCompositionPlayer *)self player];
    [v33 replaceCurrentItemWithPlayerItem:v32];

    v34 = [(JFXCompositionPlayer *)self clipsDataSource];
    v35 = objc_opt_respondsToSelector();

    if ((v35 & 1) == 0 || (v36 = MEMORY[0x277D415E0], [MEMORY[0x277D75418] currentDevice], v37 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v37, "jfx_displayColorSpace"), v38 = objc_claimAutoreleasedReturnValue(), -[JFXCompositionPlayer clipsDataSource](self, "clipsDataSource"), v39 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v39, "colorSpace"), v40 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v36, "jfx_compareAndChooseLesserColorSpace:right:", v38, v40), v41 = objc_claimAutoreleasedReturnValue(), v40, v39, v38, v37, !v41))
    {
      v41 = [MEMORY[0x277D415E0] rec709GammaColorSpace];
    }

    v42 = [(JFXCompositionPlayer *)self playerView];
    [v42 configureDisplayAttributesForColorSpace:v41];

    v43 = [(JFXCompositionPlayer *)self clipsDataSource];
    v44 = objc_opt_respondsToSelector();

    if (v44)
    {
      v45 = [(JFXCompositionPlayer *)self clipsDataSource];
      v46 = [v45 playerAllowsExternalPlayback];
      v47 = [(JFXCompositionPlayer *)self player];
      [v47 setAllowsExternalPlayback:v46];
    }

    v48 = [(JFXCompositionPlayer *)self player];
    v49 = [(JFXCompositionPlayer *)self playerView];
    [v49 setPlayer:v48];

    v50 = [(JFXCompositionPlayer *)self composition];
    [v50 applyPlayerItemProperties];

    v51 = [v32 customVideoCompositor];
    [v51 setCancelsPendingRequests:0];
    [(JFXCompositionPlayer *)self configureCompositorCompletionBlock];
    memset(&buf, 0, sizeof(buf));
    v52 = [(JFXCompositionPlayer *)self composition];
    v53 = v52;
    if (v52)
    {
      [v52 duration];
    }

    else
    {
      memset(&buf, 0, sizeof(buf));
    }

    v54 = [(JFXCompositionPlayer *)self composition];
    v55 = v54;
    if (v54 && (buf.flags & 1) != 0)
    {
      location[0] = buf;
      time2 = **&MEMORY[0x277CC08F0];
      v57 = CMTimeCompare(location, &time2);

      if (v57)
      {
        goto LABEL_33;
      }
    }

    else
    {
    }

    objc_initWeak(location, self);
    v56 = dispatch_time(0, 30000000);
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __43__JFXCompositionPlayer_doUpdateComposition__block_invoke_2;
    v58[3] = &unk_278D7B1C8;
    objc_copyWeak(&v59, location);
    dispatch_after(v56, MEMORY[0x277D85CD0], v58);
    objc_destroyWeak(&v59);
    objc_destroyWeak(location);
LABEL_33:

    return;
  }

  v5 = 0;
  while (1)
  {
    v6 = [(JFXCompositionPlayer *)self clipsDataSource];
    v7 = [v6 playableElementAtIndex:v5];

    if (([v7 isAssetUnavailable] & 1) == 0 && (objc_msgSend(v7, "isAssetLoaded") & 1) == 0)
    {
      break;
    }

    if (v4 == ++v5)
    {
      goto LABEL_6;
    }
  }

  v20 = JFXLog_DebugPlayback();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [(JFXCompositionPlayer *)self displayName];
    LODWORD(buf.value) = 138543618;
    *(&buf.value + 4) = v21;
    LOWORD(buf.flags) = 2114;
    *(&buf.flags + 2) = v7;
    _os_log_impl(&dword_242A3B000, v20, OS_LOG_TYPE_DEFAULT, "player %{public}@ doUpdateComposition %{public}@ clip not loaded, will try again in 10 mecs", &buf, 0x16u);
  }

  objc_initWeak(&buf, self);
  v22 = dispatch_time(0, 10000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__JFXCompositionPlayer_doUpdateComposition__block_invoke;
  block[3] = &unk_278D7B1C8;
  objc_copyWeak(&v63, &buf);
  dispatch_after(v22, MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v63);
  objc_destroyWeak(&buf);
}

void __43__JFXCompositionPlayer_doUpdateComposition__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained doUpdateComposition];
}

void __43__JFXCompositionPlayer_doUpdateComposition__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained pendingRequest];
  v2 = [v1 type];

  if (v2 == 1)
  {
    [WeakRetained completePendingRequest:1 wasCancelled:0 error:0];
  }
}

- (void)handleUpdateCompositionCompleted:(BOOL)a3 wasCancelled:(BOOL)a4 error:(id)a5
{
  v5 = a4;
  v6 = a3;
  v38 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = JFXLog_DebugPlayback();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(JFXCompositionPlayer *)self displayName];
    LODWORD(buf.value) = 138543362;
    *(&buf.value + 4) = v10;
    _os_log_impl(&dword_242A3B000, v9, OS_LOG_TYPE_DEFAULT, "player %{public}@ composition update completed", &buf, 0xCu);
  }

  v11 = [(JFXCompositionPlayer *)self pendingRequest];
  v12 = [v11 type] == 1;

  if (v12)
  {
    if ([(JFXCompositionPlayer *)self wasAudioMuted]&& ![(JFXCompositionPlayer *)self isRequestOfTypePendingOrQueued:7])
    {
      [(JFXCompositionPlayer *)self setAudioMuted:[(JFXCompositionPlayer *)self wasAudioMuted] completionBlock:0];
    }

    v13 = [(JFXCompositionPlayer *)self removeRequestOfType:6];
    if ([(JFXCompositionPlayer *)self isRequestOfTypeQueued:4])
    {
      v14 = [(JFXCompositionPlayer *)self firstQueuedRequestOfType:4];
      v15 = v14;
      if (v14 && ![v14 seekTime])
      {
        v16 = [(JFXCompositionPlayer *)self removeRequestOfType:4];
        [(JFXCompositionPlayer *)self seek:1 tolerance:0 completion:0];
        [(JFXCompositionPlayer *)self appendRequests:v16];
      }

      objc_initWeak(&buf, self);
      v25 = MEMORY[0x277D85DD0];
      v26 = 3221225472;
      v27 = __76__JFXCompositionPlayer_handleUpdateCompositionCompleted_wasCancelled_error___block_invoke_2;
      v28 = &unk_278D7C388;
      objc_copyWeak(&v30, &buf);
      v29 = self;
      [(JFXCompositionPlayer *)self dispatchBlockWhenDone:&v25];
      objc_destroyWeak(&v30);
      objc_destroyWeak(&buf);
    }

    else
    {
      [(JFXCompositionPlayer *)self setRestoringPlayerStateAfterCompositionUpdate:1];
      memset(&buf, 0, sizeof(buf));
      memset(&v36, 0, sizeof(v36));
      v17 = [(JFXCompositionPlayer *)self composition];
      v18 = v17;
      if (v17)
      {
        [v17 duration];
      }

      else
      {
        memset(&v36, 0, sizeof(v36));
      }

      [(JFXCompositionPlayer *)self wasCurrentTime];
      time2 = v36;
      CMTimeMinimum(&buf, &time1, &time2);
      v19 = [(JFXCompositionPlayer *)self clipsDataSource];
      CMTimeMake(&time2, 0, [v19 timeScale]);
      v33 = buf;
      CMTimeMaximum(&time1, &v33, &time2);
      buf = time1;

      v20 = [(JFXCompositionPlayer *)self clipsDataSource];
      v21 = [v20 timeScale];
      time1 = buf;
      v22 = FrameTimeFromCMTime(&time1, v21);

      v23 = [(JFXCompositionPlayer *)self isRequestOfTypePendingOrQueued:3];
      v24 = [(JFXCompositionPlayer *)self removeAllRequests];
      if (!v22)
      {
        [(JFXCompositionPlayer *)self seek:1 cancelQueuedRequest:0 tolerance:0 completion:0];
      }

      objc_initWeak(&time1, self);
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __76__JFXCompositionPlayer_handleUpdateCompositionCompleted_wasCancelled_error___block_invoke;
      v31[3] = &unk_278D7C388;
      objc_copyWeak(&v32, &time1);
      v31[4] = self;
      [(JFXCompositionPlayer *)self seek:v22 cancelQueuedRequest:0 tolerance:0 completion:v31];
      if (!(v23 | ![(JFXCompositionPlayer *)self wasPlaying]))
      {
        [(JFXCompositionPlayer *)self play:0];
      }

      [(JFXCompositionPlayer *)self appendRequests:v24];
      objc_destroyWeak(&v32);
      objc_destroyWeak(&time1);
    }

    [(JFXCompositionPlayer *)self appendRequests:v13, v25, v26, v27, v28];
    buf = **&MEMORY[0x277CC08F0];
    [(JFXCompositionPlayer *)self setWasCurrentTime:&buf];
    [(JFXCompositionPlayer *)self setWasPlaying:0];
    [(JFXCompositionPlayer *)self setWasAudioMuted:0];
    [(JFXCompositionPlayer *)self completePendingRequest:v6 wasCancelled:v5 error:v8];
  }
}

void __76__JFXCompositionPlayer_handleUpdateCompositionCompleted_wasCancelled_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v10 = *MEMORY[0x277CC08F0];
    v11 = *(MEMORY[0x277CC08F0] + 16);
    [WeakRetained setCachedCurrentTimeForCompositionUpdate:&v10];
    [v3 setRestoringPlayerStateAfterCompositionUpdate:0];
    v4 = [*(a1 + 32) composition];
    v5 = [*(a1 + 32) player];
    v6 = v5;
    if (v5)
    {
      [v5 currentTime];
    }

    else
    {
      v10 = 0uLL;
      v11 = 0;
    }

    [v4 notifyPlaybackDidStopAtTime:&v10];

    v7 = [v3 playbackDelegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [v3 playbackDelegate];
      [v9 playbackReadyForDisplayChanged:*(a1 + 32) isReady:1 setPlaceHolder:1];
    }
  }
}

void __76__JFXCompositionPlayer_handleUpdateCompositionCompleted_wasCancelled_error___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v10 = *MEMORY[0x277CC08F0];
    v11 = *(MEMORY[0x277CC08F0] + 16);
    [WeakRetained setCachedCurrentTimeForCompositionUpdate:&v10];
    v4 = [*(a1 + 32) composition];
    v5 = [*(a1 + 32) player];
    v6 = v5;
    if (v5)
    {
      [v5 currentTime];
    }

    else
    {
      v10 = 0uLL;
      v11 = 0;
    }

    [v4 notifyPlaybackDidStopAtTime:&v10];

    v7 = [v3 playbackDelegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [v3 playbackDelegate];
      [v9 playbackReadyForDisplayChanged:*(a1 + 32) isReady:1 setPlaceHolder:1];
    }
  }
}

- (BOOL)updateCompositionForClip:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(JFXCompositionPlayer *)self isRequestOfTypeQueued:1];
  if (v8)
  {
    [(JFXCompositionPlayer *)self throttleRequestWithCompletionBlock:v7 ofType:5];
  }

  else
  {
    [(JFXCompositionPlayer *)self cancelQueuedCompositionUpdateRequestFromClip:v6];
    objc_initWeak(&location, self);
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __60__JFXCompositionPlayer_updateCompositionForClip_completion___block_invoke;
    v17 = &unk_278D7C3B0;
    objc_copyWeak(&v20, &location);
    v18 = self;
    v9 = v6;
    v19 = v9;
    v10 = MEMORY[0x245D22230](&v14);
    v11 = [JFXCompositionPlayableElementUpdateRequest alloc];
    v12 = [(JFXCompositionPlayableElementUpdateRequest *)v11 initWithBlock:v10 withClip:v9, v14, v15, v16, v17, v18];
    [(JFXCompositionPlayerRequest *)v12 setPlayer:self];
    [(JFXCompositionPlayerRequest *)v12 setCompletionBlock:v7];
    [(JFXCompositionPlayer *)self enqueueRequest:v12];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return !v8;
}

void __60__JFXCompositionPlayer_updateCompositionForClip_completion___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = [*(a1 + 32) composition];
    if (v4 && (v5 = v4, [*(a1 + 32) player], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
    {
      [WeakRetained doClipCompositionUpdate:*(a1 + 40)];
    }

    else
    {
      [WeakRetained completeRequest:v7 success:0 wasCancelled:1 error:0];
      [*(a1 + 32) updateComposition:0];
    }
  }
}

- (void)doClipCompositionUpdate:(id)a3
{
  v4 = a3;
  v5 = [(JFXCompositionPlayer *)self composition];
  [v5 noteEffectChangeForClip:v4];

  v6 = [(JFXCompositionPlayer *)self player];
  v7 = [v6 currentItem];
  v8 = [v7 customVideoCompositor];

  v9 = [v8 refreshCompletionBlock];

  if (!v9)
  {
    objc_initWeak(&v14, self);
    v10 = dispatch_time(0, 30000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__JFXCompositionPlayer_doClipCompositionUpdate___block_invoke;
    block[3] = &unk_278D7B1C8;
    objc_copyWeak(&v18, &v14);
    dispatch_after(v10, MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&v14);
  }

  v11 = [(JFXCompositionPlayer *)self player];
  v12 = v11;
  if (v11)
  {
    [v11 currentTime];
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  v13 = [(JFXCompositionPlayer *)self player:v14];
  [v13 rate];
  [v8 signalScheduling:&v14 playerRate:?];
}

void __48__JFXCompositionPlayer_doClipCompositionUpdate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleUpdateCompositionForClipCompleted:1];
}

- (void)handleUpdateCompositionForClipCompleted:(BOOL)a3
{
  v3 = a3;
  v5 = [(JFXCompositionPlayer *)self pendingRequest];
  v6 = [v5 type];

  if (v6 == 5)
  {

    [(JFXCompositionPlayer *)self completePendingRequest:v3 wasCancelled:0 error:0];
  }
}

- (void)configureCompositorCompletionBlock
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(JFXCompositionPlayer *)self player];
  v4 = [v3 currentItem];
  v5 = [v4 customVideoCompositor];

  objc_initWeak(&location, self);
  v6 = [v5 refreshCompletionBlock];
  LOBYTE(v3) = v6 == 0;

  if (v3)
  {
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __58__JFXCompositionPlayer_configureCompositorCompletionBlock__block_invoke;
    v12 = &unk_278D7C400;
    objc_copyWeak(&v13, &location);
    [v5 setRefreshCompletionBlock:&v9];
    v7 = JFXLog_DebugPlayback();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(JFXCompositionPlayer *)self displayName:v9];
      *buf = 138543362;
      v16 = v8;
      _os_log_impl(&dword_242A3B000, v7, OS_LOG_TYPE_DEFAULT, "player %{public}@ Installed compositor refresh completion block", buf, 0xCu);
    }

    objc_destroyWeak(&v13);
  }

  objc_destroyWeak(&location);
}

void __58__JFXCompositionPlayer_configureCompositorCompletionBlock__block_invoke(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __58__JFXCompositionPlayer_configureCompositorCompletionBlock__block_invoke_2;
  v3[3] = &unk_278D7C3D8;
  objc_copyWeak(&v4, (a1 + 32));
  v5 = a2;
  dispatch_async(MEMORY[0x277D85CD0], v3);
  objc_destroyWeak(&v4);
}

void __58__JFXCompositionPlayer_configureCompositorCompletionBlock__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleCompositionRefreshCompleted:*(a1 + 40)];
}

- (void)handleCompositionRefreshCompleted:(BOOL)a3
{
  v3 = a3;
  v5 = [(JFXCompositionPlayer *)self pendingRequest];
  v6 = [v5 type];

  if (v6 == 1)
  {
    v7 = [(JFXCompositionPlayer *)self pendingRequest];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v9 = [(JFXCompositionPlayer *)self pendingRequest];
      [v9 setRefreshCompletedReceived];
      if ([v9 hasCompleted])
      {
        [(JFXCompositionPlayer *)self handleUpdateCompositionCompleted:1 wasCancelled:0 error:0];
      }
    }
  }

  else
  {

    [(JFXCompositionPlayer *)self handleUpdateCompositionForClipCompleted:v3];
  }
}

- (void)handleClipCompositionUpdateTimedOut
{
  v2 = [(JFXCompositionPlayer *)self player];
  v3 = [v2 currentItem];
  v4 = [v3 customVideoCompositor];

  v5 = [v4 refreshCompletionBlock];

  v6 = JFXLog_playback();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (v5)
  {
    if (v7)
    {
      [(JFXCompositionPlayer *)v6 handleClipCompositionUpdateTimedOut:v8];
    }
  }

  else if (v7)
  {
    [(JFXCompositionPlayer *)v6 handleClipCompositionUpdateTimedOut:v8];
  }

  [v4 setCancelsPendingRequests:1];
}

- (void)removeCompositorCompletionBlock
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(JFXCompositionPlayer *)self player];
  v4 = [v3 currentItem];
  v5 = [v4 customVideoCompositor];

  v6 = [v5 refreshCompletionBlock];

  if (v6)
  {
    [v5 setRefreshCompletionBlock:0];
    v7 = JFXLog_DebugPlayback();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(JFXCompositionPlayer *)self displayName];
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&dword_242A3B000, v7, OS_LOG_TYPE_DEFAULT, "Player %{public}@ removed compositor refresh completion block", &v9, 0xCu);
    }
  }
}

- (void)doPlay
{
  [(JFXCompositionPlayer *)self removeCompositorCompletionBlock];
  v3 = [(JFXCompositionPlayer *)self player];
  [v3 play];

  v4 = [(JFXCompositionPlayer *)self composition];
  [v4 notifyPlaybackWillBegin];
}

- (void)doPause
{
  v2 = [(JFXCompositionPlayer *)self player];
  [v2 pause];
}

- (BOOL)isPlaying
{
  v2 = [(JFXCompositionPlayer *)self player];
  v3 = [v2 timeControlStatus] == 2;

  return v3;
}

- (void)doMuteAudio:(BOOL)a3
{
  v3 = a3;
  v4 = [(JFXCompositionPlayer *)self player];
  [v4 setMuted:v3];
}

- (BOOL)isAudioMuted
{
  v2 = [(JFXCompositionPlayer *)self player];
  v3 = [v2 isMuted];

  return v3;
}

- (CGSize)renderSize
{
  v3 = [(JFXCompositionPlayer *)self composition];
  if (v3 && (v4 = v3, -[JFXCompositionPlayer composition](self, "composition"), v5 = objc_claimAutoreleasedReturnValue(), [v5 videoComposition], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v4, v6))
  {
    v7 = [(JFXCompositionPlayer *)self composition];
    v8 = [v7 videoComposition];
    [v8 renderSize];
    v10 = v9;
    v12 = v11;

    v13 = [(JFXCompositionPlayer *)self composition];
    v14 = [v13 videoComposition];
    [v14 renderScale];
    v16 = v15;

    v17 = v10 * v16;
    v18 = v12 * v16;
  }

  else
  {
    v19 = [(JFXCompositionPlayer *)self playerView];
    [v19 displaySize];
    v21 = v20;
    v23 = v22;
    v17 = *MEMORY[0x277CBF3A8];
    v18 = *(MEMORY[0x277CBF3A8] + 8);

    if (v21 != v17 || v23 != v18)
    {
      v25 = [(JFXCompositionPlayer *)self clipsDataSource];
      [v25 renderSize];
      v27 = v26;
      v29 = v28;

      v30 = [(JFXCompositionPlayer *)self playerView];
      [v30 displaySize];
      v32 = v31;
      v34 = v33;

      v35 = [(JFXCompositionPlayer *)self clipsDataSource];
      [v35 imageScale];
      v37 = v36;

      v38 = v32 * v37 / v27;
      if (v38 >= v34 * v37 / v29)
      {
        v38 = v34 * v37 / v29;
      }

      v39 = 1.0;
      if (v38 <= 1.0)
      {
        v39 = v38;
      }

      v17 = CGSizeIntegral(v27 * v39);
      v18 = v40;
    }
  }

  v41 = v17;
  v42 = v18;
  result.height = v42;
  result.width = v41;
  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentCMTime
{
  v16 = *MEMORY[0x277D85DE8];
  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  v5 = [(JFXCompositionPlayer *)self player];
  v6 = v5;
  if (v5)
  {
    [v5 currentTime];
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
  }

  [(JFXCompositionPlayer *)self cachedCurrentTimeForCompositionUpdate];
  v14 = **&MEMORY[0x277CC08F0];
  result = CMTimeCompare(&time1, &v14);
  if (result)
  {
    v8 = [(JFXCompositionPlayer *)self clipsDataSource];
    v9 = [v8 timeScale];

    time1 = *retstr;
    result = FrameTimeFromCMTime(&time1, v9);
    if (result <= 1)
    {
      v10 = result;
      v11 = JFXLog_DebugPlayback();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = [(JFXCompositionPlayer *)self displayName];
        [(JFXCompositionPlayer *)self cachedCurrentTimeForCompositionUpdate];
        v13 = FrameTimeFromCMTime(&time1, v9);
        LODWORD(time1.value) = 138412802;
        *(&time1.value + 4) = v12;
        LOWORD(time1.flags) = 1024;
        *(&time1.flags + 2) = v13;
        WORD1(time1.epoch) = 1024;
        HIDWORD(time1.epoch) = v10;
        _os_log_debug_impl(&dword_242A3B000, v11, OS_LOG_TYPE_DEBUG, "player %@ using cached current time at %d and player time is %d", &time1, 0x18u);
      }

      result = [(JFXCompositionPlayer *)self cachedCurrentTimeForCompositionUpdate];
      *retstr = time1;
    }
  }

  return result;
}

- (int)currentTime
{
  v15 = *MEMORY[0x277D85DE8];
  memset(&v13, 0, sizeof(v13));
  v3 = [(JFXCompositionPlayer *)self player];
  v4 = v3;
  if (v3)
  {
    [v3 currentTime];
  }

  else
  {
    memset(&v13, 0, sizeof(v13));
  }

  v5 = [(JFXCompositionPlayer *)self clipsDataSource];
  v6 = [v5 timeScale];

  time1 = v13;
  v7 = FrameTimeFromCMTime(&time1, v6);
  [(JFXCompositionPlayer *)self cachedCurrentTimeForCompositionUpdate];
  v12 = **&MEMORY[0x277CC08F0];
  if (CMTimeCompare(&time1, &v12) && v7 <= 1)
  {
    v8 = JFXLog_DebugPlayback();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = [(JFXCompositionPlayer *)self displayName];
      [(JFXCompositionPlayer *)self cachedCurrentTimeForCompositionUpdate];
      v11 = FrameTimeFromCMTime(&time1, v6);
      LODWORD(time1.value) = 138412802;
      *(&time1.value + 4) = v10;
      LOWORD(time1.flags) = 1024;
      *(&time1.flags + 2) = v11;
      WORD1(time1.epoch) = 1024;
      HIDWORD(time1.epoch) = v7;
      _os_log_debug_impl(&dword_242A3B000, v8, OS_LOG_TYPE_DEBUG, "player %@ using cached current time at %d and player time is %d", &time1, 0x18u);
    }

    [(JFXCompositionPlayer *)self cachedCurrentTimeForCompositionUpdate];
    return FrameTimeFromCMTime(&time1, v6);
  }

  return v7;
}

- (int)duration
{
  v3 = [(JFXCompositionPlayer *)self composition];
  v4 = v3;
  if (v3)
  {
    [v3 duration];
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  v5 = [(JFXCompositionPlayer *)self clipsDataSource];
  v6 = FrameTimeFromCMTime(v8, [v5 frameRate]);

  return v6;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a6 != &sJFXCompositionPlayerContext)
  {
    v37.receiver = self;
    v37.super_class = JFXCompositionPlayer;
    [(JFXCompositionPlayer *)&v37 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
    goto LABEL_21;
  }

  v13 = [(JFXCompositionPlayer *)self player];
  if (v13)
  {
    v14 = v13;
    v15 = [(JFXCompositionPlayer *)self player];
    v16 = v15;
    if (v15 == v11)
    {
      v17 = [v10 isEqualToString:@"timeControlStatus"];

      if (v17)
      {
        v18 = [v12 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
        v19 = [v12 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
        v20 = v19;
        if (v18 && v19 && ([v18 isEqual:v19] & 1) != 0)
        {
          goto LABEL_20;
        }

        v21 = [(JFXCompositionPlayer *)self player];
        v22 = [v21 timeControlStatus];

        if (v22)
        {
          if (v22 != 2)
          {
            goto LABEL_20;
          }

          objc_initWeak(&location, self);
          v23 = v43;
          v43[0] = MEMORY[0x277D85DD0];
          v43[1] = 3221225472;
          v43[2] = __71__JFXCompositionPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke;
          v43[3] = &unk_278D7B1C8;
          objc_copyWeak(&v44, &location);
          v24 = MEMORY[0x277D85CD0];
          v25 = v43;
        }

        else
        {
          objc_initWeak(&location, self);
          v23 = v41;
          v41[0] = MEMORY[0x277D85DD0];
          v41[1] = 3221225472;
          v41[2] = __71__JFXCompositionPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
          v41[3] = &unk_278D7B1C8;
          objc_copyWeak(&v42, &location);
          v24 = MEMORY[0x277D85CD0];
          v25 = v41;
        }

        dispatch_async(v24, v25);
        objc_destroyWeak(v23 + 4);
        objc_destroyWeak(&location);
        goto LABEL_20;
      }
    }

    else
    {
    }
  }

  v26 = [(JFXCompositionPlayer *)self playerView];
  if (v26)
  {
    v27 = v26;
    v28 = [(JFXCompositionPlayer *)self playerView];
    v29 = v28;
    if (v28 == v11)
    {
      v30 = [v10 isEqualToString:@"readyForDisplay"];

      if (v30)
      {
        v31 = [v12 objectForKey:*MEMORY[0x277CCA2F0]];
        v32 = [v31 BOOLValue];

        objc_initWeak(&location, self);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __71__JFXCompositionPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_3;
        block[3] = &unk_278D7C3D8;
        objc_copyWeak(&v39, &location);
        v40 = v32;
        dispatch_async(MEMORY[0x277D85CD0], block);
        objc_destroyWeak(&v39);
        objc_destroyWeak(&location);
        goto LABEL_21;
      }
    }

    else
    {
    }
  }

  v33 = [(JFXCompositionPlayer *)self player];
  if (!v33)
  {
    goto LABEL_21;
  }

  v18 = v33;
  v20 = [(JFXCompositionPlayer *)self player];
  if (v20 != v11)
  {
LABEL_20:

    goto LABEL_21;
  }

  v34 = [v10 isEqualToString:@"status"];

  if (v34)
  {
    v35 = [(JFXCompositionPlayer *)self player];
    v36 = [v35 error];

    if (v36 && [v36 code] == -11819)
    {
      dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_51);
    }
  }

LABEL_21:
}

void __71__JFXCompositionPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handlePlaybackBegan];
}

void __71__JFXCompositionPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handlePlaybackPaused];
}

void __71__JFXCompositionPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleReadyForDisplay:*(a1 + 40)];
}

void __71__JFXCompositionPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_4()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"mediaserverdCrashed" object:0];
}

- (void)handleReadyForDisplay:(BOOL)a3
{
  v3 = a3;
  if (a3 && (-[JFXCompositionPlayer pendingRequest](self, "pendingRequest"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 type], v5, v6 == 1))
  {
    v7 = [(JFXCompositionPlayer *)self pendingRequest];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      return;
    }

    v9 = [(JFXCompositionPlayer *)self pendingRequest];
    [v9 setReadyForDisplayReceived];
    v10 = [(JFXCompositionPlayer *)self player];
    v11 = [v10 currentItem];
    v12 = [v11 customVideoCompositor];

    v13 = [v12 refreshCompletionBlock];

    if (v13)
    {
      if ([v9 hasCompleted])
      {
        [(JFXCompositionPlayer *)self handleUpdateCompositionCompleted:1 wasCancelled:0 error:0];
      }
    }

    else
    {
      v16 = [(JFXCompositionPlayer *)self player];
      v17 = [v16 timeControlStatus];

      if (v17 == 2)
      {
        v18 = JFXLog_playback();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [(JFXCompositionPlayer *)v18 handleReadyForDisplay:v19, v20, v21, v22, v23, v24, v25];
        }
      }

      objc_initWeak(&v27, self);
      v26 = dispatch_time(0, 30000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __46__JFXCompositionPlayer_handleReadyForDisplay___block_invoke;
      block[3] = &unk_278D7B1C8;
      objc_copyWeak(&v30, &v27);
      dispatch_after(v26, MEMORY[0x277D85CD0], block);
      objc_destroyWeak(&v30);
      objc_destroyWeak(&v27);
    }
  }

  else
  {
    v14 = [(JFXCompositionPlayer *)self playbackDelegate];
    v15 = objc_opt_respondsToSelector();

    if ((v15 & 1) == 0)
    {
      return;
    }

    if (v3)
    {
      v27 = *MEMORY[0x277CC08F0];
      v28 = *(MEMORY[0x277CC08F0] + 16);
      [(JFXCompositionPlayer *)self setCachedCurrentTimeForCompositionUpdate:&v27];
    }

    v9 = [(JFXCompositionPlayer *)self playbackDelegate];
    [v9 playbackReadyForDisplayChanged:self isReady:v3 setPlaceHolder:1];
  }
}

void __46__JFXCompositionPlayer_handleReadyForDisplay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleUpdateCompositionCompleted:1 wasCancelled:0 error:0];
}

- (void)createPlayer
{
  v3 = [(JFXCompositionPlayer *)self player];

  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x277CE6598]);
    v5 = [(JFXCompositionPlayer *)self composition];
    v6 = [v5 playerItem];
    v7 = [v4 initWithPlayerItem:v6];
    [(JFXCompositionPlayer *)self setPlayer:v7];

    v8 = [(JFXCompositionPlayer *)self player];
    [v8 addObserver:self forKeyPath:@"timeControlStatus" options:3 context:&sJFXCompositionPlayerContext];

    v9 = [(JFXCompositionPlayer *)self player];
    [v9 setActionAtItemEnd:1];

    objc_initWeak(&location, self);
    v10 = [(JFXCompositionPlayer *)self player];
    CMTimeMake(&v18, 1, 3);
    v11 = MEMORY[0x277D85CD0];
    v12 = MEMORY[0x277D85CD0];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __36__JFXCompositionPlayer_createPlayer__block_invoke;
    v16[3] = &unk_278D7A0A0;
    objc_copyWeak(&v17, &location);
    v13 = [v10 addPeriodicTimeObserverForInterval:&v18 queue:v11 usingBlock:v16];
    [(JFXCompositionPlayer *)self setPlayerProVideoPeriodicObserver:v13];

    [(JFXCompositionPlayer *)self setupPlaybackTimeChangedObserver];
    v14 = [(JFXCompositionPlayer *)self playerView];
    [v14 addObserver:self forKeyPath:@"readyForDisplay" options:1 context:&sJFXCompositionPlayerContext];

    v15 = [(JFXCompositionPlayer *)self player];
    [v15 addObserver:self forKeyPath:@"status" options:1 context:&sJFXCompositionPlayerContext];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

void __36__JFXCompositionPlayer_createPlayer__block_invoke(uint64_t a1, __int128 *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained player];
  v6 = [v5 currentItem];
  v7 = [v6 customVideoCompositor];
  v8 = objc_loadWeakRetained((a1 + 32));
  v9 = [v8 player];
  [v9 rate];
  v10 = *a2;
  v11 = *(a2 + 2);
  [v7 signalScheduling:&v10 playerRate:?];
}

- (void)setupPlaybackTimeChangedObserver
{
  v3 = [(JFXCompositionPlayer *)self player];

  if (v3)
  {
    v4 = [(JFXCompositionPlayer *)self playerPlaybackTimePeriodicObserver];

    if (v4)
    {
      v5 = [(JFXCompositionPlayer *)self player];
      v6 = [(JFXCompositionPlayer *)self playerPlaybackTimePeriodicObserver];
      [v5 removeTimeObserver:v6];
    }

    v7 = objc_initWeak(&location, self);
    v8 = [(JFXCompositionPlayer *)self clipsDataSource];
    v9 = [v8 frameRate];

    player = self->_player;
    [(JFXCompositionPlayer *)self playbackTimeChangedObserverInterval];
    v11 = MEMORY[0x277D85CD0];
    v12 = MEMORY[0x277D85CD0];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __56__JFXCompositionPlayer_setupPlaybackTimeChangedObserver__block_invoke;
    v17 = &unk_278D7C430;
    v19 = v9;
    objc_copyWeak(&v18, &location);
    v13 = [(AVPlayer *)player addPeriodicTimeObserverForInterval:v20 queue:v11 usingBlock:&v14];
    [(JFXCompositionPlayer *)self setPlayerPlaybackTimePeriodicObserver:v13, v14, v15, v16, v17];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

void __56__JFXCompositionPlayer_setupPlaybackTimeChangedObserver__block_invoke(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 40);
  v13 = *a2;
  v14 = *(a2 + 2);
  v4 = FrameTimeFromCMTime(&v13, v3);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained pendingRequest];
  if ([v6 type] == 1)
  {
    goto LABEL_2;
  }

  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v7 restoringPlayerStateAfterCompositionUpdate];

  if ((v8 & 1) == 0)
  {
    v9 = objc_loadWeakRetained((a1 + 32));
    v10 = [v9 playbackDelegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v6 = [WeakRetained playbackDelegate];
      v12 = objc_loadWeakRetained((a1 + 32));
      [v6 playbackTimeDidChange:v12 currentTime:v4];

LABEL_2:
    }
  }
}

- (void)destroyPlayer
{
  v3 = [(JFXCompositionPlayer *)self player];
  v4 = v3;
  if (v3)
  {
    [v3 currentTime];
  }

  else
  {
    memset(v25, 0, sizeof(v25));
  }

  v5 = [(JFXCompositionPlayer *)self clipsDataSource];
  v6 = FrameTimeFromCMTime(v25, [v5 frameRate]);

  v7 = [(JFXCompositionPlayer *)self player];
  v8 = [v7 timeControlStatus];

  if (v8 == 2)
  {
    v9 = [(JFXCompositionPlayer *)self playbackDelegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(JFXCompositionPlayer *)self playbackDelegate];
      [v11 playbackDidStop:self currentTime:v6];
    }
  }

  v12 = [(JFXCompositionPlayer *)self player];

  if (v12)
  {
    v13 = [(JFXCompositionPlayer *)self playbackDelegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = [(JFXCompositionPlayer *)self playbackDelegate];
      [v15 playerWillBeDestroyed:self];
    }

    v16 = [(JFXCompositionPlayer *)self player];
    [v16 removeObserver:self forKeyPath:@"timeControlStatus" context:&sJFXCompositionPlayerContext];

    v17 = [(JFXCompositionPlayer *)self playerView];
    [v17 removeObserver:self forKeyPath:@"readyForDisplay" context:&sJFXCompositionPlayerContext];

    v18 = [(JFXCompositionPlayer *)self player];
    [v18 removeObserver:self forKeyPath:@"status" context:&sJFXCompositionPlayerContext];

    v19 = [(JFXCompositionPlayer *)self player];
    [v19 replaceCurrentItemWithPlayerItem:0];

    v20 = [(JFXCompositionPlayer *)self player];
    v21 = [(JFXCompositionPlayer *)self playerProVideoPeriodicObserver];
    [v20 removeTimeObserver:v21];

    [(JFXCompositionPlayer *)self setPlayerProVideoPeriodicObserver:0];
    v22 = [(JFXCompositionPlayer *)self player];
    v23 = [(JFXCompositionPlayer *)self playerPlaybackTimePeriodicObserver];
    [v22 removeTimeObserver:v23];

    [(JFXCompositionPlayer *)self setPlayerPlaybackTimePeriodicObserver:0];
    v24 = [(JFXCompositionPlayer *)self playerView];
    [v24 setPlayer:0];
  }

  [(JFXCompositionPlayer *)self setPlayer:0];
}

- (void)warnTooManyLiveCompositors:(id)a3
{
  v4 = a3;
  v5 = JFXLog_playback();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(JFXCompositionPlayer *)v4 warnTooManyLiveCompositors:v5];
  }
}

- (BOOL)JFX_clipDataSourceHasClip:(id)a3
{
  v4 = a3;
  v5 = [(JFXCompositionPlayer *)self clipsDataSource];
  v6 = [v5 count];

  if (v6 < 1)
  {
    v9 = 0;
  }

  else
  {
    v7 = [(JFXCompositionPlayer *)self clipsDataSource];
    v8 = [v7 playableElementAtIndex:0];

    LOBYTE(v7) = [v8 isEqual:v4];
    if (v7)
    {
      v9 = 1;
    }

    else
    {
      v10 = 1;
      do
      {
        v11 = v10;
        if (v6 == v10)
        {
          break;
        }

        v12 = [(JFXCompositionPlayer *)self clipsDataSource];
        v13 = [v12 playableElementAtIndex:v11];

        LODWORD(v12) = [v13 isEqual:v4];
        v10 = v11 + 1;
      }

      while (!v12);
      v9 = v11 < v6;
    }
  }

  return v9;
}

- (JFXCompositionPlayerDelegate)playbackDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackDelegate);

  return WeakRetained;
}

- (void)setWasCurrentTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_wasCurrentTime.epoch = a3->var3;
  *&self->_wasCurrentTime.value = v3;
}

- (void)setCachedCurrentTimeForCompositionUpdate:(id *)a3
{
  v3 = *&a3->var0;
  self->_cachedCurrentTimeForCompositionUpdate.epoch = a3->var3;
  *&self->_cachedCurrentTimeForCompositionUpdate.value = v3;
}

- (void)enqueueRequest:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_242A3B000, a2, OS_LOG_TYPE_DEBUG, "Request %{public}@ queued", &v2, 0xCu);
}

void __70__JFXCompositionPlayer_seek_cancelQueuedRequest_tolerance_completion___block_invoke_cold_1(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_242A3B000, log, OS_LOG_TYPE_ERROR, "player %{public}@ seek request exception %{public}@", buf, 0x16u);
}

- (void)warnTooManyLiveCompositors:(NSObject *)a3 .cold.1(void *a1, void *a2, NSObject *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = [a1 object];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D41B80]];
  v8 = [a1 object];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D41B88]];
  v10 = [a2 displayName];
  v11 = 138412802;
  v12 = v7;
  v13 = 2112;
  v14 = v9;
  v15 = 2112;
  v16 = v10;
  _os_log_debug_impl(&dword_242A3B000, a3, OS_LOG_TYPE_DEBUG, "Warning! Too many compositors alive (%@)! Exceeded max of %@ player %@", &v11, 0x20u);
}

@end