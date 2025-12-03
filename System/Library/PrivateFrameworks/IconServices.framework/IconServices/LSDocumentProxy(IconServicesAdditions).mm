@interface LSDocumentProxy(IconServicesAdditions)
- (id)__IS_iconDataForVariant:()IconServicesAdditions withOptions:;
@end

@implementation LSDocumentProxy(IconServicesAdditions)

- (id)__IS_iconDataForVariant:()IconServicesAdditions withOptions:
{
  v6 = [[ISIcon alloc] initWithResourceProxy:self];
  v7 = [ISImageDescriptor imageDescriptorWithIconVariant:a3 options:a4];
  v8 = [(ISIcon *)v6 prepareImageForDescriptor:v7];
  bitmapData = [v8 bitmapData];

  return bitmapData;
}

@end