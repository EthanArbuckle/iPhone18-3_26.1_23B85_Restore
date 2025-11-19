@interface FBSystemAppProxyServiceServer
+ (id)sharedInstance;
+ (id)targetQueue;
- (id)_initWithQueue:(id)a3;
- (void)_handleActions:(id)a3 forClient:(id)a4;
- (void)_handleGetPasscodeLockedOrBlockedStatus:(id)a3 forClient:(id)a4;
- (void)_handleGetProcessHandle:(id)a3 forClient:(id)a4;
- (void)_handleShutdown:(id)a3 forClient:(id)a4;
- (void)_handleTerminateApplication:(id)a3 forClient:(id)a4;
- (void)_handleTerminateApplicationGroup:(id)a3 forClient:(id)a4;
- (void)noteClientDidConnect:(id)a3 withMessage:(id)a4;
- (void)noteDidReceiveMessage:(id)a3 withType:(int64_t)a4 fromClient:(id)a5;
@end

@implementation FBSystemAppProxyServiceServer

+ (id)targetQueue
{
  v2 = [a1 sharedInstance];
  v3 = [v2 queue];

  return v3;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[FBSystemAppProxyServiceServer sharedInstance];
  }

  v3 = sharedInstance___SharedInstance;

  return v3;
}

void __47__FBSystemAppProxyServiceServer_sharedInstance__block_invoke()
{
  v0 = MEMORY[0x1E698F4D0];
  v1 = *MEMORY[0x1E699FA18];
  v2 = [MEMORY[0x1E698F500] userInitiated];
  v5 = [v0 queueWithName:v1 serviceQuality:v2];

  v3 = [[FBSystemAppProxyServiceServer alloc] _initWithQueue:v5];
  v4 = sharedInstance___SharedInstance;
  sharedInstance___SharedInstance = v3;
}

- (id)_initWithQueue:(id)a3
{
  v4 = *MEMORY[0x1E699FA18];
  v9.receiver = self;
  v9.super_class = FBSystemAppProxyServiceServer;
  v5 = [(FBSServiceFacility *)&v9 initWithIdentifier:v4 queue:a3];
  if (v5)
  {
    v6 = [[FBServiceClientAuthenticator alloc] initWithEntitlement:@"com.apple.frontboard.shutdown"];
    shutdownAuthenticator = v5->_shutdownAuthenticator;
    v5->_shutdownAuthenticator = v6;
  }

  return v5;
}

void __84__FBSystemAppProxyServiceServer__handleSystemApplicationBundleIdentifier_forClient___block_invoke(uint64_t a1, void *a2)
{
  v2 = *MEMORY[0x1E699FA38];
  v3 = a2;
  v5 = FBSystemAppBundleID();
  v4 = v5;
  xpc_dictionary_set_string(v3, v2, [v5 UTF8String]);
}

- (void)_handleGetPasscodeLockedOrBlockedStatus:(id)a3 forClient:(id)a4
{
  v4 = a3;
  v5 = +[FBSystemService sharedInstance];
  v6 = [v5 queue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __83__FBSystemAppProxyServiceServer__handleGetPasscodeLockedOrBlockedStatus_forClient___block_invoke;
  v9[3] = &unk_1E783B240;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  [v6 performAsync:v9];
}

void __83__FBSystemAppProxyServiceServer__handleGetPasscodeLockedOrBlockedStatus_forClient___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __83__FBSystemAppProxyServiceServer__handleGetPasscodeLockedOrBlockedStatus_forClient___block_invoke_2;
  v2[3] = &unk_1E783B218;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 isPasscodeLockedOrBlockedWithResult:v2];
}

uint64_t __83__FBSystemAppProxyServiceServer__handleGetPasscodeLockedOrBlockedStatus_forClient___block_invoke_2(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __83__FBSystemAppProxyServiceServer__handleGetPasscodeLockedOrBlockedStatus_forClient___block_invoke_3;
  v4[3] = &__block_descriptor_33_e33_v16__0__NSObject_OS_xpc_object__8l;
  v5 = a2;
  return [v2 sendReplyMessageWithPacker:v4];
}

- (void)_handleGetProcessHandle:(id)a3 forClient:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v6 processHandle];
  v8 = [v7 hasEntitlement:@"com.apple.frontboard.application-process-handle"];

  if (v8)
  {
    v9 = [v5 payload];
    v10 = *MEMORY[0x1E699FA30];
    v11 = BSDeserializeStringFromXPCDictionaryWithKey();

    if (v11)
    {
      v12 = +[FBProcessManager sharedInstance];
      v13 = [v12 processesForBundleIdentifier:v11];
      v14 = [v13 firstObject];

      if (!v14)
      {
        v15 = MEMORY[0x1E69C75D0];
        v16 = [MEMORY[0x1E69C7610] predicateMatchingBundleIdentifier:v11];
        v17 = [v15 handleForPredicate:v16 error:0];

        if (v17)
        {
          v18 = +[FBProcessManager sharedInstance];
          [v17 auditToken];
          v14 = [v18 registerProcessForAuditToken:buf];
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 0;
    }

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __67__FBSystemAppProxyServiceServer__handleGetProcessHandle_forClient___block_invoke;
    v23[3] = &unk_1E783B268;
    v24 = v14;
    v21 = v14;
    [v5 sendReplyMessageWithPacker:v23];
  }

  else
  {
    v11 = FBLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v6 processHandle];
      v20 = FBSProcessPrettyDescription();
      *buf = 138543362;
      v26 = v20;
      _os_log_impl(&dword_1A89DD000, v11, OS_LOG_TYPE_DEFAULT, "[FBSystemService] %{public}@ is not permitted to acquire application process handles.", buf, 0xCu);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __67__FBSystemAppProxyServiceServer__handleGetProcessHandle_forClient___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 handle];
  v4 = *MEMORY[0x1E699FA48];
  BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
}

- (void)_handleActions:(id)a3 forClient:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 payload];
  v8 = *MEMORY[0x1E699FA20];
  v9 = BSDeserializeArrayOfBSXPCEncodableObjectsFromXPCDictionaryWithKey();
  v10 = [v6 processHandle];

  v11 = [v10 auditToken];

  v12 = +[FBSystemService sharedInstance];
  v13 = [v12 queue];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __58__FBSystemAppProxyServiceServer__handleActions_forClient___block_invoke;
  v18[3] = &unk_1E783B2D8;
  v19 = v12;
  v20 = v9;
  v21 = v11;
  v22 = v5;
  v14 = v5;
  v15 = v11;
  v16 = v9;
  v17 = v12;
  [v13 performAsync:v18];
}

void __58__FBSystemAppProxyServiceServer__handleActions_forClient___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E695DFD8] setWithArray:*(a1 + 40)];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__FBSystemAppProxyServiceServer__handleActions_forClient___block_invoke_2;
  v5[3] = &unk_1E783B2B0;
  v4 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 handleActions:v3 source:v4 withResult:v5];
}

uint64_t __58__FBSystemAppProxyServiceServer__handleActions_forClient___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__FBSystemAppProxyServiceServer__handleActions_forClient___block_invoke_3;
  v4[3] = &__block_descriptor_40_e33_v16__0__NSObject_OS_xpc_object__8l;
  v4[4] = a2;
  return [v2 sendReplyMessageWithPacker:v4];
}

void __58__FBSystemAppProxyServiceServer__handleActions_forClient___block_invoke_3(uint64_t a1, xpc_object_t xdict)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    xpc_dictionary_set_int64(xdict, *MEMORY[0x1E699FA40], v2);
  }
}

- (void)_handleTerminateApplication:(id)a3 forClient:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a4 processHandle];
  v7 = [v6 auditToken];

  if ([v7 hasEntitlement:@"com.apple.multitasking.termination"])
  {
    v8 = [v5 payload];
    v9 = *MEMORY[0x1E699FA30];
    v10 = BSDeserializeStringFromXPCDictionaryWithKey();
    if (v10)
    {
      int64 = xpc_dictionary_get_int64(v8, *MEMORY[0x1E699FA68]);
      v12 = xpc_dictionary_get_BOOL(v8, *MEMORY[0x1E699FA70]);
      v13 = *MEMORY[0x1E699FA58];
      v14 = BSDeserializeStringFromXPCDictionaryWithKey();
      v15 = FBLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        [v7 pid];
        v16 = BSProcessDescriptionForPID();
        *buf = 138543874;
        v23 = v16;
        v24 = 2114;
        v25 = v10;
        v26 = 2114;
        v27 = v14;
        _os_log_impl(&dword_1A89DD000, v15, OS_LOG_TYPE_DEFAULT, "[FBSystemService] Request received from %{public}@ to terminate application %{public}@: %{public}@", buf, 0x20u);
      }

      v17 = +[FBSystemService sharedInstance];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __71__FBSystemAppProxyServiceServer__handleTerminateApplication_forClient___block_invoke_21;
      v20[3] = &unk_1E783B218;
      v21 = v5;
      [v17 terminateApplication:v10 forReason:int64 andReport:v12 withDescription:v14 completion:v20];
    }

    else
    {
      [v5 sendReplyMessageWithPacker:&__block_literal_global_19];
    }
  }

  else
  {
    v18 = FBLogCommon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = @"com.apple.multitasking.termination";
      _os_log_impl(&dword_1A89DD000, v18, OS_LOG_TYPE_DEFAULT, "Entitlement %@ required to kill applications.", buf, 0xCu);
    }

    [v5 sendReplyMessageWithPacker:&__block_literal_global_16];
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __71__FBSystemAppProxyServiceServer__handleTerminateApplication_forClient___block_invoke(uint64_t a1, void *a2)
{
  v2 = *MEMORY[0x1E699FA40];
  xdict = a2;
  xpc_dictionary_set_int64(xdict, v2, 1);
  xpc_dictionary_set_string(xdict, *MEMORY[0x1E699FA50], "client not entitled");
}

void __71__FBSystemAppProxyServiceServer__handleTerminateApplication_forClient___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *MEMORY[0x1E699FA40];
  xdict = a2;
  xpc_dictionary_set_int64(xdict, v2, 22);
  xpc_dictionary_set_string(xdict, *MEMORY[0x1E699FA50], "invalid bundle identifier");
}

uint64_t __71__FBSystemAppProxyServiceServer__handleTerminateApplication_forClient___block_invoke_21(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __71__FBSystemAppProxyServiceServer__handleTerminateApplication_forClient___block_invoke_2_22;
  v4[3] = &__block_descriptor_33_e33_v16__0__NSObject_OS_xpc_object__8l;
  v5 = a2;
  return [v2 sendReplyMessageWithPacker:v4];
}

void __71__FBSystemAppProxyServiceServer__handleTerminateApplication_forClient___block_invoke_2_22(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = 0;
  }

  else
  {
    v4 = 3;
  }

  xdict = v3;
  xpc_dictionary_set_int64(v3, *MEMORY[0x1E699FA40], v4);
  if ((*(a1 + 32) & 1) == 0)
  {
    xpc_dictionary_set_string(xdict, *MEMORY[0x1E699FA50], "found nothing to terminate");
  }
}

- (void)_handleTerminateApplicationGroup:(id)a3 forClient:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a4 processHandle];
  v7 = [v6 auditToken];

  if ([v7 hasEntitlement:@"com.apple.multitasking.termination"])
  {
    v8 = [v5 payload];
    LODWORD(v9) = xpc_dictionary_get_int64(v8, *MEMORY[0x1E699FA60]);
    int64 = xpc_dictionary_get_int64(v8, *MEMORY[0x1E699FA68]);
    v11 = xpc_dictionary_get_BOOL(v8, *MEMORY[0x1E699FA70]);
    v12 = *MEMORY[0x1E699FA58];
    v13 = BSDeserializeStringFromXPCDictionaryWithKey();
    v14 = FBLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      [v7 pid];
      v15 = BSProcessDescriptionForPID();
      v9 = v9;
      v16 = FBSApplicationTerminationGroupDescription();
      *buf = 138543874;
      v23 = v15;
      v24 = 2114;
      v25 = v16;
      v26 = 2114;
      v27 = v13;
      _os_log_impl(&dword_1A89DD000, v14, OS_LOG_TYPE_DEFAULT, "[FBSystemService] Request received from %{public}@ to terminate %{public}@: %{public}@", buf, 0x20u);
    }

    else
    {
      v9 = v9;
    }

    v18 = +[FBSystemService sharedInstance];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __76__FBSystemAppProxyServiceServer__handleTerminateApplicationGroup_forClient___block_invoke_26;
    v20[3] = &unk_1E783B218;
    v21 = v5;
    [v18 terminateApplicationGroup:v9 forReason:int64 andReport:v11 withDescription:v13 completion:v20];
  }

  else
  {
    v17 = FBLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = @"com.apple.multitasking.termination";
      _os_log_impl(&dword_1A89DD000, v17, OS_LOG_TYPE_DEFAULT, "Entitlement %@ required to kill applications.", buf, 0xCu);
    }

    [v5 sendReplyMessageWithPacker:&__block_literal_global_25];
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __76__FBSystemAppProxyServiceServer__handleTerminateApplicationGroup_forClient___block_invoke(uint64_t a1, void *a2)
{
  v2 = *MEMORY[0x1E699FA40];
  xdict = a2;
  xpc_dictionary_set_int64(xdict, v2, 1);
  xpc_dictionary_set_string(xdict, *MEMORY[0x1E699FA50], "client not entitled");
}

uint64_t __76__FBSystemAppProxyServiceServer__handleTerminateApplicationGroup_forClient___block_invoke_26(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __76__FBSystemAppProxyServiceServer__handleTerminateApplicationGroup_forClient___block_invoke_2;
  v4[3] = &__block_descriptor_33_e33_v16__0__NSObject_OS_xpc_object__8l;
  v5 = a2;
  return [v2 sendReplyMessageWithPacker:v4];
}

void __76__FBSystemAppProxyServiceServer__handleTerminateApplicationGroup_forClient___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = 0;
  }

  else
  {
    v4 = 3;
  }

  xdict = v3;
  xpc_dictionary_set_int64(v3, *MEMORY[0x1E699FA40], v4);
  if ((*(a1 + 32) & 1) == 0)
  {
    xpc_dictionary_set_string(xdict, *MEMORY[0x1E699FA50], "found nothing to terminate");
  }
}

- (void)_handleShutdown:(id)a3 forClient:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  shutdownAuthenticator = self->_shutdownAuthenticator;
  v23 = 0;
  v9 = [(FBServiceClientAuthenticator *)shutdownAuthenticator authenticateClient:v7 error:&v23];
  v10 = v23;
  if (v9)
  {
    v11 = +[FBSystemService sharedInstance];
    v12 = [v11 queue];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __59__FBSystemAppProxyServiceServer__handleShutdown_forClient___block_invoke;
    v19[3] = &unk_1E783B300;
    v20 = v6;
    v21 = v7;
    v22 = v11;
    v13 = v11;
    [v12 performAsync:v19];
  }

  else
  {
    v13 = FBLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v7 processHandle];
      v15 = FBSProcessPrettyDescription();
      v16 = [v10 userInfo];
      v17 = [v16 objectForKey:*MEMORY[0x1E696A588]];
      *buf = 138543618;
      v25 = v15;
      v26 = 2114;
      v27 = v17;
      _os_log_impl(&dword_1A89DD000, v13, OS_LOG_TYPE_DEFAULT, "[FBSystemService] %{public}@ is not permitted to initate system shutdown: %{public}@", buf, 0x16u);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __59__FBSystemAppProxyServiceServer__handleShutdown_forClient___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) payload];
  v3 = BSDeserializeBSXPCEncodableObjectFromXPCDictionary();

  v4 = FBLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v3;
    _os_log_impl(&dword_1A89DD000, v4, OS_LOG_TYPE_DEFAULT, "[FBSystemService] Request received to shutdown system from client: %{public}@ with options: %{public}@", &v9, 0x16u);
  }

  v6 = *(a1 + 48);
  v7 = [*(a1 + 40) processHandle];
  [v6 shutdownWithOptions:v3 origin:v7];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)noteClientDidConnect:(id)a3 withMessage:(id)a4
{
  v5 = MEMORY[0x1E699FCF8];
  v6 = a3;
  v8 = [v5 messageWithPacker:&__block_literal_global_29];
  v7 = [MEMORY[0x1E695DFD8] setWithObject:v6];

  [(FBSServiceFacility *)self sendMessage:v8 withType:0 toClients:v7];
}

void __66__FBSystemAppProxyServiceServer_noteClientDidConnect_withMessage___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E698E740];
  v3 = a2;
  v5 = [v2 processHandle];
  v4 = *MEMORY[0x1E699FA48];
  BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
}

- (void)noteDidReceiveMessage:(id)a3 withType:(int64_t)a4 fromClient:(id)a5
{
  v11 = a3;
  v9 = a5;
  if (!v9)
  {
    [FBSystemAppProxyServiceServer noteDidReceiveMessage:a2 withType:self fromClient:?];
  }

  v10 = v9;
  if (a4 <= 2)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        [(FBSystemAppProxyServiceServer *)self _handleGetPasscodeLockedOrBlockedStatus:v11 forClient:v9];
      }

      else if (a4 == 2)
      {
        [(FBSystemAppProxyServiceServer *)self _handleGetProcessHandle:v11 forClient:v9];
      }
    }

    else
    {
      [(FBSystemAppProxyServiceServer *)self _handleSystemApplicationBundleIdentifier:v11 forClient:v9];
    }
  }

  else if (a4 > 4)
  {
    if (a4 == 5)
    {
      [(FBSystemAppProxyServiceServer *)self _handleTerminateApplicationGroup:v11 forClient:v9];
    }

    else if (a4 == 6)
    {
      [(FBSystemAppProxyServiceServer *)self _handleShutdown:v11 forClient:v9];
    }
  }

  else if (a4 == 3)
  {
    [(FBSystemAppProxyServiceServer *)self _handleActions:v11 forClient:v9];
  }

  else
  {
    [(FBSystemAppProxyServiceServer *)self _handleTerminateApplication:v11 forClient:v9];
  }
}

- (void)noteDidReceiveMessage:(const char *)a1 withType:(uint64_t)a2 fromClient:.cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"client"];
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
    v15 = @"FBSystemAppProxyServiceServer.m";
    v16 = 1024;
    v17 = 254;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A89DD000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end