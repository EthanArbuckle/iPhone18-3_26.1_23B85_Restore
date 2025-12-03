@interface INCExtensionRequest
+ (void)initialize;
- (INCExtensionRequest)initWithIdentifier:(id)identifier;
- (id)_extensionContextHost;
- (id)_requestOperationQueue;
- (void)_resetContextTimer;
- (void)_resetExtensionContextHostWithCompletion:(id)completion;
- (void)_scheduleContextTimer;
- (void)reset;
- (void)setExtensionInputItems:(id)items;
- (void)startRequestForIntent:(id)intent completion:(id)completion;
@end

@implementation INCExtensionRequest

- (id)_extensionContextHost
{
  v15 = *MEMORY[0x277D85DE8];
  extension = self->_extension;
  if (extension && self->_requestIdentifier)
  {
    v4 = [(NSExtension *)extension _extensionContextForUUID:?];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_8;
    }

    v5 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      v8 = v5;
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = 136315394;
      v12 = "[INCExtensionRequest _extensionContextHost]";
      v13 = 2112;
      v14 = v10;
      _os_log_error_impl(&dword_255503000, v8, OS_LOG_TYPE_ERROR, "%s Unexpected extension context class %@", &v11, 0x16u);
    }
  }

  v4 = 0;
LABEL_8:
  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_resetContextTimer
{
  [(INWatchdogTimer *)self->_contextTimer cancel];
  contextTimer = self->_contextTimer;
  self->_contextTimer = 0;
}

- (void)_scheduleContextTimer
{
  [(INCExtensionRequest *)self _resetContextTimer];
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x277CD4300]);
  queue = self->_queue;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __44__INCExtensionRequest__scheduleContextTimer__block_invoke;
  v10 = &unk_2797E79A8;
  objc_copyWeak(&v11, &location);
  v5 = [v3 initWithTimeoutInterval:queue onQueue:&v7 timeoutHandler:120.0];
  contextTimer = self->_contextTimer;
  self->_contextTimer = v5;

  [(INWatchdogTimer *)self->_contextTimer start:v7];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (id)_requestOperationQueue
{
  requestOperationQueue = self->_requestOperationQueue;
  if (!requestOperationQueue)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v5 = self->_requestOperationQueue;
    self->_requestOperationQueue = v4;

    [(NSOperationQueue *)self->_requestOperationQueue setMaxConcurrentOperationCount:1];
    requestOperationQueue = self->_requestOperationQueue;
  }

  return requestOperationQueue;
}

- (void)reset
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__INCExtensionRequest_reset__block_invoke;
  block[3] = &unk_2797E7910;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __28__INCExtensionRequest_reset__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[INCExtensionRequest reset]_block_invoke";
    _os_log_impl(&dword_255503000, v2, OS_LOG_TYPE_INFO, "%s Reset extension request", &v5, 0xCu);
  }

  result = [*(a1 + 32) _resetExtensionContextHostWithCompletion:0];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void __44__INCExtensionRequest__scheduleContextTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _extensionContextHost];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 _auxiliaryConnection];
    v4 = [v3 remoteObjectProxy];

    v5 = [WeakRetained identifier];
    [v4 cancelTransactionDueToTimeoutWithIntentIdentifier:v5 completion:&__block_literal_global_8];
  }
}

- (void)_resetExtensionContextHostWithCompletion:(id)completion
{
  completionCopy = completion;
  [(INCExtensionRequest *)self _resetContextTimer];
  _extensionContextHost = [(INCExtensionRequest *)self _extensionContextHost];
  _auxiliaryConnection = [_extensionContextHost _auxiliaryConnection];
  remoteObjectProxy = [_auxiliaryConnection remoteObjectProxy];

  if (completionCopy)
  {
    v7 = completionCopy;
  }

  else
  {
    v7 = &__block_literal_global;
  }

  [remoteObjectProxy completeTransactionWithIntentIdentifier:self->_identifier completion:v7];
}

- (void)startRequestForIntent:(id)intent completion:(id)completion
{
  intentCopy = intent;
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__INCExtensionRequest_startRequestForIntent_completion___block_invoke;
    block[3] = &unk_2797E8140;
    block[4] = self;
    v12 = completionCopy;
    v11 = intentCopy;
    dispatch_async(queue, block);
  }
}

void __56__INCExtensionRequest_startRequestForIntent_completion___block_invoke(id *a1)
{
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__INCExtensionRequest_startRequestForIntent_completion___block_invoke_2;
  v12[3] = &unk_2797E8140;
  v12[4] = a1[4];
  v14 = a1[6];
  v13 = a1[5];
  v2 = MEMORY[0x259C36E60](v12);
  v3 = [a1[4] _extensionContextHost];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _auxiliaryConnection];
    v6 = [v5 remoteObjectProxy];
    if (v6)
    {
      v7 = a1[6];
      v8 = [a1[4] _extension];
      v7[2](v7, v8, v4, 0);

      [a1[4] _scheduleContextTimer];
    }

    else
    {
      v9 = a1[4];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __56__INCExtensionRequest_startRequestForIntent_completion___block_invoke_6;
      v10[3] = &unk_2797E7FF0;
      v11 = v2;
      [v9 _resetExtensionContextHostWithCompletion:v10];
    }
  }

  else
  {
    v2[2](v2);
  }
}

void __56__INCExtensionRequest_startRequestForIntent_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _requestOperationQueue];
  [v2 setSuspended:1];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__INCExtensionRequest_startRequestForIntent_completion___block_invoke_3;
  v10[3] = &unk_2797E8068;
  v3 = *(a1 + 48);
  v10[4] = *(a1 + 32);
  v11 = v3;
  [v2 addOperationWithBlock:v10];
  if ([v2 operationCount] <= 1)
  {
    v4 = +[INCExtensionManager sharedManager];
    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) extensionInputItems];
    v7 = [*(a1 + 32) requiresTCC];
    v8 = [*(a1 + 32) requiresTrustCheck];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __56__INCExtensionRequest_startRequestForIntent_completion___block_invoke_4;
    v9[3] = &unk_2797E7598;
    v9[4] = *(a1 + 32);
    [v4 fetchExtensionForIntent:v5 extensionInputItems:v6 requiresTCC:v7 requiresTrustCheck:v8 completion:v9];
  }
}

void __56__INCExtensionRequest_startRequestForIntent_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  v5 = [*(a1 + 32) _extension];
  v3 = [*(a1 + 32) _extensionContextHost];
  v4 = [*(a1 + 32) _error];
  (*(v2 + 16))(v2, v5, v3, v4);
}

void __56__INCExtensionRequest_startRequestForIntent_completion___block_invoke_4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  v10 = a4;
  [v9 _setExtension:v7];
  objc_storeStrong((*(a1 + 32) + 8), a3);
  [*(a1 + 32) _setError:v10];

  v11 = [*(a1 + 32) _extensionContextHost];
  if (v11)
  {
    v12 = [v7 _extensionBundle];
    [v11 setExtensionBundle:v12];

    [*(a1 + 32) _scheduleContextTimer];
  }

  v13 = *(a1 + 32);
  v14 = *(v13 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__INCExtensionRequest_startRequestForIntent_completion___block_invoke_5;
  block[3] = &unk_2797E7910;
  block[4] = v13;
  dispatch_async(v14, block);
}

void __56__INCExtensionRequest_startRequestForIntent_completion___block_invoke_5(uint64_t a1)
{
  v1 = [*(a1 + 32) _requestOperationQueue];
  [v1 setSuspended:0];
}

- (void)setExtensionInputItems:(id)items
{
  itemsCopy = items;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__INCExtensionRequest_setExtensionInputItems___block_invoke;
  v7[3] = &unk_2797E7820;
  v7[4] = self;
  v8 = itemsCopy;
  v6 = itemsCopy;
  dispatch_async(queue, v7);
}

uint64_t __46__INCExtensionRequest_setExtensionInputItems___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 72), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 _resetExtensionContextHostWithCompletion:0];
}

- (INCExtensionRequest)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = INCExtensionRequest;
  v6 = [(INCExtensionRequest *)&v11 init];
  if (v6)
  {
    INLogInitIfNeeded();
    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v8 = dispatch_queue_create("INCExtensionRequestQueue", v7);
    queue = v6->_queue;
    v6->_queue = v8;

    objc_storeStrong(&v6->_identifier, identifier);
    *&v6->_requiresTCC = 257;
  }

  return v6;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    INLogInitIfNeeded();
  }
}

@end