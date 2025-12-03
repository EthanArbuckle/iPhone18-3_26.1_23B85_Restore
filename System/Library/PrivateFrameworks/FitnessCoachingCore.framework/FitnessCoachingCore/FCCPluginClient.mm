@interface FCCPluginClient
- (FCCPluginClient)initWithHealthStore:(id)store;
- (void)_pluginMessage:(unint64_t)message data:(id)data completionHandler:(id)handler;
- (void)connectionInterrupted;
- (void)connectionInvalidated;
- (void)pluginMessage:(unint64_t)message data:(id)data completionHandler:(id)handler;
@end

@implementation FCCPluginClient

- (FCCPluginClient)initWithHealthStore:(id)store
{
  storeCopy = store;
  v14.receiver = self;
  v14.super_class = FCCPluginClient;
  v5 = [(FCCPluginClient *)&v14 init];
  if (v5)
  {
    v6 = HKCreateSerialDispatchQueueWithQOSClass();
    dispatchQueue = v5->_dispatchQueue;
    v5->_dispatchQueue = v6;

    v8 = objc_alloc(MEMORY[0x277CCDAA0]);
    taskIdentifier = [objc_opt_class() taskIdentifier];
    uUID = [MEMORY[0x277CCAD78] UUID];
    v11 = [v8 initWithHealthStore:storeCopy taskIdentifier:taskIdentifier exportedObject:v5 taskUUID:uUID];
    proxyProvider = v5->_proxyProvider;
    v5->_proxyProvider = v11;
  }

  return v5;
}

- (void)pluginMessage:(unint64_t)message data:(id)data completionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__FCCPluginClient_pluginMessage_data_completionHandler___block_invoke;
  v13[3] = &unk_27900A188;
  v13[4] = self;
  v14 = dataCopy;
  v15 = handlerCopy;
  messageCopy = message;
  v11 = handlerCopy;
  v12 = dataCopy;
  dispatch_async(dispatchQueue, v13);
}

- (void)_pluginMessage:(unint64_t)message data:(id)data completionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__FCCPluginClient__pluginMessage_data_completionHandler___block_invoke;
  v14[3] = &unk_27900A1B0;
  messageCopy = message;
  v15 = dataCopy;
  v16 = handlerCopy;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__FCCPluginClient__pluginMessage_data_completionHandler___block_invoke_2;
  v12[3] = &unk_27900A1D8;
  v13 = v16;
  v10 = v16;
  v11 = dataCopy;
  [(FCCPluginClient *)self _remoteProxy:v14 errorHandler:v12];
}

void __57__FCCPluginClient__pluginMessage_data_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_ERROR))
  {
    __57__FCCPluginClient__pluginMessage_data_completionHandler___block_invoke_2_cold_1(v3, v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)connectionInvalidated
{
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_24B53B000, v2, OS_LOG_TYPE_DEFAULT, "[FCCPluginClient] XPC connection invalidated", v3, 2u);
  }
}

- (void)connectionInterrupted
{
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC290];
  if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_24B53B000, v2, OS_LOG_TYPE_DEFAULT, "[FCCPluginClient] XPC connection interrupted", v3, 2u);
  }
}

void __57__FCCPluginClient__pluginMessage_data_completionHandler___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_24B53B000, a2, OS_LOG_TYPE_ERROR, "[FCCPluginClient] Sending message failed: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end