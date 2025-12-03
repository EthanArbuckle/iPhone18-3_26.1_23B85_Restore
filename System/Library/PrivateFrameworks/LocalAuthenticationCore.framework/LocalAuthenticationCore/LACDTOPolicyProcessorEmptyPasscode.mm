@interface LACDTOPolicyProcessorEmptyPasscode
- (BOOL)canProcessRequest:(id)request;
- (LACDTOPolicyProcessorEmptyPasscode)initWithCredentialStore:(id)store device:(id)device;
- (void)_processAndEvaluateRequest:(id)request completion:(id)completion;
- (void)processRequest:(id)request configuration:(id)configuration completion:(id)completion;
@end

@implementation LACDTOPolicyProcessorEmptyPasscode

- (LACDTOPolicyProcessorEmptyPasscode)initWithCredentialStore:(id)store device:(id)device
{
  storeCopy = store;
  deviceCopy = device;
  v12.receiver = self;
  v12.super_class = LACDTOPolicyProcessorEmptyPasscode;
  v9 = [(LACDTOPolicyProcessorEmptyPasscode *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_store, store);
    objc_storeStrong(&v10->_device, device);
  }

  return v10;
}

- (BOOL)canProcessRequest:(id)request
{
  options = [request options];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:1081];
  v5 = [options objectForKey:v4];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (void)processRequest:(id)request configuration:(id)configuration completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  configurationCopy = configuration;
  completionCopy = completion;
  v11 = LACLogDTOProcessor();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B0233000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ started", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __78__LACDTOPolicyProcessorEmptyPasscode_processRequest_configuration_completion___block_invoke;
  v14[3] = &unk_1E7A95FC0;
  objc_copyWeak(&v16, buf);
  v12 = completionCopy;
  v15 = v12;
  [(LACDTOPolicyProcessorEmptyPasscode *)self _processAndEvaluateRequest:requestCopy completion:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);

  v13 = *MEMORY[0x1E69E9840];
}

void __78__LACDTOPolicyProcessorEmptyPasscode_processRequest_configuration_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = LACLogDTOProcessor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v7 = 138543362;
    v8 = WeakRetained;
    _os_log_impl(&dword_1B0233000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ finished", &v7, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_processAndEvaluateRequest:(id)request completion:(id)completion
{
  v36 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  if (![(LACDTOPolicyProcessorEmptyPasscode *)self canProcessRequest:requestCopy])
  {
LABEL_6:
    v14 = [LACEvaluationResult resultWithNext:requestCopy];
    completionCopy[2](completionCopy, v14);

    goto LABEL_7;
  }

  if (!-[LACDTODeviceInfoProvider hasPasscodeSetForUser:](self->_device, "hasPasscodeSetForUser:", [requestCopy evaluationUserId]))
  {
    options = [requestCopy options];
    v17 = [MEMORY[0x1E696AD98] numberWithInteger:1000];
    v18 = [options objectForKey:v17];
    bOOLValue = [v18 BOOLValue];

    if (!bOOLValue)
    {
      objc_initWeak(buf, self);
      store = self->_store;
      v21 = [LACSecureData secureDataWithData:0];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __76__LACDTOPolicyProcessorEmptyPasscode__processAndEvaluateRequest_completion___block_invoke;
      v28[3] = &unk_1E7A95FE8;
      v22 = requestCopy;
      v29 = v22;
      v23 = __76__LACDTOPolicyProcessorEmptyPasscode__processAndEvaluateRequest_completion___block_invoke(v28);
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __76__LACDTOPolicyProcessorEmptyPasscode__processAndEvaluateRequest_completion___block_invoke_2;
      v24[3] = &unk_1E7A95648;
      objc_copyWeak(&v27, buf);
      v26 = completionCopy;
      v25 = v22;
      [(LACCredentialStore *)store setValue:v21 forCredential:v23 completion:v24];

      objc_destroyWeak(&v27);
      objc_destroyWeak(buf);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v8 = objc_alloc(MEMORY[0x1E695DF90]);
  options2 = [requestCopy options];
  v10 = [v8 initWithDictionary:options2];

  v11 = LACLogDTOProcessor();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v32 = 1024;
    v33 = 1081;
    v34 = 1024;
    evaluationUserId = [requestCopy evaluationUserId];
    _os_log_impl(&dword_1B0233000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Removing %d option because user %d has passcode", buf, 0x18u);
  }

  v12 = [MEMORY[0x1E696AD98] numberWithInteger:1081];
  [v10 setObject:0 forKeyedSubscript:v12];

  [requestCopy updateOptions:v10];
  v13 = [LACEvaluationResult resultWithNext:requestCopy];
  completionCopy[2](completionCopy, v13);

LABEL_7:
  v15 = *MEMORY[0x1E69E9840];
}

LACMutableCredentialRequest *__76__LACDTOPolicyProcessorEmptyPasscode__processAndEvaluateRequest_completion___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(LACMutableCredentialRequest);
  [(LACMutableCredentialRequest *)v2 setCredential:-1];
  v3 = [*(a1 + 32) externalizedContext];
  [(LACMutableCredentialRequest *)v2 setExternalizedContext:v3];

  -[LACMutableCredentialRequest setUserID:](v2, "setUserID:", [*(a1 + 32) evaluationUserId]);
  v4 = [*(a1 + 32) client];
  v5 = v4;
  if (v4)
  {
    [v4 auditToken];
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  [(LACMutableCredentialRequest *)v2 setAuditToken:v7];

  return v2;
}

void __76__LACDTOPolicyProcessorEmptyPasscode__processAndEvaluateRequest_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = LACLogDTOProcessor();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 48));
      v10 = 138543618;
      v11 = WeakRetained;
      v12 = 2114;
      v13 = v3;
      _os_log_impl(&dword_1B0233000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ failed err=%{public}@", &v10, 0x16u);
    }

    v6 = [LACEvaluationResult resultWithFailure:v3];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = [LACEvaluationResult resultWithNext:*(a1 + 32)];
    (*(v7 + 16))(v7, v8);
  }

  v9 = *MEMORY[0x1E69E9840];
}

@end