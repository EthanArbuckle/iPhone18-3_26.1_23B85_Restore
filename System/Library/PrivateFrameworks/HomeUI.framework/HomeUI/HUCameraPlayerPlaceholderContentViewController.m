@interface HUCameraPlayerPlaceholderContentViewController
- (BOOL)_shouldHidePlaceholderContentForCurrentAccessMode;
- (BOOL)_shouldShowDefaultPlaceholderContent;
- (BOOL)_shouldShowPlaceholderContentForUserScrubbing;
- (BOOL)shouldShowPlaceholderContent;
- (HFCameraPlaybackEngine)playbackEngine;
- (HUCameraPlayerPlaceholderContentViewController)initWithPlaybackEngine:(id)a3;
- (UIImageView)placeholderImageView;
- (void)setCameraPlayerHasContentToShow:(BOOL)a3;
- (void)updatePlaceholderContent;
- (void)updatePlaceholderImage:(id)a3;
- (void)viewDidLoad;
@end

@implementation HUCameraPlayerPlaceholderContentViewController

- (HUCameraPlayerPlaceholderContentViewController)initWithPlaybackEngine:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HUCameraPlayerPlaceholderContentViewController;
  v5 = [(HUCameraPlayerPlaceholderContentViewController *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_playbackEngine, v4);
    v8 = [MEMORY[0x277D144C8] defaultOptions];
    [v4 addObserver:v6 withOptions:v8];
  }

  return v6;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = HUCameraPlayerPlaceholderContentViewController;
  [(HUCameraPlayerPlaceholderContentViewController *)&v10 viewDidLoad];
  v3 = [(HUCameraPlayerPlaceholderContentViewController *)self view];
  [v3 setUserInteractionEnabled:0];

  v4 = [(HUCameraPlayerPlaceholderContentViewController *)self view];
  v5 = [(HUCameraPlayerPlaceholderContentViewController *)self placeholderImageView];
  [v4 naui_addAutoLayoutSubview:v5];

  v6 = MEMORY[0x277CCAAD0];
  v7 = [(HUCameraPlayerPlaceholderContentViewController *)self placeholderImageView];
  v8 = [(HUCameraPlayerPlaceholderContentViewController *)self view];
  v9 = [v6 hu_constraintsSizingAnchorProvider:v7 toAnchorProvider:v8];
  [v6 activateConstraints:v9];

  [(HUCameraPlayerPlaceholderContentViewController *)self updatePlaceholderContent];
}

- (void)setCameraPlayerHasContentToShow:(BOOL)a3
{
  if (self->_cameraPlayerHasContentToShow != a3)
  {
    self->_cameraPlayerHasContentToShow = a3;
    [(HUCameraPlayerPlaceholderContentViewController *)self updatePlaceholderContent];
  }
}

- (BOOL)shouldShowPlaceholderContent
{
  v3 = [(HUCameraPlayerPlaceholderContentViewController *)self _shouldShowDefaultPlaceholderContent];
  v4 = [(HUCameraPlayerPlaceholderContentViewController *)self _shouldShowPlaceholderContentForUserScrubbing]|| v3;
  return ![(HUCameraPlayerPlaceholderContentViewController *)self _shouldHidePlaceholderContentForCurrentAccessMode]& v4;
}

- (void)updatePlaceholderContent
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(HUCameraPlayerPlaceholderContentViewController *)self playbackEngine];
  v4 = [v3 playbackPosition];

  v5 = [(HUCameraPlayerPlaceholderContentViewController *)self shouldShowPlaceholderContent];
  if (v5)
  {
    v6 = [(HUCameraPlayerPlaceholderContentViewController *)self playbackEngine];
    v7 = [v4 clipPlaybackDate];
    v8 = [v6 findClipPositionForDate:v7];

    v9 = [MEMORY[0x277D14498] sharedManager];
    v10 = [(HUCameraPlayerPlaceholderContentViewController *)self playbackEngine];
    v11 = [v10 currentClip];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v13 = [(HUCameraPlayerPlaceholderContentViewController *)self playbackEngine];
      v14 = [v13 currentClip];
      [v8 offset];
      v15 = [v9 cachedPosterFrameImageForClip:v14 offset:self requestor:?];

      if (!v15)
      {
        v16 = [(HUCameraPlayerPlaceholderContentViewController *)self playbackEngine];
        v17 = [v16 currentClip];
        v15 = [v9 representativeImageForClip:v17];
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
    v19[1] = v5;
    v20 = 1024;
    v21 = v15 != 0;
    _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, "Placeholder - should show:%{BOOL}d has image:%{BOOL}d", v19, 0xEu);
  }

  [(HUCameraPlayerPlaceholderContentViewController *)self updatePlaceholderImage:v15];
}

- (void)updatePlaceholderImage:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__HUCameraPlayerPlaceholderContentViewController_updatePlaceholderImage___block_invoke;
  v6[3] = &unk_277DB7558;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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
  v3 = [(HUCameraPlayerPlaceholderContentViewController *)self playbackEngine];
  if ([v3 isUserScrubbing])
  {
    v4 = [(HUCameraPlayerPlaceholderContentViewController *)self playbackEngine];
    v5 = [v4 timelineState] == 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_shouldHidePlaceholderContentForCurrentAccessMode
{
  v3 = [(HUCameraPlayerPlaceholderContentViewController *)self playbackEngine];
  v4 = [v3 cameraProfile];
  v5 = [v4 userSettings];
  v6 = [v5 currentAccessMode];

  v7 = [(HUCameraPlayerPlaceholderContentViewController *)self playbackEngine];
  v8 = [v7 engineMode];
  if (v6)
  {
    v9 = v6 == 3;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  if (v8)
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
  v3 = [(HUCameraPlayerPlaceholderContentViewController *)self playbackEngine];
  v4 = [v3 playbackPosition];
  if ([v4 contentType] == 1)
  {
    v5 = [(HUCameraPlayerPlaceholderContentViewController *)self playbackEngine];
    if ([v5 timeControlStatus] == 1)
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