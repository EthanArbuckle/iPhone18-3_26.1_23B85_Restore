@interface HMDUnassociatedAppleHomePodAccessory
- (HMDUnassociatedAppleHomePodAccessory)initWithCoder:(id)a3;
@end

@implementation HMDUnassociatedAppleHomePodAccessory

- (HMDUnassociatedAppleHomePodAccessory)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HMDUnassociatedAppleHomePodAccessory;
  v5 = [(HMDUnassociatedAppleMediaAccessory *)&v8 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    object_setClass(v5, v6);
    if (([v4 containsValueForKey:@"HMD.un.var"] & 1) == 0)
    {
      [(HMDUnassociatedAppleMediaAccessory *)v5 setVariant:2];
    }
  }

  return v5;
}

@end