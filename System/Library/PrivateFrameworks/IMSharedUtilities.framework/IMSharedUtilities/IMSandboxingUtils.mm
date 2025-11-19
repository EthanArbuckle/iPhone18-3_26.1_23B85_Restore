@interface IMSandboxingUtils
+ (OS_os_log)logger;
- (id)logger;
@end

@implementation IMSandboxingUtils

+ (OS_os_log)logger
{
  if (qword_1ED8C9A70 != -1)
  {
    sub_1A88C1BC0();
  }

  v3 = qword_1EB30AE98;

  return v3;
}

- (id)logger
{
  v2 = objc_opt_class();

  return [v2 logger];
}

@end