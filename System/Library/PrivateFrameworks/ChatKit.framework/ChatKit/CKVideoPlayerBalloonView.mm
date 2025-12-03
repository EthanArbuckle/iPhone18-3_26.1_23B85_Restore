@interface CKVideoPlayerBalloonView
- (BOOL)gestureIsOurGesture:(id)gesture;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (CKReusableVideoPlayer)reusablePlayer;
- (CKVideoPlayerBalloonView)initWithFrame:(CGRect)frame;
- (CKVideoPlayerReusePool)playerPool;
- (NSString)description;
- (id)playerItem;
- (id)playerViewController;
- (void)cleanUpPlayerIfNeeded;
- (void)configureForMediaObject:(id)object previewWidth:(double)width orientation:(char)orientation hasInvisibleInkEffect:(BOOL)effect;
- (void)doubleTapGestureRecognized:(id)recognized;
- (void)layoutSubviews;
- (void)pausePlayback;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)reusablePlayerDidStart;
- (void)reusablePlayerDidStop;
- (void)reusablePlayerWillBeginFullScreenPresentation:(id)presentation;
- (void)reusablePlayerWillEndFullScreenPresentation:(id)presentation;
- (void)setPlayerView:(id)view;
- (void)showPlayerViewController;
- (void)startPlayingInlineVideo;
- (void)tapGestureRecognized:(id)recognized;
- (void)traitCollectionDidChange:(id)change;
- (void)willMoveToWindow:(id)window;
@end

@implementation CKVideoPlayerBalloonView

- (void)configureForMediaObject:(id)object previewWidth:(double)width orientation:(char)orientation hasInvisibleInkEffect:(BOOL)effect
{
  effectCopy = effect;
  orientationCopy = orientation;
  v11.receiver = self;
  v11.super_class = CKVideoPlayerBalloonView;
  objectCopy = object;
  [(CKImageBalloonView *)&v11 configureForMediaObject:objectCopy previewWidth:orientationCopy orientation:effectCopy hasInvisibleInkEffect:width];
  [(CKVideoPlayerBalloonView *)self setMediaObject:objectCopy, v11.receiver, v11.super_class];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = CKVideoPlayerBalloonView;
  v4 = [(CKImageBalloonView *)&v8 description];
  mediaObject = [(CKVideoPlayerBalloonView *)self mediaObject];
  v6 = [v3 stringWithFormat:@"%@ mediaObject: %@", v4, mediaObject];

  return v6;
}

- (CKVideoPlayerBalloonView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = CKVideoPlayerBalloonView;
  v3 = [(CKImageBalloonView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    doubleTapGestureRecognizer = [(CKBalloonView *)v3 doubleTapGestureRecognizer];
    [doubleTapGestureRecognizer setDelegate:v4];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel_applicationDidEnterBackground_ name:*MEMORY[0x1E69DDBC8] object:0];
  }

  return v4;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  if ([(CKVideoPlayerBalloonView *)self gestureIsOurGesture:recognizer]&& ([(CKVideoPlayerBalloonView *)self playerView], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    [touchCopy preciseLocationInView:self];
    v8 = [(CKVideoPlayerBalloonView *)self hitTest:0 withEvent:?];
    objc_opt_class();
    v9 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    v9 = 1;
  }

  return v9 & 1;
}

- (BOOL)gestureIsOurGesture:(id)gesture
{
  gestureCopy = gesture;
  doubleTapGestureRecognizer = [(CKBalloonView *)self doubleTapGestureRecognizer];
  if (doubleTapGestureRecognizer == gestureCopy)
  {
    v7 = 1;
  }

  else
  {
    tapGestureRecognizer = [(CKBalloonView *)self tapGestureRecognizer];
    v7 = tapGestureRecognizer == gestureCopy;
  }

  return v7;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  v9 = [(CKVideoPlayerBalloonView *)self gestureIsOurGesture:recognizerCopy];
  if (v9)
  {
    view = [gestureRecognizerCopy view];
    if ([view isDescendantOfView:self])
    {
      v10 = 1;
LABEL_10:

      goto LABEL_11;
    }

    if (![(CKVideoPlayerBalloonView *)self gestureIsOurGesture:gestureRecognizerCopy])
    {
      v10 = 0;
      goto LABEL_10;
    }

LABEL_7:
    view2 = [recognizerCopy view];
    v10 = [view2 isDescendantOfView:self];

    if (!v9)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if ([(CKVideoPlayerBalloonView *)self gestureIsOurGesture:gestureRecognizerCopy])
  {
    goto LABEL_7;
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)reusablePlayerDidStart
{
  invisibleInkEffectController = [(CKBalloonView *)self invisibleInkEffectController];
  [invisibleInkEffectController setSuspended:1];
}

- (void)reusablePlayerDidStop
{
  invisibleInkEffectController = [(CKBalloonView *)self invisibleInkEffectController];
  [invisibleInkEffectController setSuspended:0];
}

- (void)reusablePlayerWillBeginFullScreenPresentation:(id)presentation
{
  v3 = *MEMORY[0x1E69874E8];
  playerViewController = [(CKVideoPlayerBalloonView *)self playerViewController];
  [playerViewController setVideoGravity:v3];
}

- (void)reusablePlayerWillEndFullScreenPresentation:(id)presentation
{
  v3 = *MEMORY[0x1E69874F0];
  playerViewController = [(CKVideoPlayerBalloonView *)self playerViewController];
  [playerViewController setVideoGravity:v3];
}

- (void)prepareForReuse
{
  [(CKVideoPlayerBalloonView *)self cleanUpPlayerIfNeeded];
  v3.receiver = self;
  v3.super_class = CKVideoPlayerBalloonView;
  [(CKImageBalloonView *)&v3 prepareForReuse];
}

- (void)willMoveToWindow:(id)window
{
  v3.receiver = self;
  v3.super_class = CKVideoPlayerBalloonView;
  [(CKVideoPlayerBalloonView *)&v3 willMoveToWindow:window];
}

- (void)prepareForDisplay
{
  v5.receiver = self;
  v5.super_class = CKVideoPlayerBalloonView;
  [(CKImageBalloonView *)&v5 prepareForDisplay];
  v3 = +[CKAudioSessionController shareInstance];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__CKVideoPlayerBalloonView_prepareForDisplay__block_invoke;
  v4[3] = &unk_1E72EBA18;
  v4[4] = self;
  [v3 activateWithOptions:8 completion:v4];
}

void __45__CKVideoPlayerBalloonView_prepareForDisplay__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) playerPool];
  v3 = [*(a1 + 32) mediaObject];
  v4 = [v3 transferGUID];
  obj = [v2 existingVideoPlayerForTransferGUID:v4];

  v5 = obj;
  if (obj)
  {
    objc_storeStrong((*(a1 + 32) + 912), obj);
    [*(a1 + 32) showPlayerViewController];
    v5 = obj;
  }
}

- (CKReusableVideoPlayer)reusablePlayer
{
  reusablePlayer = self->_reusablePlayer;
  if (!reusablePlayer)
  {
    playerPool = [(CKVideoPlayerBalloonView *)self playerPool];
    dequeueAvailableVideoPlayer = [playerPool dequeueAvailableVideoPlayer];
    v6 = self->_reusablePlayer;
    self->_reusablePlayer = dequeueAvailableVideoPlayer;

    transferGUID = [(CKMediaObject *)self->_mediaObject transferGUID];
    [(CKReusableVideoPlayer *)self->_reusablePlayer setVideoTransferGUID:transferGUID];

    playerViewController = [(CKReusableVideoPlayer *)self->_reusablePlayer playerViewController];
    [playerViewController setAllowsPictureInPicturePlayback:1];

    v9 = *MEMORY[0x1E69874F0];
    playerViewController2 = [(CKReusableVideoPlayer *)self->_reusablePlayer playerViewController];
    [playerViewController2 setVideoGravity:v9];

    v11 = self->_reusablePlayer;
    playerItem = [(CKVideoPlayerBalloonView *)self playerItem];
    [(CKReusableVideoPlayer *)v11 configureWithPlayerItem:playerItem];

    [(CKReusableVideoPlayer *)self->_reusablePlayer setDelegate:self];
    reusablePlayer = self->_reusablePlayer;
  }

  return reusablePlayer;
}

- (void)tapGestureRecognized:(id)recognized
{
  recognizedCopy = recognized;
  if (![(CKObscurableBalloonView *)self isObscured])
  {
    if (self->_playerView && CKIsRunningInMacCatalyst())
    {
      v29.receiver = self;
      v29.super_class = CKVideoPlayerBalloonView;
      [(CKImageBalloonView *)&v29 tapGestureRecognized:recognizedCopy];
      goto LABEL_18;
    }

    v5 = +[CKUIBehavior sharedBehaviors];
    playButtonImage = [v5 playButtonImage];

    [(CKVideoPlayerBalloonView *)self bounds];
    [(CKVideoPlayerBalloonView *)self alignmentRectForFrame:?];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [playButtonImage size];
    v16 = v15;
    v18 = v17;
    if (CKMainScreenScale_once_23 != -1)
    {
      [CKVideoPlayerBalloonView tapGestureRecognized:];
    }

    v19 = *&CKMainScreenScale_sMainScreenScale_23;
    v20 = +[CKUIBehavior sharedBehaviors];
    if ([v20 playsInlineVideo])
    {
      v21 = 1.0;
      if (v19 != 0.0)
      {
        v21 = v19;
      }

      v22 = floor((v8 + (v12 - v16) * 0.5) * v21) / v21;
      v23 = floor((v10 + (v14 - v18) * 0.5) * v21) / v21;
      [recognizedCopy locationInView:self];
      v31.x = v24;
      v31.y = v25;
      v32.origin.x = v22;
      v32.origin.y = v23;
      v32.size.width = v16;
      v32.size.height = v18;
      v26 = CGRectContainsPoint(v32, v31);

      if (v26)
      {
        [(CKVideoPlayerBalloonView *)self startPlayingInlineVideo];
LABEL_17:

        goto LABEL_18;
      }
    }

    else
    {
    }

    if (CKIsRunningInMacCatalyst())
    {
      v28.receiver = self;
      v28.super_class = CKVideoPlayerBalloonView;
      [(CKImageBalloonView *)&v28 tapGestureRecognized:recognizedCopy];
    }

    else
    {
      playerViewController = [(CKVideoPlayerBalloonView *)self playerViewController];
      [playerViewController showFullScreenPresentationFromView:self completion:0];
    }

    goto LABEL_17;
  }

  v30.receiver = self;
  v30.super_class = CKVideoPlayerBalloonView;
  [(CKImageBalloonView *)&v30 tapGestureRecognized:recognizedCopy];
LABEL_18:
}

- (void)doubleTapGestureRecognized:(id)recognized
{
  recognizedCopy = recognized;
  reusablePlayer = [(CKVideoPlayerBalloonView *)self reusablePlayer];
  isPictureInPictureActive = [reusablePlayer isPictureInPictureActive];

  if ((isPictureInPictureActive & 1) == 0)
  {
    playerViewController = [(CKVideoPlayerBalloonView *)self playerViewController];
    player = [playerViewController player];
    [player pause];
  }

  v9.receiver = self;
  v9.super_class = CKVideoPlayerBalloonView;
  [(CKBalloonView *)&v9 doubleTapGestureRecognized:recognizedCopy];
}

- (void)pausePlayback
{
  playerViewController = [(CKVideoPlayerBalloonView *)self playerViewController];
  player = [playerViewController player];
  [player pause];
}

- (void)cleanUpPlayerIfNeeded
{
  if (self->_reusablePlayer)
  {
    reusablePlayer = [(CKVideoPlayerBalloonView *)self reusablePlayer];
    [reusablePlayer willDisappear];

    reusablePlayer2 = [(CKVideoPlayerBalloonView *)self reusablePlayer];
    isReadyForReuse = [reusablePlayer2 isReadyForReuse];

    if (isReadyForReuse)
    {
      reusablePlayer3 = [(CKVideoPlayerBalloonView *)self reusablePlayer];
      playerViewController = [reusablePlayer3 playerViewController];
      player = [playerViewController player];
      [player pause];
    }
  }

  playerView = [(CKVideoPlayerBalloonView *)self playerView];
  superview = [playerView superview];

  if (superview == self)
  {
    playerViewController2 = [(CKVideoPlayerBalloonView *)self playerViewController];
    [playerViewController2 willMoveToParentViewController:0];

    [playerView removeFromSuperview];
    playerViewController3 = [(CKVideoPlayerBalloonView *)self playerViewController];
    [playerViewController3 removeFromParentViewController];
  }

  if (self->_reusablePlayer)
  {
    playerPool = [(CKVideoPlayerBalloonView *)self playerPool];
    reusablePlayer4 = [(CKVideoPlayerBalloonView *)self reusablePlayer];
    [playerPool returnPlayerToPool:reusablePlayer4];
  }

  [(CKVideoPlayerBalloonView *)self setReusablePlayer:0];
  [(CKVideoPlayerBalloonView *)self setPlayerView:0];
}

- (void)showPlayerViewController
{
  delegate = [(CKBalloonView *)self delegate];
  v4 = [delegate conformsToProtocol:&unk_1F0575DC0];

  if (v4)
  {
    delegate2 = [(CKBalloonView *)self delegate];
    reusablePlayer = [(CKVideoPlayerBalloonView *)self reusablePlayer];
    v7 = [delegate2 parentViewControllerForReusableVideoPlayer:reusablePlayer];

    playerViewController = [(CKVideoPlayerBalloonView *)self playerViewController];
    v9 = +[CKUIBehavior sharedBehaviors];
    [v9 defaultAVPlayerViewContorllerControlsInsets];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    if ([(CKBalloonView *)self hasTail])
    {
      v18 = +[CKUIBehavior sharedBehaviors];
      [v18 balloonMaskTailHeight];
      v20 = v19;

      v15 = v15 + v20;
    }

    v24[0] = v11;
    v24[1] = v13;
    *&v24[2] = v15;
    v24[3] = v17;
    v21 = [MEMORY[0x1E696B098] valueWithBytes:v24 objCType:"{UIEdgeInsets=dddd}"];
    [playerViewController setOverrideLayoutMarginsWhenEmbeddedInline:v21];

    [v7 addChildViewController:playerViewController];
    view = [playerViewController view];
    [(CKVideoPlayerBalloonView *)self setPlayerView:view];

    [playerViewController didMoveToParentViewController:v7];
    invisibleInkEffectController = [(CKBalloonView *)self invisibleInkEffectController];
    [invisibleInkEffectController setSuspended:1];
  }
}

- (void)startPlayingInlineVideo
{
  [(CKVideoPlayerBalloonView *)self showPlayerViewController];
  v3 = +[CKAudioSessionController shareInstance];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__CKVideoPlayerBalloonView_startPlayingInlineVideo__block_invoke;
  v4[3] = &unk_1E72EBA18;
  v4[4] = self;
  [v3 activateWithOptions:8 completion:v4];
}

void __51__CKVideoPlayerBalloonView_startPlayingInlineVideo__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) playerViewController];
  v1 = [v2 player];
  [v1 play];
}

- (id)playerViewController
{
  reusablePlayer = [(CKVideoPlayerBalloonView *)self reusablePlayer];
  playerViewController = [reusablePlayer playerViewController];

  return playerViewController;
}

- (CKVideoPlayerReusePool)playerPool
{
  playerPool = self->_playerPool;
  if (playerPool)
  {
    goto LABEL_4;
  }

  delegate = [(CKBalloonView *)self delegate];
  v5 = [delegate conformsToProtocol:&unk_1F0575DC0];

  if (v5)
  {
    delegate2 = [(CKBalloonView *)self delegate];
    videoPlayerReusePool = [delegate2 videoPlayerReusePool];
    v8 = self->_playerPool;
    self->_playerPool = videoPlayerReusePool;

    playerPool = self->_playerPool;
LABEL_4:
    v9 = playerPool;
    goto LABEL_5;
  }

  v9 = 0;
LABEL_5:

  return v9;
}

- (id)playerItem
{
  mediaObject = [(CKVideoPlayerBalloonView *)self mediaObject];
  fileURL = [mediaObject fileURL];

  v4 = CKAVURLAssetForURL(fileURL);
  v5 = [MEMORY[0x1E69880B0] playerItemWithAsset:v4];

  return v5;
}

- (void)setPlayerView:(id)view
{
  viewCopy = view;
  playerView = self->_playerView;
  if (playerView != viewCopy)
  {
    v14 = viewCopy;
    if ([(UIView *)playerView isDescendantOfView:self])
    {
      [(UIView *)self->_playerView removeFromSuperview];
    }

    objc_storeStrong(&self->_playerView, view);
    if (CKIsRunningInMacCatalyst())
    {
      clearColor = [MEMORY[0x1E69DC888] clearColor];
      [(UIView *)self->_playerView setBackgroundColor:clearColor];
    }

    else
    {
      clearColor = +[CKUIBehavior sharedBehaviors];
      theme = [clearColor theme];
      transcriptBackgroundColor = [theme transcriptBackgroundColor];
      [(UIView *)self->_playerView setBackgroundColor:transcriptBackgroundColor];
    }

    invisibleInkEffectController = [(CKBalloonView *)self invisibleInkEffectController];
    effectView = [invisibleInkEffectController effectView];

    v12 = self->_playerView;
    if (effectView)
    {
      [(CKVideoPlayerBalloonView *)self insertSubview:v12 belowSubview:effectView];
    }

    else
    {
      [(CKVideoPlayerBalloonView *)self addSubview:v12];
    }

    v13 = self->_playerView;
    [(CKVideoPlayerBalloonView *)self bounds];
    [(UIView *)v13 setFrame:?];
    [(UIView *)self->_playerView setAutoresizingMask:18];
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
    [(UIView *)self->_playerView setAlpha:1.0];
    [(CKVideoPlayerBalloonView *)self setNeedsLayout];

    viewCopy = v14;
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = CKVideoPlayerBalloonView;
  [(CKBalloonView *)&v7 traitCollectionDidChange:change];
  if (self->_playerView)
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    theme = [v4 theme];
    transcriptBackgroundColor = [theme transcriptBackgroundColor];
    [(UIView *)self->_playerView setBackgroundColor:transcriptBackgroundColor];
  }
}

- (void)layoutSubviews
{
  v26.receiver = self;
  v26.super_class = CKVideoPlayerBalloonView;
  [(CKImageBalloonView *)&v26 layoutSubviews];
  superview = [(UIView *)self->_playerView superview];

  if (superview == self)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    [(CKBalloonView *)self balloonDescriptor];
    videoPlayerMaskLayer = self->_videoPlayerMaskLayer;
    if (!videoPlayerMaskLayer)
    {
      v5 = [_TtC7ChatKit18CKBalloonMaskLayer alloc];
      v14 = v22;
      v15 = v23;
      v16 = v24;
      v17 = v25;
      v10 = v18;
      v11 = v19;
      v12 = v20;
      v13 = v21;
      v6 = [(CKBalloonMaskLayer *)v5 initWithDescriptor:&v10];
      v7 = self->_videoPlayerMaskLayer;
      self->_videoPlayerMaskLayer = v6;

      videoPlayerMaskLayer = self->_videoPlayerMaskLayer;
    }

    v14 = v22;
    v15 = v23;
    v16 = v24;
    v17 = v25;
    v10 = v18;
    v11 = v19;
    v12 = v20;
    v13 = v21;
    [(CKBalloonMaskLayer *)videoPlayerMaskLayer updateDescriptor:&v10];
    v8 = self->_videoPlayerMaskLayer;
    layer = [(UIView *)self->_playerView layer];
    [layer setMask:v8];

    [(UIView *)self->_playerView bounds];
    [(CKBalloonMaskLayer *)self->_videoPlayerMaskLayer setFrame:?];
  }
}

@end