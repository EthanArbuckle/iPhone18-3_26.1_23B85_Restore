@interface CKVideoPreviewViewController
- (BOOL)togglePlayPause;
- (CKVideoPreviewViewController)init;
- (CKVideoPreviewViewControllerDelegate)videoPreviewDelegate;
- (void)dealloc;
- (void)loadView;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pause;
- (void)play;
- (void)setVideoFileURL:(id)a3;
- (void)videoDidReachEnd:(id)a3;
@end

@implementation CKVideoPreviewViewController

- (CKVideoPreviewViewController)init
{
  v7.receiver = self;
  v7.super_class = CKVideoPreviewViewController;
  v2 = [(CKVideoPreviewViewController *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69880E0] layer];
    [(CKVideoPreviewViewController *)v2 setAvPlayerLayer:v3];

    v4 = [(CKVideoPreviewViewController *)v2 avPlayerLayer];
    [v4 setVideoGravity:*MEMORY[0x1E69874F0]];

    v5 = [(CKVideoPreviewViewController *)v2 avPlayerLayer];
    [v5 setPreferredDynamicRange:*MEMORY[0x1E6979298]];
  }

  return v2;
}

- (void)loadView
{
  v8.receiver = self;
  v8.super_class = CKVideoPreviewViewController;
  [(CKVideoPreviewViewController *)&v8 loadView];
  v3 = [(CKVideoPreviewViewController *)self avPlayerLayer];
  v4 = [(CKVideoPreviewViewController *)self view];
  [v4 bounds];
  [v3 setFrame:?];

  v5 = [(CKVideoPreviewViewController *)self view];
  v6 = [v5 layer];
  v7 = [(CKVideoPreviewViewController *)self avPlayerLayer];
  [v6 insertSublayer:v7 atIndex:0];

  [(CKVideoPreviewViewController *)self setNeedsStatusBarAppearanceUpdate];
}

- (void)setVideoFileURL:(id)a3
{
  if (a3)
  {
    v4 = CKAVURLAssetForURL(a3);
    v5 = [MEMORY[0x1E69880B0] playerItemWithAsset:v4];
    [(CKVideoPreviewViewController *)self setAvPlayerItem:v5];

    v6 = MEMORY[0x1E6988098];
    v7 = [(CKVideoPreviewViewController *)self avPlayerItem];
    v8 = [v6 playerWithPlayerItem:v7];
    [(CKVideoPreviewViewController *)self setAvPlayer:v8];

    v9 = [(CKVideoPreviewViewController *)self avPlayer];
    v10 = [(CKVideoPreviewViewController *)self avPlayerLayer];
    [v10 setPlayer:v9];

    v11 = [(CKVideoPreviewViewController *)self avPlayer];
    [v11 setActionAtItemEnd:1];

    v12 = [(CKVideoPreviewViewController *)self avPlayer];
    v13 = MEMORY[0x193AF5ED0]("CMTimeZero", @"CoreMedia");
    v14 = *(v13 + 16);
    v22 = *v13;
    v23 = v14;
    [v12 seekToTime:&v22];

    v15 = [(CKVideoPreviewViewController *)self avPlayerLayer];
    [v15 addObserver:self forKeyPath:@"readyForDisplay" options:5 context:&CKVideoPlayerLayerContext];

    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    v17 = *MEMORY[0x1E6987A10];
    v18 = [(CKVideoPreviewViewController *)self avPlayerItem];
    [v16 addObserver:self selector:sel_videoDidReachEnd_ name:v17 object:v18];

    v19 = [MEMORY[0x1E696AD88] defaultCenter];
    v20 = *MEMORY[0x1E6987A20];
    v21 = [(CKVideoPreviewViewController *)self avPlayerItem];
    [v19 addObserver:self selector:sel_videoDidReachEnd_ name:v20 object:v21];
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  [(AVPlayerLayer *)self->_avPlayerLayer removeObserver:self forKeyPath:@"readyForDisplay" context:&CKVideoPlayerLayerContext];
  [(AVPlayerLayer *)self->_avPlayerLayer removeFromSuperlayer];
  v4.receiver = self;
  v4.super_class = CKVideoPreviewViewController;
  [(CKVideoPreviewViewController *)&v4 dealloc];
}

- (BOOL)togglePlayPause
{
  v3 = [(CKVideoPreviewViewController *)self isPlaying];
  if (v3)
  {
    [(CKVideoPreviewViewController *)self pause];
  }

  else
  {
    [(CKVideoPreviewViewController *)self play];
  }

  return !v3;
}

- (void)play
{
  if ([(CKVideoPreviewViewController *)self reachedEnd])
  {
    [(CKVideoPreviewViewController *)self setReachedEnd:0];
    v3 = [(CKVideoPreviewViewController *)self avPlayer];
    v4 = MEMORY[0x193AF5ED0]("CMTimeZero", @"CoreMedia");
    v5 = *(v4 + 16);
    v8 = *v4;
    v9 = v5;
    [v3 seekToTime:&v8];
  }

  v6 = +[CKAudioSessionController shareInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__CKVideoPreviewViewController_play__block_invoke;
  v7[3] = &unk_1E72EBA18;
  v7[4] = self;
  [v6 activateWithOptions:1 completion:v7];
}

void __36__CKVideoPreviewViewController_play__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) avPlayer];
  [v1 play];
}

- (void)pause
{
  v2 = [(CKVideoPreviewViewController *)self avPlayer];
  [v2 pause];

  v3 = +[CKAudioSessionController shareInstance];
  [v3 deactivate];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 != &CKVideoPlayerLayerContext)
  {
    v9.receiver = self;
    v9.super_class = CKVideoPreviewViewController;
    [(CKVideoPreviewViewController *)&v9 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
    return;
  }

  if ([a3 isEqualToString:{@"readyForDisplay", a4, a5}])
  {
    v8 = [(CKVideoPreviewViewController *)self avPlayerLayer];
    if ([v8 isReadyForDisplay])
    {
      v7 = [(CKVideoPreviewViewController *)self isPlaying];

      if (v7)
      {
        return;
      }

      v8 = [(CKVideoPreviewViewController *)self videoPreviewDelegate];
      [v8 ckVideoPreviewViewControllerReady:self];
    }
  }
}

- (void)videoDidReachEnd:(id)a3
{
  [(CKVideoPreviewViewController *)self setReachedEnd:1];
  v4 = +[CKAudioSessionController shareInstance];
  [v4 deactivate];

  v5 = [(CKVideoPreviewViewController *)self videoPreviewDelegate];
  [v5 ckVideoPreviewViewControllerFinishedPlaying:self];
}

- (CKVideoPreviewViewControllerDelegate)videoPreviewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_videoPreviewDelegate);

  return WeakRetained;
}

@end