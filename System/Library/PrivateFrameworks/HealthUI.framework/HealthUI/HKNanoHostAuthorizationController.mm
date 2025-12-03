@interface HKNanoHostAuthorizationController
- (HKHealthPrivacyHostAuthorizationControllerDelegate)delegate;
- (HKNanoHostAuthorizationController)init;
- (void)_remoteObjectProxyWithCompletion:(id)completion errorHandler:(id)handler;
- (void)connectionDidInterrupt;
- (void)connectionDidInvalidate;
- (void)didFinishWithError:(id)error;
- (void)invalidate;
- (void)setRequestRecord:(id)record presentationRequests:(id)requests;
@end

@implementation HKNanoHostAuthorizationController

- (HKNanoHostAuthorizationController)init
{
  v18.receiver = self;
  v18.super_class = HKNanoHostAuthorizationController;
  v2 = [(HKNanoHostAuthorizationController *)&v18 init];
  if (v2)
  {
    _HKInitializeLogging();
    v3 = HKLogAuthorization();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);

    if (v4)
    {
      v5 = HKLogAuthorization();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [HKNanoHostAuthorizationController init];
      }
    }

    v6 = objc_alloc(MEMORY[0x1E696B0B8]);
    v7 = [v6 initWithMachServiceName:*MEMORY[0x1E696BBC8] options:4096];
    v8 = HKHealthPrivacyHostRemoteViewControllerInterface();
    [(NSXPCConnection *)v7 setExportedInterface:v8];

    [(NSXPCConnection *)v7 setExportedObject:v2];
    v9 = HKHealthPrivacyServiceRemoteAuthorizationViewControllerInterface();
    [(NSXPCConnection *)v7 setRemoteObjectInterface:v9];

    objc_initWeak(&location, v2);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __41__HKNanoHostAuthorizationController_init__block_invoke;
    v15[3] = &unk_1E81B5738;
    objc_copyWeak(&v16, &location);
    [(NSXPCConnection *)v7 setInterruptionHandler:v15];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __41__HKNanoHostAuthorizationController_init__block_invoke_2;
    v13[3] = &unk_1E81B5738;
    objc_copyWeak(&v14, &location);
    [(NSXPCConnection *)v7 setInvalidationHandler:v13];
    v10 = HKCreateSerialDispatchQueue();
    [(NSXPCConnection *)v7 _setQueue:v10];
    [(NSXPCConnection *)v7 resume];
    xpcConnection = v2->_xpcConnection;
    v2->_xpcConnection = v7;

    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __41__HKNanoHostAuthorizationController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained connectionDidInterrupt];
}

void __41__HKNanoHostAuthorizationController_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained connectionDidInvalidate];
}

- (void)invalidate
{
  _HKInitializeLogging();
  v3 = HKLogAuthorization();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);

  if (v4)
  {
    v5 = HKLogAuthorization();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [HKNanoHostAuthorizationController invalidate];
    }
  }

  [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:0];
  [(NSXPCConnection *)self->_xpcConnection invalidate];
}

- (void)connectionDidInvalidate
{
  _HKInitializeLogging();
  v3 = HKLogAuthorization();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);

  if (v4)
  {
    v5 = HKLogAuthorization();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [HKNanoHostAuthorizationController connectionDidInvalidate];
    }
  }

  [(HKNanoHostAuthorizationController *)self didFinishWithError:0];
}

- (void)connectionDidInterrupt
{
  _HKInitializeLogging();
  v3 = HKLogAuthorization();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);

  if (v4)
  {
    v5 = HKLogAuthorization();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [HKNanoHostAuthorizationController connectionDidInterrupt];
    }
  }

  [(HKNanoHostAuthorizationController *)self didFinishWithError:0];
}

- (void)didFinishWithError:(id)error
{
  v9 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  _HKInitializeLogging();
  v5 = HKLogAuthorization();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = errorCopy;
    _os_log_impl(&dword_1C3942000, v5, OS_LOG_TYPE_DEFAULT, "HKNanoHostAuthorizationController: Finished with error: %{public}@", &v7, 0xCu);
  }

  delegate = [(HKNanoHostAuthorizationController *)self delegate];
  [delegate healthPrivacyHostAuthorizationControllerDidFinishWithError:errorCopy];
}

- (void)setRequestRecord:(id)record presentationRequests:(id)requests
{
  recordCopy = record;
  requestsCopy = requests;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__HKNanoHostAuthorizationController_setRequestRecord_presentationRequests___block_invoke;
  v10[3] = &unk_1E81B9168;
  v11 = recordCopy;
  v12 = requestsCopy;
  v8 = requestsCopy;
  v9 = recordCopy;
  [(HKNanoHostAuthorizationController *)self _remoteObjectProxyWithCompletion:v10 errorHandler:&__block_literal_global_56];
}

void __75__HKNanoHostAuthorizationController_setRequestRecord_presentationRequests___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogAuthorization();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

  if (v5)
  {
    v6 = HKLogAuthorization();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __75__HKNanoHostAuthorizationController_setRequestRecord_presentationRequests___block_invoke_cold_1(a1, v6);
    }
  }

  [v3 setRequestRecord:*(a1 + 32) presentationRequests:*(a1 + 40)];
}

void __75__HKNanoHostAuthorizationController_setRequestRecord_presentationRequests___block_invoke_297(uint64_t a1, void *a2)
{
  v2 = a2;
  _HKInitializeLogging();
  v3 = HKLogAuthorization();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __75__HKNanoHostAuthorizationController_setRequestRecord_presentationRequests___block_invoke_297_cold_1(v2, v3);
  }
}

void __41__HKNanoHostAuthorizationController_show__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  _HKInitializeLogging();
  v3 = HKLogAuthorization();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __41__HKNanoHostAuthorizationController_show__block_invoke_2_cold_1(v2, v3);
  }
}

- (void)_remoteObjectProxyWithCompletion:(id)completion errorHandler:(id)handler
{
  completionCopy = completion;
  handlerCopy = handler;
  if (completionCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [HKNanoHostAuthorizationController _remoteObjectProxyWithCompletion:a2 errorHandler:self];
    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }

  [HKNanoHostAuthorizationController _remoteObjectProxyWithCompletion:a2 errorHandler:self];
LABEL_3:
  v8 = [(NSXPCConnection *)self->_xpcConnection remoteObjectProxyWithErrorHandler:handlerCopy];
  completionCopy[2](completionCopy, v8);
}

- (HKHealthPrivacyHostAuthorizationControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __75__HKNanoHostAuthorizationController_setRequestRecord_presentationRequests___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_1C3942000, a2, OS_LOG_TYPE_DEBUG, "HKNanoHostAuthorizationController: Set record: %@", &v3, 0xCu);
}

void __75__HKNanoHostAuthorizationController_setRequestRecord_presentationRequests___block_invoke_297_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1C3942000, a2, OS_LOG_TYPE_ERROR, "HKNanoHostAuthorizationController: Failed to set request record with error: %{public}@", &v2, 0xCu);
}

void __41__HKNanoHostAuthorizationController_show__block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1C3942000, a2, OS_LOG_TYPE_ERROR, "HKNanoHostAuthorizationController: Failed to show remote authorization alert with error: %{public}@", &v2, 0xCu);
}

- (void)_remoteObjectProxyWithCompletion:(uint64_t)a1 errorHandler:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKNanoHostAuthorizationController.m" lineNumber:100 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
}

- (void)_remoteObjectProxyWithCompletion:(uint64_t)a1 errorHandler:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKNanoHostAuthorizationController.m" lineNumber:101 description:{@"Invalid parameter not satisfying: %@", @"errorHandler"}];
}

@end