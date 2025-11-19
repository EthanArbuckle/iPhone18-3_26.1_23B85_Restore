@interface LACDTOPolicyProcessorEmptyPasscode
- (BOOL)canProcessRequest:(id)a3;
- (LACDTOPolicyProcessorEmptyPasscode)initWithCredentialStore:(id)a3 device:(id)a4;
- (void)_processAndEvaluateRequest:(id)a3 completion:(id)a4;
- (void)processRequest:(id)a3 configuration:(id)a4 completion:(id)a5;
@end

@implementation LACDTOPolicyProcessorEmptyPasscode

- (LACDTOPolicyProcessorEmptyPasscode)initWithCredentialStore:(id)a3 device:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = LACDTOPolicyProcessorEmptyPasscode;
  v9 = [(LACDTOPolicyProcessorEmptyPasscode *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_store, a3);
    objc_storeStrong(&v10->_device, a4);
  }

  return v10;
}

- (BOOL)canProcessRequest:(id)a3
{
  v3 = [a3 options];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:1081];
  v5 = [v3 objectForKey:v4];
  v6 = [v5 BOOLValue];

  return v6;
}

- (void)processRequest:(id)a3 configuration:(id)a4 completion:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = LACLogDTOProcessor();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = self;
    _os_log_impl(&dword_1B0233000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ started", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __78__LACDTOPolicyProcessorEmptyPasscode_processRequest_configuration_completion___block_invoke;
  v14[3] = &unk_1E7A95FC0;
  objc_copyWeak(&v16, buf);
  v12 = v10;
  v15 = v12;
  [(LACDTOPolicyProcessorEmptyPasscode *)self _processAndEvaluateRequest:v8 completion:v14];

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

- (void)_processAndEvaluateRequest:(id)a3 completion:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (![(LACDTOPolicyProcessorEmptyPasscode *)self canProcessRequest:v6])
  {
LABEL_6:
    v14 = [LACEvaluationResult resultWithNext:v6];
    v7[2](v7, v14);

    goto LABEL_7;
  }

  if (!-[LACDTODeviceInfoProvider hasPasscodeSetForUser:](self->_device, "hasPasscodeSetForUser:", [v6 evaluationUserId]))
  {
    v16 = [v6 options];
    v17 = [MEMORY[0x1E696AD98] numberWithInteger:1000];
    v18 = [v16 objectForKey:v17];
    v19 = [v18 BOOLValue];

    if (!v19)
    {
      objc_initWeak(buf, self);
      store = self->_store;
      v21 = [LACSecureData secureDataWithData:0];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __76__LACDTOPolicyProcessorEmptyPasscode__processAndEvaluateRequest_completion___block_invoke;
      v28[3] = &unk_1E7A95FE8;
      v22 = v6;
      v29 = v22;
      v23 = __76__LACDTOPolicyProcessorEmptyPasscode__processAndEvaluateRequest_completion___block_invoke(v28);
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __76__LACDTOPolicyProcessorEmptyPasscode__processAndEvaluateRequest_completion___block_invoke_2;
      v24[3] = &unk_1E7A95648;
      objc_copyWeak(&v27, buf);
      v26 = v7;
      v25 = v22;
      [(LACCredentialStore *)store setValue:v21 forCredential:v23 completion:v24];

      objc_destroyWeak(&v27);
      objc_destroyWeak(buf);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v8 = objc_alloc(MEMORY[0x1E695DF90]);
  v9 = [v6 options];
  v10 = [v8 initWithDictionary:v9];

  v11 = LACLogDTOProcessor();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v31 = self;
    v32 = 1024;
    v33 = 1081;
    v34 = 1024;
    v35 = [v6 evaluationUserId];
    _os_log_impl(&dword_1B0233000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Removing %d option because user %d has passcode", buf, 0x18u);
  }

  v12 = [MEMORY[0x1E696AD98] numberWithInteger:1081];
  [v10 setObject:0 forKeyedSubscript:v12];

  [v6 updateOptions:v10];
  v13 = [LACEvaluationResult resultWithNext:v6];
  v7[2](v7, v13);

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