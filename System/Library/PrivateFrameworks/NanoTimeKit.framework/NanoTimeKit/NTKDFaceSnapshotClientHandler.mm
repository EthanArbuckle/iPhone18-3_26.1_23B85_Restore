@interface NTKDFaceSnapshotClientHandler
- (NTKDFaceSnapshotClientHandler)initWithConnection:(id)a3 snapshotController:(id)a4;
- (void)_handleInvalidation;
- (void)_onQueueAsync:(id)a3;
- (void)faceSnapshotChangedForKey:(id)a3;
- (void)performAfterCompletingCurrentlyPendingSnapshots:(id)a3;
- (void)requestSnapshotOfFaceInstanceDescriptor:(id)a3;
- (void)requestSnapshotOfFaceInstanceDescriptor:(id)a3 options:(id)a4 completion:(id)a5;
- (void)snapshotFaceInstanceDescriptor:(id)a3 options:(id)a4 completion:(id)a5;
- (void)snapshotLibrarySelectedFaceForDeviceUUID:(id)a3 options:(id)a4 completion:(id)a5;
- (void)updateAllSnapshots;
@end

@implementation NTKDFaceSnapshotClientHandler

- (NTKDFaceSnapshotClientHandler)initWithConnection:(id)a3 snapshotController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v22.receiver = self;
  v22.super_class = NTKDFaceSnapshotClientHandler;
  v9 = [(NTKDFaceSnapshotClientHandler *)&v22 init];
  if (v9)
  {
    v10 = [NSString stringWithFormat:@"com.apple.ntkd.facesnapshotclient.%p", v9];
    v11 = dispatch_queue_create([v10 UTF8String], 0);
    queue = v9->_queue;
    v9->_queue = v11;

    objc_storeStrong(&v9->_connection, a3);
    connection = v9->_connection;
    v14 = NTKFaceSnapshotClientInterface();
    [(NSXPCConnection *)connection setRemoteObjectInterface:v14];

    v15 = v9->_connection;
    v16 = NTKFaceSnapshotServerInterface();
    [(NSXPCConnection *)v15 setExportedInterface:v16];

    [(NSXPCConnection *)v9->_connection setExportedObject:v9];
    objc_storeStrong(&v9->_snapshotController, a4);
    [v8 addObserver:v9];
    objc_initWeak(&location, v9);
    v17 = v9->_connection;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100001F28;
    v19[3] = &unk_10005CA48;
    objc_copyWeak(&v20, &location);
    [(NSXPCConnection *)v17 setInvalidationHandler:v19];
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v9;
}

- (void)_handleInvalidation
{
  v3 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    connection = self->_connection;
    *buf = 138412546;
    v8 = self;
    v9 = 2112;
    v10 = connection;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Connection invalidated: %@ %@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000207C;
  block[3] = &unk_10005CA70;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)updateAllSnapshots
{
  v3 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412546;
    v8 = v5;
    v9 = 2080;
    v10 = "[NTKDFaceSnapshotClientHandler updateAllSnapshots]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Inside: %@ %s", buf, 0x16u);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100002254;
  v6[3] = &unk_10005CA70;
  v6[4] = self;
  [(NTKDFaceSnapshotClientHandler *)self _onQueueAsync:v6];
}

- (void)requestSnapshotOfFaceInstanceDescriptor:(id)a3
{
  v4 = a3;
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138412546;
    v13 = v7;
    v14 = 2080;
    v15 = "[NTKDFaceSnapshotClientHandler requestSnapshotOfFaceInstanceDescriptor:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Inside: %@ %s", buf, 0x16u);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000023B4;
  v9[3] = &unk_10005CA98;
  v10 = v4;
  v11 = self;
  v8 = v4;
  [(NTKDFaceSnapshotClientHandler *)self _onQueueAsync:v9];
}

- (void)performAfterCompletingCurrentlyPendingSnapshots:(id)a3
{
  v4 = a3;
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138412546;
    v12 = v7;
    v13 = 2080;
    v14 = "[NTKDFaceSnapshotClientHandler performAfterCompletingCurrentlyPendingSnapshots:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Inside: %@ %s", buf, 0x16u);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100002578;
  v9[3] = &unk_10005CAC0;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  [(NTKDFaceSnapshotClientHandler *)self _onQueueAsync:v9];
}

- (void)requestSnapshotOfFaceInstanceDescriptor:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v16 = 138412546;
    v17 = v13;
    v18 = 2080;
    v19 = "[NTKDFaceSnapshotClientHandler requestSnapshotOfFaceInstanceDescriptor:options:completion:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Inside: %@ %s", &v16, 0x16u);
  }

  v14 = [NTKFace faceWithInstanceDescriptor:v10];

  if (v14)
  {
    [(NTKDFaceSnapshotController *)self->_snapshotController requestSnapshotOfFace:v14 options:v8 completion:v9];
  }

  else
  {
    v15 = [NSError errorWithDomain:@"com.apple.nanotimekit.snapshots" code:24000 userInfo:0];
    v9[2](v9, 0, v15);
  }
}

- (void)snapshotFaceInstanceDescriptor:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 138412546;
    v23 = v13;
    v24 = 2080;
    v25 = "[NTKDFaceSnapshotClientHandler snapshotFaceInstanceDescriptor:options:completion:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Inside: %@ %s", buf, 0x16u);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000028B4;
  v17[3] = &unk_10005CAE8;
  v18 = v8;
  v19 = self;
  v20 = v9;
  v21 = v10;
  v14 = v10;
  v15 = v9;
  v16 = v8;
  [(NTKDFaceSnapshotClientHandler *)self _onQueueAsync:v17];
}

- (void)snapshotLibrarySelectedFaceForDeviceUUID:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 138412546;
    v22 = v13;
    v23 = 2080;
    v24 = "[NTKDFaceSnapshotClientHandler snapshotLibrarySelectedFaceForDeviceUUID:options:completion:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Inside: %@ %s", buf, 0x16u);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100002AC8;
  v17[3] = &unk_10005CAE8;
  v17[4] = self;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v14 = v10;
  v15 = v9;
  v16 = v8;
  [(NTKDFaceSnapshotClientHandler *)self _onQueueAsync:v17];
}

- (void)faceSnapshotChangedForKey:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100002B70;
  v4[3] = &unk_10005CA98;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(NTKDFaceSnapshotClientHandler *)v5 _onQueueAsync:v4];
}

- (void)_onQueueAsync:(id)a3
{
  v4 = a3;
  sub_100007294(@"com.apple.ntkd.facesnapshotclient.busy");
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002D24;
  block[3] = &unk_10005CB10;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

@end