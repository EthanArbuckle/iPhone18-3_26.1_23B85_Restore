@interface NBWatchFaceSnapshotter
+ (id)captureWatchFaceForPairingID:(id)a3 toFilePath:(id)a4;
- (NBWatchFaceSnapshotter)initWithPairingID:(id)a3;
- (id)snapshotImage;
- (void)snapshotImageUpdated:(id)a3;
- (void)snapshotImageWithBlock:(id)a3;
@end

@implementation NBWatchFaceSnapshotter

+ (id)captureWatchFaceForPairingID:(id)a3 toFilePath:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (qword_100034AB8 != -1)
  {
    sub_10001D750();
  }

  if (qword_100034AB0)
  {
    v7 = [objc_alloc(objc_opt_class()) initWithPairingID:v5];
    v8 = [v7 snapshotImage];
    v9 = v8;
    if (v8)
    {
      v10 = UIImagePNGRepresentation(v8);
      v11 = v10;
      if (v10)
      {
        v21 = 0;
        [v10 writeToFile:v6 options:1073741825 error:&v21];
        v12 = v21;
        if (v12)
        {
          v13 = v12;
          v14 = nb_daemon_log;
          if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
          {
            v15 = v14;
            v16 = [v11 length];
            *buf = 134218498;
            v23 = v16;
            v24 = 2112;
            v25 = v6;
            v26 = 2112;
            v27 = v13;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Failed to write clock face data (%lu bytes) to (%@) with error: (%@)", buf, 0x20u);
          }

          goto LABEL_19;
        }
      }

      else
      {
        v19 = nb_daemon_log;
        if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Failed to retrieve the PNG representation of the snapshot", buf, 2u);
        }
      }
    }

    else
    {
      v18 = nb_daemon_log;
      if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Failed to retrieve the watch face snapshot", buf, 2u);
      }
    }

    v13 = 0;
LABEL_19:

    goto LABEL_20;
  }

  v17 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Failed to instantiate the Face Snapshot singleton", buf, 2u);
  }

  v13 = 0;
LABEL_20:

  return v13;
}

- (NBWatchFaceSnapshotter)initWithPairingID:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = NBWatchFaceSnapshotter;
  v6 = [(NBWatchFaceSnapshotter *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pairingID, a3);
    v8 = [[NTKLibrarySelectedFaceSnapshotProvider alloc] initWithDeviceUUID:v5];
    snapshotProvider = v7->_snapshotProvider;
    v7->_snapshotProvider = v8;

    v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(v10, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.NanoBackup.snapshotter", v11);
    queue = v7->_queue;
    v7->_queue = v12;

    v14 = +[NSMutableArray array];
    snapshotBlocks = v7->_snapshotBlocks;
    v7->_snapshotBlocks = v14;

    [(NTKLibrarySelectedFaceSnapshotProvider *)v7->_snapshotProvider setDelegate:v7];
  }

  return v7;
}

- (id)snapshotImage
{
  v3 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Requesting face snapshot from NTK", buf, 2u);
  }

  v4 = dispatch_semaphore_create(0);
  *buf = 0;
  v15 = buf;
  v16 = 0x3032000000;
  v17 = sub_100001B20;
  v18 = sub_100001B30;
  v19 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100001B38;
  v11[3] = &unk_10002C718;
  v13 = buf;
  v5 = v4;
  v12 = v5;
  [(NBWatchFaceSnapshotter *)self snapshotImageWithBlock:v11];
  v6 = dispatch_time(0, 3000000000);
  if (dispatch_semaphore_wait(v5, v6))
  {
    v7 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Timed out waiting for snapshot from NTK", v10, 2u);
    }
  }

  v8 = *(v15 + 5);

  _Block_object_dispose(buf, 8);

  return v8;
}

- (void)snapshotImageWithBlock:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001D00;
  block[3] = &unk_10002C740;
  block[4] = self;
  v6 = v4;
  v14 = v6;
  dispatch_async(queue, block);
  v7 = [(NTKLibrarySelectedFaceSnapshotProvider *)self->_snapshotProvider snapshotImage];
  if (v7)
  {
    v8 = nb_daemon_log;
    if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Face snapshot received from NTK inline", buf, 2u);
    }

    v9 = self->_queue;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100001D54;
    v10[3] = &unk_10002C768;
    v10[4] = self;
    v11 = v7;
    dispatch_async(v9, v10);
  }
}

- (void)snapshotImageUpdated:(id)a3
{
  v4 = a3;
  v5 = nb_daemon_log;
  if (os_log_type_enabled(nb_daemon_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Face snapshot received from NTK via delegate call", buf, 2u);
  }

  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100001F48;
  v8[3] = &unk_10002C768;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(queue, v8);
}

@end