@interface PKOpaqueDataServiceProviderOrder
- (void)setServiceProviderData:(id)data;
@end

@implementation PKOpaqueDataServiceProviderOrder

- (void)setServiceProviderData:(id)data
{
  v3.receiver = self;
  v3.super_class = PKOpaqueDataServiceProviderOrder;
  [(PKServiceProviderOrder *)&v3 setServiceProviderData:data];
}

@end