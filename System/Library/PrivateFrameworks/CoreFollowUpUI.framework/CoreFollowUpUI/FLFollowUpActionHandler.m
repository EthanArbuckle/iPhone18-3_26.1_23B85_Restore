@interface FLFollowUpActionHandler
- (NSString)description;
- (id)_extensionLoader;
- (void)dealloc;
- (void)extensionDidFinishWithError:(id)a3 userInfo:(id)a4 completionHandler:(id)a5;
- (void)handleExtensionBasedAction:(id)a3 completion:(id)a4;
- (void)handleExtensionBasedAction:(id)a3 completionWithUserInfo:(id)a4;
@end

@implementation FLFollowUpActionHandler

- (id)_extensionLoader
{
  extensionLoader = self->_extensionLoader;
  if (!extensionLoader)
  {
    v4 = [FLViewExtensionLoader alloc];
    v5 = [(FLHeadlessActionHandler *)self item];
    v6 = [(FLHeadlessExtensionLoader *)v4 initWithFollowUp:v5 andDelegate:self];
    v7 = self->_extensionLoader;
    self->_extensionLoader = v6;

    objc_initWeak(&location, self);
    v8 = self->_extensionLoader;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __43__FLFollowUpActionHandler__extensionLoader__block_invoke;
    v10[3] = &unk_278E358A8;
    objc_copyWeak(&v11, &location);
    [(FLHeadlessExtensionLoader *)v8 setRequestInterruptionBlock:v10];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
    extensionLoader = self->_extensionLoader;
  }

  return extensionLoader;
}

void __43__FLFollowUpActionHandler__extensionLoader__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = FLError();
    [v3 extensionDidFinishWithError:v2];

    WeakRetained = v3;
  }
}

- (void)handleExtensionBasedAction:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__FLFollowUpActionHandler_handleExtensionBasedAction_completion___block_invoke;
  v8[3] = &unk_278E358D0;
  v9 = v6;
  v7 = v6;
  [(FLFollowUpActionHandler *)self handleExtensionBasedAction:a3 completionWithUserInfo:v8];
}

uint64_t __65__FLFollowUpActionHandler_handleExtensionBasedAction_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a4);
  }

  return result;
}

- (void)handleExtensionBasedAction:(id)a3 completionWithUserInfo:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _FLSignpostCreate();
  v10 = v9;
  v11 = _FLSignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [FLFollowUpActionHandler handleExtensionBasedAction:v8 completionWithUserInfo:v11];
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __77__FLFollowUpActionHandler_handleExtensionBasedAction_completionWithUserInfo___block_invoke;
  v22[3] = &unk_278E358F8;
  v24 = v8;
  v25 = v10;
  v12 = v7;
  v23 = v12;
  v13 = MEMORY[0x245D69850](v22);
  completionHandler = self->_completionHandler;
  self->_completionHandler = v13;

  v15 = _FLLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(FLHeadlessActionHandler *)self item];
    *buf = 138412290;
    v27 = v16;
    _os_log_impl(&dword_245383000, v15, OS_LOG_TYPE_DEFAULT, "Starting to load extension for follow up: %@", buf, 0xCu);
  }

  v17 = [MEMORY[0x277CFE520] sharedExtensionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__FLFollowUpActionHandler_handleExtensionBasedAction_completionWithUserInfo___block_invoke_3;
  block[3] = &unk_278E35970;
  block[4] = self;
  v21 = v6;
  v18 = v6;
  dispatch_async(v17, block);

  v19 = *MEMORY[0x277D85DE8];
}

void __77__FLFollowUpActionHandler_handleExtensionBasedAction_completionWithUserInfo___block_invoke(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = a1[5];
  v10 = a1[6];
  Nanoseconds = _FLSignpostGetNanoseconds();
  v12 = _FLSignpostLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    __77__FLFollowUpActionHandler_handleExtensionBasedAction_completionWithUserInfo___block_invoke_cold_1(Nanoseconds, a1 + 5, v12);
  }

  v13 = a1[4];
  if (v13)
  {
    (*(v13 + 16))(v13, a2, v7, v8);
  }
}

void __77__FLFollowUpActionHandler_handleExtensionBasedAction_completionWithUserInfo___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) _extensionLoader];
  v3 = [v2 remoteInterface];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 item];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __77__FLFollowUpActionHandler_handleExtensionBasedAction_completionWithUserInfo___block_invoke_2;
    v7[3] = &unk_278E35948;
    v6 = *(a1 + 40);
    v7[4] = *(a1 + 32);
    [v3 processFollowUpItem:v5 selectedAction:v6 completion:v7];
  }

  else
  {
    [v4 extensionDidFinish];
  }
}

void __77__FLFollowUpActionHandler_handleExtensionBasedAction_completionWithUserInfo___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = _FLLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    *buf = 138412290;
    v13 = v5;
    _os_log_impl(&dword_245383000, v4, OS_LOG_TYPE_DEFAULT, "Extension processed follow up: %@", buf, 0xCu);
  }

  if (a2)
  {
    [*(a1 + 32) extensionDidFinish];
  }

  else
  {
    v6 = _FLLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_245383000, v6, OS_LOG_TYPE_DEFAULT, "Extension did not handle this event silently, trying to fetch remote UI", buf, 2u);
    }

    v7 = [*(*(a1 + 32) + 16) remoteViewController];
    v8 = *(a1 + 32);
    v9 = *(v8 + 24);
    *(v8 + 24) = v7;

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__FLFollowUpActionHandler_handleExtensionBasedAction_completionWithUserInfo___block_invoke_5;
    block[3] = &unk_278E35920;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __77__FLFollowUpActionHandler_handleExtensionBasedAction_completionWithUserInfo___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) extensionRequestedViewControllerPresentation];

  if (v2)
  {
    v3 = [*(a1 + 32) extensionRequestedViewControllerPresentation];
    v3[2](v3, *(*(a1 + 32) + 24));
  }
}

- (void)extensionDidFinishWithError:(id)a3 userInfo:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __82__FLFollowUpActionHandler_extensionDidFinishWithError_userInfo_completionHandler___block_invoke;
  v18[3] = &unk_278E35998;
  v18[4] = self;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  v14 = MEMORY[0x245D69850](v18);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __82__FLFollowUpActionHandler_extensionDidFinishWithError_userInfo_completionHandler___block_invoke_8;
  v16[3] = &unk_278E359E8;
  v16[4] = self;
  v17 = v14;
  v15 = v14;
  dispatch_async(MEMORY[0x277D85CD0], v16);
}

uint64_t __82__FLFollowUpActionHandler_extensionDidFinishWithError_userInfo_completionHandler___block_invoke(void *a1)
{
  v2 = *(a1[4] + 32);
  if (v2)
  {
    (*(v2 + 16))(v2, a1[5] == 0, a1[6]);
    v3 = a1[4];
    v4 = *(v3 + 32);
    *(v3 + 32) = 0;
  }

  v5 = _FLLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_245383000, v5, OS_LOG_TYPE_DEFAULT, "Handler completed", v7, 2u);
  }

  result = a1[7];
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __82__FLFollowUpActionHandler_extensionDidFinishWithError_userInfo_completionHandler___block_invoke_8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) presentingViewController];

  if (v2)
  {
    v3 = _FLLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_245383000, v3, OS_LOG_TYPE_DEFAULT, "Dismissing remote view contrller", buf, 2u);
    }

    v4 = *(*(a1 + 32) + 24);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __82__FLFollowUpActionHandler_extensionDidFinishWithError_userInfo_completionHandler___block_invoke_9;
    v6[3] = &unk_278E359C0;
    v7 = *(a1 + 40);
    [v4 dismissViewControllerAnimated:1 completion:v6];
  }

  else
  {
    v5 = *(*(a1 + 40) + 16);

    v5();
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [objc_opt_class() description];
  v5 = [v3 stringWithFormat:@"<%@: %p>", v4, self];

  return v5;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _FLLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = self;
    _os_log_impl(&dword_245383000, v3, OS_LOG_TYPE_DEFAULT, "%@ going away", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = FLFollowUpActionHandler;
  [(FLHeadlessActionHandler *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)handleExtensionBasedAction:(uint64_t)a1 completionWithUserInfo:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_debug_impl(&dword_245383000, a2, OS_LOG_TYPE_DEBUG, "BEGIN [%llu]: Extension Processing", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __77__FLFollowUpActionHandler_handleExtensionBasedAction_completionWithUserInfo___block_invoke_cold_1(unint64_t a1, uint64_t *a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v5 = 134218240;
  v6 = v3;
  v7 = 2048;
  v8 = a1 / 1000000000.0;
  _os_log_debug_impl(&dword_245383000, log, OS_LOG_TYPE_DEBUG, "END [%llu] %fs: Extension Processing", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end