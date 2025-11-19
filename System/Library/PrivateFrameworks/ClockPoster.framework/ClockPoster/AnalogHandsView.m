@interface AnalogHandsView
- (AnalogHandsView)initWithFixedSize:(CGSize)a3;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (id)hourHandConfiguration;
- (id)minuteHandConfiguration;
- (id)secondHandConfiguration;
- (void)_startNewSecondHandAnimation;
- (void)_stopHandAnimation;
- (void)setOverrideDate:(id)a3;
@end

@implementation AnalogHandsView

- (AnalogHandsView)initWithFixedSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v6 scale];
  UIRoundToScale();
  self->_scaleFactor = v7;

  self->_size.width = width;
  self->_size.height = height;
  v8 = [MEMORY[0x1E695B4F8] currentDevice];
  v11.receiver = self;
  v11.super_class = AnalogHandsView;
  v9 = [(CLKUIAnalogHandsView *)&v11 initForDevice:v8];

  return v9;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v9.receiver = self;
  v9.super_class = AnalogHandsView;
  [(CLKUIAnalogHandsView *)&v9 sizeThatFits:a3.width, a3.height];
  scaleFactor = self->_scaleFactor;
  v6 = v5 * scaleFactor;
  v8 = v7 * scaleFactor;
  result.height = v8;
  result.width = v6;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(AnalogHandsView *)self sizeThatFits:1.79769313e308, 1.79769313e308];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setOverrideDate:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(CLKUIAnalogHandsView *)self setFrozen:1];
    [(AnalogHandsView *)self _stopHandAnimation];
    v5 = [(CLKUIAnalogHandsView *)self calendar];
    CLKHourMinuteSecondAnglesForTime();

    v6 = [(CLKUIAnalogHandsView *)self hourHandView];
    [v6 setZRotation:0.0];

    v7 = [(CLKUIAnalogHandsView *)self minuteHandView];
    [v7 setZRotation:0.0];

    v8 = [(CLKUIAnalogHandsView *)self secondHandView];
    [v8 setZRotation:0.0];
  }

  else
  {
    [(CLKUIAnalogHandsView *)self setFrozen:0];
    [(AnalogHandsView *)self _startNewSecondHandAnimation];
  }
}

- (void)_startNewSecondHandAnimation
{
  v9 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.rotation"];
  LODWORD(v3) = 2139095040;
  [v9 setRepeatCount:v3];
  v4 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED8]];
  [v9 setTimingFunction:v4];

  [v9 setByValue:&unk_1F5E8CC18];
  [v9 setDuration:*MEMORY[0x1E6994698]];
  v5 = [(CLKUIAnalogHandsView *)self device];
  [(AnalogHandsView *)self _timeAnimationFramesPerSecondForDevice:v5];
  [v9 setFrameInterval:1.0 / v6];

  [v9 setDiscretizesTime:1];
  v7 = [(CLKUIAnalogHandsView *)self secondHandView];
  v8 = [v7 layer];
  [v8 addAnimation:v9 forKey:@"time"];
}

- (void)_stopHandAnimation
{
  v3 = [(CLKUIAnalogHandsView *)self hourHandView];
  v4 = [v3 layer];
  [v4 removeAnimationForKey:@"time"];

  v5 = [(CLKUIAnalogHandsView *)self minuteHandView];
  v6 = [v5 layer];
  [v6 removeAnimationForKey:@"time"];

  v8 = [(CLKUIAnalogHandsView *)self secondHandView];
  v7 = [v8 layer];
  [v7 removeAnimationForKey:@"time"];
}

- (id)hourHandConfiguration
{
  v3 = MEMORY[0x1E69946A0];
  v4 = [MEMORY[0x1E695B4F8] currentDevice];
  v5 = [v3 defaultHourConfigurationForDevice:v4];

  scaleFactor = self->_scaleFactor;
  [v5 handWidth];
  [v5 setHandWidth:v7 * (scaleFactor * 0.8)];
  [v5 pegRadius];
  [v5 setPegRadius:scaleFactor * v8];
  [v5 pegStrokeWidth];
  [v5 setPegStrokeWidth:scaleFactor * v9];
  [v5 armWidth];
  [v5 setArmWidth:scaleFactor * v10];
  [v5 armLength];
  [v5 setArmLength:scaleFactor * v11];
  [v5 dropShadowRadius];
  [v5 setDropShadowRadius:scaleFactor * v12];
  [v5 radialShadowRadius];
  [v5 setRadialShadowRadius:scaleFactor * v13];
  [v5 directionalShadowOffset];
  v15 = scaleFactor * v14;
  [v5 directionalShadowOffset];
  [v5 setDirectionalShadowOffset:{v15, scaleFactor * v16}];
  v17 = [(AnalogHandsView *)self secondHandConfiguration];
  [v17 handLength];
  v19 = v18;
  [v5 armLength];
  v21 = -(v20 - v19 * 0.54);
  [v5 pegRadius];
  v23 = v21 + v22 * -0.5;
  [v5 pegStrokeWidth];
  [v5 setHandLength:v23 - v24];

  v25 = [v5 cp_handConfigurationRoundedToScaleOfView:self];

  return v25;
}

- (id)minuteHandConfiguration
{
  v3 = MEMORY[0x1E69946A0];
  v4 = [MEMORY[0x1E695B4F8] currentDevice];
  v5 = [v3 defaultMinuteConfigurationForDevice:v4];

  scaleFactor = self->_scaleFactor;
  [v5 handWidth];
  [v5 setHandWidth:v7 * (scaleFactor * 0.8)];
  [v5 pegRadius];
  [v5 setPegRadius:scaleFactor * v8];
  [v5 pegStrokeWidth];
  [v5 setPegStrokeWidth:scaleFactor * v9];
  [v5 armWidth];
  [v5 setArmWidth:scaleFactor * v10];
  [v5 armLength];
  [v5 setArmLength:scaleFactor * v11];
  [v5 dropShadowRadius];
  [v5 setDropShadowRadius:scaleFactor * v12];
  [v5 radialShadowRadius];
  [v5 setRadialShadowRadius:scaleFactor * v13];
  [v5 directionalShadowOffset];
  v15 = scaleFactor * v14;
  [v5 directionalShadowOffset];
  [v5 setDirectionalShadowOffset:{v15, scaleFactor * v16}];
  v17 = [(AnalogHandsView *)self secondHandConfiguration];
  [v17 handLength];
  v19 = v18;
  [v5 armLength];
  v21 = -(v20 - v19 * 0.92);
  [v5 pegRadius];
  v23 = v21 + v22 * -0.5;
  [v5 pegStrokeWidth];
  [v5 setHandLength:v23 - v24];

  v25 = [v5 cp_handConfigurationRoundedToScaleOfView:self];

  return v25;
}

- (id)secondHandConfiguration
{
  v3 = MEMORY[0x1E69946A0];
  v4 = [MEMORY[0x1E695B4F8] currentDevice];
  v5 = [v3 defaultSecondConfigurationForDevice:v4];

  scaleFactor = self->_scaleFactor;
  [v5 handWidth];
  [v5 setHandWidth:scaleFactor * v7];
  height = self->_size.height;
  v9 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v9 scale];
  UIRoundToScale();
  [v5 setHandLength:?];

  [v5 pegRadius];
  [v5 setPegRadius:scaleFactor * 1.3333 * v10];
  [v5 pegStrokeWidth];
  [v5 setPegStrokeWidth:scaleFactor / 1.3333 * v11];
  [v5 tailLength];
  [v5 setTailLength:scaleFactor * v12];
  [v5 dropShadowRadius];
  [v5 setDropShadowRadius:scaleFactor * v13];
  [v5 radialShadowRadius];
  [v5 setRadialShadowRadius:scaleFactor * v14];
  [v5 setRadialShadowOpacity:0.15];
  [v5 directionalShadowOffset];
  v16 = scaleFactor * v15;
  [v5 directionalShadowOffset];
  [v5 setDirectionalShadowOffset:{v16, scaleFactor * v17}];
  v18 = [v5 cp_handConfigurationRoundedToScaleOfView:self];

  return v18;
}

@end