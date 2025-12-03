@interface CLKUIHandsView
- (CLKUIHandsView)initWithDiameter:(double)diameter forDevice:(id)device;
- (id)hourHandConfiguration;
- (id)minuteHandConfiguration;
- (id)secondHandConfiguration;
- (void)setOverrideDate:(id)date;
@end

@implementation CLKUIHandsView

- (CLKUIHandsView)initWithDiameter:(double)diameter forDevice:(id)device
{
  v8.receiver = self;
  v8.super_class = CLKUIHandsView;
  v5 = [(CLKUIAnalogHandsView *)&v8 initForDevice:device];
  v6 = v5;
  if (v5)
  {
    [(CLKUIHandsView *)v5 setFrame:0.0, 0.0, diameter, diameter];
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
  device = [(CLKUIAnalogHandsView *)self device];
  ___LayoutConstants_block_invoke_4(device, &v9);

  v8.receiver = self;
  v8.super_class = CLKUIHandsView;
  hourHandConfiguration = [(CLKUIAnalogHandsView *)&v8 hourHandConfiguration];
  v5 = *&v9;
  v6 = *(&v10 + 1);
  [hourHandConfiguration setHandLength:*(&v11 + 1)];
  [hourHandConfiguration setHandWidth:v5];
  [hourHandConfiguration setArmLength:*&v10];
  [hourHandConfiguration setArmWidth:*(&v9 + 1)];
  [hourHandConfiguration setSmoothingRadius:0.5];
  [hourHandConfiguration setPegRadius:v6 * 0.5];
  [hourHandConfiguration setPegStrokeWidth:(v5 - v6) * 0.5];
  [hourHandConfiguration setRadialShadowRadius:*&v11];
  [hourHandConfiguration setRadialShadowOpacity:*(&v15 + 1)];
  [hourHandConfiguration setInlayInsetRadius:v16];

  return hourHandConfiguration;
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
  device = [(CLKUIAnalogHandsView *)self device];
  ___LayoutConstants_block_invoke_4(device, &v9);

  v8.receiver = self;
  v8.super_class = CLKUIHandsView;
  minuteHandConfiguration = [(CLKUIAnalogHandsView *)&v8 minuteHandConfiguration];
  v5 = *&v9;
  v6 = *(&v10 + 1);
  [minuteHandConfiguration setHandLength:*&v12];
  [minuteHandConfiguration setHandWidth:v5];
  [minuteHandConfiguration setArmLength:*&v10];
  [minuteHandConfiguration setArmWidth:*(&v9 + 1)];
  [minuteHandConfiguration setSmoothingRadius:0.5];
  [minuteHandConfiguration setPegRadius:v6 * 0.5];
  [minuteHandConfiguration setPegStrokeWidth:(v5 - v6) * 0.5];
  [minuteHandConfiguration setRadialShadowRadius:*&v11];
  [minuteHandConfiguration setRadialShadowOpacity:*(&v15 + 1)];
  [minuteHandConfiguration setInlayInsetRadius:v16];

  return minuteHandConfiguration;
}

- (id)secondHandConfiguration
{
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  memset(v9, 0, sizeof(v9));
  device = [(CLKUIAnalogHandsView *)self device];
  ___LayoutConstants_block_invoke_4(device, v9);

  v8.receiver = self;
  v8.super_class = CLKUIHandsView;
  secondHandConfiguration = [(CLKUIAnalogHandsView *)&v8 secondHandConfiguration];
  v5 = v12;
  v6 = *&v12 * 0.5;
  [secondHandConfiguration setHandLength:*&v12 * 0.5 + *(&v10 + 1)];
  [secondHandConfiguration setHandWidth:*(&v11 + 1)];
  [secondHandConfiguration setTailLength:v6 + *&v11];
  [secondHandConfiguration setPegRadius:*(&v5 + 1) * 0.5];
  [secondHandConfiguration setPegStrokeWidth:(*&v5 - *(&v5 + 1)) * 0.5];

  return secondHandConfiguration;
}

- (void)setOverrideDate:(id)date
{
  dateCopy = date;
  if ((CLKEqualObjects() & 1) == 0)
  {
    [(CLKUIAnalogHandsView *)self _stopTimeAnimation];
    objc_storeStrong(&self->_overrideDate, date);
    if (dateCopy)
    {
      displayTime = dateCopy;
    }

    else
    {
      displayTime = [(CLKUIAnalogHandsView *)self displayTime];
    }

    v7 = displayTime;
    calendar = [(CLKUIAnalogHandsView *)self calendar];
    CLKHourMinuteSecondAnglesForTime();

    hourHandView = [(CLKUIAnalogHandsView *)self hourHandView];
    [hourHandView setZRotation:0.0];

    minuteHandView = [(CLKUIAnalogHandsView *)self minuteHandView];
    [minuteHandView setZRotation:0.0];

    secondHandView = [(CLKUIAnalogHandsView *)self secondHandView];
    [secondHandView setZRotation:0.0];

    if (!dateCopy)
    {
      [(CLKUIAnalogHandsView *)self _startNewTimeAnimation];
    }
  }
}

@end