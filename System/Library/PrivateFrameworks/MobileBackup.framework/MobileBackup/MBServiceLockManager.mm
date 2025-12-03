@interface MBServiceLockManager
- (BOOL)_reacquireLockWithError:(id *)error;
- (BOOL)reacquireLockWithError:(id *)error;
- (MBServiceLockManager)initWithAccount:(id)account backupUDID:(id)d type:(int)type delegate:(id)delegate;
- (double)_holdLock;
- (double)_releaseLock;
- (double)renewInterval;
- (double)retryInterval;
- (double)timeout;
- (void)_releaseLockAndScheduleRetries;
- (void)_scheduleTimerWithInterval:(double)interval;
- (void)_timerFired;
- (void)dealloc;
- (void)releaseLockAsync;
- (void)releaseLockSync;
- (void)resetRenewalTimer;
- (void)startRenewingLock;
- (void)stopRenewingLock;
@end

@implementation MBServiceLockManager

- (MBServiceLockManager)initWithAccount:(id)account backupUDID:(id)d type:(int)type delegate:(id)delegate
{
  v16.receiver = self;
  v16.super_class = MBServiceLockManager;
  v10 = [(MBServiceLockManager *)&v16 init];
  if (v10)
  {
    v10->_account = account;
    v10->_service = [[MBService alloc] initWithAccount:account];
    dCopy = d;
    v10->_type = type;
    v10->_backupUDID = dCopy;
    v10->_delegate = delegate;
    v12 = objc_opt_class();
    Name = class_getName(v12);
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10->_queue = dispatch_queue_create(Name, v14);
  }

  return v10;
}

- (void)dealloc
{
  dispatch_release(self->_queue);
  [(PCPersistentTimer *)self->_timer invalidate];

  v3.receiver = self;
  v3.super_class = MBServiceLockManager;
  [(MBServiceLockManager *)&v3 dealloc];
}

- (double)timeout
{
  if (self->_type)
  {
    return 172800;
  }

  else
  {
    return 600;
  }
}

- (double)renewInterval
{
  if (self->_type)
  {
    return 1800;
  }

  else
  {
    return 300;
  }
}

- (double)retryInterval
{
  if (self->_type)
  {
    return 600;
  }

  else
  {
    return 60;
  }
}

- (void)startRenewingLock
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Starting to renew MBS lock", buf, 2u);
    _MBLog();
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10024200C;
  block[3] = &unk_1003BF8F8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)resetRenewalTimer
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Resetting MBS lock timer", buf, 2u);
    _MBLog();
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100242160;
  block[3] = &unk_1003BF8F8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)stopRenewingLock
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Stopping renewing MBS lock", buf, 2u);
    _MBLog();
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100242268;
  block[3] = &unk_1003BF8F8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (BOOL)_reacquireLockWithError:(id *)error
{
  v15 = 0;
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Re-acquiring lock", buf, 2u);
    _MBLog();
  }

  v6 = [(MBService *)self->_service lockForBackupUDID:self->_backupUDID];
  if (!v6)
  {
    if (!error)
    {
      return 0;
    }

    v12 = @"Can't re-acquire lock because it hasn't been acquired or was released";
LABEL_16:
    v13 = [MBError errorWithCode:306 format:v12];
    result = 0;
LABEL_17:
    *error = v13;
    return result;
  }

  v7 = v6;
  if ([v6 state] != 1)
  {
    if (!error)
    {
      return 0;
    }

    v12 = @"Can't re-acquire lock because it's not being held";
    goto LABEL_16;
  }

  if ([v7 type] != 1)
  {
    if (!error)
    {
      return 0;
    }

    v12 = @"Can't re-acquire non-restore lock";
    goto LABEL_16;
  }

  [v7 setState:0];
  v8 = [(MBService *)self->_service backupForUDID:self->_backupUDID lastModified:0 error:&v15];
  [v7 setState:1];
  v9 = MBGetDefaultLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (!v8)
  {
    if (v10)
    {
      v14 = [MBError descriptionForError:v15];
      *buf = 138412290;
      v17 = v14;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Failed to re-acquire lock: %@", buf, 0xCu);
      [MBError descriptionForError:v15];
      _MBLog();
    }

    if (error)
    {
      result = 0;
      v13 = v15;
      goto LABEL_17;
    }

    return 0;
  }

  if (v10)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Re-acquired lock", buf, 2u);
    _MBLog();
  }

  return 1;
}

- (BOOL)reacquireLockWithError:(id *)error
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = sub_1002425F4;
  v14 = sub_100242604;
  v15 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100242610;
  block[3] = &unk_1003C2360;
  block[4] = self;
  block[5] = &v16;
  block[6] = &v10;
  dispatch_sync(queue, block);
  v5 = v11[5];
  if (error)
  {
    *error = v5;
  }

  v6 = v5;
  v7 = *(v17 + 24);
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v16, 8);
  return v7;
}

- (void)releaseLockSync
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002426E0;
  block[3] = &unk_1003BF8F8;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)releaseLockAsync
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10024275C;
  block[3] = &unk_1003BF8F8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_releaseLockAndScheduleRetries
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Releasing lock", v6, 2u);
    _MBLog();
  }

  v4 = [(MBService *)self->_service lockForBackupUDID:self->_backupUDID];
  if (v4)
  {
    [v4 setState:2];
  }

  else
  {
    [(MBService *)self->_service setLock:[MBSLock forBackupUDID:"lockWithState:type:timeout:" lockWithState:self->_type type:172800 timeout:?], self->_backupUDID];
  }

  [(MBServiceLockManager *)self _releaseLock];
  if (v5 == 0.0)
  {
    [(PCPersistentTimer *)self->_timer invalidate];
  }

  else
  {
    [(MBServiceLockManager *)self _scheduleTimerWithInterval:?];
  }
}

- (void)_scheduleTimerWithInterval:(double)interval
{
  [(PCPersistentTimer *)self->_timer invalidate];

  v5 = [[PCPersistentTimer alloc] initWithTimeInterval:@"MobileBackupLockRenew" serviceIdentifier:self target:"_timerFired" selector:0 userInfo:interval];
  self->_timer = v5;
  [(PCPersistentTimer *)v5 setDisableSystemWaking:self->_type == 0];
  [(PCPersistentTimer *)self->_timer scheduleInRunLoop:+[NSRunLoop mainRunLoop]];
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    intervalCopy = interval;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Scheduled MBS lock timer in %0.1f s", buf, 0xCu);
    _MBLog();
  }
}

- (void)_timerFired
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "MBS lock timer fired", buf, 2u);
    _MBLog();
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100242A40;
  block[3] = &unk_1003BF8F8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (double)_holdLock
{
  v8 = 0;
  if ([(MBService *)self->_service backupForUDID:self->_backupUDID lastModified:0 error:&v8])
  {
    v3 = MBGetDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Renewed lock", buf, 2u);
      _MBLog();
    }

    [(MBServiceLockManager *)self renewInterval];
  }

  else
  {
    if ([MBError isError:v8 withCode:306]&& self->_type == 1)
    {
      [(MBServiceLockManager *)self _reacquireLockWithError:0];
    }

    else
    {
      v5 = MBGetDefaultLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [MBError descriptionForError:v8];
        *buf = 138412290;
        v10 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Error renewing lock: %@", buf, 0xCu);
        v7 = [MBError descriptionForError:v8];
        _MBLog();
      }
    }

    [(MBServiceLockManager *)self retryInterval];
  }

  return result;
}

- (double)_releaseLock
{
  v12 = 0;
  if ([(MBService *)self->_service restoreCompleteWithInfo:0 backupUDID:self->_backupUDID error:&v12])
  {
    if ([(MBService *)self->_service lockForBackupUDID:self->_backupUDID])
    {
      [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"MBServiceLockManager.m" description:230, @"Lock not released"];
    }

    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Released lock", buf, 2u);
      _MBLog();
    }

    [self->_delegate lockManagerDidReleaseLock:self];
    return 0.0;
  }

  v5 = [MBError isError:v12 withCodes:4, 13, 305, 306, 0];
  v6 = MBGetDefaultLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = [MBError descriptionForError:v12];
      *buf = 138412290;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Failed to release lock: %@", buf, 0xCu);
      v11 = [MBError descriptionForError:v12];
      _MBLog();
    }

    [self->_delegate lockManager:self failedToReleaseLockWithError:{v12, v11}];
    return 0.0;
  }

  if (v7)
  {
    v10 = [MBError descriptionForError:v12];
    *buf = 138412290;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Error releasing lock: %@", buf, 0xCu);
    v11 = [MBError descriptionForError:v12];
    _MBLog();
  }

  [(MBServiceLockManager *)self retryInterval];
  return result;
}

@end