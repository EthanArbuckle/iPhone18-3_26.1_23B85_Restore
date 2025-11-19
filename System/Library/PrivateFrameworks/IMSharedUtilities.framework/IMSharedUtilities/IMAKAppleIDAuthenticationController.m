@interface IMAKAppleIDAuthenticationController
+ (NSString)IMAKUserInfoChangedAltDSIDKey;
+ (NSString)IMAKUserInfoChangedNotification;
+ (NSString)IMAKUserInfoChangedSecurityLevelKey;
@end

@implementation IMAKAppleIDAuthenticationController

+ (NSString)IMAKUserInfoChangedNotification
{
  if (qword_1EB3096F8 != -1)
  {
    sub_1A88C6BEC();
  }

  v3 = qword_1EB3096F0;

  return v3;
}

+ (NSString)IMAKUserInfoChangedAltDSIDKey
{
  if (qword_1EB30B870 != -1)
  {
    sub_1A88C6C00();
  }

  v3 = qword_1EB30B868;

  return v3;
}

+ (NSString)IMAKUserInfoChangedSecurityLevelKey
{
  if (qword_1EB30B880[0] != -1)
  {
    sub_1A88C6C14();
  }

  v3 = qword_1EB30B878;

  return v3;
}

@end