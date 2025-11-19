@interface LSResourceProxy(IconServicesAdditions)
+ (uint64_t)__IS_canProvideResourceLocator;
- (id)__IS_iconDataForVariant:()IconServicesAdditions withOptions:;
- (id)__IS_iconResourceLocator;
@end

@implementation LSResourceProxy(IconServicesAdditions)

- (id)__IS_iconResourceLocator
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 iconResourceLocator];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (uint64_t)__IS_canProvideResourceLocator
{
  v0 = objc_opt_class();

  return [v0 instancesRespondToSelector:sel_iconResourceLocator];
}

- (id)__IS_iconDataForVariant:()IconServicesAdditions withOptions:
{
  v6 = [[ISIcon alloc] initWithResourceProxy:a1];
  v7 = [ISImageDescriptor imageDescriptorWithIconVariant:a3 options:a4];
  v8 = [(ISIcon *)v6 prepareImageForDescriptor:v7];
  v9 = [v8 bitmapData];

  return v9;
}

@end