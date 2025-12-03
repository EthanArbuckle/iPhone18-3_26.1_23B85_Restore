@interface FIUIHeartRateStatusView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (FIUIHeartRateStatusView)initWithFrame:(CGRect)frame heartFilledImageName:(id)name heartSpriteImageName:(id)imageName heartSuspendedSpriteImageName:(id)spriteImageName spriteFrameCount:(int64_t)count spriteColumnCount:(int64_t)columnCount resourceBundle:(id)bundle;
- (id)_loadHeartMeasuringImage;
- (void)_beatFullHeartOnce;
- (void)_finishedHeartbeat;
- (void)_loadHeartMeasuringImage;
- (void)_resumeAnimations;
- (void)_startBeatingHeart;
- (void)_startMeasuringAnimationAnimated:(BOOL)animated;
- (void)_suspendAnimations;
- (void)layoutSubviews;
- (void)setAnimationsSuspended:(BOOL)suspended;
- (void)setReloadArrowImage:(id)image;
- (void)setReloadHeartOutlineImage:(id)image;
- (void)setState:(unint64_t)state;
- (void)unloadAnimationAssets;
@end

@implementation FIUIHeartRateStatusView

- (id)_loadHeartMeasuringImage
{
  spriteImage = [(FIUIAnimatingSpriteImageView *)self->_animatingImageView spriteImage];
  if (spriteImage)
  {
  }

  else
  {
    heartSpriteImageName = self->_heartSpriteImageName;
    if (heartSpriteImageName)
    {
      v5 = FIUIImageInBundle(heartSpriteImageName, self->_resourceBundle);
      if (v5)
      {
        [(FIUIAnimatingSpriteImageView *)self->_animatingImageView setSpriteImage:v5];
        [(FIUIAnimatingSpriteImageView *)self->_animatingImageView setSpriteColumnCount:self->_heartSpriteImageColumnCount];
        [(FIUIAnimatingSpriteImageView *)self->_animatingImageView setSpriteFrameCount:self->_heartSpriteImageFrameCount];
      }

      else
      {
        _HKInitializeLogging();
        v6 = *MEMORY[0x1E696B958];
        if (os_log_type_enabled(*MEMORY[0x1E696B958], OS_LOG_TYPE_ERROR))
        {
          [(FIUIHeartRateStatusView *)&self->_heartSpriteImageName _loadHeartMeasuringImage];
        }
      }
    }
  }

  spriteImage2 = [(FIUIAnimatingSpriteImageView *)self->_animatingImageView spriteImage];

  return spriteImage2;
}

- (void)_resumeAnimations
{
  if (!self->_animationsSuspended)
  {
    _HKInitializeLogging();
    v3 = *MEMORY[0x1E696B958];
    if (os_log_type_enabled(*MEMORY[0x1E696B958], OS_LOG_TYPE_DEBUG))
    {
      [(FIUIHeartRateStatusView *)v3 _resumeAnimations];
    }

    state = self->_state;
    switch(state)
    {
      case 4uLL:
        goto LABEL_7;
      case 2uLL:
        [(FIUIHeartRateStatusView *)self _startBeatingHeart];
        break;
      case 1uLL:
LABEL_7:
        [(FIUIHeartRateStatusView *)self _startMeasuringAnimationAnimated:1];
        break;
    }

    [(FIUIHeartRateStatusView *)self invalidateIntrinsicContentSize];
  }
}

- (void)layoutSubviews
{
  [(FIUIHeartRateStatusView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  fullHeartImageView = [(FIUIHeartRateStatusView *)self fullHeartImageView];
  [fullHeartImageView bounds];
  v61.origin.x = v12;
  v61.origin.y = v13;
  v61.size.width = v14;
  v61.size.height = v15;
  v60.origin.x = v4;
  v60.origin.y = v6;
  v60.size.width = v8;
  v60.size.height = v10;
  v16 = CGRectEqualToRect(v60, v61);

  if (!v16)
  {
    [(FIUIHeartRateStatusView *)self bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    animatingImageView = [(FIUIHeartRateStatusView *)self animatingImageView];
    [animatingImageView setFrame:{v18, v20, v22, v24}];

    [(FIUIHeartRateStatusView *)self bounds];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    fullHeartImageView2 = [(FIUIHeartRateStatusView *)self fullHeartImageView];
    [fullHeartImageView2 setFrame:{v27, v29, v31, v33}];

    [(FIUIHeartRateStatusView *)self bounds];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    reloadOutlineView = [(FIUIHeartRateStatusView *)self reloadOutlineView];
    [reloadOutlineView setFrame:{v36, v38, v40, v42}];

    [(FIUIHeartRateStatusView *)self bounds];
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;
    animationSuspendedMeasuringView = [(FIUIHeartRateStatusView *)self animationSuspendedMeasuringView];
    [animationSuspendedMeasuringView setFrame:{v45, v47, v49, v51}];

    reloadOutlineView2 = [(FIUIHeartRateStatusView *)self reloadOutlineView];
    [reloadOutlineView2 center];
    v55 = v54;
    v57 = v56;
    reloadArrowView = [(FIUIHeartRateStatusView *)self reloadArrowView];
    [reloadArrowView setCenter:{v55, v57}];

    [(FIUIHeartRateStatusView *)self _resumeAnimations];
  }
}

- (void)_suspendAnimations
{
  _HKInitializeLogging();
  v3 = *MEMORY[0x1E696B958];
  if (os_log_type_enabled(*MEMORY[0x1E696B958], OS_LOG_TYPE_DEBUG))
  {
    [(FIUIHeartRateStatusView *)v3 _suspendAnimations];
  }

  [(FIUIAnimatingSpriteImageView *)self->_animatingImageView stopAnimatingFinishingCycle:0];
  state = self->_state;
  if (state == 4 || state == 1)
  {
    [(FIUIHeartRateStatusView *)self _startMeasuringAnimationAnimated:0];
  }

  [(FIUIHeartRateStatusView *)self invalidateIntrinsicContentSize];
}

- (FIUIHeartRateStatusView)initWithFrame:(CGRect)frame heartFilledImageName:(id)name heartSpriteImageName:(id)imageName heartSuspendedSpriteImageName:(id)spriteImageName spriteFrameCount:(int64_t)count spriteColumnCount:(int64_t)columnCount resourceBundle:(id)bundle
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  nameCopy = name;
  imageNameCopy = imageName;
  spriteImageNameCopy = spriteImageName;
  bundleCopy = bundle;
  v41.receiver = self;
  v41.super_class = FIUIHeartRateStatusView;
  height = [(FIUIHeartRateStatusView *)&v41 initWithFrame:x, y, width, height];
  v24 = height;
  if (height)
  {
    objc_storeStrong(&height->_heartSpriteImageName, imageName);
    v24->_heartSpriteImageFrameCount = count;
    v24->_heartSpriteImageColumnCount = columnCount;
    objc_storeStrong(&v24->_resourceBundle, bundle);
    v24->_beatsPerMinute = 60.0;
    v25 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{x, y, width, height}];
    [(FIUIHeartRateStatusView *)v24 setFullHeartImageView:v25];

    v26 = FIUIImageInBundle(nameCopy, v24->_resourceBundle);
    fullHeartImageView = [(FIUIHeartRateStatusView *)v24 fullHeartImageView];
    [fullHeartImageView setImage:v26];

    fullHeartImageView2 = [(FIUIHeartRateStatusView *)v24 fullHeartImageView];
    [fullHeartImageView2 setAlpha:0.0];

    fullHeartImageView3 = [(FIUIHeartRateStatusView *)v24 fullHeartImageView];
    [(FIUIHeartRateStatusView *)v24 addSubview:fullHeartImageView3];

    v30 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{x, y, width, height}];
    [(FIUIHeartRateStatusView *)v24 setAnimationSuspendedMeasuringView:v30];

    v31 = FIUIImageInBundle(spriteImageNameCopy, v24->_resourceBundle);
    animationSuspendedMeasuringView = [(FIUIHeartRateStatusView *)v24 animationSuspendedMeasuringView];
    [animationSuspendedMeasuringView setImage:v31];

    animationSuspendedMeasuringView2 = [(FIUIHeartRateStatusView *)v24 animationSuspendedMeasuringView];
    [animationSuspendedMeasuringView2 setAlpha:0.0];

    animationSuspendedMeasuringView3 = [(FIUIHeartRateStatusView *)v24 animationSuspendedMeasuringView];
    [(FIUIHeartRateStatusView *)v24 addSubview:animationSuspendedMeasuringView3];

    height2 = [[FIUIAnimatingSpriteImageView alloc] initWithFrame:x, y, width, height];
    [(FIUIHeartRateStatusView *)v24 setAnimatingImageView:height2];

    animatingImageView = [(FIUIHeartRateStatusView *)v24 animatingImageView];
    [animatingImageView setContentMode:1];

    animatingImageView2 = [(FIUIHeartRateStatusView *)v24 animatingImageView];
    [animatingImageView2 setAlpha:0.0];

    animatingImageView3 = [(FIUIHeartRateStatusView *)v24 animatingImageView];
    [(FIUIHeartRateStatusView *)v24 addSubview:animatingImageView3];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v24 selector:sel__resumeAnimations name:@"FIUIResumeAnimationsNotification" object:0];
    [defaultCenter addObserver:v24 selector:sel__suspendAnimations name:@"FIUISuspendAnimationsNotification" object:0];
  }

  return v24;
}

- (void)setAnimationsSuspended:(BOOL)suspended
{
  if (self->_animationsSuspended != suspended)
  {
    self->_animationsSuspended = suspended;
    if (suspended)
    {
      [(FIUIHeartRateStatusView *)self _suspendAnimations];
    }

    else
    {
      [(FIUIHeartRateStatusView *)self _resumeAnimations];
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = [(FIUIHeartRateStatusView *)self fullHeartImageView:fits.width];
  image = [v3 image];
  [image size];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)intrinsicContentSize
{
  state = self->_state;
  if (state <= 6)
  {
    if (((1 << state) & 0x6C) != 0)
    {
      fullHeartImageView = [(FIUIHeartRateStatusView *)self fullHeartImageView];
    }

    else
    {
      if (((1 << state) & 0x12) == 0)
      {
        goto LABEL_5;
      }

      if (self->_animationsSuspended)
      {
        [(FIUIHeartRateStatusView *)self animationSuspendedMeasuringView];
      }

      else
      {
        [(FIUIHeartRateStatusView *)self animatingImageView];
      }
      fullHeartImageView = ;
    }

    v6 = fullHeartImageView;
    [fullHeartImageView intrinsicContentSize];
    v2 = v7;
    v3 = v8;
  }

LABEL_5:
  v9 = v2;
  v10 = v3;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)setReloadHeartOutlineImage:(id)image
{
  imageCopy = image;
  reloadOutlineView = [(FIUIHeartRateStatusView *)self reloadOutlineView];

  if (!reloadOutlineView)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    [(FIUIHeartRateStatusView *)self setReloadOutlineView:v6];

    reloadOutlineView2 = [(FIUIHeartRateStatusView *)self reloadOutlineView];
    [(FIUIHeartRateStatusView *)self addSubview:reloadOutlineView2];
  }

  reloadOutlineView3 = [(FIUIHeartRateStatusView *)self reloadOutlineView];
  [reloadOutlineView3 setImage:imageCopy];

  reloadOutlineView4 = [(FIUIHeartRateStatusView *)self reloadOutlineView];
  [reloadOutlineView4 setAlpha:0.0];

  reloadOutlineView5 = [(FIUIHeartRateStatusView *)self reloadOutlineView];
  [reloadOutlineView5 sizeToFit];

  [(FIUIHeartRateStatusView *)self setNeedsLayout];
}

- (void)setReloadArrowImage:(id)image
{
  imageCopy = image;
  reloadArrowView = [(FIUIHeartRateStatusView *)self reloadArrowView];

  if (!reloadArrowView)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    [(FIUIHeartRateStatusView *)self setReloadArrowView:v6];

    reloadArrowView2 = [(FIUIHeartRateStatusView *)self reloadArrowView];
    [(FIUIHeartRateStatusView *)self addSubview:reloadArrowView2];
  }

  reloadArrowView3 = [(FIUIHeartRateStatusView *)self reloadArrowView];
  [reloadArrowView3 setImage:imageCopy];

  reloadArrowView4 = [(FIUIHeartRateStatusView *)self reloadArrowView];
  [reloadArrowView4 setAlpha:0.0];

  reloadArrowView5 = [(FIUIHeartRateStatusView *)self reloadArrowView];
  [reloadArrowView5 sizeToFit];

  [(FIUIHeartRateStatusView *)self setNeedsLayout];
}

- (void)setState:(unint64_t)state
{
  state = self->_state;
  if (state != state)
  {
    self->_state = state;
    if (state > 3)
    {
      if (state == 4)
      {
        [(FIUIHeartRateStatusView *)self _startMeasuringAnimationAnimated:1];
        goto LABEL_18;
      }

      if (state != 5)
      {
        if (state != 6)
        {
LABEL_18:
          [(FIUIHeartRateStatusView *)self invalidateIntrinsicContentSize];
          return;
        }

LABEL_10:
        animatingImageView = [(FIUIHeartRateStatusView *)self animatingImageView];
        [animatingImageView setAlpha:0.0];

        animationSuspendedMeasuringView = [(FIUIHeartRateStatusView *)self animationSuspendedMeasuringView];
        [animationSuspendedMeasuringView setAlpha:0.0];

        fullHeartImageView = [(FIUIHeartRateStatusView *)self fullHeartImageView];
        [fullHeartImageView setAlpha:1.0];

        reloadOutlineView = [(FIUIHeartRateStatusView *)self reloadOutlineView];
        [reloadOutlineView setAlpha:0.0];

        reloadArrowView = [(FIUIHeartRateStatusView *)self reloadArrowView];
        [reloadArrowView setAlpha:0.0];

        [(FIUIHeartRateStatusView *)self _suspendAnimations];
        goto LABEL_18;
      }

      CGAffineTransformMakeRotation(&v20, 3.14159265);
      reloadArrowView2 = [(FIUIHeartRateStatusView *)self reloadArrowView];
      v19 = v20;
      [reloadArrowView2 setTransform:&v19];

      v10 = MEMORY[0x1E69DD250];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __36__FIUIHeartRateStatusView_setState___block_invoke_5;
      v18[3] = &unk_1E878BFE0;
      v18[4] = self;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __36__FIUIHeartRateStatusView_setState___block_invoke_6;
      v17[3] = &unk_1E878C740;
      v17[4] = self;
      v17[5] = 5;
      v11 = 0.5;
      v12 = v18;
      v13 = v17;
      v14 = 0x20000;
    }

    else
    {
      if (state != 1)
      {
        if (state == 2)
        {
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __36__FIUIHeartRateStatusView_setState___block_invoke_3;
          v22[3] = &unk_1E878BFE0;
          v22[4] = self;
          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 3221225472;
          v21[2] = __36__FIUIHeartRateStatusView_setState___block_invoke_4;
          v21[3] = &unk_1E878C740;
          v21[4] = self;
          v21[5] = 2;
          [MEMORY[0x1E69DD250] animateWithDuration:v22 animations:v21 completion:0.5];
          goto LABEL_18;
        }

        if (state != 3)
        {
          goto LABEL_18;
        }

        goto LABEL_10;
      }

      [(FIUIHeartRateStatusView *)self _startMeasuringAnimationAnimated:0];
      if (state != 5)
      {
        reloadArrowView3 = [(FIUIHeartRateStatusView *)self reloadArrowView];
        [reloadArrowView3 setAlpha:0.0];

        goto LABEL_18;
      }

      v10 = MEMORY[0x1E69DD250];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __36__FIUIHeartRateStatusView_setState___block_invoke;
      v24[3] = &unk_1E878BFE0;
      v24[4] = self;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __36__FIUIHeartRateStatusView_setState___block_invoke_2;
      v23[3] = &unk_1E878C740;
      v23[4] = self;
      v23[5] = 1;
      v11 = 0.5;
      v12 = v24;
      v13 = v23;
      v14 = 0x10000;
    }

    [v10 animateWithDuration:v14 delay:v12 options:v13 animations:v11 completion:0.0];
    goto LABEL_18;
  }
}

void __36__FIUIHeartRateStatusView_setState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) reloadArrowView];
  [v2 setAlpha:0.0];

  CGAffineTransformMakeRotation(&v5, 3.14159265);
  v3 = [*(a1 + 32) reloadArrowView];
  v4 = v5;
  [v3 setTransform:&v4];
}

void __36__FIUIHeartRateStatusView_setState___block_invoke_2(uint64_t a1)
{
  v4 = *(a1 + 32);
  if (v4[55] == *(a1 + 40))
  {
    v8 = v1;
    v9 = v2;
    v5 = [v4 reloadArrowView];
    v6 = *(MEMORY[0x1E695EFD0] + 16);
    v7[0] = *MEMORY[0x1E695EFD0];
    v7[1] = v6;
    v7[2] = *(MEMORY[0x1E695EFD0] + 32);
    [v5 setTransform:v7];
  }
}

void __36__FIUIHeartRateStatusView_setState___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) animatingImageView];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) animationSuspendedMeasuringView];
  [v3 setAlpha:0.0];

  v4 = [*(a1 + 32) fullHeartImageView];
  [v4 setAlpha:1.0];
}

void *__36__FIUIHeartRateStatusView_setState___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[55] == *(a1 + 40))
  {
    [result _suspendAnimations];
    v3 = *(a1 + 32);

    return [v3 _startBeatingHeart];
  }

  return result;
}

void __36__FIUIHeartRateStatusView_setState___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) animatingImageView];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) fullHeartImageView];
  [v3 setAlpha:0.0];

  v4 = [*(a1 + 32) animationSuspendedMeasuringView];
  [v4 setAlpha:0.0];

  v5 = [*(a1 + 32) reloadOutlineView];
  [v5 setAlpha:1.0];

  v6 = [*(a1 + 32) reloadArrowView];
  [v6 setAlpha:1.0];

  CGAffineTransformMakeRotation(&v9, 6.28318531);
  v7 = [*(a1 + 32) reloadArrowView];
  v8 = v9;
  [v7 setTransform:&v8];
}

void *__36__FIUIHeartRateStatusView_setState___block_invoke_6(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[55] == *(a1 + 40))
  {
    v3 = [result reloadArrowView];
    v4 = *(MEMORY[0x1E695EFD0] + 16);
    v5[0] = *MEMORY[0x1E695EFD0];
    v5[1] = v4;
    v5[2] = *(MEMORY[0x1E695EFD0] + 32);
    [v3 setTransform:v5];

    return [*(a1 + 32) _suspendAnimations];
  }

  return result;
}

- (void)_startBeatingHeart
{
  if (!self->_isBeatingHeart && !self->_animationsSuspended)
  {
    self->_isBeatingHeart = 1;
    [(FIUIHeartRateStatusView *)self _beatFullHeartOnce];
  }
}

- (void)_beatFullHeartOnce
{
  v2 = 60.0 / self->_beatsPerMinute;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__FIUIHeartRateStatusView__beatFullHeartOnce__block_invoke;
  v4[3] = &unk_1E878C768;
  v4[4] = self;
  v5 = xmmword_1E5DB1E30;
  v6 = 0xBFE1111111111111;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45__FIUIHeartRateStatusView__beatFullHeartOnce__block_invoke_4;
  v3[3] = &unk_1E878C790;
  v3[4] = self;
  [MEMORY[0x1E69DD250] animateKeyframesWithDuration:117637120 delay:v4 options:v3 animations:v2 completion:0.0];
}

uint64_t __45__FIUIHeartRateStatusView__beatFullHeartOnce__block_invoke(double *a1)
{
  v2 = a1[5];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__FIUIHeartRateStatusView__beatFullHeartOnce__block_invoke_2;
  v7[3] = &unk_1E878BFE0;
  *&v7[4] = a1[4];
  [MEMORY[0x1E69DD250] addKeyframeWithRelativeStartTime:v7 relativeDuration:0.0 animations:v2];
  v3 = a1[6];
  v4 = a1[7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__FIUIHeartRateStatusView__beatFullHeartOnce__block_invoke_3;
  v6[3] = &unk_1E878BFE0;
  *&v6[4] = a1[4];
  return [MEMORY[0x1E69DD250] addKeyframeWithRelativeStartTime:v6 relativeDuration:v3 animations:v4];
}

void __45__FIUIHeartRateStatusView__beatFullHeartOnce__block_invoke_2(uint64_t a1)
{
  CGAffineTransformMakeScale(&v4, 0.9, 0.9);
  v2 = [*(a1 + 32) fullHeartImageView];
  v3 = v4;
  [v2 setTransform:&v3];
}

void __45__FIUIHeartRateStatusView__beatFullHeartOnce__block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) fullHeartImageView];
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  v3[0] = *MEMORY[0x1E695EFD0];
  v3[1] = v2;
  v3[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v1 setTransform:v3];
}

- (void)_finishedHeartbeat
{
  self->_isBeatingHeart = 0;
  window = [(FIUIHeartRateStatusView *)self window];
  if (window)
  {
    animationsSuspended = self->_animationsSuspended;

    if (!animationsSuspended)
    {
      if (self->_state == 2)
      {
        self->_isBeatingHeart = 1;

        [(FIUIHeartRateStatusView *)self _beatFullHeartOnce];
      }

      else if (self->_delayedStartMeasuringAnimation)
      {
        self->_delayedStartMeasuringAnimation = 0;

        [(FIUIHeartRateStatusView *)self _startMeasuringAnimationAnimated:1];
      }
    }
  }
}

- (void)_startMeasuringAnimationAnimated:(BOOL)animated
{
  if (self->_animationsSuspended)
  {
    animatingImageView = [(FIUIHeartRateStatusView *)self animatingImageView];
    [animatingImageView setAlpha:0.0];

    fullHeartImageView = [(FIUIHeartRateStatusView *)self fullHeartImageView];
    [fullHeartImageView setAlpha:0.0];

    reloadOutlineView = [(FIUIHeartRateStatusView *)self reloadOutlineView];
    [reloadOutlineView setAlpha:0.0];

    reloadArrowView = [(FIUIHeartRateStatusView *)self reloadArrowView];
    [reloadArrowView setAlpha:0.0];

    animationSuspendedMeasuringView = [(FIUIHeartRateStatusView *)self animationSuspendedMeasuringView];
    [animationSuspendedMeasuringView setAlpha:1.0];
  }

  else
  {
    animatedCopy = animated;
    reloadOutlineView2 = [(FIUIHeartRateStatusView *)self reloadOutlineView];
    [reloadOutlineView2 setAlpha:0.0];

    reloadArrowView2 = [(FIUIHeartRateStatusView *)self reloadArrowView];
    [reloadArrowView2 setAlpha:0.0];

    _loadHeartMeasuringImage = [(FIUIHeartRateStatusView *)self _loadHeartMeasuringImage];
    animatingImageView2 = [(FIUIHeartRateStatusView *)self animatingImageView];
    [animatingImageView2 startAnimating];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __60__FIUIHeartRateStatusView__startMeasuringAnimationAnimated___block_invoke;
    aBlock[3] = &unk_1E878BFE0;
    aBlock[4] = self;
    v13 = _Block_copy(aBlock);
    v14 = v13;
    if (animatedCopy)
    {
      [MEMORY[0x1E69DD250] animateWithDuration:v13 animations:0.5];
    }

    else
    {
      (*(v13 + 2))(v13);
    }
  }
}

void __60__FIUIHeartRateStatusView__startMeasuringAnimationAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fullHeartImageView];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) animationSuspendedMeasuringView];
  [v3 setAlpha:0.0];

  v4 = [*(a1 + 32) animatingImageView];
  [v4 setAlpha:1.0];
}

- (void)unloadAnimationAssets
{
  [(FIUIHeartRateStatusView *)self _suspendAnimations];
  animatingImageView = self->_animatingImageView;

  [(FIUIAnimatingSpriteImageView *)animatingImageView setSpriteImage:0];
}

- (void)_loadHeartMeasuringImage
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *self;
  v4 = *a2;
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  _os_log_error_impl(&dword_1E5D0F000, log, OS_LOG_TYPE_ERROR, "Error reading heart image named %@ in bundle %@", &v5, 0x16u);
}

@end