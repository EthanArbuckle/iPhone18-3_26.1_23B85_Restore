@interface NTKVideoPlayerView
- (BOOL)_shouldPlayVideoOnTap;
- (NTKVideoPlayerView)initWithFrame:(CGRect)frame;
- (NTKVideoPlayerViewFaceDelegate)delegate;
- (id)videoPlayerView;
- (void)_advanceListingForEvent:(unint64_t)event;
- (void)_createCurtainView;
- (void)_createPosterImageView;
- (void)_fadeFromCurtainViewIfVisible;
- (void)_fadeFromPosterImageAndCurtainViewIfVisible;
- (void)_fadeFromPosterImageIfVisible:(id)visible;
- (void)_fadeToCurtainView:(id)view;
- (void)_fadeToPosterImage;
- (void)_loadCurrentListing;
- (void)_loadVideoPlayerView;
- (void)_mediaServicesWereReset:(id)reset;
- (void)_pause;
- (void)_play;
- (void)_playIfNotPaused;
- (void)_playNextVideoForEvent:(unint64_t)event animated:(BOOL)animated;
- (void)_prerollVideo;
- (void)_queueSubsequentListingIfSupported;
- (void)_removeCurrentVideo;
- (void)_resetVideoPlayer;
- (void)_rewindLoadedVideoToBeginning;
- (void)_schedulePreroll;
- (void)_showCurtainView;
- (void)_showPosterImageView;
- (void)_unloadVideoPlayerView;
- (void)_updatePauseState;
- (void)applyDataMode:(int64_t)mode comingFromDataMode:(int64_t)dataMode;
- (void)dealloc;
- (void)didAddSubview:(id)subview;
- (void)handleScreenOff;
- (void)handleStyleDidChange;
- (void)layoutSubviews;
- (void)setDataSource:(id)source;
- (void)setPausedViewEnabled:(BOOL)enabled;
- (void)setPosterImage:(id)image;
- (void)setShouldApplyVideoInsetToPosterImage:(BOOL)image;
- (void)setVideoPlayerInset:(UIEdgeInsets)inset;
- (void)setVideoPlayerTransform:(CGAffineTransform *)transform;
- (void)transitionToEditing;
- (void)videoPlayerView:(id)view didFinishPrerolling:(BOOL)prerolling;
- (void)videoPlayerViewDidBeginPlaying:(id)playing;
- (void)videoPlayerViewDidBeginPlayingQueuedVideo:(id)video;
- (void)videoPlayerViewDidPauseAfterPlayingVideoToEnd:(id)end;
- (void)videoPlayerViewWasTapped;
@end

@implementation NTKVideoPlayerView

- (NTKVideoPlayerView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = NTKVideoPlayerView;
  v3 = [(NTKVideoPlayerView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(NTKVideoPlayerView *)v3 _createPosterImageView];
    [(NTKVideoPlayerView *)v4 _createCurtainView];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__mediaServicesWereReset_ name:*MEMORY[0x277CB80A0] object:0];

    if (CLKIsClockFaceApp())
    {
      v6 = objc_alloc_init(NTKTaskScheduler);
      taskScheduler = v4->_taskScheduler;
      v4->_taskScheduler = v6;
    }

    v4->_currentDataMode = 0;
    v4->_fadeAnimationDuration = 0.4;
    v4->_pausedViewEnabled = 1;
    v4->_playerBehavior = 3;
    v4->_prerollState = 0;
    v4->_videoPlayerInViewHierarchy = 0;
    v8 = *(MEMORY[0x277D768C8] + 16);
    *&v4->_videoPlayerEdgeInsets.top = *MEMORY[0x277D768C8];
    *&v4->_videoPlayerEdgeInsets.bottom = v8;
    v4->_shouldApplyVideoInsetToPosterImage = 0;
    v4->_isHandlingTapGesture = 0;
    v4->_paused = 1;
    v4->_frozen = 0;
    v4->_slow = 0;
    v4->_orbing = 0;
  }

  return v4;
}

- (void)dealloc
{
  curtainView = self->_curtainView;
  self->_curtainView = 0;

  posterImageView = self->_posterImageView;
  self->_posterImageView = 0;

  posterContainerView = self->_posterContainerView;
  self->_posterContainerView = 0;

  videoPlayerView = self->_videoPlayerView;
  self->_videoPlayerView = 0;

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(NTKVideoPlayerView *)self _cancelScheduledPreroll];
  v8.receiver = self;
  v8.super_class = NTKVideoPlayerView;
  [(NTKVideoPlayerView *)&v8 dealloc];
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = NTKVideoPlayerView;
  [(NTKVideoPlayerView *)&v20 layoutSubviews];
  [(NTKVideoPlayerView *)self bounds];
  top = self->_videoPlayerEdgeInsets.top;
  left = self->_videoPlayerEdgeInsets.left;
  v6 = v5 + left;
  v8 = v7 + top;
  v10 = v9 - (left + self->_videoPlayerEdgeInsets.right);
  v12 = v11 - (top + self->_videoPlayerEdgeInsets.bottom);
  [(CLKVideoPlayerView *)self->_videoPlayerView ntk_setBoundsAndPositionFromFrame:v5 + left, v7 + top, v10, v12];
  curtainView = self->_curtainView;
  [(NTKVideoPlayerView *)self bounds];
  [(UIView *)curtainView ntk_setBoundsAndPositionFromFrame:?];
  posterContainerView = self->_posterContainerView;
  [(NTKVideoPlayerView *)self bounds];
  [(UIView *)posterContainerView ntk_setBoundsAndPositionFromFrame:?];
  posterImageView = self->_posterImageView;
  if (!self->_shouldApplyVideoInsetToPosterImage)
  {
    [(NTKVideoPlayerView *)self bounds];
    v6 = v16;
    v8 = v17;
    v10 = v18;
    v12 = v19;
  }

  [(UIImageView *)posterImageView ntk_setBoundsAndPositionFromFrame:v6, v8, v10, v12];
}

- (void)didAddSubview:(id)subview
{
  v4.receiver = self;
  v4.super_class = NTKVideoPlayerView;
  [(NTKVideoPlayerView *)&v4 didAddSubview:subview];
  if (self->_videoPlayerView)
  {
    [(NTKVideoPlayerView *)self sendSubviewToBack:?];
  }

  if (self->_curtainView)
  {
    [(NTKVideoPlayerView *)self bringSubviewToFront:?];
  }

  if (self->_posterContainerView)
  {
    [(NTKVideoPlayerView *)self bringSubviewToFront:?];
  }
}

- (void)handleScreenOff
{
  self->_isHandlingTapGesture = 0;
  if (self->_videoPlayerInViewHierarchy)
  {
    if ([(NTKVideoPlayerView *)self _shouldChangeVideoOnWake])
    {
      [(NTKVideoPlayerView *)self _advanceListingForEvent:1];
    }

    [(NTKVideoPlayerView *)self _pause];
    [(NTKVideoPlayerView *)self _showCurtainView];
    videoPlayerView = [(NTKVideoPlayerView *)self videoPlayerView];
    [videoPlayerView expectPreroll];

    [(NTKVideoPlayerView *)self _schedulePreroll];
  }
}

- (void)handleStyleDidChange
{
  if (self->_currentDataMode == 1)
  {

    [(NTKVideoPlayerView *)self _playNextVideoForEvent:0 animated:0];
  }

  else
  {
    [(NTKVideoPlayerView *)self _unloadVideoPlayerView];
    [(NTKVideoPlayerView *)self _advanceListingForEvent:0];
    [(NTKVideoPlayerView *)self _loadCurrentListing];

    [(NTKVideoPlayerView *)self _showPosterImageView];
  }
}

- (void)videoPlayerViewWasTapped
{
  if (!self->_isHandlingTapGesture)
  {
    if ([(NTKVideoPlayerView *)self _shouldChangeVideoOnTap])
    {
      self->_isHandlingTapGesture = 1;

      [(NTKVideoPlayerView *)self _playNextVideoForEvent:2 animated:1];
    }

    else if ([(NTKVideoPlayerView *)self _shouldPlayVideoOnTap])
    {
      self->_isHandlingTapGesture = 1;
      [(NTKVideoPlayerView *)self _rewindLoadedVideoToBeginning];

      [(NTKVideoPlayerView *)self _play];
    }
  }
}

- (void)transitionToEditing
{
  [(NTKVideoPlayerView *)self _updatePauseState];
  if ([(UIView *)self->_posterContainerView isHidden])
  {

    [(NTKVideoPlayerView *)self _fadeToPosterImage];
  }
}

- (void)applyDataMode:(int64_t)mode comingFromDataMode:(int64_t)dataMode
{
  if (self->_currentDataMode == mode)
  {
    return;
  }

  self->_currentDataMode = mode;
  self->_isHandlingTapGesture = 0;
  if (mode > 2)
  {
    switch(mode)
    {
      case 3:
        if (dataMode == 1)
        {
LABEL_26:

          [(NTKVideoPlayerView *)self _updatePauseState];
          return;
        }

        break;
      case 4:
        [(NTKVideoPlayerView *)self _unloadVideoPlayerView:4];
        break;
      case 5:
        [(NTKVideoPlayerView *)self _showPosterImageView:5];
        goto LABEL_26;
      default:
        return;
    }

    goto LABEL_22;
  }

  if (!mode)
  {
LABEL_22:

    [(NTKVideoPlayerView *)self _showPosterImageView];
    return;
  }

  if (mode != 1)
  {
    if (mode != 2)
    {
      return;
    }

    if (self->_videoPlayerInViewHierarchy)
    {
      [(NTKVideoPlayerView *)self _hidePosterImageView];
    }

    else
    {
      [(NTKVideoPlayerView *)self _loadVideoPlayerView];
    }

    goto LABEL_26;
  }

  if (self->_videoPlayerInViewHierarchy)
  {
    if (self->_prerollState == 3 && (-[NTKVideoPlayerView videoPlayerView](self, "videoPlayerView"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isPlaybackReady], v5, v6))
    {
      if (![(UIView *)self->_posterContainerView isHidden])
      {
        [(NTKVideoPlayerView *)self _fadeFromPosterImageIfVisible:0];
      }

      [(NTKVideoPlayerView *)self _hideCurtainView];
      [(NTKVideoPlayerView *)self _play];
    }

    else
    {
      [(NTKVideoPlayerView *)self _cancelScheduledPreroll];
      if (self->_prerollState)
      {
        [(NTKVideoPlayerView *)self _loadCurrentListing];
        [(NTKVideoPlayerView *)self _play];
      }

      else
      {
        [(NTKVideoPlayerView *)self _updatePauseState];
      }

      [(NTKVideoPlayerView *)self _fadeFromPosterImageIfVisible:0];
    }

    self->_prerollState = 0;
  }

  else
  {

    [(NTKVideoPlayerView *)self _playNextVideoForEvent:0 animated:1];
  }
}

- (id)videoPlayerView
{
  [(NTKVideoPlayerView *)self _createVideoPlayerViewIfNeeded];
  videoPlayerView = self->_videoPlayerView;

  return videoPlayerView;
}

- (void)_resetVideoPlayer
{
  self->_prerollState = 0;
  self->_isHandlingTapGesture = 0;
  videoPlayerView = [(NTKVideoPlayerView *)self videoPlayerView];
  [videoPlayerView setDelegate:0];

  [(NTKVideoPlayerView *)self _unloadVideoPlayerView];
  videoPlayerView = self->_videoPlayerView;
  self->_videoPlayerView = 0;

  [(NTKVideoPlayerView *)self _loadVideoPlayerView];
}

- (void)_loadVideoPlayerView
{
  [(NTKVideoPlayerView *)self _createVideoPlayerViewIfNeeded];
  videoPlayerView = [(NTKVideoPlayerView *)self videoPlayerView];
  [(NTKVideoPlayerView *)self addSubview:videoPlayerView];

  self->_videoPlayerInViewHierarchy = 1;
}

- (void)_unloadVideoPlayerView
{
  [(NTKVideoPlayerView *)self _cancelScheduledPreroll];
  self->_prerollState = 0;
  [(NTKVideoPlayerView *)self _updatePauseState];
  [(NTKVideoPlayerView *)self _rewindLoadedVideoToBeginning];
  videoPlayerView = [(NTKVideoPlayerView *)self videoPlayerView];
  [videoPlayerView removeFromSuperview];

  self->_videoPlayerInViewHierarchy = 0;
}

- (void)setDataSource:(id)source
{
  objc_storeStrong(&self->_dataSource, source);
  [(NTKVideoPlayerView *)self _cancelScheduledPreroll];
  self->_prerollState = 0;
  [(NTKVideoPlayerView *)self _pause];

  [(NTKVideoPlayerView *)self _unloadVideoPlayerView];
}

- (void)_schedulePreroll
{
  v3 = _NTKLoggingObjectForDomain(32, "NTKLoggingDomainAnalogVideo");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "Scheduling preroll", buf, 2u);
  }

  if (self->_prerollState == 1)
  {
    [(NTKVideoPlayerView *)self _cancelScheduledPreroll];
    self->_prerollState = 0;
  }

  self->_prerollState = 1;
  objc_initWeak(buf, self);
  taskScheduler = self->_taskScheduler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__NTKVideoPlayerView__schedulePreroll__block_invoke;
  v6[3] = &unk_27877E298;
  objc_copyWeak(&v7, buf);
  v5 = [(NTKTaskScheduler *)taskScheduler scheduleTask:v6 identifier:@"com.apple.ntk.NTKVideoPlayerView"];
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

uint64_t __38__NTKVideoPlayerView__schedulePreroll__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
LABEL_10:
    v1 = 0;
    goto LABEL_11;
  }

  v4 = WeakRetained[61];
  if ((v4 - 2) < 2 || v4 == 0)
  {
    v6 = _NTKLoggingObjectForDomain(32, "NTKLoggingDomainAnalogVideo");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v3[61];
      v9 = 134217984;
      v10 = v7;
      _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_DEFAULT, "Not prerolling video because _prerollState == %lu", &v9, 0xCu);
    }

    goto LABEL_10;
  }

  if (v4 == 1)
  {
    [WeakRetained _prerollVideo];
    v1 = 1;
  }

LABEL_11:

  return v1 & 1;
}

- (void)_prerollVideo
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _NTKLoggingObjectForDomain(32, "NTKLoggingDomainAnalogVideo");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    dataSource = [(NTKVideoPlayerView *)self dataSource];
    currentListing = [dataSource currentListing];
    v6 = [currentListing description];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "Prerolling video: %@", &v8, 0xCu);
  }

  self->_prerollState = 2;
  [(NTKVideoPlayerView *)self _loadCurrentListing];
  videoPlayerView = [(NTKVideoPlayerView *)self videoPlayerView];
  [videoPlayerView preroll];
}

- (void)videoPlayerView:(id)view didFinishPrerolling:(BOOL)prerolling
{
  prerollingCopy = prerolling;
  v24 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  prerollState = self->_prerollState;
  if (prerollState < 2 || prerollState == 3)
  {
    v9 = _NTKLoggingObjectForDomain(32, "NTKLoggingDomainAnalogVideo");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      dataSource = [(NTKVideoPlayerView *)self dataSource];
      currentListing = [dataSource currentListing];
      v12 = [currentListing description];
      v20 = 138412546;
      v21 = v12;
      v22 = 1024;
      v23 = prerollingCopy;
      _os_log_impl(&dword_22D9C5000, v9, OS_LOG_TYPE_DEFAULT, "Finished prerolling video while _prerollState != inProgress: %@ successful: %d", &v20, 0x12u);
    }

    goto LABEL_8;
  }

  if (prerollState != 2)
  {
    goto LABEL_14;
  }

  v9 = _NTKLoggingObjectForDomain(32, "NTKLoggingDomainAnalogVideo");
  v13 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (!prerollingCopy)
  {
    if (v13)
    {
      dataSource2 = [(NTKVideoPlayerView *)self dataSource];
      currentListing2 = [dataSource2 currentListing];
      v19 = [currentListing2 description];
      v20 = 138412290;
      v21 = v19;
      _os_log_impl(&dword_22D9C5000, v9, OS_LOG_TYPE_DEFAULT, "Unsuccessfully prerolled video: %@", &v20, 0xCu);
    }

LABEL_8:

    goto LABEL_14;
  }

  if (v13)
  {
    dataSource3 = [(NTKVideoPlayerView *)self dataSource];
    currentListing3 = [dataSource3 currentListing];
    v16 = [currentListing3 description];
    v20 = 138412290;
    v21 = v16;
    _os_log_impl(&dword_22D9C5000, v9, OS_LOG_TYPE_DEFAULT, "Successfully prerolled video: %@", &v20, 0xCu);
  }

  self->_prerollState = 3;
LABEL_14:
}

- (void)_playIfNotPaused
{
  if (![(NTKVideoPlayerView *)self _shouldPause])
  {

    [(NTKVideoPlayerView *)self _play];
  }
}

- (void)_updatePauseState
{
  _shouldPause = [(NTKVideoPlayerView *)self _shouldPause];
  if (_shouldPause && self->_paused != _shouldPause)
  {

    [(NTKVideoPlayerView *)self _pause];
  }
}

- (void)_play
{
  videoPlayerView = [(NTKVideoPlayerView *)self videoPlayerView];
  [videoPlayerView play];

  self->_paused = 0;
}

- (void)_pause
{
  videoPlayerView = [(NTKVideoPlayerView *)self videoPlayerView];
  [videoPlayerView pause];

  self->_paused = 1;
}

- (void)_rewindLoadedVideoToBeginning
{
  videoPlayerView = [(NTKVideoPlayerView *)self videoPlayerView];
  v3 = *MEMORY[0x277CC08F0];
  v4 = *(MEMORY[0x277CC08F0] + 16);
  [videoPlayerView seekToTime:&v3];
}

- (void)_playNextVideoForEvent:(unint64_t)event animated:(BOOL)animated
{
  animatedCopy = animated;
  if (!self->_videoPlayerInViewHierarchy)
  {
    [(NTKVideoPlayerView *)self _loadVideoPlayerView];
  }

  objc_initWeak(&location, self);
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __54__NTKVideoPlayerView__playNextVideoForEvent_animated___block_invoke;
  v11 = &unk_278786638;
  objc_copyWeak(v12, &location);
  v12[1] = event;
  v13 = animatedCopy;
  v7 = _Block_copy(&v8);
  [(NTKVideoPlayerView *)self _pause:v8];
  if (animatedCopy)
  {
    [(NTKVideoPlayerView *)self _fadeToCurtainView:v7];
  }

  else
  {
    v7[2](v7);
  }

  objc_destroyWeak(v12);
  objc_destroyWeak(&location);
}

void __54__NTKVideoPlayerView__playNextVideoForEvent_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _advanceListingForEvent:*(a1 + 40)];
    [v3 _loadCurrentListing];
    if (*(a1 + 48) == 1)
    {
      v4[0] = MEMORY[0x277D85DD0];
      v4[1] = 3221225472;
      v4[2] = __54__NTKVideoPlayerView__playNextVideoForEvent_animated___block_invoke_2;
      v4[3] = &unk_27877DB10;
      v4[4] = v3;
      [v3 _fadeFromPosterImageIfVisible:v4];
    }

    else
    {
      [v3 _hidePosterImageView];
      [v3 _playIfNotPaused];
    }
  }
}

- (void)_loadCurrentListing
{
  dataSource = [(NTKVideoPlayerView *)self dataSource];
  currentListing = [dataSource currentListing];

  if (currentListing)
  {
    videoPlayerView = [(NTKVideoPlayerView *)self videoPlayerView];
    video = [currentListing video];
    [videoPlayerView loadVideo:video];
  }
}

- (void)_advanceListingForEvent:(unint64_t)event
{
  dataSource = [(NTKVideoPlayerView *)self dataSource];
  [dataSource advanceToNextListing:event];

  delegate = [(NTKVideoPlayerView *)self delegate];
  dataSource2 = [(NTKVideoPlayerView *)self dataSource];
  currentListing = [dataSource2 currentListing];
  [delegate customizeFaceViewForListing:currentListing changeEvent:event animated:event != 1];
}

- (void)videoPlayerViewDidBeginPlaying:(id)playing
{
  self->_isHandlingTapGesture = 0;
  [(NTKVideoPlayerView *)self _fadeFromPosterImageAndCurtainViewIfVisible];
  delegate = [(NTKVideoPlayerView *)self delegate];
  dataSource = [(NTKVideoPlayerView *)self dataSource];
  currentListing = [dataSource currentListing];
  [delegate customizeFaceViewForListing:currentListing changeEvent:3 animated:1];

  [(NTKVideoPlayerView *)self _queueSubsequentListingIfSupported];
  delegate2 = [(NTKVideoPlayerView *)self delegate];
  [delegate2 videoDidBeginPlayingQueuedVideo];
}

- (void)videoPlayerViewDidPauseAfterPlayingVideoToEnd:(id)end
{
  delegate = [(NTKVideoPlayerView *)self delegate];
  [delegate videoDidFinishPlayingToEnd];

  if (!self->_paused)
  {
    dataSource = [(NTKVideoPlayerView *)self dataSource];
    currentListing = [dataSource currentListing];
    endBehavior = [currentListing endBehavior];

    if (endBehavior > 1)
    {
      if (endBehavior == 3)
      {

        [(NTKVideoPlayerView *)self _pause];
      }

      else if (endBehavior == 2)
      {
        [(NTKVideoPlayerView *)self _rewindLoadedVideoToBeginning];

        [(NTKVideoPlayerView *)self _play];
      }
    }

    else if (endBehavior)
    {
      if (endBehavior == 1)
      {
        [(NTKVideoPlayerView *)self _pause];

        [(NTKVideoPlayerView *)self _fadeToCurtainView:0];
      }
    }

    else
    {

      [(NTKVideoPlayerView *)self _playNextVideoForEvent:4 animated:1];
    }
  }
}

- (void)videoPlayerViewDidBeginPlayingQueuedVideo:(id)video
{
  delegate = [(NTKVideoPlayerView *)self delegate];
  [delegate videoDidFinishPlayingToEnd];

  delegate2 = [(NTKVideoPlayerView *)self delegate];
  dataSource = [(NTKVideoPlayerView *)self dataSource];
  currentListing = [dataSource currentListing];
  [delegate2 customizeFaceViewForListing:currentListing changeEvent:3 animated:1];

  [(NTKVideoPlayerView *)self _queueSubsequentListingIfSupported];
}

- (void)_queueSubsequentListingIfSupported
{
  dataSource = [(NTKVideoPlayerView *)self dataSource];
  listingToQueueOncePlaybackStarts = [dataSource listingToQueueOncePlaybackStarts];

  if (listingToQueueOncePlaybackStarts)
  {
    videoPlayerView = [(NTKVideoPlayerView *)self videoPlayerView];
    video = [listingToQueueOncePlaybackStarts video];
    [videoPlayerView queueVideo:video];
  }
}

- (void)setPosterImage:(id)image
{
  imageCopy = image;
  [(NTKVideoPlayerView *)self _createPosterImageView];
  [(UIImageView *)self->_posterImageView setImage:imageCopy];
}

- (void)_createPosterImageView
{
  if (!self->_posterContainerView)
  {
    v3 = objc_alloc(MEMORY[0x277D75D18]);
    [(NTKVideoPlayerView *)self bounds];
    v4 = [v3 initWithFrame:?];
    posterContainerView = self->_posterContainerView;
    self->_posterContainerView = v4;

    v6 = self->_posterContainerView;
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(UIView *)v6 setBackgroundColor:blackColor];

    [(UIView *)self->_posterContainerView setHidden:1];
    [(NTKVideoPlayerView *)self addSubview:self->_posterContainerView];
    v8 = objc_alloc(MEMORY[0x277D755E8]);
    [(NTKVideoPlayerView *)self bounds];
    v9 = [v8 initWithFrame:?];
    posterImageView = self->_posterImageView;
    self->_posterImageView = v9;

    [(UIImageView *)self->_posterImageView setContentMode:1];
    v11 = self->_posterContainerView;
    v12 = self->_posterImageView;

    [(UIView *)v11 addSubview:v12];
  }
}

- (void)_showPosterImageView
{
  [(UIView *)self->_posterContainerView setAlpha:1.0];
  posterContainerView = self->_posterContainerView;

  [(UIView *)posterContainerView setHidden:0];
}

- (void)_fadeToPosterImage
{
  [(UIView *)self->_curtainView setAlpha:0.0];
  [(UIView *)self->_curtainView setHidden:0];
  [(UIView *)self->_posterContainerView setAlpha:0.0];
  [(UIView *)self->_posterContainerView setHidden:0];
  fadeAnimationDuration = self->_fadeAnimationDuration;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__NTKVideoPlayerView__fadeToPosterImage__block_invoke;
  v5[3] = &unk_27877DB10;
  v5[4] = self;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__NTKVideoPlayerView__fadeToPosterImage__block_invoke_2;
  v4[3] = &unk_2787802F8;
  v4[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v5 animations:v4 completion:fadeAnimationDuration];
}

uint64_t __40__NTKVideoPlayerView__fadeToPosterImage__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 424) setAlpha:1.0];
  v2 = *(*(a1 + 32) + 416);

  return [v2 setAlpha:1.0];
}

uint64_t __40__NTKVideoPlayerView__fadeToPosterImage__block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _rewindLoadedVideoToBeginning];
  }

  return result;
}

- (void)_fadeFromPosterImageIfVisible:(id)visible
{
  visibleCopy = visible;
  if ([(UIView *)self->_posterContainerView isHidden])
  {
    if (visibleCopy)
    {
      visibleCopy[2](visibleCopy);
    }
  }

  else
  {
    v5 = MEMORY[0x277D75D18];
    fadeAnimationDuration = self->_fadeAnimationDuration;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __52__NTKVideoPlayerView__fadeFromPosterImageIfVisible___block_invoke;
    v9[3] = &unk_27877DB10;
    v9[4] = self;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __52__NTKVideoPlayerView__fadeFromPosterImageIfVisible___block_invoke_2;
    v7[3] = &unk_27877E2E8;
    v7[4] = self;
    v8 = visibleCopy;
    [v5 animateWithDuration:v9 animations:v7 completion:fadeAnimationDuration];
  }
}

uint64_t __52__NTKVideoPlayerView__fadeFromPosterImageIfVisible___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 424) setAlpha:0.0];
  v2 = *(*(a1 + 32) + 416);

  return [v2 setAlpha:0.0];
}

uint64_t __52__NTKVideoPlayerView__fadeFromPosterImageIfVisible___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    [*(result + 32) _hidePosterImageView];
    [*(v2 + 32) _hideCurtainView];
    result = *(v2 + 40);
    if (result)
    {
      v3 = *(result + 16);

      return v3();
    }
  }

  return result;
}

- (void)_createCurtainView
{
  if (!self->_curtainView)
  {
    v3 = objc_alloc(MEMORY[0x277D75D18]);
    videoPlayerView = [(NTKVideoPlayerView *)self videoPlayerView];
    [videoPlayerView bounds];
    v5 = [v3 initWithFrame:?];
    curtainView = self->_curtainView;
    self->_curtainView = v5;

    v7 = self->_curtainView;
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(UIView *)v7 setBackgroundColor:blackColor];

    [(UIView *)self->_curtainView setHidden:1];
    v9 = self->_curtainView;

    [(NTKVideoPlayerView *)self addSubview:v9];
  }
}

- (void)_showCurtainView
{
  [(UIView *)self->_curtainView setAlpha:1.0];
  curtainView = self->_curtainView;

  [(UIView *)curtainView setHidden:0];
}

- (void)_fadeToCurtainView:(id)view
{
  viewCopy = view;
  [(UIView *)self->_curtainView setAlpha:0.0];
  [(UIView *)self->_curtainView setHidden:0];
  v5 = MEMORY[0x277D75D18];
  fadeAnimationDuration = self->_fadeAnimationDuration;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __41__NTKVideoPlayerView__fadeToCurtainView___block_invoke;
  v10[3] = &unk_27877DB10;
  v10[4] = self;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__NTKVideoPlayerView__fadeToCurtainView___block_invoke_2;
  v8[3] = &unk_27877E2C0;
  v9 = viewCopy;
  v7 = viewCopy;
  [v5 animateWithDuration:v10 animations:v8 completion:fadeAnimationDuration];
}

uint64_t __41__NTKVideoPlayerView__fadeToCurtainView___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    result = *(result + 32);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

- (void)_fadeFromCurtainViewIfVisible
{
  if (![(UIView *)self->_curtainView isHidden])
  {
    fadeAnimationDuration = self->_fadeAnimationDuration;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __51__NTKVideoPlayerView__fadeFromCurtainViewIfVisible__block_invoke;
    v5[3] = &unk_27877DB10;
    v5[4] = self;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __51__NTKVideoPlayerView__fadeFromCurtainViewIfVisible__block_invoke_2;
    v4[3] = &unk_2787802F8;
    v4[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v5 animations:v4 completion:fadeAnimationDuration];
  }
}

uint64_t __51__NTKVideoPlayerView__fadeFromCurtainViewIfVisible__block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _hideCurtainView];
  }

  return result;
}

- (void)_fadeFromPosterImageAndCurtainViewIfVisible
{
  [(NTKVideoPlayerView *)self _fadeFromCurtainViewIfVisible];

  [(NTKVideoPlayerView *)self _fadeFromPosterImageIfVisible:0];
}

- (void)setVideoPlayerTransform:(CGAffineTransform *)transform
{
  videoPlayerView = self->_videoPlayerView;
  v4 = *&transform->c;
  v5[0] = *&transform->a;
  v5[1] = v4;
  v5[2] = *&transform->tx;
  [(CLKVideoPlayerView *)videoPlayerView setTransform:v5];
}

- (void)setVideoPlayerInset:(UIEdgeInsets)inset
{
  v3.f64[0] = inset.top;
  v3.f64[1] = inset.left;
  v4.f64[0] = inset.bottom;
  v4.f64[1] = inset.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_videoPlayerEdgeInsets.top, v3), vceqq_f64(*&self->_videoPlayerEdgeInsets.bottom, v4)))) & 1) == 0)
  {
    self->_videoPlayerEdgeInsets = inset;
    [(NTKVideoPlayerView *)self setNeedsLayout];
  }
}

- (void)setShouldApplyVideoInsetToPosterImage:(BOOL)image
{
  if (self->_shouldApplyVideoInsetToPosterImage != image)
  {
    self->_shouldApplyVideoInsetToPosterImage = image;
    [(NTKVideoPlayerView *)self setNeedsLayout];
  }
}

- (void)_removeCurrentVideo
{
  player = [(CLKVideoPlayerView *)self->_videoPlayerView player];
  [player removeAllItems];
}

- (BOOL)_shouldPlayVideoOnTap
{
  videoPlayerView = [(NTKVideoPlayerView *)self videoPlayerView];
  if ([videoPlayerView playing])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = (LOBYTE(self->_playerBehavior) >> 2) & 1;
  }

  return v4;
}

- (void)setPausedViewEnabled:(BOOL)enabled
{
  self->_pausedViewEnabled = enabled;
  videoPlayerView = [(NTKVideoPlayerView *)self videoPlayerView];
  [videoPlayerView setPausedViewEnabled:self->_pausedViewEnabled];
}

- (void)_mediaServicesWereReset:(id)reset
{
  kdebug_trace();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__NTKVideoPlayerView__mediaServicesWereReset___block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (NTKVideoPlayerViewFaceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end