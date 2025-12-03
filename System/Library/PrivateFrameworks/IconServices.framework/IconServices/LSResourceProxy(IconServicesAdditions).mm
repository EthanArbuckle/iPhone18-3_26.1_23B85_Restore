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
    iconResourceLocator = [self iconResourceLocator];
  }

  else
  {
    iconResourceLocator = 0;
  }

  return iconResourceLocator;
}

+ (uint64_t)__IS_canProvideResourceLocator
{
  v0 = objc_opt_class();

  return [v0 instancesRespondToSelector:sel_iconResourceLocator];
}

- (id)__IS_iconDataForVariant:()IconServicesAdditions withOptions:
{
  v6 = [[ISIcon alloc] initWithResourceProxy:self];
  v7 = [ISImageDescriptor imageDescriptorWithIconVariant:a3 options:a4];
  v8 = [(ISIcon *)v6 prepareImageForDescriptor:v7];
  bitmapData = [v8 bitmapData];

  return bitmapData;
}

@end