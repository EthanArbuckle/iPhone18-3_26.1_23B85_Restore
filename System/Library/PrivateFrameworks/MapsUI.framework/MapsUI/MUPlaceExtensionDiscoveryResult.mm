@interface MUPlaceExtensionDiscoveryResult
- (MUPlaceExtensionDiscoveryResult)initWithExtension:(id)extension appStoreApp:(id)app vendorIdentifier:(id)identifier;
@end

@implementation MUPlaceExtensionDiscoveryResult

- (MUPlaceExtensionDiscoveryResult)initWithExtension:(id)extension appStoreApp:(id)app vendorIdentifier:(id)identifier
{
  extensionCopy = extension;
  appCopy = app;
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = MUPlaceExtensionDiscoveryResult;
  v12 = [(MUPlaceExtensionDiscoveryResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_extension, extension);
    objc_storeStrong(&v13->_appStoreApp, app);
    objc_storeStrong(&v13->_vendorIdentifier, identifier);
  }

  return v13;
}

@end