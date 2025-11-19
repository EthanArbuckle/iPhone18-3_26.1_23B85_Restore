@interface LSApplicationProxy(IconServicesAdditions)
- (id)__IS_iconDataForVariant:()IconServicesAdditions preferredIconName:withOptions:;
- (id)__IS_iconDataForVariant:()IconServicesAdditions withOptions:;
@end

@implementation LSApplicationProxy(IconServicesAdditions)

- (id)__IS_iconDataForVariant:()IconServicesAdditions withOptions:
{
  v7 = [a1 __IS_iconResourceLocator];
  if ([a1 supportsAlternateIconNames])
  {
    v8 = [v7 bundleIconsDictionary];

    if (v8)
    {
      v8 = [a1 alternateIconName];
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = [a1 __IS_iconDataForVariant:a3 preferredIconName:v8 withOptions:a4];

  return v9;
}

- (id)__IS_iconDataForVariant:()IconServicesAdditions preferredIconName:withOptions:
{
  v8 = a4;
  v9 = [[ISIcon alloc] initWithResourceProxy:a1];
  v10 = [ISImageDescriptor imageDescriptorWithIconVariant:a3 options:a5];
  [v10 setPreferedResourceName:v8];

  v11 = [(ISIcon *)v9 prepareImageForDescriptor:v10];
  v12 = [v11 bitmapData];

  return v12;
}

@end