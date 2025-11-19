@interface MEMailAppExtensionObserverCriteria
- (MEMailAppExtensionObserverCriteria)initWithCapabilities:(id)a3 includeDisabled:(BOOL)a4;
@end

@implementation MEMailAppExtensionObserverCriteria

- (MEMailAppExtensionObserverCriteria)initWithCapabilities:(id)a3 includeDisabled:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = MEMailAppExtensionObserverCriteria;
  v8 = [(MEMailAppExtensionObserverCriteria *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_capabilities, a3);
    v9->_includeDisabled = a4;
  }

  return v9;
}

@end