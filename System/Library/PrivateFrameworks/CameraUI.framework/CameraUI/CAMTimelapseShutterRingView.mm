@interface CAMTimelapseShutterRingView
- ($EA90F2AF3C0DC35AB2D8304CE3BCA89E)spec;
- (CAMTimelapseShutterRingView)initWithFrame:(CGRect)frame spec:(id *)spec;
- (CAMTimelapseShutterRingView)initWithSpec:(id *)spec;
- (double)_tickRadiusForTickSize:(CGSize)size ringSize:(CGSize)ringSize;
- (void)_addStartAnimations;
- (void)_addStopAnimations;
- (void)_commonCAMTimelapseShutterRingViewInitializationWithSpec:(id *)spec;
- (void)_removeStartAnimations;
- (void)_removeStopAnimations;
- (void)_startAnimating;
- (void)_stopAnimating;
- (void)layoutSublayersOfLayer:(id)layer;
- (void)setAnimating:(BOOL)animating;
- (void)setSpec:(id *)spec;
@end

@implementation CAMTimelapseShutterRingView

- (CAMTimelapseShutterRingView)initWithSpec:(id *)spec
{
  v9.receiver = self;
  v9.super_class = CAMTimelapseShutterRingView;
  v4 = [(CAMTimelapseShutterRingView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v6 = *&spec->var2;
    v8[0] = *&spec->var0;
    v8[1] = v6;
    [(CAMTimelapseShutterRingView *)v4 _commonCAMTimelapseShutterRingViewInitializationWithSpec:v8];
  }

  return v5;
}

- (CAMTimelapseShutterRingView)initWithFrame:(CGRect)frame spec:(id *)spec
{
  v10.receiver = self;
  v10.super_class = CAMTimelapseShutterRingView;
  v5 = [(CAMTimelapseShutterRingView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    v7 = *&spec->var2;
    v9[0] = *&spec->var0;
    v9[1] = v7;
    [(CAMTimelapseShutterRingView *)v5 _commonCAMTimelapseShutterRingViewInitializationWithSpec:v9];
  }

  return v6;
}

- (void)_commonCAMTimelapseShutterRingViewInitializationWithSpec:(id *)spec
{
  [(CAMTimelapseShutterRingView *)self setUserInteractionEnabled:0];
  v5 = *&spec->var2;
  *&self->_spec.smallTickCount = *&spec->var0;
  *&self->_spec.smallTickLength = v5;
  [(CAMTimelapseShutterRingView *)self _rotationRadiansFromTickCount:self->_spec.smallTickCount];
  self->__smallTickRotationRadians = v6;
  [(CAMTimelapseShutterRingView *)self _rotationRadiansFromTickCount:self->_spec.largeTickCount];
  self->__largeTickRotationRadians = v7;
  traitCollection = [(CAMTimelapseShutterRingView *)self traitCollection];
  [traitCollection displayScale];
  v10 = v9;

  layer = [(CAMTimelapseShutterRingView *)self layer];
  memset(&v34, 0, sizeof(v34));
  CATransform3DMakeRotation(&v34, self->__smallTickRotationRadians, 0.0, 0.0, 1.0);
  memset(&v33, 0, sizeof(v33));
  CATransform3DMakeRotation(&v33, self->__largeTickRotationRadians, 0.0, 0.0, 1.0);
  v12 = objc_alloc_init(MEMORY[0x1E6979430]);
  smallTickReplicatorLayer = self->__smallTickReplicatorLayer;
  self->__smallTickReplicatorLayer = v12;

  [layer addSublayer:self->__smallTickReplicatorLayer];
  [(CAReplicatorLayer *)self->__smallTickReplicatorLayer setInstanceCount:self->_spec.smallTickCount + 1];
  v14 = self->__smallTickReplicatorLayer;
  v32 = v34;
  [(CAReplicatorLayer *)v14 setInstanceTransform:&v32];
  v15 = objc_alloc_init(MEMORY[0x1E6979430]);
  largeTickReplicatorLayer = self->__largeTickReplicatorLayer;
  self->__largeTickReplicatorLayer = v15;

  [layer addSublayer:self->__largeTickReplicatorLayer];
  [(CAReplicatorLayer *)self->__largeTickReplicatorLayer setInstanceCount:self->_spec.largeTickCount + 1];
  v17 = self->__largeTickReplicatorLayer;
  v32 = v33;
  [(CAReplicatorLayer *)v17 setInstanceTransform:&v32];
  v18 = objc_alloc_init(MEMORY[0x1E6979398]);
  smallTickLayer = self->__smallTickLayer;
  self->__smallTickLayer = v18;

  [(CAReplicatorLayer *)self->__smallTickReplicatorLayer addSublayer:self->__smallTickLayer];
  v20 = self->__smallTickLayer;
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  -[CALayer setBackgroundColor:](v20, "setBackgroundColor:", [whiteColor CGColor]);

  [(CALayer *)self->__smallTickLayer setRasterizationScale:v10];
  [(CALayer *)self->__smallTickLayer setAllowsEdgeAntialiasing:1];
  v22 = objc_alloc_init(MEMORY[0x1E6979398]);
  largeTickLayer = self->__largeTickLayer;
  self->__largeTickLayer = v22;

  [(CAReplicatorLayer *)self->__largeTickReplicatorLayer addSublayer:self->__largeTickLayer];
  v24 = self->__largeTickLayer;
  whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
  -[CALayer setBackgroundColor:](v24, "setBackgroundColor:", [whiteColor2 CGColor]);

  [(CALayer *)self->__largeTickLayer setRasterizationScale:v10];
  [(CALayer *)self->__largeTickLayer setAllowsEdgeAntialiasing:1];
  v26 = objc_alloc_init(MEMORY[0x1E6979398]);
  timerHandParentLayer = self->__timerHandParentLayer;
  self->__timerHandParentLayer = v26;

  [layer addSublayer:self->__timerHandParentLayer];
  v28 = objc_alloc_init(MEMORY[0x1E6979398]);
  timerHandLayer = self->__timerHandLayer;
  self->__timerHandLayer = v28;

  [(CALayer *)self->__timerHandParentLayer addSublayer:self->__timerHandLayer];
  v30 = self->__timerHandLayer;
  whiteColor3 = [MEMORY[0x1E69DC888] whiteColor];
  -[CALayer setBackgroundColor:](v30, "setBackgroundColor:", [whiteColor3 CGColor]);

  [(CALayer *)self->__timerHandLayer setRasterizationScale:v10];
  [(CALayer *)self->__timerHandLayer setAllowsEdgeAntialiasing:1];
}

- (void)setAnimating:(BOOL)animating
{
  if (self->_animating != animating)
  {
    self->_animating = animating;
    if (animating)
    {
      [(CAMTimelapseShutterRingView *)self _startAnimating];
    }

    else
    {
      [(CAMTimelapseShutterRingView *)self _stopAnimating];
    }
  }
}

- (void)setSpec:(id *)spec
{
  p_spec = &self->_spec;
  if (self->_spec.smallTickCount != spec->var0 || self->_spec.largeTickCount != spec->var1 || self->_spec.smallTickLength != spec->var2 || self->_spec.largeTickLength != spec->var3)
  {
    v5 = *&spec->var2;
    *&p_spec->smallTickCount = *&spec->var0;
    *&self->_spec.smallTickLength = v5;
    [(CAMTimelapseShutterRingView *)self _rotationRadiansFromTickCount:p_spec->smallTickCount];
    self->__smallTickRotationRadians = v6;
    [(CAMTimelapseShutterRingView *)self _rotationRadiansFromTickCount:p_spec->largeTickCount];
    self->__largeTickRotationRadians = v7;
  }
}

- (void)layoutSublayersOfLayer:(id)layer
{
  [(CAMTimelapseShutterRingView *)self bounds];
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  MidX = CGRectGetMidX(v20);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  MidY = CGRectGetMidY(v21);
  [(CAReplicatorLayer *)self->__smallTickReplicatorLayer setBounds:x, y, width, height];
  [(CAReplicatorLayer *)self->__smallTickReplicatorLayer setPosition:MidX, MidY];
  [(CAReplicatorLayer *)self->__largeTickReplicatorLayer setBounds:x, y, width, height];
  [(CAReplicatorLayer *)self->__largeTickReplicatorLayer setPosition:MidX, MidY];
  [(CALayer *)self->__timerHandParentLayer setBounds:x, y, width, height];
  [(CALayer *)self->__timerHandParentLayer setPosition:MidX, MidY];
  smallTickLength = self->_spec.smallTickLength;
  v11 = *MEMORY[0x1E695EFF8];
  v12 = *(MEMORY[0x1E695EFF8] + 8);
  [(CAMTimelapseShutterRingView *)self _tickRadiusForTickSize:1.0 ringSize:smallTickLength, width, height];
  v14 = MidY - v13;
  [(CALayer *)self->__smallTickLayer setBounds:v11, v12, 1.0, smallTickLength];
  [(CALayer *)self->__smallTickLayer setPosition:MidX, v14];
  largeTickLength = self->_spec.largeTickLength;
  [(CAMTimelapseShutterRingView *)self _tickRadiusForTickSize:1.0 ringSize:largeTickLength, width, height];
  v17 = MidY - v16;
  [(CALayer *)self->__largeTickLayer setBounds:v11, v12, 1.0, largeTickLength];
  [(CALayer *)self->__largeTickLayer setPosition:MidX, v17];
  [(CALayer *)self->__timerHandLayer setBounds:v11, v12, 1.0, largeTickLength];
  timerHandLayer = self->__timerHandLayer;

  [(CALayer *)timerHandLayer setPosition:MidX, v17];
}

- (double)_tickRadiusForTickSize:(CGSize)size ringSize:(CGSize)ringSize
{
  if (ringSize.width >= ringSize.height)
  {
    height = ringSize.height;
  }

  else
  {
    height = ringSize.width;
  }

  return height * 0.5 - size.height * 0.5;
}

- (void)_startAnimating
{
  [MEMORY[0x1E6979518] begin];
  [(CAMTimelapseShutterRingView *)self _removeStartAnimations];
  [(CAMTimelapseShutterRingView *)self _removeStopAnimations];
  [(CAMTimelapseShutterRingView *)self _addStartAnimations];
  v3 = MEMORY[0x1E6979518];

  [v3 commit];
}

- (void)_stopAnimating
{
  [MEMORY[0x1E6979518] begin];
  [(CAMTimelapseShutterRingView *)self _addStopAnimations];
  [(CAMTimelapseShutterRingView *)self _removeStartAnimations];
  v3 = MEMORY[0x1E6979518];

  [v3 commit];
}

- (void)_removeStartAnimations
{
  [(CAReplicatorLayer *)self->__smallTickReplicatorLayer removeAnimationForKey:@"kStartAnimationsKey"];
  timerHandParentLayer = self->__timerHandParentLayer;

  [(CALayer *)timerHandParentLayer removeAnimationForKey:@"kStartAnimationsKey"];
}

- (void)_removeStopAnimations
{
  [(CAReplicatorLayer *)self->__smallTickReplicatorLayer removeAnimationForKey:@"kStopAnimationsKey"];
  timerHandParentLayer = self->__timerHandParentLayer;

  [(CALayer *)timerHandParentLayer removeAnimationForKey:@"kStopAnimationsKey"];
}

- (void)_addStartAnimations
{
  v53[3] = *MEMORY[0x1E69E9840];
  if ([(CAMTimelapseShutterRingView *)self _shouldUseAnimations])
  {
    UIAnimationDragCoefficient();
    v4 = v3 * 0.7;
    UIAnimationDragCoefficient();
    v6 = v5 * 12.0;
    v7 = [MEMORY[0x1E6979318] animationWithKeyPath:@"instanceCount"];
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_spec.smallTickCount + 1];
    [v7 setFromValue:v8];

    [v7 setToValue:&unk_1F16C8270];
    v48 = v7;
    [v7 setDuration:v4];
    v46 = *MEMORY[0x1E6979EB8];
    v9 = [MEMORY[0x1E69793D0] functionWithName:?];
    [v7 setTimingFunction:v9];

    v47 = [MEMORY[0x1E6979390] animationWithKeyPath:@"instanceCount"];
    v53[0] = &unk_1F16C8270;
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:self->_spec.smallTickCount + 1];
    v53[1] = v10;
    v53[2] = &unk_1F16C8270;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:3];
    [v47 setValues:v11];

    [v47 setKeyTimes:&unk_1F16C9BA8];
    [v47 setBeginTime:v4];
    [v47 setDuration:v6];
    v12 = *MEMORY[0x1E6979ED8];
    v13 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED8]];
    [v47 setTimingFunction:v13];

    LODWORD(v14) = 2139095040;
    [v47 setRepeatCount:v14];
    v15 = [MEMORY[0x1E6979390] animationWithKeyPath:@"instanceTransform.rotation.z"];
    v16 = MEMORY[0x1E696AD98];
    [(CAMTimelapseShutterRingView *)self _smallTickRotationRadians];
    v18 = [v16 numberWithDouble:-v17];
    v52[0] = v18;
    v19 = MEMORY[0x1E696AD98];
    [(CAMTimelapseShutterRingView *)self _smallTickRotationRadians];
    v20 = [v19 numberWithDouble:?];
    v52[1] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];
    [v15 setValues:v21];

    v22 = v15;
    [v15 setKeyTimes:&unk_1F16C9BC0];
    v23 = *MEMORY[0x1E69795A0];
    [v15 setCalculationMode:*MEMORY[0x1E69795A0]];
    [v15 setDuration:v4];
    v24 = [MEMORY[0x1E69793D0] functionWithName:v12];
    v45 = v15;
    [v15 setTimingFunction:v24];

    v25 = [MEMORY[0x1E6979390] animationWithKeyPath:@"instanceTransform.rotation.z"];
    v26 = MEMORY[0x1E696AD98];
    [(CAMTimelapseShutterRingView *)self _smallTickRotationRadians];
    v27 = [v26 numberWithDouble:?];
    v51[0] = v27;
    v28 = MEMORY[0x1E696AD98];
    [(CAMTimelapseShutterRingView *)self _smallTickRotationRadians];
    v30 = [v28 numberWithDouble:-v29];
    v51[1] = v30;
    v31 = MEMORY[0x1E696AD98];
    [(CAMTimelapseShutterRingView *)self _smallTickRotationRadians];
    v32 = [v31 numberWithDouble:?];
    v51[2] = v32;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:3];
    [v25 setValues:v33];

    [v25 setKeyTimes:&unk_1F16C9BD8];
    [v25 setCalculationMode:v23];
    [v25 setBeginTime:v4];
    [v25 setDuration:v6];
    v34 = [MEMORY[0x1E69793D0] functionWithName:v12];
    [v25 setTimingFunction:v34];

    LODWORD(v35) = 2139095040;
    [v25 setRepeatCount:v35];
    v36 = [MEMORY[0x1E6979390] animationWithKeyPath:@"transform.rotation.z"];
    [v36 setValues:&unk_1F16C9BF0];
    [v36 setKeyTimes:&unk_1F16C9C08];
    [v36 setCalculationMode:*MEMORY[0x1E69795A8]];
    [v36 setDuration:v4];
    v37 = [MEMORY[0x1E69793D0] functionWithName:v46];
    [v36 setTimingFunction:v37];

    v38 = [MEMORY[0x1E6979390] animationWithKeyPath:@"transform.rotation.z"];
    [v38 setValues:&unk_1F16C9C20];
    [v38 setKeyTimes:&unk_1F16C9C38];
    [v38 setBeginTime:v4];
    [v38 setDuration:v6 * 0.5];
    v39 = [MEMORY[0x1E69793D0] functionWithName:v12];
    [v38 setTimingFunction:v39];

    LODWORD(v40) = 2139095040;
    [v38 setRepeatCount:v40];
    v50[0] = v22;
    v50[1] = v48;
    v50[2] = v25;
    v50[3] = v47;
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:4];
    animation = [MEMORY[0x1E6979308] animation];
    [animation setAnimations:v41];
    [animation setDuration:6048000.0];
    v49[0] = v36;
    v49[1] = v38;
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
    animation2 = [MEMORY[0x1E6979308] animation];
    [animation2 setAnimations:v43];
    [animation2 setDuration:6048000.0];
    [MEMORY[0x1E6979518] begin];
    [(CAReplicatorLayer *)self->__smallTickReplicatorLayer addAnimation:animation forKey:@"kStartAnimationsKey"];
    [(CALayer *)self->__timerHandParentLayer addAnimation:animation2 forKey:@"kStartAnimationsKey"];
    [MEMORY[0x1E6979518] commit];
  }
}

- (void)_addStopAnimations
{
  v82[2] = *MEMORY[0x1E69E9840];
  if ([(CAMTimelapseShutterRingView *)self _shouldUseAnimations])
  {
    presentationLayer = [(CAReplicatorLayer *)self->__smallTickReplicatorLayer presentationLayer];
    smallTickReplicatorLayer = presentationLayer;
    if (!presentationLayer)
    {
      smallTickReplicatorLayer = self->__smallTickReplicatorLayer;
    }

    v5 = smallTickReplicatorLayer;

    presentationLayer2 = [(CALayer *)self->__timerHandParentLayer presentationLayer];
    timerHandParentLayer = presentationLayer2;
    if (!presentationLayer2)
    {
      timerHandParentLayer = self->__timerHandParentLayer;
    }

    v8 = timerHandParentLayer;

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    if (v5)
    {
      [(CAReplicatorLayer *)v5 instanceTransform];
    }

    v61 = v69;
    v62 = v70;
    v63 = v71;
    v64 = v72;
    v57 = v65;
    v58 = v66;
    v59 = v67;
    v60 = v68;
    [(CAMTimelapseShutterRingView *)self _rotationZFromTransform:&v57];
    v10 = v9;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    if (v8)
    {
      [(CALayer *)v8 transform];
    }

    v54 = v8;
    v56[4] = v61;
    v56[5] = v62;
    v56[6] = v63;
    v56[7] = v64;
    v56[0] = v57;
    v56[1] = v58;
    v56[2] = v59;
    v56[3] = v60;
    [(CAMTimelapseShutterRingView *)self _rotationZFromTransform:v56];
    if (v11 >= 0.0)
    {
      v12 = v11;
    }

    else
    {
      v12 = v11 + 6.28318531;
    }

    UIAnimationDragCoefficient();
    v14 = v13 * 0.4;
    v15 = 1.0 - v12 / 6.28318531;
    v55 = v5;
    if (v10 <= 0.0)
    {
      v16 = v14 * (v15 + 1.0);
      v79[0] = &unk_1F16C8288;
      v26 = [MEMORY[0x1E696AD98] numberWithDouble:v15 / (v15 + 1.0)];
      v79[1] = v26;
      v79[2] = &unk_1F16C8270;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:3];

      v27 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CAReplicatorLayer instanceCount](v5, "instanceCount")}];
      v78[0] = v27;
      v78[1] = &unk_1F16C8270;
      v28 = [MEMORY[0x1E696AD98] numberWithInteger:self->_spec.smallTickCount + 1];
      v78[2] = v28;
      v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:3];

      v19 = v29;
      v30 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
      v77[0] = v30;
      v77[1] = &unk_1F16C8D18;
      v77[2] = &unk_1F16C8D28;
      v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:3];

      v31 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB0]];
      v76[0] = v31;
      v32 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
      v76[1] = v32;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:2];

      v24 = [MEMORY[0x1E6979390] animationWithKeyPath:@"instanceTransform.rotation.z"];
      v33 = MEMORY[0x1E696AD98];
      [(CAMTimelapseShutterRingView *)self _smallTickRotationRadians];
      v35 = [v33 numberWithDouble:-v34];
      v75[0] = v35;
      v36 = MEMORY[0x1E696AD98];
      [(CAMTimelapseShutterRingView *)self _smallTickRotationRadians];
      v37 = [v36 numberWithDouble:?];
      v75[1] = v37;
      v38 = MEMORY[0x1E696AD98];
      [(CAMTimelapseShutterRingView *)self _smallTickRotationRadians];
      v40 = [v38 numberWithDouble:-v39];
      v75[2] = v40;
      v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:3];
      [v24 setValues:v41];

      v21 = v52;
      [v24 setKeyTimes:v25];
      [v24 setCalculationMode:*MEMORY[0x1E69795A0]];
      [v24 setDuration:v16];
      [v24 setTimingFunctions:v23];
    }

    else
    {
      v16 = v14 * v15;
      v17 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CAReplicatorLayer instanceCount](v5, "instanceCount")}];
      v82[0] = v17;
      v18 = [MEMORY[0x1E696AD98] numberWithInteger:self->_spec.smallTickCount + 1];
      v82[1] = v18;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:2];

      v20 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
      v81[0] = v20;
      v81[1] = &unk_1F16C8D18;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:2];

      v22 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
      v80 = v22;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:1];

      v24 = 0;
      v25 = &unk_1F16C9C50;
    }

    v42 = [MEMORY[0x1E6979390] animationWithKeyPath:@"instanceCount"];
    [v42 setValues:v19];
    [v42 setKeyTimes:v25];
    [v42 setDuration:v16];
    [v42 setTimingFunctions:v23];
    v43 = [MEMORY[0x1E6979390] animationWithKeyPath:@"transform.rotation.z"];
    [v43 setValues:v21];
    v53 = v25;
    [v43 setKeyTimes:v25];
    [v43 setDuration:v16];
    v44 = v23;
    [v43 setTimingFunctions:v23];
    v45 = v21;
    if (v24)
    {
      v74[0] = v24;
      v74[1] = v42;
      v46 = MEMORY[0x1E695DEC8];
      v47 = v74;
      v48 = 2;
    }

    else
    {
      v73 = v42;
      v46 = MEMORY[0x1E695DEC8];
      v47 = &v73;
      v48 = 1;
    }

    v49 = [v46 arrayWithObjects:v47 count:{v48, v19}];
    animation = [MEMORY[0x1E6979308] animation];
    [animation setAnimations:v49];
    [animation setDuration:v16];
    [MEMORY[0x1E6979518] begin];
    [(CAReplicatorLayer *)self->__smallTickReplicatorLayer addAnimation:animation forKey:@"kStopAnimationsKey"];
    [(CALayer *)self->__timerHandParentLayer addAnimation:v43 forKey:@"kStopAnimationsKey"];
    [MEMORY[0x1E6979518] commit];
  }
}

- ($EA90F2AF3C0DC35AB2D8304CE3BCA89E)spec
{
  v3 = *&self[15].var2;
  *&retstr->var0 = *&self[15].var0;
  *&retstr->var2 = v3;
  return self;
}

@end