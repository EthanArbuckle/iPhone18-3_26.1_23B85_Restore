@interface NTKAnalogHandsView
- (BOOL)_canRunTimeAnimation;
- (id)initForDevice:(id)device;
- (void)_addHourMinuteHandsTransitionLayers;
- (void)_enumerateHourHandViewsWithBlock:(id)block;
- (void)_enumerateMinuteHandViewsWithBlock:(id)block;
- (void)_enumerateSecondHandViewsWithBlock:(id)block;
- (void)_installAltViewsHour:(id)hour minute:(id)minute second:(id)second;
- (void)_removeHourMinuteHandsTransitionLayers;
- (void)_setAltHandsAlpha:(double)alpha;
- (void)_setHandsAlpha:(double)alpha;
- (void)applyHourMinuteHandsTransitionFraction:(double)fraction fromStrokeColor:(id)color fromFillColor:(id)fillColor toStrokeColor:(id)strokeColor toFillColor:(id)toFillColor;
- (void)applySecondHandColor:(id)color;
- (void)setOverrideDate:(id)date duration:(double)duration;
- (void)setTimeOffset:(double)offset;
@end

@implementation NTKAnalogHandsView

- (id)initForDevice:(id)device
{
  v7.receiver = self;
  v7.super_class = NTKAnalogHandsView;
  v3 = [(CLKUIAnalogHandsView *)&v7 initForDevice:device];
  if (v3)
  {
    v4 = +[NTKTimeOffsetManager sharedManager];
    [v4 timeOffset];
    v3[67] = v5;
  }

  return v3;
}

- (void)_enumerateSecondHandViewsWithBlock:(id)block
{
  blockCopy = block;
  v5.receiver = self;
  v5.super_class = NTKAnalogHandsView;
  [(CLKUIAnalogHandsView *)&v5 _enumerateSecondHandViewsWithBlock:blockCopy];
  if (self->_secondHandViewAlt)
  {
    blockCopy[2](blockCopy);
  }
}

- (void)_enumerateMinuteHandViewsWithBlock:(id)block
{
  blockCopy = block;
  v5.receiver = self;
  v5.super_class = NTKAnalogHandsView;
  [(CLKUIAnalogHandsView *)&v5 _enumerateMinuteHandViewsWithBlock:blockCopy];
  if (self->_minuteHandViewAlt)
  {
    blockCopy[2](blockCopy);
  }
}

- (void)_enumerateHourHandViewsWithBlock:(id)block
{
  blockCopy = block;
  v5.receiver = self;
  v5.super_class = NTKAnalogHandsView;
  [(CLKUIAnalogHandsView *)&v5 _enumerateHourHandViewsWithBlock:blockCopy];
  if (self->_hourHandViewAlt)
  {
    blockCopy[2](blockCopy);
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

- (void)setOverrideDate:(id)date duration:(double)duration
{
  dateCopy = date;
  v8 = self->_overrideDate;
  if ((CLKEqualObjects() & 1) == 0)
  {
    [(CLKUIAnalogHandsView *)self _stopTimeAnimation];
    displayTime = [(NTKAnalogHandsView *)self displayTime];
    v10 = displayTime;
    if (dateCopy)
    {
      v11 = dateCopy;
    }

    else
    {
      v11 = [displayTime dateByAddingTimeInterval:duration];
    }

    v12 = v11;
    objc_storeStrong(&self->_overrideDate, date);
    calendar = [(CLKUIAnalogHandsView *)self calendar];
    CLKHourMinuteSecondAnglesForTime();

    hourHandView = [(CLKUIAnalogHandsView *)self hourHandView];
    [hourHandView setZRotation:0.0];

    hourHandViewAlt = [(NTKAnalogHandsView *)self hourHandViewAlt];
    [hourHandViewAlt setZRotation:0.0];

    minuteHandView = [(CLKUIAnalogHandsView *)self minuteHandView];
    [minuteHandView setZRotation:0.0];

    minuteHandViewAlt = [(NTKAnalogHandsView *)self minuteHandViewAlt];
    [minuteHandViewAlt setZRotation:0.0];

    secondHandView = [(CLKUIAnalogHandsView *)self secondHandView];
    [secondHandView setZRotation:0.0];

    secondHandViewAlt = [(NTKAnalogHandsView *)self secondHandViewAlt];
    [secondHandViewAlt setZRotation:0.0];

    delegate = [(CLKUIAnalogHandsView *)self delegate];

    if (delegate)
    {
      delegate2 = [(CLKUIAnalogHandsView *)self delegate];
      hourHandView2 = [(CLKUIAnalogHandsView *)self hourHandView];
      [delegate2 overrideZRotation:hourHandView2 forHandView:0.0];

      hourHandViewAlt2 = [(NTKAnalogHandsView *)self hourHandViewAlt];

      if (hourHandViewAlt2)
      {
        delegate3 = [(CLKUIAnalogHandsView *)self delegate];
        hourHandViewAlt3 = [(NTKAnalogHandsView *)self hourHandViewAlt];
        [delegate3 overrideZRotation:hourHandViewAlt3 forHandView:0.0];
      }

      delegate4 = [(CLKUIAnalogHandsView *)self delegate];
      minuteHandView2 = [(CLKUIAnalogHandsView *)self minuteHandView];
      [delegate4 overrideZRotation:minuteHandView2 forHandView:0.0];

      minuteHandViewAlt2 = [(NTKAnalogHandsView *)self minuteHandViewAlt];

      if (minuteHandViewAlt2)
      {
        delegate5 = [(CLKUIAnalogHandsView *)self delegate];
        minuteHandViewAlt3 = [(NTKAnalogHandsView *)self minuteHandViewAlt];
        [delegate5 overrideZRotation:minuteHandViewAlt3 forHandView:0.0];
      }

      delegate6 = [(CLKUIAnalogHandsView *)self delegate];
      secondHandView2 = [(CLKUIAnalogHandsView *)self secondHandView];
      [delegate6 overrideZRotation:secondHandView2 forHandView:0.0];

      secondHandViewAlt2 = [(NTKAnalogHandsView *)self secondHandViewAlt];

      if (secondHandViewAlt2)
      {
        delegate7 = [(CLKUIAnalogHandsView *)self delegate];
        secondHandViewAlt3 = [(NTKAnalogHandsView *)self secondHandViewAlt];
        [delegate7 overrideZRotation:secondHandViewAlt3 forHandView:0.0];
      }
    }

    if (!dateCopy)
    {
      [(CLKUIAnalogHandsView *)self _startNewTimeAnimation];
    }
  }
}

- (void)setTimeOffset:(double)offset
{
  if ((CLKFloatEqualsFloat() & 1) == 0)
  {
    self->_timeOffset = offset;

    [(CLKUIAnalogHandsView *)self _startNewTimeAnimation];
  }
}

- (void)_setHandsAlpha:(double)alpha
{
  hourHandView = [(CLKUIAnalogHandsView *)self hourHandView];
  [hourHandView setAlpha:alpha];

  minuteHandView = [(CLKUIAnalogHandsView *)self minuteHandView];
  [minuteHandView setAlpha:alpha];

  secondHandView = [(CLKUIAnalogHandsView *)self secondHandView];
  [secondHandView setAlpha:alpha];

  hourHandView2 = [(CLKUIAnalogHandsView *)self hourHandView];
  shadowView = [hourHandView2 shadowView];
  [shadowView setAlpha:alpha];

  minuteHandView2 = [(CLKUIAnalogHandsView *)self minuteHandView];
  shadowView2 = [minuteHandView2 shadowView];
  [shadowView2 setAlpha:alpha];

  secondHandView2 = [(CLKUIAnalogHandsView *)self secondHandView];
  shadowView3 = [secondHandView2 shadowView];
  [shadowView3 setAlpha:alpha];
}

- (void)_setAltHandsAlpha:(double)alpha
{
  [(CLKUIHandView *)self->_hourHandViewAlt setAlpha:?];
  [(CLKUIHandView *)self->_minuteHandViewAlt setAlpha:alpha];
  [(CLKUIHandView *)self->_secondHandViewAlt setAlpha:alpha];
  shadowView = [(CLKUIHandView *)self->_hourHandViewAlt shadowView];
  [shadowView setAlpha:alpha];

  shadowView2 = [(CLKUIHandView *)self->_minuteHandViewAlt shadowView];
  [shadowView2 setAlpha:alpha];

  shadowView3 = [(CLKUIHandView *)self->_secondHandViewAlt shadowView];
  [shadowView3 setAlpha:alpha];
}

- (void)_installAltViewsHour:(id)hour minute:(id)minute second:(id)second
{
  hourCopy = hour;
  minuteCopy = minute;
  secondCopy = second;
  objc_storeStrong(&self->_hourHandViewAlt, hour);
  objc_storeStrong(&self->_minuteHandViewAlt, minute);
  objc_storeStrong(&self->_secondHandViewAlt, second);
  [(NTKAnalogHandsView *)self addSubview:self->_hourHandViewAlt];
  [(CLKUIHandView *)self->_hourHandViewAlt setNeedsLayout];
  [(NTKAnalogHandsView *)self addSubview:self->_minuteHandViewAlt];
  [(CLKUIHandView *)self->_minuteHandViewAlt setNeedsLayout];
  [(NTKAnalogHandsView *)self addSubview:self->_secondHandViewAlt];
  [(CLKUIHandView *)self->_secondHandViewAlt setNeedsLayout];
  if ([(CLKUIAnalogHandsView *)self useDirectionalShadows])
  {
    directionalShadowContainerView = [(CLKUIAnalogHandsView *)self directionalShadowContainerView];
    shadowView = [(CLKUIHandView *)self->_hourHandViewAlt shadowView];
    [directionalShadowContainerView addSubview:shadowView];

    directionalShadowContainerView2 = [(CLKUIAnalogHandsView *)self directionalShadowContainerView];
    shadowView2 = [(CLKUIHandView *)self->_minuteHandViewAlt shadowView];
    [directionalShadowContainerView2 addSubview:shadowView2];

    directionalShadowContainerView3 = [(CLKUIAnalogHandsView *)self directionalShadowContainerView];
    shadowView3 = [(CLKUIHandView *)self->_secondHandViewAlt shadowView];
    [directionalShadowContainerView3 addSubview:shadowView3];
  }
}

- (void)applySecondHandColor:(id)color
{
  v5.receiver = self;
  v5.super_class = NTKAnalogHandsView;
  colorCopy = color;
  [(CLKUIAnalogHandsView *)&v5 applySecondHandColor:colorCopy];
  [(NTKHandView *)self->_secondHandViewAlt setColor:colorCopy, v5.receiver, v5.super_class];
}

- (void)applyHourMinuteHandsTransitionFraction:(double)fraction fromStrokeColor:(id)color fromFillColor:(id)fillColor toStrokeColor:(id)strokeColor toFillColor:(id)toFillColor
{
  v14 = fabs(fraction) < 0.00000011920929;
  v13 = fabs(fraction + -1.0);
  v14 = v14 || v13 < 0.00000011920929;
  if (v14)
  {
    toFillColorCopy = toFillColor;
    strokeColorCopy = strokeColor;
    fillColorCopy = fillColor;
    colorCopy = color;
    [(NTKAnalogHandsView *)self _removeHourMinuteHandsTransitionLayers];
  }

  else
  {
    toFillColorCopy2 = toFillColor;
    strokeColorCopy2 = strokeColor;
    fillColorCopy2 = fillColor;
    colorCopy2 = color;
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
  -[CALayer setBorderColor:](self->_minuteHandTransitionBodyLayer, "setBorderColor:", [strokeColor CGColor]);
  -[CALayer setBorderColor:](self->_minuteHandTransitionPegLayer, "setBorderColor:", [strokeColor CGColor]);
  -[CALayer setBackgroundColor:](self->_minuteHandTransitionStemLayer, "setBackgroundColor:", [strokeColor CGColor]);
  -[CALayer setBackgroundColor:](self->_minuteHandTransitionBodyLayer, "setBackgroundColor:", [toFillColor CGColor]);
  -[CALayer setBackgroundColor:](self->_minuteHandTransitionPegLayer, "setBackgroundColor:", [toFillColor CGColor]);
  -[CALayer setBorderColor:](self->_hourHandTransitionBodyLayer, "setBorderColor:", [strokeColor CGColor]);
  -[CALayer setBackgroundColor:](self->_hourHandTransitionStemLayer, "setBackgroundColor:", [strokeColor CGColor]);
  -[CALayer setBackgroundColor:](self->_hourHandTransitionBodyLayer, "setBackgroundColor:", [toFillColor CGColor]);
  if (fraction > 0.6)
  {
    fillColorCopy3 = toFillColor;
  }

  else
  {
    fillColorCopy3 = fillColor;
  }

  if (fraction > 0.6)
  {
    colorCopy3 = strokeColor;
  }

  else
  {
    colorCopy3 = color;
  }

  v43 = colorCopy3;
  v44 = fillColorCopy3;
  minuteHandView = [(CLKUIAnalogHandsView *)self minuteHandView];
  [minuteHandView setColor:v43];

  hourHandView = [(CLKUIAnalogHandsView *)self hourHandView];
  [hourHandView setColor:v43];

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
  minuteHandConfiguration = [(CLKUIAnalogHandsView *)self minuteHandConfiguration];
  hourHandConfiguration = [(CLKUIAnalogHandsView *)self hourHandConfiguration];
  if (!self->_minuteHandTransitionPegLayer)
  {
    v4 = objc_opt_new();
    minuteHandTransitionPegLayer = self->_minuteHandTransitionPegLayer;
    self->_minuteHandTransitionPegLayer = v4;

    v6 = self->_minuteHandTransitionPegLayer;
    minuteHandDot = [(CLKUIAnalogHandsView *)self minuteHandDot];
    [minuteHandDot center];
    [(CALayer *)v6 setPosition:?];

    [minuteHandConfiguration pegRadius];
    v9 = v8;
    [minuteHandConfiguration pegStrokeWidth];
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
    [minuteHandConfiguration handWidth];
    v20 = v19;
    [minuteHandConfiguration handLength];
    [(CALayer *)self->_minuteHandTransitionBodyLayer setBounds:v17, v18, v20, v21];
    minuteHandView = [(CLKUIAnalogHandsView *)self minuteHandView];
    [minuteHandView bounds];
    v24 = v23 * 0.5;
    [minuteHandConfiguration handLength];
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
    [minuteHandConfiguration armWidth];
    v31 = v30;
    [minuteHandConfiguration armLength];
    v33 = v32;
    v34 = objc_opt_new();
    minuteHandTransitionStemLayer = self->_minuteHandTransitionStemLayer;
    self->_minuteHandTransitionStemLayer = v34;

    minuteHandView2 = [(CLKUIAnalogHandsView *)self minuteHandView];
    [minuteHandView2 bounds];
    v38 = v37 * 0.5;
    [minuteHandConfiguration handLength];
    v40 = v39;
    [minuteHandConfiguration armLength];
    v42 = v40 + v41 * 0.5;
    [(CALayer *)self->_minuteHandTransitionStemLayer setBounds:v28, v29, v31, v33];
    [(CALayer *)self->_minuteHandTransitionStemLayer setPosition:v38, v42];
    v43 = self->_minuteHandTransitionStemLayer;
    v44 = _disabledLayerActions();
    [(CALayer *)v43 setActions:v44];
  }

  if (!self->_hourHandTransitionBodyLayer)
  {
    hourHandView = [(CLKUIAnalogHandsView *)self hourHandView];
    v46 = objc_opt_new();
    hourHandTransitionBodyLayer = self->_hourHandTransitionBodyLayer;
    self->_hourHandTransitionBodyLayer = v46;

    v48 = *MEMORY[0x277CBF348];
    v49 = *(MEMORY[0x277CBF348] + 8);
    [hourHandConfiguration handWidth];
    v51 = v50;
    [hourHandConfiguration handLength];
    [(CALayer *)self->_hourHandTransitionBodyLayer setBounds:v48, v49, v51, v52];
    [hourHandView bounds];
    v54 = v53 * 0.5;
    [hourHandConfiguration handLength];
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
    [hourHandConfiguration armWidth];
    v62 = v61;
    [hourHandConfiguration armLength];
    v64 = v63;
    v65 = objc_opt_new();
    v66 = self->_hourHandTransitionStemLayer;
    self->_hourHandTransitionStemLayer = v65;

    hourHandView2 = [(CLKUIAnalogHandsView *)self hourHandView];
    [(CALayer *)self->_hourHandTransitionStemLayer setBounds:v59, v60, v62, v64];
    [hourHandView2 bounds];
    v69 = v68 * 0.5;
    [hourHandView2 bounds];
    [(CALayer *)self->_hourHandTransitionStemLayer setPosition:v69, v70 * 0.5];
    v71 = self->_hourHandTransitionStemLayer;
    v72 = _disabledLayerActions();
    [(CALayer *)v71 setActions:v72];

    hourHandTransitionStemLayer = self->_hourHandTransitionStemLayer;
  }

  superlayer = [(CALayer *)hourHandTransitionStemLayer superlayer];

  if (!superlayer)
  {
    hourHandView3 = [(CLKUIAnalogHandsView *)self hourHandView];
    transitionContainerView = [hourHandView3 transitionContainerView];
    layer = [transitionContainerView layer];
    [layer addSublayer:self->_hourHandTransitionStemLayer];
  }

  superlayer2 = [(CALayer *)self->_hourHandTransitionBodyLayer superlayer];

  if (!superlayer2)
  {
    hourHandView4 = [(CLKUIAnalogHandsView *)self hourHandView];
    transitionContainerView2 = [hourHandView4 transitionContainerView];
    layer2 = [transitionContainerView2 layer];
    [layer2 addSublayer:self->_hourHandTransitionBodyLayer];
  }

  superlayer3 = [(CALayer *)self->_minuteHandTransitionStemLayer superlayer];

  if (!superlayer3)
  {
    minuteHandView3 = [(CLKUIAnalogHandsView *)self minuteHandView];
    transitionContainerView3 = [minuteHandView3 transitionContainerView];
    layer3 = [transitionContainerView3 layer];
    [layer3 addSublayer:self->_minuteHandTransitionStemLayer];
  }

  superlayer4 = [(CALayer *)self->_minuteHandTransitionPegLayer superlayer];

  if (!superlayer4)
  {
    minuteHandView4 = [(CLKUIAnalogHandsView *)self minuteHandView];
    transitionContainerView4 = [minuteHandView4 transitionContainerView];
    layer4 = [transitionContainerView4 layer];
    [layer4 addSublayer:self->_minuteHandTransitionPegLayer];
  }

  superlayer5 = [(CALayer *)self->_minuteHandTransitionBodyLayer superlayer];

  if (!superlayer5)
  {
    minuteHandView5 = [(CLKUIAnalogHandsView *)self minuteHandView];
    transitionContainerView5 = [minuteHandView5 transitionContainerView];
    layer5 = [transitionContainerView5 layer];
    [layer5 addSublayer:self->_minuteHandTransitionBodyLayer];
  }
}

@end