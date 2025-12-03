@interface IDSSysdiagnoseLogCollector
+ (id)sharedInstance;
- (IDSSysdiagnoseLogCollector)init;
- (void)_collectSysdiagnoseLog:(id)log;
- (void)collectSysdiagnoseLog:(id)log;
@end

@implementation IDSSysdiagnoseLogCollector

+ (id)sharedInstance
{
  if (qword_1ED5DF6F0 != -1)
  {
    sub_1A7E20AD8();
  }

  v3 = qword_1ED5DF740;

  return v3;
}

- (IDSSysdiagnoseLogCollector)init
{
  v6.receiver = self;
  v6.super_class = IDSSysdiagnoseLogCollector;
  v2 = [(IDSSysdiagnoseLogCollector *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (void)collectSysdiagnoseLog:(id)log
{
  v12[1] = *MEMORY[0x1E69E9840];
  logCopy = log;
  mEMORY[0x1E69A60F0] = [MEMORY[0x1E69A60F0] sharedInstance];
  isInternalInstall = [mEMORY[0x1E69A60F0] isInternalInstall];

  v7 = _IDSIsLoggingProfileInstalled();
  if ((isInternalInstall & 1) != 0 || v7)
  {
    [(IDSSysdiagnoseLogCollector *)self _collectSysdiagnoseLog:logCopy];
  }

  else
  {
    IMPrintf();
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Sysdiagnose disabled {isInternalInstall: %@, hasLoggingProfileInstalled: %@}", @"NO", @"NO"];
    v11 = *MEMORY[0x1E696A578];
    v12[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSSysdiagnoseLogCollectorErrorDomain" code:-1 userInfo:v9];
    logCopy[2](logCopy, v10);
  }
}

- (void)_collectSysdiagnoseLog:(id)log
{
  logCopy = log;
  mach_service = xpc_connection_create_mach_service("com.apple.sysdiagnose.service.xpc", 0, 0);
  if (mach_service)
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    v6 = v5;
    if (v5)
    {
      xpc_dictionary_set_string(v5, "run", "sysdiagnose");
      xpc_dictionary_set_BOOL(v6, "compress", 1);
      xpc_connection_set_event_handler(mach_service, &unk_1F1AABAC0);
      xpc_connection_resume(mach_service);
      IMPrintf();
      v7 = im_primary_queue();
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = sub_1A7CB5088;
      handler[3] = &unk_1E77E2AB0;
      v9 = logCopy;
      xpc_connection_send_message_with_reply(mach_service, v6, v7, handler);
    }
  }
}

@end