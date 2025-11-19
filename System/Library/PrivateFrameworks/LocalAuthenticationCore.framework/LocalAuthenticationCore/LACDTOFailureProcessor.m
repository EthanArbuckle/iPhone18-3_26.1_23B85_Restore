@interface LACDTOFailureProcessor
- (BOOL)_checkErrorRequiresUI:(id)a3;
- (BOOL)canProcessRequest:(id)a3;
- (LACDTOFailureProcessor)initWithReplyQueue:(id)a3 ui:(id)a4;
- (void)postProcessRequest:(id)a3 result:(id)a4 completion:(id)a5;
- (void)processRequest:(id)a3 configuration:(id)a4 completion:(id)a5;
@end

@implementation LACDTOFailureProcessor

- (LACDTOFailureProcessor)initWithReplyQueue:(id)a3 ui:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = LACDTOFailureProcessor;
  v7 = [(LACDTOFailureProcessor *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_ui, a4);
  }

  return v8;
}

- (BOOL)canProcessRequest:(id)a3
{
  v3 = a3;
  v4 = [v3 options];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:1000];
  v6 = [v4 objectForKey:v5];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = [v3 options];
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:1039];
    v11 = [v9 objectForKey:v10];
    v12 = [v11 BOOLValue];

    v8 = v12 ^ 1;
  }

  return v8;
}

- (void)processRequest:(id)a3 configuration:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = [LACEvaluationResult resultWithNext:a3];
  (*(a5 + 2))(v7, v8);
}

- (void)postProcessRequest:(id)a3 result:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (-[LACDTOFailureProcessor canProcessRequest:](self, "canProcessRequest:", v8) && ([v9 error], v11 = objc_claimAutoreleasedReturnValue(), v11, v11) && (objc_msgSend(v9, "error"), v12 = objc_claimAutoreleasedReturnValue(), v13 = -[LACDTOFailureProcessor _checkErrorRequiresUI:](self, "_checkErrorRequiresUI:", v12), v12, v13))
  {
    v14 = LACLogDTO();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0233000, v14, OS_LOG_TYPE_DEFAULT, "Failure alert will appear.", buf, 2u);
    }

    ui = self->_ui;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __63__LACDTOFailureProcessor_postProcessRequest_result_completion___block_invoke;
    v16[3] = &unk_1E7A95998;
    v18 = v10;
    v17 = v9;
    [(LACUserInterfacePresenting *)ui presentUIForIdentifier:5 request:v8 completion:v16];
  }

  else
  {
    (*(v10 + 2))(v10, v9);
  }
}

void __63__LACDTOFailureProcessor_postProcessRequest_result_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = LACLogDTO();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1B0233000, v4, OS_LOG_TYPE_DEFAULT, "Failure alert did disappear (err: %@)", &v7, 0xCu);
  }

  v5 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();

  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)_checkErrorRequiresUI:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [LACError error:v3 hasCode:-1 subcode:32]|| [LACError error:v3 hasCode:-8 subcode:15]|| [LACError error:v3 hasCode:-8 subcode:29]|| [LACError error:v3 hasCode:-8 subcode:4]|| [LACError error:v3 hasCode:-8 subcode:-1]|| [LACError error:v3 hasCode:-4 subcode:12]|| [LACError error:v3 hasCode:-4 subcode:18];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end