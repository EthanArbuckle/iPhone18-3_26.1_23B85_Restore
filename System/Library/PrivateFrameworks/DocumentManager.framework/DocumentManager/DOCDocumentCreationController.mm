@interface DOCDocumentCreationController
- (BOOL)handlesDidRequestDocumentCreation;
- (BOOL)hasCreationHandlerWithoutValidatingMethodRequirements;
- (UIDocumentBrowserViewController)browserViewController;
- (id)initForBrowserViewController:(id)controller;
- (id)landingPresenter;
- (id)underylingHandler;
- (unint64_t)underlyingHandlerType;
- (void)_sendDidBeginToLandingPresenter;
- (void)_sendDidEndToLandingPresenterWithImportedURL:(id)l canceled:(BOOL)canceled error:(id)error;
- (void)didDenyCreateDocumentSessionWithError:(id)error;
- (void)didEndSessionWithImportedURL:(id)l canceled:(BOOL)canceled error:(id)error;
- (void)performDidImportDocumentAtURL:(id)l toDestinationURL:(id)rL;
- (void)performDidRequestDocumentCreationWithHandler:(id)handler;
- (void)performFailedToImportDocumentAtURL:(id)l error:(id)error;
- (void)warnIfNoValidCreationHandler;
- (void)willBeginSession;
@end

@implementation DOCDocumentCreationController

- (void)warnIfNoValidCreationHandler
{
  v12 = *MEMORY[0x1E69E9840];
  selfCopy = self;
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
  _os_log_error_impl(&dword_1E57D8000, selfCopy, OS_LOG_TYPE_ERROR, "Warning: You must implement %{public}@ in the %{public}@ if %{public}@ is set to YES.", &v6, 0x20u);
}

- (unint64_t)underlyingHandlerType
{
  WeakRetained = objc_loadWeakRetained(&self->_browserViewController);
  delegate = [WeakRetained delegate];

  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v6 = objc_loadWeakRetained(&self->_browserViewController);
    documentLandingPresenter = [v6 documentLandingPresenter];

    if ([documentLandingPresenter conformsToProtocol:&unk_1F5F81068])
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    delegate = documentLandingPresenter;
  }

  return v5;
}

- (BOOL)hasCreationHandlerWithoutValidatingMethodRequirements
{
  WeakRetained = objc_loadWeakRetained(&self->_browserViewController);
  delegate = [WeakRetained delegate];
  if (delegate)
  {
    v5 = 1;
  }

  else
  {
    v6 = objc_loadWeakRetained(&self->_browserViewController);
    documentLandingPresenter = [v6 documentLandingPresenter];
    v5 = documentLandingPresenter != 0;
  }

  return v5;
}

- (id)initForBrowserViewController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = DOCDocumentCreationController;
  v5 = [(DOCDocumentCreationController *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_browserViewController, controllerCopy);
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

- (void)didEndSessionWithImportedURL:(id)l canceled:(BOOL)canceled error:(id)error
{
  if (self->_hasActiveSession)
  {
    [(DOCDocumentCreationController *)self _sendDidEndToLandingPresenterWithImportedURL:l canceled:canceled error:error];
  }
}

- (void)didDenyCreateDocumentSessionWithError:(id)error
{
  errorCopy = error;
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
    [(DOCDocumentCreationController *)self _sendDidEndToLandingPresenterWithImportedURL:0 canceled:1 error:errorCopy];
  }
}

- (void)_sendDidBeginToLandingPresenter
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_sendDidEndToLandingPresenterWithImportedURL:(id)l canceled:(BOOL)canceled error:(id)error
{
  canceledCopy = canceled;
  lCopy = l;
  errorCopy = error;
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

  browserViewController = [(DOCDocumentCreationController *)self browserViewController];
  documentLandingPresenter = [browserViewController documentLandingPresenter];
  if ([documentLandingPresenter conformsToProtocol:&unk_1F5F81068])
  {
    [documentLandingPresenter documentLandingBrowserDidEndDocumentCreation:browserViewController importedURL:lCopy canceled:canceledCopy error:errorCopy];
  }

  else if (documentLandingPresenter)
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
  underlyingHandlerType = [(DOCDocumentCreationController *)self underlyingHandlerType];
  if (underlyingHandlerType == 1 || underlyingHandlerType == 2)
  {
    underylingHandler = [(DOCDocumentCreationController *)self underylingHandler];
    v5 = objc_opt_respondsToSelector();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (void)performDidRequestDocumentCreationWithHandler:(id)handler
{
  v13 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  [(DOCDocumentCreationController *)self willBeginSession];
  underylingHandler = [(DOCDocumentCreationController *)self underylingHandler];
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
    v12 = underylingHandler;
    _os_log_impl(&dword_1E57D8000, v7, OS_LOG_TYPE_DEFAULT, "Sending 'document creation request' to creationHandler: %@", &v11, 0xCu);
  }

  underlyingHandlerType = [(DOCDocumentCreationController *)self underlyingHandlerType];
  if (underlyingHandlerType)
  {
    if (underlyingHandlerType == 2)
    {
      WeakRetained = objc_loadWeakRetained(&self->_browserViewController);
      [underylingHandler documentLandingBrowser:WeakRetained didRequestDocumentCreationWithHandler:handlerCopy];
      goto LABEL_10;
    }

    if (underlyingHandlerType == 1)
    {
      WeakRetained = objc_loadWeakRetained(&self->_browserViewController);
      [underylingHandler documentBrowser:WeakRetained didRequestDocumentCreationWithHandler:handlerCopy];
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

- (void)performDidImportDocumentAtURL:(id)l toDestinationURL:(id)rL
{
  v16 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  underylingHandler = [(DOCDocumentCreationController *)self underylingHandler];
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
      v15 = underylingHandler;
      _os_log_impl(&dword_1E57D8000, v10, OS_LOG_TYPE_DEFAULT, "Sending 'did import' to creationHandler: %@", &v14, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_browserViewController);
    [underylingHandler documentBrowser:WeakRetained didImportDocumentAtURL:lCopy toDestinationURL:rLCopy];
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
      v15 = underylingHandler;
      _os_log_impl(&dword_1E57D8000, v12, OS_LOG_TYPE_DEFAULT, "Sending 'did import' to landingPresenter: %@", &v14, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_browserViewController);
    [underylingHandler documentLandingBrowser:WeakRetained didImportDocumentAtURL:lCopy toDestinationURL:rLCopy];
    goto LABEL_13;
  }

LABEL_14:
  [(DOCDocumentCreationController *)self didEndSessionWithImportedURL:rLCopy canceled:0 error:0];
}

- (void)performFailedToImportDocumentAtURL:(id)l error:(id)error
{
  v16 = *MEMORY[0x1E69E9840];
  lCopy = l;
  errorCopy = error;
  underylingHandler = [(DOCDocumentCreationController *)self underylingHandler];
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
      v15 = underylingHandler;
      _os_log_impl(&dword_1E57D8000, v10, OS_LOG_TYPE_DEFAULT, "Sending 'failed to import' to creationHandler: %@", &v14, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_browserViewController);
    [underylingHandler documentBrowser:WeakRetained failedToImportDocumentAtURL:lCopy error:errorCopy];
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
      v15 = underylingHandler;
      _os_log_impl(&dword_1E57D8000, v12, OS_LOG_TYPE_DEFAULT, "Sending 'failed to import' to landingPresenter: %@", &v14, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_browserViewController);
    [underylingHandler documentLandingBrowser:WeakRetained failedToImportDocumentAtURL:lCopy error:errorCopy];
    goto LABEL_13;
  }

LABEL_14:
  [(DOCDocumentCreationController *)self didEndSessionWithImportedURL:0 canceled:0 error:errorCopy];
}

- (id)landingPresenter
{
  WeakRetained = objc_loadWeakRetained(&self->_browserViewController);
  documentLandingPresenter = [WeakRetained documentLandingPresenter];

  if ([documentLandingPresenter conformsToProtocol:&unk_1F5F81068])
  {
    v4 = documentLandingPresenter;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)underylingHandler
{
  underlyingHandlerType = [(DOCDocumentCreationController *)self underlyingHandlerType];
  if (underlyingHandlerType == 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserViewController);
    documentLandingPresenter = [WeakRetained documentLandingPresenter];
    goto LABEL_5;
  }

  if (underlyingHandlerType == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_browserViewController);
    documentLandingPresenter = [WeakRetained delegate];
LABEL_5:
    v6 = documentLandingPresenter;

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