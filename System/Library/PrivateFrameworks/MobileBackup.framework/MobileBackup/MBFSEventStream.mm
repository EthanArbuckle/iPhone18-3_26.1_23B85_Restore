@interface MBFSEventStream
+ (BOOL)_verifyFSEventDatabase:(id)database device:(int)device error:(id *)error;
- (MBFSEventStream)initWithQueue:(id)queue volumeMountPoint:(id)point databaseUUID:(id)d eventID:(unint64_t)iD rootPathToMonitor:(id)monitor eventHandler:(id)handler;
- (__FSEventStream)_startStreamWithError:(id *)error;
- (void)_cancel;
- (void)_invalidateStreamRef;
- (void)cancel;
- (void)startWithCompletion:(id)completion;
@end

@implementation MBFSEventStream

- (MBFSEventStream)initWithQueue:(id)queue volumeMountPoint:(id)point databaseUUID:(id)d eventID:(unint64_t)iD rootPathToMonitor:(id)monitor eventHandler:(id)handler
{
  queueCopy = queue;
  pointCopy = point;
  dCopy = d;
  monitorCopy = monitor;
  handlerCopy = handler;
  v25.receiver = self;
  v25.super_class = MBFSEventStream;
  v18 = [(MBFSEventStream *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_eventQueue, queue);
    objc_storeStrong(&v19->_volumeMountPoint, point);
    objc_storeStrong(&v19->_databaseUUID, d);
    v19->_eventID = iD;
    objc_storeStrong(&v19->_rootPathToMonitor, monitor);
    v20 = objc_retainBlock(handlerCopy);
    eventHandler = v19->_eventHandler;
    v19->_eventHandler = v20;

    v19->_cancelled = 0;
  }

  return v19;
}

- (void)startWithCompletion:(id)completion
{
  completionCopy = completion;
  eventQueue = [(MBFSEventStream *)self eventQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002669E8;
  v7[3] = &unk_1003BD478;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_sync(eventQueue, v7);
}

- (void)cancel
{
  eventQueue = [(MBFSEventStream *)self eventQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100266C44;
  block[3] = &unk_1003BC0B0;
  block[4] = self;
  dispatch_sync(eventQueue, block);
}

- (void)_cancel
{
  eventQueue = [(MBFSEventStream *)self eventQueue];
  dispatch_assert_queue_V2(eventQueue);

  [(MBFSEventStream *)self _invalidateStreamRef];
  group = [(MBFSEventStream *)self group];
  if (group)
  {
    dispatch_group_leave(group);
  }

  [(MBFSEventStream *)self setGroup:0];
}

- (__FSEventStream)_startStreamWithError:(id *)error
{
  eventQueue = [(MBFSEventStream *)self eventQueue];
  dispatch_assert_queue_V2(eventQueue);

  if (!error)
  {
    __assert_rtn("[MBFSEventStream _startStreamWithError:]", "MBFSEventStream.m", 82, "error");
  }

  memset(&v29, 0, sizeof(v29));
  volumeMountPoint = [(MBFSEventStream *)self volumeMountPoint];
  v7 = stat([volumeMountPoint fileSystemRepresentation], &v29);

  if (v7)
  {
    v8 = *__error();
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      volumeMountPoint2 = [(MBFSEventStream *)self volumeMountPoint];
      LODWORD(buf.version) = 138412546;
      *(&buf.version + 4) = volumeMountPoint2;
      WORD2(buf.info) = 1024;
      *(&buf.info + 6) = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "stat failed for %@ %{errno}d", &buf, 0x12u);

      volumeMountPoint3 = [(MBFSEventStream *)self volumeMountPoint];
      _MBLog();
    }

    volumeMountPoint4 = [(MBFSEventStream *)self volumeMountPoint];
    *error = [MBError errorWithErrno:v8 path:volumeMountPoint4 format:@"stat failed"];

    return 0;
  }

  st_dev = v29.st_dev;
  v13 = objc_opt_class();
  databaseUUID = [(MBFSEventStream *)self databaseUUID];
  LOBYTE(v13) = [v13 _verifyFSEventDatabase:databaseUUID device:st_dev error:error];

  if ((v13 & 1) == 0)
  {
    v24 = MBGetDefaultLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.version) = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to verify FSEvents database", &buf, 2u);
      _MBLog();
    }

    return 0;
  }

  buf.version = 0;
  memset(&buf.retain, 0, 24);
  buf.info = self;
  rootPathToMonitor = [(MBFSEventStream *)self rootPathToMonitor];
  v36 = rootPathToMonitor;
  v16 = FSEventStreamCreateRelativeToDevice(0, sub_10026726C, &buf, st_dev, [NSArray arrayWithObjects:&v36 count:1], [(MBFSEventStream *)self eventID], 0.0, 1u);

  if (!v16)
  {
    v26 = MBGetDefaultLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Could not create FSEvent stream", v30, 2u);
      _MBLog();
    }

    v27 = @"Failed to create FSEvent stream";
    goto LABEL_23;
  }

  eventQueue2 = [(MBFSEventStream *)self eventQueue];
  FSEventStreamSetDispatchQueue(v16, eventQueue2);

  v18 = FSEventStreamStart(v16);
  v19 = MBGetDefaultLog();
  v20 = v19;
  if (!v18)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to start FSEvent stream", v30, 2u);
      _MBLog();
    }

    FSEventStreamRelease(v16);
    v27 = @"Failed to start FSEvent stream";
LABEL_23:
    [MBError errorWithCode:1 format:v27];
    *error = v16 = 0;
    return v16;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    volumeMountPoint5 = [(MBFSEventStream *)self volumeMountPoint];
    eventID = [(MBFSEventStream *)self eventID];
    *v30 = 138543874;
    v31 = volumeMountPoint5;
    v32 = 2048;
    v33 = eventID;
    v34 = 2048;
    v35 = v16;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Started collecting FSEvents for %{public}@ from FSEventId:%llu streamRef:%p", v30, 0x20u);

    volumeMountPoint6 = [(MBFSEventStream *)self volumeMountPoint];
    [(MBFSEventStream *)self eventID];
    _MBLog();
  }

  return v16;
}

+ (BOOL)_verifyFSEventDatabase:(id)database device:(int)device error:(id *)error
{
  databaseCopy = database;
  if (!error)
  {
    __assert_rtn("+[MBFSEventStream _verifyFSEventDatabase:device:error:]", "MBFSEventStream.m", 126, "error");
  }

  v8 = databaseCopy;
  v9 = FSEventsCopyUUIDForDevice(device);
  if (v9)
  {
    v10 = v9;
    v11 = CFUUIDCreateString(0, v9);
    CFRelease(v10);
    v12 = [(__CFString *)v11 isEqualToString:v8];
    if ((v12 & 1) == 0)
    {
      v13 = MBGetDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v17 = v8;
        v18 = 2112;
        v19 = v11;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "FSEvents database has changed %@ != %@", buf, 0x16u);
        _MBLog();
      }

      *error = [MBError errorWithCode:4 format:@"Invalid FSEvents database"];
    }
  }

  else
  {
    v14 = MBGetDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v17) = device;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "FSEventsCopyUUIDForDevice returned nil for device:%d", buf, 8u);
      _MBLog();
    }

    [MBError errorWithCode:4 format:@"FSEventsCopyUUIDFotDevice returned nil"];
    *error = v12 = 0;
  }

  return v12;
}

- (void)_invalidateStreamRef
{
  streamRef = [(MBFSEventStream *)self streamRef];
  if (streamRef)
  {
    v4 = streamRef;
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v7 = v4;
      v8 = 2112;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Invalidating the FSEvent stream %p %@", buf, 0x16u);
      _MBLog();
    }

    FSEventStreamStop(v4);
    FSEventStreamInvalidate(v4);
    FSEventStreamRelease(v4);
    [(MBFSEventStream *)self setStreamRef:0];
  }
}

@end