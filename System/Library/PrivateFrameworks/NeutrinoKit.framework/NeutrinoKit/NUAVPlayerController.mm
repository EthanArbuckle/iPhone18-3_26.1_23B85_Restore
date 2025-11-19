@interface NUAVPlayerController
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentTime;
- (BOOL)prepareWithAVAsset:(id)a3 videoComposition:(id)a4 audioMix:(id)a5 loopsVideo:(BOOL)a6 seekToTime:(id *)a7;
- (NUAVPlayerController)init;
- (NUAVPlayerControllerDelegate)delegate;
- (id)_loopingPlayerItemWithVideoAsset:(id)a3 videoComposition:(id)a4 audioMix:(id)a5;
- (id)_playerItemWithVideoAsset:(id)a3 videoComposition:(id)a4 audioMix:(id)a5;
- (id)_playerItemsWithVideoAsset:(id)a3 videoComposition:(id)a4 audioMix:(id)a5 loopsVideo:(BOOL)a6;
- (void)_addPlayerItemKVO:(id)a3;
- (void)_addPlayerKVO;
- (void)_addTimeObserver;
- (void)_notifyExternalPlaybackChange:(BOOL)a3;
- (void)_notifyPlaybackRateChange:(float)a3;
- (void)_notifyPlaybackTimeChange:(id *)a3;
- (void)_notifyPlayerStatusChange:(int64_t)a3;
- (void)_removePlayerItemKVO:(id)a3 removeFromArray:(BOOL)a4;
- (void)_removePlayerKVO;
- (void)_removeTimeObserver;
- (void)_setRate:(float)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)playerItemDidReachEnd:(id)a3;
- (void)playerItemFailedToPlayToEnd:(id)a3;
- (void)seek:(id *)a3 toleranceBefore:(id *)a4 toleranceAfter:(id *)a5;
- (void)seek:(id *)a3 toleranceBefore:(id *)a4 toleranceAfter:(id *)a5 forceSeek:(BOOL)a6;
- (void)seek:(id *)a3 toleranceBefore:(id *)a4 toleranceAfter:(id *)a5 forceSeek:(BOOL)a6 completionHandler:(id)a7;
- (void)seekBack;
- (void)seekForward;
- (void)setLoopsVideo:(BOOL)a3;
- (void)step:(int64_t)a3;
- (void)updateAppliesPerFrameHDRDisplayMetadata:(BOOL)a3;
- (void)updateAudioMix:(id)a3;
- (void)updateVideoComposition:(id)a3;
- (void)updateWithVideoPrepareNodeFromVideoComposition:(id)a3;
@end

@implementation NUAVPlayerController

- (NUAVPlayerControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_addPlayerItemKVO:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_playerItemObservations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v16 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v15 + 1) + 8 * v9);
      v11 = [v10 playerItem];

      if (v11 == v4)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v12 = v10;

    if (v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  v12 = objc_opt_new();
  [v12 setPlayerItem:v4];
  [(NSMutableArray *)self->_playerItemObservations addObject:v12];
LABEL_12:
  if (([v12 registeredKVO] & 1) == 0)
  {
    [v4 addObserver:self forKeyPath:@"status" options:3 context:kPlayerItemStatusCtx];
    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    [v13 addObserver:self selector:sel_playerItemDidReachEnd_ name:*MEMORY[0x277CE60C0] object:v4];

    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 addObserver:self selector:sel_playerItemFailedToPlayToEnd_ name:*MEMORY[0x277CE60D0] object:v4];

    [v12 setRegisteredKVO:1];
  }
}

- (void)_removePlayerItemKVO:(id)a3 removeFromArray:(BOOL)a4
{
  v4 = a4;
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = self->_playerItemObservations;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 playerItem];

        if (v13 == v6)
        {
          v14 = v12;

          if (v14)
          {
            if ([v14 registeredKVO])
            {
              [v6 removeObserver:self forKeyPath:@"status" context:kPlayerItemStatusCtx];
              [v14 setRegisteredKVO:0];
              v15 = [MEMORY[0x277CCAB98] defaultCenter];
              [v15 removeObserver:self name:*MEMORY[0x277CE60C0] object:v6];

              v16 = [MEMORY[0x277CCAB98] defaultCenter];
              [v16 removeObserver:self name:*MEMORY[0x277CE60D0] object:v6];

              if (v4)
              {
                [(NSMutableArray *)self->_playerItemObservations removeObject:v14];
              }
            }
          }

          goto LABEL_14;
        }
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_14:
}

- (void)_addPlayerKVO
{
  if (!self->_playerControllerKVOFlags.registeredPlayer)
  {
    v3 = [(NUAVPlayerController *)self player];
    [v3 addObserver:self forKeyPath:@"rate" options:3 context:kPlayerRateCtx];

    v4 = [(NUAVPlayerController *)self player];
    [v4 addObserver:self forKeyPath:@"status" options:3 context:kPlayerStatusCtx];

    v5 = [(NUAVPlayerController *)self player];
    [v5 addObserver:self forKeyPath:@"currentItem" options:3 context:kPlayerCurrentItemCtx];

    v6 = [(NUAVPlayerController *)self player];
    [v6 addObserver:self forKeyPath:@"externalPlaybackActive" options:3 context:kExternalPlaybackCtx];

    self->_playerControllerKVOFlags.registeredPlayer = 1;
  }
}

- (void)_removePlayerKVO
{
  if (self->_playerControllerKVOFlags.registeredPlayer)
  {
    v3 = [(NUAVPlayerController *)self player];
    [v3 removeObserver:self forKeyPath:@"rate" context:kPlayerRateCtx];

    v4 = [(NUAVPlayerController *)self player];
    [v4 removeObserver:self forKeyPath:@"status" context:kPlayerStatusCtx];

    v5 = [(NUAVPlayerController *)self player];
    [v5 removeObserver:self forKeyPath:@"currentItem" context:kPlayerCurrentItemCtx];

    v6 = [(NUAVPlayerController *)self player];
    [v6 removeObserver:self forKeyPath:@"externalPlaybackActive" context:kExternalPlaybackCtx];

    self->_playerControllerKVOFlags.registeredPlayer = 0;
  }
}

- (void)_setRate:(float)a3
{
  v5 = [(NUAVPlayerController *)self player];
  [v5 rate];
  if (*&v4 != a3)
  {
    *&v4 = a3;
    [v5 setRate:v4];
  }
}

- (void)playerItemFailedToPlayToEnd:(id)a3
{
  v4 = [a3 userInfo];
  v6 = [v4 objectForKey:*MEMORY[0x277CE60C8]];

  v5 = [(NUAVPlayerController *)self delegate];
  [v5 playerControllerFailedToPlayToEnd:self error:v6];
}

- (void)playerItemDidReachEnd:(id)a3
{
  v4 = [(NUAVPlayerController *)self player];
  v5 = [v4 currentItem];
  v6 = v5;
  if (v5)
  {
    [v5 duration];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  Seconds = CMTimeGetSeconds(&time);

  v8 = [(NUAVPlayerController *)self delegate];
  [v8 playerControllerDidFinishPlaying:self duration:Seconds];
}

- (void)_removeTimeObserver
{
  if (self->_playerTimeObserver)
  {
    v3 = [(NUAVPlayerController *)self player];
    [v3 removeTimeObserver:self->_playerTimeObserver];

    playerTimeObserver = self->_playerTimeObserver;
    self->_playerTimeObserver = 0;
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentTime
{
  v5 = [(NUAVPlayerController *)self player];
  v6 = v5;
  if (!v5)
  {
    v8 = MEMORY[0x277CC0898];
    *&retstr->var0 = *MEMORY[0x277CC0898];
    v7 = *(v8 + 16);
    goto LABEL_5;
  }

  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  [v5 currentTime];
  if (retstr->var2)
  {
    v10 = *&retstr->var0;
    var3 = retstr->var3;
    [(NUAVPlayerController *)self _effectiveTimeForTime:&v10];
    *&retstr->var0 = v12;
    v7 = v13;
LABEL_5:
    retstr->var3 = v7;
  }

  return result;
}

- (void)_addTimeObserver
{
  if (!self->_playerTimeObserver)
  {
    v4 = [(NUAVPlayerController *)self player];

    if (!v4)
    {
      v9 = [MEMORY[0x277CCA890] currentHandler];
      [v9 handleFailureInMethod:a2 object:self file:@"NUAVPlayerController.m" lineNumber:599 description:@"We should have an AVPlayer object here"];
    }

    v5 = [(NUAVPlayerController *)self player];
    objc_initWeak(&location, v5);

    objc_copyWeak(&to, &self->_delegate);
    objc_initWeak(&from, self);
    v6 = objc_loadWeakRetained(&location);
    CMTimeMakeWithSeconds(&v13, self->_updateInterval, 1000000000);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __40__NUAVPlayerController__addTimeObserver__block_invoke;
    v10[3] = &unk_279973C38;
    objc_copyWeak(&v11, &from);
    objc_copyWeak(&v12, &to);
    v7 = [v6 addPeriodicTimeObserverForInterval:&v13 queue:0 usingBlock:v10];

    playerTimeObserver = self->_playerTimeObserver;
    self->_playerTimeObserver = v7;

    objc_destroyWeak(&v12);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&from);
    objc_destroyWeak(&to);
    objc_destroyWeak(&location);
  }
}

void __40__NUAVPlayerController__addTimeObserver__block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 12))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      memset(&v11, 0, sizeof(v11));
      v6 = [WeakRetained videoAsset];
      v7 = v6;
      if (v6)
      {
        [v6 duration];
      }

      else
      {
        memset(&v11, 0, sizeof(v11));
      }

      memset(&v10[32], 0, 24);
      *v10 = *a2;
      [v5 _effectiveTimeForTime:v10];
      v8 = objc_loadWeakRetained((a1 + 40));
      *v10 = *&v10[32];
      Seconds = CMTimeGetSeconds(v10);
      *v10 = v11;
      [v8 playerController:v5 didUpdateElapsedTime:Seconds duration:CMTimeGetSeconds(v10)];

      *v10 = *&v10[32];
      [v5 _notifyPlaybackTimeChange:v10];
    }
  }
}

- (void)_notifyExternalPlaybackChange:(BOOL)a3
{
  observatory = self->_observatory;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__NUAVPlayerController__notifyExternalPlaybackChange___block_invoke;
  v4[3] = &__block_descriptor_33_e14_v16__0___v___8l;
  v5 = a3;
  [(NUObservatory *)observatory notifyAllObserversForKey:3 withBlock:v4];
}

- (void)_notifyPlayerStatusChange:(int64_t)a3
{
  observatory = self->_observatory;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__NUAVPlayerController__notifyPlayerStatusChange___block_invoke;
  v4[3] = &__block_descriptor_40_e14_v16__0___v___8l;
  v4[4] = a3;
  [(NUObservatory *)observatory notifyAllObserversForKey:2 withBlock:v4];
}

- (void)_notifyPlaybackTimeChange:(id *)a3
{
  observatory = self->_observatory;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__NUAVPlayerController__notifyPlaybackTimeChange___block_invoke;
  v4[3] = &__block_descriptor_56_e14_v16__0___v___8l;
  v5 = *a3;
  [(NUObservatory *)observatory notifyAllObserversForKey:1 withBlock:v4];
}

uint64_t __50__NUAVPlayerController__notifyPlaybackTimeChange___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  return v2(a2, &v4);
}

- (void)_notifyPlaybackRateChange:(float)a3
{
  observatory = self->_observatory;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__NUAVPlayerController__notifyPlaybackRateChange___block_invoke;
  v4[3] = &__block_descriptor_36_e14_v16__0___v___8l;
  v5 = a3;
  [(NUObservatory *)observatory notifyAllObserversForKey:0 withBlock:v4];
}

- (void)step:(int64_t)a3
{
  v6 = [(NUAVPlayerController *)self player];
  v4 = [v6 currentItem];
  v5 = v4;
  if (v4)
  {
    [v4 stepByCount:a3];
  }
}

- (void)seek:(id *)a3 toleranceBefore:(id *)a4 toleranceAfter:(id *)a5 forceSeek:(BOOL)a6 completionHandler:(id)a7
{
  v7 = a6;
  v37 = *MEMORY[0x277D85DE8];
  v12 = a7;
  v13 = [(NUAVPlayerController *)self player];
  v14 = [v13 currentItem];
  if (v14 && (![(NUAVPlayerController *)self currentlySeeking]|| v7))
  {
    memset(&v30, 0, sizeof(v30));
    videoAsset = self->_videoAsset;
    if (videoAsset)
    {
      [(AVAsset *)videoAsset duration];
    }

    v29 = *a3;
    time1 = *a3;
    time2 = v30;
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      time1 = *a3;
      v23 = *MEMORY[0x277CC08F0];
      *&time2.value = *MEMORY[0x277CC08F0];
      v16 = *(MEMORY[0x277CC08F0] + 16);
      time2.epoch = v16;
      if (CMTimeCompare(&time1, &time2) < 0)
      {
        *&v29.var0 = v23;
        v29.var3 = v16;
      }
    }

    else
    {
      [v14 duration];
    }

    self->_currentSeekTime = v29;
    if (*MEMORY[0x277D2D078] != -1)
    {
      dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_196);
    }

    v17 = *MEMORY[0x277D2D088];
    if (os_log_type_enabled(*MEMORY[0x277D2D088], OS_LOG_TYPE_DEBUG))
    {
      time1 = *a3;
      v18 = v17;
      Seconds = CMTimeGetSeconds(&time1);
      time1 = *a4;
      v20 = CMTimeGetSeconds(&time1);
      time1 = *a5;
      v21 = CMTimeGetSeconds(&time1);
      LODWORD(time1.value) = 134219010;
      v22 = @"NO";
      *(&time1.value + 4) = self;
      LOWORD(time1.flags) = 2048;
      if (v7)
      {
        v22 = @"YES";
      }

      *(&time1.flags + 2) = Seconds;
      HIWORD(time1.epoch) = 2048;
      v32 = v20;
      v33 = 2048;
      v34 = v21;
      v35 = 2112;
      v36 = v22;
      _os_log_debug_impl(&dword_25BD29000, v18, OS_LOG_TYPE_DEBUG, "<%p> seekToTime:%f toleranceBefore:%f toleranceAfter:%f forceSeek:%@", &time1, 0x34u);
    }

    [v14 cancelPendingSeeks];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __88__NUAVPlayerController_seek_toleranceBefore_toleranceAfter_forceSeek_completionHandler___block_invoke;
    v26[3] = &unk_279973B90;
    v26[4] = self;
    v27 = v12;
    time1 = v29;
    time2 = *a4;
    v24 = *&a5->var0;
    var3 = a5->var3;
    [v14 seekToTime:&time1 toleranceBefore:&time2 toleranceAfter:&v24 completionHandler:v26];
  }
}

uint64_t __88__NUAVPlayerController_seek_toleranceBefore_toleranceAfter_forceSeek_completionHandler___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = MEMORY[0x277CC0898];
    *(v2 + 96) = *MEMORY[0x277CC0898];
    *(v2 + 112) = *(v3 + 16);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)seek:(id *)a3 toleranceBefore:(id *)a4 toleranceAfter:(id *)a5 forceSeek:(BOOL)a6
{
  v8 = *a3;
  v7 = *a4;
  v6 = *a5;
  [(NUAVPlayerController *)self seek:&v8 toleranceBefore:&v7 toleranceAfter:&v6 forceSeek:a6 completionHandler:0];
}

- (void)seek:(id *)a3 toleranceBefore:(id *)a4 toleranceAfter:(id *)a5
{
  v7 = *a3;
  v6 = *a4;
  v5 = *a4;
  [(NUAVPlayerController *)self seek:&v7 toleranceBefore:&v6 toleranceAfter:&v5 forceSeek:0];
}

- (void)seekBack
{
  v3 = [(NUAVPlayerController *)self player];
  v4 = [v3 currentItem];
  v5 = v4;
  if (v4)
  {
    memset(&v13, 0, sizeof(v13));
    [v4 currentTime];
    memset(&v12, 0, sizeof(v12));
    CMTimeMake(&v12, 10, 1);
    memset(&v11, 0, sizeof(v11));
    lhs = v13;
    rhs = v12;
    CMTimeSubtract(&v11, &lhs, &rhs);
    lhs = v11;
    v8 = *MEMORY[0x277CC08F0];
    *&rhs.value = *MEMORY[0x277CC08F0];
    v6 = *(MEMORY[0x277CC08F0] + 16);
    rhs.epoch = v6;
    if (CMTimeCompare(&lhs, &rhs) == -1)
    {
      *&v11.value = v8;
      v11.epoch = v6;
    }

    v7 = [(NUAVPlayerController *)self player];
    lhs = v11;
    [v7 seekToTime:&lhs];
  }
}

- (void)seekForward
{
  v3 = [(NUAVPlayerController *)self player];
  v4 = [v3 currentItem];
  v5 = v4;
  if (v4)
  {
    memset(&v12[1], 0, sizeof(CMTime));
    [v4 duration];
    memset(v12, 0, 24);
    [v5 currentTime];
    memset(&v11, 0, sizeof(v11));
    CMTimeMake(&v11, 30, 1);
    memset(&v10, 0, sizeof(v10));
    lhs = v12[0];
    rhs = v11;
    CMTimeAdd(&v10, &lhs, &rhs);
    lhs = v10;
    rhs = v12[1];
    if (CMTimeCompare(&lhs, &rhs) >= 1)
    {
      CMTimeMake(&rhs, 10, 1);
      v7 = v12[1];
      CMTimeSubtract(&lhs, &v7, &rhs);
      v10 = lhs;
    }

    v6 = [(NUAVPlayerController *)self player];
    lhs = v10;
    [v6 seekToTime:&lhs];
  }
}

- (void)setLoopsVideo:(BOOL)a3
{
  v30 = *MEMORY[0x277D85DE8];
  if (self->_loopsVideo != a3)
  {
    v3 = a3;
    if (self->_videoAsset)
    {
      [(NUAVPlayerController *)self _removePlayerKVO];
      v5 = [(NUAVPlayerController *)self _playerItemsWithVideoAsset:self->_videoAsset videoComposition:self->_videoComposition audioMix:self->_audioMix loopsVideo:v3];
      v6 = [(NUAVPlayerController *)self player];
      [v6 rate];
      v8 = v7;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v9 = [v6 items];
      v10 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v25;
        do
        {
          v13 = 0;
          do
          {
            if (*v25 != v12)
            {
              objc_enumerationMutation(v9);
            }

            [(NUAVPlayerController *)self _removePlayerItemKVO:*(*(&v24 + 1) + 8 * v13++)];
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
        }

        while (v11);
      }

      [v6 removeAllItems];
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v14 = v5;
      v15 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v21;
        do
        {
          v18 = 0;
          do
          {
            if (*v21 != v17)
            {
              objc_enumerationMutation(v14);
            }

            [v6 insertItem:*(*(&v20 + 1) + 8 * v18++) afterItem:{0, v20}];
          }

          while (v16 != v18);
          v16 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
        }

        while (v16);
      }

      [(AVPlayer *)self->_player setActionAtItemEnd:v3 ^ 1];
      LODWORD(v19) = v8;
      [v6 setRate:v19];
      [(NUAVPlayerController *)self _addPlayerKVO];
    }

    self->_loopsVideo = v3;
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v47 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (kPlayerItemStatusCtx == a6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v11;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
    v16 = [v13 objectForKey:*MEMORY[0x277CCA2F0]];
    v17 = [v16 integerValue];

    if (v17 == 2)
    {
      if (*MEMORY[0x277D2D078] != -1)
      {
        dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_196);
      }

      v38 = *MEMORY[0x277D2D088];
      if (!os_log_type_enabled(*MEMORY[0x277D2D088], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_48;
      }

      v37 = v38;
      v39 = [v15 error];
      *buf = 134218242;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = v39;
      _os_log_debug_impl(&dword_25BD29000, v37, OS_LOG_TYPE_DEBUG, "<%p> AVPlayerStatusFailed with error %@", buf, 0x16u);
    }

    else
    {
      if (v17 != 1)
      {
        if (!v17)
        {
          if (*MEMORY[0x277D2D078] != -1)
          {
            dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_196);
          }

          v18 = *MEMORY[0x277D2D088];
          if (os_log_type_enabled(*MEMORY[0x277D2D088], OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            *&buf[4] = self;
            _os_log_debug_impl(&dword_25BD29000, v18, OS_LOG_TYPE_DEBUG, "<%p> AVPlayerStatusUnknown", buf, 0xCu);
          }
        }

        goto LABEL_48;
      }

      if (*MEMORY[0x277D2D078] != -1)
      {
        dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_196);
      }

      v33 = *MEMORY[0x277D2D088];
      if (os_log_type_enabled(*MEMORY[0x277D2D088], OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        *&buf[4] = self;
        _os_log_debug_impl(&dword_25BD29000, v33, OS_LOG_TYPE_DEBUG, "<%p> AVPlayerStatusReadyToPlay", buf, 0xCu);
      }

      v34 = [(NUAVPlayerController *)self player];
      v35 = [v34 currentItem];
      v36 = [v35 isEqual:v11];

      if (!v36)
      {
        goto LABEL_48;
      }

      v37 = [(NUAVPlayerController *)self delegate];
      [v37 playerControllerIsReadyForPlayback:self];
    }

LABEL_48:
    goto LABEL_49;
  }

  if (kPlayerRateCtx == a6)
  {
    v19 = [v12 objectForKey:*MEMORY[0x277CCA2F0]];
    [v19 floatValue];
    v21 = v20;

    if (*MEMORY[0x277D2D078] != -1)
    {
      dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_196);
    }

    v22 = *MEMORY[0x277D2D088];
    if (os_log_type_enabled(*MEMORY[0x277D2D088], OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = v21;
      _os_log_debug_impl(&dword_25BD29000, v22, OS_LOG_TYPE_DEBUG, "<%p> rate %g", buf, 0x16u);
    }

    *&v23 = v21;
    [(NUAVPlayerController *)self _notifyPlaybackRateChange:v23];
    v24 = [(NUAVPlayerController *)self player];
    v25 = [v24 currentItem];
    v26 = [v25 videoComposition];
    v27 = [v26 instructions];
    v28 = [v27 firstObject];

    if (v28)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *&v29 = v21;
        [v28 setPlaybackRate:v29];
      }
    }
  }

  else if (kPlayerStatusCtx == a6)
  {
    v30 = [v12 objectForKey:*MEMORY[0x277CCA2F0]];
    v31 = [v30 integerValue];

    if (*MEMORY[0x277D2D078] != -1)
    {
      dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_196);
    }

    v32 = *MEMORY[0x277D2D088];
    if (os_log_type_enabled(*MEMORY[0x277D2D088], OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      *&buf[4] = self;
      *&buf[12] = 1024;
      *&buf[14] = v31;
      _os_log_debug_impl(&dword_25BD29000, v32, OS_LOG_TYPE_DEBUG, "<%p> status %d", buf, 0x12u);
    }

    [(NUAVPlayerController *)self _notifyPlayerStatusChange:v31];
  }

  else
  {
    if (kPlayerCurrentItemCtx != a6)
    {
      if (kExternalPlaybackCtx == a6)
      {
        v42 = [v12 objectForKey:*MEMORY[0x277CCA2F0]];
        v43 = [v42 BOOLValue];

        if (*MEMORY[0x277D2D078] != -1)
        {
          dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_196);
        }

        v44 = *MEMORY[0x277D2D088];
        if (os_log_type_enabled(*MEMORY[0x277D2D088], OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218240;
          *&buf[4] = self;
          *&buf[12] = 1024;
          *&buf[14] = v43;
          _os_log_debug_impl(&dword_25BD29000, v44, OS_LOG_TYPE_DEBUG, "<%p> external playback active %d", buf, 0x12u);
        }

        [(NUAVPlayerController *)self _notifyExternalPlaybackChange:v43];
      }

      else
      {
        v45.receiver = self;
        v45.super_class = NUAVPlayerController;
        [(NUAVPlayerController *)&v45 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
      }

      goto LABEL_49;
    }

    if (*MEMORY[0x277D2D078] != -1)
    {
      dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_196);
    }

    v40 = *MEMORY[0x277D2D088];
    if (os_log_type_enabled(*MEMORY[0x277D2D088], OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      *&buf[4] = self;
      _os_log_debug_impl(&dword_25BD29000, v40, OS_LOG_TYPE_DEBUG, "<%p> kPlayerCurrentItemCtx", buf, 0xCu);
    }

    if (self->_loopsVideo)
    {
      v15 = [v13 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
      if (v15)
      {
        [(NUAVPlayerController *)self _removePlayerKVO];
        *buf = *MEMORY[0x277CC08F0];
        *&buf[16] = *(MEMORY[0x277CC08F0] + 16);
        [v15 seekToTime:buf completionHandler:&__block_literal_global];
        v41 = [(NUAVPlayerController *)self player];
        [v41 insertItem:v15 afterItem:0];

        [(NUAVPlayerController *)self _addPlayerKVO];
      }

      goto LABEL_48;
    }
  }

LABEL_49:
}

- (void)updateAppliesPerFrameHDRDisplayMetadata:(BOOL)a3
{
  v24 = *MEMORY[0x277D85DE8];
  self->_appliesPerFrameHDRDisplayMetadata = a3;
  AlwaysApplyPerFrameHDRDisplayMetadata();
  self->_appliesPerFrameHDRDisplayMetadata = 1;
  v4 = [(NUAVPlayerController *)self player];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 items];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v15 + 1) + 8 * i) setAppliesPerFrameHDRDisplayMetadata:self->_appliesPerFrameHDRDisplayMetadata];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v7);
  }

  if (*MEMORY[0x277D2D078] != -1)
  {
    dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_196);
  }

  v10 = *MEMORY[0x277D2D088];
  if (os_log_type_enabled(*MEMORY[0x277D2D088], OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = [v4 items];
    v13 = [v12 count];
    v14 = @"view ignoring dolby metadata";
    if (self->_appliesPerFrameHDRDisplayMetadata)
    {
      v14 = @"view with dolby metadata";
    }

    *buf = 134218242;
    v20 = v13;
    v21 = 2112;
    v22 = v14;
    _os_log_impl(&dword_25BD29000, v11, OS_LOG_TYPE_DEFAULT, "Updated %lu items to %@", buf, 0x16u);
  }
}

- (void)updateAudioMix:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_audioMix != v5)
  {
    objc_storeStrong(&self->_audioMix, a3);
    v6 = [(NUAVPlayerController *)self loopsVideo];
    if (v5 && v6)
    {
      v19 = 0;
      v7 = [MEMORY[0x277D2D048] repeatAudio:v5 count:10 error:&v19];
      v8 = v19;
      if (!v7)
      {
        if (*MEMORY[0x277D2D078] != -1)
        {
          dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_196);
        }

        v14 = *MEMORY[0x277D2D088];
        if (os_log_type_enabled(*MEMORY[0x277D2D088], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v22 = v8;
          _os_log_error_impl(&dword_25BD29000, v14, OS_LOG_TYPE_ERROR, "Failed to loop audio mix, error: %@", buf, 0xCu);
        }

        goto LABEL_14;
      }

      v5 = v7;
    }

    v8 = [(NUAVPlayerController *)self player];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [v8 items];
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v15 + 1) + 8 * i) setAudioMix:v5];
        }

        v11 = [v9 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v11);
    }

LABEL_14:
  }
}

- (void)updateWithVideoPrepareNodeFromVideoComposition:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = [a3 instructions];
  v5 = [v4 firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NUAVPlayerController *)self player];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v18 = v28 = 0u;
    obj = [v18 items];
    v6 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v6)
    {
      v7 = v6;
      v20 = *v26;
      do
      {
        v8 = 0;
        do
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v25 + 1) + 8 * v8);
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v10 = [v9 videoComposition];
          v11 = [v10 instructions];

          v12 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v22;
            do
            {
              v15 = 0;
              do
              {
                if (*v22 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v21 + 1) + 8 * v15);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v17 = [v5 videoRenderPrepareNode];
                  [v16 setVideoRenderPrepareNode:v17];
                }

                ++v15;
              }

              while (v13 != v15);
              v13 = [v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
            }

            while (v13);
          }

          ++v8;
        }

        while (v8 != v7);
        v7 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v7);
    }
  }
}

- (void)updateVideoComposition:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_videoComposition != v5)
  {
    objc_storeStrong(&self->_videoComposition, a3);
    v6 = [(NUAVPlayerController *)self loopsVideo];
    if (v5 && v6)
    {
      v19 = 0;
      v7 = [MEMORY[0x277D2D048] repeatVideoComposition:v5 count:10 error:&v19];
      v8 = v19;
      if (!v7)
      {
        if (*MEMORY[0x277D2D078] != -1)
        {
          dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_196);
        }

        v14 = *MEMORY[0x277D2D088];
        if (os_log_type_enabled(*MEMORY[0x277D2D088], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v22 = v8;
          _os_log_error_impl(&dword_25BD29000, v14, OS_LOG_TYPE_ERROR, "Failed to repeat video composition, error: %@", buf, 0xCu);
        }

        goto LABEL_14;
      }

      v5 = v7;
    }

    v8 = [(NUAVPlayerController *)self player];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [v8 items];
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v15 + 1) + 8 * i) setVideoComposition:v5];
        }

        v11 = [v9 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v11);
    }

LABEL_14:
  }
}

- (id)_loopingPlayerItemWithVideoAsset:(id)a3 videoComposition:(id)a4 audioMix:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v22 = 0;
  v10 = [MEMORY[0x277D2D048] repeatVideo:a3 count:10 error:&v22];
  v11 = v22;
  if (v10)
  {
    if (v8)
    {
      v21 = 0;
      v12 = [MEMORY[0x277D2D048] repeatVideoComposition:v8 count:10 error:&v21];
      v13 = v21;

      if (!v12)
      {
        if (*MEMORY[0x277D2D078] != -1)
        {
          dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_196);
        }

        v18 = *MEMORY[0x277D2D088];
        if (os_log_type_enabled(*MEMORY[0x277D2D088], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v24 = v13;
          _os_log_error_impl(&dword_25BD29000, v18, OS_LOG_TYPE_ERROR, "Failed to loop video composition %@", buf, 0xCu);
        }

        v16 = 0;
        goto LABEL_25;
      }

      v11 = v13;
      if (v9)
      {
LABEL_5:
        v20 = 0;
        v14 = [MEMORY[0x277D2D048] repeatAudio:v9 count:10 error:&v20];
        v13 = v20;

        if (!v14)
        {
          if (*MEMORY[0x277D2D078] != -1)
          {
            dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_196);
          }

          v15 = *MEMORY[0x277D2D088];
          if (os_log_type_enabled(*MEMORY[0x277D2D088], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v24 = v13;
            _os_log_error_impl(&dword_25BD29000, v15, OS_LOG_TYPE_ERROR, "Failed to loop audio mix %@", buf, 0xCu);
          }

          v16 = 0;
          goto LABEL_19;
        }

LABEL_18:
        v16 = [(NUAVPlayerController *)self _playerItemWithVideoAsset:v10 videoComposition:v12 audioMix:v14];

LABEL_19:
LABEL_25:
        v11 = v13;
        goto LABEL_26;
      }
    }

    else
    {
      v12 = 0;
      if (v9)
      {
        goto LABEL_5;
      }
    }

    v14 = 0;
    v13 = v11;
    goto LABEL_18;
  }

  if (*MEMORY[0x277D2D078] != -1)
  {
    dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_196);
  }

  v17 = *MEMORY[0x277D2D088];
  if (os_log_type_enabled(*MEMORY[0x277D2D088], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v24 = v11;
    _os_log_error_impl(&dword_25BD29000, v17, OS_LOG_TYPE_ERROR, "Failed to loop video composition %@", buf, 0xCu);
  }

  v16 = 0;
LABEL_26:

  return v16;
}

- (id)_playerItemWithVideoAsset:(id)a3 videoComposition:(id)a4 audioMix:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CE65B0];
  v9 = a5;
  v10 = a4;
  v11 = [v8 playerItemWithAsset:a3];
  [v11 setVideoComposition:v10];

  [v11 setAudioMix:v9];
  [v11 setSeekingWaitsForVideoCompositionRendering:1];
  [v11 setAllowedAudioSpatializationFormats:4];
  AlwaysApplyPerFrameHDRDisplayMetadata();
  self->_appliesPerFrameHDRDisplayMetadata = 1;
  [v11 setAppliesPerFrameHDRDisplayMetadata:1];
  if (*MEMORY[0x277D2D078] != -1)
  {
    dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_196);
  }

  v12 = *MEMORY[0x277D2D088];
  if (os_log_type_enabled(*MEMORY[0x277D2D088], OS_LOG_TYPE_DEFAULT))
  {
    if (self->_appliesPerFrameHDRDisplayMetadata)
    {
      v13 = @"view with dolby metadata";
    }

    else
    {
      v13 = @"view ignoring dolby metadata";
    }

    v15 = 138412290;
    v16 = v13;
    _os_log_impl(&dword_25BD29000, v12, OS_LOG_TYPE_DEFAULT, "Created 1 item to %@", &v15, 0xCu);
  }

  return v11;
}

- (id)_playerItemsWithVideoAsset:(id)a3 videoComposition:(id)a4 audioMix:(id)a5 loopsVideo:(BOOL)a6
{
  v6 = a6;
  v25 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v6)
  {
    v13 = [(NUAVPlayerController *)self _loopingPlayerItemWithVideoAsset:v10 videoComposition:v11 audioMix:v12];
    if (v13)
    {
      v14 = v13;
      v22[0] = v13;
      v15 = [v13 copy];
      v22[1] = v15;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];

LABEL_6:
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __88__NUAVPlayerController__playerItemsWithVideoAsset_videoComposition_audioMix_loopsVideo___block_invoke;
      v20[3] = &unk_279973B48;
      v20[4] = self;
      [v16 enumerateObjectsUsingBlock:v20];

      goto LABEL_12;
    }
  }

  else
  {
    v17 = [(NUAVPlayerController *)self _playerItemWithVideoAsset:v10 videoComposition:v11 audioMix:v12];
    if (v17)
    {
      v14 = v17;
      v21 = v17;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
      goto LABEL_6;
    }
  }

  if (*MEMORY[0x277D2D078] != -1)
  {
    dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_196);
  }

  v18 = *MEMORY[0x277D2D088];
  if (os_log_type_enabled(*MEMORY[0x277D2D088], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v24 = v10;
    _os_log_error_impl(&dword_25BD29000, v18, OS_LOG_TYPE_ERROR, "Failed to create player item from asset: %@", buf, 0xCu);
  }

  v16 = 0;
LABEL_12:

  return v16;
}

- (BOOL)prepareWithAVAsset:(id)a3 videoComposition:(id)a4 audioMix:(id)a5 loopsVideo:(BOOL)a6 seekToTime:(id *)a7
{
  v7 = a6;
  v64 = *MEMORY[0x277D85DE8];
  v13 = a3;
  obj = a4;
  v14 = a4;
  v39 = a5;
  v15 = a5;
  player = self->_player;
  v42 = v13;
  v43 = v14;
  v44 = v15;
  if (player)
  {
    [(NUAVPlayerController *)self _removeTimeObserver];
    [(NUAVPlayerController *)self _removePlayerKVO];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v37 = [MEMORY[0x277CCA890] currentHandler];
      [v37 handleFailureInMethod:a2 object:self file:@"NUAVPlayerController.m" lineNumber:132 description:@"expected an AVQueuePlayer"];
    }

    v16 = self->_player;
    v17 = [(AVPlayer *)v16 items];
    v18 = [v17 copy];

    v19 = [(NUAVPlayerController *)self _playerItemsWithVideoAsset:v42 videoComposition:v14 audioMix:v44 loopsVideo:v7];
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v20 = [v19 countByEnumeratingWithState:&v58 objects:v63 count:16];
    if (v20)
    {
      v21 = *v59;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v59 != v21)
          {
            objc_enumerationMutation(v19);
          }

          [(AVPlayer *)v16 insertItem:*(*(&v58 + 1) + 8 * i) afterItem:0];
        }

        v20 = [v19 countByEnumeratingWithState:&v58 objects:v63 count:16];
      }

      while (v20);
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v23 = v18;
    v24 = [v23 countByEnumeratingWithState:&v54 objects:v62 count:16];
    if (v24)
    {
      v25 = *v55;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v55 != v25)
          {
            objc_enumerationMutation(v23);
          }

          v27 = *(*(&v54 + 1) + 8 * j);
          [(NUAVPlayerController *)self _removePlayerItemKVO:v27 removeFromArray:1];
          [(AVPlayer *)v16 removeItem:v27];
        }

        v24 = [v23 countByEnumeratingWithState:&v54 objects:v62 count:16];
      }

      while (v24);
    }
  }

  else
  {
    v28 = [(NUAVPlayerController *)self _playerItemsWithVideoAsset:v13 videoComposition:v14 audioMix:v15 loopsVideo:v7];
    v29 = [objc_alloc(MEMORY[0x277CE65F8]) initWithItems:v28];
    [(AVPlayer *)v29 setPreventsDisplaySleepDuringVideoPlayback:0];
    [(AVPlayer *)v29 setActionAtItemEnd:v7 ^ 1];
    [(AVPlayer *)v29 setMuted:self->_muted];
    v30 = self->_player;
    self->_player = v29;
    v31 = v29;

    v32 = [MEMORY[0x277CB83F8] auxiliarySession];
    v33 = v32;
    v34 = MEMORY[0x277CB8020];
    if (!v7)
    {
      v34 = MEMORY[0x277CB8030];
    }

    [v32 setCategory:*v34 error:0];
    [(AVPlayer *)self->_player setAudioSession:v33];
  }

  v35 = MEMORY[0x277CC0898];
  *&self->_currentSeekTime.value = *MEMORY[0x277CC0898];
  self->_currentSeekTime.epoch = *(v35 + 16);
  objc_storeStrong(&self->_videoAsset, a3);
  objc_storeStrong(&self->_videoComposition, obj);
  objc_storeStrong(&self->_audioMix, v39);
  self->_loopsVideo = v7;
  [(NUAVPlayerController *)self _addPlayerKVO];
  if (a7->var2)
  {
    objc_initWeak(&location, self);
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __91__NUAVPlayerController_prepareWithAVAsset_videoComposition_audioMix_loopsVideo_seekToTime___block_invoke;
    v51[3] = &unk_279973F50;
    objc_copyWeak(&v52, &location);
    v49 = *&a7->var0;
    var3 = a7->var3;
    v47 = *MEMORY[0x277CC08F0];
    v48 = *(MEMORY[0x277CC08F0] + 16);
    v45 = v47;
    v46 = v48;
    [(NUAVPlayerController *)self seek:&v49 toleranceBefore:&v47 toleranceAfter:&v45 forceSeek:1 completionHandler:v51];
    objc_destroyWeak(&v52);
    objc_destroyWeak(&location);
  }

  else
  {
    [(NUAVPlayerController *)self _addTimeObserver];
  }

  return player == 0;
}

void __91__NUAVPlayerController_prepareWithAVAsset_videoComposition_audioMix_loopsVideo_seekToTime___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _addTimeObserver];
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_playerItemObservations;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * v7) playerItem];
        [(NUAVPlayerController *)self _removePlayerItemKVO:v8 removeFromArray:0];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(NUAVPlayerController *)self _removePlayerKVO];
  [(NUAVPlayerController *)self _removeTimeObserver];
  v9.receiver = self;
  v9.super_class = NUAVPlayerController;
  [(NUAVPlayerController *)&v9 dealloc];
}

- (NUAVPlayerController)init
{
  v8.receiver = self;
  v8.super_class = NUAVPlayerController;
  v2 = [(NUAVPlayerController *)&v8 init];
  v2->_updateInterval = 0.0333333333;
  v3 = objc_opt_new();
  playerItemObservations = v2->_playerItemObservations;
  v2->_playerItemObservations = v3;

  v5 = objc_alloc_init(MEMORY[0x277D2CFE8]);
  observatory = v2->_observatory;
  v2->_observatory = v5;

  v2->_appliesPerFrameHDRDisplayMetadata = 0;
  return v2;
}

@end