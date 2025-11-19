@interface IDSKTRegistrationDataConfig
- (IDSKTRegistrationDataConfig)init;
@end

@implementation IDSKTRegistrationDataConfig

- (IDSKTRegistrationDataConfig)init
{
  v7.receiver = self;
  v7.super_class = IDSKTRegistrationDataConfig;
  v2 = [(IDSKTRegistrationDataConfig *)&v7 init];
  v3 = v2;
  if (v2)
  {
    unregisteredKTData = v2->_unregisteredKTData;
    v2->_unregisteredKTData = 0;

    registeredKTData = v3->_registeredKTData;
    v3->_registeredKTData = 0;
  }

  return v3;
}

@end