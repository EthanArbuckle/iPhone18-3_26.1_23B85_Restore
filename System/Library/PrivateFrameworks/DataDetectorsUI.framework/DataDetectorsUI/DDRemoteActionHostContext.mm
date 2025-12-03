@interface DDRemoteActionHostContext
+ (id)_allowedItemPayloadClasses;
- (id)protocolService;
- (void)prepareViewControllerWithContext:(id)context completionHandler:(id)handler;
@end

@implementation DDRemoteActionHostContext

- (id)protocolService
{
  _auxiliaryConnection = [(DDRemoteActionHostContext *)self _auxiliaryConnection];
  v3 = [_auxiliaryConnection remoteObjectProxyWithErrorHandler:&__block_literal_global];

  return v3;
}

void __44__DDRemoteActionHostContext_protocolService__block_invoke(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __44__DDRemoteActionHostContext_protocolService__block_invoke_cold_1(a2);
  }
}

+ (id)_allowedItemPayloadClasses
{
  v2 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];

  return v2;
}

- (void)prepareViewControllerWithContext:(id)context completionHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  protocolService = [(DDRemoteActionHostContext *)self protocolService];
  if (protocolService)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __80__DDRemoteActionHostContext_prepareViewControllerWithContext_completionHandler___block_invoke;
    v9[3] = &unk_278290C60;
    v10 = handlerCopy;
    [protocolService prepareViewControllerWithContext:contextCopy completionHandler:v9];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0.0, 0.0);
  }
}

void __80__DDRemoteActionHostContext_prepareViewControllerWithContext_completionHandler___block_invoke(uint64_t a1, char a2, double a3, double a4)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__DDRemoteActionHostContext_prepareViewControllerWithContext_completionHandler___block_invoke_2;
  v7[3] = &unk_278290C38;
  v8 = *(a1 + 32);
  v9 = a3;
  v10 = a4;
  v11 = a2;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __44__DDRemoteActionHostContext_protocolService__block_invoke_cold_1(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = [a1 localizedDescription];
  v3 = 138412290;
  v4 = v1;
  _os_log_error_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error calling service - %@", &v3, 0xCu);

  v2 = *MEMORY[0x277D85DE8];
}

@end