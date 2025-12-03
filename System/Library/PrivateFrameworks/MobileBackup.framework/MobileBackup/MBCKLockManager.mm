@interface MBCKLockManager
- (BOOL)_lockMustRenew;
- (BOOL)reacquireLockWithError:(id *)error;
- (MBCKLock)lock;
- (MBCKLockManager)initWithAccount:(id)account restoreType:(int)type backupUDID:(id)d databaseManager:(id)manager delegate:(id)delegate operationGroup:(id)group thermalPressureMonitor:(id)monitor snapshotUUID:(id)self0;
- (id)_fetchPluginFieldsFromDelegate;
- (void)_releaseLockAndScheduleRetries;
- (void)_renewLockAndScheduleRetries;
- (void)_scheduleTimerWithInterval:(double)interval;
- (void)_timerFired;
- (void)releaseLockAsync;
- (void)releaseLockSync;
- (void)resetRenewalTimer;
- (void)startRenewingLock;
- (void)stopRenewingLock;
@end

@implementation MBCKLockManager

- (MBCKLockManager)initWithAccount:(id)account restoreType:(int)type backupUDID:(id)d databaseManager:(id)manager delegate:(id)delegate operationGroup:(id)group thermalPressureMonitor:(id)monitor snapshotUUID:(id)self0
{
  accountCopy = account;
  dCopy = d;
  managerCopy = manager;
  delegateCopy = delegate;
  groupCopy = group;
  monitorCopy = monitor;
  iDCopy = iD;
  if (!managerCopy)
  {
    __assert_rtn("[MBCKLockManager initWithAccount:restoreType:backupUDID:databaseManager:delegate:operationGroup:thermalPressureMonitor:snapshotUUID:]", "MBCKLockManager.m", 39, "databaseManager");
  }

  v26 = iDCopy;
  v28.receiver = self;
  v28.super_class = MBCKLockManager;
  v21 = [(MBServiceLockManager *)&v28 initWithAccount:accountCopy backupUDID:dCopy type:1 delegate:delegateCopy];
  v22 = v21;
  if (v21)
  {
    v21->_restoreType = type;
    lock = v21->_lock;
    v21->_lock = 0;

    v22->_releaseLock = 0;
    objc_storeStrong(&v22->_databaseManager, manager);
    objc_storeStrong(&v22->_ckOperationGroup, group);
    objc_storeStrong(&v22->_thermalPressureMonitor, monitor);
    objc_storeStrong(&v22->_snapshotUUID, iD);
  }

  return v22;
}

- (MBCKLock)lock
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  lock = selfCopy->_lock;
  if (!lock)
  {
    v4 = [MBCKLock alloc];
    backupUDID = selfCopy->super._backupUDID;
    databaseManager = [(MBCKLockManager *)selfCopy databaseManager];
    v7 = [(MBCKLock *)v4 initWithDeviceUUID:backupUDID databaseManager:databaseManager];
    v8 = selfCopy->_lock;
    selfCopy->_lock = v7;

    [(MBCKLock *)selfCopy->_lock setCkOperationGroup:selfCopy->_ckOperationGroup];
    lock = selfCopy->_lock;
  }

  v9 = lock;
  objc_sync_exit(selfCopy);

  return v9;
}

- (void)startRenewingLock
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    backupUDID = self->super._backupUDID;
    *buf = 138412290;
    v9 = backupUDID;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting to renew lock for device %@", buf, 0xCu);
    v6 = self->super._backupUDID;
    _MBLog();
  }

  queue = self->super._queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100128848;
  block[3] = &unk_1003BC0B0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)resetRenewalTimer
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Resetting lock timer", buf, 2u);
    _MBLog();
  }

  queue = self->super._queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100128B1C;
  block[3] = &unk_1003BC0B0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)stopRenewingLock
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stopping renewing lock", buf, 2u);
    _MBLog();
  }

  queue = self->super._queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100128C2C;
  block[3] = &unk_1003BC0B0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (BOOL)reacquireLockWithError:(id *)error
{
  if ([(MBCKLockManager *)self _lockMustRenew])
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      backupUDID = self->super._backupUDID;
      LODWORD(buf) = 138412290;
      *(&buf + 4) = backupUDID;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Acquiring lock for device %@", &buf, 0xCu);
      v16 = self->super._backupUDID;
      _MBLog();
    }

    self->_releaseLock = 0;
    [(MBCKLockManager *)self timeout];
    v8 = v7;
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v29 = 0x3032000000;
    v30 = sub_100128F78;
    v31 = sub_100128F88;
    v32 = 0;
    queue = self->super._queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100128F90;
    block[3] = &unk_1003BC818;
    block[4] = self;
    block[5] = &v20;
    *&block[7] = v7;
    block[6] = &buf;
    dispatch_sync(queue, block);
    if (v21[3])
    {
      if (self->super._delegate && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [self->super._delegate lockManagerDidAcquireLock:self];
      }

      v10 = +[NSDate date];
      [(MBCKLockManager *)self setLastAcquired:v10];

      [(MBCKLockManager *)self setLastDuration:v8];
    }

    else
    {
      v12 = MBGetDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = self->super._backupUDID;
        v14 = *(*(&buf + 1) + 40);
        *v24 = 138412546;
        v25 = v13;
        v26 = 2112;
        v27 = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to renew lock for device %@: %@", v24, 0x16u);
        v17 = self->super._backupUDID;
        v18 = *(*(&buf + 1) + 40);
        _MBLog();
      }

      if (error)
      {
        *error = *(*(&buf + 1) + 40);
      }

      if (self->super._delegate && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [self->super._delegate lockManager:self failedToAcquireLockWithError:*(*(&buf + 1) + 40)];
      }
    }

    v11 = *(v21 + 24);
    _Block_object_dispose(&buf, 8);

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v11 = 1;
  }

  return v11 & 1;
}

- (void)releaseLockSync
{
  queue = self->super._queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001290BC;
  block[3] = &unk_1003BC0B0;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)releaseLockAsync
{
  queue = self->super._queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100129138;
  block[3] = &unk_1003BC0B0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_releaseLockAndScheduleRetries
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    backupUDID = self->super._backupUDID;
    *buf = 138412290;
    v17 = backupUDID;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Releasing lock for device %@", buf, 0xCu);
    v14 = self->super._backupUDID;
    _MBLog();
  }

  self->_releaseLock = 1;
  _fetchPluginFieldsFromDelegate = [(MBCKLockManager *)self _fetchPluginFieldsFromDelegate];
  lock = [(MBCKLockManager *)self lock];
  account = [(MBServiceLockManager *)self account];
  v15 = 0;
  v8 = [lock clearLockWithAccount:account pluginFields:_fetchPluginFieldsFromDelegate error:&v15];
  v9 = v15;

  if (v8)
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->super._backupUDID;
      *buf = 138412290;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Released lock for device %@", buf, 0xCu);
      v14 = self->super._backupUDID;
      _MBLog();
    }

    [self->super._delegate lockManagerDidReleaseLock:self];
    [(MBCKLockManager *)self setLastAcquired:0];
    [(MBCKLockManager *)self setLastDuration:0.0];
    goto LABEL_9;
  }

  [(MBCKLockManager *)self retryInterval];
  v13 = v12;
  [self->super._delegate lockManager:self failedToReleaseLockWithError:v9];
  if (v13 <= 0.0)
  {
LABEL_9:
    [(PCPersistentTimer *)self->super._timer invalidate];
    goto LABEL_10;
  }

  [(MBCKLockManager *)self _scheduleTimerWithInterval:v13];
LABEL_10:
}

- (void)_renewLockAndScheduleRetries
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    backupUDID = self->super._backupUDID;
    *buf = 138412290;
    v19 = backupUDID;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Renewing lock for device %@", buf, 0xCu);
    v16 = self->super._backupUDID;
    _MBLog();
  }

  [(MBCKLockManager *)self timeout];
  v6 = v5;
  _fetchPluginFieldsFromDelegate = [(MBCKLockManager *)self _fetchPluginFieldsFromDelegate];
  lock = [(MBCKLockManager *)self lock];
  account = [(MBServiceLockManager *)self account];
  v17 = 0;
  v10 = [lock saveLockWithAccount:account timeout:_fetchPluginFieldsFromDelegate pluginFields:&v17 error:v6];
  v11 = v17;

  if (v10)
  {
    [(MBCKLockManager *)self renewInterval];
    v13 = v12;
    if (self->super._delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [self->super._delegate lockManagerDidAcquireLock:self];
    }

    v14 = +[NSDate date];
    [(MBCKLockManager *)self setLastAcquired:v14];

    [(MBCKLockManager *)self setLastDuration:v6];
  }

  else
  {
    [(MBCKLockManager *)self retryInterval];
    v13 = v15;
    if (self->super._delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [self->super._delegate lockManager:self failedToAcquireLockWithError:v11];
    }
  }

  if (v13 <= 0.0)
  {
    [(PCPersistentTimer *)self->super._timer invalidate];
  }

  else
  {
    [(MBCKLockManager *)self _scheduleTimerWithInterval:v13];
  }
}

- (void)_scheduleTimerWithInterval:(double)interval
{
  [(PCPersistentTimer *)self->super._timer invalidate];
  v5 = [[PCPersistentTimer alloc] initWithTimeInterval:@"MobileBackupLockRenew" serviceIdentifier:self target:"_timerFired" selector:0 userInfo:interval];
  timer = self->super._timer;
  self->super._timer = v5;

  [(PCPersistentTimer *)self->super._timer scheduleInQueue:self->super._queue];
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    intervalCopy = interval;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Scheduled lock timer in %.3fs", buf, 0xCu);
    _MBLog();
  }
}

- (void)_timerFired
{
  dispatch_assert_queue_V2(self->super._queue);
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Lock timer fired", v4, 2u);
    _MBLog();
  }

  if (self->_releaseLock)
  {
    [(MBCKLockManager *)self _releaseLockAndScheduleRetries];
  }

  else
  {
    [(MBCKLockManager *)self _renewLockAndScheduleRetries];
  }
}

- (BOOL)_lockMustRenew
{
  lastAcquired = [(MBCKLockManager *)self lastAcquired];
  if (!lastAcquired)
  {
    return 1;
  }

  v4 = lastAcquired;
  [(MBCKLockManager *)self lastDuration];
  v6 = v5;

  if (v6 == 0.0)
  {
    return 1;
  }

  v8 = +[NSDate date];
  lastAcquired2 = [(MBCKLockManager *)self lastAcquired];
  [v8 timeIntervalSinceDate:lastAcquired2];
  v11 = v10;
  [(MBCKLockManager *)self lastDuration];
  v7 = v11 > v12 + -600.0;

  return v7;
}

- (id)_fetchPluginFieldsFromDelegate
{
  if ([(MBCKLockManager *)self restoreType]== 1)
  {
    v3 = 0;
  }

  else
  {
    v4 = self->super._delegate;
    if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v3 = [v4 fetchPluginFieldsForLockManger:self];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

@end