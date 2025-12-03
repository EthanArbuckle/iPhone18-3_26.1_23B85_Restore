@interface DRSystemConnection
- (DRSystemConnection)initWithQueue:(id)queue;
- (void)notifySessionDidEnd:(id)end;
- (void)notifySessionWillBegin:(id)begin;
@end

@implementation DRSystemConnection

- (DRSystemConnection)initWithQueue:(id)queue
{
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = DRSystemConnection;
  v5 = [(DRSystemConnection *)&v15 init];
  if (v5)
  {
    v6 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.DragUI.druid.system" options:0];
    [v6 _setQueue:queueCopy];
    objc_storeStrong(&v5->_connection, v6);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10002E604;
    v13[3] = &unk_100054B50;
    v7 = v6;
    v14 = v7;
    [(NSXPCConnection *)v5->_connection setInterruptionHandler:v13];
    objc_initWeak(&location, v5);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10002E60C;
    v10[3] = &unk_100054CA0;
    objc_copyWeak(&v11, &location);
    [(NSXPCConnection *)v5->_connection setInvalidationHandler:v10];
    v8 = _DUINewClientSystemAppInterface();
    [(NSXPCConnection *)v5->_connection setRemoteObjectInterface:v8];

    [(NSXPCConnection *)v5->_connection setExportedInterface:0];
    [(NSXPCConnection *)v5->_connection setExportedObject:0];
    [(NSXPCConnection *)v5->_connection resume];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (void)notifySessionWillBegin:(id)begin
{
  beginCopy = begin;
  connection = self->_connection;
  if (connection)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10002E860;
    v17[3] = &unk_100054D18;
    v17[4] = self;
    v6 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v17];
    v7 = objc_opt_new();
    [v7 setSessionIdentifier:{objc_msgSend(beginCopy, "identifier")}];
    sourceConnection = [beginCopy sourceConnection];
    [v7 setProcessIdentifier:{objc_msgSend(sourceConnection, "processIdentifier")}];

    sourceConnection2 = [beginCopy sourceConnection];
    v10 = sourceConnection2;
    if (sourceConnection2)
    {
      [sourceConnection2 auditToken];
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
    }

    v14[0] = v15;
    v14[1] = v16;
    [v7 setAuditToken:v14];

    [v7 setSupportsSystemDrag:{objc_msgSend(beginCopy, "supportsSystemDrag")}];
    persistentSceneIdentifier = [beginCopy persistentSceneIdentifier];
    [v7 setPersistentSceneIdentifier:persistentSceneIdentifier];

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10002E924;
    v12[3] = &unk_100056568;
    v13 = beginCopy;
    [v6 dragDidBeginWithSystemSession:v13 info:v7 reply:v12];
  }
}

- (void)notifySessionDidEnd:(id)end
{
  endCopy = end;
  connection = self->_connection;
  if (connection)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10002EB54;
    v15[3] = &unk_100054D18;
    v15[4] = self;
    v6 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v15];
    v7 = objc_opt_new();
    [v7 setSessionIdentifier:{objc_msgSend(endCopy, "identifier")}];
    sourceConnection = [endCopy sourceConnection];
    [v7 setProcessIdentifier:{objc_msgSend(sourceConnection, "processIdentifier")}];

    sourceConnection2 = [endCopy sourceConnection];
    v10 = sourceConnection2;
    if (sourceConnection2)
    {
      [sourceConnection2 auditToken];
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }

    v12[0] = v13;
    v12[1] = v14;
    [v7 setAuditToken:v12];

    [v7 setSupportsSystemDrag:{objc_msgSend(endCopy, "supportsSystemDrag")}];
    persistentSceneIdentifier = [endCopy persistentSceneIdentifier];
    [v7 setPersistentSceneIdentifier:persistentSceneIdentifier];

    [v6 dragDidEndWithSystemSession:v7];
  }
}

@end