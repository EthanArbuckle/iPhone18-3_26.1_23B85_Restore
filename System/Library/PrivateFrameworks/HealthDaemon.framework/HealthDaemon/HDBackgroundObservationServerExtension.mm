@interface HDBackgroundObservationServerExtension
- (HDBackgroundObservationServerExtension)init;
- (id)_initWithExtension:(id)extension;
- (id)description;
- (void)connectWithCompletionHandler:(id)handler;
- (void)disconnect;
- (void)notifyExtensionOfUpcomingTimeout;
- (void)notifyExtensionOfUpdateForSampleType:(id)type completionHandler:(id)handler;
@end

@implementation HDBackgroundObservationServerExtension

- (HDBackgroundObservationServerExtension)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (id)_initWithExtension:(id)extension
{
  v32 = *MEMORY[0x277D85DE8];
  extensionCopy = extension;
  v27.receiver = self;
  v27.super_class = HDBackgroundObservationServerExtension;
  v6 = [(HDBackgroundObservationServerExtension *)&v27 init];
  if (v6)
  {
    v7 = MEMORY[0x277CCACA8];
    identifier = [extensionCopy identifier];
    v9 = [v7 stringWithFormat:@"extension.%@", identifier];
    v10 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v10;

    v12 = HKCreateSerialDispatchQueue();
    clientQueue = v6->_clientQueue;
    v6->_clientQueue = v12;

    objc_storeStrong(&v6->_extension, extension);
    identifier2 = [extensionCopy identifier];
    extensionIdentifier = v6->_extensionIdentifier;
    v6->_extensionIdentifier = identifier2;

    v16 = [MEMORY[0x277CC1ED8] pluginKitProxyForIdentifier:v6->_extensionIdentifier];
    v17 = v16;
    if (v16)
    {
      containingBundle = [v16 containingBundle];
      bundleIdentifier = [containingBundle bundleIdentifier];
      appIdentifier = v6->_appIdentifier;
      v6->_appIdentifier = bundleIdentifier;
    }

    _HKInitializeLogging();
    v21 = *MEMORY[0x277CCC288];
    if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_DEBUG))
    {
      v24 = v21;
      identifier3 = [extensionCopy identifier];
      extensionPointIdentifier = [extensionCopy extensionPointIdentifier];
      *buf = 138543618;
      v29 = identifier3;
      v30 = 2114;
      v31 = extensionPointIdentifier;
      _os_log_debug_impl(&dword_228986000, v24, OS_LOG_TYPE_DEBUG, "Initialized app extension server with extension ID: %{public}@ for extension point ID: %{public}@", buf, 0x16u);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)connectWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__HDBackgroundObservationServerExtension_connectWithCompletionHandler___block_invoke;
  aBlock[3] = &unk_2786173C8;
  aBlock[4] = self;
  v11 = handlerCopy;
  v5 = _Block_copy(aBlock);
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__HDBackgroundObservationServerExtension_connectWithCompletionHandler___block_invoke_3;
  v8[3] = &unk_278614E28;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

void __71__HDBackgroundObservationServerExtension_connectWithCompletionHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__HDBackgroundObservationServerExtension_connectWithCompletionHandler___block_invoke_2;
  block[3] = &unk_278616460;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

void __71__HDBackgroundObservationServerExtension_connectWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  if (!*(*(a1 + 32) + 32))
  {
    _HKInitializeLogging();
    v5 = MEMORY[0x277CCC288];
    v6 = *MEMORY[0x277CCC288];
    if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      *buf = 138543362;
      v33 = v7;
      _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_INFO, "Connecting to app extension: %{public}@", buf, 0xCu);
    }

    v8 = *(*(a1 + 32) + 8);
    v31 = 0;
    v9 = [v8 beginExtensionRequestWithOptions:0 inputItems:0 error:&v31];
    v10 = v31;
    if (v9)
    {
      v11 = [v9 copy];
      v12 = [*(*(a1 + 32) + 8) _extensionContextForUUID:v11];
      v13 = [v12 _auxiliaryConnection];
      v14 = v13;
      if (v12)
      {
        v15 = v13 == 0;
      }

      else
      {
        v15 = 1;
      }

      if (v15)
      {
        v16 = [MEMORY[0x277CCA9B8] hk_error:100 format:{@"[%@] app extension failed to get extension context for sessionUUID: %@", *(*(a1 + 32) + 64), v11}];

        _HKInitializeLogging();
        v17 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
        {
          v28 = *(*(a1 + 32) + 64);
          *buf = 138543618;
          v33 = v28;
          v34 = 2114;
          v35 = v16;
          _os_log_error_impl(&dword_228986000, v17, OS_LOG_TYPE_ERROR, "Failed to connect to app extension: %{public}@ with error: %{public}@", buf, 0x16u);
        }

        (*(*(a1 + 40) + 16))();
        v10 = v16;
      }

      else
      {
        objc_storeStrong((*(a1 + 32) + 32), v11);
        objc_storeStrong((*(a1 + 32) + 40), v12);
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __71__HDBackgroundObservationServerExtension_connectWithCompletionHandler___block_invoke_312;
        v30[3] = &unk_2786138D0;
        v30[4] = *(a1 + 32);
        v24 = [v14 synchronousRemoteObjectProxyWithErrorHandler:v30];
        v25 = *(a1 + 32);
        v26 = *(v25 + 48);
        *(v25 + 48) = v24;

        (*(*(a1 + 40) + 16))(*(a1 + 40), *(*(a1 + 32) + 48) != 0, v10);
      }

      goto LABEL_22;
    }

    _HKInitializeLogging();
    v18 = *v5;
    v19 = os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR);
    if (v10)
    {
      if (v19)
      {
        v20 = *(*(a1 + 32) + 64);
        *buf = 138543618;
        v33 = v20;
        v34 = 2114;
        v35 = v10;
        v21 = "Failed to activate app extension: %{public}@ with error: %{public}@";
        v22 = v18;
        v23 = 22;
LABEL_24:
        _os_log_error_impl(&dword_228986000, v22, OS_LOG_TYPE_ERROR, v21, buf, v23);
      }
    }

    else if (v19)
    {
      v29 = *(*(a1 + 32) + 64);
      *buf = 138543362;
      v33 = v29;
      v21 = "Failed to activate app extension: %{public}@";
      v22 = v18;
      v23 = 12;
      goto LABEL_24;
    }

    (*(*(a1 + 40) + 16))();
LABEL_22:

    v27 = *MEMORY[0x277D85DE8];
    return;
  }

  v2 = *(a1 + 40);
  v3 = *(*(a1 + 40) + 16);
  v4 = *MEMORY[0x277D85DE8];

  v3();
}

void __71__HDBackgroundObservationServerExtension_connectWithCompletionHandler___block_invoke_312(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC288];
  if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_ERROR))
  {
    v6 = *(*(a1 + 32) + 64);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "Failed to connect to app extension: %{public}@ with error: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)disconnect
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HDBackgroundObservationServerExtension_disconnect__block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_async(queue, block);
}

void __52__HDBackgroundObservationServerExtension_disconnect__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 32))
  {
    [*(v1 + 48) performCleanup];
    [*(*(a1 + 32) + 8) cancelExtensionRequestWithIdentifier:*(*(a1 + 32) + 32)];
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    *(v3 + 32) = 0;

    v5 = *(a1 + 32);
    v6 = *(v5 + 48);
    *(v5 + 48) = 0;

    v7 = *(a1 + 32);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;

    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC288];
    if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_INFO, "Disconnected from app extension: %{public}@", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)notifyExtensionOfUpdateForSampleType:(id)type completionHandler:(id)handler
{
  typeCopy = type;
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __97__HDBackgroundObservationServerExtension_notifyExtensionOfUpdateForSampleType_completionHandler___block_invoke;
  aBlock[3] = &unk_2786173C8;
  aBlock[4] = self;
  v16 = handlerCopy;
  v8 = _Block_copy(aBlock);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__HDBackgroundObservationServerExtension_notifyExtensionOfUpdateForSampleType_completionHandler___block_invoke_3;
  block[3] = &unk_278616D18;
  v13 = typeCopy;
  v14 = v8;
  block[4] = self;
  v10 = typeCopy;
  v11 = v8;
  dispatch_async(queue, block);
}

void __97__HDBackgroundObservationServerExtension_notifyExtensionOfUpdateForSampleType_completionHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__HDBackgroundObservationServerExtension_notifyExtensionOfUpdateForSampleType_completionHandler___block_invoke_2;
  block[3] = &unk_278616460;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

void __97__HDBackgroundObservationServerExtension_notifyExtensionOfUpdateForSampleType_completionHandler___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 32) && (v3 = *(v2 + 48)) != 0)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __97__HDBackgroundObservationServerExtension_notifyExtensionOfUpdateForSampleType_completionHandler___block_invoke_317;
    v9[3] = &unk_278613658;
    v4 = *(a1 + 40);
    v10 = *(a1 + 48);
    [v3 didReceiveUpdateForSampleType:v4 completionHandler:v9];
    v5 = v10;
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] hk_error:100 format:@"app extension has no active connection"];
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC288];
    if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_ERROR))
    {
      v8 = *(*(a1 + 32) + 64);
      *buf = 138543362;
      v12 = v8;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "No active app extension was found for %{public}@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)notifyExtensionOfUpcomingTimeout
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__HDBackgroundObservationServerExtension_notifyExtensionOfUpcomingTimeout__block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_async(queue, block);
}

void __74__HDBackgroundObservationServerExtension_notifyExtensionOfUpcomingTimeout__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 32) && (v3 = *(v2 + 48)) != 0)
  {
    [v3 backgroundObservationExtensionTimeWillExpire];
    *(*(a1 + 32) + 56) = 1;
  }

  else
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC288];
    if (os_log_type_enabled(*MEMORY[0x277CCC288], OS_LOG_TYPE_ERROR))
    {
      v6 = *(*(a1 + 32) + 64);
      v7 = 138543362;
      v8 = v6;
      _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "No active app extension was found for %{public}@", &v7, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@: <%p> Extension ID: %@, App Bundle ID: %@", v5, self, self->_extensionIdentifier, self->_appIdentifier];

  return v6;
}

@end