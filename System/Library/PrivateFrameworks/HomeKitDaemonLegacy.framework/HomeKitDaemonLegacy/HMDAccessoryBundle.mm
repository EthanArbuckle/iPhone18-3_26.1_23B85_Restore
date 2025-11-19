@interface HMDAccessoryBundle
- (HMDAccessoryBundle)initWithAccessory:(id)a3 context:(id)a4;
@end

@implementation HMDAccessoryBundle

- (HMDAccessoryBundle)initWithAccessory:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HMDAccessoryBundle;
  v8 = [(HMDAccessoryBundle *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(HMDAccessoryBundle *)v8 setAccessory:v6];
    [(HMDAccessoryBundle *)v9 setContext:v7];
  }

  return v9;
}

@end