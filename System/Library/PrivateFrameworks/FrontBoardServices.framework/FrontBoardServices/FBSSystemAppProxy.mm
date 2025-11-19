@interface FBSSystemAppProxy
+ (id)checkoutProxyWithEndpoint:(id)a3;
- (BOOL)isPasscodeLockedOrBlocked;
- (id)processHandleForBundleID:(id)a3;
- (id)systemApplicationBundleIdentifier;
- (void)_handleConnect:(id)a3;
- (void)_handleTerminationReply:(id)a3 targetDescription:(id)a4 withCompletion:(id)a5;
- (void)_sendMessageType:(int64_t)a3 withMessage:(id)a4 withReplyHandler:(id)a5 waitForReply:(BOOL)a6;
- (void)checkin;
- (void)fireCompletion:(id)a3 error:(id)a4;
- (void)fireCompletion:(id)a3 openAppErrorCode:(int64_t)a4;
- (void)handleMessage:(id)a3 withType:(int64_t)a4;
- (void)sendActions:(id)a3 withResult:(id)a4;
- (void)setKeyboardFocusApplication:(int)a3 deferringToken:(id)a4 completion:(id)a5;
- (void)shutdownWithOptions:(id)a3;
- (void)terminateApplication:(id)a3 forReason:(int64_t)a4 andReport:(BOOL)a5 withDescription:(id)a6 completion:(id)a7;
- (void)terminateApplicationGroup:(int64_t)a3 forReason:(int64_t)a4 andReport:(BOOL)a5 withDescription:(id)a6 completion:(id)a7;
@end

@implementation FBSSystemAppProxy

- (void)checkin
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __28__FBSSystemAppProxy_checkin__block_invoke;
  v2[3] = &unk_1E76BF560;
  v2[4] = self;
  __accessProxiesWithBlock(v2);
}

void __28__FBSSystemAppProxy_checkin__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = v2[11];
  if (v3 < 2)
  {
    v5 = a2;
    [v2 invalidate];
    [v5 removeObjectForKey:*(*(a1 + 32) + 80)];
  }

  else
  {
    v2[11] = v3 - 1;
  }
}

+ (id)checkoutProxyWithEndpoint:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v5 = +[(FBSServiceFacilityClient *)FBSSystemAppProxy];
    if (!v5)
    {
      [(FBSSystemAppProxy *)a2 checkoutProxyWithEndpoint:a1];
    }
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__10;
  v16 = __Block_byref_object_dispose__10;
  v17 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__FBSSystemAppProxy_checkoutProxyWithEndpoint___block_invoke;
  v9[3] = &unk_1E76BF538;
  v11 = &v12;
  v6 = v5;
  v10 = v6;
  __accessProxiesWithBlock(v9);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __47__FBSSystemAppProxy_checkoutProxyWithEndpoint___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKey:*(a1 + 32)];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(*(a1 + 40) + 8) + 40);
  if (v7)
  {
    ++*(v7 + 88);
  }

  else
  {
    v8 = [FBSSystemAppProxy alloc];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __47__FBSSystemAppProxy_checkoutProxyWithEndpoint___block_invoke_2;
    v14[3] = &unk_1E76BF510;
    v15 = *(a1 + 32);
    v9 = [(FBSServiceFacilityClient *)v8 initWithConfigurator:v14];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v12 = *(*(*(a1 + 40) + 8) + 40);
    if (v12)
    {
      [v3 setObject:v12 forKey:*(a1 + 32)];
      objc_storeStrong((*(*(*(a1 + 40) + 8) + 40) + 80), *(a1 + 32));
      v13 = *(*(*(a1 + 40) + 8) + 40);
      ++*(v13 + 88);
    }
  }
}

void __47__FBSSystemAppProxy_checkoutProxyWithEndpoint___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setEndpoint:v2];
  [v3 setIdentifier:@"com.apple.frontboardservices.system-app-proxy"];
}

- (id)systemApplicationBundleIdentifier
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__10;
  v9 = __Block_byref_object_dispose__10;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__FBSSystemAppProxy_systemApplicationBundleIdentifier__block_invoke_2;
  v4[3] = &unk_1E76BD610;
  v4[4] = &v5;
  [(FBSSystemAppProxy *)self _sendMessageType:0 withMessage:&__block_literal_global_26 withReplyHandler:v4 waitForReply:1];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __54__FBSSystemAppProxy_systemApplicationBundleIdentifier__block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    BSDeserializeStringFromXPCDictionaryWithKey();
  }
}

- (BOOL)isPasscodeLockedOrBlocked
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__FBSSystemAppProxy_isPasscodeLockedOrBlocked__block_invoke;
  v4[3] = &unk_1E76BF588;
  v4[4] = self;
  v4[5] = &v5;
  [(FBSSystemAppProxy *)self _sendMessageType:1 withMessage:0 withReplyHandler:v4 waitForReply:1];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __46__FBSSystemAppProxy_isPasscodeLockedOrBlocked__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = xpc_dictionary_get_value(v3, "result-BOOL");
    v6 = v5;
    if (v5 && object_getClass(v5) == MEMORY[0x1E69E9E58])
    {
      *(*(*(a1 + 40) + 8) + 24) = xpc_BOOL_get_value(v6);
      goto LABEL_9;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = FBLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __46__FBSSystemAppProxy_isPasscodeLockedOrBlocked__block_invoke_cold_1();
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
LABEL_9:
}

- (id)processHandleForBundleID:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__10;
  v15 = __Block_byref_object_dispose__10;
  v16 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__FBSSystemAppProxy_processHandleForBundleID___block_invoke;
  v9[3] = &unk_1E76BD578;
  v5 = v4;
  v10 = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__FBSSystemAppProxy_processHandleForBundleID___block_invoke_2;
  v8[3] = &unk_1E76BD610;
  v8[4] = &v11;
  [(FBSSystemAppProxy *)self _sendMessageType:2 withMessage:v9 withReplyHandler:v8 waitForReply:1];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (void)sendActions:(id)a3 withResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__FBSSystemAppProxy_sendActions_withResult___block_invoke;
  v12[3] = &unk_1E76BD578;
  v13 = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__FBSSystemAppProxy_sendActions_withResult___block_invoke_2;
  v10[3] = &unk_1E76BD5C8;
  v10[4] = self;
  v11 = v7;
  v8 = v7;
  v9 = v6;
  [(FBSSystemAppProxy *)self _sendMessageType:3 withMessage:v12 withReplyHandler:v10 waitForReply:0];
}

void __44__FBSSystemAppProxy_sendActions_withResult___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) count])
  {
    [*(a1 + 32) allObjects];
    objc_claimAutoreleasedReturnValue();
    BSSerializeArrayOfBSXPCEncodableObjectsToXPCDictionaryWithKey();
  }
}

void __44__FBSSystemAppProxy_sendActions_withResult___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  xdict = v3;
  if (v3 && (xpc_dictionary_get_value(v3, "result-int"), v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    int64 = xpc_dictionary_get_int64(xdict, "result-int");
  }

  else
  {
    int64 = 0;
  }

  [*(a1 + 32) fireCompletion:*(a1 + 40) openAppErrorCode:int64];
}

- (void)terminateApplication:(id)a3 forReason:(int64_t)a4 andReport:(BOOL)a5 withDescription:(id)a6 completion:(id)a7
{
  v32 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = FBLogCommon();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v29 = objc_opt_class();
    v30 = 2114;
    v31 = v12;
    v16 = v29;
    _os_log_impl(&dword_1A2DBB000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Sending request to terminate application %{public}@", buf, 0x16u);
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __89__FBSSystemAppProxy_terminateApplication_forReason_andReport_withDescription_completion___block_invoke;
  v23[3] = &unk_1E76BF5B0;
  v25 = v13;
  v26 = a4;
  v27 = a5;
  v24 = v12;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __89__FBSSystemAppProxy_terminateApplication_forReason_andReport_withDescription_completion___block_invoke_2;
  v20[3] = &unk_1E76BF5D8;
  v20[4] = self;
  v21 = v24;
  v22 = v14;
  v17 = v14;
  v18 = v24;
  v19 = v13;
  [(FBSSystemAppProxy *)self _sendMessageType:4 withMessage:v23 withReplyHandler:v20 waitForReply:0];
}

void __89__FBSSystemAppProxy_terminateApplication_forReason_andReport_withDescription_completion___block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  xpc_dictionary_set_string(xdict, "bundleID", [*(a1 + 32) UTF8String]);
  xpc_dictionary_set_int64(xdict, "t-reason", *(a1 + 48));
  xpc_dictionary_set_BOOL(xdict, "t-report", *(a1 + 56));
  v3 = *(a1 + 40);
  if (v3)
  {
    xpc_dictionary_set_string(xdict, "t-desc", [v3 UTF8String]);
  }
}

- (void)terminateApplicationGroup:(int64_t)a3 forReason:(int64_t)a4 andReport:(BOOL)a5 withDescription:(id)a6 completion:(id)a7
{
  v32 = *MEMORY[0x1E69E9840];
  v12 = a6;
  v13 = a7;
  v14 = FBLogCommon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_opt_class();
    v16 = v15;
    v17 = FBSApplicationTerminationGroupDescription(a3);
    *buf = 138543618;
    v29 = v15;
    v30 = 2114;
    v31 = v17;
    _os_log_impl(&dword_1A2DBB000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Sending request to terminate %{public}@", buf, 0x16u);
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __94__FBSSystemAppProxy_terminateApplicationGroup_forReason_andReport_withDescription_completion___block_invoke;
  v23[3] = &unk_1E76BF600;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v24 = v12;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __94__FBSSystemAppProxy_terminateApplicationGroup_forReason_andReport_withDescription_completion___block_invoke_2;
  v20[3] = &unk_1E76BF628;
  v21 = v13;
  v22 = a3;
  v20[4] = self;
  v18 = v13;
  v19 = v12;
  [(FBSSystemAppProxy *)self _sendMessageType:5 withMessage:v23 withReplyHandler:v20 waitForReply:0];
}

void __94__FBSSystemAppProxy_terminateApplicationGroup_forReason_andReport_withDescription_completion___block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  xpc_dictionary_set_int64(xdict, "t-group", *(a1 + 40));
  xpc_dictionary_set_int64(xdict, "t-reason", *(a1 + 48));
  xpc_dictionary_set_BOOL(xdict, "t-report", *(a1 + 56));
  v3 = *(a1 + 32);
  if (v3)
  {
    xpc_dictionary_set_string(xdict, "t-desc", [v3 UTF8String]);
  }
}

void __94__FBSSystemAppProxy_terminateApplicationGroup_forReason_andReport_withDescription_completion___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[6];
  v5 = a2;
  v6 = FBSApplicationTerminationGroupDescription(v4);
  [v3 _handleTerminationReply:v5 targetDescription:v6 withCompletion:a1[5]];
}

- (void)shutdownWithOptions:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__FBSSystemAppProxy_shutdownWithOptions___block_invoke;
  v6[3] = &unk_1E76BD578;
  v7 = v4;
  v5 = v4;
  [(FBSSystemAppProxy *)self _sendMessageType:6 withMessage:v6 withReplyHandler:0 waitForReply:0];
}

- (void)setKeyboardFocusApplication:(int)a3 deferringToken:(id)a4 completion:(id)a5
{
  v6 = a5;
  v7 = FBLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [FBSSystemAppProxy setKeyboardFocusApplication:deferringToken:completion:];
  }

  if (v6)
  {
    v8 = [(FBSSystemAppProxy *)self clientCallbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__FBSSystemAppProxy_setKeyboardFocusApplication_deferringToken_completion___block_invoke;
    block[3] = &unk_1E76BD318;
    v10 = v6;
    dispatch_async(v8, block);
  }
}

- (void)_handleConnect:(id)a3
{
  [a3 payload];
  objc_claimAutoreleasedReturnValue();
  BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
}

- (void)_handleTerminationReply:(id)a3 targetDescription:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = xpc_dictionary_get_value(v8, "result-int");
    v12 = v11;
    if (v11)
    {
      value = xpc_int64_get_value(v11);
      if (!value)
      {
        v14 = 0;
        goto LABEL_8;
      }
    }

    else
    {
      value = -1;
    }

    v17 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A798];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __78__FBSSystemAppProxy__handleTerminationReply_targetDescription_withCompletion___block_invoke;
    v27[3] = &unk_1E76BF650;
    v28 = v9;
    v29 = v8;
    v30 = value;
    v14 = [v17 bs_errorWithDomain:v18 code:value configuration:v27];
  }

  else
  {
    v15 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A798];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __78__FBSSystemAppProxy__handleTerminationReply_targetDescription_withCompletion___block_invoke_2;
    v24[3] = &unk_1E76BE2F8;
    v25 = v9;
    v26 = self;
    v14 = [v15 bs_errorWithDomain:v16 code:64 configuration:v24];
    v12 = v25;
  }

LABEL_8:

  if (v14)
  {
    v19 = FBLogCommon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [FBSSystemAppProxy _handleTerminationReply:v14 targetDescription:? withCompletion:?];
    }
  }

  if (v10)
  {
    v20 = [(FBSSystemAppProxy *)self clientCallbackQueue];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __78__FBSSystemAppProxy__handleTerminationReply_targetDescription_withCompletion___block_invoke_26;
    v21[3] = &unk_1E76BD750;
    v23 = v10;
    v22 = v14;
    dispatch_async(v20, v21);
  }
}

void __78__FBSSystemAppProxy__handleTerminationReply_targetDescription_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The request to terminate %@ failed.", *(a1 + 32)];
  [v4 setFailureDescription:v3];

  BSDeserializeStringFromXPCDictionaryWithKey();
}

void __78__FBSSystemAppProxy__handleTerminationReply_targetDescription_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The request to terminate %@ failed.", *(a1 + 32)];
  [v6 setFailureDescription:v3];

  v4 = *(*(a1 + 40) + 96);
  if (v4)
  {
    v5 = FBSProcessPrettyDescription(v4);
    [v6 setFailureReason:{@"The system shell (%@) probably crashed.", v5}];
  }

  else
  {
    [v6 setFailureReason:@"The system shell probably crashed."];
  }

  [v6 setCodeDescription:@"host down"];
}

- (void)handleMessage:(id)a3 withType:(int64_t)a4
{
  if (!a4)
  {
    [(FBSSystemAppProxy *)self _handleConnect:a3];
  }
}

- (void)_sendMessageType:(int64_t)a3 withMessage:(id)a4 withReplyHandler:(id)a5 waitForReply:(BOOL)a6
{
  v6 = a6;
  v10 = a4;
  v11 = a5;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __80__FBSSystemAppProxy__sendMessageType_withMessage_withReplyHandler_waitForReply___block_invoke;
  v16[3] = &unk_1E76BD700;
  v12 = v10;
  v17 = v12;
  v13 = [FBSXPCMessage messageWithPacker:v16];
  if (v11)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __80__FBSSystemAppProxy__sendMessageType_withMessage_withReplyHandler_waitForReply___block_invoke_2;
    v14[3] = &unk_1E76BD728;
    v15 = v11;
    [(FBSServiceFacilityClient *)self sendMessage:v13 withType:a3 replyHandler:v14 waitForReply:v6 timeout:0.0];

    v13 = v15;
  }

  else
  {
    [(FBSServiceFacilityClient *)self sendMessage:v13 withType:a3 replyHandler:0 waitForReply:v6 timeout:0.0];
  }
}

uint64_t __80__FBSSystemAppProxy__sendMessageType_withMessage_withReplyHandler_waitForReply___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __80__FBSSystemAppProxy__sendMessageType_withMessage_withReplyHandler_waitForReply___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 payload];
  (*(v2 + 16))(v2, v3);
}

- (void)fireCompletion:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(FBSSystemAppProxy *)self clientCallbackQueue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __42__FBSSystemAppProxy_fireCompletion_error___block_invoke;
    v9[3] = &unk_1E76BD750;
    v11 = v6;
    v10 = v7;
    dispatch_async(v8, v9);
  }
}

- (void)fireCompletion:(id)a3 openAppErrorCode:(int64_t)a4
{
  v13 = a3;
  if (a4)
  {
    a4 = FBSOpenApplicationErrorCreate(a4, 0, v6, v7, v8, v9, v10, v11, v12);
  }

  [(FBSSystemAppProxy *)self fireCompletion:v13 error:a4];
}

+ (void)checkoutProxyWithEndpoint:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot checkout proxy without an endpoint"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = a2;
    v15 = 2114;
    v16 = @"FBSSystemAppProxy.m";
    v17 = 1024;
    v18 = 56;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  v8 = v4;
  [v4 UTF8String];
  _bs_set_crash_log_message();
}

void __46__FBSSystemAppProxy_isPasscodeLockedOrBlocked__block_invoke_cold_1()
{
  v0 = objc_opt_class();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)setKeyboardFocusApplication:deferringToken:completion:.cold.1()
{
  v0 = objc_opt_class();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)_handleTerminationReply:(uint64_t)a1 targetDescription:(void *)a2 withCompletion:.cold.1(uint64_t a1, void *a2)
{
  v3 = objc_opt_class();
  v9 = [a2 descriptionWithMultilinePrefix:0];
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

@end