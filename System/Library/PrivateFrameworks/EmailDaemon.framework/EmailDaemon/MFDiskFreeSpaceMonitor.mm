@interface MFDiskFreeSpaceMonitor
+ (id)defaultMonitor;
- (MFDiskFreeSpaceMonitor)init;
- (unint64_t)_retrieveFreeSpaceStatus:(id *)status;
- (unint64_t)freeSpaceStatus;
- (void)getFreeSpaceStatusWithCompletionHandler:(id)handler;
- (void)setFreeSpaceStatus:(unint64_t)status;
@end

@implementation MFDiskFreeSpaceMonitor

+ (id)defaultMonitor
{
  if (qword_100185838 != -1)
  {
    sub_1000D4144();
  }

  v3 = qword_100185840;

  return v3;
}

- (unint64_t)freeSpaceStatus
{
  [(NSLock *)self->_freeSpaceStatusLock lock];
  freeSpaceStatus = self->_freeSpaceStatus;
  [(NSLock *)self->_freeSpaceStatusLock unlock];
  return freeSpaceStatus;
}

- (MFDiskFreeSpaceMonitor)init
{
  v19.receiver = self;
  v19.super_class = MFDiskFreeSpaceMonitor;
  v2 = [(MFDiskFreeSpaceMonitor *)&v19 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v4 = dispatch_queue_create("com.apple.mobilemail.diskCacheMonitor.freeSpaceStatusQueue", v3);
    v5 = *(v2 + 1);
    *(v2 + 1) = v4;

    v6 = objc_alloc_init(NSLock);
    v7 = *(v2 + 3);
    *(v2 + 3) = v6;

    [*(v2 + 3) setName:@"com.apple.mobilemail.diskCacheMonitor.freeSpaceStatusLock"];
    v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v2 + 1));
    v9 = *(v2 + 2);
    *(v2 + 2) = v8;

    dispatch_source_set_timer(*(v2 + 2), 0, 0xDF8475800uLL, 0x2540BE400uLL);
    v10 = *(v2 + 2);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000061B0;
    handler[3] = &unk_100156400;
    v11 = v2;
    v18 = v11;
    dispatch_source_set_event_handler(v10, handler);
    dispatch_resume(*(v2 + 2));
    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v11 selector:"handleDidPurgeSpace:" name:off_100184268 object:0];

    *(v11 + 32) = [EMInternalPreferences preferenceEnabled:44];
    v13 = +[NSUserDefaults em_userDefaults];
    v14 = [v13 integerForKey:EMUserDefaultSimulateDelayedFreeSpaceStatusTime];
    v15 = 10;
    if (v14)
    {
      v15 = v14;
    }

    *(v11 + 5) = v15;
  }

  return v2;
}

- (void)setFreeSpaceStatus:(unint64_t)status
{
  [(NSLock *)self->_freeSpaceStatusLock lock];
  if (self->_freeSpaceStatus == status)
  {
    freeSpaceStatusLock = self->_freeSpaceStatusLock;

    [(NSLock *)freeSpaceStatusLock unlock];
  }

  else
  {
    self->_freeSpaceStatus = status;
    [(NSLock *)self->_freeSpaceStatusLock unlock];
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 postNotificationName:@"MFDiskFreeSpaceMonitorDidChangeNotification" object:self];
  }
}

- (unint64_t)_retrieveFreeSpaceStatus:(id *)status
{
  dispatch_assert_queue_V2(self->_freeSpaceStatusQueue);
  v5 = [MFDiskCacheUtilities systemSpaceWithError:status];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:@"MFFileSystemFreeSize"];
    v8 = v7;
    if (v7)
    {
      if ([v7 longLongValue] >> 21 >= 0x4B)
      {
        v9 = 1;
      }

      else
      {
        v9 = 2;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    if (status)
    {
      v10 = MFLogGeneral();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        ef_publicDescription = [*status ef_publicDescription];
        sub_1000D4158(ef_publicDescription, buf, v10);
      }
    }

    v9 = 0;
  }

  v12 = +[NSUserDefaults em_userDefaults];
  v13 = [v12 BOOLForKey:@"SimulateCriticalFreeSpaceStatus"];

  if (v13)
  {
    v14 = MFLogGeneral();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Simulate critical free space is enabled: returning MFDiskFreeSpaceMonitorStatusCritical", &v18, 2u);
    }

    v9 = 2;
  }

  if (self->_shouldDelayFreeSpace)
  {
    sleep(self->_freeSpaceStatusDelay);
    v15 = MFLogGeneral();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      freeSpaceStatusDelay = self->_freeSpaceStatusDelay;
      v18 = 134217984;
      v19 = freeSpaceStatusDelay;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Simulate delayed free space is enabled: waiting %lu seconds before returning status", &v18, 0xCu);
    }
  }

  [(MFDiskFreeSpaceMonitor *)self setFreeSpaceStatus:v9];

  return v9;
}

- (void)getFreeSpaceStatusWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  freeSpaceStatusQueue = self->_freeSpaceStatusQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006135C;
  v7[3] = &unk_100157668;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(freeSpaceStatusQueue, v7);
}

@end