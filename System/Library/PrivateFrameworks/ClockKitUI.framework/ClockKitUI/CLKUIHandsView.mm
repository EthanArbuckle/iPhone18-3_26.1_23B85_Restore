@interface CLKUIHandsView
- (CLKUIHandsView)initWithDiameter:(double)a3 forDevice:(id)a4;
- (id)hourHandConfiguration;
- (id)minuteHandConfiguration;
- (id)secondHandConfiguration;
- (void)setOverrideDate:(id)a3;
@end

@implementation CLKUIHandsView

- (CLKUIHandsView)initWithDiameter:(double)a3 forDevice:(id)a4
{
  v8.receiver = self;
  v8.super_class = CLKUIHandsView;
  v5 = [(CLKUIAnalogHandsView *)&v8 initForDevice:a4];
  v6 = v5;
  if (v5)
  {
    [(CLKUIHandsView *)v5 setFrame:0.0, 0.0, a3, a3];
    [(CLKUIAnalogHandsView *)v6 setMinuteHandDotDiameter:1.0];
  }

  return v6;
}

- (id)hourHandConfiguration
{
  v16 = 0.0;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  v3 = [(CLKUIAnalogHandsView *)self device];
  ___LayoutConstants_block_invoke_4(v3, &v9);

  v8.receiver = self;
  v8.super_class = CLKUIHandsView;
  v4 = [(CLKUIAnalogHandsView *)&v8 hourHandConfiguration];
  v5 = *&v9;
  v6 = *(&v10 + 1);
  [v4 setHandLength:*(&v11 + 1)];
  [v4 setHandWidth:v5];
  [v4 setArmLength:*&v10];
  [v4 setArmWidth:*(&v9 + 1)];
  [v4 setSmoothingRadius:0.5];
  [v4 setPegRadius:v6 * 0.5];
  [v4 setPegStrokeWidth:(v5 - v6) * 0.5];
  [v4 setRadialShadowRadius:*&v11];
  [v4 setRadialShadowOpacity:*(&v15 + 1)];
  [v4 setInlayInsetRadius:v16];

  return v4;
}

- (id)minuteHandConfiguration
{
  v16 = 0.0;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  v3 = [(CLKUIAnalogHandsView *)self device];
  ___LayoutConstants_block_invoke_4(v3, &v9);

  v8.receiver = self;
  v8.super_class = CLKUIHandsView;
  v4 = [(CLKUIAnalogHandsView *)&v8 minuteHandConfiguration];
  v5 = *&v9;
  v6 = *(&v10 + 1);
  [v4 setHandLength:*&v12];
  [v4 setHandWidth:v5];
  [v4 setArmLength:*&v10];
  [v4 setArmWidth:*(&v9 + 1)];
  [v4 setSmoothingRadius:0.5];
  [v4 setPegRadius:v6 * 0.5];
  [v4 setPegStrokeWidth:(v5 - v6) * 0.5];
  [v4 setRadialShadowRadius:*&v11];
  [v4 setRadialShadowOpacity:*(&v15 + 1)];
  [v4 setInlayInsetRadius:v16];

  return v4;
}

- (id)secondHandConfiguration
{
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  memset(v9, 0, sizeof(v9));
  v3 = [(CLKUIAnalogHandsView *)self device];
  ___LayoutConstants_block_invoke_4(v3, v9);

  v8.receiver = self;
  v8.super_class = CLKUIHandsView;
  v4 = [(CLKUIAnalogHandsView *)&v8 secondHandConfiguration];
  v5 = v12;
  v6 = *&v12 * 0.5;
  [v4 setHandLength:*&v12 * 0.5 + *(&v10 + 1)];
  [v4 setHandWidth:*(&v11 + 1)];
  [v4 setTailLength:v6 + *&v11];
  [v4 setPegRadius:*(&v5 + 1) * 0.5];
  [v4 setPegStrokeWidth:(*&v5 - *(&v5 + 1)) * 0.5];

  return v4;
}

- (void)setOverrideDate:(id)a3
{
  v5 = a3;
  if ((CLKEqualObjects() & 1) == 0)
  {
    [(CLKUIAnalogHandsView *)self _stopTimeAnimation];
    objc_storeStrong(&self->_overrideDate, a3);
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = [(CLKUIAnalogHandsView *)self displayTime];
    }

    v7 = v6;
    v8 = [(CLKUIAnalogHandsView *)self calendar];
    CLKHourMinuteSecondAnglesForTime();

    v9 = [(CLKUIAnalogHandsView *)self hourHandView];
    [v9 setZRotation:0.0];

    v10 = [(CLKUIAnalogHandsView *)self minuteHandView];
    [v10 setZRotation:0.0];

    v11 = [(CLKUIAnalogHandsView *)self secondHandView];
    [v11 setZRotation:0.0];

    if (!v5)
    {
      [(CLKUIAnalogHandsView *)self _startNewTimeAnimation];
    }
  }
}

@end