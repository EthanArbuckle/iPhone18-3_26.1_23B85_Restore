@interface BLLockFile
+ (BLBackgroundTaskProviding)backgroundTaskDelegate;
+ (id)iTunesSyncLockFile;
+ (id)iTunesSyncLockFilePath;
- (BLLockFile)initWithPath:(id)a3;
- (BOOL)_lock:(BOOL)a3 blocking:(BOOL)a4;
- (BOOL)lockWithBlock:(id)a3 error:(id *)a4;
- (void)_registerBackgroundTask;
- (void)_unregisterBackgroundTask;
- (void)dealloc;
- (void)unlock;
@end

@implementation BLLockFile

+ (id)iTunesSyncLockFilePath
{
  v2 = [MEMORY[0x277CBEBC0] bu_booksRepositoryURL];
  v3 = [v2 path];
  v4 = [v3 stringByAppendingPathComponent:@"Sync/.bookSync.lock"];

  return v4;
}

- (BLLockFile)initWithPath:(id)a3
{
  v5 = a3;
  v6 = [(BLLockFile *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_path, a3);
    v7->_fd = -1;
    v7->_locked = 0;
    v7->_hasBackgroundTask = 0;
  }

  return v7;
}

- (void)dealloc
{
  [(BLLockFile *)self unlock];
  v3.receiver = self;
  v3.super_class = BLLockFile;
  [(BLLockFile *)&v3 dealloc];
}

+ (id)iTunesSyncLockFile
{
  v2 = [BLLockFile alloc];
  v3 = +[BLLockFile iTunesSyncLockFilePath];
  v4 = [(BLLockFile *)v2 initWithPath:v3];

  return v4;
}

+ (BLBackgroundTaskProviding)backgroundTaskDelegate
{
  WeakRetained = objc_loadWeakRetained(&qword_280BC57D0);

  return WeakRetained;
}

- (BOOL)_lock:(BOOL)a3 blocking:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(BLLockFile *)self locked])
  {
    return [(BLLockFile *)self locked];
  }

  v7 = [(BLLockFile *)self path];
  v8 = [v7 length];

  if (!v8)
  {
    return [(BLLockFile *)self locked];
  }

  [(BLLockFile *)self _registerBackgroundTask];
  v9 = [(BLLockFile *)self path];
  self->_fd = open([v9 fileSystemRepresentation], 512, 438);

  fd = self->_fd;
  if (fd == -1)
  {
LABEL_15:
    [(BLLockFile *)self _unregisterBackgroundTask];
    return [(BLLockFile *)self locked];
  }

  fcntl(fd, 2, 1);
  if (v5)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  if (v4)
  {
    v12 = 0;
  }

  else
  {
    v12 = 4;
  }

  self->_locked = flock(self->_fd, v12 | v11) != -1;
  if (![(BLLockFile *)self locked])
  {
    close(self->_fd);
    self->_fd = -1;
    goto LABEL_15;
  }

  v13 = BLDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_241D1F000, v13, OS_LOG_TYPE_DEBUG, "Taking plist lock.", buf, 2u);
  }

  return [(BLLockFile *)self locked];
}

- (void)_registerBackgroundTask
{
  if (!self->_hasBackgroundTask)
  {
    v5 = +[BLLockFile backgroundTaskDelegate];
    v4 = [v5 bl_beginBackgroundTaskWithName:@"BLLockFile" expirationHandler:&unk_2853E2968];
    self->_hasBackgroundTask = 1;
    self->_backgroundTaskIdentifier = v4;
  }
}

- (void)_unregisterBackgroundTask
{
  if (self->_hasBackgroundTask)
  {
    v4 = +[BLLockFile backgroundTaskDelegate];
    [v4 bl_endBackgroundTask:self->_backgroundTaskIdentifier];
    self->_hasBackgroundTask = 0;
  }
}

- (void)unlock
{
  if ([(BLLockFile *)self locked])
  {
    flock(self->_fd, 8);
    close(self->_fd);
    self->_fd = -1;
    self->_locked = 0;
    v3 = BLDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_impl(&dword_241D1F000, v3, OS_LOG_TYPE_DEBUG, "Releasing plist lock.", v4, 2u);
    }

    [(BLLockFile *)self _unregisterBackgroundTask];
  }
}

- (BOOL)lockWithBlock:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = 1;
  if ([(BLLockFile *)self tryLock:1])
  {
LABEL_8:
    v10 = MEMORY[0x245CFF560](v6);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 16))(v10);
    }

    [(BLLockFile *)self unlock];
  }

  else
  {
    v8 = -1;
    while (1)
    {
      v9 = BLDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_241D1F000, v9, OS_LOG_TYPE_DEBUG, "Waiting for plist to get unlocked.", buf, 2u);
      }

      usleep(0x61A8u);
      if (v8 == 3)
      {
        break;
      }

      ++v8;
      if ([(BLLockFile *)self tryLock:1])
      {
        v7 = v8 < 4;
        goto LABEL_8;
      }
    }

    if (a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"BLLockFileErrorDomain" code:-1001 userInfo:0];
      v12 = BLDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *v14 = 0;
        _os_log_impl(&dword_241D1F000, v12, OS_LOG_TYPE_ERROR, "Failed to obtain plist lock.", v14, 2u);
      }
    }

    v7 = 0;
  }

  return v7;
}

@end