@interface NTKAnalogHandsView
- (BOOL)_canRunTimeAnimation;
- (id)initForDevice:(id)a3;
- (void)_addHourMinuteHandsTransitionLayers;
- (void)_enumerateHourHandViewsWithBlock:(id)a3;
- (void)_enumerateMinuteHandViewsWithBlock:(id)a3;
- (void)_enumerateSecondHandViewsWithBlock:(id)a3;
- (void)_installAltViewsHour:(id)a3 minute:(id)a4 second:(id)a5;
- (void)_removeHourMinuteHandsTransitionLayers;
- (void)_setAltHandsAlpha:(double)a3;
- (void)_setHandsAlpha:(double)a3;
- (void)applyHourMinuteHandsTransitionFraction:(double)a3 fromStrokeColor:(id)a4 fromFillColor:(id)a5 toStrokeColor:(id)a6 toFillColor:(id)a7;
- (void)applySecondHandColor:(id)a3;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
- (void)setTimeOffset:(double)a3;
@end

@implementation NTKAnalogHandsView

- (id)initForDevice:(id)a3
{
  v7.receiver = self;
  v7.super_class = NTKAnalogHandsView;
  v3 = [(CLKUIAnalogHandsView *)&v7 initForDevice:a3];
  if (v3)
  {
    v4 = +[NTKTimeOffsetManager sharedManager];
    [v4 timeOffset];
    v3[67] = v5;
  }

  return v3;
}

- (void)_enumerateSecondHandViewsWithBlock:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = NTKAnalogHandsView;
  [(CLKUIAnalogHandsView *)&v5 _enumerateSecondHandViewsWithBlock:v4];
  if (self->_secondHandViewAlt)
  {
    v4[2](v4);
  }
}

- (void)_enumerateMinuteHandViewsWithBlock:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = NTKAnalogHandsView;
  [(CLKUIAnalogHandsView *)&v5 _enumerateMinuteHandViewsWithBlock:v4];
  if (self->_minuteHandViewAlt)
  {
    v4[2](v4);
  }
}

- (void)_enumerateHourHandViewsWithBlock:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = NTKAnalogHandsView;
  [(CLKUIAnalogHandsView *)&v5 _enumerateHourHandViewsWithBlock:v4];
  if (self->_hourHandViewAlt)
  {
    v4[2](v4);
  }
}

- (BOOL)_canRunTimeAnimation
{
  if (self->_overrideDate)
  {
    return 0;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = NTKAnalogHandsView;
  return [(CLKUIAnalogHandsView *)&v5 _canRunTimeAnimation];
}

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v7 = a3;
  v8 = self->_overrideDate;
  if ((CLKEqualObjects() & 1) == 0)
  {
    [(CLKUIAnalogHandsView *)self _stopTimeAnimation];
    v9 = [(NTKAnalogHandsView *)self displayTime];
    v10 = v9;
    if (v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = [v9 dateByAddingTimeInterval:a4];
    }

    v12 = v11;
    objc_storeStrong(&self->_overrideDate, a3);
    v13 = [(CLKUIAnalogHandsView *)self calendar];
    CLKHourMinuteSecondAnglesForTime();

    v14 = [(CLKUIAnalogHandsView *)self hourHandView];
    [v14 setZRotation:0.0];

    v15 = [(NTKAnalogHandsView *)self hourHandViewAlt];
    [v15 setZRotation:0.0];

    v16 = [(CLKUIAnalogHandsView *)self minuteHandView];
    [v16 setZRotation:0.0];

    v17 = [(NTKAnalogHandsView *)self minuteHandViewAlt];
    [v17 setZRotation:0.0];

    v18 = [(CLKUIAnalogHandsView *)self secondHandView];
    [v18 setZRotation:0.0];

    v19 = [(NTKAnalogHandsView *)self secondHandViewAlt];
    [v19 setZRotation:0.0];

    v20 = [(CLKUIAnalogHandsView *)self delegate];

    if (v20)
    {
      v21 = [(CLKUIAnalogHandsView *)self delegate];
      v22 = [(CLKUIAnalogHandsView *)self hourHandView];
      [v21 overrideZRotation:v22 forHandView:0.0];

      v23 = [(NTKAnalogHandsView *)self hourHandViewAlt];

      if (v23)
      {
        v24 = [(CLKUIAnalogHandsView *)self delegate];
        v25 = [(NTKAnalogHandsView *)self hourHandViewAlt];
        [v24 overrideZRotation:v25 forHandView:0.0];
      }

      v26 = [(CLKUIAnalogHandsView *)self delegate];
      v27 = [(CLKUIAnalogHandsView *)self minuteHandView];
      [v26 overrideZRotation:v27 forHandView:0.0];

      v28 = [(NTKAnalogHandsView *)self minuteHandViewAlt];

      if (v28)
      {
        v29 = [(CLKUIAnalogHandsView *)self delegate];
        v30 = [(NTKAnalogHandsView *)self minuteHandViewAlt];
        [v29 overrideZRotation:v30 forHandView:0.0];
      }

      v31 = [(CLKUIAnalogHandsView *)self delegate];
      v32 = [(CLKUIAnalogHandsView *)self secondHandView];
      [v31 overrideZRotation:v32 forHandView:0.0];

      v33 = [(NTKAnalogHandsView *)self secondHandViewAlt];

      if (v33)
      {
        v34 = [(CLKUIAnalogHandsView *)self delegate];
        v35 = [(NTKAnalogHandsView *)self secondHandViewAlt];
        [v34 overrideZRotation:v35 forHandView:0.0];
      }
    }

    if (!v7)
    {
      [(CLKUIAnalogHandsView *)self _startNewTimeAnimation];
    }
  }
}

- (void)setTimeOffset:(double)a3
{
  if ((CLKFloatEqualsFloat() & 1) == 0)
  {
    self->_timeOffset = a3;

    [(CLKUIAnalogHandsView *)self _startNewTimeAnimation];
  }
}

- (void)_setHandsAlpha:(double)a3
{
  v5 = [(CLKUIAnalogHandsView *)self hourHandView];
  [v5 setAlpha:a3];

  v6 = [(CLKUIAnalogHandsView *)self minuteHandView];
  [v6 setAlpha:a3];

  v7 = [(CLKUIAnalogHandsView *)self secondHandView];
  [v7 setAlpha:a3];

  v8 = [(CLKUIAnalogHandsView *)self hourHandView];
  v9 = [v8 shadowView];
  [v9 setAlpha:a3];

  v10 = [(CLKUIAnalogHandsView *)self minuteHandView];
  v11 = [v10 shadowView];
  [v11 setAlpha:a3];

  v13 = [(CLKUIAnalogHandsView *)self secondHandView];
  v12 = [v13 shadowView];
  [v12 setAlpha:a3];
}

- (void)_setAltHandsAlpha:(double)a3
{
  [(CLKUIHandView *)self->_hourHandViewAlt setAlpha:?];
  [(CLKUIHandView *)self->_minuteHandViewAlt setAlpha:a3];
  [(CLKUIHandView *)self->_secondHandViewAlt setAlpha:a3];
  v5 = [(CLKUIHandView *)self->_hourHandViewAlt shadowView];
  [v5 setAlpha:a3];

  v6 = [(CLKUIHandView *)self->_minuteHandViewAlt shadowView];
  [v6 setAlpha:a3];

  v7 = [(CLKUIHandView *)self->_secondHandViewAlt shadowView];
  [v7 setAlpha:a3];
}

- (void)_installAltViewsHour:(id)a3 minute:(id)a4 second:(id)a5
{
  v17 = a3;
  v9 = a4;
  v10 = a5;
  objc_storeStrong(&self->_hourHandViewAlt, a3);
  objc_storeStrong(&self->_minuteHandViewAlt, a4);
  objc_storeStrong(&self->_secondHandViewAlt, a5);
  [(NTKAnalogHandsView *)self addSubview:self->_hourHandViewAlt];
  [(CLKUIHandView *)self->_hourHandViewAlt setNeedsLayout];
  [(NTKAnalogHandsView *)self addSubview:self->_minuteHandViewAlt];
  [(CLKUIHandView *)self->_minuteHandViewAlt setNeedsLayout];
  [(NTKAnalogHandsView *)self addSubview:self->_secondHandViewAlt];
  [(CLKUIHandView *)self->_secondHandViewAlt setNeedsLayout];
  if ([(CLKUIAnalogHandsView *)self useDirectionalShadows])
  {
    v11 = [(CLKUIAnalogHandsView *)self directionalShadowContainerView];
    v12 = [(CLKUIHandView *)self->_hourHandViewAlt shadowView];
    [v11 addSubview:v12];

    v13 = [(CLKUIAnalogHandsView *)self directionalShadowContainerView];
    v14 = [(CLKUIHandView *)self->_minuteHandViewAlt shadowView];
    [v13 addSubview:v14];

    v15 = [(CLKUIAnalogHandsView *)self directionalShadowContainerView];
    v16 = [(CLKUIHandView *)self->_secondHandViewAlt shadowView];
    [v15 addSubview:v16];
  }
}

- (void)applySecondHandColor:(id)a3
{
  v5.receiver = self;
  v5.super_class = NTKAnalogHandsView;
  v4 = a3;
  [(CLKUIAnalogHandsView *)&v5 applySecondHandColor:v4];
  [(NTKHandView *)self->_secondHandViewAlt setColor:v4, v5.receiver, v5.super_class];
}

- (void)applyHourMinuteHandsTransitionFraction:(double)a3 fromStrokeColor:(id)a4 fromFillColor:(id)a5 toStrokeColor:(id)a6 toFillColor:(id)a7
{
  v14 = fabs(a3) < 0.00000011920929;
  v13 = fabs(a3 + -1.0);
  v14 = v14 || v13 < 0.00000011920929;
  if (v14)
  {
    v15 = a7;
    v16 = a6;
    v17 = a5;
    v18 = a4;
    [(NTKAnalogHandsView *)self _removeHourMinuteHandsTransitionLayers];
  }

  else
  {
    v19 = a7;
    v20 = a6;
    v21 = a5;
    v22 = a4;
    [(NTKAnalogHandsView *)self _addHourMinuteHandsTransitionLayers];
  }

  CLKCompressFraction();
  v24 = v23;
  CLKCompressFraction();
  v26 = v25;
  CLKCompressFraction();
  *&v26 = v26;
  LODWORD(v27) = LODWORD(v26);
  [(CALayer *)self->_hourHandTransitionBodyLayer setOpacity:v27];
  LODWORD(v28) = LODWORD(v26);
  [(CALayer *)self->_minuteHandTransitionBodyLayer setOpacity:v28];
  LODWORD(v29) = LODWORD(v26);
  [(CALayer *)self->_minuteHandTransitionPegLayer setOpacity:v29];
  LODWORD(v30) = LODWORD(v26);
  [(CALayer *)self->_hourHandTransitionStemLayer setOpacity:v30];
  LODWORD(v31) = LODWORD(v26);
  [(CALayer *)self->_minuteHandTransitionStemLayer setOpacity:v31];
  memset(&v49, 0, sizeof(v49));
  CLKInterpolateBetweenFloatsClipped();
  CATransform3DMakeScale(&v49, v24, v32, 1.0);
  minuteHandTransitionBodyLayer = self->_minuteHandTransitionBodyLayer;
  v48 = v49;
  [(CALayer *)minuteHandTransitionBodyLayer setTransform:&v48];
  hourHandTransitionBodyLayer = self->_hourHandTransitionBodyLayer;
  v48 = v49;
  [(CALayer *)hourHandTransitionBodyLayer setTransform:&v48];
  minuteHandTransitionPegLayer = self->_minuteHandTransitionPegLayer;
  CATransform3DMakeScale(&v48, v24, v24, 1.0);
  [(CALayer *)minuteHandTransitionPegLayer setTransform:&v48];
  CLKInterpolateBetweenFloatsClipped();
  v37 = v36;
  [(CALayer *)self->_minuteHandTransitionBodyLayer setBorderWidth:?];
  [(CALayer *)self->_hourHandTransitionBodyLayer setBorderWidth:v37];
  v38 = self->_minuteHandTransitionPegLayer;
  CLKInterpolateBetweenFloatsClipped();
  [(CALayer *)v38 setBorderWidth:?];
  minuteHandTransitionStemLayer = self->_minuteHandTransitionStemLayer;
  CATransform3DMakeScale(&v48, v24, 1.0, 1.0);
  [(CALayer *)minuteHandTransitionStemLayer setTransform:&v48];
  hourHandTransitionStemLayer = self->_hourHandTransitionStemLayer;
  CATransform3DMakeScale(&v48, v24, 1.0, 1.0);
  [(CALayer *)hourHandTransitionStemLayer setTransform:&v48];
  -[CALayer setBorderColor:](self->_minuteHandTransitionBodyLayer, "setBorderColor:", [a6 CGColor]);
  -[CALayer setBorderColor:](self->_minuteHandTransitionPegLayer, "setBorderColor:", [a6 CGColor]);
  -[CALayer setBackgroundColor:](self->_minuteHandTransitionStemLayer, "setBackgroundColor:", [a6 CGColor]);
  -[CALayer setBackgroundColor:](self->_minuteHandTransitionBodyLayer, "setBackgroundColor:", [a7 CGColor]);
  -[CALayer setBackgroundColor:](self->_minuteHandTransitionPegLayer, "setBackgroundColor:", [a7 CGColor]);
  -[CALayer setBorderColor:](self->_hourHandTransitionBodyLayer, "setBorderColor:", [a6 CGColor]);
  -[CALayer setBackgroundColor:](self->_hourHandTransitionStemLayer, "setBackgroundColor:", [a6 CGColor]);
  -[CALayer setBackgroundColor:](self->_hourHandTransitionBodyLayer, "setBackgroundColor:", [a7 CGColor]);
  if (a3 > 0.6)
  {
    v41 = a7;
  }

  else
  {
    v41 = a5;
  }

  if (a3 > 0.6)
  {
    v42 = a6;
  }

  else
  {
    v42 = a4;
  }

  v43 = v42;
  v44 = v41;
  v45 = [(CLKUIAnalogHandsView *)self minuteHandView];
  [v45 setColor:v43];

  v46 = [(CLKUIAnalogHandsView *)self hourHandView];
  [v46 setColor:v43];

  [(CLKUIAnalogHandsView *)self setInlayColor:v44];
}

- (void)_removeHourMinuteHandsTransitionLayers
{
  [(CALayer *)self->_minuteHandTransitionBodyLayer removeFromSuperlayer];
  [(CALayer *)self->_minuteHandTransitionStemLayer removeFromSuperlayer];
  [(CALayer *)self->_minuteHandTransitionPegLayer removeFromSuperlayer];
  [(CALayer *)self->_hourHandTransitionBodyLayer removeFromSuperlayer];
  hourHandTransitionStemLayer = self->_hourHandTransitionStemLayer;

  [(CALayer *)hourHandTransitionStemLayer removeFromSuperlayer];
}

- (void)_addHourMinuteHandsTransitionLayers
{
  v93 = [(CLKUIAnalogHandsView *)self minuteHandConfiguration];
  v3 = [(CLKUIAnalogHandsView *)self hourHandConfiguration];
  if (!self->_minuteHandTransitionPegLayer)
  {
    v4 = objc_opt_new();
    minuteHandTransitionPegLayer = self->_minuteHandTransitionPegLayer;
    self->_minuteHandTransitionPegLayer = v4;

    v6 = self->_minuteHandTransitionPegLayer;
    v7 = [(CLKUIAnalogHandsView *)self minuteHandDot];
    [v7 center];
    [(CALayer *)v6 setPosition:?];

    [v93 pegRadius];
    v9 = v8;
    [v93 pegStrokeWidth];
    [(CALayer *)self->_minuteHandTransitionPegLayer setBounds:0.0, 0.0, v9 + v10 + v9 + v10, v9 + v10 + v9 + v10];
    v11 = self->_minuteHandTransitionPegLayer;
    v12 = _disabledLayerActions();
    [(CALayer *)v11 setActions:v12];

    v13 = self->_minuteHandTransitionPegLayer;
    [(CALayer *)v13 bounds];
    [(CALayer *)v13 setCornerRadius:v14 * 0.5];
  }

  if (!self->_minuteHandTransitionBodyLayer)
  {
    v15 = objc_opt_new();
    minuteHandTransitionBodyLayer = self->_minuteHandTransitionBodyLayer;
    self->_minuteHandTransitionBodyLayer = v15;

    v17 = *MEMORY[0x277CBF348];
    v18 = *(MEMORY[0x277CBF348] + 8);
    [v93 handWidth];
    v20 = v19;
    [v93 handLength];
    [(CALayer *)self->_minuteHandTransitionBodyLayer setBounds:v17, v18, v20, v21];
    v22 = [(CLKUIAnalogHandsView *)self minuteHandView];
    [v22 bounds];
    v24 = v23 * 0.5;
    [v93 handLength];
    [(CALayer *)self->_minuteHandTransitionBodyLayer setPosition:v24, v25 * 0.5];
    v26 = self->_minuteHandTransitionBodyLayer;
    v27 = _disabledLayerActions();
    [(CALayer *)v26 setActions:v27];

    [(CALayer *)self->_minuteHandTransitionBodyLayer setCornerRadius:v20 * 0.5];
  }

  if (!self->_minuteHandTransitionStemLayer)
  {
    v28 = *MEMORY[0x277CBF348];
    v29 = *(MEMORY[0x277CBF348] + 8);
    [v93 armWidth];
    v31 = v30;
    [v93 armLength];
    v33 = v32;
    v34 = objc_opt_new();
    minuteHandTransitionStemLayer = self->_minuteHandTransitionStemLayer;
    self->_minuteHandTransitionStemLayer = v34;

    v36 = [(CLKUIAnalogHandsView *)self minuteHandView];
    [v36 bounds];
    v38 = v37 * 0.5;
    [v93 handLength];
    v40 = v39;
    [v93 armLength];
    v42 = v40 + v41 * 0.5;
    [(CALayer *)self->_minuteHandTransitionStemLayer setBounds:v28, v29, v31, v33];
    [(CALayer *)self->_minuteHandTransitionStemLayer setPosition:v38, v42];
    v43 = self->_minuteHandTransitionStemLayer;
    v44 = _disabledLayerActions();
    [(CALayer *)v43 setActions:v44];
  }

  if (!self->_hourHandTransitionBodyLayer)
  {
    v45 = [(CLKUIAnalogHandsView *)self hourHandView];
    v46 = objc_opt_new();
    hourHandTransitionBodyLayer = self->_hourHandTransitionBodyLayer;
    self->_hourHandTransitionBodyLayer = v46;

    v48 = *MEMORY[0x277CBF348];
    v49 = *(MEMORY[0x277CBF348] + 8);
    [v3 handWidth];
    v51 = v50;
    [v3 handLength];
    [(CALayer *)self->_hourHandTransitionBodyLayer setBounds:v48, v49, v51, v52];
    [v45 bounds];
    v54 = v53 * 0.5;
    [v3 handLength];
    [(CALayer *)self->_hourHandTransitionBodyLayer setPosition:v54, v55 * 0.5];
    v56 = self->_hourHandTransitionBodyLayer;
    v57 = _disabledLayerActions();
    [(CALayer *)v56 setActions:v57];

    [(CALayer *)self->_hourHandTransitionBodyLayer setCornerRadius:v51 * 0.5];
  }

  hourHandTransitionStemLayer = self->_hourHandTransitionStemLayer;
  if (!hourHandTransitionStemLayer)
  {
    v59 = *MEMORY[0x277CBF348];
    v60 = *(MEMORY[0x277CBF348] + 8);
    [v3 armWidth];
    v62 = v61;
    [v3 armLength];
    v64 = v63;
    v65 = objc_opt_new();
    v66 = self->_hourHandTransitionStemLayer;
    self->_hourHandTransitionStemLayer = v65;

    v67 = [(CLKUIAnalogHandsView *)self hourHandView];
    [(CALayer *)self->_hourHandTransitionStemLayer setBounds:v59, v60, v62, v64];
    [v67 bounds];
    v69 = v68 * 0.5;
    [v67 bounds];
    [(CALayer *)self->_hourHandTransitionStemLayer setPosition:v69, v70 * 0.5];
    v71 = self->_hourHandTransitionStemLayer;
    v72 = _disabledLayerActions();
    [(CALayer *)v71 setActions:v72];

    hourHandTransitionStemLayer = self->_hourHandTransitionStemLayer;
  }

  v73 = [(CALayer *)hourHandTransitionStemLayer superlayer];

  if (!v73)
  {
    v74 = [(CLKUIAnalogHandsView *)self hourHandView];
    v75 = [v74 transitionContainerView];
    v76 = [v75 layer];
    [v76 addSublayer:self->_hourHandTransitionStemLayer];
  }

  v77 = [(CALayer *)self->_hourHandTransitionBodyLayer superlayer];

  if (!v77)
  {
    v78 = [(CLKUIAnalogHandsView *)self hourHandView];
    v79 = [v78 transitionContainerView];
    v80 = [v79 layer];
    [v80 addSublayer:self->_hourHandTransitionBodyLayer];
  }

  v81 = [(CALayer *)self->_minuteHandTransitionStemLayer superlayer];

  if (!v81)
  {
    v82 = [(CLKUIAnalogHandsView *)self minuteHandView];
    v83 = [v82 transitionContainerView];
    v84 = [v83 layer];
    [v84 addSublayer:self->_minuteHandTransitionStemLayer];
  }

  v85 = [(CALayer *)self->_minuteHandTransitionPegLayer superlayer];

  if (!v85)
  {
    v86 = [(CLKUIAnalogHandsView *)self minuteHandView];
    v87 = [v86 transitionContainerView];
    v88 = [v87 layer];
    [v88 addSublayer:self->_minuteHandTransitionPegLayer];
  }

  v89 = [(CALayer *)self->_minuteHandTransitionBodyLayer superlayer];

  if (!v89)
  {
    v90 = [(CLKUIAnalogHandsView *)self minuteHandView];
    v91 = [v90 transitionContainerView];
    v92 = [v91 layer];
    [v92 addSublayer:self->_minuteHandTransitionBodyLayer];
  }
}

@end