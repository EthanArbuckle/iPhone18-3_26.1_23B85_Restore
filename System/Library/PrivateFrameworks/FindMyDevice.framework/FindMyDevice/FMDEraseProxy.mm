@interface FMDEraseProxy
- (void)eraseDeviceWithOptions:(id)options completion:(id)completion;
@end

@implementation FMDEraseProxy

- (void)eraseDeviceWithOptions:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  v7 = +[FMNSXPCConnectionCache sharedCache];
  v8 = +[FMNSXPCConnectionConfiguration eraseDeviceServiceConfiguration];
  v9 = [v7 resumeConnectionWithConfiguration:v8];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __51__FMDEraseProxy_eraseDeviceWithOptions_completion___block_invoke;
  v17[3] = &unk_1E86BD0E0;
  v10 = completionCopy;
  v18 = v10;
  [v9 addFailureBlock:v17];
  remoteObjectProxy = [v9 remoteObjectProxy];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __51__FMDEraseProxy_eraseDeviceWithOptions_completion___block_invoke_3;
  v14[3] = &unk_1E86BD320;
  v15 = v9;
  v16 = v10;
  v12 = v9;
  v13 = v10;
  [remoteObjectProxy eraseDeviceWithOptions:optionsCopy completion:v14];
}

void __51__FMDEraseProxy_eraseDeviceWithOptions_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = LogCategory_Unspecified();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __51__FMDEraseProxy_eraseDeviceWithOptions_completion___block_invoke_cold_1(a2, v4);
  }

  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }
}

void __51__FMDEraseProxy_eraseDeviceWithOptions_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LogCategory_Unspecified();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __51__FMDEraseProxy_eraseDeviceWithOptions_completion___block_invoke_3_cold_1(v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1DF650000, v5, OS_LOG_TYPE_DEFAULT, "eraseMacDeviceWithCompletion completed", v7, 2u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }

  [*(a1 + 32) invalidate];
}

void __51__FMDEraseProxy_eraseDeviceWithOptions_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_1DF650000, a2, OS_LOG_TYPE_ERROR, "XPC error for eraseDeviceWithCompletion: %li", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __51__FMDEraseProxy_eraseDeviceWithOptions_completion___block_invoke_3_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1DF650000, a2, OS_LOG_TYPE_ERROR, "eraseMacDeviceWithCompletion encountered an error : %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end