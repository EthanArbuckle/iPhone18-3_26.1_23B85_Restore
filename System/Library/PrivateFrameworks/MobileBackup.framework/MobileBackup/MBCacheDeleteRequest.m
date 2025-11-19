@interface MBCacheDeleteRequest
+ (id)purgeRequestForCloudBackupReason:(int64_t)a3;
+ (id)purgeRequestForCloudForegroundRestoreOfSize:(int64_t)a3;
+ (id)purgeRequestForSourceD2DPreflight;
+ (id)purgeRequestForSourceD2DUploadSize:(int64_t)a3 targetFreeDiskSpace:(int64_t)a4;
- (id)_initWithUrgency:(int)a3 qos:(unsigned int)a4 purgeRequestSize:(int64_t)a5;
- (int64_t)purge;
- (void)_cancel;
- (void)cancel;
- (void)dealloc;
@end

@implementation MBCacheDeleteRequest

+ (id)purgeRequestForCloudBackupReason:(int64_t)a3
{
  IsScheduled = MBBackupReasonIsScheduled();
  if (IsScheduled)
  {
    v4 = 3;
  }

  else
  {
    v4 = 4;
  }

  if (IsScheduled)
  {
    v5 = 17;
  }

  else
  {
    v5 = 25;
  }

  v6 = MBFreeDiskSpaceForVolume();
  if (v6 <= 0x80000000)
  {
    v8 = v6;
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v12 = v8;
      v13 = 2048;
      v14 = 0x80000000;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "=cache-delete= Disk space too low to backup (%llu): requesting purge %llu bytes", buf, 0x16u);
      _MBLog();
    }

    v7 = [[MBCacheDeleteRequest alloc] _initWithUrgency:v4 qos:v5 purgeRequestSize:0x80000000];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)purgeRequestForCloudForegroundRestoreOfSize:(int64_t)a3
{
  v4 = MBFreeDiskSpaceForVolume();
  if (a3 + 0x140000000 >= v4)
  {
    v6 = v4;
    if (a3 + 0x140000000 - v4 <= 0x140000000)
    {
      v7 = 0x140000000;
    }

    else
    {
      v7 = a3 + 0x140000000 - v4;
    }

    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v11 = 0x140000000;
      v12 = 2048;
      v13 = v6;
      v14 = 2048;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "=cache-delete= Disk space is too low to restore (%llu, %llu): requesting purge %llu bytes", buf, 0x20u);
      _MBLog();
    }

    v5 = [[MBCacheDeleteRequest alloc] _initWithUrgency:4 qos:25 purgeRequestSize:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)purgeRequestForSourceD2DPreflight
{
  v2 = MBFreeDiskSpaceForVolume();
  if (v2 <= 0x80000000)
  {
    v4 = v2;
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v8 = v4;
      v9 = 2048;
      v10 = 0x80000000;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "=cache-delete= Disk space too low to preflight (%llu): requesting purge %llu bytes", buf, 0x16u);
      _MBLog();
    }

    v3 = [[MBCacheDeleteRequest alloc] _initWithUrgency:4 qos:25 purgeRequestSize:0x80000000];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)purgeRequestForSourceD2DUploadSize:(int64_t)a3 targetFreeDiskSpace:(int64_t)a4
{
  if (a3 + 0x1C0000000 >= a4)
  {
    if (a3 + 0x1C0000000 - a4 <= 0x1C0000000)
    {
      v7 = 0x1C0000000;
    }

    else
    {
      v7 = a3 + 0x1C0000000 - a4;
    }

    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218752;
      v11 = a3;
      v12 = 2048;
      v13 = 0x1C0000000;
      v14 = 2048;
      v15 = a4;
      v16 = 2048;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "=cache-delete= Disk space on the target device is too low (%llu, %llu, %llu): requesting purge %llu bytes", buf, 0x2Au);
      _MBLog();
    }

    v4 = [[MBCacheDeleteRequest alloc] _initWithUrgency:4 qos:25 purgeRequestSize:v7];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_initWithUrgency:(int)a3 qos:(unsigned int)a4 purgeRequestSize:(int64_t)a5
{
  v17.receiver = self;
  v17.super_class = MBCacheDeleteRequest;
  v8 = [(MBCacheDeleteRequest *)&v17 init];
  v9 = v8;
  if (v8)
  {
    atomic_store(0, &v8->_cancelled);
    v10 = objc_opt_class();
    Name = class_getName(v10);
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_attr_make_with_qos_class(v12, a4, 0);
    v14 = dispatch_queue_create(Name, v13);
    queue = v9->_queue;
    v9->_queue = v14;

    v9->_urgency = a3;
    v9->_purgeRequestSize = a5;
  }

  return v9;
}

- (int64_t)purge
{
  v2 = atomic_load(&self->_cancelled);
  if (v2)
  {
    v3 = MBGetDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "=cache-delete= Request already cancelled", buf, 2u);
      _MBLog();
    }

    return 0;
  }

  else
  {
    *buf = 0;
    v24 = buf;
    v25 = 0x2020000000;
    v26 = 0;
    v6 = dispatch_group_create();
    dispatch_group_enter(v6);
    v30[0] = @"/private/var";
    v29[0] = @"CACHE_DELETE_VOLUME";
    v29[1] = @"CACHE_DELETE_AMOUNT";
    v7 = [NSNumber numberWithLongLong:self->_purgeRequestSize];
    v30[1] = v7;
    v29[2] = @"CACHE_DELETE_URGENCY_LIMIT";
    v8 = [NSNumber numberWithInt:self->_urgency];
    v30[2] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:3];

    objc_initWeak(&location, self);
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100064E78;
    block[3] = &unk_1003BC778;
    objc_copyWeak(&v21, &location);
    v11 = v6;
    v18 = v11;
    v12 = v9;
    v19 = v12;
    v20 = buf;
    dispatch_async(queue, block);
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(v24 + 3);
      *v27 = 134217984;
      v28 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "=cache-delete= Purged %llu bytes", v27, 0xCu);
      v16 = *(v24 + 3);
      _MBLog();
    }

    dispatch_group_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
    v4 = *(v24 + 3);

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);

    _Block_object_dispose(buf, 8);
  }

  return v4;
}

- (void)cancel
{
  if ((atomic_exchange(&self->_cancelled, 1u) & 1) == 0)
  {
    v3 = MBGetDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "=cache-delete= Cancelling purge request", buf, 2u);
      _MBLog();
    }

    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006517C;
    block[3] = &unk_1003BC0B0;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)_cancel
{
  if (self->_token)
  {
    CacheDeleteCancelPurge();
    self->_token = 0;
  }
}

- (void)dealloc
{
  [(MBCacheDeleteRequest *)self _cancel];
  v3.receiver = self;
  v3.super_class = MBCacheDeleteRequest;
  [(MBCacheDeleteRequest *)&v3 dealloc];
}

@end