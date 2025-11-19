@interface HUQuickControlColorViewMetrics
- (HUQuickControlColorViewMetrics)initWithSizeDescriptor:(id)a3;
@end

@implementation HUQuickControlColorViewMetrics

- (HUQuickControlColorViewMetrics)initWithSizeDescriptor:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HUQuickControlColorViewMetrics;
  v6 = [(HUQuickControlColorViewMetrics *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sizeDescriptor, a3);
  }

  return v7;
}

@end