@interface LNRelevantIntentProvider
- (LNRelevantIntentProvider)init;
- (void)dealloc;
- (void)relevantIntentsForBundleIdentifier:(id)identifier reply:(id)reply;
- (void)relevantIntentsWithReply:(id)reply;
@end

@implementation LNRelevantIntentProvider

- (void)relevantIntentsWithReply:(id)reply
{
  replyCopy = reply;
  v5 = _os_activity_create(&dword_19763D000, "appintents:fetch all relevant intents", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__LNRelevantIntentProvider_relevantIntentsWithReply___block_invoke;
  v7[3] = &unk_1E74B1930;
  v7[4] = self;
  v8 = replyCopy;
  v6 = replyCopy;
  os_activity_apply(v5, v7);
}

void __53__LNRelevantIntentProvider_relevantIntentsWithReply___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__LNRelevantIntentProvider_relevantIntentsWithReply___block_invoke_2;
  v4[3] = &unk_1E74B2848;
  v5 = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 relevantIntentsWithReply:*(a1 + 40)];
}

- (void)relevantIntentsForBundleIdentifier:(id)identifier reply:(id)reply
{
  identifierCopy = identifier;
  replyCopy = reply;
  v8 = _os_activity_create(&dword_19763D000, "appintents:fetch relevant intents for app", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__LNRelevantIntentProvider_relevantIntentsForBundleIdentifier_reply___block_invoke;
  block[3] = &unk_1E74B2580;
  v12 = identifierCopy;
  v13 = replyCopy;
  block[4] = self;
  v9 = identifierCopy;
  v10 = replyCopy;
  os_activity_apply(v8, block);
}

void __69__LNRelevantIntentProvider_relevantIntentsForBundleIdentifier_reply___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__LNRelevantIntentProvider_relevantIntentsForBundleIdentifier_reply___block_invoke_2;
  v4[3] = &unk_1E74B2848;
  v5 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 relevantIntentsForBundleIdentifier:*(a1 + 40) reply:*(a1 + 48)];
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = LNRelevantIntentProvider;
  [(LNRelevantIntentProvider *)&v3 dealloc];
}

- (LNRelevantIntentProvider)init
{
  v8.receiver = self;
  v8.super_class = LNRelevantIntentProvider;
  v2 = [(LNRelevantIntentProvider *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.linkd.registry" options:0];
    connection = v2->_connection;
    v2->_connection = v3;

    v5 = LNDaemonRegistryXPCInterface();
    [(NSXPCConnection *)v2->_connection setRemoteObjectInterface:v5];

    [(NSXPCConnection *)v2->_connection resume];
    v6 = v2;
  }

  return v2;
}

@end