@interface DOCRemoteViewController
+ (BOOL)disableWorkaroundFor132033602;
+ (id)instantiateRemoteDocumentBrowserViewControllerWithHostProxy:(id)a3 configuration:(id)a4 initialUIPBrowserState:(id)a5 completionBlock:(id)a6;
+ (id)instantiateRemoteViewControllerWithConfiguration:(id)a3 transparent:(BOOL)a4 errorHandler:(id)a5 hostProxy:(id)a6 completionHandler:(id)a7;
+ (id)serviceExtension;
- (DOCRemoteViewControllerDelegate)delegate;
- (void)updateAppearance:(id)a3 shouldFlushCA:(BOOL)a4 requiresAck:(BOOL)a5 completionBlock:(id)a6;
- (void)updateEditingTo:(BOOL)a3 animated:(BOOL)a4;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation DOCRemoteViewController

+ (id)instantiateRemoteViewControllerWithConfiguration:(id)a3 transparent:(BOOL)a4 errorHandler:(id)a5 hostProxy:(id)a6 completionHandler:(id)a7
{
  v10 = a4;
  v42 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [[DOCWeakProxy alloc] initWithTarget:v14];
  v17 = [a1 serviceExtension];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __129__DOCRemoteViewController_instantiateRemoteViewControllerWithConfiguration_transparent_errorHandler_hostProxy_completionHandler___block_invoke;
  v35[3] = &unk_1E8782EA0;
  v18 = v13;
  v38 = v18;
  v40 = a1;
  v19 = v12;
  v36 = v19;
  v20 = v15;
  v39 = v20;
  v21 = v16;
  v37 = v21;
  v22 = [(_UIResilientRemoteViewContainerViewController *)DOCRemoteContainerViewController instantiateWithExtension:v17 completion:v35];

  if (v10)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v23 = [v22 view];
    v24 = [v23 subviews];

    v25 = [v24 countByEnumeratingWithState:&v31 objects:v41 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v32;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v32 != v27)
          {
            objc_enumerationMutation(v24);
          }

          [*(*(&v31 + 1) + 8 * i) setBackgroundColor:0];
        }

        v26 = [v24 countByEnumeratingWithState:&v31 objects:v41 count:16];
      }

      while (v26);
    }
  }

  v29 = [v19 copy];
  [v22 setConfiguration:v29];

  return v22;
}

void __129__DOCRemoteViewController_instantiateRemoteViewControllerWithConfiguration_transparent_errorHandler_hostProxy_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v16[1] = MEMORY[0x1E69E9820];
    v16[2] = 3221225472;
    v16[3] = __129__DOCRemoteViewController_instantiateRemoteViewControllerWithConfiguration_transparent_errorHandler_hostProxy_completionHandler___block_invoke_2;
    v16[4] = &unk_1E8782AA0;
    v10 = &v18;
    v18 = *(a1 + 48);
    v17 = v9;
    DOCRunInMainThread();
    v11 = v17;
  }

  else
  {
    v12 = [*(a1 + 64) serviceExtension];
    v13 = [v12 _extensionContextForUUID:v7];
    [v8 setHostContext:v13];

    [v8 setConfiguration:*(a1 + 32)];
    v14 = [v8 hostContext];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __129__DOCRemoteViewController_instantiateRemoteViewControllerWithConfiguration_transparent_errorHandler_hostProxy_completionHandler___block_invoke_3;
    v15[3] = &unk_1E8782658;
    v10 = v16;
    v16[0] = *(a1 + 48);
    v11 = [v14 serviceProxyWithErrorHandler:v15];

    (*(*(a1 + 56) + 16))();
  }
}

void __129__DOCRemoteViewController_instantiateRemoteViewControllerWithConfiguration_transparent_errorHandler_hostProxy_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = v3;
  DOCRunInMainThread();
}

+ (id)instantiateRemoteDocumentBrowserViewControllerWithHostProxy:(id)a3 configuration:(id)a4 initialUIPBrowserState:(id)a5 completionBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = __Block_byref_object_copy_;
  v33[4] = __Block_byref_object_dispose_;
  v14 = v10;
  v34 = v14;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __140__DOCRemoteViewController_instantiateRemoteDocumentBrowserViewControllerWithHostProxy_configuration_initialUIPBrowserState_completionBlock___block_invoke;
  v30[3] = &unk_1E8782EF0;
  v15 = v13;
  v31 = v15;
  v32 = v33;
  v16 = MEMORY[0x1E692E2E0](v30);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __140__DOCRemoteViewController_instantiateRemoteDocumentBrowserViewControllerWithHostProxy_configuration_initialUIPBrowserState_completionBlock___block_invoke_3;
  v26[3] = &unk_1E8782F40;
  v17 = v11;
  v27 = v17;
  v18 = v12;
  v28 = v18;
  v19 = v16;
  v29 = v19;
  v20 = MEMORY[0x1E692E2E0](v26);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __140__DOCRemoteViewController_instantiateRemoteDocumentBrowserViewControllerWithHostProxy_configuration_initialUIPBrowserState_completionBlock___block_invoke_5;
  v24[3] = &unk_1E8782658;
  v21 = v19;
  v25 = v21;
  v22 = [a1 instantiateRemoteViewControllerWithConfiguration:v17 transparent:1 errorHandler:v24 hostProxy:v14 completionHandler:v20];

  _Block_object_dispose(v33, 8);

  return v22;
}

void __140__DOCRemoteViewController_instantiateRemoteDocumentBrowserViewControllerWithHostProxy_configuration_initialUIPBrowserState_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = *(a1 + 32);
  v7 = v12;
  v8 = v11;
  v9 = v10;
  DOCRunInMainThread();
}

void __140__DOCRemoteViewController_instantiateRemoteDocumentBrowserViewControllerWithHostProxy_configuration_initialUIPBrowserState_completionBlock___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 56) + 16))();
  v2 = *(*(a1 + 64) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void __140__DOCRemoteViewController_instantiateRemoteDocumentBrowserViewControllerWithHostProxy_configuration_initialUIPBrowserState_completionBlock___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __140__DOCRemoteViewController_instantiateRemoteDocumentBrowserViewControllerWithHostProxy_configuration_initialUIPBrowserState_completionBlock___block_invoke_4;
  v12[3] = &unk_1E8782F18;
  v10 = *(a1 + 48);
  v13 = v7;
  v14 = v10;
  v11 = v7;
  [a4 configureAsDocumentBrowserWithHostProxy:a3 configuration:v8 initialUIPBrowserState:v9 completionBlock:v12];
}

- (void)updateEditingTo:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [(DOCRemoteViewController *)self hostContext];
  [v6 updateEditingTo:v5 animated:v4];
}

- (void)updateAppearance:(id)a3 shouldFlushCA:(BOOL)a4 requiresAck:(BOOL)a5 completionBlock:(id)a6
{
  v7 = a3;
  v10 = a6;
  v8 = v10;
  v9 = v7;
  DOCRunInMainThread();
}

void __86__DOCRemoteViewController_updateAppearance_shouldFlushCA_requiresAck_completionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) lastAppearance];
  if ([v2 isEqual:v3])
  {
    v4 = *(a1 + 56);

    if ((v4 & 1) == 0)
    {
      if (*(a1 + 48))
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __86__DOCRemoteViewController_updateAppearance_shouldFlushCA_requiresAck_completionBlock___block_invoke_2;
        block[3] = &unk_1E87823C0;
        v7 = *(a1 + 48);
        dispatch_async(MEMORY[0x1E69E96A0], block);
      }

      return;
    }
  }

  else
  {
  }

  [*(a1 + 40) setLastAppearance:*(a1 + 32)];
  v5 = [*(a1 + 40) hostContext];
  [v5 updateAppearance:*(a1 + 32) shouldFlushCA:*(a1 + 57) completionBlock:*(a1 + 48)];
}

+ (id)serviceExtension
{
  if (serviceExtension_onceToken != -1)
  {
    +[DOCRemoteViewController serviceExtension];
  }

  v3 = serviceExtension_browserExtension;

  return v3;
}

void __43__DOCRemoteViewController_serviceExtension__block_invoke()
{
  v0 = *MEMORY[0x1E699A3D8];
  v5 = 0;
  v1 = [MEMORY[0x1E696ABD0] extensionWithIdentifier:v0 error:&v5];
  v2 = v5;
  if (v2)
  {
    v3 = MEMORY[0x1E699A450];
    v4 = *MEMORY[0x1E699A450];
    if (!*MEMORY[0x1E699A450])
    {
      DOCInitLogging();
      v4 = *v3;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __43__DOCRemoteViewController_serviceExtension__block_invoke_cold_1();
    }
  }

  else
  {
    objc_storeStrong(&serviceExtension_browserExtension, v1);
  }
}

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E699A450];
  v6 = *MEMORY[0x1E699A450];
  if (!*MEMORY[0x1E699A450])
  {
    DOCInitLogging();
    v6 = *v5;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [DOCRemoteViewController viewServiceDidTerminateWithError:];
  }

  v7 = [(DOCRemoteViewController *)self delegate];

  if (v7)
  {
    v8 = [(DOCRemoteViewController *)self delegate];
    if ([objc_opt_class() disableWorkaroundFor132033602])
    {
      v9 = &v14;
      v14 = v8;
      v10 = &v15;
      v15 = v4;
      v11 = v8;
      DOCRunInMainThread();
    }

    else
    {
      v12 = dispatch_time(0, 500000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __60__DOCRemoteViewController_viewServiceDidTerminateWithError___block_invoke;
      block[3] = &unk_1E8782320;
      v9 = &v17;
      v17 = v8;
      v10 = &v18;
      v18 = v4;
      v13 = v8;
      dispatch_after(v12, MEMORY[0x1E69E96A0], block);
    }
  }
}

+ (BOOL)disableWorkaroundFor132033602
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"DisableWorkaroundFor132033602"];

  return v3;
}

- (DOCRemoteViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __43__DOCRemoteViewController_serviceExtension__block_invoke_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_1E57D8000, v0, OS_LOG_TYPE_ERROR, "Failed to get the DocumentManager extension with error %@", v1, 0xCu);
}

- (void)viewServiceDidTerminateWithError:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_1E57D8000, v0, OS_LOG_TYPE_ERROR, "The view service did terminate with error: %{public}@", v1, 0xCu);
}

@end