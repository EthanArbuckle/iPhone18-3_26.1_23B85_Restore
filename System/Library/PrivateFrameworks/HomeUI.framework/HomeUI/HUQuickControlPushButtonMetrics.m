@interface HUQuickControlPushButtonMetrics
- (HUQuickControlPushButtonMetrics)initWithSizeDescriptor:(id)a3;
@end

@implementation HUQuickControlPushButtonMetrics

- (HUQuickControlPushButtonMetrics)initWithSizeDescriptor:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HUQuickControlPushButtonMetrics;
  v6 = [(HUQuickControlPushButtonMetrics *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sizeDescriptor, a3);
  }

  return v7;
}

@end