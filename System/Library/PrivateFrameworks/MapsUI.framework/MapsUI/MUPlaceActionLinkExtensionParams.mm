@interface MUPlaceActionLinkExtensionParams
- (MUPlaceActionLinkExtensionParams)initWithVendorId:(id)a3 bundleId:(id)a4;
@end

@implementation MUPlaceActionLinkExtensionParams

- (MUPlaceActionLinkExtensionParams)initWithVendorId:(id)a3 bundleId:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MUPlaceActionLinkExtensionParams;
  v9 = [(MUPlaceActionLinkExtensionParams *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bundleId, a4);
    objc_storeStrong(&v10->_vendorId, a3);
  }

  return v10;
}

@end