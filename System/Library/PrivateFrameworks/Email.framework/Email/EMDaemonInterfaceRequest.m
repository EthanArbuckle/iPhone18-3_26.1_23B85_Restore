@interface EMDaemonInterfaceRequest
+ (OS_os_log)signpostLog;
+ (id)systemScopeSignpostLog;
+ (unint64_t)uniqueRequestID;
- (unint64_t)signpostID;
@end

@implementation EMDaemonInterfaceRequest

+ (unint64_t)uniqueRequestID
{
  v2 = +[EMDaemonInterfaceRequest systemScopeSignpostLog];
  v3 = os_signpost_id_generate(v2);

  return v3;
}

+ (id)systemScopeSignpostLog
{
  if (systemScopeSignpostLog_onceToken != -1)
  {
    +[EMDaemonInterfaceRequest systemScopeSignpostLog];
  }

  v3 = systemScopeSignpostLog_log;

  return v3;
}

void __50__EMDaemonInterfaceRequest_systemScopeSignpostLog__block_invoke()
{
  v0 = os_log_create("com.apple.email.signposts", "EMRequestIDGenerationCategory");
  v1 = systemScopeSignpostLog_log;
  systemScopeSignpostLog_log = v0;
}

+ (OS_os_log)signpostLog
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__EMDaemonInterfaceRequest_signpostLog__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (signpostLog_onceToken_0 != -1)
  {
    dispatch_once(&signpostLog_onceToken_0, block);
  }

  v2 = signpostLog_log_0;

  return v2;
}

void __39__EMDaemonInterfaceRequest_signpostLog__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email.signposts", [v3 UTF8String]);
  v2 = signpostLog_log_0;
  signpostLog_log_0 = v1;
}

- (unint64_t)signpostID
{
  v3 = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(v3, self);

  return v4;
}

@end