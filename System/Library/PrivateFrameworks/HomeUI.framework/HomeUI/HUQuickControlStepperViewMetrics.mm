@interface HUQuickControlStepperViewMetrics
- (HUQuickControlStepperViewMetrics)initWithSizeDescriptor:(id)a3 orientation:(unint64_t)a4 cornerRadius:(double)a5;
@end

@implementation HUQuickControlStepperViewMetrics

- (HUQuickControlStepperViewMetrics)initWithSizeDescriptor:(id)a3 orientation:(unint64_t)a4 cornerRadius:(double)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = HUQuickControlStepperViewMetrics;
  v10 = [(HUQuickControlStepperViewMetrics *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_sizeDescriptor, a3);
    v11->_orientation = a4;
    v11->_cornerRadius = a5;
  }

  return v11;
}

@end