@interface FCEntitlementsOverride
- (FCEntitlementsOverride)initWithEntitlements:(id)entitlements error:(id)error;
@end

@implementation FCEntitlementsOverride

- (FCEntitlementsOverride)initWithEntitlements:(id)entitlements error:(id)error
{
  entitlementsCopy = entitlements;
  errorCopy = error;
  v12.receiver = self;
  v12.super_class = FCEntitlementsOverride;
  v8 = [(FCEntitlementsOverride *)&v12 init];
  if (v8)
  {
    v9 = [entitlementsCopy copy];
    entitlements = v8->_entitlements;
    v8->_entitlements = v9;

    objc_storeStrong(&v8->_error, error);
  }

  return v8;
}

@end