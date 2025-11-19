@interface MSMailDefaultService
- (BOOL)_launchMobileMailSuspendedError:(id *)a3;
- (MSMailDefaultService)init;
- (id)_createServiceOnQueue:(id)a3;
- (id)_handleMessageSendFailure:(id)a3 message:(id)a4 messageIndex:(int64_t)a5 context:(id *)a6;
@end

@implementation MSMailDefaultService

- (MSMailDefaultService)init
{
  v6.receiver = self;
  v6.super_class = MSMailDefaultService;
  v2 = [(MSService *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_shouldLaunch = 1;
    v4 = v2;
  }

  return v3;
}

- (id)_createServiceOnQueue:(id)a3
{
  v3 = a3;
  mach_service = xpc_connection_create_mach_service([@"com.apple.mobilemail.services.xpc" UTF8String], v3, 0);

  return mach_service;
}

- (BOOL)_launchMobileMailSuspendedError:(id *)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E699B868] promise];
  v12 = *MEMORY[0x1E699F8E8];
  v13[0] = MEMORY[0x1E695E118];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v6 = [MEMORY[0x1E699FCA0] sharedService];
  v7 = [v4 errorOnlyCompletionHandlerAdapter];
  [v6 openApplication:*MEMORY[0x1E69B17F0] options:v5 withResult:v7];

  v8 = [v4 future];
  v9 = [v8 resultWithTimeout:a3 error:5.0];
  LOBYTE(a3) = v9 != 0;

  v10 = *MEMORY[0x1E69E9840];
  return a3;
}

- (id)_handleMessageSendFailure:(id)a3 message:(id)a4 messageIndex:(int64_t)a5 context:(id *)a6
{
  v37 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  if (!a6)
  {
    __assert_rtn("[MSMailDefaultService _handleMessageSendFailure:message:messageIndex:context:]", "MSMailDefaultService.m", 63, "context && we have to have a context passed in");
  }

  v12 = *a6;
  if (!*a6)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    *a6 = v12;
  }

  v13 = v12;
  v14 = [v13 objectForKey:@"launchedMail"];
  v15 = [v14 BOOLValue];

  v16 = [v13 objectForKey:@"elapsedTime"];
  [v16 doubleValue];
  v18 = v17;

  if (v10 == MEMORY[0x1E69E9E20])
  {
    [(MSService *)self stop];
    [(MSService *)self start];
  }

  else if (v10 == MEMORY[0x1E69E9E18] || v10 == MEMORY[0x1E69E9E38])
  {
    [MEMORY[0x1E696AF00] sleepForTimeInterval:0.100000001];
  }

  if (!self->_shouldLaunch || !MKBDeviceUnlockedSinceBoot())
  {
    v23 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MailServices" code:1 userInfo:0];
LABEL_19:
    v24 = v23;
    goto LABEL_20;
  }

  if ((v15 & 1) == 0)
  {
    if ([(MSMailDefaultService *)self _launchMobileMailSuspendedError:0])
    {
      [v13 setObject:*MEMORY[0x1E695E4D0] forKey:@"launchedMail"];
      v21 = MFLogGeneral();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v27 = [(MSService *)self _connection];
        *buf = 138413058;
        v30 = self;
        v31 = 2048;
        v32 = a5;
        v33 = 2048;
        v34 = v27;
        v35 = 2048;
        v36 = v11;
        _os_log_impl(&dword_1D876A000, v21, OS_LOG_TYPE_INFO, "#MailServices %@ (%lld) : <connection: %p> launched Mail, message <dictionary: %p>", buf, 0x2Au);
      }

      goto LABEL_26;
    }

    goto LABEL_27;
  }

  if (v18 >= 5.0)
  {
LABEL_27:
    v28.receiver = self;
    v28.super_class = MSMailDefaultService;
    v23 = [(MSService *)&v28 _handleMessageSendFailure:v10 message:v11 messageIndex:a5 context:a6];
    goto LABEL_19;
  }

  if (5.0 - v18 <= 0.5)
  {
    v19 = 5.0 - v18;
  }

  else
  {
    v19 = 0.5;
  }

  v20 = [MEMORY[0x1E696AD98] numberWithDouble:v18 + v19];
  [v13 setObject:v20 forKey:@"elapsedTime"];

  [MEMORY[0x1E696AF00] sleepForTimeInterval:v19];
  v21 = MFLogGeneral();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = [(MSService *)self _connection];
    *buf = 138413058;
    v30 = self;
    v31 = 2048;
    v32 = a5;
    v33 = 2048;
    v34 = v22;
    v35 = 2048;
    v36 = v11;
    _os_log_impl(&dword_1D876A000, v21, OS_LOG_TYPE_INFO, "#MailServices %@ (%lld) : <connection: %p> delayed send, message <dictionary: %p>", buf, 0x2Au);
  }

LABEL_26:

  v24 = 0;
LABEL_20:

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

@end