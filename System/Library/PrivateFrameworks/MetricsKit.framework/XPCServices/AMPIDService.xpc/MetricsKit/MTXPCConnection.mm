@interface MTXPCConnection
- (MTXPCConnection)initWithXPCConnection:(id)a3 secretStore:(id)a4;
- (NSXPCConnection)connection;
- (void)doClearLocalData;
- (void)doMaintainSchemes:(id)a3 options:(id)a4;
- (void)doResetSchemes:(id)a3 options:(id)a4 completion:(id)a5;
- (void)secretForScheme:(id)a3 options:(id)a4 completion:(id)a5;
- (void)syncForSchemes:(id)a3 options:(id)a4 completion:(id)a5;
@end

@implementation MTXPCConnection

- (MTXPCConnection)initWithXPCConnection:(id)a3 secretStore:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MTXPCConnection;
  v8 = [(MTXPCConnection *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_connection, v6);
    objc_storeStrong(&v9->_secretStore, a4);
  }

  return v9;
}

- (void)secretForScheme:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(MTXPCConnection *)self secretStore];
  v12 = [v11 secretForScheme:v10 options:v9];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000017C0;
  v14[3] = &unk_100020508;
  v15 = v8;
  v13 = v8;
  [v12 addFinishBlock:v14];
}

- (void)doResetSchemes:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(MTXPCConnection *)self secretStore];
  v12 = [v11 resetSchemes:v10 options:v9];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000018C4;
  v14[3] = &unk_100020530;
  v15 = v8;
  v13 = v8;
  [v12 addFinishBlock:v14];
}

- (void)doMaintainSchemes:(id)a3 options:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(MTXPCConnection *)self secretStore];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(MTXPCConnection *)self secretStore];
    v10 = [v9 maintainSchemes:v11 options:v6];
  }
}

- (void)doClearLocalData
{
  v2 = [(MTXPCConnection *)self secretStore];
  [v2 clearLocalData];
}

- (void)syncForSchemes:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(MTXPCConnection *)self secretStore];
  v12 = [v11 syncForSchemes:v10 options:v9];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100001AB8;
  v14[3] = &unk_100020530;
  v15 = v8;
  v13 = v8;
  [v12 addFinishBlock:v14];
}

- (NSXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

@end