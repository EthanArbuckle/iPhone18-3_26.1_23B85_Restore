@interface NTKDualTimeAnalogHandsView
- (id)createHourHandView;
- (id)createMinuteHandView;
- (id)hourHandConfiguration;
- (id)minuteHandConfiguration;
- (id)secondHandConfiguration;
@end

@implementation NTKDualTimeAnalogHandsView

- (id)hourHandConfiguration
{
  v2 = [(CLKUIAnalogHandsView *)self device];
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v5 = 0u;
  ___LayoutConstants_block_invoke_68(v2, &v5);
  v3 = [off_27877BEE0 defaultHourConfigurationForDevice:v2];
  [v3 setHandWidth:*&v5];
  [v3 setHandLength:*(&v5 + 1)];
  [v3 setPegRadius:*&v6];
  [v3 setPegStrokeWidth:*(&v6 + 1)];
  [v3 setArmWidth:*&v7];
  [v3 setArmLength:*(&v7 + 1)];
  [v3 setDropShadowRadius:*&v8];
  [v3 setDropShadowOpacity:*(&v8 + 1)];
  [v3 setRadialShadowRadius:*&v9];
  [v3 setRadialShadowOpacity:*(&v9 + 1)];
  [v3 setDirectionalShadowOffset:v10];

  return v3;
}

- (id)createHourHandView
{
  v4.receiver = self;
  v4.super_class = NTKDualTimeAnalogHandsView;
  v2 = [(CLKUIAnalogHandsView *)&v4 createHourHandView];

  return v2;
}

- (id)minuteHandConfiguration
{
  v3 = [(CLKUIAnalogHandsView *)self device];
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  memset(v7, 0, sizeof(v7));
  ___LayoutConstants_block_invoke_68(v3, v7);
  v4 = [(CLKUIAnalogHandsView *)self device];
  v5 = [off_27877BEE0 defaultMinuteConfigurationForDevice:v4];

  [v5 setHandWidth:*&v8];
  [v5 setHandLength:*(&v8 + 1)];
  [v5 setPegRadius:*&v9];
  [v5 setPegStrokeWidth:*(&v9 + 1)];
  [v5 setArmWidth:*&v10];
  [v5 setArmLength:*(&v10 + 1)];
  [v5 setDropShadowRadius:*&v11];
  [v5 setDropShadowOpacity:*(&v11 + 1)];
  [v5 setRadialShadowRadius:*&v12];
  [v5 setRadialShadowOpacity:*(&v12 + 1)];
  [v5 setDirectionalShadowOffset:v13];

  return v5;
}

- (id)createMinuteHandView
{
  v4.receiver = self;
  v4.super_class = NTKDualTimeAnalogHandsView;
  v2 = [(CLKUIAnalogHandsView *)&v4 createMinuteHandView];

  return v2;
}

- (id)secondHandConfiguration
{
  v3 = [(CLKUIAnalogHandsView *)self device];
  v13 = 0.0;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  memset(v7, 0, sizeof(v7));
  ___LayoutConstants_block_invoke_68(v3, v7);
  v4 = [(CLKUIAnalogHandsView *)self device];
  v5 = [off_27877BEE0 defaultSecondConfigurationForDevice:v4];

  [v5 setHandWidth:*&v8];
  [v5 setHandLength:*(&v8 + 1)];
  [v5 setPegRadius:*&v9];
  [v5 setPegStrokeWidth:*(&v9 + 1)];
  [v5 setTailLength:*&v10];
  [v5 setDropShadowRadius:*(&v10 + 1)];
  [v5 setDropShadowOpacity:*&v11];
  [v5 setRadialShadowRadius:*(&v11 + 1)];
  [v5 setRadialShadowOpacity:*&v12];
  [v5 setDirectionalShadowOffset:{*(&v12 + 1), v13}];

  return v5;
}

@end