@interface MSMailDefaultService
- (BOOL)_launchMobileMailSuspendedError:(id *)error;
- (MSMailDefaultService)init;
- (id)_createServiceOnQueue:(id)queue;
- (id)_handleMessageSendFailure:(id)failure message:(id)message messageIndex:(int64_t)index context:(id *)context;
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

- (id)_createServiceOnQueue:(id)queue
{
  queueCopy = queue;
  mach_service = xpc_connection_create_mach_service([@"com.apple.mobilemail.services.xpc" UTF8String], queueCopy, 0);

  return mach_service;
}

- (BOOL)_launchMobileMailSuspendedError:(id *)error
{
  v13[1] = *MEMORY[0x1E69E9840];
  promise = [MEMORY[0x1E699B868] promise];
  v12 = *MEMORY[0x1E699F8E8];
  v13[0] = MEMORY[0x1E695E118];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  mEMORY[0x1E699FCA0] = [MEMORY[0x1E699FCA0] sharedService];
  errorOnlyCompletionHandlerAdapter = [promise errorOnlyCompletionHandlerAdapter];
  [mEMORY[0x1E699FCA0] openApplication:*MEMORY[0x1E69B17F0] options:v5 withResult:errorOnlyCompletionHandlerAdapter];

  future = [promise future];
  v9 = [future resultWithTimeout:error error:5.0];
  LOBYTE(error) = v9 != 0;

  v10 = *MEMORY[0x1E69E9840];
  return error;
}

- (id)_handleMessageSendFailure:(id)failure message:(id)message messageIndex:(int64_t)index context:(id *)context
{
  v37 = *MEMORY[0x1E69E9840];
  failureCopy = failure;
  messageCopy = message;
  if (!context)
  {
    __assert_rtn("[MSMailDefaultService _handleMessageSendFailure:message:messageIndex:context:]", "MSMailDefaultService.m", 63, "context && we have to have a context passed in");
  }

  v12 = *context;
  if (!*context)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    *context = v12;
  }

  v13 = v12;
  v14 = [v13 objectForKey:@"launchedMail"];
  bOOLValue = [v14 BOOLValue];

  v16 = [v13 objectForKey:@"elapsedTime"];
  [v16 doubleValue];
  v18 = v17;

  if (failureCopy == MEMORY[0x1E69E9E20])
  {
    [(MSService *)self stop];
    [(MSService *)self start];
  }

  else if (failureCopy == MEMORY[0x1E69E9E18] || failureCopy == MEMORY[0x1E69E9E38])
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

  if ((bOOLValue & 1) == 0)
  {
    if ([(MSMailDefaultService *)self _launchMobileMailSuspendedError:0])
    {
      [v13 setObject:*MEMORY[0x1E695E4D0] forKey:@"launchedMail"];
      v21 = MFLogGeneral();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        _connection = [(MSService *)self _connection];
        *buf = 138413058;
        selfCopy2 = self;
        v31 = 2048;
        indexCopy2 = index;
        v33 = 2048;
        v34 = _connection;
        v35 = 2048;
        v36 = messageCopy;
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
    v23 = [(MSService *)&v28 _handleMessageSendFailure:failureCopy message:messageCopy messageIndex:index context:context];
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
    _connection2 = [(MSService *)self _connection];
    *buf = 138413058;
    selfCopy2 = self;
    v31 = 2048;
    indexCopy2 = index;
    v33 = 2048;
    v34 = _connection2;
    v35 = 2048;
    v36 = messageCopy;
    _os_log_impl(&dword_1D876A000, v21, OS_LOG_TYPE_INFO, "#MailServices %@ (%lld) : <connection: %p> delayed send, message <dictionary: %p>", buf, 0x2Au);
  }

LABEL_26:

  v24 = 0;
LABEL_20:

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

@end