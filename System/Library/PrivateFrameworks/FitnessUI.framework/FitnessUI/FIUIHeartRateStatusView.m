@interface FIUIHeartRateStatusView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (FIUIHeartRateStatusView)initWithFrame:(CGRect)a3 heartFilledImageName:(id)a4 heartSpriteImageName:(id)a5 heartSuspendedSpriteImageName:(id)a6 spriteFrameCount:(int64_t)a7 spriteColumnCount:(int64_t)a8 resourceBundle:(id)a9;
- (id)_loadHeartMeasuringImage;
- (void)_beatFullHeartOnce;
- (void)_finishedHeartbeat;
- (void)_loadHeartMeasuringImage;
- (void)_resumeAnimations;
- (void)_startBeatingHeart;
- (void)_startMeasuringAnimationAnimated:(BOOL)a3;
- (void)_suspendAnimations;
- (void)layoutSubviews;
- (void)setAnimationsSuspended:(BOOL)a3;
- (void)setReloadArrowImage:(id)a3;
- (void)setReloadHeartOutlineImage:(id)a3;
- (void)setState:(unint64_t)a3;
- (void)unloadAnimationAssets;
@end

@implementation FIUIHeartRateStatusView

- (id)_loadHeartMeasuringImage
{
  v3 = [(FIUIAnimatingSpriteImageView *)self->_animatingImageView spriteImage];
  if (v3)
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

  v7 = [(FIUIAnimatingSpriteImageView *)self->_animatingImageView spriteImage];

  return v7;
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
  v11 = [(FIUIHeartRateStatusView *)self fullHeartImageView];
  [v11 bounds];
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
    v25 = [(FIUIHeartRateStatusView *)self animatingImageView];
    [v25 setFrame:{v18, v20, v22, v24}];

    [(FIUIHeartRateStatusView *)self bounds];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v34 = [(FIUIHeartRateStatusView *)self fullHeartImageView];
    [v34 setFrame:{v27, v29, v31, v33}];

    [(FIUIHeartRateStatusView *)self bounds];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v43 = [(FIUIHeartRateStatusView *)self reloadOutlineView];
    [v43 setFrame:{v36, v38, v40, v42}];

    [(FIUIHeartRateStatusView *)self bounds];
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v52 = [(FIUIHeartRateStatusView *)self animationSuspendedMeasuringView];
    [v52 setFrame:{v45, v47, v49, v51}];

    v53 = [(FIUIHeartRateStatusView *)self reloadOutlineView];
    [v53 center];
    v55 = v54;
    v57 = v56;
    v58 = [(FIUIHeartRateStatusView *)self reloadArrowView];
    [v58 setCenter:{v55, v57}];

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

- (FIUIHeartRateStatusView)initWithFrame:(CGRect)a3 heartFilledImageName:(id)a4 heartSpriteImageName:(id)a5 heartSuspendedSpriteImageName:(id)a6 spriteFrameCount:(int64_t)a7 spriteColumnCount:(int64_t)a8 resourceBundle:(id)a9
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a9;
  v41.receiver = self;
  v41.super_class = FIUIHeartRateStatusView;
  v23 = [(FIUIHeartRateStatusView *)&v41 initWithFrame:x, y, width, height];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_heartSpriteImageName, a5);
    v24->_heartSpriteImageFrameCount = a7;
    v24->_heartSpriteImageColumnCount = a8;
    objc_storeStrong(&v24->_resourceBundle, a9);
    v24->_beatsPerMinute = 60.0;
    v25 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{x, y, width, height}];
    [(FIUIHeartRateStatusView *)v24 setFullHeartImageView:v25];

    v26 = FIUIImageInBundle(v19, v24->_resourceBundle);
    v27 = [(FIUIHeartRateStatusView *)v24 fullHeartImageView];
    [v27 setImage:v26];

    v28 = [(FIUIHeartRateStatusView *)v24 fullHeartImageView];
    [v28 setAlpha:0.0];

    v29 = [(FIUIHeartRateStatusView *)v24 fullHeartImageView];
    [(FIUIHeartRateStatusView *)v24 addSubview:v29];

    v30 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{x, y, width, height}];
    [(FIUIHeartRateStatusView *)v24 setAnimationSuspendedMeasuringView:v30];

    v31 = FIUIImageInBundle(v21, v24->_resourceBundle);
    v32 = [(FIUIHeartRateStatusView *)v24 animationSuspendedMeasuringView];
    [v32 setImage:v31];

    v33 = [(FIUIHeartRateStatusView *)v24 animationSuspendedMeasuringView];
    [v33 setAlpha:0.0];

    v34 = [(FIUIHeartRateStatusView *)v24 animationSuspendedMeasuringView];
    [(FIUIHeartRateStatusView *)v24 addSubview:v34];

    v35 = [[FIUIAnimatingSpriteImageView alloc] initWithFrame:x, y, width, height];
    [(FIUIHeartRateStatusView *)v24 setAnimatingImageView:v35];

    v36 = [(FIUIHeartRateStatusView *)v24 animatingImageView];
    [v36 setContentMode:1];

    v37 = [(FIUIHeartRateStatusView *)v24 animatingImageView];
    [v37 setAlpha:0.0];

    v38 = [(FIUIHeartRateStatusView *)v24 animatingImageView];
    [(FIUIHeartRateStatusView *)v24 addSubview:v38];

    v39 = [MEMORY[0x1E696AD88] defaultCenter];
    [v39 addObserver:v24 selector:sel__resumeAnimations name:@"FIUIResumeAnimationsNotification" object:0];
    [v39 addObserver:v24 selector:sel__suspendAnimations name:@"FIUISuspendAnimationsNotification" object:0];
  }

  return v24;
}

- (void)setAnimationsSuspended:(BOOL)a3
{
  if (self->_animationsSuspended != a3)
  {
    self->_animationsSuspended = a3;
    if (a3)
    {
      [(FIUIHeartRateStatusView *)self _suspendAnimations];
    }

    else
    {
      [(FIUIHeartRateStatusView *)self _resumeAnimations];
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = [(FIUIHeartRateStatusView *)self fullHeartImageView:a3.width];
  v4 = [v3 image];
  [v4 size];
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
      v5 = [(FIUIHeartRateStatusView *)self fullHeartImageView];
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
      v5 = ;
    }

    v6 = v5;
    [v5 intrinsicContentSize];
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

- (void)setReloadHeartOutlineImage:(id)a3
{
  v4 = a3;
  v5 = [(FIUIHeartRateStatusView *)self reloadOutlineView];

  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    [(FIUIHeartRateStatusView *)self setReloadOutlineView:v6];

    v7 = [(FIUIHeartRateStatusView *)self reloadOutlineView];
    [(FIUIHeartRateStatusView *)self addSubview:v7];
  }

  v8 = [(FIUIHeartRateStatusView *)self reloadOutlineView];
  [v8 setImage:v4];

  v9 = [(FIUIHeartRateStatusView *)self reloadOutlineView];
  [v9 setAlpha:0.0];

  v10 = [(FIUIHeartRateStatusView *)self reloadOutlineView];
  [v10 sizeToFit];

  [(FIUIHeartRateStatusView *)self setNeedsLayout];
}

- (void)setReloadArrowImage:(id)a3
{
  v4 = a3;
  v5 = [(FIUIHeartRateStatusView *)self reloadArrowView];

  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    [(FIUIHeartRateStatusView *)self setReloadArrowView:v6];

    v7 = [(FIUIHeartRateStatusView *)self reloadArrowView];
    [(FIUIHeartRateStatusView *)self addSubview:v7];
  }

  v8 = [(FIUIHeartRateStatusView *)self reloadArrowView];
  [v8 setImage:v4];

  v9 = [(FIUIHeartRateStatusView *)self reloadArrowView];
  [v9 setAlpha:0.0];

  v10 = [(FIUIHeartRateStatusView *)self reloadArrowView];
  [v10 sizeToFit];

  [(FIUIHeartRateStatusView *)self setNeedsLayout];
}

- (void)setState:(unint64_t)a3
{
  state = self->_state;
  if (state != a3)
  {
    self->_state = a3;
    if (a3 > 3)
    {
      if (a3 == 4)
      {
        [(FIUIHeartRateStatusView *)self _startMeasuringAnimationAnimated:1];
        goto LABEL_18;
      }

      if (a3 != 5)
      {
        if (a3 != 6)
        {
LABEL_18:
          [(FIUIHeartRateStatusView *)self invalidateIntrinsicContentSize];
          return;
        }

LABEL_10:
        v5 = [(FIUIHeartRateStatusView *)self animatingImageView];
        [v5 setAlpha:0.0];

        v6 = [(FIUIHeartRateStatusView *)self animationSuspendedMeasuringView];
        [v6 setAlpha:0.0];

        v7 = [(FIUIHeartRateStatusView *)self fullHeartImageView];
        [v7 setAlpha:1.0];

        v8 = [(FIUIHeartRateStatusView *)self reloadOutlineView];
        [v8 setAlpha:0.0];

        v9 = [(FIUIHeartRateStatusView *)self reloadArrowView];
        [v9 setAlpha:0.0];

        [(FIUIHeartRateStatusView *)self _suspendAnimations];
        goto LABEL_18;
      }

      CGAffineTransformMakeRotation(&v20, 3.14159265);
      v15 = [(FIUIHeartRateStatusView *)self reloadArrowView];
      v19 = v20;
      [v15 setTransform:&v19];

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
      if (a3 != 1)
      {
        if (a3 == 2)
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

        if (a3 != 3)
        {
          goto LABEL_18;
        }

        goto LABEL_10;
      }

      [(FIUIHeartRateStatusView *)self _startMeasuringAnimationAnimated:0];
      if (state != 5)
      {
        v16 = [(FIUIHeartRateStatusView *)self reloadArrowView];
        [v16 setAlpha:0.0];

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
  v3 = [(FIUIHeartRateStatusView *)self window];
  if (v3)
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

- (void)_startMeasuringAnimationAnimated:(BOOL)a3
{
  if (self->_animationsSuspended)
  {
    v4 = [(FIUIHeartRateStatusView *)self animatingImageView];
    [v4 setAlpha:0.0];

    v5 = [(FIUIHeartRateStatusView *)self fullHeartImageView];
    [v5 setAlpha:0.0];

    v6 = [(FIUIHeartRateStatusView *)self reloadOutlineView];
    [v6 setAlpha:0.0];

    v7 = [(FIUIHeartRateStatusView *)self reloadArrowView];
    [v7 setAlpha:0.0];

    v15 = [(FIUIHeartRateStatusView *)self animationSuspendedMeasuringView];
    [v15 setAlpha:1.0];
  }

  else
  {
    v8 = a3;
    v9 = [(FIUIHeartRateStatusView *)self reloadOutlineView];
    [v9 setAlpha:0.0];

    v10 = [(FIUIHeartRateStatusView *)self reloadArrowView];
    [v10 setAlpha:0.0];

    v11 = [(FIUIHeartRateStatusView *)self _loadHeartMeasuringImage];
    v12 = [(FIUIHeartRateStatusView *)self animatingImageView];
    [v12 startAnimating];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __60__FIUIHeartRateStatusView__startMeasuringAnimationAnimated___block_invoke;
    aBlock[3] = &unk_1E878BFE0;
    aBlock[4] = self;
    v13 = _Block_copy(aBlock);
    v14 = v13;
    if (v8)
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
  v3 = *a1;
  v4 = *a2;
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  _os_log_error_impl(&dword_1E5D0F000, log, OS_LOG_TYPE_ERROR, "Error reading heart image named %@ in bundle %@", &v5, 0x16u);
}

@end