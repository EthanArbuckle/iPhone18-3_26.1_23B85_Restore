@interface FPItemOperationLocator
@end

@implementation FPItemOperationLocator

void __69__FPItemOperationLocator_Daemon__annotateWithPersonaSandboxIfNeeded___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __69__FPItemOperationLocator_Daemon__annotateWithPersonaSandboxIfNeeded___block_invoke_cold_1(a1, v5, v7);
    }
  }

  v8 = [v6 url];
  v9 = [*(a1 + 32) asFPItem];
  [v9 setFileURL:v8];

  dispatch_group_leave(*(a1 + 40));
}

void __69__FPItemOperationLocator_Daemon__annotateWithPersonaSandboxIfNeeded___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 32) asFPItem];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_1CEFC7000, a3, OS_LOG_TYPE_ERROR, "[ERROR] can't get url for item %@, %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end