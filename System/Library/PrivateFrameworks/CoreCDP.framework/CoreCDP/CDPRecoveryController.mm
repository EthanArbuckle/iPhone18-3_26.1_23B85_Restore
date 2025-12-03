@interface CDPRecoveryController
- (id)_sanitizedRecoveryErrorWithError:(id)error;
- (void)performRecovery:(id)recovery;
@end

@implementation CDPRecoveryController

- (void)performRecovery:(id)recovery
{
  v48 = *MEMORY[0x1E69E9840];
  recoveryCopy = recovery;
  v5 = _os_activity_create(&dword_1DED99000, "cdp: recovery flow", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = _CDPSignpostLogSystem();
  v7 = _CDPSignpostCreate(v6);
  v9 = v8;

  v10 = _CDPSignpostLogSystem();
  v11 = v10;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DED99000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v7, "NativeAccountRecovery", " enableTelemetry=YES ", &buf, 2u);
  }

  v12 = _CDPSignpostLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_1DED99000, v12, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: NativeAccountRecovery  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__4;
  v46 = __Block_byref_object_dispose__4;
  selfCopy = self;
  v47 = selfCopy;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __41__CDPRecoveryController_performRecovery___block_invoke;
  v33[3] = &unk_1E869E348;
  v36 = v7;
  v37 = v9;
  p_buf = &buf;
  v14 = recoveryCopy;
  v34 = v14;
  v15 = MEMORY[0x1E12CA380](v33);
  daemonConn = [(CDPController *)selfCopy daemonConn];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __41__CDPRecoveryController_performRecovery___block_invoke_2;
  v31[3] = &unk_1E869D440;
  v31[4] = selfCopy;
  v17 = v15;
  v32 = v17;
  v18 = [daemonConn daemonWithErrorHandler:v31];

  v19 = _CDPLogSystemAnalytics();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    context = [(CDPController *)selfCopy context];
    telemetryFlowID = [context telemetryFlowID];
    *v39 = 138412546;
    v40 = selfCopy;
    v41 = 2112;
    v42 = telemetryFlowID;
    _os_log_debug_impl(&dword_1DED99000, v19, OS_LOG_TYPE_DEBUG, "%@: setting context type to be CDPContextTypeAccountRecovery with flowID=%@", v39, 0x16u);
  }

  context2 = [(CDPController *)selfCopy context];
  [context2 setType:11];

  context3 = [(CDPController *)selfCopy context];
  uiProviderProxy = [(CDPController *)selfCopy uiProviderProxy];
  authProvider = [(CDPController *)selfCopy authProvider];
  v24 = [CDPAuthProviderProxy proxyWithAuthProvider:authProvider];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __41__CDPRecoveryController_performRecovery___block_invoke_29;
  v29[3] = &unk_1E869D848;
  v29[4] = selfCopy;
  v25 = v17;
  v30 = v25;
  [v18 performRecoveryWithContext:context3 uiProvider:uiProviderProxy authProvider:v24 completion:v29];

  _Block_object_dispose(&buf, 8);
  os_activity_scope_leave(&state);

  v26 = *MEMORY[0x1E69E9840];
}

void __41__CDPRecoveryController_performRecovery___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  Nanoseconds = _CDPSignpostGetNanoseconds(*(a1 + 48), *(a1 + 56));
  v8 = _CDPSignpostLogSystem();
  v9 = v8;
  v10 = *(a1 + 48);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 67240448;
    *v25 = v5 != 0;
    *&v25[4] = 1026;
    *&v25[6] = [v6 code];
    _os_signpost_emit_with_name_impl(&dword_1DED99000, v9, OS_SIGNPOST_INTERVAL_END, v10, "NativeAccountRecovery", " result != nil=%{public,signpost.telemetry:number1,name=result != nil}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0xEu);
  }

  v11 = _CDPSignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = Nanoseconds / 1000000000.0;
    v13 = *(a1 + 48);
    v14 = [v6 code];
    *buf = 134218752;
    *v25 = v13;
    *&v25[8] = 2048;
    v26 = v12;
    v27 = 1026;
    v28 = v5 != 0;
    v29 = 1026;
    v30 = v14;
    _os_log_impl(&dword_1DED99000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: NativeAccountRecovery  result != nil=%{public,signpost.telemetry:number1,name=result != nil}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", buf, 0x22u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__CDPRecoveryController_performRecovery___block_invoke_25;
  block[3] = &unk_1E869E320;
  v19 = *(a1 + 32);
  v15 = v19;
  v23 = v19;
  v21 = v5;
  v22 = v6;
  v16 = v6;
  v17 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t __41__CDPRecoveryController_performRecovery___block_invoke_25(void *a1)
{
  v2 = *(a1[7] + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  result = a1[6];
  if (result)
  {
    v5 = a1[4];
    v6 = a1[5];
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

void __41__CDPRecoveryController_performRecovery___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _sanitizedRecoveryErrorWithError:v3];
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __41__CDPRecoveryController_performRecovery___block_invoke_2_cold_1(v3, v5);
  }

  (*(*(a1 + 40) + 16))();
}

void __41__CDPRecoveryController_performRecovery___block_invoke_29(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 _sanitizedRecoveryErrorWithError:a3];
  (*(*(a1 + 40) + 16))();
}

- (id)_sanitizedRecoveryErrorWithError:(id)error
{
  v12[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v4 = errorCopy;
  if (errorCopy && ([errorCopy domain], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", @"CDPStateError"), v5, !v6))
  {
    v11 = *MEMORY[0x1E696AA08];
    v12[0] = v4;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v7 = _CDPStateError(-5200, v8);
  }

  else
  {
    v7 = v4;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

void __41__CDPRecoveryController_performRecovery___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1DED99000, a2, OS_LOG_TYPE_ERROR, "XPC Error while recovering data: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end