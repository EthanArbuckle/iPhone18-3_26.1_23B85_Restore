@interface DOCDocumentCreationController
- (BOOL)handlesDidRequestDocumentCreation;
- (BOOL)hasCreationHandlerWithoutValidatingMethodRequirements;
- (UIDocumentBrowserViewController)browserViewController;
- (id)initForBrowserViewController:(id)a3;
- (id)landingPresenter;
- (id)underylingHandler;
- (unint64_t)underlyingHandlerType;
- (void)_sendDidBeginToLandingPresenter;
- (void)_sendDidEndToLandingPresenterWithImportedURL:(id)a3 canceled:(BOOL)a4 error:(id)a5;
- (void)didDenyCreateDocumentSessionWithError:(id)a3;
- (void)didEndSessionWithImportedURL:(id)a3 canceled:(BOOL)a4 error:(id)a5;
- (void)performDidImportDocumentAtURL:(id)a3 toDestinationURL:(id)a4;
- (void)performDidRequestDocumentCreationWithHandler:(id)a3;
- (void)performFailedToImportDocumentAtURL:(id)a3 error:(id)a4;
- (void)warnIfNoValidCreationHandler;
- (void)willBeginSession;
@end

@implementation DOCDocumentCreationController

- (void)warnIfNoValidCreationHandler
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a1;
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_7();
  v5 = NSStringFromProtocol(v4);
  v6 = 138543874;
  v7 = a2;
  v8 = 2114;
  v9 = v5;
  v10 = 2114;
  v11 = @"allowsDocumentCreation";
  _os_log_error_impl(&dword_1E57D8000, v3, OS_LOG_TYPE_ERROR, "Warning: You must implement %{public}@ in the %{public}@ if %{public}@ is set to YES.", &v6, 0x20u);
}

- (unint64_t)underlyingHandlerType
{
  WeakRetained = objc_loadWeakRetained(&self->_browserViewController);
  v4 = [WeakRetained delegate];

  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v6 = objc_loadWeakRetained(&self->_browserViewController);
    v7 = [v6 documentLandingPresenter];

    if ([v7 conformsToProtocol:&unk_1F5F81068])
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    v4 = v7;
  }

  return v5;
}

- (BOOL)hasCreationHandlerWithoutValidatingMethodRequirements
{
  WeakRetained = objc_loadWeakRetained(&self->_browserViewController);
  v4 = [WeakRetained delegate];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = objc_loadWeakRetained(&self->_browserViewController);
    v7 = [v6 documentLandingPresenter];
    v5 = v7 != 0;
  }

  return v5;
}

- (id)initForBrowserViewController:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DOCDocumentCreationController;
  v5 = [(DOCDocumentCreationController *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_browserViewController, v4);
    activeDocumentCreationIntent = v6->_activeDocumentCreationIntent;
    v6->_activeDocumentCreationIntent = 0;
  }

  return v6;
}

- (void)willBeginSession
{
  if (!self->_hasActiveSession)
  {
    [(DOCDocumentCreationController *)self _sendDidBeginToLandingPresenter];
  }
}

- (void)didEndSessionWithImportedURL:(id)a3 canceled:(BOOL)a4 error:(id)a5
{
  if (self->_hasActiveSession)
  {
    [(DOCDocumentCreationController *)self _sendDidEndToLandingPresenterWithImportedURL:a3 canceled:a4 error:a5];
  }
}

- (void)didDenyCreateDocumentSessionWithError:(id)a3
{
  v4 = a3;
  if (self->_hasActiveSession)
  {
    v5 = MEMORY[0x1E699A450];
    v6 = *MEMORY[0x1E699A450];
    if (!*MEMORY[0x1E699A450])
    {
      DOCInitLogging();
      v6 = *v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [DOCDocumentCreationController didDenyCreateDocumentSessionWithError:];
    }
  }

  else
  {
    [(DOCDocumentCreationController *)self _sendDidBeginToLandingPresenter];
    [(DOCDocumentCreationController *)self _sendDidEndToLandingPresenterWithImportedURL:0 canceled:1 error:v4];
  }
}

- (void)_sendDidBeginToLandingPresenter
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_sendDidEndToLandingPresenterWithImportedURL:(id)a3 canceled:(BOOL)a4 error:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  self->_hasActiveSession = 0;
  v10 = MEMORY[0x1E699A448];
  v11 = *MEMORY[0x1E699A448];
  if (!*MEMORY[0x1E699A448])
  {
    DOCInitLogging();
    v11 = *v10;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_1E57D8000, v11, OS_LOG_TYPE_DEFAULT, "Sending 'didEnd' to landingPresenter", v16, 2u);
  }

  v12 = [(DOCDocumentCreationController *)self browserViewController];
  v13 = [v12 documentLandingPresenter];
  if ([v13 conformsToProtocol:&unk_1F5F81068])
  {
    [v13 documentLandingBrowserDidEndDocumentCreation:v12 importedURL:v8 canceled:v6 error:v9];
  }

  else if (v13)
  {
    v14 = *v10;
    if (!*v10)
    {
      DOCInitLogging();
      v14 = *v10;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [DOCDocumentCreationController _sendDidEndToLandingPresenterWithImportedURL:canceled:error:];
    }
  }

  if (!self->_hasActiveSession)
  {
    activeDocumentCreationIntent = self->_activeDocumentCreationIntent;
    self->_activeDocumentCreationIntent = 0;
  }
}

- (BOOL)handlesDidRequestDocumentCreation
{
  v3 = [(DOCDocumentCreationController *)self underlyingHandlerType];
  if (v3 == 1 || v3 == 2)
  {
    v4 = [(DOCDocumentCreationController *)self underylingHandler];
    v5 = objc_opt_respondsToSelector();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (void)performDidRequestDocumentCreationWithHandler:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(DOCDocumentCreationController *)self willBeginSession];
  v5 = [(DOCDocumentCreationController *)self underylingHandler];
  v6 = MEMORY[0x1E699A448];
  v7 = *MEMORY[0x1E699A448];
  if (!*MEMORY[0x1E699A448])
  {
    DOCInitLogging();
    v7 = *v6;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&dword_1E57D8000, v7, OS_LOG_TYPE_DEFAULT, "Sending 'document creation request' to creationHandler: %@", &v11, 0xCu);
  }

  v8 = [(DOCDocumentCreationController *)self underlyingHandlerType];
  if (v8)
  {
    if (v8 == 2)
    {
      WeakRetained = objc_loadWeakRetained(&self->_browserViewController);
      [v5 documentLandingBrowser:WeakRetained didRequestDocumentCreationWithHandler:v4];
      goto LABEL_10;
    }

    if (v8 == 1)
    {
      WeakRetained = objc_loadWeakRetained(&self->_browserViewController);
      [v5 documentBrowser:WeakRetained didRequestDocumentCreationWithHandler:v4];
LABEL_10:
    }
  }

  else
  {
    v10 = *v6;
    if (!*v6)
    {
      DOCInitLogging();
      v10 = *v6;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [DOCDocumentCreationController performDidRequestDocumentCreationWithHandler:];
    }
  }
}

- (void)performDidImportDocumentAtURL:(id)a3 toDestinationURL:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(DOCDocumentCreationController *)self underylingHandler];
  if (objc_opt_respondsToSelector())
  {
    v9 = MEMORY[0x1E699A448];
    v10 = *MEMORY[0x1E699A448];
    if (!*MEMORY[0x1E699A448])
    {
      DOCInitLogging();
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v8;
      _os_log_impl(&dword_1E57D8000, v10, OS_LOG_TYPE_DEFAULT, "Sending 'did import' to creationHandler: %@", &v14, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_browserViewController);
    [v8 documentBrowser:WeakRetained didImportDocumentAtURL:v6 toDestinationURL:v7];
LABEL_13:

    goto LABEL_14;
  }

  if (objc_opt_respondsToSelector())
  {
    v12 = *MEMORY[0x1E699A448];
    if (!*MEMORY[0x1E699A448])
    {
      v13 = MEMORY[0x1E699A448];
      DOCInitLogging();
      v12 = *v13;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v8;
      _os_log_impl(&dword_1E57D8000, v12, OS_LOG_TYPE_DEFAULT, "Sending 'did import' to landingPresenter: %@", &v14, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_browserViewController);
    [v8 documentLandingBrowser:WeakRetained didImportDocumentAtURL:v6 toDestinationURL:v7];
    goto LABEL_13;
  }

LABEL_14:
  [(DOCDocumentCreationController *)self didEndSessionWithImportedURL:v7 canceled:0 error:0];
}

- (void)performFailedToImportDocumentAtURL:(id)a3 error:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(DOCDocumentCreationController *)self underylingHandler];
  if (objc_opt_respondsToSelector())
  {
    v9 = MEMORY[0x1E699A448];
    v10 = *MEMORY[0x1E699A448];
    if (!*MEMORY[0x1E699A448])
    {
      DOCInitLogging();
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v8;
      _os_log_impl(&dword_1E57D8000, v10, OS_LOG_TYPE_DEFAULT, "Sending 'failed to import' to creationHandler: %@", &v14, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_browserViewController);
    [v8 documentBrowser:WeakRetained failedToImportDocumentAtURL:v6 error:v7];
LABEL_13:

    goto LABEL_14;
  }

  if (objc_opt_respondsToSelector())
  {
    v12 = *MEMORY[0x1E699A448];
    if (!*MEMORY[0x1E699A448])
    {
      v13 = MEMORY[0x1E699A448];
      DOCInitLogging();
      v12 = *v13;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v8;
      _os_log_impl(&dword_1E57D8000, v12, OS_LOG_TYPE_DEFAULT, "Sending 'failed to import' to landingPresenter: %@", &v14, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_browserViewController);
    [v8 documentLandingBrowser:WeakRetained failedToImportDocumentAtURL:v6 error:v7];
    goto LABEL_13;
  }

LABEL_14:
  [(DOCDocumentCreationController *)self didEndSessionWithImportedURL:0 canceled:0 error:v7];
}

- (id)landingPresenter
{
  WeakRetained = objc_loadWeakRetained(&self->_browserViewController);
  v3 = [WeakRetained documentLandingPresenter];

  if ([v3 conformsToProtocol:&unk_1F5F81068])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)underylingHandler
{
  v3 = [(DOCDocumentCreationController *)self underlyingHandlerType];
  if (v3 == 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserViewController);
    v5 = [WeakRetained documentLandingPresenter];
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserViewController);
    v5 = [WeakRetained delegate];
LABEL_5:
    v6 = v5;

    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (UIDocumentBrowserViewController)browserViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_browserViewController);

  return WeakRetained;
}

- (void)didDenyCreateDocumentSessionWithError:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_sendDidEndToLandingPresenterWithImportedURL:canceled:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)performDidRequestDocumentCreationWithHandler:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

@end