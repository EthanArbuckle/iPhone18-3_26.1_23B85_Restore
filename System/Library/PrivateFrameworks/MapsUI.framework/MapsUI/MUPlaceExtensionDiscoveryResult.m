@interface MUPlaceExtensionDiscoveryResult
- (MUPlaceExtensionDiscoveryResult)initWithExtension:(id)a3 appStoreApp:(id)a4 vendorIdentifier:(id)a5;
@end

@implementation MUPlaceExtensionDiscoveryResult

- (MUPlaceExtensionDiscoveryResult)initWithExtension:(id)a3 appStoreApp:(id)a4 vendorIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = MUPlaceExtensionDiscoveryResult;
  v12 = [(MUPlaceExtensionDiscoveryResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_extension, a3);
    objc_storeStrong(&v13->_appStoreApp, a4);
    objc_storeStrong(&v13->_vendorIdentifier, a5);
  }

  return v13;
}

@end