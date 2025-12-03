@interface LSApplicationProxy(IconServicesAdditions)
- (id)__IS_iconDataForVariant:()IconServicesAdditions preferredIconName:withOptions:;
- (id)__IS_iconDataForVariant:()IconServicesAdditions withOptions:;
@end

@implementation LSApplicationProxy(IconServicesAdditions)

- (id)__IS_iconDataForVariant:()IconServicesAdditions withOptions:
{
  __IS_iconResourceLocator = [self __IS_iconResourceLocator];
  if ([self supportsAlternateIconNames])
  {
    bundleIconsDictionary = [__IS_iconResourceLocator bundleIconsDictionary];

    if (bundleIconsDictionary)
    {
      bundleIconsDictionary = [self alternateIconName];
    }
  }

  else
  {
    bundleIconsDictionary = 0;
  }

  v9 = [self __IS_iconDataForVariant:a3 preferredIconName:bundleIconsDictionary withOptions:a4];

  return v9;
}

- (id)__IS_iconDataForVariant:()IconServicesAdditions preferredIconName:withOptions:
{
  v8 = a4;
  v9 = [[ISIcon alloc] initWithResourceProxy:self];
  v10 = [ISImageDescriptor imageDescriptorWithIconVariant:a3 options:a5];
  [v10 setPreferedResourceName:v8];

  v11 = [(ISIcon *)v9 prepareImageForDescriptor:v10];
  bitmapData = [v11 bitmapData];

  return bitmapData;
}

@end