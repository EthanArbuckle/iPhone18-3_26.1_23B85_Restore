@interface WFJavaScriptRunClient
- (WFJavaScriptRunClient)initWithEndpoint:(id)endpoint;
- (void)runJavaScript:(id)script completionHandler:(id)handler;
@end

@implementation WFJavaScriptRunClient

- (void)runJavaScript:(id)script completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = MEMORY[0x277CCAE80];
  scriptCopy = script;
  v9 = [v7 alloc];
  endpoint = [(WFJavaScriptRunClient *)self endpoint];
  v11 = [v9 initWithListenerEndpoint:endpoint];

  v12 = WFJavaScriptRunnerHostProtocolXPCInterface();
  [v11 setRemoteObjectInterface:v12];

  [v11 resume];
  remoteObjectProxy = [v11 remoteObjectProxy];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __57__WFJavaScriptRunClient_runJavaScript_completionHandler___block_invoke;
  v16[3] = &unk_2783482B0;
  v17 = v11;
  v18 = handlerCopy;
  v14 = handlerCopy;
  v15 = v11;
  [remoteObjectProxy runJavaScript:scriptCopy completionHandler:v16];
}

void __57__WFJavaScriptRunClient_runJavaScript_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 invalidate];
  (*(*(a1 + 40) + 16))();
}

- (WFJavaScriptRunClient)initWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  if (!endpointCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFJavaScriptRunner.m" lineNumber:87 description:{@"Invalid parameter not satisfying: %@", @"endpoint"}];
  }

  v12.receiver = self;
  v12.super_class = WFJavaScriptRunClient;
  v7 = [(WFJavaScriptRunClient *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_endpoint, endpoint);
    v9 = v8;
  }

  return v8;
}

@end