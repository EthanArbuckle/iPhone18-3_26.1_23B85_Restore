@interface FLExtensionViewController
- (void)beginRequestWithExtensionContext:(id)context;
- (void)finishProcessingWithUserInfo:(id)info;
- (void)processFollowUpItem:(id)item selectedAction:(id)action completion:(id)completion;
@end

@implementation FLExtensionViewController

- (void)beginRequestWithExtensionContext:(id)context
{
  contextCopy = context;
  v5 = _FLLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_245383000, v5, OS_LOG_TYPE_DEFAULT, "Follow up extension starting", v7, 2u);
  }

  context = self->_context;
  self->_context = contextCopy;
}

void __42__FLExtensionViewController_hostInterface__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _FLLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __42__FLExtensionViewController_hostInterface__block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

void __46__FLExtensionViewController_syncHostInterface__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _FLLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __42__FLExtensionViewController_hostInterface__block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

- (void)finishProcessingWithUserInfo:(id)info
{
  infoCopy = info;
  v5 = _FLLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_245383000, v5, OS_LOG_TYPE_DEFAULT, "Extension called finish", buf, 2u);
  }

  v6 = [(NSExtensionContext *)self->_context syncHostContextWithErrorHandler:&__block_literal_global_51];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__FLExtensionViewController_finishProcessingWithUserInfo___block_invoke_52;
  v7[3] = &unk_278E35920;
  v7[4] = self;
  [v6 extensionDidFinishWithUserInfo:infoCopy completionHandler:v7];
}

void __58__FLExtensionViewController_finishProcessingWithUserInfo___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _FLLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __42__FLExtensionViewController_hostInterface__block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

uint64_t __58__FLExtensionViewController_finishProcessingWithUserInfo___block_invoke_52(uint64_t result)
{
  if (*(*(result + 32) + 992))
  {
    v1 = result;
    v2 = _FLLogSystem();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_245383000, v2, OS_LOG_TYPE_DEFAULT, "Running within extension context, terminating... ", v3, 2u);
    }

    return [*(*(v1 + 32) + 992) completeRequestReturningItems:0 completionHandler:0];
  }

  return result;
}

- (void)processFollowUpItem:(id)item selectedAction:(id)action completion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  actionCopy = action;
  completionCopy = completion;
  v10 = _FLLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = itemCopy;
    v14 = 2112;
    v15 = actionCopy;
    _os_log_impl(&dword_245383000, v10, OS_LOG_TYPE_DEFAULT, "Extension is processing item: %@ action: %@", &v12, 0x16u);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __42__FLExtensionViewController_hostInterface__block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_245383000, a2, a3, "Host experienced a failure: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end