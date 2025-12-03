@interface CHPluginHelper
- (CHPluginHelper)init;
- (unint64_t)unreadCallCountWithError:(id *)error;
- (void)unreadCallCountForPredicate:(id)predicate completionHandler:(id)handler;
- (void)unreadCallCountWithCompletionHandler:(id)handler;
@end

@implementation CHPluginHelper

- (CHPluginHelper)init
{
  v12.receiver = self;
  v12.super_class = CHPluginHelper;
  v2 = [(CHPluginHelper *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E696B0B8]);
    v4 = [v3 initWithMachServiceName:kPluginHelperServiceIdentifier options:0];
    connection = v2->_connection;
    v2->_connection = v4;

    v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F43B3950];
    interface = v2->_interface;
    v2->_interface = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    [(NSXPCInterface *)v2->_interface setClasses:v10 forSelector:sel_recentCallsWithCallType_withReply_ argumentIndex:0 ofReply:1];
    [(NSXPCConnection *)v2->_connection setRemoteObjectInterface:v2->_interface];
    [(NSXPCConnection *)v2->_connection resume];
  }

  return v2;
}

void __53__CHPluginHelper_recentCallsWithLimitingTypes_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

void __53__CHPluginHelper_recentCallsWithLimitingTypes_error___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v6 = a2;
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

- (unint64_t)unreadCallCountWithError:(id *)error
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0x7FFFFFFFFFFFFFFFLL;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__3;
  v15 = __Block_byref_object_dispose__3;
  v16 = 0;
  connection = self->_connection;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__CHPluginHelper_unreadCallCountWithError___block_invoke;
  v10[3] = &unk_1E81DC6E0;
  v10[4] = &v17;
  v10[5] = &v11;
  v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__CHPluginHelper_unreadCallCountWithError___block_invoke_2;
  v9[3] = &unk_1E81DC780;
  v9[4] = &v17;
  v9[5] = &v11;
  [v5 unreadCallCount:v9];

  if (error)
  {
    v6 = v12[5];
    if (v6)
    {
      *error = v6;
    }
  }

  v7 = v18[3];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);
  return v7;
}

void __43__CHPluginHelper_unreadCallCountWithError___block_invoke_2(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = a2;
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (void)unreadCallCountWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  connection = self->_connection;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__CHPluginHelper_unreadCallCountWithCompletionHandler___block_invoke;
  v11[3] = &unk_1E81DC730;
  v6 = handlerCopy;
  v12 = v6;
  v7 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__CHPluginHelper_unreadCallCountWithCompletionHandler___block_invoke_2;
  v9[3] = &unk_1E81DC7A8;
  v10 = v6;
  v8 = v6;
  [v7 unreadCallCount:v9];
}

- (void)unreadCallCountForPredicate:(id)predicate completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = handlerCopy;
  if (handlerCopy)
  {
    connection = self->_connection;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __64__CHPluginHelper_unreadCallCountForPredicate_completionHandler___block_invoke;
    v12[3] = &unk_1E81DC730;
    v9 = handlerCopy;
    v13 = v9;
    predicateCopy = predicate;
    v11 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v12];
    [v11 unreadCallCountForPredicate:predicateCopy completionHandler:v9];
  }
}

@end