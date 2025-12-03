@interface HUQuickControlPushButtonMetrics
- (HUQuickControlPushButtonMetrics)initWithSizeDescriptor:(id)descriptor;
@end

@implementation HUQuickControlPushButtonMetrics

- (HUQuickControlPushButtonMetrics)initWithSizeDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v9.receiver = self;
  v9.super_class = HUQuickControlPushButtonMetrics;
  v6 = [(HUQuickControlPushButtonMetrics *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sizeDescriptor, descriptor);
  }

  return v7;
}

@end