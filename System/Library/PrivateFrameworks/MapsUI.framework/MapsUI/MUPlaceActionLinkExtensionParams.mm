@interface MUPlaceActionLinkExtensionParams
- (MUPlaceActionLinkExtensionParams)initWithVendorId:(id)id bundleId:(id)bundleId;
@end

@implementation MUPlaceActionLinkExtensionParams

- (MUPlaceActionLinkExtensionParams)initWithVendorId:(id)id bundleId:(id)bundleId
{
  idCopy = id;
  bundleIdCopy = bundleId;
  v12.receiver = self;
  v12.super_class = MUPlaceActionLinkExtensionParams;
  v9 = [(MUPlaceActionLinkExtensionParams *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bundleId, bundleId);
    objc_storeStrong(&v10->_vendorId, id);
  }

  return v10;
}

@end