@interface BDSSecureManager
+ (id)sharedManager;
- (BDSSecureManager)init;
@end

@implementation BDSSecureManager

+ (id)sharedManager
{
  if (qword_1EE2B04F8 != -1)
  {
    sub_1E45E4C98();
  }

  v3 = qword_1EE2AEBF0;

  return v3;
}

- (BDSSecureManager)init
{
  v6.receiver = self;
  v6.super_class = BDSSecureManager;
  v2 = [(BDSSecureManager *)&v6 init];
  if (v2)
  {
    v3 = +[_TtC13BookDataStore23CloudSecureManagerProxy sharedManager];
    secureManager = v2->_secureManager;
    v2->_secureManager = v3;
  }

  return v2;
}

@end