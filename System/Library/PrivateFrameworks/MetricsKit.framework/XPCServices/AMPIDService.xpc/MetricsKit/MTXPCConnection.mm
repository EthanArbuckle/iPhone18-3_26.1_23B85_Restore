@interface MTXPCConnection
- (MTXPCConnection)initWithXPCConnection:(id)connection secretStore:(id)store;
- (NSXPCConnection)connection;
- (void)doClearLocalData;
- (void)doMaintainSchemes:(id)schemes options:(id)options;
- (void)doResetSchemes:(id)schemes options:(id)options completion:(id)completion;
- (void)secretForScheme:(id)scheme options:(id)options completion:(id)completion;
- (void)syncForSchemes:(id)schemes options:(id)options completion:(id)completion;
@end

@implementation MTXPCConnection

- (MTXPCConnection)initWithXPCConnection:(id)connection secretStore:(id)store
{
  connectionCopy = connection;
  storeCopy = store;
  v11.receiver = self;
  v11.super_class = MTXPCConnection;
  v8 = [(MTXPCConnection *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_connection, connectionCopy);
    objc_storeStrong(&v9->_secretStore, store);
  }

  return v9;
}

- (void)secretForScheme:(id)scheme options:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  schemeCopy = scheme;
  secretStore = [(MTXPCConnection *)self secretStore];
  v12 = [secretStore secretForScheme:schemeCopy options:optionsCopy];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000017C0;
  v14[3] = &unk_100020508;
  v15 = completionCopy;
  v13 = completionCopy;
  [v12 addFinishBlock:v14];
}

- (void)doResetSchemes:(id)schemes options:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  schemesCopy = schemes;
  secretStore = [(MTXPCConnection *)self secretStore];
  v12 = [secretStore resetSchemes:schemesCopy options:optionsCopy];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000018C4;
  v14[3] = &unk_100020530;
  v15 = completionCopy;
  v13 = completionCopy;
  [v12 addFinishBlock:v14];
}

- (void)doMaintainSchemes:(id)schemes options:(id)options
{
  schemesCopy = schemes;
  optionsCopy = options;
  secretStore = [(MTXPCConnection *)self secretStore];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    secretStore2 = [(MTXPCConnection *)self secretStore];
    v10 = [secretStore2 maintainSchemes:schemesCopy options:optionsCopy];
  }
}

- (void)doClearLocalData
{
  secretStore = [(MTXPCConnection *)self secretStore];
  [secretStore clearLocalData];
}

- (void)syncForSchemes:(id)schemes options:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  schemesCopy = schemes;
  secretStore = [(MTXPCConnection *)self secretStore];
  v12 = [secretStore syncForSchemes:schemesCopy options:optionsCopy];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100001AB8;
  v14[3] = &unk_100020530;
  v15 = completionCopy;
  v13 = completionCopy;
  [v12 addFinishBlock:v14];
}

- (NSXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

@end