@interface HUQuickControlStepperViewMetrics
- (HUQuickControlStepperViewMetrics)initWithSizeDescriptor:(id)descriptor orientation:(unint64_t)orientation cornerRadius:(double)radius;
@end

@implementation HUQuickControlStepperViewMetrics

- (HUQuickControlStepperViewMetrics)initWithSizeDescriptor:(id)descriptor orientation:(unint64_t)orientation cornerRadius:(double)radius
{
  descriptorCopy = descriptor;
  v13.receiver = self;
  v13.super_class = HUQuickControlStepperViewMetrics;
  v10 = [(HUQuickControlStepperViewMetrics *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_sizeDescriptor, descriptor);
    v11->_orientation = orientation;
    v11->_cornerRadius = radius;
  }

  return v11;
}

@end