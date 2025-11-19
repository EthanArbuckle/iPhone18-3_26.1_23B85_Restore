@interface LSDocumentProxy(IconServicesAdditions)
- (id)__IS_iconDataForVariant:()IconServicesAdditions withOptions:;
@end

@implementation LSDocumentProxy(IconServicesAdditions)

- (id)__IS_iconDataForVariant:()IconServicesAdditions withOptions:
{
  v6 = [[ISIcon alloc] initWithResourceProxy:a1];
  v7 = [ISImageDescriptor imageDescriptorWithIconVariant:a3 options:a4];
  v8 = [(ISIcon *)v6 prepareImageForDescriptor:v7];
  v9 = [v8 bitmapData];

  return v9;
}

@end