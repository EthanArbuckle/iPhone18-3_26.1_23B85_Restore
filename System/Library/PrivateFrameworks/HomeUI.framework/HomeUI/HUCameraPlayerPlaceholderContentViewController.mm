@interface HUCameraPlayerPlaceholderContentViewController
- (BOOL)_shouldHidePlaceholderContentForCurrentAccessMode;
- (BOOL)_shouldShowDefaultPlaceholderContent;
- (BOOL)_shouldShowPlaceholderContentForUserScrubbing;
- (BOOL)shouldShowPlaceholderContent;
- (HFCameraPlaybackEngine)playbackEngine;
- (HUCameraPlayerPlaceholderContentViewController)initWithPlaybackEngine:(id)engine;
- (UIImageView)placeholderImageView;
- (void)setCameraPlayerHasContentToShow:(BOOL)show;
- (void)updatePlaceholderContent;
- (void)updatePlaceholderImage:(id)image;
- (void)viewDidLoad;
@end

@implementation HUCameraPlayerPlaceholderContentViewController

- (HUCameraPlayerPlaceholderContentViewController)initWithPlaybackEngine:(id)engine
{
  engineCopy = engine;
  v10.receiver = self;
  v10.super_class = HUCameraPlayerPlaceholderContentViewController;
  v5 = [(HUCameraPlayerPlaceholderContentViewController *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_playbackEngine, engineCopy);
    defaultOptions = [MEMORY[0x277D144C8] defaultOptions];
    [engineCopy addObserver:v6 withOptions:defaultOptions];
  }

  return v6;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = HUCameraPlayerPlaceholderContentViewController;
  [(HUCameraPlayerPlaceholderContentViewController *)&v10 viewDidLoad];
  view = [(HUCameraPlayerPlaceholderContentViewController *)self view];
  [view setUserInteractionEnabled:0];

  view2 = [(HUCameraPlayerPlaceholderContentViewController *)self view];
  placeholderImageView = [(HUCameraPlayerPlaceholderContentViewController *)self placeholderImageView];
  [view2 naui_addAutoLayoutSubview:placeholderImageView];

  v6 = MEMORY[0x277CCAAD0];
  placeholderImageView2 = [(HUCameraPlayerPlaceholderContentViewController *)self placeholderImageView];
  view3 = [(HUCameraPlayerPlaceholderContentViewController *)self view];
  v9 = [v6 hu_constraintsSizingAnchorProvider:placeholderImageView2 toAnchorProvider:view3];
  [v6 activateConstraints:v9];

  [(HUCameraPlayerPlaceholderContentViewController *)self updatePlaceholderContent];
}

- (void)setCameraPlayerHasContentToShow:(BOOL)show
{
  if (self->_cameraPlayerHasContentToShow != show)
  {
    self->_cameraPlayerHasContentToShow = show;
    [(HUCameraPlayerPlaceholderContentViewController *)self updatePlaceholderContent];
  }
}

- (BOOL)shouldShowPlaceholderContent
{
  _shouldShowDefaultPlaceholderContent = [(HUCameraPlayerPlaceholderContentViewController *)self _shouldShowDefaultPlaceholderContent];
  v4 = [(HUCameraPlayerPlaceholderContentViewController *)self _shouldShowPlaceholderContentForUserScrubbing]|| _shouldShowDefaultPlaceholderContent;
  return ![(HUCameraPlayerPlaceholderContentViewController *)self _shouldHidePlaceholderContentForCurrentAccessMode]& v4;
}

- (void)updatePlaceholderContent
{
  v22 = *MEMORY[0x277D85DE8];
  playbackEngine = [(HUCameraPlayerPlaceholderContentViewController *)self playbackEngine];
  playbackPosition = [playbackEngine playbackPosition];

  shouldShowPlaceholderContent = [(HUCameraPlayerPlaceholderContentViewController *)self shouldShowPlaceholderContent];
  if (shouldShowPlaceholderContent)
  {
    playbackEngine2 = [(HUCameraPlayerPlaceholderContentViewController *)self playbackEngine];
    clipPlaybackDate = [playbackPosition clipPlaybackDate];
    v8 = [playbackEngine2 findClipPositionForDate:clipPlaybackDate];

    mEMORY[0x277D14498] = [MEMORY[0x277D14498] sharedManager];
    playbackEngine3 = [(HUCameraPlayerPlaceholderContentViewController *)self playbackEngine];
    currentClip = [playbackEngine3 currentClip];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      playbackEngine4 = [(HUCameraPlayerPlaceholderContentViewController *)self playbackEngine];
      currentClip2 = [playbackEngine4 currentClip];
      [v8 offset];
      v15 = [mEMORY[0x277D14498] cachedPosterFrameImageForClip:currentClip2 offset:self requestor:?];

      if (!v15)
      {
        playbackEngine5 = [(HUCameraPlayerPlaceholderContentViewController *)self playbackEngine];
        currentClip3 = [playbackEngine5 currentClip];
        v15 = [mEMORY[0x277D14498] representativeImageForClip:currentClip3];
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v18 = HFLogForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19[0] = 67109376;
    v19[1] = shouldShowPlaceholderContent;
    v20 = 1024;
    v21 = v15 != 0;
    _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, "Placeholder - should show:%{BOOL}d has image:%{BOOL}d", v19, 0xEu);
  }

  [(HUCameraPlayerPlaceholderContentViewController *)self updatePlaceholderImage:v15];
}

- (void)updatePlaceholderImage:(id)image
{
  imageCopy = image;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__HUCameraPlayerPlaceholderContentViewController_updatePlaceholderImage___block_invoke;
  v6[3] = &unk_277DB7558;
  v6[4] = self;
  v7 = imageCopy;
  v5 = imageCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __73__HUCameraPlayerPlaceholderContentViewController_updatePlaceholderImage___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) placeholderImageView];
  v3 = [v2 layer];
  [v3 removeAllAnimations];

  v4 = MEMORY[0x277D75D18];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__HUCameraPlayerPlaceholderContentViewController_updatePlaceholderImage___block_invoke_2;
  v6[3] = &unk_277DB7558;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v4 animateWithDuration:v6 animations:0.3];
}

void __73__HUCameraPlayerPlaceholderContentViewController_updatePlaceholderImage___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) placeholderImageView];
  [v3 setImage:v2];

  if (*(a1 + 40))
  {
    v4 = ([*(a1 + 32) _shouldHidePlaceholderContentForCurrentAccessMode] ^ 1);
  }

  else
  {
    v4 = 0.0;
  }

  v5 = [*(a1 + 32) placeholderImageView];
  [v5 setAlpha:v4];
}

- (BOOL)_shouldShowPlaceholderContentForUserScrubbing
{
  playbackEngine = [(HUCameraPlayerPlaceholderContentViewController *)self playbackEngine];
  if ([playbackEngine isUserScrubbing])
  {
    playbackEngine2 = [(HUCameraPlayerPlaceholderContentViewController *)self playbackEngine];
    v5 = [playbackEngine2 timelineState] == 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_shouldHidePlaceholderContentForCurrentAccessMode
{
  playbackEngine = [(HUCameraPlayerPlaceholderContentViewController *)self playbackEngine];
  cameraProfile = [playbackEngine cameraProfile];
  userSettings = [cameraProfile userSettings];
  currentAccessMode = [userSettings currentAccessMode];

  playbackEngine2 = [(HUCameraPlayerPlaceholderContentViewController *)self playbackEngine];
  engineMode = [playbackEngine2 engineMode];
  if (currentAccessMode)
  {
    v9 = currentAccessMode == 3;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  if (engineMode)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  return v11;
}

- (BOOL)_shouldShowDefaultPlaceholderContent
{
  playbackEngine = [(HUCameraPlayerPlaceholderContentViewController *)self playbackEngine];
  playbackPosition = [playbackEngine playbackPosition];
  if ([playbackPosition contentType] == 1)
  {
    playbackEngine2 = [(HUCameraPlayerPlaceholderContentViewController *)self playbackEngine];
    if ([playbackEngine2 timeControlStatus] == 1)
    {
      v6 = ![(HUCameraPlayerPlaceholderContentViewController *)self cameraPlayerHasContentToShow];
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (UIImageView)placeholderImageView
{
  placeholderImageView = self->_placeholderImageView;
  if (!placeholderImageView)
  {
    v4 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:0];
    v5 = self->_placeholderImageView;
    self->_placeholderImageView = v4;

    placeholderImageView = self->_placeholderImageView;
  }

  return placeholderImageView;
}

- (HFCameraPlaybackEngine)playbackEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);

  return WeakRetained;
}

@end