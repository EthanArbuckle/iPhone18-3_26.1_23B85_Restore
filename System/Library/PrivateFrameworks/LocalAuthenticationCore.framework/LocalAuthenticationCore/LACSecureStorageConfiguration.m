@interface LACSecureStorageConfiguration
- (LACSecureStorageConfiguration)initWithBypassEntitlementChecks:(BOOL)a3;
@end

@implementation LACSecureStorageConfiguration

- (LACSecureStorageConfiguration)initWithBypassEntitlementChecks:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = LACSecureStorageConfiguration;
  result = [(LACSecureStorageConfiguration *)&v5 init];
  if (result)
  {
    result->_bypassEntitlementChecks = a3;
  }

  return result;
}

@end