@interface CAMSnapshotView
- (CAMSnapshotView)initWithView:(id)a3 desiredAspectRatio:(int64_t)a4;
- (double)_resumeFadeInDuration;
- (id)_basicAnimationForView:(id)a3 withKeyPath:(id)a4;
- (id)activityItemsConfiguration;
- (void)_applyLowQualityBlurForStyle:(int64_t)a3 animated:(BOOL)a4 withCompletionBlock:(id)a5;
- (void)_applySnapshotBlurForStyle:(int64_t)a3 animated:(BOOL)a4 withCompletionBlock:(id)a5;
- (void)_applySnapshotDimAnimated:(BOOL)a3 withCompletionBlock:(id)a4;
- (void)_prepareForApplyingBlurForStyle:(int64_t)a3 applying:(BOOL)a4 inputRadiusAmount:(double *)a5 inputRadiusDuration:(double *)a6 inputRadiusDelay:(double *)a7 inputRadiusTimingFunction:(id *)a8 opacityAmount:(double *)a9 opacityDuration:(double *)a10 opacityDelay:(double *)a11 opacityTimingFunction:(id *)a12;
- (void)_prepareForApplyingLowQualityBlurForStyle:(int64_t)a3 applying:(BOOL)a4 opacityAmount:(double *)a5 opacityDuration:(double *)a6 opacityDelay:(double *)a7 opacityTimingFunction:(id *)a8 targetView:(id *)a9;
- (void)_removeAnimationOnView:(id)a3 forKey:(id)a4;
- (void)_removeLowQualityBlurForStyle:(int64_t)a3 animated:(BOOL)a4 withCompletionBlock:(id)a5;
- (void)_removeSnapshotBlurForStyle:(int64_t)a3 animated:(BOOL)a4 withCompletionBlock:(id)a5;
- (void)_removeSnapshotDimAnimated:(BOOL)a3 withCompletionBlock:(id)a4;
- (void)_setupDimOnSnapshot;
- (void)_setupLowQualityBlurOnSnapshot;
- (void)prepareForResumingUsingCrossfade;
- (void)removeAllAnimationsOnLayer:(id)a3 recursively:(BOOL)a4 shouldLog:(BOOL)a5;
- (void)removeInflightBlurAnimations;
- (void)setBlurred:(BOOL)a3 animated:(BOOL)a4 style:(int64_t)a5 withCompletionBlock:(id)a6;
- (void)setDimmed:(BOOL)a3 animated:(BOOL)a4 withCompletionBlock:(id)a5;
@end

@implementation CAMSnapshotView

- (void)removeInflightBlurAnimations
{
  v3 = [(CAMSnapshotView *)self _blurView];
  v4 = [v3 layer];
  [(CAMSnapshotView *)self removeAllAnimationsOnLayer:v4 recursively:1 shouldLog:1];

  v5 = [(CAMSnapshotView *)self _lowQualityBlurView];
  [(CAMSnapshotView *)self _removeAnimationOnView:v5 forKey:@"inputRadiusAnimation"];

  v6 = [(CAMSnapshotView *)self _dimmingView];
  [(CAMSnapshotView *)self _removeAnimationOnView:v6 forKey:@"opacityAnimation"];

  [(CAMSnapshotView *)self _removeAnimationOnView:self forKey:@"containerOpacityAnimation"];
}

- (void)prepareForResumingUsingCrossfade
{
  v3 = [(CAMSnapshotView *)self snapshotView];
  [v3 removeFromSuperview];

  snapshotView = self->_snapshotView;
  self->_snapshotView = 0;

  v5 = [(CAMSnapshotView *)self layer];
  [v5 setShouldRasterize:0];
}

- (CAMSnapshotView)initWithView:(id)a3 desiredAspectRatio:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 superview];
  [v7 bounds];
  v36.receiver = self;
  v36.super_class = CAMSnapshotView;
  v8 = [(CAMSnapshotView *)&v36 initWithFrame:?];
  v9 = v8;
  if (v8)
  {
    v8->_desiredAspectRatio = a4;
    v10 = [MEMORY[0x1E69DC938] currentDevice];
    v9->__supportsBlur = [v10 _graphicsQuality] == 100;

    v11 = [MEMORY[0x1E69DC888] blackColor];
    [(CAMSnapshotView *)v9 setBackgroundColor:v11];

    [(CAMSnapshotView *)v9 setOpaque:1];
    [(CAMSnapshotView *)v9 setAutoresizingMask:18];
    [v6 center];
    v13 = v12;
    v15 = v14;
    [v6 bounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    if (v6)
    {
      [v6 transform];
    }

    v24 = [(CAMSnapshotView *)v9 layer];
    [v24 setAllowsGroupOpacity:0];

    v25 = [(CAMSnapshotView *)v9 layer];
    [v25 setShouldRasterize:1];

    v26 = [(CAMSnapshotView *)v9 layer];
    [v26 setPreloadsCache:1];

    v27 = [v6 snapshotViewAfterScreenUpdates:0];
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

- (void)setBlurred:(BOOL)a3 animated:(BOOL)a4 style:(int64_t)a5 withCompletionBlock:(id)a6
{
  v7 = a4;
  v8 = a3;
  v10 = a6;
  if (a5 == 2 || self->_blurred != v8)
  {
    v11 = v10;
    self->_blurred = v8;
    [(CAMSnapshotView *)self _setBlurStyleForEffectAnimationFactory:a5];
    if (self->__supportsBlur)
    {
      if (v8)
      {
        [(CAMSnapshotView *)self _applySnapshotBlurForStyle:a5 animated:v7 withCompletionBlock:v11];
      }

      else
      {
        [(CAMSnapshotView *)self _removeSnapshotBlurForStyle:a5 animated:v7 withCompletionBlock:v11];
      }
    }

    else if (v8)
    {
      [(CAMSnapshotView *)self _applyLowQualityBlurForStyle:a5 animated:v7 withCompletionBlock:v11];
    }

    else
    {
      [(CAMSnapshotView *)self _removeLowQualityBlurForStyle:a5 animated:v7 withCompletionBlock:v11];
    }
  }

  else
  {
    if (!v10)
    {
      goto LABEL_13;
    }

    v11 = v10;
    (*(v10 + 2))(v10, 1);
  }

  v10 = v11;
LABEL_13:
}

- (void)setDimmed:(BOOL)a3 animated:(BOOL)a4 withCompletionBlock:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v9 = v8;
  if (self->_dimmed != v6)
  {
    self->_dimmed = v6;
    v10 = v8;
    if (v6)
    {
      v8 = [(CAMSnapshotView *)self _applySnapshotDimAnimated:v5 withCompletionBlock:v8];
    }

    else
    {
      v8 = [(CAMSnapshotView *)self _removeSnapshotDimAnimated:v5 withCompletionBlock:v8];
    }

    v9 = v10;
  }

  MEMORY[0x1EEE66BB8](v8, v9);
}

- (void)_prepareForApplyingBlurForStyle:(int64_t)a3 applying:(BOOL)a4 inputRadiusAmount:(double *)a5 inputRadiusDuration:(double *)a6 inputRadiusDelay:(double *)a7 inputRadiusTimingFunction:(id *)a8 opacityAmount:(double *)a9 opacityDuration:(double *)a10 opacityDelay:(double *)a11 opacityTimingFunction:(id *)a12
{
  v17 = a4;
  v20 = 1.0;
  if (!a4)
  {
    UIAnimationDragCoefficient();
    v20 = v21;
  }

  if (a3 != 2)
  {
    if (a3 == 1)
    {
      v28 = 50.0;
      if (!v17)
      {
        v28 = 0.0;
      }

      *a5 = v28;
      v29 = 0.3801;
      if (v17)
      {
        v29 = 0.5;
      }

      *a6 = v29 * v20;
      if (v17)
      {
        v30 = 1.0;
      }

      else
      {
        v30 = 0.0;
      }

      v31 = [(UIView *)self->_snapshotView layer];
      [v31 convertTime:0 fromLayer:CACurrentMediaTime()];
      *a7 = v32 + v20 * 0.0667;

      LODWORD(v33) = 1036831949;
      LODWORD(v34) = 0.25;
      LODWORD(v35) = 0.25;
      LODWORD(v36) = 1.0;
      *a8 = [MEMORY[0x1E69793D0] functionWithControlPoints:v34 :v33 :v35 :v36];
      *a9 = v30;
      *a10 = v20 * 0.2862;
      v37 = [(CAMSnapshotView *)self layer];
      [v37 convertTime:0 fromLayer:CACurrentMediaTime()];
      *a11 = v38 + v20 * 0.0939;

      goto LABEL_25;
    }

    if (a3)
    {
      return;
    }
  }

  v22 = 25.0;
  if (!v17)
  {
    v22 = 0.0;
  }

  *a5 = v22;
  v23 = 0.3331;
  HIDWORD(v24) = 1071359459;
  if (v17)
  {
    v23 = 0.432;
  }

  *a6 = v23 * v20;
  *a7 = 0.0;
  v25 = 1.0;
  if (v17)
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
  *a8 = [MEMORY[0x1E69793D0] functionWithControlPoints:COERCE_DOUBLE(1044401829) :v25 :v24 :v12];
  *a9 = v26;
  v27 = 0.3;
  if (a3 == 2 && !v17)
  {
    [(CAMSnapshotView *)self _resumeFadeInDuration];
  }

  *a10 = v20 * v27;
  *a11 = 0.0;
LABEL_25:
  *a12 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
}

- (double)_resumeFadeInDuration
{
  Current = CFAbsoluteTimeGetCurrent();
  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  [v3 _launchTime];
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

- (void)_applySnapshotBlurForStyle:(int64_t)a3 animated:(BOOL)a4 withCompletionBlock:(id)a5
{
  v5 = a4;
  v8 = a5;
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
  [(CAMSnapshotView *)self _prepareForApplyingBlurForStyle:a3 applying:1 inputRadiusAmount:v31 inputRadiusDuration:&v29 inputRadiusDelay:&v28 inputRadiusTimingFunction:&v25 opacityAmount:&v30 opacityDuration:&v27 opacityDelay:&v26 opacityTimingFunction:&v24];
  v11 = v25;
  v12 = v24;
  v13 = [MEMORY[0x1E69DC730] effectWithBlurRadius:25.0];
  if (v5)
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
    v20 = v8;
    [v14 _animateWithDuration:393216 delay:self options:v21 factory:v19 animations:v15 completion:v16];
  }

  else
  {
    [v9 setEffect:v13];
  }

  v17 = [(CAMSnapshotView *)self layer];
  LODWORD(v18) = 1.0;
  [v17 setOpacity:v18];

  if (v8 && (!v5 || !self->__blurView))
  {
    (*(v8 + 2))(v8, 1);
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

- (void)_removeSnapshotBlurForStyle:(int64_t)a3 animated:(BOOL)a4 withCompletionBlock:(id)a5
{
  v5 = a4;
  v8 = a5;
  v29 = 0.0;
  v30 = 0;
  v27 = 0;
  v28 = 0;
  v25 = 0.0;
  v26 = 0.0;
  v23 = 0;
  v24 = 0;
  [(CAMSnapshotView *)self _prepareForApplyingBlurForStyle:a3 applying:0 inputRadiusAmount:&v30 inputRadiusDuration:&v28 inputRadiusDelay:&v27 inputRadiusTimingFunction:&v24 opacityAmount:&v29 opacityDuration:&v26 opacityDelay:&v25 opacityTimingFunction:&v23];
  v9 = v24;
  v10 = v23;
  if (v5)
  {
    v11 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    v12 = [(CAMSnapshotView *)self layer];
    v13 = [v12 valueForKeyPath:@"opacity"];
    [v11 setFromValue:v13];

    v14 = [MEMORY[0x1E696AD98] numberWithDouble:v29];
    [v11 setToValue:v14];

    [v11 setDuration:v26];
    [v11 setBeginTime:v25];
    [v11 setTimingFunction:v10];
    [v11 setFillMode:*MEMORY[0x1E69797E0]];
    v15 = objc_alloc_init(CAMAnimationDelegate);
    v16 = [(CAMSnapshotView *)self _blurView];
    objc_initWeak(&location, v16);

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __76__CAMSnapshotView__removeSnapshotBlurForStyle_animated_withCompletionBlock___block_invoke;
    v19[3] = &unk_1E76FBAE0;
    objc_copyWeak(&v21, &location);
    v20 = v8;
    [(CAMAnimationDelegate *)v15 setCompletion:v19];
    [v11 setDelegate:v15];
    v17 = [(CAMSnapshotView *)self layer];
    [v17 addAnimation:v11 forKey:@"containerOpacityAnimation"];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  v18 = [(CAMSnapshotView *)self layer];
  [v18 setOpacity:0.0];

  if (v8 && !v5)
  {
    (*(v8 + 2))(v8, 1);
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

- (void)_prepareForApplyingLowQualityBlurForStyle:(int64_t)a3 applying:(BOOL)a4 opacityAmount:(double *)a5 opacityDuration:(double *)a6 opacityDelay:(double *)a7 opacityTimingFunction:(id *)a8 targetView:(id *)a9
{
  if (a3 != 2)
  {
    if (a3 == 1)
    {
      v20 = 0.0;
      if (a4)
      {
        v20 = 1.0;
      }

      *a5 = v20;
      if (a4)
      {
        v21 = 0.03335;
      }

      else
      {
        v21 = 0.04695;
      }

      UIAnimationDragCoefficient();
      *a6 = v22 * 0.25;
      v23 = [(UIView *)self->_snapshotView layer];
      [v23 convertTime:0 fromLayer:CACurrentMediaTime()];
      v25 = v24;
      UIAnimationDragCoefficient();
      *a7 = v25 + v21 * v26;

      LODWORD(v27) = 1036831949;
      LODWORD(v28) = 0.25;
      LODWORD(v29) = 0.25;
      LODWORD(v30) = 1.0;
      *a8 = [MEMORY[0x1E69793D0] functionWithControlPoints:v28 :v27 :v29 :v30];
      goto LABEL_16;
    }

    if (a3)
    {
      return;
    }
  }

  v14 = 0.0;
  if (a4)
  {
    v14 = 1.0;
  }

  *a5 = v14;
  UIAnimationDragCoefficient();
  HIDWORD(v18) = 1070638039;
  v19 = v17 * 0.26;
  *a6 = v19;
  *a7 = 0.0;
  if (a4)
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
  *a8 = v31;

LABEL_16:
  *a9 = [(CAMSnapshotView *)self _lowQualityBlurView];
}

- (void)_applyLowQualityBlurForStyle:(int64_t)a3 animated:(BOOL)a4 withCompletionBlock:(id)a5
{
  v5 = a4;
  v8 = a5;
  [(CAMSnapshotView *)self _setupLowQualityBlurOnSnapshot];
  v21 = 0.0;
  v22 = 0.0;
  v19 = 0;
  v20 = 0.0;
  v18 = 0;
  [(CAMSnapshotView *)self _prepareForApplyingLowQualityBlurForStyle:a3 applying:1 opacityAmount:&v22 opacityDuration:&v21 opacityDelay:&v20 opacityTimingFunction:&v19 targetView:&v18];
  v9 = v19;
  v10 = v18;
  v11 = [v10 layer];
  if (v5)
  {
    v12 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    v13 = [v11 valueForKeyPath:@"opacity"];
    [v12 setFromValue:v13];

    [v12 setBeginTime:v20];
    [v12 setDuration:v21];
    [v12 setTimingFunction:v9];
    [v12 setFillMode:*MEMORY[0x1E69797E0]];
    if (v8)
    {
      v14 = objc_alloc_init(CAMAnimationDelegate);
      [(CAMAnimationDelegate *)v14 setCompletion:v8];
      [v12 setDelegate:v14];
    }

    [v11 addAnimation:v12 forKey:@"inputRadiusAnimation"];
  }

  HIDWORD(v15) = HIDWORD(v22);
  *&v15 = v22;
  [v11 setOpacity:v15];
  v16 = [(CAMSnapshotView *)self layer];
  LODWORD(v17) = 1.0;
  [v16 setOpacity:v17];

  if (v8 && !v5)
  {
    v8[2](v8, 1);
  }
}

- (void)_removeLowQualityBlurForStyle:(int64_t)a3 animated:(BOOL)a4 withCompletionBlock:(id)a5
{
  v5 = a4;
  v8 = a5;
  v23 = 0;
  v21 = 0.0;
  v22 = 0.0;
  v19 = 0;
  v20 = 0;
  [(CAMSnapshotView *)self _prepareForApplyingLowQualityBlurForStyle:a3 applying:0 opacityAmount:&v23 opacityDuration:&v22 opacityDelay:&v21 opacityTimingFunction:&v20 targetView:&v19];
  v9 = v20;
  v10 = v19;
  if (v5)
  {
    v11 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    v12 = [(CAMSnapshotView *)self layer];
    v13 = [v12 valueForKeyPath:@"opacity"];
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
    v18 = v8;
    [(CAMAnimationDelegate *)v14 setCompletion:v17];
    [v11 setDelegate:v14];
    v15 = [(CAMSnapshotView *)self layer];
    [v15 addAnimation:v11 forKey:@"containerOpacityAnimation"];
  }

  v16 = [(CAMSnapshotView *)self layer];
  [v16 setOpacity:0.0];

  if (v8 && !v5)
  {
    (*(v8 + 2))(v8, 1);
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

    v8 = [(CAMSnapshotView *)self _blurView];
    snapshotView = v8;
    if (!v8)
    {
      snapshotView = self->_snapshotView;
    }

    v10 = snapshotView;

    [(CAMSnapshotView *)self insertSubview:self->__dimmingView aboveSubview:v10];
  }
}

- (void)_applySnapshotDimAnimated:(BOOL)a3 withCompletionBlock:(id)a4
{
  v4 = a3;
  v13 = a4;
  [(CAMSnapshotView *)self _setupDimOnSnapshot];
  v6 = [(CAMSnapshotView *)self _dimmingView];
  v7 = [v6 layer];

  if (v4)
  {
    v9 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    [v9 setFromValue:&unk_1F16C8BE8];
    [v9 setToValue:&unk_1F16C8BF8];
    [v9 setDuration:0.25];
    v10 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
    [v9 setTimingFunction:v10];

    [v9 setRemovedOnCompletion:0];
    v11 = objc_alloc_init(CAMAnimationDelegate);
    [(CAMAnimationDelegate *)v11 setCompletion:v13];
    [v9 setDelegate:v11];
    [v7 addAnimation:v9 forKey:@"opacityAnimation"];

    LODWORD(v12) = 1.0;
    [v7 setOpacity:v12];
  }

  else
  {
    LODWORD(v8) = 1.0;
    [v7 setOpacity:v8];
    if (v13)
    {
      v13[2](v13, 1);
    }
  }
}

- (void)_removeSnapshotDimAnimated:(BOOL)a3 withCompletionBlock:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(CAMSnapshotView *)self _dimmingView];
  v8 = [v7 layer];

  [v8 removeAllAnimations];
  v9 = self->__dimmingView;
  dimmingView = self->__dimmingView;
  self->__dimmingView = 0;

  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __66__CAMSnapshotView__removeSnapshotDimAnimated_withCompletionBlock___block_invoke;
  v20 = &unk_1E76F77D8;
  v21 = v9;
  v11 = v6;
  v22 = v11;
  v12 = v9;
  v13 = _Block_copy(&v17);
  if (v4)
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
    [v8 addAnimation:v14 forKey:@"opacityAnimation"];

    [v8 setOpacity:0.0];
  }

  else
  {
    [v8 setOpacity:{0.0, v17, v18, v19, v20, v21, v22}];
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

- (void)_removeAnimationOnView:(id)a3 forKey:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 layer];
  v8 = [v7 animationForKey:v6];

  if (v8)
  {
    v9 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543618;
      v11 = v6;
      v12 = 2114;
      v13 = v5;
      _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "Removing animation for key %{public}@ from view %{public}@", &v10, 0x16u);
    }

    [v7 removeAnimationForKey:v6];
  }
}

- (void)removeAllAnimationsOnLayer:(id)a3 recursively:(BOOL)a4 shouldLog:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = v8;
  if (v5)
  {
    v10 = [v8 animationKeys];
    if ([v10 count])
    {
      v11 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v23 = v10;
        v24 = 2114;
        v25 = v9;
        v26 = 2114;
        v27 = self;
        _os_log_impl(&dword_1A3640000, v11, OS_LOG_TYPE_DEFAULT, "Removing animation keys %{public}@ from layer %{public}@ on behalf of view %{public}@", buf, 0x20u);
      }
    }
  }

  [v9 removeAllAnimations];
  if (v6)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v12 = [v9 sublayers];
    v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(v12);
          }

          [(CAMSnapshotView *)self removeAllAnimationsOnLayer:*(*(&v17 + 1) + 8 * v16++) recursively:1 shouldLog:v5];
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v14);
    }
  }
}

- (id)_basicAnimationForView:(id)a3 withKeyPath:(id)a4
{
  if ([a4 isEqualToString:@"filters.gaussianBlur.inputRadius"])
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