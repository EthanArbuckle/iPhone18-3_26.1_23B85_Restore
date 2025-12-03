@interface LACSecureStorageConfiguration
- (LACSecureStorageConfiguration)initWithBypassEntitlementChecks:(BOOL)checks;
@end

@implementation LACSecureStorageConfiguration

- (LACSecureStorageConfiguration)initWithBypassEntitlementChecks:(BOOL)checks
{
  v5.receiver = self;
  v5.super_class = LACSecureStorageConfiguration;
  result = [(LACSecureStorageConfiguration *)&v5 init];
  if (result)
  {
    result->_bypassEntitlementChecks = checks;
  }

  return result;
}

@end