@interface CSMagSafeAccessoryTrayView
- (CSMagSafeAccessoryTrayView)initWithFrame:(CGRect)a3;
- (CSMagSafeAccessoryTrayView)initWithTrayColor:(id)a3;
- (double)_trackRingLineWidthAnimationOffset;
- (void)_dismissAnimation;
- (void)_presentAnimation;
- (void)_runAnimationWithType:(unint64_t)a3;
- (void)layoutSubviews;
- (void)performAnimation:(unint64_t)a3 completionHandler:(id)a4;
@end

@implementation CSMagSafeAccessoryTrayView

- (CSMagSafeAccessoryTrayView)initWithTrayColor:(id)a3
{
  v81[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v80.receiver = self;
  v80.super_class = CSMagSafeAccessoryTrayView;
  v5 = [(CSMagSafeAccessoryView *)&v80 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v6 = v5;
  if (v5)
  {
    v7 = [(CSMagSafeAccessoryTrayView *)v5 layer];
    [v7 setAllowsGroupBlending:0];

    v8 = [(CSMagSafeAccessoryView *)v6 isReduceTransparencyEnabled];
    v9 = MEMORY[0x277CDA5C0];
    v79 = v4;
    if (v8)
    {
      v10 = [MEMORY[0x277CD9E08] layer];
      averageColorBackdropLayer = v6->_averageColorBackdropLayer;
      v6->_averageColorBackdropLayer = v10;

      [(CABackdropLayer *)v6->_averageColorBackdropLayer setOpacity:0.0];
      v12 = v6->_averageColorBackdropLayer;
      v13 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA268]];
      v81[0] = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:1];
      [(CABackdropLayer *)v12 setFilters:v14];

      [(CABackdropLayer *)v6->_averageColorBackdropLayer setScale:100.0];
      [(CABackdropLayer *)v6->_averageColorBackdropLayer setAllowsGroupOpacity:1];
      [(CABackdropLayer *)v6->_averageColorBackdropLayer setAllowsGroupBlending:1];
      [(CABackdropLayer *)v6->_averageColorBackdropLayer setAllowsEdgeAntialiasing:1];
    }

    else
    {
      v15 = [MEMORY[0x277CD9E08] backdropLayerWithGaussianBlurRadius:0.0 brightnessAmount:0.0 saturationAmount:1.0];
      backgroundBackdropLayer = v6->_backgroundBackdropLayer;
      v6->_backgroundBackdropLayer = v15;

      v17 = v6->_backgroundBackdropLayer;
      v18 = [MEMORY[0x277CD9EA0] filterWithType:*v9];
      [(CABackdropLayer *)v17 setCompositingFilter:v18];

      LODWORD(v19) = 1.0;
      [(CABackdropLayer *)v6->_backgroundBackdropLayer setOpacity:v19];
    }

    if ([(CSMagSafeAccessoryView *)v6 isReduceMotionEnabled])
    {
      v20 = [MEMORY[0x277CD9E08] backdropLayerWithGaussianBlurRadius:60.0 brightnessAmount:0.0 saturationAmount:1.0];
      backgroundRadiusBackdropLayer = v6->_backgroundRadiusBackdropLayer;
      v6->_backgroundRadiusBackdropLayer = v20;

      v22 = v6->_backgroundRadiusBackdropLayer;
      v23 = *v9;
      v24 = [MEMORY[0x277CD9EA0] filterWithType:v23];
      [(CABackdropLayer *)v22 setCompositingFilter:v24];

      v25 = v23;
      [(CABackdropLayer *)v6->_backgroundRadiusBackdropLayer setOpacity:0.0];
    }

    else
    {
      v25 = *v9;
    }

    v26 = [(CSMagSafeAccessoryView *)v6 configuration];
    v27 = [v26 ring];

    [v27 splashRingDiameter];
    v29 = v28 * 1.2 * 0.5;
    v30 = v28 * 2.1 * 0.5;
    v31 = *MEMORY[0x277CDA5E8];
    v32 = [MEMORY[0x277CD9ED0] ringLayerWithBlendMode:*MEMORY[0x277CDA5E8] cornerRadius:v28 * 0.5 borderWidth:0.0];
    splashRing1 = v6->_splashRing1;
    v6->_splashRing1 = v32;

    v34 = [MEMORY[0x277CD9ED0] ringLayerWithBlendMode:v31 cornerRadius:v29 borderWidth:0.0];
    splashRing2 = v6->_splashRing2;
    v6->_splashRing2 = v34;

    v36 = [MEMORY[0x277CD9ED0] ringLayerWithBlendMode:v25 cornerRadius:v30 borderWidth:0.0];
    splashRing3 = v6->_splashRing3;
    v6->_splashRing3 = v36;

    v38 = [MEMORY[0x277CD9ED0] ringLayerWithBlendMode:v25 cornerRadius:v30 borderWidth:0.0];
    splashRing4 = v6->_splashRing4;
    v6->_splashRing4 = v38;

    [v27 ringDiameter];
    v41 = v40;
    [(CSMagSafeAccessoryTrayView *)v6 _trackRingLineWidthAnimationOffset];
    v43 = v41 + v42;
    [v27 lineWidth];
    v45 = v44;
    [(CSMagSafeAccessoryTrayView *)v6 _trackRingLineWidthAnimationOffset];
    v47 = [CSRingLayer ringLayerWithBlendMode:v25 diameter:v43 lineWidth:v45 + v46 brightnessAmount:0.0 saturationAmount:1.25];
    trackRing = v6->_trackRing;
    v6->_trackRing = v47;

    [(CSRingLayer *)v6->_trackRing setAllowsGroupOpacity:0];
    [(CSRingLayer *)v6->_trackRing setAllowsGroupBlending:1];
    v49 = [MEMORY[0x277D75348] clearColor];

    if (!v4 || v49 == v4)
    {
      v51 = [MEMORY[0x277D75348] systemWhiteColor];
      v50 = [v51 CGColor];

      v6->_clearColorAnimationNeeded = 1;
    }

    else
    {
      v6->_clearColorAnimationNeeded = 0;
      v50 = [v4 CGColor];
    }

    [(CALayer *)v6->_splashRing1 setBackgroundColor:v50];
    [(CALayer *)v6->_splashRing2 setBackgroundColor:v50];
    [(CALayer *)v6->_splashRing3 setBackgroundColor:v50];
    [(CALayer *)v6->_splashRing4 setBackgroundColor:v50];
    [(CSRingLayer *)v6->_trackRing setStrokeColor:v50];
    if ([(CSMagSafeAccessoryView *)v6 isReduceTransparencyEnabled])
    {
      v52 = [(CSMagSafeAccessoryTrayView *)v6 layer];
      [v52 addSublayer:v6->_averageColorBackdropLayer];
    }

    v53 = [(CSMagSafeAccessoryTrayView *)v6 layer];
    [v53 addSublayer:v6->_backgroundBackdropLayer];

    v54 = [(CSMagSafeAccessoryView *)v6 isReduceMotionEnabled];
    v55 = [(CSMagSafeAccessoryTrayView *)v6 layer];
    v56 = v55;
    if (v54)
    {
      [v55 insertSublayer:v6->_backgroundRadiusBackdropLayer below:v6->_backgroundBackdropLayer];
    }

    else
    {
      [v55 addSublayer:v6->_splashRing1];

      v56 = [(CSMagSafeAccessoryTrayView *)v6 layer];
      [v56 addSublayer:v6->_splashRing2];
    }

    v57 = [(CSMagSafeAccessoryTrayView *)v6 layer];
    [v57 addSublayer:v6->_splashRing3];

    v58 = [(CSMagSafeAccessoryTrayView *)v6 layer];
    [v58 addSublayer:v6->_splashRing4];

    v59 = [(CSMagSafeAccessoryTrayView *)v6 layer];
    [v59 addSublayer:v6->_trackRing];

    if (v6->_clearColorAnimationNeeded)
    {
      v60 = [MEMORY[0x277CD9E08] backdropLayerWithGaussianBlurRadius:45.0 brightnessAmount:0.15 saturationAmount:1.3];
      trackRingBlurBackdropLayer = v6->_trackRingBlurBackdropLayer;
      v6->_trackRingBlurBackdropLayer = v60;

      v62 = v6->_trackRingBlurBackdropLayer;
      v63 = [MEMORY[0x277CD9EA0] filterWithType:v25];
      [(CABackdropLayer *)v62 setCompositingFilter:v63];

      v64 = [(CSMagSafeAccessoryView *)v6 configuration];
      v65 = [v64 ring];

      [v65 ringDiameter];
      v67 = v66;
      [(CSMagSafeAccessoryTrayView *)v6 _trackRingLineWidthAnimationOffset];
      v69 = v67 + v68;
      [v65 lineWidth];
      v71 = v70;
      [(CSMagSafeAccessoryTrayView *)v6 _trackRingLineWidthAnimationOffset];
      v73 = [CSRingLayer ringLayerWithBlendMode:v25 diameter:v69 lineWidth:v71 + v72 brightnessAmount:0.1 saturationAmount:1.25];
      trackRingBlurLayer = v6->_trackRingBlurLayer;
      v6->_trackRingBlurLayer = v73;

      v75 = v6->_trackRingBlurLayer;
      v76 = [MEMORY[0x277D75348] whiteColor];
      -[CSRingLayer setStrokeColor:](v75, "setStrokeColor:", [v76 CGColor]);

      [(CABackdropLayer *)v6->_trackRingBlurBackdropLayer setMask:v6->_trackRingBlurLayer];
      v77 = [(CSMagSafeAccessoryTrayView *)v6 layer];
      [v77 insertSublayer:v6->_trackRingBlurBackdropLayer above:v6->_backgroundBackdropLayer];
    }

    v4 = v79;
  }

  return v6;
}

- (CSMagSafeAccessoryTrayView)initWithFrame:(CGRect)a3
{
  v4 = [MEMORY[0x277D75348] clearColor];
  v5 = [(CSMagSafeAccessoryTrayView *)self initWithTrayColor:v4];

  return v5;
}

- (void)layoutSubviews
{
  v42.receiver = self;
  v42.super_class = CSMagSafeAccessoryTrayView;
  [(CSMagSafeAccessoryView *)&v42 layoutSubviews];
  v3 = [(CSMagSafeAccessoryTrayView *)self superview];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(CSMagSafeAccessoryTrayView *)self setFrame:v5, v7, v9, v11];
  v12 = [(CSMagSafeAccessoryView *)self configuration];
  v13 = [v12 ring];
  [v13 ringDiameter];
  v41 = v14;
  [(CSMagSafeAccessoryTrayView *)self _trackRingLineWidthAnimationOffset];
  v40 = v15;
  v16 = [(CSMagSafeAccessoryView *)self configuration];
  v17 = [v16 ring];
  [v17 ringDiameter];
  v39 = v18;
  [(CSMagSafeAccessoryTrayView *)self _trackRingLineWidthAnimationOffset];
  v37 = v19;

  if ([(CSMagSafeAccessoryView *)self isReduceTransparencyEnabled])
  {
    [(CABackdropLayer *)self->_averageColorBackdropLayer setBounds:v5, v7, v9, v11];
    averageColorBackdropLayer = self->_averageColorBackdropLayer;
    [(CABackdropLayer *)averageColorBackdropLayer bounds];
    [(CSMagSafeAccessoryTrayView *)self bounds];
    UIRectCenteredIntegralRect();
    UIRectGetCenter();
    [(CABackdropLayer *)averageColorBackdropLayer setPosition:?];
  }

  [(CABackdropLayer *)self->_backgroundBackdropLayer setBounds:v5, v7, v9, v11, v37];
  backgroundBackdropLayer = self->_backgroundBackdropLayer;
  [(CABackdropLayer *)backgroundBackdropLayer bounds];
  [(CSMagSafeAccessoryTrayView *)self bounds];
  UIRectCenteredIntegralRect();
  UIRectGetCenter();
  [(CABackdropLayer *)backgroundBackdropLayer setPosition:?];
  if ([(CSMagSafeAccessoryView *)self isReduceMotionEnabled])
  {
    [(CABackdropLayer *)self->_backgroundRadiusBackdropLayer setBounds:v5, v7, v9, v11];
    backgroundRadiusBackdropLayer = self->_backgroundRadiusBackdropLayer;
    [(CABackdropLayer *)backgroundRadiusBackdropLayer bounds];
    [(CSMagSafeAccessoryTrayView *)self bounds];
    UIRectCenteredIntegralRect();
    UIRectGetCenter();
    [(CABackdropLayer *)backgroundRadiusBackdropLayer setPosition:?];
  }

  v23 = v41 + v40;
  v24 = v39 + v38;
  if (self->_clearColorAnimationNeeded)
  {
    [(CABackdropLayer *)self->_trackRingBlurBackdropLayer setBounds:0.0, 0.0, v41 + v40, v39 + v38];
    trackRingBlurBackdropLayer = self->_trackRingBlurBackdropLayer;
    [(CABackdropLayer *)trackRingBlurBackdropLayer bounds];
    [(CSMagSafeAccessoryTrayView *)self bounds];
    UIRectCenteredIntegralRect();
    UIRectGetCenter();
    [(CABackdropLayer *)trackRingBlurBackdropLayer setPosition:?];
    [(CSRingLayer *)self->_trackRingBlurLayer setBounds:0.0, 0.0, v23, v24];
    trackRingBlurLayer = self->_trackRingBlurLayer;
    [(CSRingLayer *)trackRingBlurLayer bounds];
    [(CABackdropLayer *)self->_trackRingBlurBackdropLayer bounds];
    UIRectCenteredIntegralRect();
    UIRectGetCenter();
    [(CSRingLayer *)trackRingBlurLayer setPosition:?];
  }

  v27 = [(CSMagSafeAccessoryView *)self configuration];
  v28 = [v27 ring];
  [v28 splashRingDiameter];
  v30 = v29;

  [(CALayer *)self->_splashRing1 setBounds:0.0, 0.0, v30, v30];
  splashRing1 = self->_splashRing1;
  [(CALayer *)splashRing1 bounds];
  [(CSMagSafeAccessoryTrayView *)self bounds];
  UIRectCenteredIntegralRect();
  UIRectGetCenter();
  [(CALayer *)splashRing1 setPosition:?];
  [(CALayer *)self->_splashRing2 setBounds:0.0, 0.0, v30 * 1.2, v30 * 1.2];
  splashRing2 = self->_splashRing2;
  [(CALayer *)splashRing2 bounds];
  [(CSMagSafeAccessoryTrayView *)self bounds];
  UIRectCenteredIntegralRect();
  UIRectGetCenter();
  [(CALayer *)splashRing2 setPosition:?];
  v33 = v30 * 2.1;
  [(CALayer *)self->_splashRing3 setBounds:0.0, 0.0, v33, v33];
  splashRing3 = self->_splashRing3;
  [(CALayer *)splashRing3 bounds];
  [(CSMagSafeAccessoryTrayView *)self bounds];
  UIRectCenteredIntegralRect();
  UIRectGetCenter();
  [(CALayer *)splashRing3 setPosition:?];
  [(CALayer *)self->_splashRing4 setBounds:0.0, 0.0, v33, v33];
  splashRing4 = self->_splashRing4;
  [(CALayer *)splashRing4 bounds];
  [(CSMagSafeAccessoryTrayView *)self bounds];
  UIRectCenteredIntegralRect();
  UIRectGetCenter();
  [(CALayer *)splashRing4 setPosition:?];
  [(CSRingLayer *)self->_trackRing setBounds:0.0, 0.0, v23, v24];
  trackRing = self->_trackRing;
  [(CSRingLayer *)trackRing bounds];
  [(CSMagSafeAccessoryTrayView *)self bounds];
  UIRectCenteredIntegralRect();
  UIRectGetCenter();
  [(CSRingLayer *)trackRing setPosition:?];
}

- (double)_trackRingLineWidthAnimationOffset
{
  v3 = 0.0;
  if (![(CSMagSafeAccessoryView *)self isReduceMotionEnabled])
  {
    v4 = [(CSMagSafeAccessoryView *)self configuration];
    v5 = [v4 ring];
    [v5 lineWidth];
    v7 = v6;

    if (v7 < 30.0)
    {
      v8 = [(CSMagSafeAccessoryView *)self configuration];
      v9 = [v8 ring];
      [v9 lineWidth];
      v3 = 30.0 - v10;
    }
  }

  return v3;
}

- (void)_presentAnimation
{
  v88[3] = *MEMORY[0x277D85DE8];
  v3 = CACurrentMediaTime();
  if ([(CSMagSafeAccessoryView *)self isReduceTransparencyEnabled])
  {
    v4 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
    [v4 setKeyTimes:&unk_283079488];
    [v4 setValues:&unk_2830794A0];
    [v4 setDuration:0.42];
    [v4 setRemovedOnCompletion:0];
    v5 = *MEMORY[0x277CDA238];
    [v4 setFillMode:*MEMORY[0x277CDA238]];
    v6 = *MEMORY[0x277CDA7C8];
    v7 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
    [v4 setTimingFunction:v7];

    [(CABackdropLayer *)self->_averageColorBackdropLayer addAnimation:v4 forKey:@"opacity"];
  }

  else
  {
    v4 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"filters.colorBrightness.inputAmount"];
    [v4 setKeyTimes:&unk_2830794B8];
    [v4 setValues:&unk_2830794D0];
    [v4 setDuration:0.42];
    [v4 setRemovedOnCompletion:0];
    v5 = *MEMORY[0x277CDA238];
    [v4 setFillMode:*MEMORY[0x277CDA238]];
    v8 = *MEMORY[0x277CDA7C8];
    v9 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
    [v4 setTimingFunction:v9];

    [(CABackdropLayer *)self->_backgroundBackdropLayer addAnimation:v4 forKey:@"filters.colorBrightness.inputAmount"];
    v10 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"filters.colorSaturate.inputAmount"];
    [v10 setKeyTimes:&unk_2830794E8];
    [v10 setValues:&unk_283079500];
    [v10 setDuration:0.42];
    [v10 setRemovedOnCompletion:0];
    [v10 setFillMode:v5];
    v11 = [MEMORY[0x277CD9EF8] functionWithName:v8];
    [v10 setTimingFunction:v11];

    [(CABackdropLayer *)self->_backgroundBackdropLayer addAnimation:v10 forKey:@"filters.colorSaturate.inputAmount"];
    if ([(CSMagSafeAccessoryView *)self isReduceMotionEnabled])
    {
      v12 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
      [v12 setKeyTimes:&unk_283079548];
      [v12 setValues:&unk_283079560];
      [v12 setDuration:0.42];
      [v12 setRemovedOnCompletion:0];
      [v12 setFillMode:v5];
      v13 = [MEMORY[0x277CD9EF8] functionWithName:v8];
      [v12 setTimingFunction:v13];

      backgroundRadiusBackdropLayer = self->_backgroundRadiusBackdropLayer;
      v15 = v12;
      v16 = @"opacity";
    }

    else
    {
      v12 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"filters.gaussianBlur.inputRadius"];
      [v12 setKeyTimes:&unk_283079518];
      [v12 setValues:&unk_283079530];
      [v12 setDuration:0.42];
      [v12 setRemovedOnCompletion:0];
      [v12 setFillMode:v5];
      v17 = [MEMORY[0x277CD9EF8] functionWithName:v8];
      [v12 setTimingFunction:v17];

      backgroundRadiusBackdropLayer = self->_backgroundBackdropLayer;
      v15 = v12;
      v16 = @"filters.gaussianBlur.inputRadius";
    }

    [(CABackdropLayer *)backgroundRadiusBackdropLayer addAnimation:v15 forKey:v16];
    v6 = v8;
  }

  if (self->_clearColorAnimationNeeded)
  {
    v18 = 0.15;
  }

  else
  {
    v18 = 0.25;
  }

  v19 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
  [v19 setBeginTime:v3 + 0.5];
  [v19 setKeyTimes:&unk_283079578];
  v88[0] = &unk_283078AE0;
  v20 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
  v88[1] = v20;
  v88[2] = &unk_283078AE0;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:3];
  [v19 setValues:v21];

  [v19 setDuration:0.31];
  [v19 setRemovedOnCompletion:0];
  v79 = v5;
  [v19 setFillMode:v5];
  v22 = [MEMORY[0x277CD9EF8] functionWithName:v6];
  v87[0] = v22;
  v78 = v6;
  v23 = [MEMORY[0x277CD9EF8] functionWithName:v6];
  v87[1] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:2];
  [v19 setTimingFunctions:v24];

  if (![(CSMagSafeAccessoryView *)self isReduceMotionEnabled])
  {
    [(CALayer *)self->_splashRing1 addAnimation:v19 forKey:@"opacity"];
    if (self->_clearColorAnimationNeeded)
    {
      v25 = 0.2;
    }

    else
    {
      v25 = 0.25;
    }

    [v19 setBeginTime:v3 + 0.6];
    v86[0] = &unk_283078AE0;
    v26 = [MEMORY[0x277CCABB0] numberWithDouble:v25];
    v86[1] = v26;
    v86[2] = &unk_283078AE0;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:3];
    [v19 setValues:v27];

    [(CALayer *)self->_splashRing2 addAnimation:v19 forKey:@"opacity"];
  }

  if (self->_clearColorAnimationNeeded)
  {
    v28 = 0.1;
  }

  else
  {
    v28 = 1.0;
  }

  [v19 setBeginTime:v3 + 0.71];
  [v19 setKeyTimes:&unk_283079590];
  v85[0] = &unk_283078AE0;
  v29 = [MEMORY[0x277CCABB0] numberWithDouble:v28];
  v85[1] = v29;
  v85[2] = &unk_283078AE0;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:3];
  [v19 setValues:v30];

  [v19 setDuration:1.37];
  [(CALayer *)self->_splashRing3 addAnimation:v19 forKey:@"opacity"];
  if (self->_clearColorAnimationNeeded)
  {
    v31 = 0.2;
  }

  else
  {
    v31 = 1.0;
  }

  [v19 setBeginTime:v3 + 0.65];
  [v19 setKeyTimes:&unk_2830795A8];
  v84[0] = &unk_283078AE0;
  v32 = [MEMORY[0x277CCABB0] numberWithDouble:v31];
  v84[1] = v32;
  v84[2] = &unk_283078AE0;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:3];
  [v19 setValues:v33];

  [v19 setDuration:0.97];
  [(CALayer *)self->_splashRing4 addAnimation:v19 forKey:@"opacity"];
  v34 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"transform.scale.xy"];
  [v34 setBeginTime:v3 + 0.5];
  [v34 setKeyTimes:&unk_2830795C0];
  [v34 setValues:&unk_2830795D8];
  [v34 setDuration:0.3];
  [v34 setRemovedOnCompletion:0];
  [v34 setFillMode:v5];
  LODWORD(v35) = 1059816735;
  LODWORD(v36) = 1.0;
  v37 = [MEMORY[0x277CD9EF8] functionWithControlPoints:0.0 :0.0 :v35 :v36];
  [v34 setTimingFunction:v37];

  v38 = v6;
  if (![(CSMagSafeAccessoryView *)self isReduceMotionEnabled])
  {
    [(CALayer *)self->_splashRing1 addAnimation:v34 forKey:@"transform.scale.xy"];
    v39 = [MEMORY[0x277CD9EF8] functionWithName:v6];
    [v34 setTimingFunction:v39];

    [(CALayer *)self->_splashRing2 addAnimation:v34 forKey:@"transform.scale.xy"];
    [v34 setBeginTime:v3 + 0.7];
    [v34 setDuration:1.07];
    [v34 setValues:&unk_2830795F0];
    LODWORD(v40) = 1.0;
    LODWORD(v41) = 1042536202;
    v42 = [MEMORY[0x277CD9EF8] functionWithControlPoints:0.0 :0.0 :v41 :v40];
    [v34 setTimingFunction:v42];

    [(CALayer *)self->_splashRing3 addAnimation:v34 forKey:@"transform.scale.xy"];
    [v34 setBeginTime:v3 + 0.64];
    [v34 setDuration:0.85];
    [v34 setValues:&unk_283079608];
    LODWORD(v43) = 1.0;
    LODWORD(v44) = 1042536202;
    v45 = [MEMORY[0x277CD9EF8] functionWithControlPoints:0.0 :0.0 :v44 :v43];
    [v34 setTimingFunction:v45];

    [(CALayer *)self->_splashRing4 addAnimation:v34 forKey:@"transform.scale.xy"];
  }

  v46 = MEMORY[0x277CDA7B8];
  if (self->_clearColorAnimationNeeded)
  {
    v47 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
    [v47 setBeginTime:v3 + 0.48];
    [v47 setKeyTimes:&unk_283079620];
    [v47 setValues:&unk_283079638];
    [v47 setDuration:0.1];
    [v47 setRemovedOnCompletion:0];
    [v47 setFillMode:v5];
    v48 = [MEMORY[0x277CD9EF8] functionWithName:*v46];
    [v47 setTimingFunction:v48];

    [(CABackdropLayer *)self->_trackRingBlurBackdropLayer addAnimation:v47 forKey:@"opacity"];
  }

  if (![(CSMagSafeAccessoryView *)self isReduceMotionEnabled])
  {
    v49 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"transform.scale.xy"];
    [v49 setBeginTime:v3 + 0.6];
    [v49 setKeyTimes:&unk_283079650];
    [v49 setValues:&unk_283079668];
    [v49 setDuration:0.18];
    [v49 setRemovedOnCompletion:0];
    [v49 setFillMode:v5];
    LODWORD(v50) = 1053944709;
    LODWORD(v51) = 1053609165;
    LODWORD(v52) = 1.0;
    v53 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v50 :0.0 :v51 :v52];
    [v49 setTimingFunction:v53];

    [(CSRingLayer *)self->_trackRing addAnimation:v49 forKey:@"transform.scale.xy"];
    if (self->_clearColorAnimationNeeded)
    {
      [(CSRingLayer *)self->_trackRingBlurLayer addAnimation:v49 forKey:@"transform.scale.xy"];
    }

    v54 = [(CSMagSafeAccessoryView *)self configuration];
    v55 = [v54 ring];
    [v55 lineWidth];
    v57 = v56;

    v58 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"lineWidth"];
    [v58 setBeginTime:v3 + 0.14];
    [v58 setKeyTimes:&unk_283079680];
    v59 = [MEMORY[0x277CCABB0] numberWithDouble:80.0];
    v83[0] = v59;
    v83[1] = &unk_283078BA0;
    v83[2] = &unk_283078BB0;
    v60 = [MEMORY[0x277CCABB0] numberWithDouble:v57];
    v83[3] = v60;
    v61 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:4];
    [v58 setValues:v61];

    [v58 setDuration:1.34];
    [v58 setRemovedOnCompletion:0];
    [v58 setFillMode:v79];
    LODWORD(v62) = 1036831949;
    LODWORD(v63) = 1.0;
    LODWORD(v64) = 1.0;
    v65 = [MEMORY[0x277CD9EF8] functionWithControlPoints:0.0 :v62 :v63 :v64];
    v82[0] = v65;
    v66 = [MEMORY[0x277CD9EF8] functionWithName:*v46];
    v82[1] = v66;
    v67 = [MEMORY[0x277CD9EF8] functionWithName:v78];
    v82[2] = v67;
    v68 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:3];
    [v58 setTimingFunctions:v68];

    [(CSRingLayer *)self->_trackRing addAnimation:v58 forKey:@"lineWidth"];
    if (self->_clearColorAnimationNeeded)
    {
      [(CSRingLayer *)self->_trackRingBlurLayer addAnimation:v58 forKey:@"lineWidth"];
    }

    v38 = v78;
  }

  if (self->_clearColorAnimationNeeded)
  {
    v69 = 0.2;
  }

  else
  {
    v69 = 1.0;
  }

  v70 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
  [v70 setBeginTime:v3 + 0.63];
  [v70 setKeyTimes:&unk_283079698];
  v81[0] = &unk_283078AE0;
  v71 = [MEMORY[0x277CCABB0] numberWithDouble:v69];
  v81[1] = v71;
  v72 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:2];
  [v70 setValues:v72];

  [v70 setDuration:0.06];
  [v70 setRemovedOnCompletion:0];
  [v70 setFillMode:v79];
  v73 = [MEMORY[0x277CD9EF8] functionWithName:v38];
  [v70 setTimingFunction:v73];

  [(CSRingLayer *)self->_trackRing addAnimation:v70 forKey:@"opacity"];
  if (self->_clearColorAnimationNeeded)
  {
    v80[0] = &unk_283078AE0;
    v74 = [MEMORY[0x277CCABB0] numberWithDouble:v69 * 3.0];
    v80[1] = v74;
    v75 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:2];
    [v70 setValues:v75];

    [(CSRingLayer *)self->_trackRingBlurLayer addAnimation:v70 forKey:@"opacity"];
  }

  else
  {
    v76 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"filters.colorBrightness.inputAmount"];
    [v76 setKeyTimes:&unk_2830796B0];
    [v76 setValues:&unk_2830796C8];
    [v76 setDuration:2.6];
    [v76 setRemovedOnCompletion:0];
    [v76 setFillMode:v79];
    v77 = [MEMORY[0x277CD9EF8] functionWithName:v38];
    [v76 setTimingFunction:v77];

    [(CSRingLayer *)self->_trackRing addAnimation:v76 forKey:@"filters.colorBrightness.inputAmount"];
  }
}

- (void)_dismissAnimation
{
  v31[2] = *MEMORY[0x277D85DE8];
  v3 = CACurrentMediaTime();
  if (self->_clearColorAnimationNeeded)
  {
    v4 = 0.2;
  }

  else
  {
    v4 = 1.0;
  }

  v5 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
  [v5 setKeyTimes:&unk_2830796E0];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
  v31[0] = v6;
  v31[1] = &unk_283078AE0;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
  [v5 setValues:v7];

  [v5 setDuration:0.12];
  [v5 setRemovedOnCompletion:0];
  v8 = *MEMORY[0x277CDA238];
  [v5 setFillMode:*MEMORY[0x277CDA238]];
  v9 = *MEMORY[0x277CDA7C8];
  v10 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
  [v5 setTimingFunction:v10];

  [(CSRingLayer *)self->_trackRing addAnimation:v5 forKey:@"fadeOut"];
  if (self->_clearColorAnimationNeeded)
  {
    [(CABackdropLayer *)self->_trackRingBlurBackdropLayer addAnimation:v5 forKey:@"fadeOut"];
    [(CSRingLayer *)self->_trackRingBlurLayer addAnimation:v5 forKey:@"fadeOut"];
  }

  if (![(CSMagSafeAccessoryView *)self isReduceMotionEnabled])
  {
    v11 = [(CSMagSafeAccessoryView *)self configuration];
    v12 = [v11 ring];
    [v12 lineWidth];
    v14 = v13;

    v15 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"lineWidth"];
    [v15 setKeyTimes:&unk_2830796F8];
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:v14];
    v30[0] = v16;
    v30[1] = &unk_283078AE0;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
    [v15 setValues:v17];

    [v15 setDuration:0.12];
    [v15 setRemovedOnCompletion:0];
    [v15 setFillMode:v8];
    v18 = [MEMORY[0x277CD9EF8] functionWithName:v9];
    [v15 setTimingFunction:v18];

    [(CSRingLayer *)self->_trackRing addAnimation:v15 forKey:@"lineWidthDismiss"];
    if (self->_clearColorAnimationNeeded)
    {
      [(CSRingLayer *)self->_trackRingBlurLayer addAnimation:v15 forKey:@"lineWidthDismiss"];
    }
  }

  if ([(CSMagSafeAccessoryView *)self isReduceTransparencyEnabled])
  {
    v19 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
    [v19 setKeyTimes:&unk_283079710];
    [v19 setValues:&unk_283079728];
    [v19 setDuration:0.26];
    [v19 setRemovedOnCompletion:0];
    [v19 setFillMode:v8];
    v20 = [MEMORY[0x277CD9EF8] functionWithName:v9];
    [v19 setTimingFunction:v20];

    [(CABackdropLayer *)self->_averageColorBackdropLayer addAnimation:v19 forKey:@"opacity"];
    [(CABackdropLayer *)self->_backgroundBackdropLayer addAnimation:v19 forKey:@"opacity"];
  }

  else
  {
    v19 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"filters.colorBrightness.inputAmount"];
    [v19 setBeginTime:v3 + 0.07];
    [v19 setKeyTimes:&unk_283079740];
    [v19 setValues:&unk_283079758];
    [v19 setDuration:0.26];
    [v19 setRemovedOnCompletion:0];
    [v19 setFillMode:v8];
    v21 = [MEMORY[0x277CD9EF8] functionWithName:v9];
    [v19 setTimingFunction:v21];

    [(CABackdropLayer *)self->_backgroundBackdropLayer addAnimation:v19 forKey:@"brightnessDismiss"];
    v22 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"filters.colorSaturate.inputAmount"];
    [v22 setBeginTime:v3 + 0.07];
    [v22 setKeyTimes:&unk_283079770];
    [v22 setValues:&unk_283079788];
    [v22 setDuration:0.26];
    [v22 setRemovedOnCompletion:0];
    [v22 setFillMode:v8];
    v23 = [MEMORY[0x277CD9EF8] functionWithName:v9];
    [v22 setTimingFunction:v23];

    [(CABackdropLayer *)self->_backgroundBackdropLayer addAnimation:v22 forKey:@"dismissSaturation"];
    if ([(CSMagSafeAccessoryView *)self isReduceMotionEnabled])
    {
      v24 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
      [v24 setKeyTimes:&unk_2830797D0];
      [v24 setValues:&unk_2830797E8];
      [v24 setDuration:0.26];
      [v24 setRemovedOnCompletion:0];
      [v24 setFillMode:v8];
      v25 = [MEMORY[0x277CD9EF8] functionWithName:v9];
      [v24 setTimingFunction:v25];

      backgroundRadiusBackdropLayer = self->_backgroundRadiusBackdropLayer;
      v27 = v24;
      v28 = @"opacity";
    }

    else
    {
      v24 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"filters.gaussianBlur.inputRadius"];
      [v24 setBeginTime:v3 + 0.07];
      [v24 setKeyTimes:&unk_2830797A0];
      [v24 setValues:&unk_2830797B8];
      [v24 setDuration:0.26];
      [v24 setRemovedOnCompletion:0];
      [v24 setFillMode:v8];
      v29 = [MEMORY[0x277CD9EF8] functionWithName:v9];
      [v24 setTimingFunction:v29];

      backgroundRadiusBackdropLayer = self->_backgroundBackdropLayer;
      v28 = @"dismissGaussianBlur";
      v27 = v24;
    }

    [(CABackdropLayer *)backgroundRadiusBackdropLayer addAnimation:v27 forKey:v28];
  }
}

- (void)_runAnimationWithType:(unint64_t)a3
{
  if (a3 == 1)
  {
    [(CSMagSafeAccessoryTrayView *)self _dismissAnimation];
  }

  else if (!a3)
  {
    [(CSMagSafeAccessoryTrayView *)self _presentAnimation];
  }
}

- (void)performAnimation:(unint64_t)a3 completionHandler:(id)a4
{
  v6 = MEMORY[0x277CD9FF0];
  v7 = a4;
  [v6 begin];
  [MEMORY[0x277CD9FF0] setCompletionBlock:v7];

  [(CSMagSafeAccessoryTrayView *)self _runAnimationWithType:a3];
  v8 = MEMORY[0x277CD9FF0];

  [v8 commit];
}

@end