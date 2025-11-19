@interface NUMediaViewRenderer
+ (BOOL)_forceUpdateForNewVideoComposition:(id)a3 previousComposition:(id)a4 newAsset:(id)a5 previousAsset:(id)a6 isPlaying:(BOOL)a7;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentSeekTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)mediaDuration;
- (BOOL)_isVideoSourceChangedInComposition:(id)a3;
- (BOOL)isReady;
- (BOOL)isZoomedToFit;
- (BOOL)pipelineFilersHaveChanged;
- (CGPoint)convertPoint:(CGPoint)a3 fromImageToView:(id)a4;
- (CGPoint)convertPoint:(CGPoint)a3 toImageFromView:(id)a4;
- (CGRect)_scrollBounds;
- (CGRect)_zoomTargetRect;
- (CGRect)convertRect:(CGRect)a3 fromImageToView:(id)a4;
- (CGRect)convertRect:(CGRect)a3 toImageFromView:(id)a4;
- (CGSize)overrideZoomToFitSize;
- (CGSize)targetSize;
- (NSArray)loadedTimeRanges;
- (NUMediaView)mediaView;
- (NUMediaViewRenderer)init;
- (NUMediaViewRenderer)initWithMediaView:(id)a3;
- (double)_lastRenderDuration;
- (double)_targetZoomScale;
- (double)playbackRate;
- (id)_backfillRenderRequestForComposition:(id)a3;
- (id)_backfillRenderRequestForMedia:(id)a3;
- (id)_backfillRenderResponseHandler;
- (id)_livePhotoFromResponse:(id)a3;
- (id)_livePhotoRenderResponseHandler;
- (id)_regionPolicyForZoomTargetRect:(CGRect)a3;
- (id)_roiRenderRequestForComposition:(id)a3;
- (id)_roiRenderRequestForMedia:(id)a3;
- (id)_roiRenderResponseHandler;
- (id)_scalePolicyForVideoCompositionRender;
- (id)_updateImageLayer:(id)a3 withRenderResponse:(id)a4;
- (id)_videoFrameImageRenderResponseHandler;
- (id)_videoRenderRequestForMedia:(id)a3;
- (id)_videoRenderResponseHandler;
- (id)addExternalPlaybackObserver:(id)a3;
- (id)addPlaybackStateObserver:(id)a3;
- (id)addPlaybackTimeObserver:(id)a3;
- (id)cacheVideoRenderFilter;
- (int64_t)_playbackStateFromPlayerStatus:(int64_t)a3 rate:(float)a4;
- (int64_t)playbackState;
- (void)_addFullExtentConstraintsForView:(id)a3;
- (void)_beginAnimating;
- (void)_coalesceUpdateLivePhotoComposition:(id)a3;
- (void)_coalesceUpdateVideoComposition:(id)a3;
- (void)_endAnimating;
- (void)_notifyExternalPlaybackChange:(BOOL)a3;
- (void)_notifyPlaybackStateChange:(int64_t)a3;
- (void)_notifyPlaybackTimeChange:(id *)a3;
- (void)_playerStatusDidChange:(int64_t)a3;
- (void)_releaseAVObjects;
- (void)_renderFinishedWithGeometry:(id)a3 layer:(id)a4;
- (void)_setDisplayType:(unint64_t)a3;
- (void)_setupAVPlayerController;
- (void)_setupRenderRequest:(id)a3;
- (void)_tearDownAVPlayerController;
- (void)_updateBackfillLayerWithLatestRenderResponse;
- (void)_updateBackfillLayerWithRenderResponse:(id)a3;
- (void)_updateDisplayForMediaType:(int64_t)a3;
- (void)_updateImageRenderForComposition:(id)a3;
- (void)_updateLivePhotoComposition:(id)a3;
- (void)_updateLivePhotoViewWithLatestRenderResponse;
- (void)_updateLivePhotoViewWithRenderResponse:(id)a3;
- (void)_updateLivePhotoWithResponse:(id)a3;
- (void)_updateROILayerWithLatestRenderResponse;
- (void)_updateROILayerWithRenderResponse:(id)a3;
- (void)_updateVideoComposition:(id)a3;
- (void)_updateVideoPlayerWithLatestRenderResponse;
- (void)_updateVideoPlayerWithRenderResponse:(id)a3;
- (void)_updateVideoViewLayoutWithGeometry:(id)a3;
- (void)_updateVideoWithResult:(id)a3 sourceChanged:(BOOL)a4;
- (void)beginZooming;
- (void)cancelPendingRenders;
- (void)endZooming;
- (void)livePhotoView:(id)a3 didEndPlaybackWithStyle:(int64_t)a4;
- (void)livePhotoView:(id)a3 willBeginPlaybackWithStyle:(int64_t)a4;
- (void)livePhotoViewDidBeginScrubbing:(id)a3;
- (void)livePhotoViewDidEndScrubbing:(id)a3;
- (void)play;
- (void)removeObserver:(id)a3;
- (void)seekToTime:(id *)a3 exact:(BOOL)a4 forceSeek:(BOOL)a5;
- (void)seekToTime:(id *)a3 toleranceBefore:(id *)a4 toleranceAfter:(id *)a5;
- (void)seekToTime:(id *)a3 toleranceBefore:(id *)a4 toleranceAfter:(id *)a5 forceSeek:(BOOL)a6;
- (void)setMuted:(BOOL)a3;
- (void)setPipelineFilters:(id)a3;
- (void)setPlaybackMode:(int64_t)a3;
- (void)setPlaybackRate:(double)a3;
- (void)setVideoEnabled:(BOOL)a3 animated:(BOOL)a4;
- (void)stepByCount:(int64_t)a3;
- (void)sweep:(id)a3 withBlock:(id)a4;
- (void)updateComposition:(id)a3;
- (void)updateMedia:(id)a3 displayType:(int64_t)a4;
- (void)wait;
@end

@implementation NUMediaViewRenderer

- (CGSize)overrideZoomToFitSize
{
  width = self->_overrideZoomToFitSize.width;
  height = self->_overrideZoomToFitSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (NUMediaView)mediaView
{
  WeakRetained = objc_loadWeakRetained(&self->_mediaView);

  return WeakRetained;
}

- (void)livePhotoViewDidEndScrubbing:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_mediaView);
  v5 = [WeakRetained _livePhotoView];
  [v5 setHidden:1];

  [(NUMediaViewRenderer *)self setLivePhotoViewIsScrubbing:0];
}

- (void)livePhotoViewDidBeginScrubbing:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_mediaView);
  v5 = [WeakRetained _livePhotoView];
  [v5 setHidden:0];

  [(NUMediaViewRenderer *)self setLivePhotoViewIsScrubbing:1];
}

- (void)livePhotoView:(id)a3 didEndPlaybackWithStyle:(int64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_mediaView);
  v4 = [WeakRetained _livePhotoView];
  [v4 setHidden:1];

  [WeakRetained _livephotoPlaybackDidEnd];
}

- (void)livePhotoView:(id)a3 willBeginPlaybackWithStyle:(int64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_mediaView);
  v4 = [WeakRetained _livePhotoView];
  [v4 setHidden:0];

  [WeakRetained _livephotoPlaybackWillBegin];
}

- (void)removeObserver:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v5 = NUAssertLogger_467();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid parameter not satisfying: %s", "observer != nil"];
      *buf = 138543362;
      v20 = v6;
      _os_log_error_impl(&dword_25BD29000, v5, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v7 = MEMORY[0x277D2CF60];
    specific = dispatch_get_specific(*MEMORY[0x277D2CF60]);
    v9 = NUAssertLogger_467();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v10)
      {
        v13 = dispatch_get_specific(*v7);
        v14 = MEMORY[0x277CCACC8];
        v15 = v13;
        v16 = [v14 callStackSymbols];
        v17 = [v16 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v20 = v13;
        v21 = 2114;
        v22 = v17;
        _os_log_error_impl(&dword_25BD29000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v10)
    {
      v11 = [MEMORY[0x277CCACC8] callStackSymbols];
      v12 = [v11 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v20 = v12;
      _os_log_error_impl(&dword_25BD29000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v18 = v4;
  [(NUObservatory *)self->_observatory removeObserver:v4];
}

- (void)_notifyPlaybackTimeChange:(id *)a3
{
  observatory = self->_observatory;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__NUMediaViewRenderer__notifyPlaybackTimeChange___block_invoke;
  v4[3] = &unk_279974010;
  v4[4] = self;
  v5 = *a3;
  [(NUObservatory *)observatory notifyAllObserversForKey:1 withBlock:v4];
}

uint64_t __49__NUMediaViewRenderer__notifyPlaybackTimeChange___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a2 + 16);
  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  return v4(a2, v3, &v6);
}

- (id)addPlaybackTimeObserver:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v8 = NUAssertLogger_467();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid parameter not satisfying: %s", "block != nil"];
      *buf = 138543362;
      v22 = v9;
      _os_log_error_impl(&dword_25BD29000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v10 = MEMORY[0x277D2CF60];
    specific = dispatch_get_specific(*MEMORY[0x277D2CF60]);
    v12 = NUAssertLogger_467();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v13)
      {
        v16 = dispatch_get_specific(*v10);
        v17 = MEMORY[0x277CCACC8];
        v18 = v16;
        v19 = [v17 callStackSymbols];
        v20 = [v19 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v22 = v16;
        v23 = 2114;
        v24 = v20;
        _os_log_error_impl(&dword_25BD29000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      v14 = [MEMORY[0x277CCACC8] callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v22 = v15;
      _os_log_error_impl(&dword_25BD29000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = v4;
  v6 = [(NUObservatory *)self->_observatory addObserverForKey:1 queue:0 block:v4];

  return v6;
}

- (void)_notifyExternalPlaybackChange:(BOOL)a3
{
  observatory = self->_observatory;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__NUMediaViewRenderer__notifyExternalPlaybackChange___block_invoke;
  v4[3] = &unk_279973FE8;
  v4[4] = self;
  v5 = a3;
  [(NUObservatory *)observatory notifyAllObserversForKey:2 withBlock:v4];
}

- (id)addExternalPlaybackObserver:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v8 = NUAssertLogger_467();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid parameter not satisfying: %s", "block != nil"];
      *buf = 138543362;
      v22 = v9;
      _os_log_error_impl(&dword_25BD29000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v10 = MEMORY[0x277D2CF60];
    specific = dispatch_get_specific(*MEMORY[0x277D2CF60]);
    v12 = NUAssertLogger_467();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v13)
      {
        v16 = dispatch_get_specific(*v10);
        v17 = MEMORY[0x277CCACC8];
        v18 = v16;
        v19 = [v17 callStackSymbols];
        v20 = [v19 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v22 = v16;
        v23 = 2114;
        v24 = v20;
        _os_log_error_impl(&dword_25BD29000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      v14 = [MEMORY[0x277CCACC8] callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v22 = v15;
      _os_log_error_impl(&dword_25BD29000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = v4;
  v6 = [(NUObservatory *)self->_observatory addObserverForKey:2 queue:0 block:v4];

  return v6;
}

- (void)_notifyPlaybackStateChange:(int64_t)a3
{
  observatory = self->_observatory;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__NUMediaViewRenderer__notifyPlaybackStateChange___block_invoke;
  v4[3] = &unk_279973FC0;
  v4[4] = self;
  v4[5] = a3;
  [(NUObservatory *)observatory notifyAllObserversForKey:0 withBlock:v4];
}

- (id)addPlaybackStateObserver:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v8 = NUAssertLogger_467();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid parameter not satisfying: %s", "block != nil"];
      *buf = 138543362;
      v22 = v9;
      _os_log_error_impl(&dword_25BD29000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v10 = MEMORY[0x277D2CF60];
    specific = dispatch_get_specific(*MEMORY[0x277D2CF60]);
    v12 = NUAssertLogger_467();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v13)
      {
        v16 = dispatch_get_specific(*v10);
        v17 = MEMORY[0x277CCACC8];
        v18 = v16;
        v19 = [v17 callStackSymbols];
        v20 = [v19 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v22 = v16;
        v23 = 2114;
        v24 = v20;
        _os_log_error_impl(&dword_25BD29000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      v14 = [MEMORY[0x277CCACC8] callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v22 = v15;
      _os_log_error_impl(&dword_25BD29000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = v4;
  v6 = [(NUObservatory *)self->_observatory addObserverForKey:0 queue:0 block:v4];

  return v6;
}

- (void)setMuted:(BOOL)a3
{
  if (self->_muted != a3)
  {
    v4 = a3;
    v9 = [(NUMediaViewRenderer *)self nuAVPlayerController];
    if (v9)
    {
      [v9 setMuted:v4];
    }

    v6 = [(NUMediaViewRenderer *)self mediaView];
    v7 = [v6 _livePhotoView];
    v8 = [MEMORY[0x277CCABB0] numberWithBool:v4];
    [v7 setValue:v8 forKey:@"muted"];

    self->_muted = v4;
  }
}

- (void)setPlaybackMode:(int64_t)a3
{
  if (self->_playbackMode == a3)
  {
    return;
  }

  v6 = [(NUMediaViewRenderer *)self nuAVPlayerController];
  if (v6)
  {
    if (!a3)
    {
      v7 = 0;
      goto LABEL_7;
    }

    if (a3 == 1)
    {
      v7 = 1;
LABEL_7:
      v8 = v6;
      [v6 setLoopsVideo:v7];
      v6 = v8;
    }
  }

  self->_playbackMode = a3;
}

- (void)setPlaybackRate:(double)a3
{
  v4 = [(NUMediaViewRenderer *)self nuAVPlayerController];
  if (v4)
  {
    v11 = v4;
    v5 = [v4 player];
    [v5 rate];
    v7 = v6;

    v4 = v11;
    if (v7 != a3)
    {
      v9 = [v11 player];
      v8 = a3;
      *&v10 = v8;
      [v9 setRate:v10];

      v4 = v11;
    }
  }
}

- (double)playbackRate
{
  v2 = [(NUMediaViewRenderer *)self nuAVPlayerController];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 player];
    [v4 rate];
    v6 = v5;
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (void)play
{
  [(NUMediaViewRenderer *)self currentTime];
  [(NUMediaViewRenderer *)self mediaDuration];
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    [(NUMediaViewRenderer *)self setPlaybackRate:1.0];
  }

  else
  {
    objc_initWeak(&location, self);
    v3 = [(NUMediaViewRenderer *)self nuAVPlayerController];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __27__NUMediaViewRenderer_play__block_invoke;
    v5[3] = &unk_279973F50;
    objc_copyWeak(&v6, &location);
    time1 = **&MEMORY[0x277CC08F0];
    time2 = time1;
    v4 = time1;
    [v3 seek:&time1 toleranceBefore:&time2 toleranceAfter:&v4 forceSeek:1 completionHandler:v5];

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __27__NUMediaViewRenderer_play__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPlaybackRate:1.0];
}

- (void)stepByCount:(int64_t)a3
{
  v4 = [(NUMediaViewRenderer *)self nuAVPlayerController];
  if (v4)
  {
    v5 = v4;
    [v4 step:a3];
    v4 = v5;
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentSeekTime
{
  v4 = [(NUMediaViewRenderer *)self nuAVPlayerController];
  if (v4)
  {
    v6 = v4;
    [v4 currentSeekTime];
    v4 = v6;
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
  }

  return result;
}

- (void)seekToTime:(id *)a3 toleranceBefore:(id *)a4 toleranceAfter:(id *)a5 forceSeek:(BOOL)a6
{
  v6 = a6;
  v10 = [(NUMediaViewRenderer *)self nuAVPlayerController];
  v11 = v10;
  if (v10)
  {
    v16 = *&a3->var0;
    var3 = a3->var3;
    v14 = *&a4->var0;
    v15 = a4->var3;
    v12 = *&a5->var0;
    v13 = a5->var3;
    [v10 seek:&v16 toleranceBefore:&v14 toleranceAfter:&v12 forceSeek:v6];
  }
}

- (void)seekToTime:(id *)a3 toleranceBefore:(id *)a4 toleranceAfter:(id *)a5
{
  v7 = *a3;
  v6 = *a4;
  v5 = *a5;
  [(NUMediaViewRenderer *)self seekToTime:&v7 toleranceBefore:&v6 toleranceAfter:&v5 forceSeek:0];
}

- (void)seekToTime:(id *)a3 exact:(BOOL)a4 forceSeek:(BOOL)a5
{
  v5 = a5;
  memset(&v12, 0, sizeof(v12));
  if (a4)
  {
    v12 = **&MEMORY[0x277CC08F0];
  }

  else
  {
    CMTimeMake(&v12, 5, 30);
  }

  v10 = *&a3->var0;
  var3 = a3->var3;
  v9 = v12;
  v8 = v12;
  [(NUMediaViewRenderer *)self seekToTime:&v10 toleranceBefore:&v9 toleranceAfter:&v8 forceSeek:v5];
}

- (NSArray)loadedTimeRanges
{
  v2 = [(NUMediaViewRenderer *)self nuAVPlayerController];
  v3 = [v2 player];
  v4 = [v3 currentItem];

  v5 = [v4 loadedTimeRanges];

  return v5;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentTime
{
  v4 = [(NUMediaViewRenderer *)self nuAVPlayerController];
  if (v4)
  {
    v7 = v4;
    [v4 currentTime];
    v4 = v7;
  }

  else
  {
    v5 = MEMORY[0x277CC0898];
    *&retstr->var0 = *MEMORY[0x277CC0898];
    retstr->var3 = *(v5 + 16);
  }

  return result;
}

- (int64_t)_playbackStateFromPlayerStatus:(int64_t)a3 rate:(float)a4
{
  v4 = 1;
  v5 = 2;
  if (a4 != 0.0)
  {
    v5 = 3;
  }

  if (a3 == 2)
  {
    v4 = 4;
  }

  if (a3 == 1)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

- (int64_t)playbackState
{
  v3 = [(NUMediaViewRenderer *)self nuAVPlayerController];
  v4 = v3;
  if (v3 && ([v3 videoAsset], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [v4 player];
    v7 = [v6 status];
    [v6 rate];
    v8 = [(NUMediaViewRenderer *)self _playbackStateFromPlayerStatus:v7 rate:?];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)mediaDuration
{
  v8 = [(NUMediaViewRenderer *)self nuAVPlayerController];
  v4 = [v8 videoAsset];
  v5 = v4;
  if (v4)
  {
    [v4 duration];
  }

  else
  {
    v6 = MEMORY[0x277CC0898];
    *&retstr->var0 = *MEMORY[0x277CC0898];
    retstr->var3 = *(v6 + 16);
  }

  return result;
}

- (void)cancelPendingRenders
{
  v3 = [(NUSurfaceRenderRequest *)self->_backfillRenderRequest renderContext];
  [v3 cancelAllRequests];

  v4 = [(NUSurfaceRenderRequest *)self->_roiRenderRequest renderContext];
  [v4 cancelAllRequests];

  v5 = [(NULivePhotoRenderRequest *)self->_livePhotoRenderRequest renderContext];
  [v5 cancelAllRequests];

  v6 = [(NUVideoRenderRequest *)self->_videoRenderRequest renderContext];
  [v6 cancelAllRequests];
}

- (void)setVideoEnabled:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_mediaView);
  [WeakRetained setVideoPlayerVisible:v5 animated:v4];

  [(NUMediaViewRenderer *)self _setVideoEnabled:v5];
}

- (void)_addFullExtentConstraintsForView:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = MEMORY[0x277CCAAD0];
  v12 = @"v";
  v13[0] = v3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v6 = [v4 constraintsWithVisualFormat:@"H:|[v]|" options:0 metrics:0 views:v5];
  [v4 activateConstraints:v6];

  v7 = MEMORY[0x277CCAAD0];
  v10 = @"v";
  v11 = v3;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v9 = [v7 constraintsWithVisualFormat:@"V:|[v]|" options:0 metrics:0 views:v8];
  [v7 activateConstraints:v9];
}

- (id)_videoRenderRequestForMedia:(id)a3
{
  v4 = a3;
  atomic_fetch_add(&self->_videoRenderInFlightCount, 1u);
  if (!self->_videoRenderRequest)
  {
    v5 = [objc_alloc(MEMORY[0x277D2D040]) initWithMedia:v4];
    videoRenderRequest = self->_videoRenderRequest;
    self->_videoRenderRequest = v5;

    [(NUVideoRenderRequest *)self->_videoRenderRequest setSampleMode:2];
  }

  v7 = [(NUMediaViewRenderer *)self _scalePolicyForVideoCompositionRender];
  [(NUVideoRenderRequest *)self->_videoRenderRequest setScalePolicy:v7];
  [(NUVideoRenderRequest *)self->_videoRenderRequest setMedia:v4];
  v8 = self->_videoRenderRequest;
  v9 = v8;

  return v8;
}

- (id)_roiRenderRequestForMedia:(id)a3
{
  v4 = a3;
  roiRenderRequest = self->_roiRenderRequest;
  if (!roiRenderRequest)
  {
    v6 = [objc_alloc(MEMORY[0x277D2D020]) initWithMedia:v4];
    v7 = self->_roiRenderRequest;
    self->_roiRenderRequest = v6;
    v8 = v6;

    v9 = self->_roiRenderRequest;
    v10 = [objc_alloc(MEMORY[0x277D2D000]) initWithLevel:0];
    [(NUSurfaceRenderRequest *)v9 setPriority:v10];

    [(NUSurfaceRenderRequest *)self->_roiRenderRequest setShouldCoalesceUpdates:1];
    [(NUSurfaceRenderRequest *)self->_roiRenderRequest setName:@"NUMediaViewRenderer-roi"];

    roiRenderRequest = self->_roiRenderRequest;
  }

  [(NUMediaViewRenderer *)self _setupRenderRequest:roiRenderRequest];
  [(NUSurfaceRenderRequest *)self->_roiRenderRequest setMedia:v4];
  v11 = self->_roiRenderRequest;
  v12 = objc_alloc(MEMORY[0x277D2D058]);
  [(NUMediaViewRenderer *)self _targetZoomScale];
  v13 = [v12 initWithZoomFactor:?];
  [(NUSurfaceRenderRequest *)v11 setScalePolicy:v13];

  v14 = self->_roiRenderRequest;
  [(NUMediaViewRenderer *)self _zoomTargetRect];
  v15 = [(NUMediaViewRenderer *)self _regionPolicyForZoomTargetRect:?];
  [(NUSurfaceRenderRequest *)v14 setRegionPolicy:v15];

  NUAbsoluteTime();
  self->_lastZoomRenderTime = v16;
  v17 = self->_roiRenderRequest;
  v18 = v17;

  return v17;
}

- (id)_roiRenderRequestForComposition:(id)a3
{
  v4 = a3;
  roiRenderRequest = self->_roiRenderRequest;
  if (!roiRenderRequest)
  {
    v6 = [objc_alloc(MEMORY[0x277D2D020]) initWithComposition:v4];
    v7 = self->_roiRenderRequest;
    self->_roiRenderRequest = v6;
    v8 = v6;

    v9 = self->_roiRenderRequest;
    v10 = [objc_alloc(MEMORY[0x277D2D000]) initWithLevel:0];
    [(NUSurfaceRenderRequest *)v9 setPriority:v10];

    [(NUSurfaceRenderRequest *)self->_roiRenderRequest setShouldCoalesceUpdates:1];
    [(NUSurfaceRenderRequest *)self->_roiRenderRequest setName:@"NUMediaViewRenderer-roi"];

    roiRenderRequest = self->_roiRenderRequest;
  }

  [(NUSurfaceRenderRequest *)roiRenderRequest setComposition:v4];
  v11 = self->_roiRenderRequest;
  v12 = objc_alloc(MEMORY[0x277D2D058]);
  [(NUMediaViewRenderer *)self _targetZoomScale];
  v13 = [v12 initWithZoomFactor:?];
  [(NUSurfaceRenderRequest *)v11 setScalePolicy:v13];

  v14 = self->_roiRenderRequest;
  [(NUMediaViewRenderer *)self _zoomTargetRect];
  v15 = [(NUMediaViewRenderer *)self _regionPolicyForZoomTargetRect:?];
  [(NUSurfaceRenderRequest *)v14 setRegionPolicy:v15];

  [(NUMediaViewRenderer *)self _setupRenderRequest:self->_roiRenderRequest];
  NUAbsoluteTime();
  self->_lastZoomRenderTime = v16;
  v17 = self->_roiRenderRequest;
  v18 = v17;

  return v17;
}

- (id)_backfillRenderRequestForMedia:(id)a3
{
  v4 = a3;
  backfillRenderRequest = self->_backfillRenderRequest;
  if (!backfillRenderRequest)
  {
    v6 = [objc_alloc(MEMORY[0x277D2D020]) initWithMedia:v4];
    v7 = self->_backfillRenderRequest;
    self->_backfillRenderRequest = v6;
    v8 = v6;

    v9 = self->_backfillRenderRequest;
    v10 = [objc_alloc(MEMORY[0x277D2D000]) initWithLevel:1];
    [(NUSurfaceRenderRequest *)v9 setPriority:v10];

    [(NUSurfaceRenderRequest *)self->_backfillRenderRequest setShouldCoalesceUpdates:1];
    [(NUSurfaceRenderRequest *)self->_backfillRenderRequest setName:@"NUMediaViewRenderer-backfill"];

    backfillRenderRequest = self->_backfillRenderRequest;
  }

  [(NUSurfaceRenderRequest *)backfillRenderRequest setMedia:v4];
  v11 = self->_backfillRenderRequest;
  v12 = objc_alloc(MEMORY[0x277D2CFA0]);
  [(NUMediaViewRenderer *)self targetSize];
  v13 = [v12 initWithTargetSize:?];
  [(NUSurfaceRenderRequest *)v11 setScalePolicy:v13];

  v14 = self->_backfillRenderRequest;
  v15 = objc_opt_new();
  [(NUSurfaceRenderRequest *)v14 setRegionPolicy:v15];

  [(NUMediaViewRenderer *)self _setupRenderRequest:self->_backfillRenderRequest];
  v16 = self->_backfillRenderRequest;
  v17 = v16;

  return v16;
}

- (id)_backfillRenderRequestForComposition:(id)a3
{
  v4 = a3;
  backfillRenderRequest = self->_backfillRenderRequest;
  if (!backfillRenderRequest)
  {
    v6 = [objc_alloc(MEMORY[0x277D2D020]) initWithComposition:v4];
    v7 = self->_backfillRenderRequest;
    self->_backfillRenderRequest = v6;
    v8 = v6;

    v9 = self->_backfillRenderRequest;
    v10 = [objc_alloc(MEMORY[0x277D2D000]) initWithLevel:1];
    [(NUSurfaceRenderRequest *)v9 setPriority:v10];

    [(NUSurfaceRenderRequest *)self->_backfillRenderRequest setShouldCoalesceUpdates:1];
    [(NUSurfaceRenderRequest *)self->_backfillRenderRequest setName:@"NUMediaViewRenderer-backfill"];

    backfillRenderRequest = self->_backfillRenderRequest;
  }

  [(NUSurfaceRenderRequest *)backfillRenderRequest setComposition:v4];
  v11 = self->_backfillRenderRequest;
  v12 = objc_alloc(MEMORY[0x277D2CFA0]);
  [(NUMediaViewRenderer *)self targetSize];
  v13 = [v12 initWithTargetSize:?];
  [(NUSurfaceRenderRequest *)v11 setScalePolicy:v13];

  v14 = self->_backfillRenderRequest;
  v15 = objc_opt_new();
  [(NUSurfaceRenderRequest *)v14 setRegionPolicy:v15];

  [(NUMediaViewRenderer *)self _setupRenderRequest:self->_backfillRenderRequest];
  v16 = self->_backfillRenderRequest;
  v17 = v16;

  return v16;
}

- (double)_lastRenderDuration
{
  lastZoomRenderStatistics = self->_lastZoomRenderStatistics;
  if (!lastZoomRenderStatistics)
  {
    lastZoomRenderStatistics = self->_lastBackfillRenderStatictics;
  }

  [(NURenderStatistics *)lastZoomRenderStatistics totalDuration];
  return result;
}

- (CGRect)_zoomTargetRect
{
  v39 = *MEMORY[0x277D85DE8];
  [(NUMediaViewRenderer *)self _scrollBounds];
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  if (self->_isPanning && !self->_isZooming)
  {
    [(NUMediaViewRenderer *)self _lastRenderDuration];
    v12 = v11;
    v13 = v7 - self->_lastZoomRect.origin.x;
    v14 = v8 - self->_lastZoomRect.origin.y;
    NUAbsoluteTime();
    v16 = v15 - self->_lastZoomRenderTime;
    v25 = v13;
    v26 = v14;
    v17 = v12 * v13 / v16;
    v18 = v12 * v14 / v16;
    if (*MEMORY[0x277D2D078] != -1)
    {
      dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_464);
    }

    v19 = v7 + v17;
    v20 = v8 + v18;
    v21 = *MEMORY[0x277D2D088];
    if (os_log_type_enabled(*MEMORY[0x277D2D088], OS_LOG_TYPE_DEBUG))
    {
      v22 = v21;
      v40.origin.x = v19;
      v40.origin.y = v20;
      v40.size.width = v9;
      v40.size.height = v10;
      v23 = NSStringFromCGRect(v40);
      v41.origin.x = v7;
      v41.origin.y = v8;
      v41.size.width = v9;
      v41.size.height = v10;
      v24 = NSStringFromCGRect(v41);
      *buf = 138413570;
      v28 = v23;
      v29 = 2112;
      v30 = v24;
      v31 = 2048;
      v32 = v25;
      v33 = 2048;
      v34 = v26;
      v35 = 2048;
      v36 = v12;
      v37 = 2048;
      v38 = v16;
      _os_log_debug_impl(&dword_25BD29000, v22, OS_LOG_TYPE_DEBUG, "targetRect: %@, clipRect: %@, dx = %f, dy = %f, dr = %f, dt= %f", buf, 0x3Eu);
    }

    NUAlignRectToPixelGrid();
    NUPixelRectToCGRect();
  }

  self->_lastZoomRect.origin.x = v7;
  self->_lastZoomRect.origin.y = v8;
  self->_lastZoomRect.size.width = v9;
  self->_lastZoomRect.size.height = v10;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (double)_targetZoomScale
{
  WeakRetained = objc_loadWeakRetained(&self->_mediaView);
  v3 = [WeakRetained _scrollView];

  [v3 zoomScale];
  v5 = v4;
  [v3 minimumZoomScale];
  v7 = v6;
  [v3 maximumZoomScale];
  v9 = fmax(v7, fmin(v5, v8));

  return v9;
}

- (void)_updateLivePhotoWithResponse:(id)a3
{
  v22 = a3;
  if ([(NUMediaViewRenderer *)self computedDisplayType]== 3)
  {
    v4 = [(NUMediaViewRenderer *)self _livePhotoFromResponse:v22];
    WeakRetained = objc_loadWeakRetained(&self->_mediaView);
    v6 = [WeakRetained _livePhotoView];
    v7 = [v6 valueForKey:@"livePhoto"];

    if (v7)
    {
      v21 = [v22 video];
      v8 = [v7 valueForKey:@"videoAsset"];
      v9 = [v7 valueForKey:@"videoComposition"];
      v10 = [v22 videoComposition];
      [(NUMediaViewRenderer *)self mediaView];
      v12 = v11 = v4;
      v13 = [v12 player];
      v14 = [v13 playbackState] == 3;

      v4 = v11;
      v15 = v8;
      v16 = v21;
      if ([objc_opt_class() _forceUpdateForNewVideoComposition:v10 previousComposition:v9 newAsset:v21 previousAsset:v15 isPlaying:v14])
      {
        v17 = [WeakRetained _livePhotoView];
        [v17 performSelector:NSSelectorFromString(&cfstr_Setlivephoto.isa) withObject:v4];
      }

      v18 = [WeakRetained _livePhotoView];
      NSSelectorFromString(&cfstr_Setoverridepho.isa);
      v19 = objc_opt_respondsToSelector();

      if (v19)
      {
        v20 = [WeakRetained _livePhotoView];
        [v20 performSelector:NSSelectorFromString(&cfstr_Setoverridepho.isa) withObject:{objc_msgSend(v22, "photo")}];
      }
    }

    else
    {
      v16 = [WeakRetained _livePhotoView];
      [v16 performSelector:NSSelectorFromString(&cfstr_Setlivephoto.isa) withObject:v4];
    }

    [WeakRetained _rendererDidUpdateLivePhoto];
  }

  MEMORY[0x2821F9730]();
}

- (id)_livePhotoFromResponse:(id)a3
{
  v3 = a3;
  v4 = [v3 video];
  v5 = [v3 videoComposition];
  v12 = 0uLL;
  v13 = 0;
  if (v3)
  {
    [v3 photoTime];
  }

  v6 = objc_alloc(NSClassFromString(&cfstr_Phlivephoto.isa));
  v7 = [v3 photo];
  v10 = v12;
  v11 = v13;
  v8 = [v6 initWithImage:v7 uiOrientation:0 videoAsset:v4 photoTime:&v10 asset:0 options:1 videoComposition:v5];

  return v8;
}

- (void)_updateLivePhotoComposition:(id)a3
{
  v4 = a3;
  livePhotoRenderRequest = self->_livePhotoRenderRequest;
  v17 = v4;
  if (!livePhotoRenderRequest)
  {
    v6 = [objc_alloc(MEMORY[0x277D2CFD8]) initWithComposition:v4];
    v7 = self->_livePhotoRenderRequest;
    self->_livePhotoRenderRequest = v6;

    [(NULivePhotoRenderRequest *)self->_livePhotoRenderRequest setResponseQueue:MEMORY[0x277D85CD0]];
    v4 = v17;
    livePhotoRenderRequest = self->_livePhotoRenderRequest;
  }

  [(NULivePhotoRenderRequest *)livePhotoRenderRequest setComposition:v4];
  [(NULivePhotoRenderRequest *)self->_livePhotoRenderRequest setName:@"NUMediaViewRenderer-livePhoto"];
  [(NULivePhotoRenderRequest *)self->_livePhotoRenderRequest setPipelineFilters:self->_pipelineFilters];
  v8 = objc_alloc(MEMORY[0x277D2CFA0]);
  [(NUMediaViewRenderer *)self targetSize];
  v9 = [v8 initWithTargetSize:?];
  [(NULivePhotoRenderRequest *)self->_livePhotoRenderRequest setScalePolicy:v9];
  v10 = [(NUMediaViewRenderer *)self colorSpace];

  if (v10)
  {
    v11 = self->_livePhotoRenderRequest;
    v12 = [(NUMediaViewRenderer *)self colorSpace];
    [(NULivePhotoRenderRequest *)v11 setColorSpace:v12];
  }

  v13 = self->_livePhotoRenderRequest;
  v14 = [objc_alloc(MEMORY[0x277D2D000]) initWithLevel:0];
  [(NULivePhotoRenderRequest *)v13 setPriority:v14];

  v15 = self->_livePhotoRenderRequest;
  v16 = [(NUMediaViewRenderer *)self _livePhotoRenderResponseHandler];
  [(NULivePhotoRenderRequest *)v15 submit:v16];
}

- (void)_coalesceUpdateLivePhotoComposition:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  livePhotoUpdateCoalescer = self->_livePhotoUpdateCoalescer;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__NUMediaViewRenderer__coalesceUpdateLivePhotoComposition___block_invoke;
  v7[3] = &unk_279973F98;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [(NUCoalescer *)livePhotoUpdateCoalescer coalesceBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __59__NUMediaViewRenderer__coalesceUpdateLivePhotoComposition___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateLivePhotoComposition:*(a1 + 32)];
}

- (void)_coalesceUpdateVideoComposition:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  videoUpdateCoalescer = self->_videoUpdateCoalescer;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__NUMediaViewRenderer__coalesceUpdateVideoComposition___block_invoke;
  v7[3] = &unk_279973F98;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [(NUCoalescer *)videoUpdateCoalescer coalesceBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __55__NUMediaViewRenderer__coalesceUpdateVideoComposition___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateVideoComposition:*(a1 + 32)];
}

- (void)_updateVideoViewLayoutWithGeometry:(id)a3
{
  v4 = a3;
  if (v4 && [(NUMediaViewRenderer *)self isZoomedToFit])
  {
    WeakRetained = objc_loadWeakRetained(&self->_mediaView);
    v6 = [WeakRetained _renderView];
    v7 = [WeakRetained _scrollView];
    [(NUMediaViewRenderer *)self _scrollBounds];
    v9 = v8;
    v11 = v10;
    [WeakRetained edgeInsets];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = [v6 _roiLayer];
    [v20 nu_contentsAreFlipped];
    v21 = v9 - (v19 + v15);
    if (v21 <= 0.0)
    {
      v21 = 0.0;
    }

    v32 = v21;
    if (v11 - (v13 + v17) > 0.0)
    {
      v22 = v11 - (v13 + v17);
    }

    else
    {
      v22 = 0.0;
    }

    v31 = v22;

    [v4 size];
    NUPixelSizeToCGSize();
    v29 = v24;
    v30 = v23;
    CGAffineTransformMakeScale(&v33, self->_backingScale, self->_backingScale);
    *&v25.f64[0] = v30;
    *&v25.f64[1] = v29;
    v26 = vdivq_f64(vmlaq_n_f64(vmulq_n_f64(*&v33.c, v31), *&v33.a, v32), v25);
    if (v26.f64[0] >= v26.f64[1])
    {
      v27 = v26.f64[1];
    }

    else
    {
      v27 = v26.f64[0];
    }

    [v7 setMinimumZoomScale:{1.17549435e-38, v29, v30}];
    [v7 setMaximumZoomScale:3.40282347e38];
    [v7 setMinimumZoomScale:v27];
    [v7 setZoomScale:v27];
    maximumZoomScale = self->_maximumZoomScale;
    if (maximumZoomScale < v27)
    {
      maximumZoomScale = v27;
    }

    [v7 setMaximumZoomScale:maximumZoomScale];
    [v6 setGeometry:v4];
  }
}

- (void)_updateVideoComposition:(id)a3
{
  v4 = a3;
  if (!self->_didReleaseAVObjects)
  {
    atomic_fetch_add(&self->_videoRenderInFlightCount, 1u);
    v18 = v4;
    v5 = [v4 objectForKeyedSubscript:@"source"];
    v6 = [v5 assetIdentifier];

    objc_storeStrong(&self->_currentVideoSourceAssetIdentifier, v6);
    v7 = [(NUMediaViewRenderer *)self mediaView];
    v8 = [(NUMediaViewRenderer *)self canRenderVideoLive];
    v9 = [(NUMediaViewRenderer *)self pipelineFilters];
    if (!v8)
    {
      v10 = [(NUMediaViewRenderer *)self cacheVideoRenderFilter];
      v11 = [v9 arrayByAddingObject:v10];

      [v7 _rendererDidStartPreparingVideo];
      v9 = v11;
    }

    v12 = [(NUMediaViewRenderer *)self _scalePolicyForVideoCompositionRender];
    videoRenderRequest = self->_videoRenderRequest;
    if (!videoRenderRequest)
    {
      v14 = [objc_alloc(MEMORY[0x277D2D040]) initWithComposition:v18];
      v15 = self->_videoRenderRequest;
      self->_videoRenderRequest = v14;

      [(NUVideoRenderRequest *)self->_videoRenderRequest setResponseQueue:MEMORY[0x277D85CD0]];
      [(NUVideoRenderRequest *)self->_videoRenderRequest setSampleMode:2];
      videoRenderRequest = self->_videoRenderRequest;
    }

    [(NUVideoRenderRequest *)videoRenderRequest setScalePolicy:v12];
    [(NUVideoRenderRequest *)self->_videoRenderRequest setPipelineFilters:v9];
    [(NUVideoRenderRequest *)self->_videoRenderRequest setComposition:v18];
    v16 = self->_videoRenderRequest;
    v17 = [(NUMediaViewRenderer *)self _videoRenderResponseHandler];
    [(NUVideoRenderRequest *)v16 submit:v17];

    v4 = v18;
  }
}

- (BOOL)_isVideoSourceChangedInComposition:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"source"];
  v5 = [v4 assetIdentifier];

  if ((v5 == 0) == (self->_currentVideoSourceAssetIdentifier != 0))
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v6 = [v5 isEqualToString:?] ^ 1;
  }

  return v6;
}

- (id)_scalePolicyForVideoCompositionRender
{
  v37 = *MEMORY[0x277D85DE8];
  [(NUMediaViewRenderer *)self overrideZoomToFitSize];
  v4 = v3;
  v6 = v5;
  v7 = *MEMORY[0x277CBF3A8];
  v8 = *(MEMORY[0x277CBF3A8] + 8);
  [(NUMediaViewRenderer *)self overrideZoomScale];
  if (v4 != v7 || v6 != v8)
  {
    [(NUMediaViewRenderer *)self overrideZoomToFitSize];
    goto LABEL_6;
  }

  if (v9 == 0.0 && [(NUMediaViewRenderer *)self isZoomedToFit])
  {
    [(NUMediaViewRenderer *)self targetSize];
LABEL_6:
    v13 = v11;
    v14 = v11;
    v15 = v12;
    v16 = v12;
    if (v13 >= 0)
    {
      v17 = v13 & 1;
    }

    else
    {
      v17 = -(v13 & 1);
    }

    v18 = (2 - v17);
    if (!v17)
    {
      v18 = -0.0;
    }

    v19 = v15 & 1;
    if (v15 < 0)
    {
      v19 = -v19;
    }

    v20 = v18 + v14;
    if (v19)
    {
      v21 = (2 - v19);
    }

    else
    {
      v21 = -0.0;
    }

    v22 = v21 + v16;
    v23 = [objc_alloc(MEMORY[0x277D2CFA0]) initWithTargetSize:{v20, v21 + v16}];
    if (*MEMORY[0x277D2D078] != -1)
    {
      dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_464);
    }

    v24 = *MEMORY[0x277D2D088];
    if (os_log_type_enabled(*MEMORY[0x277D2D088], OS_LOG_TYPE_DEBUG))
    {
      v33 = 134218240;
      v34 = v20;
      v35 = 2048;
      v36 = v22;
      v25 = "VideoCompositorScalePolicy: FIT scale policy fit to %f x %f";
      v26 = v24;
      v27 = 22;
LABEL_33:
      _os_log_debug_impl(&dword_25BD29000, v26, OS_LOG_TYPE_DEBUG, v25, &v33, v27);
      goto LABEL_29;
    }

    goto LABEL_29;
  }

  [(NUMediaViewRenderer *)self overrideZoomScale];
  if (v28 == 0.0)
  {
    [(NUMediaViewRenderer *)self _targetZoomScale];
  }

  else
  {
    [(NUMediaViewRenderer *)self overrideZoomScale];
  }

  v30 = v29;
  v23 = [objc_alloc(MEMORY[0x277D2D058]) initWithZoomFactor:v29];
  if (*MEMORY[0x277D2D078] != -1)
  {
    dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_464);
  }

  v31 = *MEMORY[0x277D2D088];
  if (os_log_type_enabled(*MEMORY[0x277D2D088], OS_LOG_TYPE_DEBUG))
  {
    v33 = 134217984;
    v34 = v30;
    v25 = "VideoCompositorScalePolicy: ZOOM scale policy zoomed to %f";
    v26 = v31;
    v27 = 12;
    goto LABEL_33;
  }

LABEL_29:

  return v23;
}

- (void)_updateVideoWithResult:(id)a3 sourceChanged:(BOOL)a4
{
  v65 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([(NUMediaViewRenderer *)self computedDisplayType]== 2 && !self->_didReleaseAVObjects)
  {
    v7 = self->_nuAVPlayerController;
    v8 = [(NUAVPlayerController *)v7 videoAsset];
    v9 = [(NUAVPlayerController *)v7 videoComposition];
    v10 = [v6 avAsset];
    if (!v10)
    {
      if (*MEMORY[0x277D2D078] != -1)
      {
        dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_464);
      }

      v37 = *MEMORY[0x277D2D088];
      if (os_log_type_enabled(*MEMORY[0x277D2D088], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_25BD29000, v37, OS_LOG_TYPE_ERROR, "Nil video asset received", buf, 2u);
      }

      goto LABEL_35;
    }

    v57 = v7;
    [v6 videoComposition];
    v11 = v10;
    v13 = v12 = v8;
    v59 = [v6 audioMix];
    v14 = [(NUMediaViewRenderer *)self mediaView];
    [v14 player];
    v15 = v60 = v9;
    v16 = [v15 playbackState];

    v17 = objc_opt_class();
    v58 = v13;
    v18 = v13;
    v8 = v12;
    v10 = v11;
    v19 = [v17 _forceUpdateForNewVideoComposition:v18 previousComposition:v9 newAsset:v11 previousAsset:v8 isPlaying:v16 == 3];
    v20 = 0;
    if ((v19 & 1) == 0 && v16 == 3)
    {
      v20 = [MEMORY[0x277D2D048] compositionInstructions:v58 areEqualToCompositionInstructions:v9] ^ 1;
    }

    v56 = v20;
    v7 = v57;
    if (v8 != v10)
    {
      v21 = [(NUMediaViewRenderer *)self composition];

      if (v21)
      {
        v55 = v8;
        v22 = objc_alloc(MEMORY[0x277D2CFD0]);
        v23 = [(NUMediaViewRenderer *)self composition];
        v24 = [v22 initWithComposition:v23];

        [v24 setName:@"PXSubjectTrackingView-getUnadjustedImageSize"];
        v63 = 0;
        v25 = [v24 submitSynchronous:&v63];
        v26 = v63;
        v27 = [v25 properties];

        if (!v26)
        {
          [v27 size];
          NUPixelSizeToCGSize();
          v29 = v28;
          v31 = v30;
          WeakRetained = objc_loadWeakRetained(&self->_mediaView);
          [WeakRetained set_masterSizeWithoutGeometry:{v29, v31}];
        }

        v8 = v55;
      }
    }

    v33 = [(NUMediaViewRenderer *)self pipelineFilersHaveChanged];
    v34 = v19 | v33;
    v35 = objc_loadWeakRetained(&self->_mediaView);
    v36 = [v6 geometry];
    [(NUMediaViewRenderer *)self _updateVideoViewLayoutWithGeometry:v36];
    if (v34)
    {
      if (!v57)
      {
        v42 = NUAssertLogger_467();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"We should have an initialized AV player controller"];
          *buf = 138543362;
          *&buf[4] = v43;
          _os_log_error_impl(&dword_25BD29000, v42, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
        }

        v44 = MEMORY[0x277D2CF60];
        specific = dispatch_get_specific(*MEMORY[0x277D2CF60]);
        v46 = NUAssertLogger_467();
        v47 = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
        if (specific)
        {
          if (v47)
          {
            v50 = dispatch_get_specific(*v44);
            v51 = MEMORY[0x277CCACC8];
            v52 = v50;
            v53 = [v51 callStackSymbols];
            v54 = [v53 componentsJoinedByString:@"\n"];
            *buf = 138543618;
            *&buf[4] = v50;
            *&buf[12] = 2114;
            *&buf[14] = v54;
            _os_log_error_impl(&dword_25BD29000, v46, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
          }
        }

        else if (v47)
        {
          v48 = [MEMORY[0x277CCACC8] callStackSymbols];
          v49 = [v48 componentsJoinedByString:@"\n"];
          *buf = 138543362;
          *&buf[4] = v49;
          _os_log_error_impl(&dword_25BD29000, v46, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
        }

        _NUAssertFailHandler();
      }

      if (v8 == v10 && ![v35 isHidden])
      {
        v38 = v58;
        [(NUAVPlayerController *)v57 updateVideoComposition:v58];
        [(NUAVPlayerController *)v57 updateAudioMix:v59];
        if (!v33)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }

      *buf = *MEMORY[0x277CC0898];
      *&buf[16] = *(MEMORY[0x277CC0898] + 16);
      if (!a4)
      {
        if ([(NUAVPlayerController *)v57 currentlySeeking])
        {
          [(NUAVPlayerController *)v57 currentSeekTime];
        }

        else
        {
          [(NUAVPlayerController *)v57 currentTime];
        }
      }

      v40 = self->_playbackMode == 1;
      v61 = *buf;
      v62 = *&buf[16];
      v38 = v58;
      if ([(NUAVPlayerController *)v57 prepareWithAVAsset:v10 videoComposition:v58 audioMix:v59 loopsVideo:v40 seekToTime:&v61])
      {
        [v35 _rendererDidCreateAVPlayerController:v57];
        [(NUMediaViewRenderer *)self _notifyPlaybackStateChange:1];
      }
    }

    else
    {
      [(NUAVPlayerController *)v57 updateAudioMix:v59];
      v38 = v58;
      if (v58)
      {
        v39 = v56;
      }

      else
      {
        v39 = 0;
      }

      if (v39 == 1)
      {
        [(NUAVPlayerController *)v57 updateWithVideoPrepareNodeFromVideoComposition:v58];
        if (!v33)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }
    }

    if (!v33)
    {
LABEL_34:
      v41 = [v6 statistics];
      [v35 _rendererDidFinishWithStatistics:v41];

      v9 = v60;
LABEL_35:

      goto LABEL_36;
    }

LABEL_33:
    [(NUMediaViewRenderer *)self setPipelineFilters:self->_pipelineFilters];
    goto LABEL_34;
  }

LABEL_36:
}

- (id)cacheVideoRenderFilter
{
  if (cacheVideoRenderFilter_onceToken != -1)
  {
    dispatch_once(&cacheVideoRenderFilter_onceToken, &__block_literal_global_504);
  }

  v3 = cacheVideoRenderFilter_filter;

  return v3;
}

uint64_t __45__NUMediaViewRenderer_cacheVideoRenderFilter__block_invoke()
{
  cacheVideoRenderFilter_filter = [objc_alloc(MEMORY[0x277D2D010]) initWithBlock:&__block_literal_global_46];

  return MEMORY[0x2821F96F8]();
}

id __45__NUMediaViewRenderer_cacheVideoRenderFilter__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = a2;
  v9 = a4;
  v10 = [v8 mediaTypeForComposition:a3];
  v11 = v9;
  if (v10 == 2)
  {
    v11 = [v8 cacheNode:v9 type:@"Video" settings:MEMORY[0x277CBEC10] error:a5];
  }

  return v11;
}

- (void)_tearDownAVPlayerController
{
  nuAVPlayerController = self->_nuAVPlayerController;
  if (nuAVPlayerController)
  {
    [(NUAVPlayerController *)nuAVPlayerController removeObserver:self];
    v4 = self->_nuAVPlayerController;
    self->_nuAVPlayerController = 0;

    [(NUMediaViewRenderer *)self _notifyPlaybackStateChange:0];
  }
}

- (void)_playerStatusDidChange:(int64_t)a3
{
  v9 = [(NUMediaViewRenderer *)self nuAVPlayerController];
  v5 = [v9 player];
  [v5 rate];
  v7 = v6;

  LODWORD(v8) = v7;
  [(NUMediaViewRenderer *)self _notifyPlaybackStateChange:[(NUMediaViewRenderer *)self _playbackStateFromPlayerStatus:a3 rate:v8]];
}

- (void)_setupAVPlayerController
{
  if (!self->_nuAVPlayerController)
  {
    v3 = objc_alloc_init(NUAVPlayerController);
    nuAVPlayerController = self->_nuAVPlayerController;
    self->_nuAVPlayerController = v3;

    [(NUAVPlayerController *)self->_nuAVPlayerController setLoopsVideo:self->_playbackMode == 1];
    [(NUAVPlayerController *)self->_nuAVPlayerController setMuted:self->_muted];
    objc_initWeak(&location, self);
    v5 = self->_nuAVPlayerController;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __47__NUMediaViewRenderer__setupAVPlayerController__block_invoke;
    v15[3] = &unk_279973ED8;
    objc_copyWeak(&v16, &location);
    [(NUAVPlayerController *)v5 addPlaybackTimeObserver:self block:v15];
    v6 = self->_nuAVPlayerController;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __47__NUMediaViewRenderer__setupAVPlayerController__block_invoke_2;
    v13[3] = &unk_279973F00;
    objc_copyWeak(&v14, &location);
    [(NUAVPlayerController *)v6 addPlayerStatusObserver:self block:v13];
    v7 = self->_nuAVPlayerController;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __47__NUMediaViewRenderer__setupAVPlayerController__block_invoke_3;
    v11[3] = &unk_279973F28;
    objc_copyWeak(&v12, &location);
    [(NUAVPlayerController *)v7 addPlaybackRateObserver:self block:v11];
    v8 = self->_nuAVPlayerController;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __47__NUMediaViewRenderer__setupAVPlayerController__block_invoke_4;
    v9[3] = &unk_279973F50;
    objc_copyWeak(&v10, &location);
    [(NUAVPlayerController *)v8 addExternalPlaybackObserver:self block:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void __47__NUMediaViewRenderer__setupAVPlayerController__block_invoke(uint64_t a1, __int128 *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = *a2;
  v5 = *(a2 + 2);
  [WeakRetained _notifyPlaybackTimeChange:&v4];
}

void __47__NUMediaViewRenderer__setupAVPlayerController__block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _playerStatusDidChange:a2];
}

void __47__NUMediaViewRenderer__setupAVPlayerController__block_invoke_3(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (a2 == 0.0)
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  [WeakRetained _notifyPlaybackStateChange:v4];
}

void __47__NUMediaViewRenderer__setupAVPlayerController__block_invoke_4(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _notifyExternalPlaybackChange:a2];
}

- (void)_setDisplayType:(unint64_t)a3
{
  if (self->_computedDisplayType == a3)
  {
    return;
  }

  v21 = [(NUMediaViewRenderer *)self mediaView];
  v6 = self->_livePhotoView;
  if (a3 != 3)
  {
    if (a3 == 2)
    {
      v12 = [v21 _renderView];
      [v12 setHidden:0];

      v13 = [v21 _videoPlayerView];
      v14 = [v21 _renderView];
      [v14 addSubview:v13];

      [(NUMediaViewRenderer *)self _addFullExtentConstraintsForView:v13];
      [(NUMediaViewRenderer *)self _setupAVPlayerController];
      if (v6)
      {
        [(UIView *)v6 setHidden:1];
      }

      v15 = [(NULivePhotoRenderRequest *)self->_livePhotoRenderRequest renderContext];
      [v15 cancelAllRequests];

      livePhotoRenderRequest = self->_livePhotoRenderRequest;
      self->_livePhotoRenderRequest = 0;
    }

    else if (a3 == 1)
    {
      v7 = [v21 _renderView];
      [v7 setHidden:0];

      [(NUMediaViewRenderer *)self _tearDownAVPlayerController];
      [v21 _rendererDidCreateAVPlayerController:0];
      if (v6)
      {
        [(UIView *)v6 setHidden:1];
      }

      v8 = [(NULivePhotoRenderRequest *)self->_livePhotoRenderRequest renderContext];
      [v8 cancelAllRequests];

      v9 = [(NUVideoRenderRequest *)self->_videoRenderRequest renderContext];
      [v9 cancelAllRequests];

      v10 = self->_livePhotoRenderRequest;
      self->_livePhotoRenderRequest = 0;

      videoRenderRequest = self->_videoRenderRequest;
      self->_videoRenderRequest = 0;
    }

    goto LABEL_16;
  }

  v17 = [v21 _renderView];
  [v17 setHidden:0];

  [(NUMediaViewRenderer *)self _tearDownAVPlayerController];
  [v21 _rendererDidCreateAVPlayerController:0];
  if (v6)
  {
    livePhotoView = v6;
    v19 = 0;
LABEL_15:
    [(UIView *)livePhotoView setHidden:v19];
    goto LABEL_16;
  }

  v6 = [v21 _livePhotoView];
  if (v6)
  {
    v20 = [v21 _renderView];
    [v20 addSubview:v6];

    [(NUMediaViewRenderer *)self _addFullExtentConstraintsForView:v6];
    objc_storeStrong(&self->_livePhotoView, v6);
    [(UIView *)self->_livePhotoView performSelector:sel_setDelegate_ withObject:self];
    livePhotoView = self->_livePhotoView;
    v19 = 1;
    goto LABEL_15;
  }

LABEL_16:
  self->_computedDisplayType = a3;
}

- (void)_updateDisplayForMediaType:(int64_t)a3
{
  v24 = *MEMORY[0x277D85DE8];
  if ((a3 - 1) >= 3)
  {
    v3 = NUAssertLogger_467();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"We must have a known display type"];
      v20 = 138543362;
      v21 = v4;
      _os_log_error_impl(&dword_25BD29000, v3, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v20, 0xCu);
    }

    v5 = MEMORY[0x277D2CF60];
    specific = dispatch_get_specific(*MEMORY[0x277D2CF60]);
    v7 = NUAssertLogger_467();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v8)
      {
        v11 = dispatch_get_specific(*v5);
        v12 = MEMORY[0x277CCACC8];
        v13 = v11;
        v14 = [v12 callStackSymbols];
        v15 = [v14 componentsJoinedByString:@"\n"];
        v20 = 138543618;
        v21 = v11;
        v22 = 2114;
        v23 = v15;
        _os_log_error_impl(&dword_25BD29000, v7, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v20, 0x16u);
      }
    }

    else if (v8)
    {
      v9 = [MEMORY[0x277CCACC8] callStackSymbols];
      v10 = [v9 componentsJoinedByString:@"\n"];
      v20 = 138543362;
      v21 = v10;
      _os_log_error_impl(&dword_25BD29000, v7, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v20, 0xCu);
    }

    v16 = _NUAssertFailHandler();
    [(NUMediaViewRenderer *)v16 _updateImageLayer:v17 withRenderResponse:v18, v19];
  }

  else
  {

    [(NUMediaViewRenderer *)self _setDisplayType:?];
  }
}

- (id)_updateImageLayer:(id)a3 withRenderResponse:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  specific = a4;
  WeakRetained = 0x277CCA000;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    v17 = NUAssertLogger_467();
    v10 = &off_25BD44000;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"This code must be running on the main thread"];
      *buf = 138543362;
      v23 = v18;
      _os_log_error_impl(&dword_25BD29000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v11 = MEMORY[0x277D2CF60];
    specific = dispatch_get_specific(*MEMORY[0x277D2CF60]);
    v7 = NUAssertLogger_467();
    v19 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v19)
      {
        specific = dispatch_get_specific(*v11);
        v20 = MEMORY[0x277CCACC8];
        v10 = specific;
        WeakRetained = [v20 callStackSymbols];
        v11 = [WeakRetained componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v23 = specific;
        v24 = 2114;
        v25 = v11;
        _os_log_error_impl(&dword_25BD29000, v7, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      specific = [MEMORY[0x277CCACC8] callStackSymbols];
      WeakRetained = [specific componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v23 = WeakRetained;
      _os_log_error_impl(&dword_25BD29000, v7, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
LABEL_19:
    dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_464);
    goto LABEL_5;
  }

  v4 = 0x277CD9000uLL;
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  WeakRetained = objc_loadWeakRetained(&self->_mediaView);
  v21 = 0;
  v10 = [specific result:&v21];
  v11 = v21;
  if (v10)
  {
    v12 = [v10 geometry];
    v13 = [v10 image];
    [v7 setImage:v13];

    [(NUMediaViewRenderer *)self _renderFinishedWithGeometry:v12 layer:v7];
    v14 = [v10 statistics];

    goto LABEL_8;
  }

  if (*MEMORY[0x277D2D078] != -1)
  {
    goto LABEL_19;
  }

LABEL_5:
  v15 = *MEMORY[0x277D2D088];
  if (os_log_type_enabled(*MEMORY[0x277D2D088], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v23 = v11;
    _os_log_error_impl(&dword_25BD29000, v15, OS_LOG_TYPE_ERROR, "Error: %{public}@", buf, 0xCu);
  }

  [v7 setImage:0];
  v14 = 0;
LABEL_8:
  [WeakRetained _rendererDidFinishWithStatistics:v14];
  [*(v4 + 4080) commit];

  return v14;
}

- (void)_updateBackfillLayerWithRenderResponse:(id)a3
{
  v12 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_mediaView);
  v5 = [WeakRetained _renderView];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 _backfillLayer];
    v8 = [(NUMediaViewRenderer *)self _updateImageLayer:v7 withRenderResponse:v12];
    lastBackfillRenderStatictics = self->_lastBackfillRenderStatictics;
    self->_lastBackfillRenderStatictics = v8;

    v10 = [WeakRetained _livePhotoView];
    [v10 setHidden:1];

    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 postNotificationName:@"NUMediaViewSnapshotAvailable" object:WeakRetained];
  }
}

- (void)_updateROILayerWithRenderResponse:(id)a3
{
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_mediaView);
  v5 = [WeakRetained _renderView];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 _roiLayer];
    v8 = [(NUMediaViewRenderer *)self _updateImageLayer:v7 withRenderResponse:v10];
    lastZoomRenderStatistics = self->_lastZoomRenderStatistics;
    self->_lastZoomRenderStatistics = v8;
  }
}

- (void)_updateBackfillLayerWithLatestRenderResponse
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__528;
  v9 = __Block_byref_object_dispose__529;
  v10 = 0;
  renderQueue = self->_renderQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __67__NUMediaViewRenderer__updateBackfillLayerWithLatestRenderResponse__block_invoke;
  v4[3] = &unk_279973EB0;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(renderQueue, v4);
  if (v6[5])
  {
    [(NUMediaViewRenderer *)self _updateBackfillLayerWithRenderResponse:?];
  }

  _Block_object_dispose(&v5, 8);
}

void __67__NUMediaViewRenderer__updateBackfillLayerWithLatestRenderResponse__block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 136));
  v2 = *(a1 + 32);
  v3 = *(v2 + 136);
  *(v2 + 136) = 0;
}

- (void)_updateROILayerWithLatestRenderResponse
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__528;
  v9 = __Block_byref_object_dispose__529;
  v10 = 0;
  renderQueue = self->_renderQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__NUMediaViewRenderer__updateROILayerWithLatestRenderResponse__block_invoke;
  v4[3] = &unk_279973EB0;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(renderQueue, v4);
  if (v6[5])
  {
    [(NUMediaViewRenderer *)self _updateROILayerWithRenderResponse:?];
  }

  _Block_object_dispose(&v5, 8);
}

void __62__NUMediaViewRenderer__updateROILayerWithLatestRenderResponse__block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 128));
  v2 = *(a1 + 32);
  v3 = *(v2 + 128);
  *(v2 + 128) = 0;
}

- (void)_updateVideoPlayerWithRenderResponse:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NUMediaViewRenderer *)self mediaView];
  v6 = [(NUMediaViewRenderer *)self nuAVPlayerController];
  add = atomic_fetch_add(&self->_videoRenderInFlightCount, 0xFFFFFFFF);
  v13 = 0;
  v8 = [v4 result:&v13];

  v9 = v13;
  if (!v8)
  {
    if (*MEMORY[0x277D2D078] != -1)
    {
      dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_464);
    }

    v10 = *MEMORY[0x277D2D088];
    if (os_log_type_enabled(*MEMORY[0x277D2D088], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = v9;
      _os_log_impl(&dword_25BD29000, v10, OS_LOG_TYPE_DEFAULT, "Failed to update video composition: %{public}@", buf, 0xCu);
    }
  }

  if ([(NUMediaViewRenderer *)self isVideoEnabled]|| [(NUMediaViewRenderer *)self displayType]== 2)
  {
    v11 = [(NUMediaViewRenderer *)self composition];

    if (v11)
    {
      v12 = [(NUMediaViewRenderer *)self composition];
      [(NUMediaViewRenderer *)self _updateVideoWithResult:v8 sourceChanged:[(NUMediaViewRenderer *)self _isVideoSourceChangedInComposition:v12]];
    }

    else
    {
      [(NUMediaViewRenderer *)self _updateVideoWithResult:v8 sourceChanged:0];
    }

    if (add == 1 && ![(NUMediaViewRenderer *)self canRenderVideoLive])
    {
      [v5 _rendererDidFinishPreparingVideo];
      [v5 setVideoPlayerVisible:1 animated:1];
      if ([(NUMediaViewRenderer *)self playbackMode]== 1)
      {
        [v6 play];
      }
    }
  }
}

- (void)_updateVideoPlayerWithLatestRenderResponse
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__528;
  v9 = __Block_byref_object_dispose__529;
  v10 = 0;
  renderQueue = self->_renderQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__NUMediaViewRenderer__updateVideoPlayerWithLatestRenderResponse__block_invoke;
  v4[3] = &unk_279973EB0;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(renderQueue, v4);
  if (v6[5])
  {
    [(NUMediaViewRenderer *)self _updateVideoPlayerWithRenderResponse:?];
  }

  _Block_object_dispose(&v5, 8);
}

void __65__NUMediaViewRenderer__updateVideoPlayerWithLatestRenderResponse__block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 144));
  v2 = *(a1 + 32);
  v3 = *(v2 + 144);
  *(v2 + 144) = 0;
}

- (void)_updateLivePhotoViewWithRenderResponse:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v4 = [a3 result:&v7];
  v5 = v7;
  if (v4)
  {
    [(NUMediaViewRenderer *)self _updateLivePhotoWithResponse:v4];
  }

  else
  {
    if (*MEMORY[0x277D2D078] != -1)
    {
      dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_464);
    }

    v6 = *MEMORY[0x277D2D088];
    if (os_log_type_enabled(*MEMORY[0x277D2D088], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v9 = v5;
      _os_log_error_impl(&dword_25BD29000, v6, OS_LOG_TYPE_ERROR, "Error loading LivePhoto: %{public}@", buf, 0xCu);
    }
  }
}

- (void)_updateLivePhotoViewWithLatestRenderResponse
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__528;
  v9 = __Block_byref_object_dispose__529;
  v10 = 0;
  renderQueue = self->_renderQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __67__NUMediaViewRenderer__updateLivePhotoViewWithLatestRenderResponse__block_invoke;
  v4[3] = &unk_279973EB0;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(renderQueue, v4);
  if (v6[5])
  {
    [(NUMediaViewRenderer *)self _updateLivePhotoViewWithRenderResponse:?];
  }

  _Block_object_dispose(&v5, 8);
}

void __67__NUMediaViewRenderer__updateLivePhotoViewWithLatestRenderResponse__block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 152));
  v2 = *(a1 + 32);
  v3 = *(v2 + 152);
  *(v2 + 152) = 0;
}

- (id)_videoRenderResponseHandler
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__NUMediaViewRenderer__videoRenderResponseHandler__block_invoke;
  v4[3] = &unk_279973E88;
  v4[4] = self;
  v2 = MEMORY[0x25F87A280](v4, a2);

  return v2;
}

void __50__NUMediaViewRenderer__videoRenderResponseHandler__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 144), a2);
  v4 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__NUMediaViewRenderer__videoRenderResponseHandler__block_invoke_2;
  block[3] = &unk_279973E38;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (id)_livePhotoRenderResponseHandler
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__NUMediaViewRenderer__livePhotoRenderResponseHandler__block_invoke;
  v4[3] = &unk_279973E88;
  v4[4] = self;
  v2 = MEMORY[0x25F87A280](v4, a2);

  return v2;
}

void __54__NUMediaViewRenderer__livePhotoRenderResponseHandler__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 152), a2);
  v4 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__NUMediaViewRenderer__livePhotoRenderResponseHandler__block_invoke_2;
  block[3] = &unk_279973E38;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (id)_videoFrameImageRenderResponseHandler
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__NUMediaViewRenderer__videoFrameImageRenderResponseHandler__block_invoke;
  v4[3] = &unk_279973E88;
  v4[4] = self;
  v2 = MEMORY[0x25F87A280](v4, a2);

  return v2;
}

void __60__NUMediaViewRenderer__videoFrameImageRenderResponseHandler__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 136), a2);
  v4 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__NUMediaViewRenderer__videoFrameImageRenderResponseHandler__block_invoke_2;
  block[3] = &unk_279973E38;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __60__NUMediaViewRenderer__videoFrameImageRenderResponseHandler__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _updateBackfillLayerWithLatestRenderResponse];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 280));
  [WeakRetained setVideoPlayerVisible:1 animated:1];
}

- (id)_backfillRenderResponseHandler
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__NUMediaViewRenderer__backfillRenderResponseHandler__block_invoke;
  v4[3] = &unk_279973E88;
  v4[4] = self;
  v2 = MEMORY[0x25F87A280](v4, a2);

  return v2;
}

void __53__NUMediaViewRenderer__backfillRenderResponseHandler__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 136), a2);
  v4 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__NUMediaViewRenderer__backfillRenderResponseHandler__block_invoke_2;
  block[3] = &unk_279973E38;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (id)_roiRenderResponseHandler
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__NUMediaViewRenderer__roiRenderResponseHandler__block_invoke;
  v4[3] = &unk_279973E88;
  v4[4] = self;
  v2 = MEMORY[0x25F87A280](v4, a2);

  return v2;
}

void __48__NUMediaViewRenderer__roiRenderResponseHandler__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 128), a2);
  v4 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__NUMediaViewRenderer__roiRenderResponseHandler__block_invoke_2;
  block[3] = &unk_279973E38;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_updateImageRenderForComposition:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_25BD29000, "Update Composition", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__NUMediaViewRenderer__updateImageRenderForComposition___block_invoke;
  v7[3] = &unk_279973E60;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  os_activity_apply(v5, v7);
}

uint64_t __56__NUMediaViewRenderer__updateImageRenderForComposition___block_invoke(uint64_t a1)
{
  dispatch_group_enter(*(*(a1 + 32) + 112));
  [MEMORY[0x277D2D018] begin];
  v2 = [*(a1 + 40) mediaType];
  v3 = *(a1 + 32);
  if (v2 == 2)
  {
    v4 = [v3 _backfillRenderRequestForComposition:*(a1 + 40)];
    v5 = [*(a1 + 32) _videoFrameImageRenderResponseHandler];
  }

  else
  {
    if (([v3 isZoomedToFit] & 1) == 0)
    {
      v6 = [*(a1 + 32) _roiRenderRequestForComposition:*(a1 + 40)];
      v7 = [*(a1 + 32) _roiRenderResponseHandler];
      [v6 submit:v7];
    }

    v4 = [*(a1 + 32) _backfillRenderRequestForComposition:*(a1 + 40)];
    v5 = [*(a1 + 32) _backfillRenderResponseHandler];
  }

  v8 = v5;
  [v4 submit:v5];

  v9 = *(a1 + 32);
  v10 = *(v9 + 120);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__NUMediaViewRenderer__updateImageRenderForComposition___block_invoke_2;
  v12[3] = &unk_279973E38;
  v12[4] = v9;
  return [MEMORY[0x277D2D018] commitAndNotifyOnQueue:v10 withBlock:v12];
}

- (void)_renderFinishedWithGeometry:(id)a3 layer:(id)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v7 = a3;
  specific = a4;
  v9 = [(NUMediaViewRenderer *)self mediaView];
  v10 = [v9 _renderView];
  v11 = [v9 _scrollView];
  v12 = [v10 _backfillLayer];

  [v7 scaledSize];
  if ([(NUMediaViewRenderer *)self isZoomedToFit]&& v12 == specific)
  {
    [v7 renderScale];
    if ((NUScaleCompare() & 0x8000000000000000) == 0)
    {
      [(NUMediaViewRenderer *)self targetSize];
      NUPixelSizeFromCGSize();
      NUScaleToFitSizeInSize();
    }

    NUScaleToDouble();
    v4 = v13;
    [v9 setScrollUpdatesSuppressed:1];
    [v11 minimumZoomScale];
    if (vabdd_f64(v14, v4) > 0.00000011920929 || ([v11 zoomScale], vabdd_f64(v15, v4) > 0.00000011920929) || (objc_msgSend(v11, "maximumZoomScale"), vabdd_f64(v37, v4) > 0.00000011920929) && (objc_msgSend(v11, "maximumZoomScale"), vabdd_f64(v38, self->_maximumZoomScale) > 0.00000011920929))
    {
      [v11 setMinimumZoomScale:1.17549435e-38];
      [v11 setMaximumZoomScale:3.40282347e38];
      [v11 setMinimumZoomScale:v4];
      maximumZoomScale = self->_maximumZoomScale;
      if (v4 >= maximumZoomScale)
      {
        maximumZoomScale = v4;
      }

      [v11 setMaximumZoomScale:maximumZoomScale];
      [v11 setZoomScale:v4];
      if (*MEMORY[0x277D2D078] == -1)
      {
        goto LABEL_10;
      }

      goto LABEL_32;
    }
  }

  while (1)
  {
    [v10 setGeometry:v7];
    if (specific)
    {
      break;
    }

    v43 = NUAssertLogger_467();
    v10 = &off_25BD44000;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"nil render layer"];
      *buf = 138543362;
      v48 = *&v44;
      _os_log_error_impl(&dword_25BD29000, v43, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v9 = MEMORY[0x277D2CF60];
    specific = dispatch_get_specific(*MEMORY[0x277D2CF60]);
    v7 = NUAssertLogger_467();
    v45 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v45)
      {
        specific = dispatch_get_specific(*v9);
        v46 = MEMORY[0x277CCACC8];
        v10 = specific;
        v9 = [v46 callStackSymbols];
        self = [v9 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v48 = *&specific;
        v49 = 2114;
        v50 = self;
        _os_log_error_impl(&dword_25BD29000, v7, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v45)
    {
      specific = [MEMORY[0x277CCACC8] callStackSymbols];
      v9 = [specific componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v48 = *&v9;
      _os_log_error_impl(&dword_25BD29000, v7, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
LABEL_32:
    dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_464);
LABEL_10:
    v17 = *MEMORY[0x277D2D088];
    if (os_log_type_enabled(*MEMORY[0x277D2D088], OS_LOG_TYPE_DEBUG))
    {
      v39 = v17;
      [v11 minimumZoomScale];
      v41 = v40;
      [v11 maximumZoomScale];
      *buf = 134218496;
      v48 = v4;
      v49 = 2048;
      v50 = v41;
      v51 = 2048;
      v52 = v42;
      _os_log_debug_impl(&dword_25BD29000, v39, OS_LOG_TYPE_DEBUG, "renderedScale = %g, minimumScale = %g, maximumScale = %g", buf, 0x20u);
    }
  }

  v18 = *MEMORY[0x277CBF348];
  v19 = *(MEMORY[0x277CBF348] + 8);
  [specific setAnchorPoint:{*MEMORY[0x277CBF348], v19}];
  [specific setGeometry:v7];
  NUPixelSizeToCGRect();
  if (v12 == specific)
  {
    v28 = v20;
    v29 = v21;
    v30 = v22;
    v31 = v23;
    [specific bounds];
    if (vabdd_f64(v32, v28) > 0.00000011920929 || ([specific bounds], vabdd_f64(v33, v29) > 0.00000011920929) || (objc_msgSend(specific, "bounds"), vabdd_f64(v34, v30) > 0.00000011920929) || (objc_msgSend(specific, "bounds"), vabdd_f64(v35, v31) > 0.00000011920929))
    {
      [specific setBounds:{v28, v29, v30, v31}];
      [specific setPosition:{v18, v19}];
    }
  }

  else
  {
    [(NUMediaViewRenderer *)self _scrollBounds];
    v25 = v24;
    v27 = v26;
    [v10 convertRect:v11 fromView:?];
    [v10 convertRectToImage:?];
    [specific setPosition:?];
    [specific setBounds:{0.0, 0.0, v25 * self->_backingScale, v27 * self->_backingScale}];
  }

  v36 = [v10 _roiLayer];
  [v36 setHidden:{-[NUMediaViewRenderer isZoomedToFit](self, "isZoomedToFit")}];

  [v9 setScrollUpdatesSuppressed:0];
  [v9 geometryUpdated];
}

- (id)_regionPolicyForZoomTargetRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(NUMediaViewRenderer *)self mediaView];
  v9 = [v8 _renderView];
  v10 = [v8 _scrollView];
  v11 = [[NUViewport alloc] initWithSize:width backingScaleFactor:height, self->_backingScale];
  [(NUViewport *)v11 setPosition:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  [v9 convertRect:v10 fromView:{x, y, width, height}];
  [v9 bounds];
  v12 = [v9 _roiLayer];
  [v12 nu_contentsAreFlipped];
  NUCGRectConvertFromRectToRect();
  v14 = v13;
  v16 = v15;

  [(NUViewport *)v11 setAnchorPoint:v14, v16, 0, 0, 0x3FF0000000000000, 0x3FF0000000000000];
  v17 = [[NUViewportRegionPolicy alloc] initWithViewport:v11];

  return v17;
}

- (CGRect)_scrollBounds
{
  WeakRetained = objc_loadWeakRetained(&self->_mediaView);
  v3 = [WeakRetained _scrollView];

  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGSize)targetSize
{
  WeakRetained = objc_loadWeakRetained(&self->_mediaView);
  [(NUMediaViewRenderer *)self _scrollBounds];
  v5 = v4;
  v7 = v6;
  [WeakRetained edgeInsets];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [WeakRetained _renderView];
  v17 = [v16 _roiLayer];
  [v17 nu_contentsAreFlipped];
  if (v5 - (v15 + v11) > 0.0)
  {
    v18 = v5 - (v15 + v11);
  }

  else
  {
    v18 = 0.0;
  }

  if (v7 - (v9 + v13) > 0.0)
  {
    v19 = v7 - (v9 + v13);
  }

  else
  {
    v19 = 0.0;
  }

  CGAffineTransformMakeScale(&v26, self->_backingScale, self->_backingScale);
  v20 = v19 * v26.c + v26.a * v18;
  v21 = fmin(v20, v19 * v26.d + v26.b * v18) < 1.0;
  if (v21)
  {
    v22 = 768.0;
  }

  else
  {
    v22 = v19 * v26.d + v26.b * v18;
  }

  if (v21)
  {
    v23 = 1024.0;
  }

  else
  {
    v23 = v20;
  }

  v24 = v23;
  v25 = v22;
  result.height = v25;
  result.width = v24;
  return result;
}

- (CGRect)convertRect:(CGRect)a3 fromImageToView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_mediaView);
  v11 = [WeakRetained _renderView];

  v12 = [v11 _containerLayer];
  v13 = [v9 layer];

  [v12 convertRect:v13 toLayer:{x, y, width, height}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGRect)convertRect:(CGRect)a3 toImageFromView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_mediaView);
  v11 = [WeakRetained _renderView];

  v12 = [v11 _containerLayer];
  v13 = [v9 layer];

  [v12 convertRect:v13 fromLayer:{x, y, width, height}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)a3 fromImageToView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_mediaView);
  v9 = [WeakRetained _renderView];

  v10 = [v9 _containerLayer];
  v11 = [v7 layer];

  [v10 convertPoint:v11 toLayer:{x, y}];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.y = v17;
  result.x = v16;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)a3 toImageFromView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_mediaView);
  v9 = [WeakRetained _renderView];

  v10 = [v9 _containerLayer];
  v11 = [v7 layer];

  [v10 convertPoint:v11 fromLayer:{x, y}];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.y = v17;
  result.x = v16;
  return result;
}

- (BOOL)isReady
{
  v2 = [(NUMediaViewRenderer *)self mediaView];
  v3 = [v2 _renderView];
  v4 = [v3 _backfillLayer];
  v5 = v4 != 0;

  return v5;
}

- (BOOL)isZoomedToFit
{
  WeakRetained = objc_loadWeakRetained(&self->_mediaView);
  v3 = [WeakRetained _scrollView];

  [v3 zoomScale];
  v5 = v4;
  [v3 minimumZoomScale];
  LOBYTE(WeakRetained) = v5 == v6;

  return WeakRetained;
}

- (BOOL)pipelineFilersHaveChanged
{
  pipelineFilters = self->_pipelineFilters;
  if (pipelineFilters == self->_previousPipelineFilters)
  {
    return 0;
  }

  else
  {
    return ![(NSArray *)pipelineFilters isEqualToArray:v2, v3];
  }
}

- (void)setPipelineFilters:(id)a3
{
  pipelineFilters = self->_pipelineFilters;
  v5 = a3;
  v6 = [(NSArray *)pipelineFilters copy];
  previousPipelineFilters = self->_previousPipelineFilters;
  self->_previousPipelineFilters = v6;

  v8 = [v5 copy];
  v9 = self->_pipelineFilters;
  self->_pipelineFilters = v8;
}

- (void)wait
{
  v12 = *MEMORY[0x277D85DE8];
  NUAbsoluteTime();
  v4 = v3;
  renderGroup = self->_renderGroup;
  v6 = dispatch_time(0, 1000000000);
  dispatch_group_wait(renderGroup, v6);
  NUAbsoluteTime();
  v8 = v7;
  if (*MEMORY[0x277D2D078] != -1)
  {
    dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_464);
  }

  v9 = *MEMORY[0x277D2D088];
  if (os_log_type_enabled(*MEMORY[0x277D2D088], OS_LOG_TYPE_DEBUG))
  {
    v10 = 134217984;
    v11 = (v8 - v4) * 1000.0;
    _os_log_debug_impl(&dword_25BD29000, v9, OS_LOG_TYPE_DEBUG, "Waited for %0.1f ms", &v10, 0xCu);
  }

  [(NUMediaViewRenderer *)self _updateBackfillLayerWithLatestRenderResponse];
  [(NUMediaViewRenderer *)self _updateROILayerWithLatestRenderResponse];
}

- (void)_endAnimating
{
  self->_lastZoomRenderTime = 0.0;
  backfillRenderRequest = self->_backfillRenderRequest;
  v4 = [objc_alloc(MEMORY[0x277D2D000]) initWithLevel:1];
  [(NUSurfaceRenderRequest *)backfillRenderRequest setPriority:v4];

  roiRenderRequest = self->_roiRenderRequest;
  v6 = [objc_alloc(MEMORY[0x277D2D000]) initWithLevel:0];
  [(NUSurfaceRenderRequest *)roiRenderRequest setPriority:v6];
}

- (void)_beginAnimating
{
  backfillRenderRequest = self->_backfillRenderRequest;
  v4 = [objc_alloc(MEMORY[0x277D2D000]) initWithLevel:3];
  [(NUSurfaceRenderRequest *)backfillRenderRequest setPriority:v4];

  roiRenderRequest = self->_roiRenderRequest;
  v6 = [objc_alloc(MEMORY[0x277D2D000]) initWithLevel:2];
  [(NUSurfaceRenderRequest *)roiRenderRequest setPriority:v6];

  NUAbsoluteTime();
  self->_lastZoomRenderTime = v7;
}

- (void)endZooming
{
  [(NUMediaViewRenderer *)self _endAnimating];
  self->_isZooming = 0;
  self->_lastZoomScale = 0.0;
}

- (void)beginZooming
{
  self->_isZooming = 1;
  WeakRetained = objc_loadWeakRetained(&self->_mediaView);
  v4 = [WeakRetained _scrollView];
  [v4 zoomScale];
  self->_lastZoomScale = v5;

  [(NUMediaViewRenderer *)self _beginAnimating];
}

- (void)updateMedia:(id)a3 displayType:(int64_t)a4
{
  v18 = a3;
  [(NUMediaViewRenderer *)self _updateDisplayForMediaType:a4];
  self->_mediaType = a4;
  if (a4 == 2)
  {
    v8 = [(NUMediaViewRenderer *)self _backfillRenderRequestForMedia:v18];
    v10 = [(NUMediaViewRenderer *)self _videoFrameImageRenderResponseHandler];
    [v8 submit:v10];

    v11 = [(NUMediaViewRenderer *)self _videoRenderRequestForMedia:v18];
    v12 = [(NUMediaViewRenderer *)self mediaView];
    [v12 _rendererDidStartPreparingVideo];

    v13 = [(NUMediaViewRenderer *)self canRenderVideoLive];
    v14 = [(NUMediaViewRenderer *)self pipelineFilters];
    if (!v13)
    {
      v15 = [(NUMediaViewRenderer *)self cacheVideoRenderFilter];
      v16 = [v14 arrayByAddingObject:v15];

      v14 = v16;
    }

    [v11 setPipelineFilters:v14];
    v17 = [(NUMediaViewRenderer *)self _videoRenderResponseHandler];
    [v11 submit:v17];

    self->_displayType = 2;
  }

  else
  {
    if (a4 != 1)
    {
      goto LABEL_10;
    }

    if (![(NUMediaViewRenderer *)self isZoomedToFit])
    {
      v6 = [(NUMediaViewRenderer *)self _roiRenderRequestForMedia:v18];
      v7 = [(NUMediaViewRenderer *)self _roiRenderResponseHandler];
      [v6 submit:v7];
    }

    v8 = [(NUMediaViewRenderer *)self _backfillRenderRequestForMedia:v18];
    v9 = [(NUMediaViewRenderer *)self _backfillRenderResponseHandler];
    [v8 submit:v9];

    self->_displayType = 1;
  }

LABEL_10:
}

- (void)updateComposition:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = a3;
  v4 = [(NUMediaViewRenderer *)self mediaView];
  if (self->_displayType == 2 || [v22 mediaType] == 3 && objc_msgSend(v4, "loopsVideoPlayback") && objc_msgSend(v4, "isVideoEnabled"))
  {
    [v22 setMediaType:2];
  }

  v5 = [v22 mediaType];
  if (!self->_displayType)
  {
    [(NUMediaViewRenderer *)self _updateDisplayForMediaType:v5];
  }

  if (v5 > 1)
  {
    if (v5 == 2)
    {
      if ([(NUMediaViewRenderer *)self canRenderVideoLive])
      {
        [(NUMediaViewRenderer *)self _updateVideoComposition:v22];
      }

      else
      {
        [(NUAVPlayerController *)self->_nuAVPlayerController pause];
        [(NUMediaViewRenderer *)self _updateImageRenderForComposition:v22];
        [(NUMediaViewRenderer *)self _coalesceUpdateVideoComposition:v22];
      }
    }

    else if (v5 == 3)
    {
      [(NUMediaViewRenderer *)self _updateImageRenderForComposition:v22];
      [(NUMediaViewRenderer *)self _coalesceUpdateLivePhotoComposition:v22];
    }

    goto LABEL_23;
  }

  if (v5 == 1)
  {
    [(NUMediaViewRenderer *)self _updateImageRenderForComposition:v22];
LABEL_23:

    return;
  }

  if (v5)
  {
    goto LABEL_23;
  }

  v6 = NUAssertLogger_467();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown mediaType for composition: %@", v22];
    *buf = 138543362;
    v24 = v7;
    _os_log_error_impl(&dword_25BD29000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
  }

  v8 = MEMORY[0x277D2CF60];
  specific = dispatch_get_specific(*MEMORY[0x277D2CF60]);
  v10 = NUAssertLogger_467();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  if (specific)
  {
    if (v11)
    {
      v14 = dispatch_get_specific(*v8);
      v15 = MEMORY[0x277CCACC8];
      v16 = v14;
      v17 = [v15 callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v24 = v14;
      v25 = 2114;
      v26 = v18;
      _os_log_error_impl(&dword_25BD29000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }
  }

  else if (v11)
  {
    v12 = [MEMORY[0x277CCACC8] callStackSymbols];
    v13 = [v12 componentsJoinedByString:@"\n"];
    *buf = 138543362;
    v24 = v13;
    _os_log_error_impl(&dword_25BD29000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
  }

  v19 = _NUAssertFailHandler();
  [(NUMediaViewRenderer *)v19 _setupRenderRequest:v20, v21];
}

- (void)_setupRenderRequest:(id)a3
{
  v4 = a3;
  v5 = [(NUMediaViewRenderer *)self colorSpace];

  if (v5)
  {
    v6 = [(NUMediaViewRenderer *)self colorSpace];
    [v4 setColorSpace:v6];
  }

  v7 = [(NUMediaViewRenderer *)self pixelFormat];

  if (v7)
  {
    v8 = [(NUMediaViewRenderer *)self pixelFormat];
    [v4 setPixelFormat:v8];
  }

  [(NUMediaViewRenderer *)self displayMaximumEDRHeadroom];
  if (v9 > 1.0)
  {
    [(NUMediaViewRenderer *)self displayMaximumEDRHeadroom];
    [v4 setMaxEDRHeadroom:?];
    [(NUMediaViewRenderer *)self displayCurrentEDRHeadroom];
    [v4 setCurrentEDRHeadroom:?];
  }

  v10 = [(NUMediaViewRenderer *)self pipelineFilters];
  [v4 setPipelineFilters:v10];

  v15 = 0uLL;
  v16 = 0;
  v11 = [(NUAVPlayerController *)self->_nuAVPlayerController player];
  v12 = v11;
  if (v11)
  {
    [v11 currentTime];
  }

  else
  {
    v15 = 0uLL;
    v16 = 0;
  }

  if (BYTE12(v15))
  {
    v13 = v15;
    v14 = v16;
    [v4 setTime:&v13];
  }
}

- (NUMediaViewRenderer)init
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D2D078];
  if (*MEMORY[0x277D2D078] != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v4 = MEMORY[0x277D2D070];
    v5 = *MEMORY[0x277D2D070];
    if (os_log_type_enabled(*MEMORY[0x277D2D070], OS_LOG_TYPE_ERROR))
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = v5;
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(a2);
      v11 = [v6 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v9, v10];
      *buf = 138543362;
      v27 = v11;
      _os_log_error_impl(&dword_25BD29000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

      v12 = *v3;
      if (dispatch_get_specific(*MEMORY[0x277D2CF60]))
      {
        if (v12 != -1)
        {
          dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_462);
        }

LABEL_11:
        v18 = *v4;
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(*MEMORY[0x277D2CF60]);
          v20 = MEMORY[0x277CCACC8];
          v21 = specific;
          v22 = v18;
          v23 = [v20 callStackSymbols];
          v24 = [v23 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v27 = specific;
          v28 = 2114;
          v29 = v24;
          _os_log_error_impl(&dword_25BD29000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }

        goto LABEL_13;
      }

      if (v12 != -1)
      {
        dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_462);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x277D2CF60]))
    {
      goto LABEL_11;
    }

    v13 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v14 = MEMORY[0x277CCACC8];
      v15 = v13;
      v16 = [v14 callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v17;
      _os_log_error_impl(&dword_25BD29000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_13:
    v25 = objc_opt_class();
    NSStringFromClass(v25);
    objc_claimAutoreleasedReturnValue();
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    _NUAssertFailHandler();
LABEL_14:
    dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_462);
  }
}

- (NUMediaViewRenderer)initWithMediaView:(id)a3
{
  v23.receiver = self;
  v23.super_class = NUMediaViewRenderer;
  v3 = a3;
  v4 = [(NUMediaViewRenderer *)&v23 init];
  v5 = dispatch_group_create();
  renderGroup = v4->_renderGroup;
  v4->_renderGroup = v5;

  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_create("View Controller Image Response", v7);
  renderQueue = v4->_renderQueue;
  v4->_renderQueue = v8;

  v4->_backingScale = 1.0;
  v4->_maximumZoomScale = 1.0;
  objc_storeWeak(&v4->_mediaView, v3);

  v10 = objc_alloc(MEMORY[0x277D2CF90]);
  v11 = [v10 initWithDelay:{0.25, v23.receiver, v23.super_class}];
  livePhotoUpdateCoalescer = v4->_livePhotoUpdateCoalescer;
  v4->_livePhotoUpdateCoalescer = v11;

  v13 = [objc_alloc(MEMORY[0x277D2CF90]) initWithDelay:0.5];
  videoUpdateCoalescer = v4->_videoUpdateCoalescer;
  v4->_videoUpdateCoalescer = v13;

  v15 = [objc_alloc(MEMORY[0x277D2CF90]) initWithDelay:0.1];
  backfillUpdateCoalescer = v4->_backfillUpdateCoalescer;
  v4->_backfillUpdateCoalescer = v15;

  v17 = [MEMORY[0x277D2CFF8] currentPlatform];
  v4->_canRenderLoopingVideoLive = [v17 supportsLiveVideoRendering];

  v18 = objc_alloc_init(MEMORY[0x277D2CFE8]);
  observatory = v4->_observatory;
  v4->_observatory = v18;

  v20 = os_log_create("com.apple.neutrinokit.mediaview", "mvr");
  log = v4->_log;
  v4->_log = v20;

  v4->_mediaType = 1;
  return v4;
}

+ (BOOL)_forceUpdateForNewVideoComposition:(id)a3 previousComposition:(id)a4 newAsset:(id)a5 previousAsset:(id)a6 isPlaying:(BOOL)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v13 != v14 || !v11 && v12 || v11 && !v12)
  {
    LOBYTE(v15) = 1;
    goto LABEL_7;
  }

  if (!v11 || !v12)
  {
    if (a7)
    {
      LOBYTE(v15) = 0;
      goto LABEL_7;
    }

LABEL_18:
    v15 = [MEMORY[0x277D2D048] compositionInstructions:v11 areEqualToCompositionInstructions:v12] ^ 1;
    goto LABEL_7;
  }

  [v11 renderSize];
  v18 = v17;
  v20 = v19;
  [v12 renderSize];
  LOBYTE(v15) = v20 != v22 || v18 != v21;
  if ((v15 & 1) == 0 && !a7)
  {
    goto LABEL_18;
  }

LABEL_7:

  return v15;
}

- (void)sweep:(id)a3 withBlock:(id)a4
{
  v11 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_mediaView);
  v8 = [WeakRetained _renderView];
  if (v8)
  {
    if ([(NUMediaViewRenderer *)self isZoomedToFit])
    {
      v9 = [(NUMediaViewRenderer *)self _backfillRenderRequestForComposition:v11];
      [(NUMediaViewRenderer *)self _backfillRenderResponseHandler];
    }

    else
    {
      v9 = [(NUMediaViewRenderer *)self _roiRenderRequestForComposition:v11];
      [(NUMediaViewRenderer *)self _roiRenderResponseHandler];
    }
    v10 = ;
    v6[2](v6, v9, v10);
  }
}

- (void)_releaseAVObjects
{
  v33 = *MEMORY[0x277D85DE8];
  if ([(NUMediaViewRenderer *)self computedDisplayType]!= 2)
  {
    v7 = MEMORY[0x277D2D078];
    if (*MEMORY[0x277D2D078] != -1)
    {
      dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_462);
    }

    v8 = MEMORY[0x277D2D070];
    v9 = *MEMORY[0x277D2D070];
    if (os_log_type_enabled(*MEMORY[0x277D2D070], OS_LOG_TYPE_DEFAULT))
    {
      v10 = MEMORY[0x277CCACA8];
      v11 = v9;
      v12 = [v10 stringWithFormat:@"_releaseAVObjects should only be called when displaying video"];
      v29 = 138543362;
      v30 = v12;
      _os_log_impl(&dword_25BD29000, v11, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", &v29, 0xCu);

      v13 = *v7;
      if (dispatch_get_specific(*MEMORY[0x277D2CF60]))
      {
        if (v13 != -1)
        {
          dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_462);
        }

        goto LABEL_12;
      }

      if (v13 != -1)
      {
        dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_462);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x277D2CF60]))
    {
LABEL_12:
      v14 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        specific = dispatch_get_specific(*MEMORY[0x277D2CF60]);
        v16 = MEMORY[0x277CCACC8];
        v17 = specific;
        v18 = v14;
        v19 = [v16 callStackSymbols];
        v20 = [v19 componentsJoinedByString:@"\n"];
        v29 = 138543618;
        v30 = specific;
        v31 = 2114;
        v32 = v20;
        _os_log_error_impl(&dword_25BD29000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v29, 0x16u);
      }

LABEL_23:
      _NUAssertContinueHandler();
      return;
    }

    v24 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      v25 = MEMORY[0x277CCACC8];
      v26 = v24;
      v27 = [v25 callStackSymbols];
      v28 = [v27 componentsJoinedByString:@"\n"];
      v29 = 138543362;
      v30 = v28;
      _os_log_error_impl(&dword_25BD29000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v29, 0xCu);
    }

    goto LABEL_23;
  }

  if (!self->_didReleaseAVObjects)
  {
    self->_didReleaseAVObjects = 1;
    v3 = [(NUMediaViewRenderer *)self mediaView];
    v4 = [v3 _videoPlayerView];
    v5 = [v4 snapshotViewAfterScreenUpdates:0];
    if (v5)
    {
      v6 = [v3 _renderView];
      [v6 addSubview:v5];

      [(NUMediaViewRenderer *)self _addFullExtentConstraintsForView:v5];
    }

    else
    {
      if (*MEMORY[0x277D2D078] != -1)
      {
        dispatch_once(MEMORY[0x277D2D078], &__block_literal_global_464);
      }

      v21 = *MEMORY[0x277D2D088];
      if (os_log_type_enabled(*MEMORY[0x277D2D088], OS_LOG_TYPE_ERROR))
      {
        LOWORD(v29) = 0;
        _os_log_error_impl(&dword_25BD29000, v21, OS_LOG_TYPE_ERROR, "NUMediaViewRenderer: failed to create snapshot for videoView", &v29, 2u);
      }
    }

    [(NUMediaViewRenderer *)self _tearDownAVPlayerController];
    [v3 _rendererDidCreateAVPlayerController:0];
    v22 = [(NUVideoRenderRequest *)self->_videoRenderRequest renderContext];
    [v22 cancelAllRequests];

    videoRenderRequest = self->_videoRenderRequest;
    self->_videoRenderRequest = 0;
  }
}

@end