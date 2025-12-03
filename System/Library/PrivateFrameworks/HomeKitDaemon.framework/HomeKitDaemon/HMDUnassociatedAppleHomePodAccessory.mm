@interface HMDUnassociatedAppleHomePodAccessory
- (HMDUnassociatedAppleHomePodAccessory)initWithCoder:(id)coder;
@end

@implementation HMDUnassociatedAppleHomePodAccessory

- (HMDUnassociatedAppleHomePodAccessory)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = HMDUnassociatedAppleHomePodAccessory;
  v5 = [(HMDUnassociatedAppleMediaAccessory *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    object_setClass(v5, v6);
    if (([coderCopy containsValueForKey:@"HMD.un.var"] & 1) == 0)
    {
      [(HMDUnassociatedAppleMediaAccessory *)v5 setVariant:2];
    }
  }

  return v5;
}

@end