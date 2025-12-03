@interface CPLPhotosDaemonConnection
- (CPLPhotosDaemonConnection)init;
- (id)managementServiceWithError:(id *)error;
- (id)proxyWithErrorHandler:(id)handler;
- (void)dealloc;
@end

@implementation CPLPhotosDaemonConnection

- (CPLPhotosDaemonConnection)init
{
  v13.receiver = self;
  v13.super_class = CPLPhotosDaemonConnection;
  v2 = [(CPLPhotosDaemonConnection *)&v13 init];
  if (v2)
  {
    v3 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.photos.service" options:0];
    v4 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CPLPhotosDaemonProtocol];
    v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PLAssetsdLibraryManagementServiceProtocol];
    v6 = objc_opt_class();
    v7 = [NSSet setWithObjects:v6, objc_opt_class(), 0];
    [v5 setClasses:v7 forSelector:"findPhotoLibraryIdentifiersMatchingSearchCriteria:reply:" argumentIndex:0 ofReply:1];

    [v4 setInterface:v5 forSelector:"getLibraryManagementServiceWithReply:" argumentIndex:0 ofReply:1];
    [(NSXPCConnection *)v3 setRemoteObjectInterface:v4];

    v8 = dispatch_queue_create("com.apple.cpl.daemon.connection", 0);
    [(NSXPCConnection *)v3 _setQueue:v8];

    connection = v2->_connection;
    v2->_connection = v3;

    _queue = [(NSXPCConnection *)v2->_connection _queue];
    queue = v2->_queue;
    v2->_queue = _queue;

    [(NSXPCConnection *)v2->_connection resume];
  }

  return v2;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = CPLPhotosDaemonConnection;
  [(CPLPhotosDaemonConnection *)&v3 dealloc];
}

- (id)proxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  connection = self->_connection;
  if (!connection)
  {
    sub_10001D830(a2, self);
  }

  v7 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:handlerCopy];

  return v7;
}

- (id)managementServiceWithError:(id *)error
{
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_1000033FC;
  v38 = sub_10000340C;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_1000033FC;
  v32 = sub_10000340C;
  v33 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 0;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100003414;
  v22[3] = &unk_100034B38;
  v24 = v26;
  v25 = &v34;
  v5 = dispatch_semaphore_create(0);
  v23 = v5;
  v6 = [(CPLPhotosDaemonConnection *)self proxyWithErrorHandler:v22];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100003498;
  v17[3] = &unk_100034B60;
  v19 = v26;
  v20 = &v28;
  v21 = &v34;
  v7 = v5;
  v18 = v7;
  [v6 getLibraryManagementServiceWithReply:v17];
  v8 = dispatch_time(0, 30000000000);
  if (dispatch_semaphore_wait(v7, v8))
  {
    queue = self->_queue;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100003548;
    v13[3] = &unk_100034B88;
    v15 = v26;
    v16 = &v34;
    v14 = v7;
    dispatch_sync(queue, v13);
  }

  v10 = v29[5];
  if (error && !v10)
  {
    *error = v35[5];
    v10 = v29[5];
  }

  v11 = v10;

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(&v28, 8);

  _Block_object_dispose(&v34, 8);

  return v11;
}

@end