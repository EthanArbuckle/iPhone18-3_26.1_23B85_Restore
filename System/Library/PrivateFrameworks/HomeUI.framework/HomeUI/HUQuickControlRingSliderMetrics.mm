@interface HUQuickControlRingSliderMetrics
- (HUQuickControlRingSliderMetrics)initWithSizeDescriptor:(id)descriptor outerRadius:(double)radius;
@end

@implementation HUQuickControlRingSliderMetrics

- (HUQuickControlRingSliderMetrics)initWithSizeDescriptor:(id)descriptor outerRadius:(double)radius
{
  descriptorCopy = descriptor;
  v11.receiver = self;
  v11.super_class = HUQuickControlRingSliderMetrics;
  v8 = [(HUQuickControlRingSliderMetrics *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_sizeDescriptor, descriptor);
    v9->_outerRadius = radius;
  }

  return v9;
}

@end