@interface HFCameraClipPlayer
- (BOOL)hasFatalError;
- (HFCameraClipPlayer)init;
- (HFCameraClipPlayer)initWithCameraProfile:(id)a3 clips:(id)a4;
- (HFCameraClipPlayer)initWithCameraProfile:(id)a3 clips:(id)a4 queuePlayer:(id)a5;
- (HFCameraClipPlayerDelegate)delegate;
- (HFCameraClipPlayerItem)lastPlayerItem;
- (HFCameraClipPosition)currentPosition;
- (HFCameraClipScrubbing)scrubber;
- (NSArray)queuableItems;
- (double)currentTime;
- (id)addPeriodicTimeObserverForInterval:(double)a3 usingBlock:(id)a4;
- (id)createQueueableItemForClipManager:(id)a3 clip:(id)a4;
- (int64_t)timeControlStatus;
- (void)_rebuildPlayerQueueForPosition:(id)a3;
- (void)_setupObservationForLastPlayerItem:(id)a3;
- (void)_setupPlayerObservation;
- (void)_updateErrorState;
- (void)_updatePlayerActionAtItemEnd;
- (void)dealloc;
- (void)endScrubbingWithOffset:(double)a3;
- (void)insertQueueableItem:(id)a3 afterItem:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pause;
- (void)play;
- (void)playerItemDidPlayToEndTime:(id)a3;
- (void)removeQueueableItem:(id)a3;
- (void)removeTimeObserver:(id)a3;
- (void)seekToOffset:(double)a3 inItem:(id)a4;
- (void)setCurrentPosition:(id)a3;
- (void)setLastPlayerItem:(id)a3;
- (void)setScrubbing:(BOOL)a3;
@end

@implementation HFCameraClipPlayer

- (HFCameraClipPlayer)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithCameraProfile_clips_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFCameraClipPlayer.m" lineNumber:48 description:{@"%s is unavailable; use %@ instead", "-[HFCameraClipPlayer init]", v5}];

  return 0;
}

- (HFCameraClipPlayer)initWithCameraProfile:(id)a3 clips:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [HFCameraClipQueuePlayer alloc];
  v9 = [(HFCameraClipQueuePlayer *)v8 initWithItems:MEMORY[0x277CBEBF8]];
  v10 = [(HFCameraClipPlayer *)self initWithCameraProfile:v7 clips:v6 queuePlayer:v9];

  return v10;
}

- (HFCameraClipPlayer)initWithCameraProfile:(id)a3 clips:(id)a4 queuePlayer:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v11)
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"HFCameraClipPlayer.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"clips != nil"}];
  }

  v22.receiver = self;
  v22.super_class = HFCameraClipPlayer;
  v13 = [(HFCameraClipPlayer *)&v22 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_cameraProfile, a3);
    objc_storeStrong(&v14->_clips, a4);
    objc_storeStrong(&v14->_queuePlayer, a5);
    if (!+[HFUtilities isInternalTest](HFUtilities, "isInternalTest") && !+[HFCameraUtilities disableFullQualityVideoCaching](HFCameraUtilities, "disableFullQualityVideoCaching") && !+[HFUtilities isPressDemoModeEnabled])
    {
      v15 = [[HFCameraVideoDownloader alloc] initWithCameraProfile:v10];
      v16 = [[HFCameraVideoCache alloc] initWithVideoDownloader:v15];
      videoCache = v14->_videoCache;
      v14->_videoCache = v16;

      if ([v11 count])
      {
        v18 = v14->_videoCache;
        v19 = [v11 lastObject];
        [(HFCameraVideoCache *)v18 cacheClip:v19];
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
    v15 = self;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
  }

  if (!+[HFCameraUtilities disableFullQualityVideoCaching](HFCameraUtilities, "disableFullQualityVideoCaching") && !+[HFUtilities isPressDemoModeEnabled])
  {
    v6 = [(HFCameraClipPlayer *)self videoCache];
    [v6 waitForOperations];

    [(HFCameraClipPlayer *)self setVideoCache:0];
  }

  v7 = [(HFCameraClipPlayer *)self queuePlayer];
  [v7 removeObserver:self forKeyPath:@"timeControlStatus"];

  v8 = [(HFCameraClipPlayer *)self queuePlayer];
  [v8 removeObserver:self forKeyPath:@"status"];

  v9 = [(HFCameraClipPlayer *)self queuePlayer];
  [v9 removeObserver:self forKeyPath:@"currentItem"];

  v10 = [(HFCameraClipPlayer *)self queuePlayer];
  [v10 removeObserver:self forKeyPath:@"muted"];

  v11 = [MEMORY[0x277CCAB98] defaultCenter];
  [v11 removeObserver:self];

  v13.receiver = self;
  v13.super_class = HFCameraClipPlayer;
  [(HFCameraClipPlayer *)&v13 dealloc];
  v12 = *MEMORY[0x277D85DE8];
}

- (HFCameraClipPosition)currentPosition
{
  v3 = [(HFCameraClipPlayer *)self queuePlayer];
  v4 = [v3 currentItem];
  v5 = [v4 clip];

  if (v5)
  {
    v6 = [(HFCameraClipPlayer *)self queuePlayer];
    v7 = v6;
    if (v6)
    {
      [v6 currentTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    Seconds = CMTimeGetSeconds(&time);

    v8 = [HFCameraClipPosition positionWithClip:v5 offset:Seconds];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setCurrentPosition:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([(HFCameraClipPlayer *)self hasFatalError])
  {
    v6 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v25 = NSStringFromSelector(a2);
      v26 = [(HFCameraClipPlayer *)self error];
      v27 = 138412802;
      v28 = self;
      v29 = 2112;
      v30 = v25;
      v31 = 2112;
      v32 = v26;
      _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "Ignoring request to [%@ %@] as the player has a fatal error and cannot be used. Error: %@", &v27, 0x20u);
    }
  }

  else
  {
    v7 = [(HFCameraClipPlayer *)self currentPosition];
    v8 = v5;
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      if (v7)
      {
        v10 = [(HFCameraClipPlayer *)v7 isEqual:v8];

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
        v12 = [(HFCameraClipPlayer *)self currentPosition];
        v13 = [v12 clip];
        v14 = [v13 uniqueIdentifier];
        v15 = [(HFCameraClipPlayer *)self currentPosition];
        [v15 offset];
        v17 = v16;
        v18 = [(HFCameraClipPlayer *)v9 clip];
        v19 = [v18 uniqueIdentifier];
        [(HFCameraClipPlayer *)v9 offset];
        scrubbing = self->_scrubbing;
        v27 = 138413314;
        v28 = v14;
        v29 = 2048;
        v30 = v17;
        v31 = 2112;
        v32 = v19;
        v33 = 2048;
        v34 = v21;
        v35 = 1024;
        v36 = scrubbing;
        _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "Player updating playback position from: (%@, %f) to (%@, %f); scrubbing: %{BOOL}d", &v27, 0x30u);
      }

      v22 = [(HFCameraClipPlayer *)v9 date];

      if (!v22)
      {
        v23 = HFLogForCategory(0x17uLL);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v27 = 138412290;
          v28 = v9;
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
  v2 = [(HFCameraClipPlayer *)self player];
  v3 = v2;
  if (v2)
  {
    [v2 currentTime];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  Seconds = CMTimeGetSeconds(&time);

  return Seconds;
}

- (void)setLastPlayerItem:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_loadWeakRetained(&self->_lastPlayerItem);
  v6 = v4;
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
  v2 = [(HFCameraClipPlayer *)self player];
  v3 = [v2 timeControlStatus];

  return v3;
}

- (BOOL)hasFatalError
{
  v2 = [(HFCameraClipPlayer *)self player];
  v3 = [v2 error];
  v4 = v3 != 0;

  return v4;
}

- (void)play
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = [(HFCameraClipPlayer *)self hasFatalError];
  v5 = HFLogForCategory(0x17uLL);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = NSStringFromSelector(a2);
      v8 = [(HFCameraClipPlayer *)self error];
      LODWORD(v18.value) = 138412802;
      *(&v18.value + 4) = self;
      LOWORD(v18.flags) = 2112;
      *(&v18.flags + 2) = v7;
      HIWORD(v18.epoch) = 2112;
      v19 = *&v8;
      _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Ignoring request to [%@ %@] as the player has a fatal error and cannot be used. Error: %@", &v18, 0x20u);
    }
  }

  else
  {
    if (v6)
    {
      v9 = [(HFCameraClipPlayer *)self currentPosition];
      v10 = [v9 clip];
      v11 = [v10 uniqueIdentifier];
      v12 = [(HFCameraClipPlayer *)self player];
      v13 = v12;
      if (v12)
      {
        [v12 currentTime];
      }

      else
      {
        memset(&v18, 0, sizeof(v18));
      }

      Seconds = CMTimeGetSeconds(&v18);
      v15 = [(HFCameraClipPlayer *)self player];
      v16 = [v15 currentItem];
      LODWORD(v18.value) = 138413058;
      *(&v18.value + 4) = self;
      LOWORD(v18.flags) = 2112;
      *(&v18.flags + 2) = v11;
      HIWORD(v18.epoch) = 2048;
      v19 = Seconds;
      v20 = 2112;
      v21 = v16;
      _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "[%@ play] clipUUID:%@ at offset:%.2f for item:%@", &v18, 0x2Au);
    }

    v5 = [(HFCameraClipPlayer *)self queuePlayer];
    [v5 play];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)pause
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory(0x17uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(HFCameraClipPlayer *)self currentPosition];
    v5 = [v4 clip];
    v6 = [v5 uniqueIdentifier];
    v7 = [(HFCameraClipPlayer *)self currentPosition];
    v8 = [v7 date];
    v11 = 138412802;
    v12 = self;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "[%@ pause] clipUUID:%@ at:%@", &v11, 0x20u);
  }

  v9 = [(HFCameraClipPlayer *)self queuePlayer];
  [v9 pause];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)endScrubbingWithOffset:(double)a3
{
  [(HFCameraClipPlayer *)self setScrubbing:0];
  v5 = [(HFCameraClipPlayer *)self scrubber];
  [v5 endScrubbingWithTargetTime:a3];
}

- (void)setScrubbing:(BOOL)a3
{
  if (self->_scrubbing != a3)
  {
    self->_scrubbing = a3;
    if (a3)
    {
      v4 = [(HFCameraClipPlayer *)self scrubber];
      [v4 beginScrubbing];
    }
  }
}

- (id)addPeriodicTimeObserverForInterval:(double)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = [(HFCameraClipPlayer *)self player];
  CMTimeMakeWithSeconds(&v13, a3, 60);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__HFCameraClipPlayer_addPeriodicTimeObserverForInterval_usingBlock___block_invoke;
  v11[3] = &unk_277DF55E8;
  v12 = v6;
  v8 = v6;
  v9 = [v7 addPeriodicTimeObserverForInterval:&v13 queue:MEMORY[0x277D85CD0] usingBlock:v11];

  return v9;
}

- (void)removeTimeObserver:(id)a3
{
  v4 = a3;
  v5 = [(HFCameraClipPlayer *)self player];
  [v5 removeTimeObserver:v4];
}

- (void)_updatePlayerActionAtItemEnd
{
  v5 = [(HFCameraClipPlayer *)self queuePlayer];
  v3 = [v5 timeControlStatus] != 2;
  v4 = [(HFCameraClipPlayer *)self queuePlayer];
  [v4 setActionAtItemEnd:v3];
}

- (void)_updateErrorState
{
  v3 = [(HFCameraClipPlayer *)self error];
  v4 = [(HFCameraClipPlayer *)self player];
  v5 = [v4 error];
  if (v5)
  {
    [(HFCameraClipPlayer *)self setError:v5];
  }

  else
  {
    v6 = [(HFCameraClipPlayer *)self player];
    v7 = [v6 currentItem];
    v8 = [v7 error];
    [(HFCameraClipPlayer *)self setError:v8];
  }

  v9 = [(HFCameraClipPlayer *)self error];
  v10 = v3;
  v11 = v10;
  if (v9 == v10)
  {
  }

  else
  {
    if (v9)
    {
      v12 = [v9 isEqual:v10];

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
    v13 = [(HFCameraClipPlayer *)self error];

    if (v13)
    {
      v14 = [(HFCameraClipPlayer *)self error];
      v15 = [HFCameraAnalyticsEventHandler sendCameraClipPlayerDidUpdateEventWithError:v14];
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v41 = *MEMORY[0x277D85DE8];
  v10 = a3;
  if (HFCameraClipQueuePlayerContext != a6)
  {
    v33.receiver = self;
    v33.super_class = HFCameraClipPlayer;
    [(HFCameraClipPlayer *)&v33 observeValueForKeyPath:v10 ofObject:a4 change:a5 context:a6];
    goto LABEL_26;
  }

  if ([(HFCameraClipPlayer *)self isMutatingQueue])
  {
    goto LABEL_26;
  }

  if ([v10 isEqual:@"timeControlStatus"])
  {
    v11 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(HFCameraClipPlayer *)self queuePlayer];
      *buf = 138412546;
      v36 = self;
      v37 = 2048;
      v38 = [v12 timeControlStatus];
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

  if ([v10 isEqual:@"currentItem"])
  {
    v13 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(HFCameraClipPlayer *)self queuePlayer];
      v15 = [v14 currentItem];
      *buf = 138412546;
      v36 = self;
      v37 = 2112;
      v38 = v15;
      _os_log_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEFAULT, "clipPlayer:%@ currentItemDidChange:%@", buf, 0x16u);
    }

    v16 = [(HFCameraClipPlayer *)self queuePlayer];
    v17 = [v16 currentItem];
    v18 = [v17 clip];

    if (v18)
    {
      v19 = [HFCameraClipPosition positionWithClip:v18 offset:0.0];
    }

    else
    {
      v19 = 0;
    }

    v30 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [(HFCameraClipPlayer *)self currentPosition];
      *buf = 138412546;
      v36 = v31;
      v37 = 2112;
      v38 = v19;
      _os_log_impl(&dword_20D9BF000, v30, OS_LOG_TYPE_DEFAULT, "Updating position from:%@ to:%@", buf, 0x16u);
    }

    [(HFCameraClipPlayer *)self _rebuildPlayerQueueForPosition:v19];
    [(HFCameraClipPlayer *)self _updateErrorState];
    goto LABEL_25;
  }

  if (![v10 isEqual:@"status"])
  {
    if (![v10 isEqual:@"muted"])
    {
      goto LABEL_26;
    }

    v26 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = MEMORY[0x277CCABB0];
      v28 = [(HFCameraClipPlayer *)self queuePlayer];
      v29 = [v27 numberWithBool:{objc_msgSend(v28, "isMuted")}];
      *buf = 138412546;
      v36 = self;
      v37 = 2112;
      v38 = v29;
      _os_log_impl(&dword_20D9BF000, v26, OS_LOG_TYPE_DEFAULT, "clipPlayer:%@ mutedDidChange:%@", buf, 0x16u);
    }

    v18 = [(HFCameraClipPlayer *)self delegate];
    v19 = [(HFCameraClipPlayer *)self queuePlayer];
    [v18 clipPlayer:self didUpdateMuted:{objc_msgSend(v19, "isMuted")}];
LABEL_25:

    goto LABEL_26;
  }

  v20 = HFLogForCategory(0x17uLL);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = MEMORY[0x277CCABB0];
    v22 = [(HFCameraClipPlayer *)self queuePlayer];
    v23 = [v21 numberWithInteger:{objc_msgSend(v22, "status")}];
    v24 = [(HFCameraClipPlayer *)self queuePlayer];
    v25 = [v24 error];
    *buf = 138412802;
    v36 = self;
    v37 = 2112;
    v38 = v23;
    v39 = 2112;
    v40 = v25;
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
  v3 = [(HFCameraClipPlayer *)self queuePlayer];
  [v3 addObserver:self forKeyPath:@"timeControlStatus" options:0 context:HFCameraClipQueuePlayerContext];

  v4 = [(HFCameraClipPlayer *)self queuePlayer];
  [v4 addObserver:self forKeyPath:@"currentItem" options:0 context:HFCameraClipQueuePlayerContext];

  v5 = [(HFCameraClipPlayer *)self queuePlayer];
  [v5 addObserver:self forKeyPath:@"status" options:0 context:HFCameraClipQueuePlayerContext];

  v6 = [(HFCameraClipPlayer *)self queuePlayer];
  [v6 addObserver:self forKeyPath:@"muted" options:0 context:HFCameraClipQueuePlayerContext];
}

- (void)_setupObservationForLastPlayerItem:(id)a3
{
  v4 = a3;
  v5 = [(HFCameraClipPlayer *)self lastPlayerItem];
  v6 = v4;
  v10 = v6;
  if (v5 == v6)
  {

    v9 = v5;
    goto LABEL_8;
  }

  v7 = v6;
  if (v5)
  {
    v8 = [v5 isEqual:v6];

    if (v8)
    {
      goto LABEL_9;
    }

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 removeObserver:self name:*MEMORY[0x277CE60C0] object:v5];
  }

  if (v10)
  {
    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 addObserver:self selector:sel_playerItemDidPlayToEndTime_ name:*MEMORY[0x277CE60C0] object:v10];
LABEL_8:
  }

LABEL_9:
}

- (void)_rebuildPlayerQueueForPosition:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    if (+[HFCameraUtilities disableFullQualityVideoCaching](HFCameraUtilities, "disableFullQualityVideoCaching") || +[HFUtilities isPressDemoModeEnabled]|| [(HFCameraClipPlayer *)self isScrubbing])
    {
      goto LABEL_19;
    }

    v5 = [(HFCameraClipPlayer *)self clips];
    if ([v5 count])
    {
      v6 = [v4 clip];

      if (!v6)
      {
LABEL_19:
        v18 = HFLogForCategory(0x17uLL);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [v4 clip];
          v20 = [v19 uniqueIdentifier];
          [v4 offset];
          *buf = 138412546;
          v49 = v20;
          v50 = 2048;
          v51 = v21;
          _os_log_impl(&dword_20D9BF000, v18, OS_LOG_TYPE_DEFAULT, "Rebuilding player queue for clip: %@; offset: %f", buf, 0x16u);
        }

        v22 = [HFCameraClipPlayerQueueUpdate alloc];
        v23 = [(HFCameraClipPlayer *)self cameraProfile];
        v24 = [v23 clipManager];
        v25 = [(HFCameraClipPlayer *)self clips];
        v26 = [(HFCameraClipPlayer *)self queuePlayer];
        v27 = [v26 items];
        v16 = [(HFCameraClipPlayerQueueUpdate *)v22 initWithClipManager:v24 clips:v25 targetPosition:v4 queuedItems:v27 queueLimit:3];

        v28 = [(HFCameraClipPlayer *)self queuePlayer];
        v29 = [v28 timeControlStatus];

        if ([v16 queueChangesRequireRebuild])
        {
          v30 = [(HFCameraClipPlayer *)self queuePlayer];
          [v30 pause];
        }

        v31 = [(HFCameraClipPlayer *)self isMutatingQueue];
        [(HFCameraClipPlayer *)self setMutatingQueue:1];
        [v16 performUpdatesOnQueue:self];
        [(HFCameraClipPlayer *)self setMutatingQueue:v31];
        if (v29 && [v16 queueChangesRequireRebuild])
        {
          v32 = [(HFCameraClipPlayer *)self queuePlayer];
          [v32 play];
        }

        v33 = [(HFCameraClipPlayer *)self queuePlayer];
        v34 = [v33 items];
        v35 = [v34 lastObject];
        [(HFCameraClipPlayer *)self setLastPlayerItem:v35];

        v36 = HFLogForCategory(0x17uLL);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v47 = [(HFCameraClipPlayer *)self queuePlayer];
          v45 = [v47 timeControlStatus];
          v46 = [(HFCameraClipPlayer *)self lastPlayerItem];
          v37 = [v46 clip];
          v38 = [v37 uniqueIdentifier];
          v39 = [(HFCameraClipPlayer *)self lastPlayerItem];
          v40 = [v39 isUsingCachedVideoOnDisk];
          v41 = [(HFCameraClipPlayer *)self queuePlayer];
          v42 = [v41 items];
          v43 = [v42 na_map:&__block_literal_global_36];
          *buf = 134218754;
          v49 = v45;
          v50 = 2112;
          v51 = v38;
          v52 = 1024;
          v53 = v40;
          v54 = 2112;
          v55 = v43;
          _os_log_impl(&dword_20D9BF000, v36, OS_LOG_TYPE_DEFAULT, "Finished rebuilding player queue; status: %lu; lastPlayerItem: (clip: %@, isUsingCachedVideoOnDisk: %{BOOL}d); items: %@", buf, 0x26u);
        }

        goto LABEL_29;
      }

      objc_opt_class();
      v5 = [v4 clip];
      if (objc_opt_isKindOfClass())
      {
        v7 = v5;
      }

      else
      {
        v7 = 0;
      }

      v8 = v7;

      if (v8)
      {
        v9 = MEMORY[0x277CBEB98];
        v10 = [(HFCameraClipPlayer *)self clips];
        v11 = [v9 setWithArray:v10];
        v12 = [v11 containsObject:v8];

        v13 = [(HFCameraClipPlayer *)self videoCache];
        v14 = [(HFCameraClipPlayer *)self clips];
        v15 = v14;
        if (v12)
        {
          [v13 cacheClip:v8 inClips:v14];
        }

        else
        {
          v17 = [v14 lastObject];
          [v13 cacheClip:v17];
        }
      }

      else
      {
        v5 = 0;
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

- (void)playerItemDidPlayToEndTime:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  v5 = [v4 object];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
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
    v17 = self;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "clipPlayer:%@ did receive endTime notification:%@", buf, 0x16u);
  }

  if (v7)
  {
    v9 = [(HFCameraClipPlayer *)self lastPlayerItem];
    if (v7 == v9 || ([v7 isEqual:v9] & 1) != 0)
    {
      v10 = [(HFCameraClipPlayer *)self queuePlayer];
      v11 = [v10 items];
      v12 = [v11 count];

      if (v12 <= 1)
      {
        v13 = HFLogForCategory(0x17uLL);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v17 = self;
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
  v2 = [(HFCameraClipPlayer *)self queuePlayer];
  v3 = [v2 items];

  return v3;
}

- (id)createQueueableItemForClipManager:(id)a3 clip:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[HFCameraClipPlayerItem alloc] initWithClipManager:v6 clip:v5];

  return v7;
}

- (void)insertQueueableItem:(id)a3 afterItem:(id)a4
{
  v20 = a3;
  v6 = a4;
  if (v20)
  {
    v7 = [(HFCameraClipPlayer *)self queuePlayer];
    v8 = objc_opt_class();
    v9 = v20;
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
      v18 = [MEMORY[0x277CCA890] currentHandler];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [v18 handleFailureInFunction:v19 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v8, objc_opt_class()}];
    }

    v12 = objc_opt_class();
    v13 = v6;
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

      v16 = [MEMORY[0x277CCA890] currentHandler];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [v16 handleFailureInFunction:v17 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v12, objc_opt_class()}];
    }

    v15 = 0;
LABEL_14:

    [v7 insertItem:v11 afterItem:v15];
  }
}

- (void)removeQueueableItem:(id)a3
{
  v4 = a3;
  v5 = [(HFCameraClipPlayer *)self queuePlayer];
  v6 = objc_opt_class();
  v11 = v4;
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

    v9 = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v9 handleFailureInFunction:v10 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v6, objc_opt_class()}];
  }

  v8 = 0;
LABEL_8:

  [v5 removeItem:v8];
}

- (void)seekToOffset:(double)a3 inItem:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = objc_opt_class();
  v8 = v6;
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
    v11 = [MEMORY[0x277CCA890] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v11 handleFailureInFunction:v12 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v7, objc_opt_class()}];

LABEL_7:
    v10 = 0;
  }

  v13 = [v10 asset];
  v14 = [v13 statusOfValueForKey:@"duration" error:0];

  if ([(HFCameraClipPlayer *)self isScrubbing]&& ([(HFCameraClipPlayer *)self scrubber], v15 = objc_claimAutoreleasedReturnValue(), v15, v15) && v14 == 2)
  {
    if (![(HFCameraClipPlayer *)self shouldBypassScrubbing])
    {
      v16 = HFLogForCategory(0x17uLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [(HFCameraClipPlayer *)self scrubber];
        LODWORD(buf.value) = 134218498;
        *(&buf.value + 4) = a3;
        LOWORD(buf.flags) = 2112;
        *(&buf.flags + 2) = v8;
        HIWORD(buf.epoch) = 2112;
        v22 = v17;
        _os_log_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_DEFAULT, "Seeking to offset: %f in item: %@ with scrubber:%@", &buf, 0x20u);
      }

      v18 = [(HFCameraClipPlayer *)self scrubber];
      [v18 scrubToTime:a3];
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
      *(&buf.flags + 2) = a3;
      _os_log_impl(&dword_20D9BF000, v19, OS_LOG_TYPE_DEFAULT, "ClipPlayer:%@ Seeking to offset:%.2f", &buf, 0x16u);
    }

    CMTimeMakeWithSeconds(&buf, a3, 1000);
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