@interface HMDAccessoryBundle
- (HMDAccessoryBundle)initWithAccessory:(id)accessory context:(id)context;
@end

@implementation HMDAccessoryBundle

- (HMDAccessoryBundle)initWithAccessory:(id)accessory context:(id)context
{
  accessoryCopy = accessory;
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = HMDAccessoryBundle;
  v8 = [(HMDAccessoryBundle *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(HMDAccessoryBundle *)v8 setAccessory:accessoryCopy];
    [(HMDAccessoryBundle *)v9 setContext:contextCopy];
  }

  return v9;
}

@end