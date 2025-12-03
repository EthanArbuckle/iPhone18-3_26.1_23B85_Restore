@interface PBUIScrollableIrisWallpaperView
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (NSURL)videoFileURL;
- (PBUIIrisWallpaperPlayerDelegate)irisDelegate;
- (PBUIScrollableIrisWallpaperView)initWithFrame:(CGRect)frame configuration:(id)configuration wallpaperVideo:(id)video variant:(int64_t)variant;
- (id)_newImageView;
- (void)dealloc;
- (void)playerViewIsInteractingDidChange:(id)change;
- (void)playerViewPlaybackStateDidChange:(id)change;
@end

@implementation PBUIScrollableIrisWallpaperView

- (PBUIScrollableIrisWallpaperView)initWithFrame:(CGRect)frame configuration:(id)configuration wallpaperVideo:(id)video variant:(int64_t)variant
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  configurationCopy = configuration;
  videoCopy = video;
  v25.receiver = self;
  v25.super_class = PBUIScrollableIrisWallpaperView;
  height = [(PBUIScrollableStaticWallpaperView *)&v25 initWithFrame:configurationCopy configuration:variant variant:0 cacheGroup:0 delegate:0 options:x, y, width, height];
  v16 = height;
  if (height)
  {
    objc_storeStrong(&height->_video, video);
    [(PBUILivePhotoPlayerView *)v16->_playerView setContentMode:1];
    wallpaperImage = [configurationCopy wallpaperImage];
    wallpaperOptions = [configurationCopy wallpaperOptions];
    [wallpaperOptions stillTimeInVideo];
    v20 = v19;

    -[PBUILivePhotoPlayerView prepareWithPhoto:videoAsset:photoTime:photoEXIFOrientation:](v16->_playerView, "prepareWithPhoto:videoAsset:photoTime:photoEXIFOrientation:", [wallpaperImage CGImage], v16->_video, objc_msgSend(wallpaperImage, "pbui_EXIFOrientation"), v20);
    gestureRecognizer = [(PBUILivePhotoPlayerView *)v16->_playerView gestureRecognizer];
    [gestureRecognizer setDelegate:v16];

    _scrollView = [(PBUIScrollableStaticWallpaperView *)v16 _scrollView];
    gestureRecognizer2 = [(PBUILivePhotoPlayerView *)v16->_playerView gestureRecognizer];
    [_scrollView addGestureRecognizer:gestureRecognizer2];
  }

  return v16;
}

- (void)dealloc
{
  [(PBUILivePhotoPlayerView *)self->_playerView setDelegate:0];
  v3.receiver = self;
  v3.super_class = PBUIScrollableIrisWallpaperView;
  [(PBUIScrollableStaticWallpaperView *)&v3 dealloc];
}

- (id)_newImageView
{
  wallpaperImage = [(PBUIStaticWallpaperView *)self wallpaperImage];
  [wallpaperImage size];
  v5 = v4;
  v7 = v6;

  v8 = [PBUILivePhotoPlayerView playerViewWithRewindPlaybackStyle:0];
  playerView = self->_playerView;
  self->_playerView = v8;

  [(PBUILivePhotoPlayerView *)self->_playerView setFrame:0.0, 0.0, v5, v7];
  [(PBUILivePhotoPlayerView *)self->_playerView setDelegate:self];
  [(PBUIScrollableIrisWallpaperView *)self playerViewPlaybackStateDidChange:self->_playerView];
  v10 = self->_playerView;

  return v10;
}

- (NSURL)videoFileURL
{
  v3 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(AVAsset *)self->_video URL];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  _scrollView = [(PBUIScrollableStaticWallpaperView *)self _scrollView];
  panGestureRecognizer = [_scrollView panGestureRecognizer];
  if (panGestureRecognizer == gestureRecognizerCopy)
  {
    v10 = 1;
  }

  else
  {
    _scrollView2 = [(PBUIScrollableStaticWallpaperView *)self _scrollView];
    pinchGestureRecognizer = [_scrollView2 pinchGestureRecognizer];
    v10 = pinchGestureRecognizer == gestureRecognizerCopy;
  }

  return v10;
}

- (void)playerViewPlaybackStateDidChange:(id)change
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_playerView == change)
  {
    v4 = PBUIIrisWallpaperPlaybackStateForISPlaybackState([change playbackState]);
    v5 = PBUILogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = PBUIIrisWallpaperPlaybackStateDescription(self->_playbackState);
      v7 = PBUIIrisWallpaperPlaybackStateDescription(v4);
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_21E67D000, v5, OS_LOG_TYPE_DEFAULT, "Scrollable Iris wallpaper playback state changed. Current State: %@, New State: %@", &v9, 0x16u);
    }

    if (v4 != -1 && v4 != self->_playbackState)
    {
      self->_playbackState = v4;
      irisDelegate = [(PBUIScrollableIrisWallpaperView *)self irisDelegate];
      if (objc_opt_respondsToSelector())
      {
        [irisDelegate irisWallpaperPlayerPlaybackStateDidChange:self];
      }
    }
  }
}

- (void)playerViewIsInteractingDidChange:(id)change
{
  if (self->_playerView == change)
  {
    irisDelegate = [(PBUIScrollableIrisWallpaperView *)self irisDelegate];
    if (objc_opt_respondsToSelector())
    {
      [irisDelegate irisWallpaperPlayerIsInteractingDidChange:self];
    }
  }
}

- (PBUIIrisWallpaperPlayerDelegate)irisDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_irisDelegate);

  return WeakRetained;
}

@end