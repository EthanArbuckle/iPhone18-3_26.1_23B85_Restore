@interface HMDAppleHomePodAccessory
- (HMDAppleHomePodAccessory)initWithCoder:(id)coder;
@end

@implementation HMDAppleHomePodAccessory

- (HMDAppleHomePodAccessory)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = HMDAppleHomePodAccessory;
  v3 = [(HMDAppleMediaAccessory *)&v6 initWithCoder:coder];
  if (v3)
  {
    v4 = objc_opt_class();
    object_setClass(v3, v4);
    [(HMDAppleMediaAccessory *)v3 setVariant:2];
  }

  return v3;
}

@end