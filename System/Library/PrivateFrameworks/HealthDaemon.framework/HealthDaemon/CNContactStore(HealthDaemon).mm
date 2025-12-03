@interface CNContactStore(HealthDaemon)
+ (id)_healthAppTCCIdentity;
+ (id)hd_contactStoreWithHealthAppIdentity;
+ (uint64_t)hd_authorizationStatusForHealthApp;
@end

@implementation CNContactStore(HealthDaemon)

+ (id)hd_contactStoreWithHealthAppIdentity
{
  v0 = objc_alloc_init(MEMORY[0x277CBDAC0]);
  _healthAppTCCIdentity = [objc_opt_class() _healthAppTCCIdentity];
  [v0 setAssumedIdentity:_healthAppTCCIdentity];

  v2 = [objc_alloc(objc_opt_class()) initWithConfiguration:v0];

  return v2;
}

+ (id)_healthAppTCCIdentity
{
  [*MEMORY[0x277CCE3A8] UTF8String];
  v0 = tcc_identity_create();

  return v0;
}

+ (uint64_t)hd_authorizationStatusForHealthApp
{
  _healthAppTCCIdentity = [objc_opt_class() _healthAppTCCIdentity];
  if (_healthAppTCCIdentity)
  {
    v1 = [objc_opt_class() authorizationStatusForEntityType:0 assumedIdentity:_healthAppTCCIdentity];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

@end