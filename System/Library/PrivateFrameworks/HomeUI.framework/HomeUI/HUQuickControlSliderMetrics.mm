@interface HUQuickControlSliderMetrics
- (HUQuickControlSliderMetrics)initWithSizeDescriptor:(id)descriptor cornerRadius:(double)radius widthToCornerRadiusRatio:(double)ratio;
@end

@implementation HUQuickControlSliderMetrics

- (HUQuickControlSliderMetrics)initWithSizeDescriptor:(id)descriptor cornerRadius:(double)radius widthToCornerRadiusRatio:(double)ratio
{
  descriptorCopy = descriptor;
  v13.receiver = self;
  v13.super_class = HUQuickControlSliderMetrics;
  v10 = [(HUQuickControlSliderMetrics *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_sizeDescriptor, descriptor);
    v11->_cornerRadius = radius;
    v11->_widthToCornerRadiusRatio = ratio;
  }

  return v11;
}

@end