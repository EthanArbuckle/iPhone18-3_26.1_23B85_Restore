@interface HUQuickControlColorViewMetrics
- (HUQuickControlColorViewMetrics)initWithSizeDescriptor:(id)descriptor;
@end

@implementation HUQuickControlColorViewMetrics

- (HUQuickControlColorViewMetrics)initWithSizeDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v9.receiver = self;
  v9.super_class = HUQuickControlColorViewMetrics;
  v6 = [(HUQuickControlColorViewMetrics *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sizeDescriptor, descriptor);
  }

  return v7;
}

@end