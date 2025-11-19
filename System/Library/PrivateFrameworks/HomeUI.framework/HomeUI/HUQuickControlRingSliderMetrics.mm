@interface HUQuickControlRingSliderMetrics
- (HUQuickControlRingSliderMetrics)initWithSizeDescriptor:(id)a3 outerRadius:(double)a4;
@end

@implementation HUQuickControlRingSliderMetrics

- (HUQuickControlRingSliderMetrics)initWithSizeDescriptor:(id)a3 outerRadius:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = HUQuickControlRingSliderMetrics;
  v8 = [(HUQuickControlRingSliderMetrics *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_sizeDescriptor, a3);
    v9->_outerRadius = a4;
  }

  return v9;
}

@end