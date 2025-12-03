@interface MPTCPConverterProxyClient
+ (id)getServerConnection;
+ (void)startProxyToMPTCPConverterProxyWithCompletionHandler:(id)handler completionHandler:(id)completionHandler;
+ (void)stopProxyToMPTCPConverterProxyWithCompletionHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation MPTCPConverterProxyClient

+ (id)getServerConnection
{
  if (qword_1ED4BF620 != -1)
  {
    dispatch_once(&qword_1ED4BF620, &__block_literal_global_4);
  }

  v3 = _MergedGlobals_28;

  return v3;
}

uint64_t __48__MPTCPConverterProxyClient_getServerConnection__block_invoke()
{
  _MergedGlobals_28 = [[NSPServerClient alloc] initWithCallbackQueue:?];

  return MEMORY[0x1EEE66BB8]();
}

+ (void)startProxyToMPTCPConverterProxyWithCompletionHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v7 = +[MPTCPConverterProxyClient getServerConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __100__MPTCPConverterProxyClient_startProxyToMPTCPConverterProxyWithCompletionHandler_completionHandler___block_invoke;
  v10[3] = &unk_1E7A30A40;
  v11 = handlerCopy;
  v12 = completionHandlerCopy;
  v8 = completionHandlerCopy;
  v9 = handlerCopy;
  [v7 startProxyToMPTCPConverterProxyWithCompletionHandler:v10];
}

void __100__MPTCPConverterProxyClient_startProxyToMPTCPConverterProxyWithCompletionHandler_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __100__MPTCPConverterProxyClient_startProxyToMPTCPConverterProxyWithCompletionHandler_completionHandler___block_invoke_2;
      v6[3] = &unk_1E7A30A18;
      v8 = v5;
      v7 = v3;
      dispatch_async(v4, v6);
    }
  }
}

+ (void)stopProxyToMPTCPConverterProxyWithCompletionHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v7 = +[MPTCPConverterProxyClient getServerConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __99__MPTCPConverterProxyClient_stopProxyToMPTCPConverterProxyWithCompletionHandler_completionHandler___block_invoke;
  v10[3] = &unk_1E7A30A40;
  v11 = handlerCopy;
  v12 = completionHandlerCopy;
  v8 = completionHandlerCopy;
  v9 = handlerCopy;
  [v7 stopProxyToMPTCPConverterProxyWithCompletionHandler:v10];
}

void __99__MPTCPConverterProxyClient_stopProxyToMPTCPConverterProxyWithCompletionHandler_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __99__MPTCPConverterProxyClient_stopProxyToMPTCPConverterProxyWithCompletionHandler_completionHandler___block_invoke_2;
      v6[3] = &unk_1E7A30A18;
      v8 = v5;
      v7 = v3;
      dispatch_async(v4, v6);
    }
  }
}

@end