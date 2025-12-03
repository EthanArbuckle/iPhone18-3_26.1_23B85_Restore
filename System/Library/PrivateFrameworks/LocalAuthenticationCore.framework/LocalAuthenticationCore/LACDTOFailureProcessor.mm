@interface LACDTOFailureProcessor
- (BOOL)_checkErrorRequiresUI:(id)i;
- (BOOL)canProcessRequest:(id)request;
- (LACDTOFailureProcessor)initWithReplyQueue:(id)queue ui:(id)ui;
- (void)postProcessRequest:(id)request result:(id)result completion:(id)completion;
- (void)processRequest:(id)request configuration:(id)configuration completion:(id)completion;
@end

@implementation LACDTOFailureProcessor

- (LACDTOFailureProcessor)initWithReplyQueue:(id)queue ui:(id)ui
{
  uiCopy = ui;
  v10.receiver = self;
  v10.super_class = LACDTOFailureProcessor;
  v7 = [(LACDTOFailureProcessor *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_ui, ui);
  }

  return v8;
}

- (BOOL)canProcessRequest:(id)request
{
  requestCopy = request;
  options = [requestCopy options];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:1000];
  v6 = [options objectForKey:v5];
  bOOLValue = [v6 BOOLValue];

  if (bOOLValue)
  {
    v8 = 0;
  }

  else
  {
    options2 = [requestCopy options];
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:1039];
    v11 = [options2 objectForKey:v10];
    bOOLValue2 = [v11 BOOLValue];

    v8 = bOOLValue2 ^ 1;
  }

  return v8;
}

- (void)processRequest:(id)request configuration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  v8 = [LACEvaluationResult resultWithNext:request];
  (*(completion + 2))(completionCopy, v8);
}

- (void)postProcessRequest:(id)request result:(id)result completion:(id)completion
{
  requestCopy = request;
  resultCopy = result;
  completionCopy = completion;
  if (-[LACDTOFailureProcessor canProcessRequest:](self, "canProcessRequest:", requestCopy) && ([resultCopy error], v11 = objc_claimAutoreleasedReturnValue(), v11, v11) && (objc_msgSend(resultCopy, "error"), v12 = objc_claimAutoreleasedReturnValue(), v13 = -[LACDTOFailureProcessor _checkErrorRequiresUI:](self, "_checkErrorRequiresUI:", v12), v12, v13))
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
    v18 = completionCopy;
    v17 = resultCopy;
    [(LACUserInterfacePresenting *)ui presentUIForIdentifier:5 request:requestCopy completion:v16];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, resultCopy);
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

- (BOOL)_checkErrorRequiresUI:(id)i
{
  iCopy = i;
  if (iCopy)
  {
    v4 = [LACError error:iCopy hasCode:-1 subcode:32]|| [LACError error:iCopy hasCode:-8 subcode:15]|| [LACError error:iCopy hasCode:-8 subcode:29]|| [LACError error:iCopy hasCode:-8 subcode:4]|| [LACError error:iCopy hasCode:-8 subcode:-1]|| [LACError error:iCopy hasCode:-4 subcode:12]|| [LACError error:iCopy hasCode:-4 subcode:18];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end