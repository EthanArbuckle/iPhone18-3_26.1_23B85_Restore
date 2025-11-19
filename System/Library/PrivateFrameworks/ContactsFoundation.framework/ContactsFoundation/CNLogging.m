@interface CNLogging
+ (OS_os_log)apiUsageLog;
+ (OS_os_log)notificationOSLog;
+ (OS_os_log)sdkBreakageLog;
@end

@implementation CNLogging

+ (OS_os_log)apiUsageLog
{
  if (apiUsageLog_cn_once_token_2 != -1)
  {
    +[CNLogging apiUsageLog];
  }

  v3 = apiUsageLog_cn_once_object_2;

  return v3;
}

uint64_t __24__CNLogging_apiUsageLog__block_invoke()
{
  apiUsageLog_cn_once_object_2 = os_log_create("com.apple.contacts", "api");

  return MEMORY[0x1EEE66BB8]();
}

+ (OS_os_log)notificationOSLog
{
  if (notificationOSLog_cn_once_token_1 != -1)
  {
    +[CNLogging notificationOSLog];
  }

  v3 = notificationOSLog_cn_once_object_1;

  return v3;
}

uint64_t __30__CNLogging_notificationOSLog__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "notifications");
  v1 = notificationOSLog_cn_once_object_1;
  notificationOSLog_cn_once_object_1 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (OS_os_log)sdkBreakageLog
{
  if (sdkBreakageLog_cn_once_token_3 != -1)
  {
    +[CNLogging sdkBreakageLog];
  }

  v3 = sdkBreakageLog_cn_once_object_3;

  return v3;
}

uint64_t __27__CNLogging_sdkBreakageLog__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "sdk");
  v1 = sdkBreakageLog_cn_once_object_3;
  sdkBreakageLog_cn_once_object_3 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end