@interface CAMSnapshotView
- (CAMSnapshotView)initWithView:(id)view desiredAspectRatio:(int64_t)ratio;
- (double)_resumeFadeInDuration;
- (id)_basicAnimationForView:(id)view withKeyPath:(id)path;
- (id)activityItemsConfiguration;
- (void)_applyLowQualityBlurForStyle:(int64_t)style animated:(BOOL)animated withCompletionBlock:(id)block;
- (void)_applySnapshotBlurForStyle:(int64_t)style animated:(BOOL)animated withCompletionBlock:(id)block;
- (void)_applySnapshotDimAnimated:(BOOL)animated withCompletionBlock:(id)block;
- (void)_prepareForApplyingBlurForStyle:(int64_t)style applying:(BOOL)applying inputRadiusAmount:(double *)amount inputRadiusDuration:(double *)duration inputRadiusDelay:(double *)delay inputRadiusTimingFunction:(id *)function opacityAmount:(double *)opacityAmount opacityDuration:(double *)self0 opacityDelay:(double *)self1 opacityTimingFunction:(id *)self2;
- (void)_prepareForApplyingLowQualityBlurForStyle:(int64_t)style applying:(BOOL)applying opacityAmount:(double *)amount opacityDuration:(double *)duration opacityDelay:(double *)delay opacityTimingFunction:(id *)function targetView:(id *)view;
- (void)_removeAnimationOnView:(id)view forKey:(id)key;
- (void)_removeLowQualityBlurForStyle:(int64_t)style animated:(BOOL)animated withCompletionBlock:(id)block;
- (void)_removeSnapshotBlurForStyle:(int64_t)style animated:(BOOL)animated withCompletionBlock:(id)block;
- (void)_removeSnapshotDimAnimated:(BOOL)animated withCompletionBlock:(id)block;
- (void)_setupDimOnSnapshot;
- (void)_setupLowQualityBlurOnSnapshot;
- (void)prepareForResumingUsingCrossfade;
- (void)removeAllAnimationsOnLayer:(id)layer recursively:(BOOL)recursively shouldLog:(BOOL)log;
- (void)removeInflightBlurAnimations;
- (void)setBlurred:(BOOL)blurred animated:(BOOL)animated style:(int64_t)style withCompletionBlock:(id)block;
- (void)setDimmed:(BOOL)dimmed animated:(BOOL)animated withCompletionBlock:(id)block;
@end

@implementation CAMSnapshotView

- (void)removeInflightBlurAnimations
{
  _blurView = [(CAMSnapshotView *)self _blurView];
  layer = [_blurView layer];
  [(CAMSnapshotView *)self removeAllAnimationsOnLayer:layer recursively:1 shouldLog:1];

  _lowQualityBlurView = [(CAMSnapshotView *)self _lowQualityBlurView];
  [(CAMSnapshotView *)self _removeAnimationOnView:_lowQualityBlurView forKey:@"inputRadiusAnimation"];

  _dimmingView = [(CAMSnapshotView *)self _dimmingView];
  [(CAMSnapshotView *)self _removeAnimationOnView:_dimmingView forKey:@"opacityAnimation"];

  [(CAMSnapshotView *)self _removeAnimationOnView:self forKey:@"containerOpacityAnimation"];
}

- (void)prepareForResumingUsingCrossfade
{
  snapshotView = [(CAMSnapshotView *)self snapshotView];
  [snapshotView removeFromSuperview];

  snapshotView = self->_snapshotView;
  self->_snapshotView = 0;

  layer = [(CAMSnapshotView *)self layer];
  [layer setShouldRasterize:0];
}

- (CAMSnapshotView)initWithView:(id)view desiredAspectRatio:(int64_t)ratio
{
  viewCopy = view;
  superview = [viewCopy superview];
  [superview bounds];
  v36.receiver = self;
  v36.super_class = CAMSnapshotView;
  v8 = [(CAMSnapshotView *)&v36 initWithFrame:?];
  v9 = v8;
  if (v8)
  {
    v8->_desiredAspectRatio = ratio;
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    v9->__supportsBlur = [currentDevice _graphicsQuality] == 100;

    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [(CAMSnapshotView *)v9 setBackgroundColor:blackColor];

    [(CAMSnapshotView *)v9 setOpaque:1];
    [(CAMSnapshotView *)v9 setAutoresizingMask:18];
    [viewCopy center];
    v13 = v12;
    v15 = v14;
    [viewCopy bounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    if (viewCopy)
    {
      [viewCopy transform];
    }

    layer = [(CAMSnapshotView *)v9 layer];
    [layer setAllowsGroupOpacity:0];

    layer2 = [(CAMSnapshotView *)v9 layer];
    [layer2 setShouldRasterize:1];

    layer3 = [(CAMSnapshotView *)v9 layer];
    [layer3 setPreloadsCache:1];

    v27 = [viewCopy snapshotViewAfterScreenUpdates:0];
    snapshotView = v9->_snapshotView;
    v9->_snapshotView = v27;

    [(UIView *)v9->_snapshotView setClipsToBounds:1];
    [(UIView *)v9->_snapshotView setCenter:v13, v15];
    [(UIView *)v9->_snapshotView setBounds:v17, v19, v21, v23];
    v29 = v9->_snapshotView;
    v32[0] = v33;
    v32[1] = v34;
    v32[2] = v35;
    [(UIView *)v29 setTransform:v32];
    [(CAMSnapshotView *)v9 addSubview:v9->_snapshotView];
    v30 = v9;
  }

  return v9;
}

- (void)setBlurred:(BOOL)blurred animated:(BOOL)animated style:(int64_t)style withCompletionBlock:(id)block
{
  animatedCopy = animated;
  blurredCopy = blurred;
  blockCopy = block;
  if (style == 2 || self->_blurred != blurredCopy)
  {
    v11 = blockCopy;
    self->_blurred = blurredCopy;
    [(CAMSnapshotView *)self _setBlurStyleForEffectAnimationFactory:style];
    if (self->__supportsBlur)
    {
      if (blurredCopy)
      {
        [(CAMSnapshotView *)self _applySnapshotBlurForStyle:style animated:animatedCopy withCompletionBlock:v11];
      }

      else
      {
        [(CAMSnapshotView *)self _removeSnapshotBlurForStyle:style animated:animatedCopy withCompletionBlock:v11];
      }
    }

    else if (blurredCopy)
    {
      [(CAMSnapshotView *)self _applyLowQualityBlurForStyle:style animated:animatedCopy withCompletionBlock:v11];
    }

    else
    {
      [(CAMSnapshotView *)self _removeLowQualityBlurForStyle:style animated:animatedCopy withCompletionBlock:v11];
    }
  }

  else
  {
    if (!blockCopy)
    {
      goto LABEL_13;
    }

    v11 = blockCopy;
    (*(blockCopy + 2))(blockCopy, 1);
  }

  blockCopy = v11;
LABEL_13:
}

- (void)setDimmed:(BOOL)dimmed animated:(BOOL)animated withCompletionBlock:(id)block
{
  animatedCopy = animated;
  dimmedCopy = dimmed;
  blockCopy = block;
  v9 = blockCopy;
  if (self->_dimmed != dimmedCopy)
  {
    self->_dimmed = dimmedCopy;
    v10 = blockCopy;
    if (dimmedCopy)
    {
      blockCopy = [(CAMSnapshotView *)self _applySnapshotDimAnimated:animatedCopy withCompletionBlock:blockCopy];
    }

    else
    {
      blockCopy = [(CAMSnapshotView *)self _removeSnapshotDimAnimated:animatedCopy withCompletionBlock:blockCopy];
    }

    v9 = v10;
  }

  MEMORY[0x1EEE66BB8](blockCopy, v9);
}

- (void)_prepareForApplyingBlurForStyle:(int64_t)style applying:(BOOL)applying inputRadiusAmount:(double *)amount inputRadiusDuration:(double *)duration inputRadiusDelay:(double *)delay inputRadiusTimingFunction:(id *)function opacityAmount:(double *)opacityAmount opacityDuration:(double *)self0 opacityDelay:(double *)self1 opacityTimingFunction:(id *)self2
{
  applyingCopy = applying;
  v20 = 1.0;
  if (!applying)
  {
    UIAnimationDragCoefficient();
    v20 = v21;
  }

  if (style != 2)
  {
    if (style == 1)
    {
      v28 = 50.0;
      if (!applyingCopy)
      {
        v28 = 0.0;
      }

      *amount = v28;
      v29 = 0.3801;
      if (applyingCopy)
      {
        v29 = 0.5;
      }

      *duration = v29 * v20;
      if (applyingCopy)
      {
        v30 = 1.0;
      }

      else
      {
        v30 = 0.0;
      }

      layer = [(UIView *)self->_snapshotView layer];
      [layer convertTime:0 fromLayer:CACurrentMediaTime()];
      *delay = v32 + v20 * 0.0667;

      LODWORD(v33) = 1036831949;
      LODWORD(v34) = 0.25;
      LODWORD(v35) = 0.25;
      LODWORD(v36) = 1.0;
      *function = [MEMORY[0x1E69793D0] functionWithControlPoints:v34 :v33 :v35 :v36];
      *opacityAmount = v30;
      *opacityDuration = v20 * 0.2862;
      layer2 = [(CAMSnapshotView *)self layer];
      [layer2 convertTime:0 fromLayer:CACurrentMediaTime()];
      *opacityDelay = v38 + v20 * 0.0939;

      goto LABEL_25;
    }

    if (style)
    {
      return;
    }
  }

  v22 = 25.0;
  if (!applyingCopy)
  {
    v22 = 0.0;
  }

  *amount = v22;
  v23 = 0.3331;
  HIDWORD(v24) = 1071359459;
  if (applyingCopy)
  {
    v23 = 0.432;
  }

  *duration = v23 * v20;
  *delay = 0.0;
  v25 = 1.0;
  if (applyingCopy)
  {
    v26 = 1.0;
  }

  else
  {
    v26 = 0.0;
  }

  LODWORD(v25) = 991345561;
  LODWORD(v24) = 1057634019;
  LODWORD(v12) = 1064732459;
  *function = [MEMORY[0x1E69793D0] functionWithControlPoints:COERCE_DOUBLE(1044401829) :v25 :v24 :v12];
  *opacityAmount = v26;
  v27 = 0.3;
  if (style == 2 && !applyingCopy)
  {
    [(CAMSnapshotView *)self _resumeFadeInDuration];
  }

  *opacityDuration = v20 * v27;
  *opacityDelay = 0.0;
LABEL_25:
  *timingFunction = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
}

- (double)_resumeFadeInDuration
{
  Current = CFAbsoluteTimeGetCurrent();
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668] _launchTime];
  v5 = Current - v4;

  if (v5 > 0.517)
  {
    return 0.267;
  }

  if (v5 >= 0.083)
  {
    return (v5 + -0.083) * 0.193548387 + 0.183;
  }

  return 0.183;
}

- (void)_applySnapshotBlurForStyle:(int64_t)style animated:(BOOL)animated withCompletionBlock:(id)block
{
  animatedCopy = animated;
  blockCopy = block;
  [(CAMSnapshotView *)self setAlpha:1.0];
  v9 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:0];
  [v9 setClipsToBounds:1];
  [(UIView *)self->_snapshotView center];
  [v9 setCenter:?];
  [(UIView *)self->_snapshotView bounds];
  [v9 setBounds:?];
  snapshotView = self->_snapshotView;
  if (snapshotView)
  {
    [(UIView *)snapshotView transform];
  }

  else
  {
    memset(v31, 0, sizeof(v31));
  }

  [v9 setTransform:v31];
  [(CAMSnapshotView *)self insertSubview:v9 aboveSubview:self->_snapshotView];
  [(CAMSnapshotView *)self _setBlurView:v9];
  *&v31[0] = 0;
  v29 = 0.0;
  v30 = 0;
  v27 = 0;
  v28 = 0.0;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  [(CAMSnapshotView *)self _prepareForApplyingBlurForStyle:style applying:1 inputRadiusAmount:v31 inputRadiusDuration:&v29 inputRadiusDelay:&v28 inputRadiusTimingFunction:&v25 opacityAmount:&v30 opacityDuration:&v27 opacityDelay:&v26 opacityTimingFunction:&v24];
  v11 = v25;
  v12 = v24;
  v13 = [MEMORY[0x1E69DC730] effectWithBlurRadius:25.0];
  if (animatedCopy)
  {
    v14 = MEMORY[0x1E69DD250];
    v16 = v28;
    v15 = v29;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __75__CAMSnapshotView__applySnapshotBlurForStyle_animated_withCompletionBlock___block_invoke;
    v21[3] = &unk_1E76F7960;
    v22 = v9;
    v23 = v13;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __75__CAMSnapshotView__applySnapshotBlurForStyle_animated_withCompletionBlock___block_invoke_2;
    v19[3] = &unk_1E76F97A0;
    v20 = blockCopy;
    [v14 _animateWithDuration:393216 delay:self options:v21 factory:v19 animations:v15 completion:v16];
  }

  else
  {
    [v9 setEffect:v13];
  }

  layer = [(CAMSnapshotView *)self layer];
  LODWORD(v18) = 1.0;
  [layer setOpacity:v18];

  if (blockCopy && (!animatedCopy || !self->__blurView))
  {
    (*(blockCopy + 2))(blockCopy, 1);
  }
}

uint64_t __75__CAMSnapshotView__applySnapshotBlurForStyle_animated_withCompletionBlock___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_removeSnapshotBlurForStyle:(int64_t)style animated:(BOOL)animated withCompletionBlock:(id)block
{
  animatedCopy = animated;
  blockCopy = block;
  v29 = 0.0;
  v30 = 0;
  v27 = 0;
  v28 = 0;
  v25 = 0.0;
  v26 = 0.0;
  v23 = 0;
  v24 = 0;
  [(CAMSnapshotView *)self _prepareForApplyingBlurForStyle:style applying:0 inputRadiusAmount:&v30 inputRadiusDuration:&v28 inputRadiusDelay:&v27 inputRadiusTimingFunction:&v24 opacityAmount:&v29 opacityDuration:&v26 opacityDelay:&v25 opacityTimingFunction:&v23];
  v9 = v24;
  v10 = v23;
  if (animatedCopy)
  {
    v11 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    layer = [(CAMSnapshotView *)self layer];
    v13 = [layer valueForKeyPath:@"opacity"];
    [v11 setFromValue:v13];

    v14 = [MEMORY[0x1E696AD98] numberWithDouble:v29];
    [v11 setToValue:v14];

    [v11 setDuration:v26];
    [v11 setBeginTime:v25];
    [v11 setTimingFunction:v10];
    [v11 setFillMode:*MEMORY[0x1E69797E0]];
    v15 = objc_alloc_init(CAMAnimationDelegate);
    _blurView = [(CAMSnapshotView *)self _blurView];
    objc_initWeak(&location, _blurView);

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __76__CAMSnapshotView__removeSnapshotBlurForStyle_animated_withCompletionBlock___block_invoke;
    v19[3] = &unk_1E76FBAE0;
    objc_copyWeak(&v21, &location);
    v20 = blockCopy;
    [(CAMAnimationDelegate *)v15 setCompletion:v19];
    [v11 setDelegate:v15];
    layer2 = [(CAMSnapshotView *)self layer];
    [layer2 addAnimation:v11 forKey:@"containerOpacityAnimation"];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  layer3 = [(CAMSnapshotView *)self layer];
  [layer3 setOpacity:0.0];

  if (blockCopy && !animatedCopy)
  {
    (*(blockCopy + 2))(blockCopy, 1);
  }
}

uint64_t __76__CAMSnapshotView__removeSnapshotBlurForStyle_animated_withCompletionBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained removeFromSuperview];

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)_setupLowQualityBlurOnSnapshot
{
  if (!self->__lowQualityBlurView)
  {
    v3 = objc_alloc(MEMORY[0x1E69DD250]);
    [(CAMSnapshotView *)self bounds];
    v4 = [v3 initWithFrame:?];
    lowQualityBlurView = self->__lowQualityBlurView;
    self->__lowQualityBlurView = v4;

    v6 = self->__lowQualityBlurView;
    v7 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.6];
    [(UIView *)v6 setBackgroundColor:v7];

    [(UIView *)self->__lowQualityBlurView setAlpha:0.0];
    v8 = self->__lowQualityBlurView;
    snapshotView = self->_snapshotView;

    [(CAMSnapshotView *)self insertSubview:v8 aboveSubview:snapshotView];
  }
}

- (void)_prepareForApplyingLowQualityBlurForStyle:(int64_t)style applying:(BOOL)applying opacityAmount:(double *)amount opacityDuration:(double *)duration opacityDelay:(double *)delay opacityTimingFunction:(id *)function targetView:(id *)view
{
  if (style != 2)
  {
    if (style == 1)
    {
      v20 = 0.0;
      if (applying)
      {
        v20 = 1.0;
      }

      *amount = v20;
      if (applying)
      {
        v21 = 0.03335;
      }

      else
      {
        v21 = 0.04695;
      }

      UIAnimationDragCoefficient();
      *duration = v22 * 0.25;
      layer = [(UIView *)self->_snapshotView layer];
      [layer convertTime:0 fromLayer:CACurrentMediaTime()];
      v25 = v24;
      UIAnimationDragCoefficient();
      *delay = v25 + v21 * v26;

      LODWORD(v27) = 1036831949;
      LODWORD(v28) = 0.25;
      LODWORD(v29) = 0.25;
      LODWORD(v30) = 1.0;
      *function = [MEMORY[0x1E69793D0] functionWithControlPoints:v28 :v27 :v29 :v30];
      goto LABEL_16;
    }

    if (style)
    {
      return;
    }
  }

  v14 = 0.0;
  if (applying)
  {
    v14 = 1.0;
  }

  *amount = v14;
  UIAnimationDragCoefficient();
  HIDWORD(v18) = 1070638039;
  v19 = v17 * 0.26;
  *duration = v19;
  *delay = 0.0;
  if (applying)
  {
    LODWORD(v19) = 1048747128;
    LODWORD(v18) = 1012482169;
    LODWORD(v15) = 1061330040;
    LODWORD(v16) = 1046863382;
  }

  else
  {
    LODWORD(v18) = 1036831949;
    LODWORD(v19) = 0.25;
    LODWORD(v15) = 0.25;
    LODWORD(v16) = 1.0;
  }

  v31 = [MEMORY[0x1E69793D0] functionWithControlPoints:v19 :v18 :v15 :v16];
  *function = v31;

LABEL_16:
  *view = [(CAMSnapshotView *)self _lowQualityBlurView];
}

- (void)_applyLowQualityBlurForStyle:(int64_t)style animated:(BOOL)animated withCompletionBlock:(id)block
{
  animatedCopy = animated;
  blockCopy = block;
  [(CAMSnapshotView *)self _setupLowQualityBlurOnSnapshot];
  v21 = 0.0;
  v22 = 0.0;
  v19 = 0;
  v20 = 0.0;
  v18 = 0;
  [(CAMSnapshotView *)self _prepareForApplyingLowQualityBlurForStyle:style applying:1 opacityAmount:&v22 opacityDuration:&v21 opacityDelay:&v20 opacityTimingFunction:&v19 targetView:&v18];
  v9 = v19;
  v10 = v18;
  layer = [v10 layer];
  if (animatedCopy)
  {
    v12 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    v13 = [layer valueForKeyPath:@"opacity"];
    [v12 setFromValue:v13];

    [v12 setBeginTime:v20];
    [v12 setDuration:v21];
    [v12 setTimingFunction:v9];
    [v12 setFillMode:*MEMORY[0x1E69797E0]];
    if (blockCopy)
    {
      v14 = objc_alloc_init(CAMAnimationDelegate);
      [(CAMAnimationDelegate *)v14 setCompletion:blockCopy];
      [v12 setDelegate:v14];
    }

    [layer addAnimation:v12 forKey:@"inputRadiusAnimation"];
  }

  HIDWORD(v15) = HIDWORD(v22);
  *&v15 = v22;
  [layer setOpacity:v15];
  layer2 = [(CAMSnapshotView *)self layer];
  LODWORD(v17) = 1.0;
  [layer2 setOpacity:v17];

  if (blockCopy && !animatedCopy)
  {
    blockCopy[2](blockCopy, 1);
  }
}

- (void)_removeLowQualityBlurForStyle:(int64_t)style animated:(BOOL)animated withCompletionBlock:(id)block
{
  animatedCopy = animated;
  blockCopy = block;
  v23 = 0;
  v21 = 0.0;
  v22 = 0.0;
  v19 = 0;
  v20 = 0;
  [(CAMSnapshotView *)self _prepareForApplyingLowQualityBlurForStyle:style applying:0 opacityAmount:&v23 opacityDuration:&v22 opacityDelay:&v21 opacityTimingFunction:&v20 targetView:&v19];
  v9 = v20;
  v10 = v19;
  if (animatedCopy)
  {
    v11 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    layer = [(CAMSnapshotView *)self layer];
    v13 = [layer valueForKeyPath:@"opacity"];
    [v11 setFromValue:v13];

    [v11 setDuration:v22];
    [v11 setBeginTime:v21];
    [v11 setTimingFunction:v9];
    [v11 setFillMode:*MEMORY[0x1E69797E0]];
    v14 = objc_alloc_init(CAMAnimationDelegate);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __78__CAMSnapshotView__removeLowQualityBlurForStyle_animated_withCompletionBlock___block_invoke;
    v17[3] = &unk_1E76F97A0;
    v18 = blockCopy;
    [(CAMAnimationDelegate *)v14 setCompletion:v17];
    [v11 setDelegate:v14];
    layer2 = [(CAMSnapshotView *)self layer];
    [layer2 addAnimation:v11 forKey:@"containerOpacityAnimation"];
  }

  layer3 = [(CAMSnapshotView *)self layer];
  [layer3 setOpacity:0.0];

  if (blockCopy && !animatedCopy)
  {
    (*(blockCopy + 2))(blockCopy, 1);
  }
}

uint64_t __78__CAMSnapshotView__removeLowQualityBlurForStyle_animated_withCompletionBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_setupDimOnSnapshot
{
  if (!self->__dimmingView)
  {
    v3 = objc_alloc(MEMORY[0x1E69DD250]);
    [(CAMSnapshotView *)self bounds];
    v4 = [v3 initWithFrame:?];
    dimmingView = self->__dimmingView;
    self->__dimmingView = v4;

    v6 = self->__dimmingView;
    v7 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.4];
    [(UIView *)v6 setBackgroundColor:v7];

    _blurView = [(CAMSnapshotView *)self _blurView];
    snapshotView = _blurView;
    if (!_blurView)
    {
      snapshotView = self->_snapshotView;
    }

    v10 = snapshotView;

    [(CAMSnapshotView *)self insertSubview:self->__dimmingView aboveSubview:v10];
  }
}

- (void)_applySnapshotDimAnimated:(BOOL)animated withCompletionBlock:(id)block
{
  animatedCopy = animated;
  blockCopy = block;
  [(CAMSnapshotView *)self _setupDimOnSnapshot];
  _dimmingView = [(CAMSnapshotView *)self _dimmingView];
  layer = [_dimmingView layer];

  if (animatedCopy)
  {
    v9 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    [v9 setFromValue:&unk_1F16C8BE8];
    [v9 setToValue:&unk_1F16C8BF8];
    [v9 setDuration:0.25];
    v10 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
    [v9 setTimingFunction:v10];

    [v9 setRemovedOnCompletion:0];
    v11 = objc_alloc_init(CAMAnimationDelegate);
    [(CAMAnimationDelegate *)v11 setCompletion:blockCopy];
    [v9 setDelegate:v11];
    [layer addAnimation:v9 forKey:@"opacityAnimation"];

    LODWORD(v12) = 1.0;
    [layer setOpacity:v12];
  }

  else
  {
    LODWORD(v8) = 1.0;
    [layer setOpacity:v8];
    if (blockCopy)
    {
      blockCopy[2](blockCopy, 1);
    }
  }
}

- (void)_removeSnapshotDimAnimated:(BOOL)animated withCompletionBlock:(id)block
{
  animatedCopy = animated;
  blockCopy = block;
  _dimmingView = [(CAMSnapshotView *)self _dimmingView];
  layer = [_dimmingView layer];

  [layer removeAllAnimations];
  v9 = self->__dimmingView;
  dimmingView = self->__dimmingView;
  self->__dimmingView = 0;

  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __66__CAMSnapshotView__removeSnapshotDimAnimated_withCompletionBlock___block_invoke;
  v20 = &unk_1E76F77D8;
  v21 = v9;
  v11 = blockCopy;
  v22 = v11;
  v12 = v9;
  v13 = _Block_copy(&v17);
  if (animatedCopy)
  {
    v14 = [MEMORY[0x1E6979318] animationWithKeyPath:{@"opacity", v17, v18, v19, v20, v21, v22}];
    [v14 setFromValue:&unk_1F16C8BE8];
    [v14 setToValue:&unk_1F16C8C08];
    [v14 setDuration:0.25];
    v15 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
    [v14 setTimingFunction:v15];

    [v14 setRemovedOnCompletion:0];
    v16 = objc_alloc_init(CAMAnimationDelegate);
    [(CAMAnimationDelegate *)v16 setCompletion:v13];
    [v14 setDelegate:v16];
    [layer addAnimation:v14 forKey:@"opacityAnimation"];

    [layer setOpacity:0.0];
  }

  else
  {
    [layer setOpacity:{0.0, v17, v18, v19, v20, v21, v22}];
    if (v13)
    {
      v13[2](v13, 1);
    }
  }
}

uint64_t __66__CAMSnapshotView__removeSnapshotDimAnimated_withCompletionBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_removeAnimationOnView:(id)view forKey:(id)key
{
  v14 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  keyCopy = key;
  layer = [viewCopy layer];
  v8 = [layer animationForKey:keyCopy];

  if (v8)
  {
    v9 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543618;
      v11 = keyCopy;
      v12 = 2114;
      v13 = viewCopy;
      _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "Removing animation for key %{public}@ from view %{public}@", &v10, 0x16u);
    }

    [layer removeAnimationForKey:keyCopy];
  }
}

- (void)removeAllAnimationsOnLayer:(id)layer recursively:(BOOL)recursively shouldLog:(BOOL)log
{
  logCopy = log;
  recursivelyCopy = recursively;
  v28 = *MEMORY[0x1E69E9840];
  layerCopy = layer;
  v9 = layerCopy;
  if (logCopy)
  {
    animationKeys = [layerCopy animationKeys];
    if ([animationKeys count])
    {
      v11 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v23 = animationKeys;
        v24 = 2114;
        v25 = v9;
        v26 = 2114;
        selfCopy = self;
        _os_log_impl(&dword_1A3640000, v11, OS_LOG_TYPE_DEFAULT, "Removing animation keys %{public}@ from layer %{public}@ on behalf of view %{public}@", buf, 0x20u);
      }
    }
  }

  [v9 removeAllAnimations];
  if (recursivelyCopy)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    sublayers = [v9 sublayers];
    v13 = [sublayers countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v18;
      do
      {
        v16 = 0;
        do
        {
          if (*v18 != v15)
          {
            objc_enumerationMutation(sublayers);
          }

          [(CAMSnapshotView *)self removeAllAnimationsOnLayer:*(*(&v17 + 1) + 8 * v16++) recursively:1 shouldLog:logCopy];
        }

        while (v14 != v16);
        v14 = [sublayers countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v14);
    }
  }
}

- (id)_basicAnimationForView:(id)view withKeyPath:(id)path
{
  if ([path isEqualToString:@"filters.gaussianBlur.inputRadius"])
  {
    v16 = 0;
    v17 = 0.0;
    v15 = 0.0;
    v13 = 0;
    v14 = 0.0;
    v12 = 0;
    v10 = 0;
    v11 = 0;
    [(CAMSnapshotView *)self _prepareForApplyingBlurForStyle:[(CAMSnapshotView *)self _blurStyleForEffectAnimationFactory] applying:1 inputRadiusAmount:&v17 inputRadiusDuration:&v15 inputRadiusDelay:&v14 inputRadiusTimingFunction:&v11 opacityAmount:&v16 opacityDuration:&v13 opacityDelay:&v12 opacityTimingFunction:&v10];
    v5 = v11;
    v6 = v10;
    v7 = [MEMORY[0x1E6979318] animationWithKeyPath:@"filters.gaussianBlur.inputRadius"];
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:v17];
    [v7 setToValue:v8];

    [v7 setBeginTime:v14];
    [v7 setDuration:v15];
    [v7 setTimingFunction:v5];

    [v7 setFillMode:*MEMORY[0x1E69797E0]];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)activityItemsConfiguration
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  v4 = objc_opt_class();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__CAMSnapshotView_activityItemsConfiguration__block_invoke;
  v9[3] = &unk_1E76FBB30;
  v9[4] = self;
  [v3 registerObjectOfClass:v4 visibility:0 loadHandler:v9];
  v5 = MEMORY[0x1E69DC640];
  v10[0] = v3;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v7 = [v5 activityItemsConfigurationWithItemProviders:v6];

  return v7;
}

uint64_t __45__CAMSnapshotView_activityItemsConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__CAMSnapshotView_activityItemsConfiguration__block_invoke_2;
  v6[3] = &unk_1E76F7E40;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);

  return 0;
}

void __45__CAMSnapshotView_activityItemsConfiguration__block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 416);
  v3 = MEMORY[0x1E69DCA80];
  v4 = [v2 traitCollection];
  v5 = [v3 formatForTraitCollection:v4];

  [v5 setOpaque:1];
  v6 = objc_alloc(MEMORY[0x1E69DCA78]);
  [v2 bounds];
  v9 = [v6 initWithSize:v5 format:{v7, v8}];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __45__CAMSnapshotView_activityItemsConfiguration__block_invoke_3;
  v12[3] = &unk_1E76FBB08;
  v13 = v2;
  v10 = v2;
  v11 = [v9 imageWithActions:v12];
  (*(*(a1 + 40) + 16))();
}

uint64_t __45__CAMSnapshotView_activityItemsConfiguration__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 bounds];

  return [v1 drawViewHierarchyInRect:0 afterScreenUpdates:?];
}

@end