@interface FBSOpenApplicationService
+ (BOOL)currentProcessServicesDefaultShellEndpoint;
+ (FBSOpenApplicationService)serviceWithDefaultShellEndpoint;
+ (FBSOpenApplicationService)serviceWithEndpoint:(id)a3;
- (BOOL)canOpenApplication:(id)a3 reason:(int64_t *)a4;
- (FBSOpenApplicationService)init;
- (id)_initWithEndpoint:(id)a3;
- (id)_remoteTarget;
- (void)_openApplication:(id)a3 withOptions:(id)a4 clientHandle:(id)a5 completion:(id)a6;
- (void)dealloc;
- (void)openApplication:(id)a3 withOptions:(id)a4 clientHandle:(id)a5 completion:(id)a6;
- (void)openApplication:(id)a3 withOptions:(id)a4 completion:(id)a5;
@end

@implementation FBSOpenApplicationService

- (id)_remoteTarget
{
  v3 = [(BSServiceConnection *)self->_connection remoteTarget];
  if (!v3)
  {
    [(BSServiceConnection *)self->_connection activate];
    v3 = [(BSServiceConnection *)self->_connection remoteTarget];
  }

  return v3;
}

+ (FBSOpenApplicationService)serviceWithDefaultShellEndpoint
{
  v2 = [off_1E76BC9E0 environmentAliases];
  v3 = [off_1E76BCA30 defaultShellMachName];
  v4 = [v2 resolveMachService:v3];

  v5 = +[FBSOpenApplicationServiceSpecification identifier];
  v6 = [off_1E76BCA30 endpointForMachName:v4 service:v5 instance:0];
  if (v6)
  {
    v7 = [[FBSOpenApplicationService alloc] _initWithEndpoint:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)dealloc
{
  [(BSServiceConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = FBSOpenApplicationService;
  [(FBSOpenApplicationService *)&v3 dealloc];
}

- (FBSOpenApplicationService)init
{
  v3 = [off_1E76BC9E0 environmentAliases];
  v4 = [off_1E76BCA30 defaultShellMachName];
  v5 = [v3 resolveMachService:v4];
  v6 = +[FBSOpenApplicationServiceSpecification identifier];
  v7 = [off_1E76BCA30 endpointForMachName:v5 service:v6 instance:0];
  if (v7)
  {
    v8 = [(FBSOpenApplicationService *)self _initWithEndpoint:v7];
  }

  else
  {
    v9 = +[FBSOpenApplicationServiceSpecification identifier];
    v10 = [off_1E76BCA30 nullEndpointForService:v9 instance:0];
    v8 = [(FBSOpenApplicationService *)self _initWithEndpoint:v10];
  }

  return v8;
}

- (id)_initWithEndpoint:(id)a3
{
  v5 = a3;
  NSClassFromString(&cfstr_Bsserviceconne.isa);
  if (!v5)
  {
    [FBSOpenApplicationService _initWithEndpoint:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSOpenApplicationService _initWithEndpoint:a2];
  }

  v6 = +[FBSOpenApplicationServiceSpecification identifier];
  v7 = [v5 service];
  v8 = [v6 isEqualToString:v7];

  if ((v8 & 1) == 0)
  {
    [FBSOpenApplicationService _initWithEndpoint:a2];
  }

  v19.receiver = self;
  v19.super_class = FBSOpenApplicationService;
  v9 = [(FBSOpenApplicationService *)&v19 init];
  if (v9)
  {
    v10 = [off_1E76BCA28 connectionWithEndpoint:v5];
    connection = v9->_connection;
    v9->_connection = v10;

    v12 = +[FBSOpenApplicationServiceSpecification serviceQuality];
    v13 = [off_1E76BCA48 queueWithName:@"FBSOpenApplicationService" serviceQuality:v12];
    callbackQueue = v9->_callbackQueue;
    v9->_callbackQueue = v13;

    v15 = v9->_connection;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __47__FBSOpenApplicationService__initWithEndpoint___block_invoke;
    v17[3] = &unk_1E76BE6A8;
    v18 = v9;
    [(BSServiceConnection *)v15 configureConnection:v17];
    [(BSServiceConnection *)v9->_connection activate];
  }

  return v9;
}

void __47__FBSOpenApplicationService__initWithEndpoint___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  v4 = a2;
  [v4 setQueue:v2];
  v3 = +[FBSOpenApplicationServiceSpecification interface];
  [v4 setInterface:v3];

  [v4 setInterruptionHandler:&__block_literal_global_18];
  [v4 setInvalidationHandler:&__block_literal_global_26];
}

+ (FBSOpenApplicationService)serviceWithEndpoint:(id)a3
{
  v3 = a3;
  v4 = [[FBSOpenApplicationService alloc] _initWithEndpoint:v3];

  return v4;
}

+ (BOOL)currentProcessServicesDefaultShellEndpoint
{
  v2 = [off_1E76BCA30 defaultShellMachName];
  v3 = +[FBSOpenApplicationServiceSpecification identifier];
  v4 = [off_1E76BCA60 bootstrapConfiguration];
  v5 = [v4 domainForMachName:v2];
  v6 = [v5 serviceForIdentifier:v3];
  v7 = v6 != 0;

  return v7;
}

- (void)openApplication:(id)a3 withOptions:(id)a4 clientHandle:(id)a5 completion:(id)a6
{
  v18 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [MEMORY[0x1E696AE30] processInfo];
  v15 = [v14 bs_jobLabel];
  v16 = [v15 isEqualToString:@"com.apple.lsd"];

  if ((v16 & 1) == 0)
  {
    [FBSOpenApplicationService openApplication:a2 withOptions:? clientHandle:? completion:?];
  }

  v17 = v12;
  NSClassFromString(&cfstr_Bsprocesshandl.isa);
  if (!v17)
  {
    [FBSOpenApplicationService openApplication:a2 withOptions:? clientHandle:? completion:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBSOpenApplicationService openApplication:a2 withOptions:? clientHandle:? completion:?];
  }

  [(FBSOpenApplicationService *)self _openApplication:v18 withOptions:v11 clientHandle:v17 completion:v13];
}

- (BOOL)canOpenApplication:(id)a3 reason:(int64_t *)a4
{
  v6 = a3;
  if (v6)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v7 = [(FBSOpenApplicationService *)self _remoteTarget];
    v8 = v7;
    if (v7)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __55__FBSOpenApplicationService_canOpenApplication_reason___block_invoke;
      v13[3] = &unk_1E76BEE38;
      v13[4] = self;
      v13[5] = &v14;
      [v7 canOpenApplication:v6 completion:v13];
      v9 = v15;
    }

    else
    {
      v9 = v15;
      v15[3] = 8;
    }

    v11 = v9[3];
    if (a4)
    {
      *a4 = v11;
    }

    v10 = v11 == 0;

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v10 = 0;
    if (a4)
    {
      *a4 = 2;
    }
  }

  return v10;
}

void __55__FBSOpenApplicationService_canOpenApplication_reason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v7 = v3;
    v4 = [v3 domain];
    v5 = [v4 isEqualToString:@"FBSOpenApplicationErrorDomain"];

    if (v5)
    {
      v6 = [v7 code];
    }

    else
    {
      v6 = 8;
    }

    *(*(*(a1 + 40) + 8) + 24) = v6;
    v3 = v7;
  }
}

- (void)openApplication:(id)a3 withOptions:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [off_1E76BCA18 processHandle];
  [(FBSOpenApplicationService *)self _openApplication:v10 withOptions:v9 clientHandle:v11 completion:v8];
}

- (void)_openApplication:(id)a3 withOptions:(id)a4 clientHandle:(id)a5 completion:(id)a6
{
  v43 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = v13;
  if (v15)
  {
    NSClassFromString(&cfstr_Bsprocesshandl.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBSOpenApplicationService _openApplication:a2 withOptions:? clientHandle:? completion:?];
    }
  }

  v16 = v11;
  if (v16)
  {
    NSClassFromString(&cfstr_Nsstring.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBSOpenApplicationService _openApplication:a2 withOptions:? clientHandle:? completion:?];
    }
  }

  v17 = v12;
  if (v17)
  {
    NSClassFromString(&cfstr_Fbsopenapplica_5.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [FBSOpenApplicationService _openApplication:a2 withOptions:? clientHandle:? completion:?];
    }
  }

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __82__FBSOpenApplicationService__openApplication_withOptions_clientHandle_completion___block_invoke;
  v35[3] = &unk_1E76BEE88;
  v18 = v16;
  v36 = v18;
  v19 = MEMORY[0x1A58E80F0](v35);
  v20 = [(FBSOpenApplicationService *)self _remoteTarget];
  if (v20)
  {
    v28 = self;
    v21 = [v17 actions];
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%#04x", arc4random() % 0xFFFF];
    v23 = [v21 count];
    v24 = FBLogCommon();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    if (v23)
    {
      if (v25)
      {
        v26 = [v21 fbs_singleLineDescriptionOfBSActions];
        *buf = 138543874;
        v38 = v22;
        v39 = 2114;
        v40 = v18;
        v41 = 2114;
        v42 = v26;
        _os_log_impl(&dword_1A2DBB000, v24, OS_LOG_TYPE_DEFAULT, "[FBSSystemService][%{public}@] Sending request to open %{public}@ with action(s): %{public}@", buf, 0x20u);
      }
    }

    else if (v25)
    {
      *buf = 138543618;
      v38 = v22;
      v39 = 2114;
      v40 = v18;
      _os_log_impl(&dword_1A2DBB000, v24, OS_LOG_TYPE_DEFAULT, "[FBSSystemService][%{public}@] Sending request to open %{public}@", buf, 0x16u);
    }

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __82__FBSOpenApplicationService__openApplication_withOptions_clientHandle_completion___block_invoke_71;
    v29[3] = &unk_1E76BEEB0;
    v33 = v19;
    v30 = v22;
    v31 = v18;
    v34 = v14;
    v32 = v28;
    v27 = v22;
    [v20 openApplication:v31 withOptions:v17 originator:v15 requestID:v27 completion:v29];

    goto LABEL_16;
  }

  if (v14)
  {
    v21 = (v19)[2](v19, 5, @"System shell connection is invalid.", 0);
    (*(v14 + 2))(v14, 0, v21);
LABEL_16:
  }
}

id __82__FBSOpenApplicationService__openApplication_withOptions_clientHandle_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x1E696ABC0];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __82__FBSOpenApplicationService__openApplication_withOptions_clientHandle_completion___block_invoke_2;
  v14[3] = &unk_1E76BEE60;
  v15 = *(a1 + 32);
  v16 = v7;
  v17 = v8;
  v18 = a2;
  v10 = v8;
  v11 = v7;
  v12 = [v9 bs_errorWithDomain:@"FBSOpenApplicationServiceErrorDomain" code:a2 configuration:v14];

  return v12;
}

void __82__FBSOpenApplicationService__openApplication_withOptions_clientHandle_completion___block_invoke_2(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a1[4];
  v8 = a2;
  v5 = [v3 stringWithFormat:@"The request to open %@ failed.", v4];
  [v8 setFailureDescription:v5];

  if (a1[5])
  {
    v6 = @"%@";
  }

  else
  {
    v6 = 0;
  }

  [v8 setFailureReason:{v6, a1[5]}];
  v7 = FBSOpenApplicationServiceErrorCodeToString(a1[7]);
  [v8 setCodeDescription:v7];

  [v8 setUnderlyingError:a1[6]];
}

void __82__FBSOpenApplicationService__openApplication_withOptions_clientHandle_completion___block_invoke_71(void *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 domain];
    v9 = [@"FBSOpenApplicationServiceErrorDomain" isEqualToString:v8];

    if (v9)
    {
      v10 = v7;
      goto LABEL_19;
    }

    if ([v7 isBSServiceConnectionError])
    {
      v14 = [off_1E76BCA28 currentContext];
      v15 = [v14 remoteProcess];

      if (v15)
      {
        v16 = MEMORY[0x1E696AEC0];
        v17 = FBSProcessPrettyDescription(v15);
        v18 = [v16 stringWithFormat:@"The system shell (%@) probably crashed.", v17];
      }

      else
      {
        v18 = @"The system shell probably crashed.";
      }
    }

    else
    {
      v18 = 0;
    }

    v10 = (*(a1[7] + 16))();

    if (v10)
    {
LABEL_19:
      v11 = FBLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __82__FBSOpenApplicationService__openApplication_withOptions_clientHandle_completion___block_invoke_71_cold_1(a1, v10, v11);
      }

      goto LABEL_21;
    }
  }

  else if ([(__CFString *)v5 pid]>= 1 && ([(__CFString *)v5 isValid]& 1) == 0)
  {
    v10 = (*(a1[7] + 16))();
    if (v10)
    {
      goto LABEL_19;
    }
  }

  v11 = FBLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = a1[4];
    v13 = @"(process was not provided)";
    if (v5)
    {
      v13 = v5;
    }

    *buf = 138543618;
    v21 = v12;
    v22 = 2114;
    v23 = v13;
    _os_log_impl(&dword_1A2DBB000, v11, OS_LOG_TYPE_DEFAULT, "[FBSSystemService][%{public}@] Request successful: %{public}@", buf, 0x16u);
  }

  v10 = 0;
LABEL_21:

  v19 = a1[8];
  if (v19)
  {
    (*(v19 + 16))(v19, v5, v10);
  }
}

- (void)_initWithEndpoint:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:BSServiceConnectionEndpointClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_initWithEndpoint:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"service of endpoint is incorrect"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_13();
    v7 = @"FBSOpenApplicationService.m";
    v8 = 1024;
    v9 = 38;
    v10 = v5;
    v11 = v2;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_initWithEndpoint:(char *)a1 .cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)openApplication:(char *)a1 withOptions:clientHandle:completion:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"what part about LaunchServices-only did you not understand?"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_13();
    v7 = @"FBSOpenApplicationService.m";
    v8 = 1024;
    v9 = 91;
    v10 = v5;
    v11 = v2;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)openApplication:(char *)a1 withOptions:clientHandle:completion:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:BSProcessHandleClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)openApplication:(char *)a1 withOptions:clientHandle:completion:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_openApplication:(char *)a1 withOptions:clientHandle:completion:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:BSProcessHandleClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_openApplication:(char *)a1 withOptions:clientHandle:completion:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_openApplication:(char *)a1 withOptions:clientHandle:completion:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSOpenApplicationOptionsClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

void __82__FBSOpenApplicationService__openApplication_withOptions_clientHandle_completion___block_invoke_71_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = [a2 descriptionWithMultilinePrefix:0];
  v7 = 138543874;
  v8 = v4;
  v9 = 2114;
  v10 = v5;
  v11 = 2114;
  v12 = v6;
  _os_log_error_impl(&dword_1A2DBB000, a3, OS_LOG_TYPE_ERROR, "[FBSSystemService][%{public}@] Error handling open request for %{public}@: %{public}@", &v7, 0x20u);
}

@end