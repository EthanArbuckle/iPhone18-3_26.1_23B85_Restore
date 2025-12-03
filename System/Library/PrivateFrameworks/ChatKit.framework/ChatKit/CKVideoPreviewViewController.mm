@interface CKVideoPreviewViewController
- (BOOL)togglePlayPause;
- (CKVideoPreviewViewController)init;
- (CKVideoPreviewViewControllerDelegate)videoPreviewDelegate;
- (void)dealloc;
- (void)loadView;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pause;
- (void)play;
- (void)setVideoFileURL:(id)l;
- (void)videoDidReachEnd:(id)end;
@end

@implementation CKVideoPreviewViewController

- (CKVideoPreviewViewController)init
{
  v7.receiver = self;
  v7.super_class = CKVideoPreviewViewController;
  v2 = [(CKVideoPreviewViewController *)&v7 init];
  if (v2)
  {
    layer = [MEMORY[0x1E69880E0] layer];
    [(CKVideoPreviewViewController *)v2 setAvPlayerLayer:layer];

    avPlayerLayer = [(CKVideoPreviewViewController *)v2 avPlayerLayer];
    [avPlayerLayer setVideoGravity:*MEMORY[0x1E69874F0]];

    avPlayerLayer2 = [(CKVideoPreviewViewController *)v2 avPlayerLayer];
    [avPlayerLayer2 setPreferredDynamicRange:*MEMORY[0x1E6979298]];
  }

  return v2;
}

- (void)loadView
{
  v8.receiver = self;
  v8.super_class = CKVideoPreviewViewController;
  [(CKVideoPreviewViewController *)&v8 loadView];
  avPlayerLayer = [(CKVideoPreviewViewController *)self avPlayerLayer];
  view = [(CKVideoPreviewViewController *)self view];
  [view bounds];
  [avPlayerLayer setFrame:?];

  view2 = [(CKVideoPreviewViewController *)self view];
  layer = [view2 layer];
  avPlayerLayer2 = [(CKVideoPreviewViewController *)self avPlayerLayer];
  [layer insertSublayer:avPlayerLayer2 atIndex:0];

  [(CKVideoPreviewViewController *)self setNeedsStatusBarAppearanceUpdate];
}

- (void)setVideoFileURL:(id)l
{
  if (l)
  {
    v4 = CKAVURLAssetForURL(l);
    v5 = [MEMORY[0x1E69880B0] playerItemWithAsset:v4];
    [(CKVideoPreviewViewController *)self setAvPlayerItem:v5];

    v6 = MEMORY[0x1E6988098];
    avPlayerItem = [(CKVideoPreviewViewController *)self avPlayerItem];
    v8 = [v6 playerWithPlayerItem:avPlayerItem];
    [(CKVideoPreviewViewController *)self setAvPlayer:v8];

    avPlayer = [(CKVideoPreviewViewController *)self avPlayer];
    avPlayerLayer = [(CKVideoPreviewViewController *)self avPlayerLayer];
    [avPlayerLayer setPlayer:avPlayer];

    avPlayer2 = [(CKVideoPreviewViewController *)self avPlayer];
    [avPlayer2 setActionAtItemEnd:1];

    avPlayer3 = [(CKVideoPreviewViewController *)self avPlayer];
    v13 = MEMORY[0x193AF5ED0]("CMTimeZero", @"CoreMedia");
    v14 = *(v13 + 16);
    v22 = *v13;
    v23 = v14;
    [avPlayer3 seekToTime:&v22];

    avPlayerLayer2 = [(CKVideoPreviewViewController *)self avPlayerLayer];
    [avPlayerLayer2 addObserver:self forKeyPath:@"readyForDisplay" options:5 context:&CKVideoPlayerLayerContext];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v17 = *MEMORY[0x1E6987A10];
    avPlayerItem2 = [(CKVideoPreviewViewController *)self avPlayerItem];
    [defaultCenter addObserver:self selector:sel_videoDidReachEnd_ name:v17 object:avPlayerItem2];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    v20 = *MEMORY[0x1E6987A20];
    avPlayerItem3 = [(CKVideoPreviewViewController *)self avPlayerItem];
    [defaultCenter2 addObserver:self selector:sel_videoDidReachEnd_ name:v20 object:avPlayerItem3];
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(AVPlayerLayer *)self->_avPlayerLayer removeObserver:self forKeyPath:@"readyForDisplay" context:&CKVideoPlayerLayerContext];
  [(AVPlayerLayer *)self->_avPlayerLayer removeFromSuperlayer];
  v4.receiver = self;
  v4.super_class = CKVideoPreviewViewController;
  [(CKVideoPreviewViewController *)&v4 dealloc];
}

- (BOOL)togglePlayPause
{
  isPlaying = [(CKVideoPreviewViewController *)self isPlaying];
  if (isPlaying)
  {
    [(CKVideoPreviewViewController *)self pause];
  }

  else
  {
    [(CKVideoPreviewViewController *)self play];
  }

  return !isPlaying;
}

- (void)play
{
  if ([(CKVideoPreviewViewController *)self reachedEnd])
  {
    [(CKVideoPreviewViewController *)self setReachedEnd:0];
    avPlayer = [(CKVideoPreviewViewController *)self avPlayer];
    v4 = MEMORY[0x193AF5ED0]("CMTimeZero", @"CoreMedia");
    v5 = *(v4 + 16);
    v8 = *v4;
    v9 = v5;
    [avPlayer seekToTime:&v8];
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
  avPlayer = [(CKVideoPreviewViewController *)self avPlayer];
  [avPlayer pause];

  v3 = +[CKAudioSessionController shareInstance];
  [v3 deactivate];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context != &CKVideoPlayerLayerContext)
  {
    v9.receiver = self;
    v9.super_class = CKVideoPreviewViewController;
    [(CKVideoPreviewViewController *)&v9 observeValueForKeyPath:path ofObject:object change:change context:?];
    return;
  }

  if ([path isEqualToString:{@"readyForDisplay", object, change}])
  {
    avPlayerLayer = [(CKVideoPreviewViewController *)self avPlayerLayer];
    if ([avPlayerLayer isReadyForDisplay])
    {
      isPlaying = [(CKVideoPreviewViewController *)self isPlaying];

      if (isPlaying)
      {
        return;
      }

      avPlayerLayer = [(CKVideoPreviewViewController *)self videoPreviewDelegate];
      [avPlayerLayer ckVideoPreviewViewControllerReady:self];
    }
  }
}

- (void)videoDidReachEnd:(id)end
{
  [(CKVideoPreviewViewController *)self setReachedEnd:1];
  v4 = +[CKAudioSessionController shareInstance];
  [v4 deactivate];

  videoPreviewDelegate = [(CKVideoPreviewViewController *)self videoPreviewDelegate];
  [videoPreviewDelegate ckVideoPreviewViewControllerFinishedPlaying:self];
}

- (CKVideoPreviewViewControllerDelegate)videoPreviewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_videoPreviewDelegate);

  return WeakRetained;
}

@end