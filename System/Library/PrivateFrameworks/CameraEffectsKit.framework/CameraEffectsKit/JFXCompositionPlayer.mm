@interface JFXCompositionPlayer
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentCMTime;
- (BOOL)JFX_clipDataSourceHasClip:(id)clip;
- (BOOL)isAudioMuted;
- (BOOL)isPlaying;
- (BOOL)isRequestOfTypePendingOrQueued:(unint64_t)queued;
- (BOOL)isRequestOfTypeQueued:(unint64_t)queued;
- (BOOL)pause:(id)pause;
- (BOOL)play:(id)play;
- (BOOL)setAudioMuted:(BOOL)muted completionBlock:(id)block;
- (BOOL)updateComposition:(id)composition;
- (BOOL)updateCompositionForClip:(id)clip completion:(id)completion;
- (CGSize)renderSize;
- (JFXCompositionPlayer)initWithClipsDataSource:(id)source seekPosition:(int)position audioMuted:(BOOL)muted;
- (JFXCompositionPlayerDelegate)playbackDelegate;
- (id)firstQueuedRequestOfType:(unint64_t)type;
- (id)removeAllRequests;
- (id)removeRequestOfType:(unint64_t)type;
- (id)requestWithBlock:(id)block ofType:(unint64_t)type completion:(id)completion;
- (int)currentTime;
- (int)duration;
- (void)appendRequests:(id)requests;
- (void)cancelQueuedCompositionUpdateRequestFromClip:(id)clip;
- (void)cancelQueuedRequestOfType:(unint64_t)type;
- (void)checkPendingRequestForTimeOut;
- (void)clearQueuedRequests;
- (void)completePendingRequest:(BOOL)request wasCancelled:(BOOL)cancelled error:(id)error;
- (void)completeRequest:(id)request success:(BOOL)success wasCancelled:(BOOL)cancelled error:(id)error;
- (void)configureCompositorCompletionBlock;
- (void)createPlayer;
- (void)dealloc;
- (void)destroyPlayer;
- (void)dispatchBlockWhenDone:(id)done;
- (void)doClipCompositionUpdate:(id)update;
- (void)doMuteAudio:(BOOL)audio;
- (void)doPause;
- (void)doPlay;
- (void)doUpdateComposition;
- (void)enqueueRequest:(id)request;
- (void)executeNextRequest;
- (void)executeRequestCompletionBlock:(id)block success:(BOOL)success wasCancelled:(BOOL)cancelled error:(id)error;
- (void)handleChangeAudioMutedCompleted;
- (void)handleClipCompositionUpdateTimedOut;
- (void)handleCompositionRefreshCompleted:(BOOL)completed;
- (void)handlePlaybackBegan;
- (void)handlePlaybackPaused;
- (void)handleReadyForDisplay:(BOOL)display;
- (void)handleSeekCompleted:(BOOL)completed;
- (void)handleUpdateCompositionCompleted:(BOOL)completed wasCancelled:(BOOL)cancelled error:(id)error;
- (void)handleUpdateCompositionForClipCompleted:(BOOL)completed;
- (void)notifyPlayerViewSizeChanged;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeCompositorCompletionBlock;
- (void)resetPlaybackTimeChangedObserverInterval;
- (void)seek:(int)seek cancelQueuedRequest:(BOOL)request tolerance:(int)tolerance completion:(id)completion;
- (void)setCachedCurrentTimeForCompositionUpdate:(id *)update;
- (void)setPlaybackTimeChangedObserverInterval:(id *)interval;
- (void)setPlayerView:(id)view completionBlock:(id)block;
- (void)setWasCurrentTime:(id *)time;
- (void)setupPlaybackTimeChangedObserver;
- (void)teardownSetPlaceHolder:(BOOL)holder;
- (void)throttleRequestWithCompletionBlock:(id)block ofType:(unint64_t)type;
- (void)warnTooManyLiveCompositors:(id)compositors;
@end

@implementation JFXCompositionPlayer

- (JFXCompositionPlayer)initWithClipsDataSource:(id)source seekPosition:(int)position audioMuted:(BOOL)muted
{
  sourceCopy = source;
  v18.receiver = self;
  v18.super_class = JFXCompositionPlayer;
  v10 = [(JFXCompositionPlayer *)&v18 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_clipsDataSource, source);
    v11->_playbackTimeChangedObserverInterval.epoch = 0;
    *&v11->_playbackTimeChangedObserverInterval.value = kDefaultPlaybackTimeObserverInterval;
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    requestQueue = v11->_requestQueue;
    v11->_requestQueue = v12;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v11 selector:sel_warnTooManyLiveCompositors_ name:*MEMORY[0x277D41B78] object:0];

    CMTimeFromFrameTime(position, [(JFXCompositionPlayableElementsDataSource *)v11->_clipsDataSource frameRate], &v17);
    v11->_wasCurrentTime = v17;
    v15 = MEMORY[0x277CC08F0];
    *&v11->_cachedCurrentTimeForCompositionUpdate.value = *MEMORY[0x277CC08F0];
    v11->_cachedCurrentTimeForCompositionUpdate.epoch = *(v15 + 16);
    v11->_wasAudioMuted = muted;
    v11->_wasPlaying = 0;
    v11->_parentCode = -1;
  }

  return v11;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(JFXCompositionPlayer *)self teardownSetPlaceHolder:0];
  v4.receiver = self;
  v4.super_class = JFXCompositionPlayer;
  [(JFXCompositionPlayer *)&v4 dealloc];
}

- (void)teardownSetPlaceHolder:(BOOL)holder
{
  holderCopy = holder;
  v15 = *MEMORY[0x277D85DE8];
  v5 = JFXLog_DebugPlayback();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    displayName = [(JFXCompositionPlayer *)self displayName];
    v13 = 138543362;
    v14 = displayName;
    _os_log_impl(&dword_242A3B000, v5, OS_LOG_TYPE_DEFAULT, "Player %{public}@ Tear Down", &v13, 0xCu);
  }

  playbackDelegate = [(JFXCompositionPlayer *)self playbackDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    playbackDelegate2 = [(JFXCompositionPlayer *)self playbackDelegate];
    [playbackDelegate2 playbackReadyForDisplayChanged:self isReady:0 setPlaceHolder:holderCopy];
  }

  [(JFXCompositionPlayer *)self clearQueuedRequests];
  pendingRequest = [(JFXCompositionPlayer *)self pendingRequest];

  if (pendingRequest)
  {
    pendingRequest2 = [(JFXCompositionPlayer *)self pendingRequest];
    [(JFXCompositionPlayer *)self executeRequestCompletionBlock:pendingRequest2 success:0 wasCancelled:1 error:0];

    [(JFXCompositionPlayer *)self setPendingRequest:0];
  }

  [(JFXCompositionPlayer *)self destroyPlayer];
  playerView = [(JFXCompositionPlayer *)self playerView];
  [playerView setPlayer:0];
}

- (id)requestWithBlock:(id)block ofType:(unint64_t)type completion:(id)completion
{
  completionCopy = completion;
  blockCopy = block;
  v10 = [[JFXCompositionPlayerRequest alloc] initWithBlock:blockCopy ofType:type];

  [(JFXCompositionPlayerRequest *)v10 setPlayer:self];
  [(JFXCompositionPlayerRequest *)v10 setCompletionBlock:completionCopy];

  return v10;
}

- (BOOL)isRequestOfTypePendingOrQueued:(unint64_t)queued
{
  pendingRequest = [(JFXCompositionPlayer *)self pendingRequest];
  type = [pendingRequest type];

  if (type == queued)
  {
    return 1;
  }

  return [(JFXCompositionPlayer *)self isRequestOfTypeQueued:queued];
}

- (id)firstQueuedRequestOfType:(unint64_t)type
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  requestQueue = [(JFXCompositionPlayer *)self requestQueue];
  v5 = [requestQueue countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(requestQueue);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 type] == type)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [requestQueue countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  pendingRequest = [self pendingRequest];
  v6 = 138543618;
  v7 = pendingRequest;
  v8 = 2048;
  v9 = a3;
  _os_log_error_impl(&dword_242A3B000, a2, OS_LOG_TYPE_ERROR, "Request %{public}@ Timed Out because it had not completed executing in %f sec", &v6, 0x16u);
}

- (id)removeRequestOfType:(unint64_t)type
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  requestQueue = [(JFXCompositionPlayer *)self requestQueue];
  v7 = [requestQueue countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(requestQueue);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 type] == type)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [requestQueue countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    requestQueue2 = [(JFXCompositionPlayer *)self requestQueue];
    [requestQueue2 removeObjectsInArray:v5];
  }

  return v5;
}

- (id)removeAllRequests
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  requestQueue = [(JFXCompositionPlayer *)self requestQueue];
  v5 = [requestQueue count];

  if (v5)
  {
    requestQueue2 = [(JFXCompositionPlayer *)self requestQueue];
    [v3 addObjectsFromArray:requestQueue2];

    requestQueue3 = [(JFXCompositionPlayer *)self requestQueue];
    [requestQueue3 removeAllObjects];
  }

  return v3;
}

- (void)appendRequests:(id)requests
{
  requestsCopy = requests;
  if ([requestsCopy count])
  {
    requestQueue = [(JFXCompositionPlayer *)self requestQueue];
    [requestQueue addObjectsFromArray:requestsCopy];
  }
}

- (BOOL)isRequestOfTypeQueued:(unint64_t)queued
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  requestQueue = [(JFXCompositionPlayer *)self requestQueue];
  v5 = [requestQueue countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(requestQueue);
        }

        if ([*(*(&v11 + 1) + 8 * i) type] == queued)
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [requestQueue countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  requestQueue = [(JFXCompositionPlayer *)self requestQueue];
  v4 = [requestQueue countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(requestQueue);
        }

        [(JFXCompositionPlayer *)self executeRequestCompletionBlock:*(*(&v9 + 1) + 8 * v7++) success:0 wasCancelled:1 error:0];
      }

      while (v5 != v7);
      v5 = [requestQueue countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  requestQueue2 = [(JFXCompositionPlayer *)self requestQueue];
  [requestQueue2 removeAllObjects];
}

- (void)cancelQueuedRequestOfType:(unint64_t)type
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  requestQueue = [(JFXCompositionPlayer *)self requestQueue];
  v6 = [requestQueue countByEnumeratingWithState:&v13 objects:v17 count:16];
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
        objc_enumerationMutation(requestQueue);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      if ([v10 type] == type)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [requestQueue countByEnumeratingWithState:&v13 objects:v17 count:16];
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
    requestQueue2 = [(JFXCompositionPlayer *)self requestQueue];
    [requestQueue2 removeObjectIdenticalTo:v11];

    requestQueue = v11;
  }

LABEL_12:
}

- (void)cancelQueuedCompositionUpdateRequestFromClip:(id)clip
{
  v21 = *MEMORY[0x277D85DE8];
  clipCopy = clip;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  requestQueue = [(JFXCompositionPlayer *)self requestQueue];
  v6 = [requestQueue countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v6)
  {
LABEL_11:
    v11 = requestQueue;
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
      objc_enumerationMutation(requestQueue);
    }

    v10 = *(*(&v16 + 1) + 8 * v9);
    if ([v10 type] != 5)
    {
      goto LABEL_9;
    }

    v11 = v10;
    clipUUID = [v11 clipUUID];
    uuid = [clipCopy uuid];
    v14 = [clipUUID isEqualToString:uuid];

    if (v14)
    {
      break;
    }

LABEL_9:
    if (v7 == ++v9)
    {
      v7 = [requestQueue countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  requestQueue2 = [(JFXCompositionPlayer *)self requestQueue];
  [requestQueue2 removeObjectIdenticalTo:v11];

LABEL_14:
LABEL_15:
}

- (void)enqueueRequest:(id)request
{
  requestCopy = request;
  requestQueue = [(JFXCompositionPlayer *)self requestQueue];
  [requestQueue addObject:requestCopy];

  [requestCopy didEnqueue];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  [requestCopy setStartTime:?];
  v6 = JFXLog_DebugPlayback();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);

  if (v7)
  {
    v8 = JFXLog_DebugPlayback();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(JFXCompositionPlayer *)requestCopy enqueueRequest:v8];
    }
  }

  pendingRequest = [(JFXCompositionPlayer *)self pendingRequest];
  if (pendingRequest)
  {
  }

  else
  {
    requestQueue2 = [(JFXCompositionPlayer *)self requestQueue];
    v11 = [requestQueue2 count];

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

- (void)completePendingRequest:(BOOL)request wasCancelled:(BOOL)cancelled error:(id)error
{
  cancelledCopy = cancelled;
  requestCopy = request;
  errorCopy = error;
  pendingRequest = [(JFXCompositionPlayer *)self pendingRequest];
  [(JFXCompositionPlayer *)self executeRequestCompletionBlock:pendingRequest success:requestCopy wasCancelled:cancelledCopy error:errorCopy];

  [(JFXCompositionPlayer *)self executeNextRequest];
}

- (void)completeRequest:(id)request success:(BOOL)success wasCancelled:(BOOL)cancelled error:(id)error
{
  requestCopy = request;
  errorCopy = error;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __67__JFXCompositionPlayer_completeRequest_success_wasCancelled_error___block_invoke;
  v14[3] = &unk_278D7C270;
  v14[4] = self;
  v15 = requestCopy;
  successCopy = success;
  cancelledCopy = cancelled;
  v16 = errorCopy;
  v12 = errorCopy;
  v13 = requestCopy;
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

- (void)executeRequestCompletionBlock:(id)block success:(BOOL)success wasCancelled:(BOOL)cancelled error:(id)error
{
  cancelledCopy = cancelled;
  v32 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  errorCopy = error;
  v12 = JFXLog_DebugPlayback();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);

  if (cancelledCopy)
  {
    if (v13)
    {
      v14 = JFXLog_DebugPlayback();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v29 = blockCopy;
        _os_log_impl(&dword_242A3B000, v14, OS_LOG_TYPE_DEFAULT, "Request %{public}@ was throttled", buf, 0xCu);
      }
    }

    [blockCopy didCancel];
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
        pendingRequest = [(JFXCompositionPlayer *)self pendingRequest];
        [pendingRequest startTime];
        *buf = 138543618;
        v29 = blockCopy;
        v30 = 2048;
        v31 = v17 - v19;
        _os_log_impl(&dword_242A3B000, v15, OS_LOG_TYPE_DEFAULT, "Request %{public}@ completed in %f sec", buf, 0x16u);
      }
    }

    [blockCopy didComplete];
  }

  completionBlock = [blockCopy completionBlock];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__JFXCompositionPlayer_executeRequestCompletionBlock_success_wasCancelled_error___block_invoke;
  block[3] = &unk_278D7C298;
  successCopy = success;
  v27 = cancelledCopy;
  v24 = errorCopy;
  v25 = completionBlock;
  v21 = errorCopy;
  v22 = completionBlock;
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

- (void)throttleRequestWithCompletionBlock:(id)block ofType:(unint64_t)type
{
  v17 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v7 = JFXLog_DebugPlayback();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [JFXCompositionPlayerRequest stringFromRequestType:type];
    displayName = [(JFXCompositionPlayer *)self displayName];
    *buf = 138543618;
    v14 = v8;
    v15 = 2114;
    v16 = displayName;
    _os_log_impl(&dword_242A3B000, v7, OS_LOG_TYPE_DEFAULT, "Request type %{public}@ for player %{public}@ throttled because already pending", buf, 0x16u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__JFXCompositionPlayer_throttleRequestWithCompletionBlock_ofType___block_invoke;
  block[3] = &unk_278D7A168;
  v12 = blockCopy;
  v10 = blockCopy;
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

- (void)dispatchBlockWhenDone:(id)done
{
  doneCopy = done;
  objc_initWeak(&location, self);
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __46__JFXCompositionPlayer_dispatchBlockWhenDone___block_invoke;
  v9 = &unk_278D7C2C0;
  objc_copyWeak(&v10, &location);
  v5 = [(JFXCompositionPlayer *)self requestWithBlock:&v6 ofType:6 completion:doneCopy];
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

- (BOOL)play:(id)play
{
  playCopy = play;
  v5 = [(JFXCompositionPlayer *)self isRequestOfTypePendingOrQueued:2];
  if (v5)
  {
    [(JFXCompositionPlayer *)self throttleRequestWithCompletionBlock:playCopy ofType:2];
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
    v7 = [(JFXCompositionPlayer *)self requestWithBlock:v6 ofType:2 completion:playCopy, v9, v10, v11, v12];
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

- (void)setPlaybackTimeChangedObserverInterval:(id *)interval
{
  if (interval->var2)
  {
    time1 = *interval;
    v6 = **&MEMORY[0x277CC08F0];
    if (CMTimeCompare(&time1, &v6))
    {
      v5 = *&interval->var0;
      self->_playbackTimeChangedObserverInterval.epoch = interval->var3;
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
  pendingRequest = [(JFXCompositionPlayer *)self pendingRequest];
  type = [pendingRequest type];

  if (type == 2)
  {
    [(JFXCompositionPlayer *)self completePendingRequest:1 wasCancelled:0 error:0];
  }

  playbackDelegate = [(JFXCompositionPlayer *)self playbackDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    playbackDelegate2 = [(JFXCompositionPlayer *)self playbackDelegate];
    [playbackDelegate2 playbackDidStart:self];
  }
}

- (BOOL)pause:(id)pause
{
  pauseCopy = pause;
  v5 = [(JFXCompositionPlayer *)self isRequestOfTypePendingOrQueued:3];
  if (v5)
  {
    [(JFXCompositionPlayer *)self throttleRequestWithCompletionBlock:pauseCopy ofType:3];
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
    v7 = [(JFXCompositionPlayer *)self requestWithBlock:v6 ofType:3 completion:pauseCopy, v9, v10, v11, v12];
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
  pendingRequest = [(JFXCompositionPlayer *)self pendingRequest];
  type = [pendingRequest type];

  if (type == 3)
  {
    [(JFXCompositionPlayer *)self completePendingRequest:1 wasCancelled:0 error:0];
  }

  v18 = 0uLL;
  v19 = 0;
  player = [(JFXCompositionPlayer *)self player];
  v6 = player;
  if (player)
  {
    [player currentTime];
  }

  else
  {
    v18 = 0uLL;
    v19 = 0;
  }

  clipsDataSource = [(JFXCompositionPlayer *)self clipsDataSource];
  frameRate = [clipsDataSource frameRate];
  v16 = v18;
  v17 = v19;
  v9 = FrameTimeFromCMTime(&v16, frameRate);

  player2 = [(JFXCompositionPlayer *)self player];
  currentItem = [player2 currentItem];
  customVideoCompositor = [currentItem customVideoCompositor];
  v16 = v18;
  v17 = v19;
  [customVideoCompositor signalScheduling:&v16 playerRate:0.0];

  playbackDelegate = [(JFXCompositionPlayer *)self playbackDelegate];
  LOBYTE(currentItem) = objc_opt_respondsToSelector();

  if (currentItem)
  {
    playbackDelegate2 = [(JFXCompositionPlayer *)self playbackDelegate];
    [playbackDelegate2 playbackDidStop:self currentTime:v9];
  }

  composition = [(JFXCompositionPlayer *)self composition];
  v16 = v18;
  v17 = v19;
  [composition notifyPlaybackDidStopAtTime:&v16];
}

- (void)seek:(int)seek cancelQueuedRequest:(BOOL)request tolerance:(int)tolerance completion:(id)completion
{
  requestCopy = request;
  v8 = *&seek;
  completionCopy = completion;
  if (requestCopy)
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
  toleranceCopy = tolerance;
  selfCopy = self;
  v11 = MEMORY[0x245D22230](&v14);
  v12 = [JFXCompositionSeekRequest alloc];
  v13 = [(JFXCompositionSeekRequest *)v12 initWithBlock:v11 withSeekTime:v8, v14, v15, v16, v17];
  [(JFXCompositionPlayerRequest *)v13 setPlayer:self];
  [(JFXCompositionPlayerRequest *)v13 setCompletionBlock:completionCopy];
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

- (void)handleSeekCompleted:(BOOL)completed
{
  completedCopy = completed;
  pendingRequest = [(JFXCompositionPlayer *)self pendingRequest];
  type = [pendingRequest type];

  if (type == 4)
  {

    [(JFXCompositionPlayer *)self completePendingRequest:completedCopy wasCancelled:0 error:0];
  }
}

- (BOOL)setAudioMuted:(BOOL)muted completionBlock:(id)block
{
  blockCopy = block;
  [(JFXCompositionPlayer *)self cancelQueuedRequestOfType:7];
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__JFXCompositionPlayer_setAudioMuted_completionBlock___block_invoke;
  v10[3] = &unk_278D7C360;
  objc_copyWeak(&v11, &location);
  mutedCopy = muted;
  v7 = MEMORY[0x245D22230](v10);
  v8 = [(JFXCompositionPlayer *)self requestWithBlock:v7 ofType:7 completion:blockCopy];
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
  pendingRequest = [(JFXCompositionPlayer *)self pendingRequest];
  type = [pendingRequest type];

  if (type == 7)
  {

    [(JFXCompositionPlayer *)self completePendingRequest:1 wasCancelled:0 error:0];
  }
}

- (void)setPlayerView:(id)view completionBlock:(id)block
{
  viewCopy = view;
  p_playerView = &self->_playerView;
  if (self->_playerView != viewCopy)
  {
    v10 = viewCopy;
    objc_storeStrong(p_playerView, view);
    blockCopy = block;
    [(JFXCompositionPlayer *)self updateComposition:blockCopy];

    viewCopy = v10;
  }

  MEMORY[0x2821F96F8](p_playerView, viewCopy);
}

- (void)notifyPlayerViewSizeChanged
{
  playerView = [(JFXCompositionPlayer *)self playerView];
  [playerView displaySize];
  v5 = v4;
  v7 = v6;

  composition = [(JFXCompositionPlayer *)self composition];
  [composition viewSize];
  v10 = v9;
  v12 = v11;

  if ((v5 != v10 || v7 != v12) && (v5 != *MEMORY[0x277CBF3A8] || v7 != *(MEMORY[0x277CBF3A8] + 8)))
  {
    composition2 = [(JFXCompositionPlayer *)self composition];
    [composition2 setViewSize:{v5, v7}];
  }
}

- (BOOL)updateComposition:(id)composition
{
  compositionCopy = composition;
  v5 = [(JFXCompositionPlayer *)self isRequestOfTypeQueued:1];
  if (v5)
  {
    [(JFXCompositionPlayer *)self throttleRequestWithCompletionBlock:compositionCopy ofType:1];
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
    [(JFXCompositionPlayerRequest *)v8 setCompletionBlock:compositionCopy];
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
  clipsDataSource = [(JFXCompositionPlayer *)self clipsDataSource];
  v4 = [clipsDataSource count];

  if (v4 < 1)
  {
LABEL_6:
    playbackDelegate = [(JFXCompositionPlayer *)self playbackDelegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      playbackDelegate2 = [(JFXCompositionPlayer *)self playbackDelegate];
      [playbackDelegate2 playbackReadyForDisplayChanged:self isReady:0 setPlaceHolder:1];
    }

    composition = [(JFXCompositionPlayer *)self composition];

    if (composition)
    {
      player = [(JFXCompositionPlayer *)self player];
      -[JFXCompositionPlayer setWasPlaying:](self, "setWasPlaying:", [player timeControlStatus] == 2);

      player2 = [(JFXCompositionPlayer *)self player];
      v14 = player2;
      if (player2)
      {
        [player2 currentTime];
      }

      else
      {
        memset(&location[2], 0, sizeof(CMTime));
      }

      buf = location[2];
      [(JFXCompositionPlayer *)self setWasCurrentTime:&buf];

      player3 = [(JFXCompositionPlayer *)self player];
      -[JFXCompositionPlayer setWasAudioMuted:](self, "setWasAudioMuted:", [player3 isMuted]);
    }

    else
    {
      v15 = objc_alloc([objc_opt_class() compositionClass]);
      clipsDataSource2 = [(JFXCompositionPlayer *)self clipsDataSource];
      v17 = [v15 initWithClipsDataSource:clipsDataSource2];
      [(JFXCompositionPlayer *)self setComposition:v17];

      if ([(JFXCompositionPlayer *)self parentCode]!= -1)
      {
        parentCode = [(JFXCompositionPlayer *)self parentCode];
        composition2 = [(JFXCompositionPlayer *)self composition];
        [composition2 setParentCode:parentCode];
      }
    }

    [(JFXCompositionPlayer *)self wasCurrentTime];
    buf = location[1];
    [(JFXCompositionPlayer *)self setCachedCurrentTimeForCompositionUpdate:&buf];
    playerView = [(JFXCompositionPlayer *)self playerView];
    [playerView displaySize];
    v26 = v25;
    v28 = v27;

    if (v26 != *MEMORY[0x277CBF3A8] || v28 != *(MEMORY[0x277CBF3A8] + 8))
    {
      composition3 = [(JFXCompositionPlayer *)self composition];
      [composition3 setViewSize:{v26, v28}];
    }

    composition4 = [(JFXCompositionPlayer *)self composition];
    [composition4 markDirty];

    composition5 = [(JFXCompositionPlayer *)self composition];
    playerItem = [composition5 playerItem];

    [(JFXCompositionPlayer *)self createPlayer];
    player4 = [(JFXCompositionPlayer *)self player];
    [player4 replaceCurrentItemWithPlayerItem:playerItem];

    clipsDataSource3 = [(JFXCompositionPlayer *)self clipsDataSource];
    v35 = objc_opt_respondsToSelector();

    if ((v35 & 1) == 0 || (v36 = MEMORY[0x277D415E0], [MEMORY[0x277D75418] currentDevice], v37 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v37, "jfx_displayColorSpace"), v38 = objc_claimAutoreleasedReturnValue(), -[JFXCompositionPlayer clipsDataSource](self, "clipsDataSource"), v39 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v39, "colorSpace"), v40 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v36, "jfx_compareAndChooseLesserColorSpace:right:", v38, v40), rec709GammaColorSpace = objc_claimAutoreleasedReturnValue(), v40, v39, v38, v37, !rec709GammaColorSpace))
    {
      rec709GammaColorSpace = [MEMORY[0x277D415E0] rec709GammaColorSpace];
    }

    playerView2 = [(JFXCompositionPlayer *)self playerView];
    [playerView2 configureDisplayAttributesForColorSpace:rec709GammaColorSpace];

    clipsDataSource4 = [(JFXCompositionPlayer *)self clipsDataSource];
    v44 = objc_opt_respondsToSelector();

    if (v44)
    {
      clipsDataSource5 = [(JFXCompositionPlayer *)self clipsDataSource];
      playerAllowsExternalPlayback = [clipsDataSource5 playerAllowsExternalPlayback];
      player5 = [(JFXCompositionPlayer *)self player];
      [player5 setAllowsExternalPlayback:playerAllowsExternalPlayback];
    }

    player6 = [(JFXCompositionPlayer *)self player];
    playerView3 = [(JFXCompositionPlayer *)self playerView];
    [playerView3 setPlayer:player6];

    composition6 = [(JFXCompositionPlayer *)self composition];
    [composition6 applyPlayerItemProperties];

    customVideoCompositor = [playerItem customVideoCompositor];
    [customVideoCompositor setCancelsPendingRequests:0];
    [(JFXCompositionPlayer *)self configureCompositorCompletionBlock];
    memset(&buf, 0, sizeof(buf));
    composition7 = [(JFXCompositionPlayer *)self composition];
    v53 = composition7;
    if (composition7)
    {
      [composition7 duration];
    }

    else
    {
      memset(&buf, 0, sizeof(buf));
    }

    composition8 = [(JFXCompositionPlayer *)self composition];
    v55 = composition8;
    if (composition8 && (buf.flags & 1) != 0)
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
    clipsDataSource6 = [(JFXCompositionPlayer *)self clipsDataSource];
    v7 = [clipsDataSource6 playableElementAtIndex:v5];

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
    displayName = [(JFXCompositionPlayer *)self displayName];
    LODWORD(buf.value) = 138543618;
    *(&buf.value + 4) = displayName;
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

- (void)handleUpdateCompositionCompleted:(BOOL)completed wasCancelled:(BOOL)cancelled error:(id)error
{
  cancelledCopy = cancelled;
  completedCopy = completed;
  v38 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v9 = JFXLog_DebugPlayback();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    displayName = [(JFXCompositionPlayer *)self displayName];
    LODWORD(buf.value) = 138543362;
    *(&buf.value + 4) = displayName;
    _os_log_impl(&dword_242A3B000, v9, OS_LOG_TYPE_DEFAULT, "player %{public}@ composition update completed", &buf, 0xCu);
  }

  pendingRequest = [(JFXCompositionPlayer *)self pendingRequest];
  v12 = [pendingRequest type] == 1;

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
      selfCopy = self;
      [(JFXCompositionPlayer *)self dispatchBlockWhenDone:&v25];
      objc_destroyWeak(&v30);
      objc_destroyWeak(&buf);
    }

    else
    {
      [(JFXCompositionPlayer *)self setRestoringPlayerStateAfterCompositionUpdate:1];
      memset(&buf, 0, sizeof(buf));
      memset(&v36, 0, sizeof(v36));
      composition = [(JFXCompositionPlayer *)self composition];
      v18 = composition;
      if (composition)
      {
        [composition duration];
      }

      else
      {
        memset(&v36, 0, sizeof(v36));
      }

      [(JFXCompositionPlayer *)self wasCurrentTime];
      time2 = v36;
      CMTimeMinimum(&buf, &time1, &time2);
      clipsDataSource = [(JFXCompositionPlayer *)self clipsDataSource];
      CMTimeMake(&time2, 0, [clipsDataSource timeScale]);
      v33 = buf;
      CMTimeMaximum(&time1, &v33, &time2);
      buf = time1;

      clipsDataSource2 = [(JFXCompositionPlayer *)self clipsDataSource];
      timeScale = [clipsDataSource2 timeScale];
      time1 = buf;
      v22 = FrameTimeFromCMTime(&time1, timeScale);

      v23 = [(JFXCompositionPlayer *)self isRequestOfTypePendingOrQueued:3];
      removeAllRequests = [(JFXCompositionPlayer *)self removeAllRequests];
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

      [(JFXCompositionPlayer *)self appendRequests:removeAllRequests];
      objc_destroyWeak(&v32);
      objc_destroyWeak(&time1);
    }

    [(JFXCompositionPlayer *)self appendRequests:v13, v25, v26, v27, v28];
    buf = **&MEMORY[0x277CC08F0];
    [(JFXCompositionPlayer *)self setWasCurrentTime:&buf];
    [(JFXCompositionPlayer *)self setWasPlaying:0];
    [(JFXCompositionPlayer *)self setWasAudioMuted:0];
    [(JFXCompositionPlayer *)self completePendingRequest:completedCopy wasCancelled:cancelledCopy error:errorCopy];
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

- (BOOL)updateCompositionForClip:(id)clip completion:(id)completion
{
  clipCopy = clip;
  completionCopy = completion;
  v8 = [(JFXCompositionPlayer *)self isRequestOfTypeQueued:1];
  if (v8)
  {
    [(JFXCompositionPlayer *)self throttleRequestWithCompletionBlock:completionCopy ofType:5];
  }

  else
  {
    [(JFXCompositionPlayer *)self cancelQueuedCompositionUpdateRequestFromClip:clipCopy];
    objc_initWeak(&location, self);
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __60__JFXCompositionPlayer_updateCompositionForClip_completion___block_invoke;
    v17 = &unk_278D7C3B0;
    objc_copyWeak(&v20, &location);
    selfCopy = self;
    v9 = clipCopy;
    v19 = v9;
    v10 = MEMORY[0x245D22230](&v14);
    v11 = [JFXCompositionPlayableElementUpdateRequest alloc];
    selfCopy = [(JFXCompositionPlayableElementUpdateRequest *)v11 initWithBlock:v10 withClip:v9, v14, v15, v16, v17, selfCopy];
    [(JFXCompositionPlayerRequest *)selfCopy setPlayer:self];
    [(JFXCompositionPlayerRequest *)selfCopy setCompletionBlock:completionCopy];
    [(JFXCompositionPlayer *)self enqueueRequest:selfCopy];

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

- (void)doClipCompositionUpdate:(id)update
{
  updateCopy = update;
  composition = [(JFXCompositionPlayer *)self composition];
  [composition noteEffectChangeForClip:updateCopy];

  player = [(JFXCompositionPlayer *)self player];
  currentItem = [player currentItem];
  customVideoCompositor = [currentItem customVideoCompositor];

  refreshCompletionBlock = [customVideoCompositor refreshCompletionBlock];

  if (!refreshCompletionBlock)
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

  player2 = [(JFXCompositionPlayer *)self player];
  v12 = player2;
  if (player2)
  {
    [player2 currentTime];
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  v13 = [(JFXCompositionPlayer *)self player:v14];
  [v13 rate];
  [customVideoCompositor signalScheduling:&v14 playerRate:?];
}

void __48__JFXCompositionPlayer_doClipCompositionUpdate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleUpdateCompositionForClipCompleted:1];
}

- (void)handleUpdateCompositionForClipCompleted:(BOOL)completed
{
  completedCopy = completed;
  pendingRequest = [(JFXCompositionPlayer *)self pendingRequest];
  type = [pendingRequest type];

  if (type == 5)
  {

    [(JFXCompositionPlayer *)self completePendingRequest:completedCopy wasCancelled:0 error:0];
  }
}

- (void)configureCompositorCompletionBlock
{
  v17 = *MEMORY[0x277D85DE8];
  player = [(JFXCompositionPlayer *)self player];
  currentItem = [player currentItem];
  customVideoCompositor = [currentItem customVideoCompositor];

  objc_initWeak(&location, self);
  refreshCompletionBlock = [customVideoCompositor refreshCompletionBlock];
  LOBYTE(player) = refreshCompletionBlock == 0;

  if (player)
  {
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __58__JFXCompositionPlayer_configureCompositorCompletionBlock__block_invoke;
    v12 = &unk_278D7C400;
    objc_copyWeak(&v13, &location);
    [customVideoCompositor setRefreshCompletionBlock:&v9];
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

- (void)handleCompositionRefreshCompleted:(BOOL)completed
{
  completedCopy = completed;
  pendingRequest = [(JFXCompositionPlayer *)self pendingRequest];
  type = [pendingRequest type];

  if (type == 1)
  {
    pendingRequest2 = [(JFXCompositionPlayer *)self pendingRequest];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      pendingRequest3 = [(JFXCompositionPlayer *)self pendingRequest];
      [pendingRequest3 setRefreshCompletedReceived];
      if ([pendingRequest3 hasCompleted])
      {
        [(JFXCompositionPlayer *)self handleUpdateCompositionCompleted:1 wasCancelled:0 error:0];
      }
    }
  }

  else
  {

    [(JFXCompositionPlayer *)self handleUpdateCompositionForClipCompleted:completedCopy];
  }
}

- (void)handleClipCompositionUpdateTimedOut
{
  player = [(JFXCompositionPlayer *)self player];
  currentItem = [player currentItem];
  customVideoCompositor = [currentItem customVideoCompositor];

  refreshCompletionBlock = [customVideoCompositor refreshCompletionBlock];

  v6 = JFXLog_playback();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (refreshCompletionBlock)
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

  [customVideoCompositor setCancelsPendingRequests:1];
}

- (void)removeCompositorCompletionBlock
{
  v11 = *MEMORY[0x277D85DE8];
  player = [(JFXCompositionPlayer *)self player];
  currentItem = [player currentItem];
  customVideoCompositor = [currentItem customVideoCompositor];

  refreshCompletionBlock = [customVideoCompositor refreshCompletionBlock];

  if (refreshCompletionBlock)
  {
    [customVideoCompositor setRefreshCompletionBlock:0];
    v7 = JFXLog_DebugPlayback();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      displayName = [(JFXCompositionPlayer *)self displayName];
      v9 = 138543362;
      v10 = displayName;
      _os_log_impl(&dword_242A3B000, v7, OS_LOG_TYPE_DEFAULT, "Player %{public}@ removed compositor refresh completion block", &v9, 0xCu);
    }
  }
}

- (void)doPlay
{
  [(JFXCompositionPlayer *)self removeCompositorCompletionBlock];
  player = [(JFXCompositionPlayer *)self player];
  [player play];

  composition = [(JFXCompositionPlayer *)self composition];
  [composition notifyPlaybackWillBegin];
}

- (void)doPause
{
  player = [(JFXCompositionPlayer *)self player];
  [player pause];
}

- (BOOL)isPlaying
{
  player = [(JFXCompositionPlayer *)self player];
  v3 = [player timeControlStatus] == 2;

  return v3;
}

- (void)doMuteAudio:(BOOL)audio
{
  audioCopy = audio;
  player = [(JFXCompositionPlayer *)self player];
  [player setMuted:audioCopy];
}

- (BOOL)isAudioMuted
{
  player = [(JFXCompositionPlayer *)self player];
  isMuted = [player isMuted];

  return isMuted;
}

- (CGSize)renderSize
{
  composition = [(JFXCompositionPlayer *)self composition];
  if (composition && (v4 = composition, -[JFXCompositionPlayer composition](self, "composition"), v5 = objc_claimAutoreleasedReturnValue(), [v5 videoComposition], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v4, v6))
  {
    composition2 = [(JFXCompositionPlayer *)self composition];
    videoComposition = [composition2 videoComposition];
    [videoComposition renderSize];
    v10 = v9;
    v12 = v11;

    composition3 = [(JFXCompositionPlayer *)self composition];
    videoComposition2 = [composition3 videoComposition];
    [videoComposition2 renderScale];
    v16 = v15;

    v17 = v10 * v16;
    v18 = v12 * v16;
  }

  else
  {
    playerView = [(JFXCompositionPlayer *)self playerView];
    [playerView displaySize];
    v21 = v20;
    v23 = v22;
    v17 = *MEMORY[0x277CBF3A8];
    v18 = *(MEMORY[0x277CBF3A8] + 8);

    if (v21 != v17 || v23 != v18)
    {
      clipsDataSource = [(JFXCompositionPlayer *)self clipsDataSource];
      [clipsDataSource renderSize];
      v27 = v26;
      v29 = v28;

      playerView2 = [(JFXCompositionPlayer *)self playerView];
      [playerView2 displaySize];
      v32 = v31;
      v34 = v33;

      clipsDataSource2 = [(JFXCompositionPlayer *)self clipsDataSource];
      [clipsDataSource2 imageScale];
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
  player = [(JFXCompositionPlayer *)self player];
  v6 = player;
  if (player)
  {
    [player currentTime];
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
    clipsDataSource = [(JFXCompositionPlayer *)self clipsDataSource];
    timeScale = [clipsDataSource timeScale];

    time1 = *retstr;
    result = FrameTimeFromCMTime(&time1, timeScale);
    if (result <= 1)
    {
      v10 = result;
      v11 = JFXLog_DebugPlayback();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        displayName = [(JFXCompositionPlayer *)self displayName];
        [(JFXCompositionPlayer *)self cachedCurrentTimeForCompositionUpdate];
        v13 = FrameTimeFromCMTime(&time1, timeScale);
        LODWORD(time1.value) = 138412802;
        *(&time1.value + 4) = displayName;
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
  player = [(JFXCompositionPlayer *)self player];
  v4 = player;
  if (player)
  {
    [player currentTime];
  }

  else
  {
    memset(&v13, 0, sizeof(v13));
  }

  clipsDataSource = [(JFXCompositionPlayer *)self clipsDataSource];
  timeScale = [clipsDataSource timeScale];

  time1 = v13;
  v7 = FrameTimeFromCMTime(&time1, timeScale);
  [(JFXCompositionPlayer *)self cachedCurrentTimeForCompositionUpdate];
  v12 = **&MEMORY[0x277CC08F0];
  if (CMTimeCompare(&time1, &v12) && v7 <= 1)
  {
    v8 = JFXLog_DebugPlayback();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      displayName = [(JFXCompositionPlayer *)self displayName];
      [(JFXCompositionPlayer *)self cachedCurrentTimeForCompositionUpdate];
      v11 = FrameTimeFromCMTime(&time1, timeScale);
      LODWORD(time1.value) = 138412802;
      *(&time1.value + 4) = displayName;
      LOWORD(time1.flags) = 1024;
      *(&time1.flags + 2) = v11;
      WORD1(time1.epoch) = 1024;
      HIDWORD(time1.epoch) = v7;
      _os_log_debug_impl(&dword_242A3B000, v8, OS_LOG_TYPE_DEBUG, "player %@ using cached current time at %d and player time is %d", &time1, 0x18u);
    }

    [(JFXCompositionPlayer *)self cachedCurrentTimeForCompositionUpdate];
    return FrameTimeFromCMTime(&time1, timeScale);
  }

  return v7;
}

- (int)duration
{
  composition = [(JFXCompositionPlayer *)self composition];
  v4 = composition;
  if (composition)
  {
    [composition duration];
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  clipsDataSource = [(JFXCompositionPlayer *)self clipsDataSource];
  v6 = FrameTimeFromCMTime(v8, [clipsDataSource frameRate]);

  return v6;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (context != &sJFXCompositionPlayerContext)
  {
    v37.receiver = self;
    v37.super_class = JFXCompositionPlayer;
    [(JFXCompositionPlayer *)&v37 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
    goto LABEL_21;
  }

  player = [(JFXCompositionPlayer *)self player];
  if (player)
  {
    v14 = player;
    player2 = [(JFXCompositionPlayer *)self player];
    v16 = player2;
    if (player2 == objectCopy)
    {
      v17 = [pathCopy isEqualToString:@"timeControlStatus"];

      if (v17)
      {
        v18 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];
        v19 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
        player5 = v19;
        if (v18 && v19 && ([v18 isEqual:v19] & 1) != 0)
        {
          goto LABEL_20;
        }

        player3 = [(JFXCompositionPlayer *)self player];
        timeControlStatus = [player3 timeControlStatus];

        if (timeControlStatus)
        {
          if (timeControlStatus != 2)
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

  playerView = [(JFXCompositionPlayer *)self playerView];
  if (playerView)
  {
    v27 = playerView;
    playerView2 = [(JFXCompositionPlayer *)self playerView];
    v29 = playerView2;
    if (playerView2 == objectCopy)
    {
      v30 = [pathCopy isEqualToString:@"readyForDisplay"];

      if (v30)
      {
        v31 = [changeCopy objectForKey:*MEMORY[0x277CCA2F0]];
        bOOLValue = [v31 BOOLValue];

        objc_initWeak(&location, self);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __71__JFXCompositionPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_3;
        block[3] = &unk_278D7C3D8;
        objc_copyWeak(&v39, &location);
        v40 = bOOLValue;
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

  player4 = [(JFXCompositionPlayer *)self player];
  if (!player4)
  {
    goto LABEL_21;
  }

  v18 = player4;
  player5 = [(JFXCompositionPlayer *)self player];
  if (player5 != objectCopy)
  {
LABEL_20:

    goto LABEL_21;
  }

  v34 = [pathCopy isEqualToString:@"status"];

  if (v34)
  {
    player6 = [(JFXCompositionPlayer *)self player];
    error = [player6 error];

    if (error && [error code] == -11819)
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

- (void)handleReadyForDisplay:(BOOL)display
{
  displayCopy = display;
  if (display && (-[JFXCompositionPlayer pendingRequest](self, "pendingRequest"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 type], v5, v6 == 1))
  {
    pendingRequest = [(JFXCompositionPlayer *)self pendingRequest];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      return;
    }

    pendingRequest2 = [(JFXCompositionPlayer *)self pendingRequest];
    [pendingRequest2 setReadyForDisplayReceived];
    player = [(JFXCompositionPlayer *)self player];
    currentItem = [player currentItem];
    customVideoCompositor = [currentItem customVideoCompositor];

    refreshCompletionBlock = [customVideoCompositor refreshCompletionBlock];

    if (refreshCompletionBlock)
    {
      if ([pendingRequest2 hasCompleted])
      {
        [(JFXCompositionPlayer *)self handleUpdateCompositionCompleted:1 wasCancelled:0 error:0];
      }
    }

    else
    {
      player2 = [(JFXCompositionPlayer *)self player];
      timeControlStatus = [player2 timeControlStatus];

      if (timeControlStatus == 2)
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
    playbackDelegate = [(JFXCompositionPlayer *)self playbackDelegate];
    v15 = objc_opt_respondsToSelector();

    if ((v15 & 1) == 0)
    {
      return;
    }

    if (displayCopy)
    {
      v27 = *MEMORY[0x277CC08F0];
      v28 = *(MEMORY[0x277CC08F0] + 16);
      [(JFXCompositionPlayer *)self setCachedCurrentTimeForCompositionUpdate:&v27];
    }

    pendingRequest2 = [(JFXCompositionPlayer *)self playbackDelegate];
    [pendingRequest2 playbackReadyForDisplayChanged:self isReady:displayCopy setPlaceHolder:1];
  }
}

void __46__JFXCompositionPlayer_handleReadyForDisplay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleUpdateCompositionCompleted:1 wasCancelled:0 error:0];
}

- (void)createPlayer
{
  player = [(JFXCompositionPlayer *)self player];

  if (!player)
  {
    v4 = objc_alloc(MEMORY[0x277CE6598]);
    composition = [(JFXCompositionPlayer *)self composition];
    playerItem = [composition playerItem];
    v7 = [v4 initWithPlayerItem:playerItem];
    [(JFXCompositionPlayer *)self setPlayer:v7];

    player2 = [(JFXCompositionPlayer *)self player];
    [player2 addObserver:self forKeyPath:@"timeControlStatus" options:3 context:&sJFXCompositionPlayerContext];

    player3 = [(JFXCompositionPlayer *)self player];
    [player3 setActionAtItemEnd:1];

    objc_initWeak(&location, self);
    player4 = [(JFXCompositionPlayer *)self player];
    CMTimeMake(&v18, 1, 3);
    v11 = MEMORY[0x277D85CD0];
    v12 = MEMORY[0x277D85CD0];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __36__JFXCompositionPlayer_createPlayer__block_invoke;
    v16[3] = &unk_278D7A0A0;
    objc_copyWeak(&v17, &location);
    v13 = [player4 addPeriodicTimeObserverForInterval:&v18 queue:v11 usingBlock:v16];
    [(JFXCompositionPlayer *)self setPlayerProVideoPeriodicObserver:v13];

    [(JFXCompositionPlayer *)self setupPlaybackTimeChangedObserver];
    playerView = [(JFXCompositionPlayer *)self playerView];
    [playerView addObserver:self forKeyPath:@"readyForDisplay" options:1 context:&sJFXCompositionPlayerContext];

    player5 = [(JFXCompositionPlayer *)self player];
    [player5 addObserver:self forKeyPath:@"status" options:1 context:&sJFXCompositionPlayerContext];

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
  player = [(JFXCompositionPlayer *)self player];

  if (player)
  {
    playerPlaybackTimePeriodicObserver = [(JFXCompositionPlayer *)self playerPlaybackTimePeriodicObserver];

    if (playerPlaybackTimePeriodicObserver)
    {
      player2 = [(JFXCompositionPlayer *)self player];
      playerPlaybackTimePeriodicObserver2 = [(JFXCompositionPlayer *)self playerPlaybackTimePeriodicObserver];
      [player2 removeTimeObserver:playerPlaybackTimePeriodicObserver2];
    }

    v7 = objc_initWeak(&location, self);
    clipsDataSource = [(JFXCompositionPlayer *)self clipsDataSource];
    frameRate = [clipsDataSource frameRate];

    player = self->_player;
    [(JFXCompositionPlayer *)self playbackTimeChangedObserverInterval];
    v11 = MEMORY[0x277D85CD0];
    v12 = MEMORY[0x277D85CD0];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __56__JFXCompositionPlayer_setupPlaybackTimeChangedObserver__block_invoke;
    v17 = &unk_278D7C430;
    v19 = frameRate;
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
  player = [(JFXCompositionPlayer *)self player];
  v4 = player;
  if (player)
  {
    [player currentTime];
  }

  else
  {
    memset(v25, 0, sizeof(v25));
  }

  clipsDataSource = [(JFXCompositionPlayer *)self clipsDataSource];
  v6 = FrameTimeFromCMTime(v25, [clipsDataSource frameRate]);

  player2 = [(JFXCompositionPlayer *)self player];
  timeControlStatus = [player2 timeControlStatus];

  if (timeControlStatus == 2)
  {
    playbackDelegate = [(JFXCompositionPlayer *)self playbackDelegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      playbackDelegate2 = [(JFXCompositionPlayer *)self playbackDelegate];
      [playbackDelegate2 playbackDidStop:self currentTime:v6];
    }
  }

  player3 = [(JFXCompositionPlayer *)self player];

  if (player3)
  {
    playbackDelegate3 = [(JFXCompositionPlayer *)self playbackDelegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      playbackDelegate4 = [(JFXCompositionPlayer *)self playbackDelegate];
      [playbackDelegate4 playerWillBeDestroyed:self];
    }

    player4 = [(JFXCompositionPlayer *)self player];
    [player4 removeObserver:self forKeyPath:@"timeControlStatus" context:&sJFXCompositionPlayerContext];

    playerView = [(JFXCompositionPlayer *)self playerView];
    [playerView removeObserver:self forKeyPath:@"readyForDisplay" context:&sJFXCompositionPlayerContext];

    player5 = [(JFXCompositionPlayer *)self player];
    [player5 removeObserver:self forKeyPath:@"status" context:&sJFXCompositionPlayerContext];

    player6 = [(JFXCompositionPlayer *)self player];
    [player6 replaceCurrentItemWithPlayerItem:0];

    player7 = [(JFXCompositionPlayer *)self player];
    playerProVideoPeriodicObserver = [(JFXCompositionPlayer *)self playerProVideoPeriodicObserver];
    [player7 removeTimeObserver:playerProVideoPeriodicObserver];

    [(JFXCompositionPlayer *)self setPlayerProVideoPeriodicObserver:0];
    player8 = [(JFXCompositionPlayer *)self player];
    playerPlaybackTimePeriodicObserver = [(JFXCompositionPlayer *)self playerPlaybackTimePeriodicObserver];
    [player8 removeTimeObserver:playerPlaybackTimePeriodicObserver];

    [(JFXCompositionPlayer *)self setPlayerPlaybackTimePeriodicObserver:0];
    playerView2 = [(JFXCompositionPlayer *)self playerView];
    [playerView2 setPlayer:0];
  }

  [(JFXCompositionPlayer *)self setPlayer:0];
}

- (void)warnTooManyLiveCompositors:(id)compositors
{
  compositorsCopy = compositors;
  v5 = JFXLog_playback();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(JFXCompositionPlayer *)compositorsCopy warnTooManyLiveCompositors:v5];
  }
}

- (BOOL)JFX_clipDataSourceHasClip:(id)clip
{
  clipCopy = clip;
  clipsDataSource = [(JFXCompositionPlayer *)self clipsDataSource];
  v6 = [clipsDataSource count];

  if (v6 < 1)
  {
    v9 = 0;
  }

  else
  {
    clipsDataSource2 = [(JFXCompositionPlayer *)self clipsDataSource];
    v8 = [clipsDataSource2 playableElementAtIndex:0];

    LOBYTE(clipsDataSource2) = [v8 isEqual:clipCopy];
    if (clipsDataSource2)
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

        clipsDataSource3 = [(JFXCompositionPlayer *)self clipsDataSource];
        v13 = [clipsDataSource3 playableElementAtIndex:v11];

        LODWORD(clipsDataSource3) = [v13 isEqual:clipCopy];
        v10 = v11 + 1;
      }

      while (!clipsDataSource3);
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

- (void)setWasCurrentTime:(id *)time
{
  v3 = *&time->var0;
  self->_wasCurrentTime.epoch = time->var3;
  *&self->_wasCurrentTime.value = v3;
}

- (void)setCachedCurrentTimeForCompositionUpdate:(id *)update
{
  v3 = *&update->var0;
  self->_cachedCurrentTimeForCompositionUpdate.epoch = update->var3;
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