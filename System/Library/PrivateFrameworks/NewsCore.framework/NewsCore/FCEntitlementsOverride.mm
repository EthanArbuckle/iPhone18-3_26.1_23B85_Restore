@interface FCEntitlementsOverride
- (FCEntitlementsOverride)initWithEntitlements:(id)a3 error:(id)a4;
@end

@implementation FCEntitlementsOverride

- (FCEntitlementsOverride)initWithEntitlements:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = FCEntitlementsOverride;
  v8 = [(FCEntitlementsOverride *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    entitlements = v8->_entitlements;
    v8->_entitlements = v9;

    objc_storeStrong(&v8->_error, a4);
  }

  return v8;
}

@end