@interface PBUILivePhotoPlayerView
+ (PBUILivePhotoPlayerView)playerViewWithRewindPlaybackStyle:(BOOL)style;
- (PBUILivePhotoPlayerViewDelegate)delegate;
- (UIGestureRecognizer)gestureRecognizer;
- (id)videoPlayerForPlayer:(id)player;
- (int64_t)playbackState;
- (void)_common_configurePlayer:(id)player;
- (void)_common_configurePlayerView:(id)view;
- (void)_handlePlaybackGesture:(id)gesture;
- (void)_setInteracting:(BOOL)interacting;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)prepareWithPhoto:(CGImage *)photo videoAsset:(id)asset photoTime:(double)time photoEXIFOrientation:(int)orientation;
- (void)setContentMode:(int64_t)mode;
- (void)startPlaybackWithReason:(id)reason;
- (void)stopPlaybackWithReason:(id)reason;
@end

@implementation PBUILivePhotoPlayerView

+ (PBUILivePhotoPlayerView)playerViewWithRewindPlaybackStyle:(BOOL)style
{
  v3 = off_278361590;
  if (!style)
  {
    v3 = off_278361588;
  }

  v4 = objc_alloc_init(*v3);

  return v4;
}

- (void)prepareWithPhoto:(CGImage *)photo videoAsset:(id)asset photoTime:(double)time photoEXIFOrientation:(int)orientation
{
  v6 = *&orientation;
  assetCopy = asset;
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
  v13 = [[v11 alloc] initWithVideoAsset:assetCopy photo:photo photoTime:v6 photoEXIFOrientation:time];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v29 = v16;
  v30 = v15;

  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 scale];
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
  _playerUIView = [(PBUILivePhotoPlayerView *)self _playerUIView];
  player = [_playerUIView player];
  [player setPlayerItem:v24];
}

- (void)startPlaybackWithReason:(id)reason
{
  reasonCopy = reason;
  forcePlaybackReasons = self->_forcePlaybackReasons;
  v8 = reasonCopy;
  if (!forcePlaybackReasons)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    v7 = self->_forcePlaybackReasons;
    self->_forcePlaybackReasons = v6;

    reasonCopy = v8;
    forcePlaybackReasons = self->_forcePlaybackReasons;
  }

  [(NSMutableSet *)forcePlaybackReasons addObject:reasonCopy];
  [(PBUILivePhotoPlayerView *)self _subclass_updateForForcingPlayback:[(PBUILivePhotoPlayerView *)self _isForcingPlayback]];
}

- (void)stopPlaybackWithReason:(id)reason
{
  [(NSMutableSet *)self->_forcePlaybackReasons removeObject:reason];
  _isForcingPlayback = [(PBUILivePhotoPlayerView *)self _isForcingPlayback];

  [(PBUILivePhotoPlayerView *)self _subclass_updateForForcingPlayback:_isForcingPlayback];
}

- (void)setContentMode:(int64_t)mode
{
  v6.receiver = self;
  v6.super_class = PBUILivePhotoPlayerView;
  [(PBUILivePhotoPlayerView *)&v6 setContentMode:?];
  _playerUIView = [(PBUILivePhotoPlayerView *)self _playerUIView];
  [_playerUIView setContentMode:mode];
}

- (void)_common_configurePlayer:(id)player
{
  playerCopy = player;
  [playerCopy setAudioEnabled:0];
  [playerCopy registerChangeObserver:self context:PlayerObservationContext];
  [playerCopy setDelegate:self];
}

- (void)_common_configurePlayerView:(id)view
{
  viewCopy = view;
  [(PBUILivePhotoPlayerView *)self bounds];
  [viewCopy setFrame:?];
  [viewCopy setAutoresizingMask:18];
  [(PBUILivePhotoPlayerView *)self addSubview:viewCopy];

  gestureRecognizer = [(PBUILivePhotoPlayerView *)self gestureRecognizer];
  [gestureRecognizer addTarget:self action:sel__handlePlaybackGesture_];
}

- (void)_setInteracting:(BOOL)interacting
{
  if (self->_interacting != interacting)
  {
    self->_interacting = interacting;
    delegate = [(PBUILivePhotoPlayerView *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate playerViewIsInteractingDidChange:self];
    }
  }
}

- (void)_handlePlaybackGesture:(id)gesture
{
  v4 = ([gesture state] - 1) < 2;

  [(PBUILivePhotoPlayerView *)self _setInteracting:v4];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  delegate = [(PBUILivePhotoPlayerView *)self delegate];
  if (PlayerObservationContext != context)
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
    if ((changeCopy & 0x10) == 0)
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
  if (changeCopy & 8) != 0 && (isKindOfClass)
  {
LABEL_12:
    if (objc_opt_respondsToSelector())
    {
      [delegate playerViewPlaybackStateDidChange:self];
    }
  }

LABEL_2:
}

- (id)videoPlayerForPlayer:(id)player
{
  delegate = [(PBUILivePhotoPlayerView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [delegate videoPlayerForPlayerView:self];
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