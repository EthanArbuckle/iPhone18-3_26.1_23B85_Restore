@interface CKVideoPlayerBalloonView
- (BOOL)gestureIsOurGesture:(id)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (CKReusableVideoPlayer)reusablePlayer;
- (CKVideoPlayerBalloonView)initWithFrame:(CGRect)a3;
- (CKVideoPlayerReusePool)playerPool;
- (NSString)description;
- (id)playerItem;
- (id)playerViewController;
- (void)cleanUpPlayerIfNeeded;
- (void)configureForMediaObject:(id)a3 previewWidth:(double)a4 orientation:(char)a5 hasInvisibleInkEffect:(BOOL)a6;
- (void)doubleTapGestureRecognized:(id)a3;
- (void)layoutSubviews;
- (void)pausePlayback;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)reusablePlayerDidStart;
- (void)reusablePlayerDidStop;
- (void)reusablePlayerWillBeginFullScreenPresentation:(id)a3;
- (void)reusablePlayerWillEndFullScreenPresentation:(id)a3;
- (void)setPlayerView:(id)a3;
- (void)showPlayerViewController;
- (void)startPlayingInlineVideo;
- (void)tapGestureRecognized:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation CKVideoPlayerBalloonView

- (void)configureForMediaObject:(id)a3 previewWidth:(double)a4 orientation:(char)a5 hasInvisibleInkEffect:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v11.receiver = self;
  v11.super_class = CKVideoPlayerBalloonView;
  v10 = a3;
  [(CKImageBalloonView *)&v11 configureForMediaObject:v10 previewWidth:v7 orientation:v6 hasInvisibleInkEffect:a4];
  [(CKVideoPlayerBalloonView *)self setMediaObject:v10, v11.receiver, v11.super_class];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = CKVideoPlayerBalloonView;
  v4 = [(CKImageBalloonView *)&v8 description];
  v5 = [(CKVideoPlayerBalloonView *)self mediaObject];
  v6 = [v3 stringWithFormat:@"%@ mediaObject: %@", v4, v5];

  return v6;
}

- (CKVideoPlayerBalloonView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = CKVideoPlayerBalloonView;
  v3 = [(CKImageBalloonView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(CKBalloonView *)v3 doubleTapGestureRecognizer];
    [v5 setDelegate:v4];

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 addObserver:v4 selector:sel_applicationDidEnterBackground_ name:*MEMORY[0x1E69DDBC8] object:0];
  }

  return v4;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a4;
  if ([(CKVideoPlayerBalloonView *)self gestureIsOurGesture:a3]&& ([(CKVideoPlayerBalloonView *)self playerView], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    [v6 preciseLocationInView:self];
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

- (BOOL)gestureIsOurGesture:(id)a3
{
  v4 = a3;
  v5 = [(CKBalloonView *)self doubleTapGestureRecognizer];
  if (v5 == v4)
  {
    v7 = 1;
  }

  else
  {
    v6 = [(CKBalloonView *)self tapGestureRecognizer];
    v7 = v6 == v4;
  }

  return v7;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(CKVideoPlayerBalloonView *)self gestureIsOurGesture:v7];
  if (v9)
  {
    v4 = [v8 view];
    if ([v4 isDescendantOfView:self])
    {
      v10 = 1;
LABEL_10:

      goto LABEL_11;
    }

    if (![(CKVideoPlayerBalloonView *)self gestureIsOurGesture:v8])
    {
      v10 = 0;
      goto LABEL_10;
    }

LABEL_7:
    v11 = [v7 view];
    v10 = [v11 isDescendantOfView:self];

    if (!v9)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if ([(CKVideoPlayerBalloonView *)self gestureIsOurGesture:v8])
  {
    goto LABEL_7;
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)reusablePlayerDidStart
{
  v2 = [(CKBalloonView *)self invisibleInkEffectController];
  [v2 setSuspended:1];
}

- (void)reusablePlayerDidStop
{
  v2 = [(CKBalloonView *)self invisibleInkEffectController];
  [v2 setSuspended:0];
}

- (void)reusablePlayerWillBeginFullScreenPresentation:(id)a3
{
  v3 = *MEMORY[0x1E69874E8];
  v4 = [(CKVideoPlayerBalloonView *)self playerViewController];
  [v4 setVideoGravity:v3];
}

- (void)reusablePlayerWillEndFullScreenPresentation:(id)a3
{
  v3 = *MEMORY[0x1E69874F0];
  v4 = [(CKVideoPlayerBalloonView *)self playerViewController];
  [v4 setVideoGravity:v3];
}

- (void)prepareForReuse
{
  [(CKVideoPlayerBalloonView *)self cleanUpPlayerIfNeeded];
  v3.receiver = self;
  v3.super_class = CKVideoPlayerBalloonView;
  [(CKImageBalloonView *)&v3 prepareForReuse];
}

- (void)willMoveToWindow:(id)a3
{
  v3.receiver = self;
  v3.super_class = CKVideoPlayerBalloonView;
  [(CKVideoPlayerBalloonView *)&v3 willMoveToWindow:a3];
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
    v4 = [(CKVideoPlayerBalloonView *)self playerPool];
    v5 = [v4 dequeueAvailableVideoPlayer];
    v6 = self->_reusablePlayer;
    self->_reusablePlayer = v5;

    v7 = [(CKMediaObject *)self->_mediaObject transferGUID];
    [(CKReusableVideoPlayer *)self->_reusablePlayer setVideoTransferGUID:v7];

    v8 = [(CKReusableVideoPlayer *)self->_reusablePlayer playerViewController];
    [v8 setAllowsPictureInPicturePlayback:1];

    v9 = *MEMORY[0x1E69874F0];
    v10 = [(CKReusableVideoPlayer *)self->_reusablePlayer playerViewController];
    [v10 setVideoGravity:v9];

    v11 = self->_reusablePlayer;
    v12 = [(CKVideoPlayerBalloonView *)self playerItem];
    [(CKReusableVideoPlayer *)v11 configureWithPlayerItem:v12];

    [(CKReusableVideoPlayer *)self->_reusablePlayer setDelegate:self];
    reusablePlayer = self->_reusablePlayer;
  }

  return reusablePlayer;
}

- (void)tapGestureRecognized:(id)a3
{
  v4 = a3;
  if (![(CKObscurableBalloonView *)self isObscured])
  {
    if (self->_playerView && CKIsRunningInMacCatalyst())
    {
      v29.receiver = self;
      v29.super_class = CKVideoPlayerBalloonView;
      [(CKImageBalloonView *)&v29 tapGestureRecognized:v4];
      goto LABEL_18;
    }

    v5 = +[CKUIBehavior sharedBehaviors];
    v6 = [v5 playButtonImage];

    [(CKVideoPlayerBalloonView *)self bounds];
    [(CKVideoPlayerBalloonView *)self alignmentRectForFrame:?];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [v6 size];
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
      [v4 locationInView:self];
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
      [(CKImageBalloonView *)&v28 tapGestureRecognized:v4];
    }

    else
    {
      v27 = [(CKVideoPlayerBalloonView *)self playerViewController];
      [v27 showFullScreenPresentationFromView:self completion:0];
    }

    goto LABEL_17;
  }

  v30.receiver = self;
  v30.super_class = CKVideoPlayerBalloonView;
  [(CKImageBalloonView *)&v30 tapGestureRecognized:v4];
LABEL_18:
}

- (void)doubleTapGestureRecognized:(id)a3
{
  v4 = a3;
  v5 = [(CKVideoPlayerBalloonView *)self reusablePlayer];
  v6 = [v5 isPictureInPictureActive];

  if ((v6 & 1) == 0)
  {
    v7 = [(CKVideoPlayerBalloonView *)self playerViewController];
    v8 = [v7 player];
    [v8 pause];
  }

  v9.receiver = self;
  v9.super_class = CKVideoPlayerBalloonView;
  [(CKBalloonView *)&v9 doubleTapGestureRecognized:v4];
}

- (void)pausePlayback
{
  v3 = [(CKVideoPlayerBalloonView *)self playerViewController];
  v2 = [v3 player];
  [v2 pause];
}

- (void)cleanUpPlayerIfNeeded
{
  if (self->_reusablePlayer)
  {
    v3 = [(CKVideoPlayerBalloonView *)self reusablePlayer];
    [v3 willDisappear];

    v4 = [(CKVideoPlayerBalloonView *)self reusablePlayer];
    v5 = [v4 isReadyForReuse];

    if (v5)
    {
      v6 = [(CKVideoPlayerBalloonView *)self reusablePlayer];
      v7 = [v6 playerViewController];
      v8 = [v7 player];
      [v8 pause];
    }
  }

  v14 = [(CKVideoPlayerBalloonView *)self playerView];
  v9 = [v14 superview];

  if (v9 == self)
  {
    v10 = [(CKVideoPlayerBalloonView *)self playerViewController];
    [v10 willMoveToParentViewController:0];

    [v14 removeFromSuperview];
    v11 = [(CKVideoPlayerBalloonView *)self playerViewController];
    [v11 removeFromParentViewController];
  }

  if (self->_reusablePlayer)
  {
    v12 = [(CKVideoPlayerBalloonView *)self playerPool];
    v13 = [(CKVideoPlayerBalloonView *)self reusablePlayer];
    [v12 returnPlayerToPool:v13];
  }

  [(CKVideoPlayerBalloonView *)self setReusablePlayer:0];
  [(CKVideoPlayerBalloonView *)self setPlayerView:0];
}

- (void)showPlayerViewController
{
  v3 = [(CKBalloonView *)self delegate];
  v4 = [v3 conformsToProtocol:&unk_1F0575DC0];

  if (v4)
  {
    v5 = [(CKBalloonView *)self delegate];
    v6 = [(CKVideoPlayerBalloonView *)self reusablePlayer];
    v7 = [v5 parentViewControllerForReusableVideoPlayer:v6];

    v8 = [(CKVideoPlayerBalloonView *)self playerViewController];
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
    [v8 setOverrideLayoutMarginsWhenEmbeddedInline:v21];

    [v7 addChildViewController:v8];
    v22 = [v8 view];
    [(CKVideoPlayerBalloonView *)self setPlayerView:v22];

    [v8 didMoveToParentViewController:v7];
    v23 = [(CKBalloonView *)self invisibleInkEffectController];
    [v23 setSuspended:1];
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
  v2 = [(CKVideoPlayerBalloonView *)self reusablePlayer];
  v3 = [v2 playerViewController];

  return v3;
}

- (CKVideoPlayerReusePool)playerPool
{
  playerPool = self->_playerPool;
  if (playerPool)
  {
    goto LABEL_4;
  }

  v4 = [(CKBalloonView *)self delegate];
  v5 = [v4 conformsToProtocol:&unk_1F0575DC0];

  if (v5)
  {
    v6 = [(CKBalloonView *)self delegate];
    v7 = [v6 videoPlayerReusePool];
    v8 = self->_playerPool;
    self->_playerPool = v7;

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
  v2 = [(CKVideoPlayerBalloonView *)self mediaObject];
  v3 = [v2 fileURL];

  v4 = CKAVURLAssetForURL(v3);
  v5 = [MEMORY[0x1E69880B0] playerItemWithAsset:v4];

  return v5;
}

- (void)setPlayerView:(id)a3
{
  v5 = a3;
  playerView = self->_playerView;
  if (playerView != v5)
  {
    v14 = v5;
    if ([(UIView *)playerView isDescendantOfView:self])
    {
      [(UIView *)self->_playerView removeFromSuperview];
    }

    objc_storeStrong(&self->_playerView, a3);
    if (CKIsRunningInMacCatalyst())
    {
      v7 = [MEMORY[0x1E69DC888] clearColor];
      [(UIView *)self->_playerView setBackgroundColor:v7];
    }

    else
    {
      v7 = +[CKUIBehavior sharedBehaviors];
      v8 = [v7 theme];
      v9 = [v8 transcriptBackgroundColor];
      [(UIView *)self->_playerView setBackgroundColor:v9];
    }

    v10 = [(CKBalloonView *)self invisibleInkEffectController];
    v11 = [v10 effectView];

    v12 = self->_playerView;
    if (v11)
    {
      [(CKVideoPlayerBalloonView *)self insertSubview:v12 belowSubview:v11];
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

    v5 = v14;
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = CKVideoPlayerBalloonView;
  [(CKBalloonView *)&v7 traitCollectionDidChange:a3];
  if (self->_playerView)
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    v5 = [v4 theme];
    v6 = [v5 transcriptBackgroundColor];
    [(UIView *)self->_playerView setBackgroundColor:v6];
  }
}

- (void)layoutSubviews
{
  v26.receiver = self;
  v26.super_class = CKVideoPlayerBalloonView;
  [(CKImageBalloonView *)&v26 layoutSubviews];
  v3 = [(UIView *)self->_playerView superview];

  if (v3 == self)
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
    v9 = [(UIView *)self->_playerView layer];
    [v9 setMask:v8];

    [(UIView *)self->_playerView bounds];
    [(CKBalloonMaskLayer *)self->_videoPlayerMaskLayer setFrame:?];
  }
}

@end