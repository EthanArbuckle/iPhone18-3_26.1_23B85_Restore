@interface HMDAppleHomePod_6_1_Accessory
- (HMDAppleHomePod_6_1_Accessory)initWithCoder:(id)coder;
@end

@implementation HMDAppleHomePod_6_1_Accessory

- (HMDAppleHomePod_6_1_Accessory)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = HMDAppleHomePod_6_1_Accessory;
  v3 = [(HMDAppleMediaAccessory *)&v6 initWithCoder:coder];
  if (v3)
  {
    v4 = objc_opt_class();
    object_setClass(v3, v4);
    [(HMDAppleMediaAccessory *)v3 setVariant:4];
  }

  return v3;
}

@end