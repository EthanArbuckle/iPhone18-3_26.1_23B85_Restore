@interface CAMStageLightAnimator
- ($9C403407A5B624E1CD2E2AFE16A3B680)_gradientGeometryForState:(SEL)state;
- ($C12B4627ED62839D2AEBF862580BED8F)_circleGeometryForState:(SEL)state;
- ($C12B4627ED62839D2AEBF862580BED8F)_currentCircleGeometry;
- ($DD7213A072135978BB9F7CBA3523336B)_currentGradientProperties;
- ($DD7213A072135978BB9F7CBA3523336B)_gradientPropertiesForGeometry:(SEL)geometry;
- (CAMStageLightAnimator)initWithGradientLayer:(id)layer circleLayer:(id)circleLayer;
- (CGRect)circleBaseFrame;
- (void)_animateAppearing;
- (void)_animateBounceIfNeeded;
- (void)_animateCircleColorWithDuration:(double)duration timing:(id)timing;
- (void)_animateCircleFromGeometry:(id *)geometry toGeometry:(id *)toGeometry duration:(double)duration timing:(id)timing repeats:(BOOL)repeats completion:(id)completion;
- (void)_animateCircleGeometry:(id *)geometry count:(unint64_t)count duration:(double)duration timing:(id)timing repeats:(BOOL)repeats completion:(id)completion;
- (void)_animateCircleToGeometry:(id *)geometry duration:(double)duration timing:(id)timing completion:(id)completion;
- (void)_animateGradientFromProperties:(id *)properties toProperties:(id *)toProperties duration:(double)duration timing:(id)timing repeats:(BOOL)repeats;
- (void)_animateGradientProperties:(id *)properties count:(unint64_t)count duration:(double)duration timing:(id)timing repeats:(BOOL)repeats;
- (void)_animateGradientToProperties:(id *)properties duration:(double)duration timing:(id)timing;
- (void)_animateHidden;
- (void)_animateSearchingIfNeededFromState:(unint64_t)state;
- (void)_didFinishAppearing;
- (void)setCircleBaseFrame:(CGRect)frame animated:(BOOL)animated;
- (void)setState:(unint64_t)state;
@end

@implementation CAMStageLightAnimator

- (CAMStageLightAnimator)initWithGradientLayer:(id)layer circleLayer:(id)circleLayer
{
  layerCopy = layer;
  circleLayerCopy = circleLayer;
  v12.receiver = self;
  v12.super_class = CAMStageLightAnimator;
  v9 = [(CAMStageLightAnimator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_gradientLayer, layer);
    objc_storeStrong(&v10->_circleLayer, circleLayer);
  }

  return v10;
}

- (void)setCircleBaseFrame:(CGRect)frame animated:(BOOL)animated
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (!CGRectEqualToRect(frame, self->_circleBaseFrame))
  {
    self->_circleBaseFrame.origin.x = x;
    self->_circleBaseFrame.origin.y = y;
    self->_circleBaseFrame.size.width = width;
    self->_circleBaseFrame.size.height = height;
    state = [(CAMStageLightAnimator *)self state];
    v11 = state;
    if (!state || state == 2)
    {
      [(CAMStageLightAnimator *)self _circleGeometryForState:state];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      [(CAMStageLightAnimator *)self _gradientGeometryForState:v11];
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
      [(CAMStageLightAnimator *)self _gradientPropertiesForGeometry:?];
      if (v11 != 0 && animated)
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

    else if (state == 1)
    {

      [(CAMStageLightAnimator *)self _animateAppearing];
    }
  }
}

- (void)setState:(unint64_t)state
{
  state = self->_state;
  if (state == state)
  {
    return;
  }

  self->_state = state;
  if (state)
  {
    if (state != 2)
    {
      if (state != 1)
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
  state = [(CAMStageLightAnimator *)self state];
  if (state == 2)
  {

    [(CAMStageLightAnimator *)self _animateBounceIfNeeded];
  }

  else if (state == 1)
  {

    [(CAMStageLightAnimator *)self _animateSearchingIfNeededFromState:0];
  }
}

- (void)_animateSearchingIfNeededFromState:(unint64_t)state
{
  if (![(CAMStageLightAnimator *)self _isAppearing])
  {
    v5 = state == 2;
    if (state == 2)
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

- ($9C403407A5B624E1CD2E2AFE16A3B680)_gradientGeometryForState:(SEL)state
{
  [(CAMStageLightAnimator *)self _circleGeometryForState:?];
  gradientLayer = [(CAMStageLightAnimator *)self gradientLayer];
  [gradientLayer bounds];
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

- ($C12B4627ED62839D2AEBF862580BED8F)_circleGeometryForState:(SEL)state
{
  [(CAMStageLightAnimator *)self circleBaseFrame];
  [(CAMStageLightAnimator *)self _circleLineWidth];
  return UIRectGetCenter();
}

- ($DD7213A072135978BB9F7CBA3523336B)_gradientPropertiesForGeometry:(SEL)geometry
{
  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = v4;
  gradientLayer = [(CAMStageLightAnimator *)self gradientLayer];
  [gradientLayer bounds];
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
  circleLayer = [(CAMStageLightAnimator *)self circleLayer];
  presentationLayer = [circleLayer presentationLayer];
  v6 = presentationLayer;
  if (presentationLayer)
  {
    circleLayer2 = presentationLayer;
  }

  else
  {
    circleLayer2 = [(CAMStageLightAnimator *)self circleLayer];
  }

  v8 = circleLayer2;

  CGPathGetBoundingBox([v8 path]);
  UIRectGetCenter();

  return result;
}

- ($DD7213A072135978BB9F7CBA3523336B)_currentGradientProperties
{
  gradientLayer = [(CAMStageLightAnimator *)self gradientLayer];
  presentationLayer = [gradientLayer presentationLayer];
  if (presentationLayer)
  {
    v5 = presentationLayer;
  }

  else
  {
    v5 = gradientLayer;
  }

  v6 = v5;

  locations = [v6 locations];
  if ([locations count] < 2)
  {
    v10 = 0.99;
  }

  else
  {
    v8 = [locations objectAtIndexedSubscript:1];
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

- (void)_animateGradientToProperties:(id *)properties duration:(double)duration timing:(id)timing
{
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  timingCopy = timing;
  [(CAMStageLightAnimator *)self _currentGradientProperties];
  v12[0] = v14;
  v12[1] = v15;
  v13 = v16;
  var1 = properties->var1;
  v10[0] = properties->var0;
  v10[1] = var1;
  var2 = properties->var2;
  [(CAMStageLightAnimator *)self _animateGradientFromProperties:v12 toProperties:v10 duration:timingCopy timing:0 repeats:duration];
}

- (void)_animateGradientFromProperties:(id *)properties toProperties:(id *)toProperties duration:(double)duration timing:(id)timing repeats:(BOOL)repeats
{
  v14 = *MEMORY[0x1E69E9840];
  var1 = properties->var1;
  v9[0] = properties->var0;
  v9[1] = var1;
  v8 = toProperties->var1;
  var0 = toProperties->var0;
  var2 = properties->var2;
  v12 = v8;
  v13 = toProperties->var2;
  [(CAMStageLightAnimator *)self _animateGradientProperties:v9 count:2 duration:timing timing:repeats repeats:duration];
}

- (void)_animateGradientProperties:(id *)properties count:(unint64_t)count duration:(double)duration timing:(id)timing repeats:(BOOL)repeats
{
  repeatsCopy = repeats;
  v47[3] = *MEMORY[0x1E69E9840];
  timingCopy = timing;
  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:count];
  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:count];
  v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:count];
  if (count)
  {
    p_var1 = &properties->var1;
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
      --count;
    }

    while (count);
  }

  gradientLayer = [(CAMStageLightAnimator *)self gradientLayer];
  if (duration > 0.0)
  {
    if (repeatsCopy)
    {
      v24 = INFINITY;
    }

    else
    {
      v24 = 0.0;
    }

    v25 = [MEMORY[0x1E6979390] animationWithKeyPath:@"locations"];
    [v25 setTimingFunction:timingCopy];
    [v25 setDuration:duration];
    [v25 setValues:v12];
    *&v26 = v24;
    [v25 setRepeatCount:v26];
    [v25 setAutoreverses:repeatsCopy];
    [gradientLayer addAnimation:v25 forKey:@"visibleLocations"];
    v27 = [MEMORY[0x1E6979390] animationWithKeyPath:@"endPoint"];
    [v27 setTimingFunction:timingCopy];
    [v27 setDuration:duration];
    [v27 setValues:v11];
    *&v28 = v24;
    [v27 setRepeatCount:v28];
    [v27 setAutoreverses:repeatsCopy];
    [gradientLayer addAnimation:v27 forKey:@"visibleEndPoint"];
    [MEMORY[0x1E6979390] animationWithKeyPath:@"startPoint"];
    v30 = v29 = v10;
    [v30 setTimingFunction:timingCopy];
    [v30 setDuration:duration];
    [v30 setValues:v29];
    *&v31 = v24;
    [v30 setRepeatCount:v31];
    [v30 setAutoreverses:repeatsCopy];
    [gradientLayer addAnimation:v30 forKey:@"visibleStartPoint"];

    v10 = v29;
  }

  v32 = MEMORY[0x1E69DD250];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __82__CAMStageLightAnimator__animateGradientProperties_count_duration_timing_repeats___block_invoke;
  v42[3] = &unk_1E76F8230;
  v43 = gradientLayer;
  v44 = v10;
  v45 = v11;
  v46 = v12;
  v33 = v12;
  v34 = v11;
  v35 = v33;
  v36 = v34;
  v37 = v10;
  v38 = gradientLayer;
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

- (void)_animateCircleToGeometry:(id *)geometry duration:(double)duration timing:(id)timing completion:(id)completion
{
  timingCopy = timing;
  geometryCopy = geometry;
  [(CAMStageLightAnimator *)self _currentCircleGeometry];
  [CAMStageLightAnimator _animateCircleFromGeometry:"_animateCircleFromGeometry:toGeometry:duration:timing:repeats:completion:" toGeometry:geometryCopy duration:0 timing:timingCopy repeats:? completion:?];
}

- (void)_animateCircleFromGeometry:(id *)geometry toGeometry:(id *)toGeometry duration:(double)duration timing:(id)timing repeats:(BOOL)repeats completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  durationCopy = duration;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  [(CAMStageLightAnimator *)self _animateCircleGeometry:&durationCopy count:2 duration:geometry timing:toGeometry repeats:timing completion:v13];
}

- (void)_animateCircleGeometry:(id *)geometry count:(unint64_t)count duration:(double)duration timing:(id)timing repeats:(BOOL)repeats completion:(id)completion
{
  repeatsCopy = repeats;
  timingCopy = timing;
  completionCopy = completion;
  v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:count];
  if (count)
  {
    p_y = &geometry->var1.y;
    do
    {
      p_y += 3;
      UIRectCenteredAboutPointScale();
      v18 = CGPathCreateWithEllipseInRect(v27, 0);
      [v16 addObject:v18];
      CGPathRelease(v18);
      --count;
    }

    while (count);
  }

  circleLayer = [(CAMStageLightAnimator *)self circleLayer];
  if (duration > 0.0)
  {
    if (repeatsCopy)
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
    v26 = completionCopy;
    [(CAMAnimationDelegate *)v21 setCompletion:v25];
    v22 = [MEMORY[0x1E6979390] animationWithKeyPath:@"path"];
    [v22 setTimingFunction:timingCopy];
    [v22 setDuration:duration];
    [v22 setValues:v16];
    *&v23 = v20;
    [v22 setRepeatCount:v23];
    [v22 setAutoreverses:repeatsCopy];
    [v22 setDelegate:v21];
    [circleLayer addAnimation:v22 forKey:@"circlePaths"];
  }

  lastObject = [v16 lastObject];
  [circleLayer setPath:lastObject];
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

- (void)_animateCircleColorWithDuration:(double)duration timing:(id)timing
{
  timingCopy = timing;
  circleLayer = [(CAMStageLightAnimator *)self circleLayer];
  state = [(CAMStageLightAnimator *)self state];
  if (state >= 2)
  {
    if (state != 2)
    {
      cGColor = 0;
      goto LABEL_7;
    }

    whiteColor = CAMYellowColor();
  }

  else
  {
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  }

  v9 = whiteColor;
  cGColor = [whiteColor CGColor];

LABEL_7:
  if (duration > 0.0)
  {
    presentationLayer = [circleLayer presentationLayer];
    v12 = presentationLayer;
    if (presentationLayer)
    {
      v13 = presentationLayer;
    }

    else
    {
      v13 = circleLayer;
    }

    v14 = v13;

    v15 = [MEMORY[0x1E6979318] animationWithKeyPath:@"fillColor"];
    [v15 setFromValue:{objc_msgSend(v14, "fillColor")}];
    [v15 setToValue:cGColor];
    [v15 setDuration:duration];
    [v15 setTimingFunction:timingCopy];
    [circleLayer addAnimation:v15 forKey:@"activeFillColor"];
  }

  [circleLayer setFillColor:cGColor];
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