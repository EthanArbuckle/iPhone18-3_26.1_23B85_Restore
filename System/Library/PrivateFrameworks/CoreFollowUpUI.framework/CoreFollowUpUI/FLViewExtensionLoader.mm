@interface FLViewExtensionLoader
- (BOOL)_setupSessionIfNeeded:(id *)needed;
- (id)remoteViewController;
- (void)_setupSessionWithExtension:(id)extension completion:(id)completion;
@end

@implementation FLViewExtensionLoader

- (id)remoteViewController
{
  extensionViewController = self->_extensionViewController;
  if (!extensionViewController)
  {
    [(FLHeadlessExtensionLoader *)self _loadExtension:0];
    extensionViewController = self->_extensionViewController;
  }

  return extensionViewController;
}

- (BOOL)_setupSessionIfNeeded:(id *)needed
{
  extension = [(FLHeadlessExtensionLoader *)self extension];
  sessionID = [(FLHeadlessExtensionLoader *)self sessionID];

  if (!sessionID && extension)
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy_;
    v36 = __Block_byref_object_dispose_;
    v37 = 0;
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy_;
    v30 = __Block_byref_object_dispose_;
    v31 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy_;
    v24 = __Block_byref_object_dispose_;
    v25 = 0;
    v7 = dispatch_semaphore_create(0);
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __47__FLViewExtensionLoader__setupSessionIfNeeded___block_invoke;
    v15 = &unk_278E35A10;
    v17 = &v20;
    v18 = &v26;
    v19 = &v32;
    v8 = v7;
    v16 = v8;
    [(FLViewExtensionLoader *)self _setupSessionWithExtension:extension completion:&v12];
    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    objc_storeStrong(&self->_extensionViewController, v27[5]);
    [(FLHeadlessExtensionLoader *)self setSessionID:v21[5], v12, v13, v14, v15];
    if (needed)
    {
      *needed = v33[5];
    }

    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(&v26, 8);

    _Block_object_dispose(&v32, 8);
  }

  sessionID2 = [(FLHeadlessExtensionLoader *)self sessionID];
  v10 = sessionID2 != 0;

  return v10;
}

void __47__FLViewExtensionLoader__setupSessionIfNeeded___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = _FLLogSystem();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __47__FLViewExtensionLoader__setupSessionIfNeeded___block_invoke_cold_1(v9, v11);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412546;
    v23 = v7;
    v24 = 2112;
    v25 = v8;
    _os_log_impl(&dword_245383000, v11, OS_LOG_TYPE_DEFAULT, "Extension setup: %@ - %@", &v22, 0x16u);
  }

  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  v15 = *(*(a1 + 48) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v7;
  v17 = v7;

  v18 = *(*(a1 + 56) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v9;
  v20 = v9;

  dispatch_semaphore_signal(*(a1 + 32));
  v21 = *MEMORY[0x277D85DE8];
}

- (void)_setupSessionWithExtension:(id)extension completion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__FLViewExtensionLoader__setupSessionWithExtension_completion___block_invoke;
  v7[3] = &unk_278E35A38;
  v8 = completionCopy;
  v6 = completionCopy;
  [extension instantiateViewControllerWithInputItems:MEMORY[0x277CBEBF8] listenerEndpoint:0 connectionHandler:v7];
}

void __63__FLViewExtensionLoader__setupSessionWithExtension_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  if (v5)
  {
    v6 = _FLLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __63__FLViewExtensionLoader__setupSessionWithExtension_completion___block_invoke_cold_1(v5, v6);
    }

    v7 = *(*(a1 + 32) + 16);
  }

  else
  {
    v7 = *(*(a1 + 32) + 16);
  }

  v7();
}

void __47__FLViewExtensionLoader__setupSessionIfNeeded___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_245383000, a2, OS_LOG_TYPE_ERROR, "Failed to setup extension with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __63__FLViewExtensionLoader__setupSessionWithExtension_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_245383000, a2, OS_LOG_TYPE_ERROR, "Failed to instantiate extension controller with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end