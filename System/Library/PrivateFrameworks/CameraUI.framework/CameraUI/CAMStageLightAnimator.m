@interface CAMStageLightAnimator
- ($9C403407A5B624E1CD2E2AFE16A3B680)_gradientGeometryForState:(SEL)a3;
- ($C12B4627ED62839D2AEBF862580BED8F)_circleGeometryForState:(SEL)a3;
- ($C12B4627ED62839D2AEBF862580BED8F)_currentCircleGeometry;
- ($DD7213A072135978BB9F7CBA3523336B)_currentGradientProperties;
- ($DD7213A072135978BB9F7CBA3523336B)_gradientPropertiesForGeometry:(SEL)a3;
- (CAMStageLightAnimator)initWithGradientLayer:(id)a3 circleLayer:(id)a4;
- (CGRect)circleBaseFrame;
- (void)_animateAppearing;
- (void)_animateBounceIfNeeded;
- (void)_animateCircleColorWithDuration:(double)a3 timing:(id)a4;
- (void)_animateCircleFromGeometry:(id *)a3 toGeometry:(id *)a4 duration:(double)a5 timing:(id)a6 repeats:(BOOL)a7 completion:(id)a8;
- (void)_animateCircleGeometry:(id *)a3 count:(unint64_t)a4 duration:(double)a5 timing:(id)a6 repeats:(BOOL)a7 completion:(id)a8;
- (void)_animateCircleToGeometry:(id *)a3 duration:(double)a4 timing:(id)a5 completion:(id)a6;
- (void)_animateGradientFromProperties:(id *)a3 toProperties:(id *)a4 duration:(double)a5 timing:(id)a6 repeats:(BOOL)a7;
- (void)_animateGradientProperties:(id *)a3 count:(unint64_t)a4 duration:(double)a5 timing:(id)a6 repeats:(BOOL)a7;
- (void)_animateGradientToProperties:(id *)a3 duration:(double)a4 timing:(id)a5;
- (void)_animateHidden;
- (void)_animateSearchingIfNeededFromState:(unint64_t)a3;
- (void)_didFinishAppearing;
- (void)setCircleBaseFrame:(CGRect)a3 animated:(BOOL)a4;
- (void)setState:(unint64_t)a3;
@end

@implementation CAMStageLightAnimator

- (CAMStageLightAnimator)initWithGradientLayer:(id)a3 circleLayer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CAMStageLightAnimator;
  v9 = [(CAMStageLightAnimator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_gradientLayer, a3);
    objc_storeStrong(&v10->_circleLayer, a4);
  }

  return v10;
}

- (void)setCircleBaseFrame:(CGRect)a3 animated:(BOOL)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!CGRectEqualToRect(a3, self->_circleBaseFrame))
  {
    self->_circleBaseFrame.origin.x = x;
    self->_circleBaseFrame.origin.y = y;
    self->_circleBaseFrame.size.width = width;
    self->_circleBaseFrame.size.height = height;
    v10 = [(CAMStageLightAnimator *)self state];
    v11 = v10;
    if (!v10 || v10 == 2)
    {
      [(CAMStageLightAnimator *)self _circleGeometryForState:v10];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      [(CAMStageLightAnimator *)self _gradientGeometryForState:v11];
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
      [(CAMStageLightAnimator *)self _gradientPropertiesForGeometry:?];
      if (v11 != 0 && a4)
      {
        v18 = 0.5;
      }

      else
      {
        v18 = 0.0;
      }

      v19 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EA0]];
      v20[0] = v22;
      v20[1] = v23;
      v21 = v24;
      [(CAMStageLightAnimator *)self _animateGradientToProperties:v20 duration:v19 timing:v18];
      [(CAMStageLightAnimator *)self _animateCircleToGeometry:v19 duration:0 timing:v13 completion:v15, v17, v18];
      [(CAMStageLightAnimator *)self _animateCircleColorWithDuration:v19 timing:v18];
    }

    else if (v10 == 1)
    {

      [(CAMStageLightAnimator *)self _animateAppearing];
    }
  }
}

- (void)setState:(unint64_t)a3
{
  state = self->_state;
  if (state == a3)
  {
    return;
  }

  self->_state = a3;
  if (a3)
  {
    if (a3 != 2)
    {
      if (a3 != 1)
      {
        return;
      }

      if (state)
      {

        [(CAMStageLightAnimator *)self _animateSearchingIfNeededFromState:?];
        return;
      }

      goto LABEL_18;
    }

    if (!state)
    {
LABEL_18:

      [(CAMStageLightAnimator *)self _animateAppearing];
      return;
    }

    if (![(CAMStageLightAnimator *)self _isAppearing])
    {

      [(CAMStageLightAnimator *)self _animateBounceIfNeeded];
    }
  }

  else
  {

    [(CAMStageLightAnimator *)self _animateHidden];
  }
}

- (void)_animateAppearing
{
  [(CAMStageLightAnimator *)self _setAppearingAnimationCount:[(CAMStageLightAnimator *)self _appearingAnimationCount]+ 1];
  [(CAMStageLightAnimator *)self _circleGeometryForState:1];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [(CAMStageLightAnimator *)self _gradientGeometryForState:1];
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  [(CAMStageLightAnimator *)self _gradientPropertiesForGeometry:?];
  v9 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EA0]];
  v11[0] = v13;
  v11[1] = v14;
  v12 = v15;
  [(CAMStageLightAnimator *)self _animateGradientToProperties:v11 duration:v9 timing:0.5];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__CAMStageLightAnimator__animateAppearing__block_invoke;
  v10[3] = &unk_1E76F7988;
  v10[4] = self;
  [(CAMStageLightAnimator *)self _animateCircleToGeometry:v9 duration:v10 timing:v4 completion:v6, v8, 0.5];
}

- (void)_didFinishAppearing
{
  [(CAMStageLightAnimator *)self _setAppearingAnimationCount:[(CAMStageLightAnimator *)self _appearingAnimationCount]- 1];
  v3 = [(CAMStageLightAnimator *)self state];
  if (v3 == 2)
  {

    [(CAMStageLightAnimator *)self _animateBounceIfNeeded];
  }

  else if (v3 == 1)
  {

    [(CAMStageLightAnimator *)self _animateSearchingIfNeededFromState:0];
  }
}

- (void)_animateSearchingIfNeededFromState:(unint64_t)a3
{
  if (![(CAMStageLightAnimator *)self _isAppearing])
  {
    v5 = a3 == 2;
    if (a3 == 2)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    if (v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    [(CAMStageLightAnimator *)self _circleLineWidth];
    v9 = v8;
    [(CAMStageLightAnimator *)self _circleGeometryForState:v6];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [(CAMStageLightAnimator *)self _circleGeometryForState:v7];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    [(CAMStageLightAnimator *)self _gradientPropertiesForGeometry:v11 - v9, v11 - v9, v13, v15];
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    [(CAMStageLightAnimator *)self _gradientPropertiesForGeometry:v17 - v9, v17 - v9, v19, v21];
    LODWORD(v22) = 0.5;
    LODWORD(v23) = 0.5;
    LODWORD(v24) = 1.0;
    v25 = [MEMORY[0x1E69793D0] functionWithControlPoints:v22 :0.0 :v23 :v24];
    v28[0] = v33;
    v28[1] = v34;
    v29 = v35;
    v26[0] = v30;
    v26[1] = v31;
    v27 = v32;
    [(CAMStageLightAnimator *)self _animateGradientFromProperties:v28 toProperties:v26 duration:v25 timing:1 repeats:0.75];
    [(CAMStageLightAnimator *)self _animateCircleFromGeometry:v25 toGeometry:1 duration:0 timing:v11 repeats:v13 completion:v15, v17, v19, v21, 0.75];
    [(CAMStageLightAnimator *)self _animateCircleColorWithDuration:v25 timing:0.75];
  }
}

- (void)_animateBounceIfNeeded
{
  v28[9] = *MEMORY[0x1E69E9840];
  if (![(CAMStageLightAnimator *)self _isAppearing])
  {
    v27 = 0;
    v26 = 0u;
    v25 = 0u;
    memset(v24, 0, sizeof(v24));
    [(CAMStageLightAnimator *)self _currentCircleGeometry];
    v28[0] = v3;
    v28[1] = v4;
    v28[2] = v5;
    [(CAMStageLightAnimator *)self _currentGradientProperties];
    [(CAMStageLightAnimator *)self _circleGeometryForState:2];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [(CAMStageLightAnimator *)self _gradientGeometryForState:2];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    [(CAMStageLightAnimator *)self _gradientPropertiesForGeometry:?];
    v25 = v21;
    v26 = v22;
    v27 = v23;
    *&v28[6] = v7;
    v28[7] = v9;
    v28[8] = v11;
    [(CAMStageLightAnimator *)self _gradientPropertiesForGeometry:v13 + 8.0, v15 + 8.0, v17, v19];
    *(&v24[2] + 8) = v21;
    *(&v24[3] + 8) = v22;
    *(&v24[4] + 1) = v23;
    *&v28[3] = v7 + 8.0;
    v28[4] = v9;
    v28[5] = v11;
    v20 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EA0]];
    [(CAMStageLightAnimator *)self _animateGradientProperties:v24 count:3 duration:v20 timing:0 repeats:0.3];
    [(CAMStageLightAnimator *)self _animateCircleGeometry:v28 count:3 duration:v20 timing:0 repeats:0 completion:0.3];
    [(CAMStageLightAnimator *)self _animateCircleColorWithDuration:v20 timing:0.3];
  }
}

- (void)_animateHidden
{
  [(CAMStageLightAnimator *)self _circleGeometryForState:0];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [(CAMStageLightAnimator *)self _gradientGeometryForState:0];
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  [(CAMStageLightAnimator *)self _gradientPropertiesForGeometry:?];
  LODWORD(v9) = 1063675494;
  LODWORD(v10) = 0.75;
  LODWORD(v11) = 0.75;
  v12 = [MEMORY[0x1E69793D0] functionWithControlPoints:v10 :0.0 :v11 :v9];
  v13[0] = v15;
  v13[1] = v16;
  v14 = v17;
  [(CAMStageLightAnimator *)self _animateGradientToProperties:v13 duration:v12 timing:0.5];
  [(CAMStageLightAnimator *)self _animateCircleToGeometry:v12 duration:0 timing:v4 completion:v6, v8, 0.5];
  [(CAMStageLightAnimator *)self _animateCircleColorWithDuration:v12 timing:0.5];
}

- ($9C403407A5B624E1CD2E2AFE16A3B680)_gradientGeometryForState:(SEL)a3
{
  [(CAMStageLightAnimator *)self _circleGeometryForState:?];
  v6 = [(CAMStageLightAnimator *)self gradientLayer];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  result = [(CAMStageLightAnimator *)self _circleLineWidth];
  if (a4 - 1 >= 2 && !a4)
  {
    v16.origin.x = v8;
    v16.origin.y = v10;
    v16.size.width = v12;
    v16.size.height = v14;
    CGRectGetMaxY(v16);
    return UIDistanceBetweenPoints();
  }

  return result;
}

- ($C12B4627ED62839D2AEBF862580BED8F)_circleGeometryForState:(SEL)a3
{
  [(CAMStageLightAnimator *)self circleBaseFrame];
  [(CAMStageLightAnimator *)self _circleLineWidth];
  return UIRectGetCenter();
}

- ($DD7213A072135978BB9F7CBA3523336B)_gradientPropertiesForGeometry:(SEL)a3
{
  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = v4;
  v13 = [(CAMStageLightAnimator *)self gradientLayer];
  [v13 bounds];
  v15 = v14;
  v17 = v16;

  retstr->var0.x = v9 / v15;
  retstr->var0.y = v8 / v17;
  retstr->var1.x = v9 / v15 + v10 / v15;
  retstr->var1.y = v8 / v17 + v10 / v17;
  retstr->var2 = fmin(v11 / v10, 0.99);
  return result;
}

- ($C12B4627ED62839D2AEBF862580BED8F)_currentCircleGeometry
{
  v4 = [(CAMStageLightAnimator *)self circleLayer];
  v5 = [v4 presentationLayer];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(CAMStageLightAnimator *)self circleLayer];
  }

  v8 = v7;

  CGPathGetBoundingBox([v8 path]);
  UIRectGetCenter();

  return result;
}

- ($DD7213A072135978BB9F7CBA3523336B)_currentGradientProperties
{
  v16 = [(CAMStageLightAnimator *)self gradientLayer];
  v4 = [v16 presentationLayer];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v16;
  }

  v6 = v5;

  v7 = [v6 locations];
  if ([v7 count] < 2)
  {
    v10 = 0.99;
  }

  else
  {
    v8 = [v7 objectAtIndexedSubscript:1];
    [v8 floatValue];
    v10 = v9;
  }

  [v6 startPoint];
  retstr->var0.x = v11;
  retstr->var0.y = v12;
  [v6 endPoint];
  retstr->var1.x = v13;
  retstr->var1.y = v14;
  retstr->var2 = v10;

  return result;
}

- (void)_animateGradientToProperties:(id *)a3 duration:(double)a4 timing:(id)a5
{
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v8 = a5;
  [(CAMStageLightAnimator *)self _currentGradientProperties];
  v12[0] = v14;
  v12[1] = v15;
  v13 = v16;
  var1 = a3->var1;
  v10[0] = a3->var0;
  v10[1] = var1;
  var2 = a3->var2;
  [(CAMStageLightAnimator *)self _animateGradientFromProperties:v12 toProperties:v10 duration:v8 timing:0 repeats:a4];
}

- (void)_animateGradientFromProperties:(id *)a3 toProperties:(id *)a4 duration:(double)a5 timing:(id)a6 repeats:(BOOL)a7
{
  v14 = *MEMORY[0x1E69E9840];
  var1 = a3->var1;
  v9[0] = a3->var0;
  v9[1] = var1;
  v8 = a4->var1;
  var0 = a4->var0;
  var2 = a3->var2;
  v12 = v8;
  v13 = a4->var2;
  [(CAMStageLightAnimator *)self _animateGradientProperties:v9 count:2 duration:a6 timing:a7 repeats:a5];
}

- (void)_animateGradientProperties:(id *)a3 count:(unint64_t)a4 duration:(double)a5 timing:(id)a6 repeats:(BOOL)a7
{
  v39 = a7;
  v47[3] = *MEMORY[0x1E69E9840];
  v41 = a6;
  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:a4];
  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:a4];
  v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:a4];
  if (a4)
  {
    p_var1 = &a3->var1;
    do
    {
      x = p_var1->x;
      y = p_var1->y;
      v16 = p_var1[1].x;
      v17 = [MEMORY[0x1E696B098] valueWithCGPoint:{p_var1[-1].x, p_var1[-1].y}];
      [v10 addObject:v17];

      v18 = [MEMORY[0x1E696B098] valueWithCGPoint:{x, y}];
      [v11 addObject:v18];

      v47[0] = &unk_1F16C7D90;
      v19 = [MEMORY[0x1E696AD98] numberWithDouble:v16];
      v47[1] = v19;
      v47[2] = &unk_1F16C7DA8;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:3];
      v20 = v11;
      v22 = v21 = v10;
      [v12 addObject:v22];

      v10 = v21;
      v11 = v20;

      p_var1 = (p_var1 + 40);
      --a4;
    }

    while (a4);
  }

  v23 = [(CAMStageLightAnimator *)self gradientLayer];
  if (a5 > 0.0)
  {
    if (v39)
    {
      v24 = INFINITY;
    }

    else
    {
      v24 = 0.0;
    }

    v25 = [MEMORY[0x1E6979390] animationWithKeyPath:@"locations"];
    [v25 setTimingFunction:v41];
    [v25 setDuration:a5];
    [v25 setValues:v12];
    *&v26 = v24;
    [v25 setRepeatCount:v26];
    [v25 setAutoreverses:v39];
    [v23 addAnimation:v25 forKey:@"visibleLocations"];
    v27 = [MEMORY[0x1E6979390] animationWithKeyPath:@"endPoint"];
    [v27 setTimingFunction:v41];
    [v27 setDuration:a5];
    [v27 setValues:v11];
    *&v28 = v24;
    [v27 setRepeatCount:v28];
    [v27 setAutoreverses:v39];
    [v23 addAnimation:v27 forKey:@"visibleEndPoint"];
    [MEMORY[0x1E6979390] animationWithKeyPath:@"startPoint"];
    v30 = v29 = v10;
    [v30 setTimingFunction:v41];
    [v30 setDuration:a5];
    [v30 setValues:v29];
    *&v31 = v24;
    [v30 setRepeatCount:v31];
    [v30 setAutoreverses:v39];
    [v23 addAnimation:v30 forKey:@"visibleStartPoint"];

    v10 = v29;
  }

  v32 = MEMORY[0x1E69DD250];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __82__CAMStageLightAnimator__animateGradientProperties_count_duration_timing_repeats___block_invoke;
  v42[3] = &unk_1E76F8230;
  v43 = v23;
  v44 = v10;
  v45 = v11;
  v46 = v12;
  v33 = v12;
  v34 = v11;
  v35 = v33;
  v36 = v34;
  v37 = v10;
  v38 = v23;
  [v32 performWithoutAnimation:v42];
}

void __82__CAMStageLightAnimator__animateGradientProperties_count_duration_timing_repeats___block_invoke(id *a1)
{
  v2 = [a1[5] lastObject];
  [v2 CGPointValue];
  [a1[4] setStartPoint:?];

  v3 = [a1[6] lastObject];
  [v3 CGPointValue];
  [a1[4] setEndPoint:?];

  v4 = [a1[7] lastObject];
  [a1[4] setLocations:v4];
}

- (void)_animateCircleToGeometry:(id *)a3 duration:(double)a4 timing:(id)a5 completion:(id)a6
{
  v8 = a5;
  v9 = a3;
  [(CAMStageLightAnimator *)self _currentCircleGeometry];
  [CAMStageLightAnimator _animateCircleFromGeometry:"_animateCircleFromGeometry:toGeometry:duration:timing:repeats:completion:" toGeometry:v9 duration:0 timing:v8 repeats:? completion:?];
}

- (void)_animateCircleFromGeometry:(id *)a3 toGeometry:(id *)a4 duration:(double)a5 timing:(id)a6 repeats:(BOOL)a7 completion:(id)a8
{
  v20 = *MEMORY[0x1E69E9840];
  v14 = a5;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  [(CAMStageLightAnimator *)self _animateCircleGeometry:&v14 count:2 duration:a3 timing:a4 repeats:a6 completion:v13];
}

- (void)_animateCircleGeometry:(id *)a3 count:(unint64_t)a4 duration:(double)a5 timing:(id)a6 repeats:(BOOL)a7 completion:(id)a8
{
  v9 = a7;
  v14 = a6;
  v15 = a8;
  v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:a4];
  if (a4)
  {
    p_y = &a3->var1.y;
    do
    {
      p_y += 3;
      UIRectCenteredAboutPointScale();
      v18 = CGPathCreateWithEllipseInRect(v27, 0);
      [v16 addObject:v18];
      CGPathRelease(v18);
      --a4;
    }

    while (a4);
  }

  v19 = [(CAMStageLightAnimator *)self circleLayer];
  if (a5 > 0.0)
  {
    if (v9)
    {
      v20 = INFINITY;
    }

    else
    {
      v20 = 0.0;
    }

    v21 = objc_alloc_init(CAMAnimationDelegate);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __89__CAMStageLightAnimator__animateCircleGeometry_count_duration_timing_repeats_completion___block_invoke;
    v25[3] = &unk_1E76F97A0;
    v26 = v15;
    [(CAMAnimationDelegate *)v21 setCompletion:v25];
    v22 = [MEMORY[0x1E6979390] animationWithKeyPath:@"path"];
    [v22 setTimingFunction:v14];
    [v22 setDuration:a5];
    [v22 setValues:v16];
    *&v23 = v20;
    [v22 setRepeatCount:v23];
    [v22 setAutoreverses:v9];
    [v22 setDelegate:v21];
    [v19 addAnimation:v22 forKey:@"circlePaths"];
  }

  v24 = [v16 lastObject];
  [v19 setPath:v24];
}

uint64_t __89__CAMStageLightAnimator__animateCircleGeometry_count_duration_timing_repeats_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_animateCircleColorWithDuration:(double)a3 timing:(id)a4
{
  v16 = a4;
  v6 = [(CAMStageLightAnimator *)self circleLayer];
  v7 = [(CAMStageLightAnimator *)self state];
  if (v7 >= 2)
  {
    if (v7 != 2)
    {
      v10 = 0;
      goto LABEL_7;
    }

    v8 = CAMYellowColor();
  }

  else
  {
    v8 = [MEMORY[0x1E69DC888] whiteColor];
  }

  v9 = v8;
  v10 = [v8 CGColor];

LABEL_7:
  if (a3 > 0.0)
  {
    v11 = [v6 presentationLayer];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v6;
    }

    v14 = v13;

    v15 = [MEMORY[0x1E6979318] animationWithKeyPath:@"fillColor"];
    [v15 setFromValue:{objc_msgSend(v14, "fillColor")}];
    [v15 setToValue:v10];
    [v15 setDuration:a3];
    [v15 setTimingFunction:v16];
    [v6 addAnimation:v15 forKey:@"activeFillColor"];
  }

  [v6 setFillColor:v10];
}

- (CGRect)circleBaseFrame
{
  x = self->_circleBaseFrame.origin.x;
  y = self->_circleBaseFrame.origin.y;
  width = self->_circleBaseFrame.size.width;
  height = self->_circleBaseFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end