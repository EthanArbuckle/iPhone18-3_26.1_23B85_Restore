@interface BDSAppVersion
+ (id)appVersion;
@end

@implementation BDSAppVersion

+ (id)appVersion
{
  if (qword_1002749D8 != -1)
  {
    sub_1001BDD30();
  }

  v3 = qword_1002749D0;

  return v3;
}

@end