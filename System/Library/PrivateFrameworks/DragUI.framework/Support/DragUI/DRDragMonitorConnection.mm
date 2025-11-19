@interface DRDragMonitorConnection
- (BOOL)_shouldNotifyForSession:(id)a3;
- (DRDragMonitorConnection)initWithQueue:(id)a3 machServiceName:(id)a4 serviceDisplayName:(id)a5 options:(unint64_t)a6;
- (void)notifySessionDidEnd:(id)a3;
- (void)notifySessionWillBegin:(id)a3 configuration:(id)a4 completion:(id)a5;
- (void)setUp;
@end

@implementation DRDragMonitorConnection

- (DRDragMonitorConnection)initWithQueue:(id)a3 machServiceName:(id)a4 serviceDisplayName:(id)a5 options:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = DRDragMonitorConnection;
  v14 = [(DRDragMonitorConnection *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_queue, a3);
    v15->_options = a6;
    objc_storeStrong(&v15->_machServiceName, a4);
    objc_storeStrong(&v15->_serviceDisplayName, a5);
  }

  return v15;
}

- (void)setUp
{
  v3 = [[NSXPCConnection alloc] initWithMachServiceName:self->_machServiceName options:0];
  [v3 _setQueue:self->_queue];
  objc_storeStrong(&self->_connection, v3);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100004E0C;
  v9[3] = &unk_100054B50;
  v4 = v3;
  v10 = v4;
  [(NSXPCConnection *)self->_connection setInterruptionHandler:v9];
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100004E14;
  v6[3] = &unk_100054CA0;
  objc_copyWeak(&v7, &location);
  [(NSXPCConnection *)self->_connection setInvalidationHandler:v6];
  v5 = _DUIDragSessionLifecycleListeningInterface();
  [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v5];

  [(NSXPCConnection *)self->_connection setExportedInterface:0];
  [(NSXPCConnection *)self->_connection setExportedObject:0];
  [(NSXPCConnection *)self->_connection resume];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (BOOL)_shouldNotifyForSession:(id)a3
{
  v4 = a3;
  if ([v4 sourceRestrictsDragToSelf] & 1) != 0 || (objc_msgSend(v4, "sourceRestrictsDragToLocalDevice"))
  {
LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  if (([v4 originatedFromPointer] & 1) == 0)
  {
    v6 = DRLogTarget();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      serviceDisplayName = self->_serviceDisplayName;
      v9 = 138412290;
      v10 = serviceDisplayName;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Not notifying %@ of non-pointer drag", &v9, 0xCu);
    }

    goto LABEL_8;
  }

  v5 = 1;
LABEL_9:

  return v5;
}

- (void)notifySessionWillBegin:(id)a3 configuration:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  if ([(DRDragMonitorConnection *)self _shouldNotifyForSession:v7])
  {
    connection = self->_connection;
    if (!connection)
    {
      [(DRDragMonitorConnection *)self setUp];
      connection = self->_connection;
    }

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10000515C;
    v18[3] = &unk_100054CC8;
    v18[4] = self;
    v10 = v8;
    v19 = v10;
    v11 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v18];
    v12 = DRLogTarget();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      serviceDisplayName = self->_serviceDisplayName;
      v14 = [v7 identifier];
      *buf = 138412546;
      v21 = serviceDisplayName;
      v22 = 1024;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Notifying %@ of new drag session 0x%x", buf, 0x12u);
    }

    v15 = [v7 identifier];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000051DC;
    v16[3] = &unk_100054CF0;
    v16[4] = self;
    v17 = v10;
    [v11 dragDidBeginWithSession:v7 identifier:v15 reply:v16];
  }

  else
  {
    v8[2](v8);
  }
}

- (void)notifySessionDidEnd:(id)a3
{
  v4 = a3;
  if ([(DRDragMonitorConnection *)self _shouldNotifyForSession:v4])
  {
    connection = self->_connection;
    if (!connection)
    {
      [(DRDragMonitorConnection *)self setUp];
      connection = self->_connection;
    }

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000053A0;
    v7[3] = &unk_100054D18;
    v7[4] = self;
    v6 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v7];
    if (([(DRDragMonitorConnection *)self options]& 1) != 0)
    {
      [v6 dragDidEndWithSession:v4];
    }

    else
    {
      [v6 dragDidEndWithSession:v4 identifier:{objc_msgSend(v4, "identifier")}];
    }
  }
}

@end