@interface PBUIScrollableIrisWallpaperView
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (NSURL)videoFileURL;
- (PBUIIrisWallpaperPlayerDelegate)irisDelegate;
- (PBUIScrollableIrisWallpaperView)initWithFrame:(CGRect)a3 configuration:(id)a4 wallpaperVideo:(id)a5 variant:(int64_t)a6;
- (id)_newImageView;
- (void)dealloc;
- (void)playerViewIsInteractingDidChange:(id)a3;
- (void)playerViewPlaybackStateDidChange:(id)a3;
@end

@implementation PBUIScrollableIrisWallpaperView

- (PBUIScrollableIrisWallpaperView)initWithFrame:(CGRect)a3 configuration:(id)a4 wallpaperVideo:(id)a5 variant:(int64_t)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = a4;
  v14 = a5;
  v25.receiver = self;
  v25.super_class = PBUIScrollableIrisWallpaperView;
  v15 = [(PBUIScrollableStaticWallpaperView *)&v25 initWithFrame:v13 configuration:a6 variant:0 cacheGroup:0 delegate:0 options:x, y, width, height];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_video, a5);
    [(PBUILivePhotoPlayerView *)v16->_playerView setContentMode:1];
    v17 = [v13 wallpaperImage];
    v18 = [v13 wallpaperOptions];
    [v18 stillTimeInVideo];
    v20 = v19;

    -[PBUILivePhotoPlayerView prepareWithPhoto:videoAsset:photoTime:photoEXIFOrientation:](v16->_playerView, "prepareWithPhoto:videoAsset:photoTime:photoEXIFOrientation:", [v17 CGImage], v16->_video, objc_msgSend(v17, "pbui_EXIFOrientation"), v20);
    v21 = [(PBUILivePhotoPlayerView *)v16->_playerView gestureRecognizer];
    [v21 setDelegate:v16];

    v22 = [(PBUIScrollableStaticWallpaperView *)v16 _scrollView];
    v23 = [(PBUILivePhotoPlayerView *)v16->_playerView gestureRecognizer];
    [v22 addGestureRecognizer:v23];
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
  v3 = [(PBUIStaticWallpaperView *)self wallpaperImage];
  [v3 size];
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

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v5 = a4;
  v6 = [(PBUIScrollableStaticWallpaperView *)self _scrollView];
  v7 = [v6 panGestureRecognizer];
  if (v7 == v5)
  {
    v10 = 1;
  }

  else
  {
    v8 = [(PBUIScrollableStaticWallpaperView *)self _scrollView];
    v9 = [v8 pinchGestureRecognizer];
    v10 = v9 == v5;
  }

  return v10;
}

- (void)playerViewPlaybackStateDidChange:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_playerView == a3)
  {
    v4 = PBUIIrisWallpaperPlaybackStateForISPlaybackState([a3 playbackState]);
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
      v8 = [(PBUIScrollableIrisWallpaperView *)self irisDelegate];
      if (objc_opt_respondsToSelector())
      {
        [v8 irisWallpaperPlayerPlaybackStateDidChange:self];
      }
    }
  }
}

- (void)playerViewIsInteractingDidChange:(id)a3
{
  if (self->_playerView == a3)
  {
    v5 = [(PBUIScrollableIrisWallpaperView *)self irisDelegate];
    if (objc_opt_respondsToSelector())
    {
      [v5 irisWallpaperPlayerIsInteractingDidChange:self];
    }
  }
}

- (PBUIIrisWallpaperPlayerDelegate)irisDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_irisDelegate);

  return WeakRetained;
}

@end