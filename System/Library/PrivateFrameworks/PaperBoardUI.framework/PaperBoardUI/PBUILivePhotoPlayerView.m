@interface PBUILivePhotoPlayerView
+ (PBUILivePhotoPlayerView)playerViewWithRewindPlaybackStyle:(BOOL)a3;
- (PBUILivePhotoPlayerViewDelegate)delegate;
- (UIGestureRecognizer)gestureRecognizer;
- (id)videoPlayerForPlayer:(id)a3;
- (int64_t)playbackState;
- (void)_common_configurePlayer:(id)a3;
- (void)_common_configurePlayerView:(id)a3;
- (void)_handlePlaybackGesture:(id)a3;
- (void)_setInteracting:(BOOL)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)prepareWithPhoto:(CGImage *)a3 videoAsset:(id)a4 photoTime:(double)a5 photoEXIFOrientation:(int)a6;
- (void)setContentMode:(int64_t)a3;
- (void)startPlaybackWithReason:(id)a3;
- (void)stopPlaybackWithReason:(id)a3;
@end

@implementation PBUILivePhotoPlayerView

+ (PBUILivePhotoPlayerView)playerViewWithRewindPlaybackStyle:(BOOL)a3
{
  v3 = off_278361590;
  if (!a3)
  {
    v3 = off_278361588;
  }

  v4 = objc_alloc_init(*v3);

  return v4;
}

- (void)prepareWithPhoto:(CGImage *)a3 videoAsset:(id)a4 photoTime:(double)a5 photoEXIFOrientation:(int)a6
{
  v6 = *&a6;
  v10 = a4;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2050000000;
  v11 = getISAssetClass_softClass;
  v36 = getISAssetClass_softClass;
  if (!getISAssetClass_softClass)
  {
    *&v32.a = MEMORY[0x277D85DD0];
    *&v32.b = 3221225472;
    *&v32.c = __getISAssetClass_block_invoke;
    *&v32.d = &unk_278361F18;
    *&v32.tx = &v33;
    __getISAssetClass_block_invoke(&v32);
    v11 = v34[3];
  }

  v12 = v11;
  _Block_object_dispose(&v33, 8);
  v13 = [[v11 alloc] initWithVideoAsset:v10 photo:a3 photoTime:v6 photoEXIFOrientation:a5];
  v14 = [MEMORY[0x277D759A0] mainScreen];
  [v14 bounds];
  v29 = v16;
  v30 = v15;

  v17 = [MEMORY[0x277D759A0] mainScreen];
  [v17 scale];
  v19 = v18;

  CGAffineTransformMakeScale(&v32, v19, v19);
  v20 = *&v32.a;
  v21 = *&v32.c;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2050000000;
  v22 = getISPlayerItemClass_softClass;
  v36 = getISPlayerItemClass_softClass;
  if (!getISPlayerItemClass_softClass)
  {
    v27 = *&v32.c;
    v28 = *&v32.a;
    *&v32.a = MEMORY[0x277D85DD0];
    *&v32.b = 3221225472;
    *&v32.c = __getISPlayerItemClass_block_invoke;
    *&v32.d = &unk_278361F18;
    *&v32.tx = &v33;
    __getISPlayerItemClass_block_invoke(&v32);
    v22 = v34[3];
    v21 = v27;
    v20 = v28;
  }

  v31 = vmlaq_n_f64(vmulq_n_f64(v21, v29), v20, v30);
  v23 = v22;
  _Block_object_dispose(&v33, 8);
  v24 = [v22 playerItemWithAsset:v13 targetSize:*&v31];
  [v24 registerChangeObserver:self context:PlayerItemObservationContext];
  [(PBUILivePhotoPlayerView *)self _subclass_updatePlayerItemForUse:v24];
  v25 = [(PBUILivePhotoPlayerView *)self _playerUIView];
  v26 = [v25 player];
  [v26 setPlayerItem:v24];
}

- (void)startPlaybackWithReason:(id)a3
{
  v4 = a3;
  forcePlaybackReasons = self->_forcePlaybackReasons;
  v8 = v4;
  if (!forcePlaybackReasons)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    v7 = self->_forcePlaybackReasons;
    self->_forcePlaybackReasons = v6;

    v4 = v8;
    forcePlaybackReasons = self->_forcePlaybackReasons;
  }

  [(NSMutableSet *)forcePlaybackReasons addObject:v4];
  [(PBUILivePhotoPlayerView *)self _subclass_updateForForcingPlayback:[(PBUILivePhotoPlayerView *)self _isForcingPlayback]];
}

- (void)stopPlaybackWithReason:(id)a3
{
  [(NSMutableSet *)self->_forcePlaybackReasons removeObject:a3];
  v4 = [(PBUILivePhotoPlayerView *)self _isForcingPlayback];

  [(PBUILivePhotoPlayerView *)self _subclass_updateForForcingPlayback:v4];
}

- (void)setContentMode:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = PBUILivePhotoPlayerView;
  [(PBUILivePhotoPlayerView *)&v6 setContentMode:?];
  v5 = [(PBUILivePhotoPlayerView *)self _playerUIView];
  [v5 setContentMode:a3];
}

- (void)_common_configurePlayer:(id)a3
{
  v4 = a3;
  [v4 setAudioEnabled:0];
  [v4 registerChangeObserver:self context:PlayerObservationContext];
  [v4 setDelegate:self];
}

- (void)_common_configurePlayerView:(id)a3
{
  v4 = a3;
  [(PBUILivePhotoPlayerView *)self bounds];
  [v4 setFrame:?];
  [v4 setAutoresizingMask:18];
  [(PBUILivePhotoPlayerView *)self addSubview:v4];

  v5 = [(PBUILivePhotoPlayerView *)self gestureRecognizer];
  [v5 addTarget:self action:sel__handlePlaybackGesture_];
}

- (void)_setInteracting:(BOOL)a3
{
  if (self->_interacting != a3)
  {
    self->_interacting = a3;
    v5 = [(PBUILivePhotoPlayerView *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v5 playerViewIsInteractingDidChange:self];
    }
  }
}

- (void)_handlePlaybackGesture:(id)a3
{
  v4 = ([a3 state] - 1) < 2;

  [(PBUILivePhotoPlayerView *)self _setInteracting:v4];
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v8 = a3;
  v9 = [(PBUILivePhotoPlayerView *)self delegate];
  if (PlayerObservationContext != a5)
  {
    goto LABEL_2;
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x2050000000;
  v10 = getISLiveWallpaperPlayerClass_softClass;
  v23 = getISLiveWallpaperPlayerClass_softClass;
  if (!getISLiveWallpaperPlayerClass_softClass)
  {
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __getISLiveWallpaperPlayerClass_block_invoke;
    v18 = &unk_278361F18;
    v19 = &v20;
    __getISLiveWallpaperPlayerClass_block_invoke(&v15);
    v10 = v21[3];
  }

  v11 = v10;
  _Block_object_dispose(&v20, 8);
  if (objc_opt_isKindOfClass())
  {
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_2;
    }

    goto LABEL_12;
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x2050000000;
  v12 = getISLivePhotoPlayerClass_softClass;
  v23 = getISLivePhotoPlayerClass_softClass;
  if (!getISLivePhotoPlayerClass_softClass)
  {
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __getISLivePhotoPlayerClass_block_invoke;
    v18 = &unk_278361F18;
    v19 = &v20;
    __getISLivePhotoPlayerClass_block_invoke(&v15);
    v12 = v21[3];
  }

  v13 = v12;
  _Block_object_dispose(&v20, 8);
  isKindOfClass = objc_opt_isKindOfClass();
  if (v6 & 8) != 0 && (isKindOfClass)
  {
LABEL_12:
    if (objc_opt_respondsToSelector())
    {
      [v9 playerViewPlaybackStateDidChange:self];
    }
  }

LABEL_2:
}

- (id)videoPlayerForPlayer:(id)a3
{
  v4 = [(PBUILivePhotoPlayerView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 videoPlayerForPlayerView:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (PBUILivePhotoPlayerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIGestureRecognizer)gestureRecognizer
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (int64_t)playbackState
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end