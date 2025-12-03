@interface MEMailAppExtensionObserverCriteria
- (MEMailAppExtensionObserverCriteria)initWithCapabilities:(id)capabilities includeDisabled:(BOOL)disabled;
@end

@implementation MEMailAppExtensionObserverCriteria

- (MEMailAppExtensionObserverCriteria)initWithCapabilities:(id)capabilities includeDisabled:(BOOL)disabled
{
  capabilitiesCopy = capabilities;
  v11.receiver = self;
  v11.super_class = MEMailAppExtensionObserverCriteria;
  v8 = [(MEMailAppExtensionObserverCriteria *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_capabilities, capabilities);
    v9->_includeDisabled = disabled;
  }

  return v9;
}

@end