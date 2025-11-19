@interface BDSAppVersion
+ (id)appVersion;
@end

@implementation BDSAppVersion

+ (id)appVersion
{
  if (qword_1ECF75DE8 != -1)
  {
    sub_1E47059E4();
  }

  v3 = qword_1ECF75DE0;

  return v3;
}

@end