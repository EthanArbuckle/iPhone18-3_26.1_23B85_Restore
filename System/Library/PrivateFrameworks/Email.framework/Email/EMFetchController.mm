@interface EMFetchController
+ (id)remoteInterface;
- (EMFetchController)initWithRemoteConnection:(id)connection;
- (id)diagnosticInformation;
- (void)performFetchForOTC;
- (void)setSuppressedContexts:(id)contexts;
@end

@implementation EMFetchController

+ (id)remoteInterface
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4642158];
  [v5 setClasses:v4 forSelector:sel_performFetchOfType_mailboxObjectIds_ argumentIndex:1 ofReply:0];

  return v5;
}

- (EMFetchController)initWithRemoteConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = EMFetchController;
  v6 = [(EMFetchController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
  }

  return v7;
}

- (void)performFetchForOTC
{
  connection = [(EMFetchController *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy performFetchForOTC];
}

id __50__EMFetchController_performFetchOfType_mailboxes___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectID];

  return v2;
}

id __49__EMFetchController_performFetchOfType_accounts___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectID];
  v3 = [v2 representedObjectID];

  return v3;
}

- (void)setSuppressedContexts:(id)contexts
{
  contextsCopy = contexts;
  connection = [(EMFetchController *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  [remoteObjectProxy setSuppressedContexts:contextsCopy];
}

- (id)diagnosticInformation
{
  connection = [(EMFetchController *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];
  diagnosticInformation = [remoteObjectProxy diagnosticInformation];

  return diagnosticInformation;
}

@end