@interface IMIDSServiceController
+ (id)sharedInstance;
- (IMIDSServiceController)init;
- (void)logIfDebuggingService:(id)a3 method:(const char *)a4;
@end

@implementation IMIDSServiceController

+ (id)sharedInstance
{
  if (qword_1ED8CA458 != -1)
  {
    sub_1A88C5A88();
  }

  v3 = qword_1ED8CA3C0;

  return v3;
}

- (IMIDSServiceController)init
{
  v7.receiver = self;
  v7.super_class = IMIDSServiceController;
  v2 = [(IMIDSServiceController *)&v7 init];
  if (v2)
  {
    v3 = +[IMDefaults sharedInstance];
    v4 = [v3 getValueFromDomain:@"com.apple.MobileSMS" forKey:@"debuggingIDSService"];
    debuggingService = v2->_debuggingService;
    v2->_debuggingService = v4;
  }

  return v2;
}

- (void)logIfDebuggingService:(id)a3 method:(const char *)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(IMIDSServiceController *)self debuggingService];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    v9 = IMLogHandleForCategory("IMIDSServiceController");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [MEMORY[0x1E696AF00] callStackSymbols];
      v11 = 138412802;
      v12 = v6;
      v13 = 2080;
      v14 = a4;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "Call IDS service [%@], method: [%s], callstack: [%@]", &v11, 0x20u);
    }
  }
}

@end