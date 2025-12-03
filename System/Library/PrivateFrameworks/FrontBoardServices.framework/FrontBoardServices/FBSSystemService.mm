@interface FBSSystemService
+ (id)clientCallbackQueue;
+ (id)sharedService;
- (BOOL)canOpenApplication:(id)application reason:(int64_t *)reason;
- (FBSSystemService)initWithEndpoint:(id)endpoint;
- (id)_initWithEndpoint:(id)endpoint;
- (id)badgeValueForBundleID:(id)d;
- (id)processHandleForApplication:(id)application;
- (int)pidForApplication:(id)application;
- (void)dataResetWithRequest:(id)request completion:(id)completion;
- (void)dealloc;
- (void)openApplication:(id)application options:(id)options clientPort:(unsigned int)port withResult:(id)result;
- (void)openApplication:(id)application options:(id)options withResult:(id)result;
- (void)openURL:(id)l application:(id)application options:(id)options clientPort:(unsigned int)port withResult:(id)result;
- (void)reboot;
- (void)sendActions:(id)actions withResult:(id)result;
- (void)setBadgeValue:(id)value forBundleID:(id)d;
- (void)setKeyboardFocusApplicationPID:(int)d deferringToken:(id)token completion:(id)completion;
- (void)shutdown;
- (void)terminateApplication:(id)application forReason:(int64_t)reason andReport:(BOOL)report withDescription:(id)description completion:(id)completion;
- (void)terminateApplicationGroup:(int64_t)group forReason:(int64_t)reason andReport:(BOOL)report withDescription:(id)description completion:(id)completion;
@end

@implementation FBSSystemService

- (void)dealloc
{
  v3 = self->_systemAppProxy;
  v4 = +[FBSSystemService clientCallbackQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__FBSSystemService_dealloc__block_invoke;
  block[3] = &unk_1E76BCDB0;
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, block);

  v6.receiver = self;
  v6.super_class = FBSSystemService;
  [(FBSSystemService *)&v6 dealloc];
}

+ (id)clientCallbackQueue
{
  if (clientCallbackQueue_onceToken != -1)
  {
    +[FBSSystemService clientCallbackQueue];
  }

  v3 = clientCallbackQueue_queue;

  return v3;
}

+ (id)sharedService
{
  if (sharedService_onceToken != -1)
  {
    +[FBSSystemService sharedService];
  }

  v3 = sharedService___SharedService;

  return v3;
}

uint64_t __33__FBSSystemService_sharedService__block_invoke()
{
  v0 = objc_alloc_init(FBSSystemService);
  v1 = sharedService___SharedService;
  sharedService___SharedService = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (FBSSystemService)initWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  if (!endpointCopy)
  {
    [(FBSSystemService *)a2 initWithEndpoint:?];
  }

  v6 = endpointCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(FBSSystemService *)v6 initWithEndpoint:a2, self];
  }

  v7 = [(FBSSystemService *)self _initWithEndpoint:v6];
  return v7;
}

- (id)_initWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v11.receiver = self;
  v11.super_class = FBSSystemService;
  v5 = [(FBSSystemService *)&v11 init];
  if (v5)
  {
    v6 = [FBSSystemAppProxy checkoutProxyWithEndpoint:endpointCopy];
    systemAppProxy = v5->_systemAppProxy;
    v5->_systemAppProxy = v6;

    if (!endpointCopy)
    {
      v8 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
      defaultOpenApplicationService = v5->_defaultOpenApplicationService;
      v5->_defaultOpenApplicationService = v8;
    }
  }

  return v5;
}

- (int)pidForApplication:(id)application
{
  if (!application)
  {
    return -1;
  }

  v3 = MEMORY[0x1E698D028];
  applicationCopy = application;
  v5 = objc_alloc_init(v3);
  v6 = [v5 applicationInfoForApplication:applicationCopy];

  if (v6)
  {
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E698D018]];
    v8 = v7;
    if (v7)
    {
      intValue = [v7 intValue];
    }

    else
    {
      intValue = -1;
    }
  }

  else
  {
    intValue = -1;
  }

  [v5 invalidate];

  return intValue;
}

- (BOOL)canOpenApplication:(id)application reason:(int64_t *)reason
{
  defaultOpenApplicationService = self->_defaultOpenApplicationService;
  if (defaultOpenApplicationService)
  {
    return [(FBSOpenApplicationService *)defaultOpenApplicationService canOpenApplication:application reason:reason];
  }

  if (reason)
  {
    *reason = 8;
  }

  return 0;
}

- (void)openApplication:(id)application options:(id)options withResult:(id)result
{
  resultCopy = result;
  optionsCopy = options;
  applicationCopy = application;
  [(FBSSystemService *)self openApplication:applicationCopy options:optionsCopy clientPort:[(FBSSystemService *)self createClientPort] withResult:resultCopy];
}

- (void)sendActions:(id)actions withResult:(id)result
{
  v19 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  resultCopy = result;
  v8 = FBLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    fbs_singleLineDescriptionOfBSActions = [actionsCopy fbs_singleLineDescriptionOfBSActions];
    *buf = 138543362;
    v18 = fbs_singleLineDescriptionOfBSActions;
    _os_log_impl(&dword_1A2DBB000, v8, OS_LOG_TYPE_DEFAULT, "[FBSSystemService] Sending action(s): %{public}@", buf, 0xCu);
  }

  selfCopy = self;
  systemAppProxy = selfCopy->_systemAppProxy;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __43__FBSSystemService_sendActions_withResult___block_invoke;
  v14[3] = &unk_1E76BE758;
  v15 = selfCopy;
  v16 = resultCopy;
  v12 = selfCopy;
  v13 = resultCopy;
  [(FBSSystemAppProxy *)systemAppProxy sendActions:actionsCopy withResult:v14];
}

uint64_t __43__FBSSystemService_sendActions_withResult___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

- (void)terminateApplication:(id)application forReason:(int64_t)reason andReport:(BOOL)report withDescription:(id)description completion:(id)completion
{
  reportCopy = report;
  completionCopy = completion;
  selfCopy = self;
  systemAppProxy = selfCopy->_systemAppProxy;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __88__FBSSystemService_terminateApplication_forReason_andReport_withDescription_completion___block_invoke;
  v17[3] = &unk_1E76BE780;
  v18 = selfCopy;
  v19 = completionCopy;
  v15 = selfCopy;
  v16 = completionCopy;
  [(FBSSystemAppProxy *)systemAppProxy terminateApplication:application forReason:reason andReport:reportCopy withDescription:description completion:v17];
}

uint64_t __88__FBSSystemService_terminateApplication_forReason_andReport_withDescription_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)terminateApplicationGroup:(int64_t)group forReason:(int64_t)reason andReport:(BOOL)report withDescription:(id)description completion:(id)completion
{
  reportCopy = report;
  completionCopy = completion;
  selfCopy = self;
  systemAppProxy = selfCopy->_systemAppProxy;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __93__FBSSystemService_terminateApplicationGroup_forReason_andReport_withDescription_completion___block_invoke;
  v17[3] = &unk_1E76BE780;
  v18 = selfCopy;
  v19 = completionCopy;
  v15 = selfCopy;
  v16 = completionCopy;
  [(FBSSystemAppProxy *)systemAppProxy terminateApplicationGroup:group forReason:reason andReport:reportCopy withDescription:description completion:v17];
}

uint64_t __93__FBSSystemService_terminateApplicationGroup_forReason_andReport_withDescription_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)openApplication:(id)application options:(id)options clientPort:(unsigned int)port withResult:(id)result
{
  applicationCopy = application;
  optionsCopy = options;
  resultCopy = result;
  if (port)
  {
    [FBSSystemService openApplication:a2 options:self clientPort:? withResult:?];
  }

  v14 = resultCopy;
  defaultOpenApplicationService = self->_defaultOpenApplicationService;
  if (defaultOpenApplicationService)
  {
    v16 = [FBSOpenApplicationOptions optionsWithDictionary:optionsCopy];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __66__FBSSystemService_openApplication_options_clientPort_withResult___block_invoke;
    v20[3] = &unk_1E76BE7A8;
    v17 = &v21;
    v21 = v14;
    [(FBSOpenApplicationService *)defaultOpenApplicationService _openApplication:applicationCopy withOptions:v16 clientHandle:0 completion:v20];
LABEL_6:

    goto LABEL_7;
  }

  if (resultCopy)
  {
    v16 = +[FBSSystemService clientCallbackQueue];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __66__FBSSystemService_openApplication_options_clientPort_withResult___block_invoke_2;
    v18[3] = &unk_1E76BD318;
    v17 = &v19;
    v19 = v14;
    dispatch_async(v16, v18);
    goto LABEL_6;
  }

LABEL_7:
}

uint64_t __66__FBSSystemService_openApplication_options_clientPort_withResult___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = a3;
  v4 = [v12 domain];
  v5 = [v4 isEqualToString:@"FBSOpenApplicationServiceErrorDomain"];

  if (v5)
  {
    v6 = [v12 userInfo];
    v7 = [v6 objectForKey:*MEMORY[0x1E696AA08]];

    if (v7)
    {
      v8 = v7;

      v12 = v8;
    }
  }

  v9 = *(a1 + 32);
  v10 = v12;
  if (v9)
  {
    v9 = (*(v9 + 16))(v9, v12);
    v10 = v12;
  }

  return MEMORY[0x1EEE66BB8](v9, v10);
}

void __66__FBSSystemService_openApplication_options_clientPort_withResult___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 32);
  v10 = FBSOpenApplicationErrorCreate(8, @"This system service instance does not support openApplication", a3, a4, a5, a6, a7, a8, v9);
  (*(v8 + 16))(v8, v10);
}

- (void)openURL:(id)l application:(id)application options:(id)options clientPort:(unsigned int)port withResult:(id)result
{
  v8 = *&port;
  lCopy = l;
  applicationCopy = application;
  resultCopy = result;
  v14 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:options];
  if (lCopy)
  {
    [v14 setObject:lCopy forKey:@"__PayloadURL"];
  }

  [(FBSSystemService *)self openApplication:applicationCopy options:v14 clientPort:v8 withResult:resultCopy];
}

- (id)processHandleForApplication:(id)application
{
  if (application)
  {
    v4 = [(FBSSystemAppProxy *)self->_systemAppProxy processHandleForBundleID:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)badgeValueForBundleID:(id)d
{
  dCopy = d;
  v4 = [objc_alloc(getUISApplicationStateClass()) initWithBundleIdentifier:dCopy];

  badgeValue = [v4 badgeValue];

  return badgeValue;
}

- (void)setBadgeValue:(id)value forBundleID:(id)d
{
  dCopy = d;
  valueCopy = value;
  v7 = [objc_alloc(getUISApplicationStateClass()) initWithBundleIdentifier:dCopy];

  [v7 setBadgeValue:valueCopy];
}

- (void)dataResetWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v7 = objc_alloc_init(getDDRResetOptionsClass());
  [v7 setHideProgress:{(objc_msgSend(requestCopy, "options") >> 1) & 1}];
  [v7 setEraseDataPlan:{objc_msgSend(requestCopy, "options") & 1}];
  v8 = [requestCopy mode] - 1;
  if (v8 > 3)
  {
    v9 = 0;
  }

  else
  {
    v9 = qword_1A2E69390[v8];
  }

  v10 = objc_alloc(getDDRResetRequestClass());
  reason = [requestCopy reason];
  v12 = [v10 initWithMode:v9 options:v7 reason:reason];

  sharedInstance = [getDDRResetServiceClass() sharedInstance];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __52__FBSSystemService_dataResetWithRequest_completion___block_invoke;
  v15[3] = &unk_1E76BDB58;
  v16 = completionCopy;
  v14 = completionCopy;
  [sharedInstance resetWithRequest:v12 completion:v15];
}

uint64_t __52__FBSSystemService_dataResetWithRequest_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 == 0);
  }

  return result;
}

- (void)reboot
{
  v3 = [[FBSShutdownOptions alloc] initWithReason:@"GenericReboot"];
  [(FBSShutdownOptions *)v3 setRebootType:1];
  [(FBSSystemService *)self shutdownWithOptions:v3];
}

- (void)shutdown
{
  v3 = [[FBSShutdownOptions alloc] initWithReason:@"GenericShutdown"];
  [(FBSSystemService *)self shutdownWithOptions:v3];
}

- (void)setKeyboardFocusApplicationPID:(int)d deferringToken:(id)token completion:(id)completion
{
  v6 = *&d;
  completionCopy = completion;
  selfCopy = self;
  systemAppProxy = selfCopy->_systemAppProxy;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__FBSSystemService_setKeyboardFocusApplicationPID_deferringToken_completion___block_invoke;
  v13[3] = &unk_1E76BE7D0;
  v14 = selfCopy;
  v15 = completionCopy;
  v11 = selfCopy;
  v12 = completionCopy;
  [(FBSSystemAppProxy *)systemAppProxy setKeyboardFocusApplication:v6 deferringToken:token completion:v13];
}

uint64_t __77__FBSSystemService_setKeyboardFocusApplicationPID_deferringToken_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)initWithEndpoint:(uint64_t)a3 .cold.1(void *a1, const char *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = [a1 classForCoder];
  if (!v6)
  {
    v6 = objc_opt_class();
  }

  v7 = NSStringFromClass(v6);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v5 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"endpoint", v7, v9];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = NSStringFromSelector(a2);
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 138544642;
    v15 = v11;
    v16 = 2114;
    v17 = v13;
    v18 = 2048;
    v19 = a3;
    v20 = 2114;
    v21 = @"FBSSystemService.m";
    v22 = 1024;
    v23 = 68;
    v24 = 2114;
    v25 = v10;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v10 UTF8String];
  _bs_set_crash_log_message();
}

- (void)initWithEndpoint:(const char *)a1 .cold.2(const char *a1, uint64_t a2)
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"endpoint", v6];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = NSStringFromSelector(a1);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    *buf = 138544642;
    v12 = v8;
    v13 = 2114;
    v14 = v10;
    v15 = 2048;
    v16 = a2;
    v17 = 2114;
    v18 = @"FBSSystemService.m";
    v19 = 1024;
    v20 = 68;
    v21 = 2114;
    v22 = v7;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v7 UTF8String];
  _bs_set_crash_log_message();
}

- (void)openApplication:(const char *)a1 options:(uint64_t)a2 clientPort:withResult:.cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"clientPort == 0"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"FBSSystemService.m";
    v16 = 1024;
    v17 = 195;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

@end