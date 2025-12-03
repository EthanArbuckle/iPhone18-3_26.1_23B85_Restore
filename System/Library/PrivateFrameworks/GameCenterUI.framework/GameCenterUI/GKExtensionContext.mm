@interface GKExtensionContext
- (void)dealloc;
- (void)hostApp:(id)app grantingAccessExtensionSandbox:(id)sandbox replyWithEndpoint:(id)endpoint;
- (void)messageFromClient:(id)client;
- (void)openURL:(id)l completionHandler:(id)handler;
- (void)setInitialState:(id)state withReply:(id)reply;
- (void)tearDownExtensionWithReply:(id)reply;
@end

@implementation GKExtensionContext

- (void)openURL:(id)l completionHandler:(id)handler
{
  v5 = MEMORY[0x277D0BFE0];
  handlerCopy = handler;
  lCopy = l;
  defaultWorkspace = [v5 defaultWorkspace];
  [defaultWorkspace openURL:lCopy];

  handlerCopy[2](handlerCopy, 1);
}

- (void)dealloc
{
  if (self->_sandboxToken >= 1)
  {
    sandbox_extension_release();
  }

  v3.receiver = self;
  v3.super_class = GKExtensionContext;
  [(GKExtensionContext *)&v3 dealloc];
}

- (void)messageFromClient:(id)client
{
  clientCopy = client;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__GKExtensionContext_messageFromClient___block_invoke;
  v6[3] = &unk_279669E48;
  v6[4] = self;
  v7 = clientCopy;
  v5 = clientCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __40__GKExtensionContext_messageFromClient___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _principalObject];
  [v2 messageFromClient:*(a1 + 40)];
}

- (void)setInitialState:(id)state withReply:(id)reply
{
  replyCopy = reply;
  stateCopy = state;
  _principalObject = [(GKExtensionContext *)self _principalObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    if (!*MEMORY[0x277D0C2A0])
    {
      v10 = GKOSLoggers();
    }

    v11 = *MEMORY[0x277D0C290];
    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      [GKExtensionContext setInitialState:v11 withReply:self];
    }
  }

  _principalObject2 = [(GKExtensionContext *)self _principalObject];
  [_principalObject2 setInitialState:stateCopy withReply:replyCopy];
}

- (void)tearDownExtensionWithReply:(id)reply
{
  replyCopy = reply;
  _principalObject = [(GKExtensionContext *)self _principalObject];
  if (objc_opt_respondsToSelector())
  {
    [_principalObject tearDownExtensionWithReply:replyCopy];
  }
}

- (void)hostApp:(id)app grantingAccessExtensionSandbox:(id)sandbox replyWithEndpoint:(id)endpoint
{
  appCopy = app;
  endpointCopy = endpoint;
  [sandbox UTF8String];
  v10 = sandbox_extension_consume();
  self->_sandboxToken = v10;
  if (v10 < 0)
  {
    v16 = *__error();
    if (!*MEMORY[0x277D0C2A0])
    {
      v17 = GKOSLoggers();
    }

    v18 = *MEMORY[0x277D0C290];
    if (os_log_type_enabled(*MEMORY[0x277D0C290], OS_LOG_TYPE_ERROR))
    {
      [GKExtensionContext hostApp:v16 grantingAccessExtensionSandbox:v18 replyWithEndpoint:?];
    }

    v15 = 0;
    if (endpointCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    defaultWorkspace = [MEMORY[0x277D0BFE0] defaultWorkspace];
    v12 = [defaultWorkspace applicationProxyForBundleID:appCopy];
    v13 = MEMORY[0x277CCA8E0];
    bundle = [v12 bundle];
    v15 = [v13 _extensionEndpointForMainBundleOfHostApplication:bundle];

    if (endpointCopy)
    {
LABEL_3:
      endpointCopy[2](endpointCopy, v15);
    }
  }
}

- (void)setInitialState:(void *)a1 withReply:(void *)a2 .cold.1(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 _principalObject];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(&dword_24DE53000, v3, OS_LOG_TYPE_ERROR, "_principalObject contains instance of Unexpected class: %@", v7, 0xCu);
}

- (void)hostApp:(int)a1 grantingAccessExtensionSandbox:(NSObject *)a2 replyWithEndpoint:.cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_24DE53000, a2, OS_LOG_TYPE_ERROR, "NSBundleResourceRequest encountered a sandboxing error (sandbox_extension_consume): %d", v2, 8u);
}

@end