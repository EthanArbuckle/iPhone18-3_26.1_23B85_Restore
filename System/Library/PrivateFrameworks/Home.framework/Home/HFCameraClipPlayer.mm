@interface HFCameraClipPlayer
- (BOOL)hasFatalError;
- (HFCameraClipPlayer)init;
- (HFCameraClipPlayer)initWithCameraProfile:(id)profile clips:(id)clips;
- (HFCameraClipPlayer)initWithCameraProfile:(id)profile clips:(id)clips queuePlayer:(id)player;
- (HFCameraClipPlayerDelegate)delegate;
- (HFCameraClipPlayerItem)lastPlayerItem;
- (HFCameraClipPosition)currentPosition;
- (HFCameraClipScrubbing)scrubber;
- (NSArray)queuableItems;
- (double)currentTime;
- (id)addPeriodicTimeObserverForInterval:(double)interval usingBlock:(id)block;
- (id)createQueueableItemForClipManager:(id)manager clip:(id)clip;
- (int64_t)timeControlStatus;
- (void)_rebuildPlayerQueueForPosition:(id)position;
- (void)_setupObservationForLastPlayerItem:(id)item;
- (void)_setupPlayerObservation;
- (void)_updateErrorState;
- (void)_updatePlayerActionAtItemEnd;
- (void)dealloc;
- (void)endScrubbingWithOffset:(double)offset;
- (void)insertQueueableItem:(id)item afterItem:(id)afterItem;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pause;
- (void)play;
- (void)playerItemDidPlayToEndTime:(id)time;
- (void)removeQueueableItem:(id)item;
- (void)removeTimeObserver:(id)observer;
- (void)seekToOffset:(double)offset inItem:(id)item;
- (void)setCurrentPosition:(id)position;
- (void)setLastPlayerItem:(id)item;
- (void)setScrubbing:(BOOL)scrubbing;
@end

@implementation HFCameraClipPlayer

- (HFCameraClipPlayer)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithCameraProfile_clips_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFCameraClipPlayer.m" lineNumber:48 description:{@"%s is unavailable; use %@ instead", "-[HFCameraClipPlayer init]", v5}];

  return 0;
}

- (HFCameraClipPlayer)initWithCameraProfile:(id)profile clips:(id)clips
{
  clipsCopy = clips;
  profileCopy = profile;
  v8 = [HFCameraClipQueuePlayer alloc];
  v9 = [(HFCameraClipQueuePlayer *)v8 initWithItems:MEMORY[0x277CBEBF8]];
  v10 = [(HFCameraClipPlayer *)self initWithCameraProfile:profileCopy clips:clipsCopy queuePlayer:v9];

  return v10;
}

- (HFCameraClipPlayer)initWithCameraProfile:(id)profile clips:(id)clips queuePlayer:(id)player
{
  profileCopy = profile;
  clipsCopy = clips;
  playerCopy = player;
  if (!clipsCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFCameraClipPlayer.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"clips != nil"}];
  }

  v22.receiver = self;
  v22.super_class = HFCameraClipPlayer;
  v13 = [(HFCameraClipPlayer *)&v22 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_cameraProfile, profile);
    objc_storeStrong(&v14->_clips, clips);
    objc_storeStrong(&v14->_queuePlayer, player);
    if (!+[HFUtilities isInternalTest](HFUtilities, "isInternalTest") && !+[HFCameraUtilities disableFullQualityVideoCaching](HFCameraUtilities, "disableFullQualityVideoCaching") && !+[HFUtilities isPressDemoModeEnabled])
    {
      v15 = [[HFCameraVideoDownloader alloc] initWithCameraProfile:profileCopy];
      v16 = [[HFCameraVideoCache alloc] initWithVideoDownloader:v15];
      videoCache = v14->_videoCache;
      v14->_videoCache = v16;

      if ([clipsCopy count])
      {
        v18 = v14->_videoCache;
        lastObject = [clipsCopy lastObject];
        [(HFCameraVideoCache *)v18 cacheClip:lastObject];
      }
    }

    [(HFCameraClipPlayer *)v14 _updatePlayerActionAtItemEnd];
    [(HFCameraClipPlayer *)v14 _setupPlayerObservation];
  }

  return v14;
}

- (void)dealloc
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory(0x17uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
  }

  if (!+[HFCameraUtilities disableFullQualityVideoCaching](HFCameraUtilities, "disableFullQualityVideoCaching") && !+[HFUtilities isPressDemoModeEnabled])
  {
    videoCache = [(HFCameraClipPlayer *)self videoCache];
    [videoCache waitForOperations];

    [(HFCameraClipPlayer *)self setVideoCache:0];
  }

  queuePlayer = [(HFCameraClipPlayer *)self queuePlayer];
  [queuePlayer removeObserver:self forKeyPath:@"timeControlStatus"];

  queuePlayer2 = [(HFCameraClipPlayer *)self queuePlayer];
  [queuePlayer2 removeObserver:self forKeyPath:@"status"];

  queuePlayer3 = [(HFCameraClipPlayer *)self queuePlayer];
  [queuePlayer3 removeObserver:self forKeyPath:@"currentItem"];

  queuePlayer4 = [(HFCameraClipPlayer *)self queuePlayer];
  [queuePlayer4 removeObserver:self forKeyPath:@"muted"];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v13.receiver = self;
  v13.super_class = HFCameraClipPlayer;
  [(HFCameraClipPlayer *)&v13 dealloc];
  v12 = *MEMORY[0x277D85DE8];
}

- (HFCameraClipPosition)currentPosition
{
  queuePlayer = [(HFCameraClipPlayer *)self queuePlayer];
  currentItem = [queuePlayer currentItem];
  clip = [currentItem clip];

  if (clip)
  {
    queuePlayer2 = [(HFCameraClipPlayer *)self queuePlayer];
    v7 = queuePlayer2;
    if (queuePlayer2)
    {
      [queuePlayer2 currentTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    Seconds = CMTimeGetSeconds(&time);

    v8 = [HFCameraClipPosition positionWithClip:clip offset:Seconds];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setCurrentPosition:(id)position
{
  v37 = *MEMORY[0x277D85DE8];
  positionCopy = position;
  if ([(HFCameraClipPlayer *)self hasFatalError])
  {
    v6 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v25 = NSStringFromSelector(a2);
      error = [(HFCameraClipPlayer *)self error];
      v27 = 138412802;
      selfCopy = self;
      v29 = 2112;
      v30 = v25;
      v31 = 2112;
      v32 = error;
      _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "Ignoring request to [%@ %@] as the player has a fatal error and cannot be used. Error: %@", &v27, 0x20u);
    }
  }

  else
  {
    currentPosition = [(HFCameraClipPlayer *)self currentPosition];
    v8 = positionCopy;
    v9 = v8;
    if (currentPosition == v8)
    {
    }

    else
    {
      if (currentPosition)
      {
        v10 = [(HFCameraClipPlayer *)currentPosition isEqual:v8];

        if (v10)
        {
          goto LABEL_18;
        }
      }

      else
      {
      }

      v11 = HFLogForCategory(0x17uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        currentPosition2 = [(HFCameraClipPlayer *)self currentPosition];
        clip = [currentPosition2 clip];
        uniqueIdentifier = [clip uniqueIdentifier];
        currentPosition3 = [(HFCameraClipPlayer *)self currentPosition];
        [currentPosition3 offset];
        v17 = v16;
        clip2 = [(HFCameraClipPlayer *)v9 clip];
        uniqueIdentifier2 = [clip2 uniqueIdentifier];
        [(HFCameraClipPlayer *)v9 offset];
        scrubbing = self->_scrubbing;
        v27 = 138413314;
        selfCopy = uniqueIdentifier;
        v29 = 2048;
        v30 = v17;
        v31 = 2112;
        v32 = uniqueIdentifier2;
        v33 = 2048;
        v34 = v21;
        v35 = 1024;
        v36 = scrubbing;
        _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "Player updating playback position from: (%@, %f) to (%@, %f); scrubbing: %{BOOL}d", &v27, 0x30u);
      }

      date = [(HFCameraClipPlayer *)v9 date];

      if (!date)
      {
        v23 = HFLogForCategory(0x17uLL);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v27 = 138412290;
          selfCopy = v9;
          _os_log_error_impl(&dword_20D9BF000, v23, OS_LOG_TYPE_ERROR, "newPosition does not contain an event: %@", &v27, 0xCu);
        }
      }

      [(HFCameraClipPlayer *)self _rebuildPlayerQueueForPosition:v9];
    }
  }

LABEL_18:

  v24 = *MEMORY[0x277D85DE8];
}

- (double)currentTime
{
  player = [(HFCameraClipPlayer *)self player];
  v3 = player;
  if (player)
  {
    [player currentTime];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  Seconds = CMTimeGetSeconds(&time);

  return Seconds;
}

- (void)setLastPlayerItem:(id)item
{
  v16 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v5 = objc_loadWeakRetained(&self->_lastPlayerItem);
  v6 = itemCopy;
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    if (v5)
    {
      v8 = [v5 isEqual:v6];

      if (v8)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v9 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained(&self->_lastPlayerItem);
      v12 = 138412546;
      v13 = WeakRetained;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Updating lastPlayerItem from: %@ to: %@", &v12, 0x16u);
    }

    [(HFCameraClipPlayer *)self _setupObservationForLastPlayerItem:v7];
    objc_storeWeak(&self->_lastPlayerItem, v7);
  }

LABEL_10:

  v11 = *MEMORY[0x277D85DE8];
}

- (int64_t)timeControlStatus
{
  player = [(HFCameraClipPlayer *)self player];
  timeControlStatus = [player timeControlStatus];

  return timeControlStatus;
}

- (BOOL)hasFatalError
{
  player = [(HFCameraClipPlayer *)self player];
  error = [player error];
  v4 = error != 0;

  return v4;
}

- (void)play
{
  v22 = *MEMORY[0x277D85DE8];
  hasFatalError = [(HFCameraClipPlayer *)self hasFatalError];
  queuePlayer = HFLogForCategory(0x17uLL);
  v6 = os_log_type_enabled(queuePlayer, OS_LOG_TYPE_DEFAULT);
  if (hasFatalError)
  {
    if (v6)
    {
      v7 = NSStringFromSelector(a2);
      error = [(HFCameraClipPlayer *)self error];
      LODWORD(v18.value) = 138412802;
      *(&v18.value + 4) = self;
      LOWORD(v18.flags) = 2112;
      *(&v18.flags + 2) = v7;
      HIWORD(v18.epoch) = 2112;
      v19 = *&error;
      _os_log_impl(&dword_20D9BF000, queuePlayer, OS_LOG_TYPE_DEFAULT, "Ignoring request to [%@ %@] as the player has a fatal error and cannot be used. Error: %@", &v18, 0x20u);
    }
  }

  else
  {
    if (v6)
    {
      currentPosition = [(HFCameraClipPlayer *)self currentPosition];
      clip = [currentPosition clip];
      uniqueIdentifier = [clip uniqueIdentifier];
      player = [(HFCameraClipPlayer *)self player];
      v13 = player;
      if (player)
      {
        [player currentTime];
      }

      else
      {
        memset(&v18, 0, sizeof(v18));
      }

      Seconds = CMTimeGetSeconds(&v18);
      player2 = [(HFCameraClipPlayer *)self player];
      currentItem = [player2 currentItem];
      LODWORD(v18.value) = 138413058;
      *(&v18.value + 4) = self;
      LOWORD(v18.flags) = 2112;
      *(&v18.flags + 2) = uniqueIdentifier;
      HIWORD(v18.epoch) = 2048;
      v19 = Seconds;
      v20 = 2112;
      v21 = currentItem;
      _os_log_impl(&dword_20D9BF000, queuePlayer, OS_LOG_TYPE_DEFAULT, "[%@ play] clipUUID:%@ at offset:%.2f for item:%@", &v18, 0x2Au);
    }

    queuePlayer = [(HFCameraClipPlayer *)self queuePlayer];
    [queuePlayer play];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)pause
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory(0x17uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    currentPosition = [(HFCameraClipPlayer *)self currentPosition];
    clip = [currentPosition clip];
    uniqueIdentifier = [clip uniqueIdentifier];
    currentPosition2 = [(HFCameraClipPlayer *)self currentPosition];
    date = [currentPosition2 date];
    v11 = 138412802;
    selfCopy = self;
    v13 = 2112;
    v14 = uniqueIdentifier;
    v15 = 2112;
    v16 = date;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "[%@ pause] clipUUID:%@ at:%@", &v11, 0x20u);
  }

  queuePlayer = [(HFCameraClipPlayer *)self queuePlayer];
  [queuePlayer pause];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)endScrubbingWithOffset:(double)offset
{
  [(HFCameraClipPlayer *)self setScrubbing:0];
  scrubber = [(HFCameraClipPlayer *)self scrubber];
  [scrubber endScrubbingWithTargetTime:offset];
}

- (void)setScrubbing:(BOOL)scrubbing
{
  if (self->_scrubbing != scrubbing)
  {
    self->_scrubbing = scrubbing;
    if (scrubbing)
    {
      scrubber = [(HFCameraClipPlayer *)self scrubber];
      [scrubber beginScrubbing];
    }
  }
}

- (id)addPeriodicTimeObserverForInterval:(double)interval usingBlock:(id)block
{
  blockCopy = block;
  player = [(HFCameraClipPlayer *)self player];
  CMTimeMakeWithSeconds(&v13, interval, 60);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__HFCameraClipPlayer_addPeriodicTimeObserverForInterval_usingBlock___block_invoke;
  v11[3] = &unk_277DF55E8;
  v12 = blockCopy;
  v8 = blockCopy;
  v9 = [player addPeriodicTimeObserverForInterval:&v13 queue:MEMORY[0x277D85CD0] usingBlock:v11];

  return v9;
}

- (void)removeTimeObserver:(id)observer
{
  observerCopy = observer;
  player = [(HFCameraClipPlayer *)self player];
  [player removeTimeObserver:observerCopy];
}

- (void)_updatePlayerActionAtItemEnd
{
  queuePlayer = [(HFCameraClipPlayer *)self queuePlayer];
  v3 = [queuePlayer timeControlStatus] != 2;
  queuePlayer2 = [(HFCameraClipPlayer *)self queuePlayer];
  [queuePlayer2 setActionAtItemEnd:v3];
}

- (void)_updateErrorState
{
  error = [(HFCameraClipPlayer *)self error];
  player = [(HFCameraClipPlayer *)self player];
  error2 = [player error];
  if (error2)
  {
    [(HFCameraClipPlayer *)self setError:error2];
  }

  else
  {
    player2 = [(HFCameraClipPlayer *)self player];
    currentItem = [player2 currentItem];
    error3 = [currentItem error];
    [(HFCameraClipPlayer *)self setError:error3];
  }

  error4 = [(HFCameraClipPlayer *)self error];
  v10 = error;
  v11 = v10;
  if (error4 == v10)
  {
  }

  else
  {
    if (error4)
    {
      v12 = [error4 isEqual:v10];

      if (v12)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__HFCameraClipPlayer__updateErrorState__block_invoke;
    block[3] = &unk_277DF3D38;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
    error5 = [(HFCameraClipPlayer *)self error];

    if (error5)
    {
      error6 = [(HFCameraClipPlayer *)self error];
      v15 = [HFCameraAnalyticsEventHandler sendCameraClipPlayerDidUpdateEventWithError:error6];
    }
  }

LABEL_12:
}

void __39__HFCameraClipPlayer__updateErrorState__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 error];
  [v4 clipPlayer:v2 didUpdateError:v3 isFatal:{objc_msgSend(*(a1 + 32), "hasFatalError")}];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v41 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if (HFCameraClipQueuePlayerContext != context)
  {
    v33.receiver = self;
    v33.super_class = HFCameraClipPlayer;
    [(HFCameraClipPlayer *)&v33 observeValueForKeyPath:pathCopy ofObject:object change:change context:context];
    goto LABEL_26;
  }

  if ([(HFCameraClipPlayer *)self isMutatingQueue])
  {
    goto LABEL_26;
  }

  if ([pathCopy isEqual:@"timeControlStatus"])
  {
    v11 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      queuePlayer = [(HFCameraClipPlayer *)self queuePlayer];
      *buf = 138412546;
      selfCopy4 = self;
      v37 = 2048;
      timeControlStatus = [queuePlayer timeControlStatus];
      _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "clipPlayer:%@ didUpdateTimeControlStatus:%ld", buf, 0x16u);
    }

    [(HFCameraClipPlayer *)self _updatePlayerActionAtItemEnd];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__HFCameraClipPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_277DF3D38;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
    goto LABEL_26;
  }

  if ([pathCopy isEqual:@"currentItem"])
  {
    v13 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      queuePlayer2 = [(HFCameraClipPlayer *)self queuePlayer];
      currentItem = [queuePlayer2 currentItem];
      *buf = 138412546;
      selfCopy4 = self;
      v37 = 2112;
      timeControlStatus = currentItem;
      _os_log_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEFAULT, "clipPlayer:%@ currentItemDidChange:%@", buf, 0x16u);
    }

    queuePlayer3 = [(HFCameraClipPlayer *)self queuePlayer];
    currentItem2 = [queuePlayer3 currentItem];
    clip = [currentItem2 clip];

    if (clip)
    {
      queuePlayer5 = [HFCameraClipPosition positionWithClip:clip offset:0.0];
    }

    else
    {
      queuePlayer5 = 0;
    }

    v30 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      currentPosition = [(HFCameraClipPlayer *)self currentPosition];
      *buf = 138412546;
      selfCopy4 = currentPosition;
      v37 = 2112;
      timeControlStatus = queuePlayer5;
      _os_log_impl(&dword_20D9BF000, v30, OS_LOG_TYPE_DEFAULT, "Updating position from:%@ to:%@", buf, 0x16u);
    }

    [(HFCameraClipPlayer *)self _rebuildPlayerQueueForPosition:queuePlayer5];
    [(HFCameraClipPlayer *)self _updateErrorState];
    goto LABEL_25;
  }

  if (![pathCopy isEqual:@"status"])
  {
    if (![pathCopy isEqual:@"muted"])
    {
      goto LABEL_26;
    }

    v26 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = MEMORY[0x277CCABB0];
      queuePlayer4 = [(HFCameraClipPlayer *)self queuePlayer];
      v29 = [v27 numberWithBool:{objc_msgSend(queuePlayer4, "isMuted")}];
      *buf = 138412546;
      selfCopy4 = self;
      v37 = 2112;
      timeControlStatus = v29;
      _os_log_impl(&dword_20D9BF000, v26, OS_LOG_TYPE_DEFAULT, "clipPlayer:%@ mutedDidChange:%@", buf, 0x16u);
    }

    clip = [(HFCameraClipPlayer *)self delegate];
    queuePlayer5 = [(HFCameraClipPlayer *)self queuePlayer];
    [clip clipPlayer:self didUpdateMuted:{objc_msgSend(queuePlayer5, "isMuted")}];
LABEL_25:

    goto LABEL_26;
  }

  v20 = HFLogForCategory(0x17uLL);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = MEMORY[0x277CCABB0];
    queuePlayer6 = [(HFCameraClipPlayer *)self queuePlayer];
    v23 = [v21 numberWithInteger:{objc_msgSend(queuePlayer6, "status")}];
    queuePlayer7 = [(HFCameraClipPlayer *)self queuePlayer];
    error = [queuePlayer7 error];
    *buf = 138412802;
    selfCopy4 = self;
    v37 = 2112;
    timeControlStatus = v23;
    v39 = 2112;
    v40 = error;
    _os_log_impl(&dword_20D9BF000, v20, OS_LOG_TYPE_DEFAULT, "clipPlayer:%@ statusDidChange:%@, error: %@", buf, 0x20u);
  }

  [(HFCameraClipPlayer *)self _updateErrorState];
LABEL_26:

  v32 = *MEMORY[0x277D85DE8];
}

void __69__HFCameraClipPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 queuePlayer];
  [v4 clipPlayer:v2 didUpdateTimeControlStatus:{objc_msgSend(v3, "timeControlStatus")}];
}

- (void)_setupPlayerObservation
{
  queuePlayer = [(HFCameraClipPlayer *)self queuePlayer];
  [queuePlayer addObserver:self forKeyPath:@"timeControlStatus" options:0 context:HFCameraClipQueuePlayerContext];

  queuePlayer2 = [(HFCameraClipPlayer *)self queuePlayer];
  [queuePlayer2 addObserver:self forKeyPath:@"currentItem" options:0 context:HFCameraClipQueuePlayerContext];

  queuePlayer3 = [(HFCameraClipPlayer *)self queuePlayer];
  [queuePlayer3 addObserver:self forKeyPath:@"status" options:0 context:HFCameraClipQueuePlayerContext];

  queuePlayer4 = [(HFCameraClipPlayer *)self queuePlayer];
  [queuePlayer4 addObserver:self forKeyPath:@"muted" options:0 context:HFCameraClipQueuePlayerContext];
}

- (void)_setupObservationForLastPlayerItem:(id)item
{
  itemCopy = item;
  lastPlayerItem = [(HFCameraClipPlayer *)self lastPlayerItem];
  v6 = itemCopy;
  v10 = v6;
  if (lastPlayerItem == v6)
  {

    defaultCenter2 = lastPlayerItem;
    goto LABEL_8;
  }

  defaultCenter = v6;
  if (lastPlayerItem)
  {
    v8 = [lastPlayerItem isEqual:v6];

    if (v8)
    {
      goto LABEL_9;
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x277CE60C0] object:lastPlayerItem];
  }

  if (v10)
  {
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel_playerItemDidPlayToEndTime_ name:*MEMORY[0x277CE60C0] object:v10];
LABEL_8:
  }

LABEL_9:
}

- (void)_rebuildPlayerQueueForPosition:(id)position
{
  v56 = *MEMORY[0x277D85DE8];
  positionCopy = position;
  if (positionCopy)
  {
    if (+[HFCameraUtilities disableFullQualityVideoCaching](HFCameraUtilities, "disableFullQualityVideoCaching") || +[HFUtilities isPressDemoModeEnabled]|| [(HFCameraClipPlayer *)self isScrubbing])
    {
      goto LABEL_19;
    }

    clips = [(HFCameraClipPlayer *)self clips];
    if ([clips count])
    {
      clip = [positionCopy clip];

      if (!clip)
      {
LABEL_19:
        v18 = HFLogForCategory(0x17uLL);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          clip2 = [positionCopy clip];
          uniqueIdentifier = [clip2 uniqueIdentifier];
          [positionCopy offset];
          *buf = 138412546;
          v49 = uniqueIdentifier;
          v50 = 2048;
          v51 = v21;
          _os_log_impl(&dword_20D9BF000, v18, OS_LOG_TYPE_DEFAULT, "Rebuilding player queue for clip: %@; offset: %f", buf, 0x16u);
        }

        v22 = [HFCameraClipPlayerQueueUpdate alloc];
        cameraProfile = [(HFCameraClipPlayer *)self cameraProfile];
        clipManager = [cameraProfile clipManager];
        clips2 = [(HFCameraClipPlayer *)self clips];
        queuePlayer = [(HFCameraClipPlayer *)self queuePlayer];
        items = [queuePlayer items];
        v16 = [(HFCameraClipPlayerQueueUpdate *)v22 initWithClipManager:clipManager clips:clips2 targetPosition:positionCopy queuedItems:items queueLimit:3];

        queuePlayer2 = [(HFCameraClipPlayer *)self queuePlayer];
        timeControlStatus = [queuePlayer2 timeControlStatus];

        if ([v16 queueChangesRequireRebuild])
        {
          queuePlayer3 = [(HFCameraClipPlayer *)self queuePlayer];
          [queuePlayer3 pause];
        }

        isMutatingQueue = [(HFCameraClipPlayer *)self isMutatingQueue];
        [(HFCameraClipPlayer *)self setMutatingQueue:1];
        [v16 performUpdatesOnQueue:self];
        [(HFCameraClipPlayer *)self setMutatingQueue:isMutatingQueue];
        if (timeControlStatus && [v16 queueChangesRequireRebuild])
        {
          queuePlayer4 = [(HFCameraClipPlayer *)self queuePlayer];
          [queuePlayer4 play];
        }

        queuePlayer5 = [(HFCameraClipPlayer *)self queuePlayer];
        items2 = [queuePlayer5 items];
        lastObject = [items2 lastObject];
        [(HFCameraClipPlayer *)self setLastPlayerItem:lastObject];

        v36 = HFLogForCategory(0x17uLL);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          queuePlayer6 = [(HFCameraClipPlayer *)self queuePlayer];
          timeControlStatus2 = [queuePlayer6 timeControlStatus];
          lastPlayerItem = [(HFCameraClipPlayer *)self lastPlayerItem];
          clip3 = [lastPlayerItem clip];
          uniqueIdentifier2 = [clip3 uniqueIdentifier];
          lastPlayerItem2 = [(HFCameraClipPlayer *)self lastPlayerItem];
          isUsingCachedVideoOnDisk = [lastPlayerItem2 isUsingCachedVideoOnDisk];
          queuePlayer7 = [(HFCameraClipPlayer *)self queuePlayer];
          items3 = [queuePlayer7 items];
          v43 = [items3 na_map:&__block_literal_global_36];
          *buf = 134218754;
          v49 = timeControlStatus2;
          v50 = 2112;
          v51 = uniqueIdentifier2;
          v52 = 1024;
          v53 = isUsingCachedVideoOnDisk;
          v54 = 2112;
          v55 = v43;
          _os_log_impl(&dword_20D9BF000, v36, OS_LOG_TYPE_DEFAULT, "Finished rebuilding player queue; status: %lu; lastPlayerItem: (clip: %@, isUsingCachedVideoOnDisk: %{BOOL}d); items: %@", buf, 0x26u);
        }

        goto LABEL_29;
      }

      objc_opt_class();
      clips = [positionCopy clip];
      if (objc_opt_isKindOfClass())
      {
        v7 = clips;
      }

      else
      {
        v7 = 0;
      }

      v8 = v7;

      if (v8)
      {
        v9 = MEMORY[0x277CBEB98];
        clips3 = [(HFCameraClipPlayer *)self clips];
        v11 = [v9 setWithArray:clips3];
        v12 = [v11 containsObject:v8];

        videoCache = [(HFCameraClipPlayer *)self videoCache];
        clips4 = [(HFCameraClipPlayer *)self clips];
        v15 = clips4;
        if (v12)
        {
          [videoCache cacheClip:v8 inClips:clips4];
        }

        else
        {
          lastObject2 = [clips4 lastObject];
          [videoCache cacheClip:lastObject2];
        }
      }

      else
      {
        clips = 0;
      }
    }

    goto LABEL_19;
  }

  v16 = HFLogForCategory(0x17uLL);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_DEFAULT, "Skipping rebuilding queue as we don't have a playback position yet", buf, 2u);
  }

LABEL_29:

  v44 = *MEMORY[0x277D85DE8];
}

id __53__HFCameraClipPlayer__rebuildPlayerQueueForPosition___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v3 clip];
  v5 = [v4 uniqueIdentifier];
  v6 = [v3 isUsingCachedVideoOnDisk];

  v7 = [v2 stringWithFormat:@"clip: %@ isUsingCachedVideoOnDisk: %{BOOL}d", v5, v6];;

  return v7;
}

- (void)playerItemDidPlayToEndTime:(id)time
{
  v20 = *MEMORY[0x277D85DE8];
  timeCopy = time;
  objc_opt_class();
  object = [timeCopy object];
  if (objc_opt_isKindOfClass())
  {
    v6 = object;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = HFLogForCategory(0x17uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy2 = self;
    v18 = 2112;
    v19 = timeCopy;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "clipPlayer:%@ did receive endTime notification:%@", buf, 0x16u);
  }

  if (v7)
  {
    lastPlayerItem = [(HFCameraClipPlayer *)self lastPlayerItem];
    if (v7 == lastPlayerItem || ([v7 isEqual:lastPlayerItem] & 1) != 0)
    {
      queuePlayer = [(HFCameraClipPlayer *)self queuePlayer];
      items = [queuePlayer items];
      v12 = [items count];

      if (v12 <= 1)
      {
        v13 = HFLogForCategory(0x17uLL);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          selfCopy2 = self;
          v18 = 2112;
          v19 = v7;
          _os_log_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEFAULT, "lastPlayerItem for clipPlayer:%@ playerItemDidPlayToEndTime:%@", buf, 0x16u);
        }

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __49__HFCameraClipPlayer_playerItemDidPlayToEndTime___block_invoke;
        block[3] = &unk_277DF3D38;
        block[4] = self;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }
    }

    else
    {
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __49__HFCameraClipPlayer_playerItemDidPlayToEndTime___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 clipPlayerDidPlayToEndTime:*(a1 + 32)];
}

- (NSArray)queuableItems
{
  queuePlayer = [(HFCameraClipPlayer *)self queuePlayer];
  items = [queuePlayer items];

  return items;
}

- (id)createQueueableItemForClipManager:(id)manager clip:(id)clip
{
  clipCopy = clip;
  managerCopy = manager;
  v7 = [[HFCameraClipPlayerItem alloc] initWithClipManager:managerCopy clip:clipCopy];

  return v7;
}

- (void)insertQueueableItem:(id)item afterItem:(id)afterItem
{
  itemCopy = item;
  afterItemCopy = afterItem;
  if (itemCopy)
  {
    queuePlayer = [(HFCameraClipPlayer *)self queuePlayer];
    v8 = objc_opt_class();
    v9 = itemCopy;
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    if (!v11)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [currentHandler handleFailureInFunction:v19 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v8, objc_opt_class()}];
    }

    v12 = objc_opt_class();
    v13 = afterItemCopy;
    if (v13)
    {
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      v15 = v13;
      if (v14)
      {
        goto LABEL_14;
      }

      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [currentHandler2 handleFailureInFunction:v17 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v12, objc_opt_class()}];
    }

    v15 = 0;
LABEL_14:

    [queuePlayer insertItem:v11 afterItem:v15];
  }
}

- (void)removeQueueableItem:(id)item
{
  itemCopy = item;
  queuePlayer = [(HFCameraClipPlayer *)self queuePlayer];
  v6 = objc_opt_class();
  v11 = itemCopy;
  if (v11)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v11;
    }

    else
    {
      v7 = 0;
    }

    v8 = v11;
    if (v7)
    {
      goto LABEL_8;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v10 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v6, objc_opt_class()}];
  }

  v8 = 0;
LABEL_8:

  [queuePlayer removeItem:v8];
}

- (void)seekToOffset:(double)offset inItem:(id)item
{
  v23 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v7 = objc_opt_class();
  v8 = itemCopy;
  if (!v8)
  {
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v8;
  if (!v9)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v12 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v7, objc_opt_class()}];

LABEL_7:
    v10 = 0;
  }

  asset = [v10 asset];
  v14 = [asset statusOfValueForKey:@"duration" error:0];

  if ([(HFCameraClipPlayer *)self isScrubbing]&& ([(HFCameraClipPlayer *)self scrubber], v15 = objc_claimAutoreleasedReturnValue(), v15, v15) && v14 == 2)
  {
    if (![(HFCameraClipPlayer *)self shouldBypassScrubbing])
    {
      v16 = HFLogForCategory(0x17uLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        scrubber = [(HFCameraClipPlayer *)self scrubber];
        LODWORD(buf.value) = 134218498;
        *(&buf.value + 4) = offset;
        LOWORD(buf.flags) = 2112;
        *(&buf.flags + 2) = v8;
        HIWORD(buf.epoch) = 2112;
        v22 = scrubber;
        _os_log_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_DEFAULT, "Seeking to offset: %f in item: %@ with scrubber:%@", &buf, 0x20u);
      }

      scrubber2 = [(HFCameraClipPlayer *)self scrubber];
      [scrubber2 scrubToTime:offset];
    }
  }

  else
  {
    v19 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.value) = 138412546;
      *(&buf.value + 4) = self;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = offset;
      _os_log_impl(&dword_20D9BF000, v19, OS_LOG_TYPE_DEFAULT, "ClipPlayer:%@ Seeking to offset:%.2f", &buf, 0x16u);
    }

    CMTimeMakeWithSeconds(&buf, offset, 1000);
    [v10 seekToTime:&buf completionHandler:0];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (HFCameraClipPlayerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HFCameraClipScrubbing)scrubber
{
  WeakRetained = objc_loadWeakRetained(&self->_scrubber);

  return WeakRetained;
}

- (HFCameraClipPlayerItem)lastPlayerItem
{
  WeakRetained = objc_loadWeakRetained(&self->_lastPlayerItem);

  return WeakRetained;
}

@end