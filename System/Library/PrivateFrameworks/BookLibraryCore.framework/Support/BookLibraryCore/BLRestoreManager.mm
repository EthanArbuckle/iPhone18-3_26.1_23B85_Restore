@interface BLRestoreManager
+ (id)sharedInstance;
- (BLDownloadManager)downloadManager;
- (BLRestoreManager)init;
- (BOOL)_isCellularAccessValueReadyOrAlreadyInUse;
- (BOOL)isCellularAllowed;
- (void)_applyRestoreCellularAccess;
- (void)_waitForCellularAccessValueReady;
- (void)dealloc;
- (void)dq_fetchRestoreCellularAccess;
- (void)dq_setupRestoreStateChangeHandler;
- (void)setupWithDownloadManager:(id)manager;
@end

@implementation BLRestoreManager

+ (id)sharedInstance
{
  if (qword_10013EB90 != -1)
  {
    sub_1000CB088();
  }

  v3 = qword_10013EB98;

  return v3;
}

- (BLRestoreManager)init
{
  v10.receiver = self;
  v10.super_class = BLRestoreManager;
  v2 = [(BLRestoreManager *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_accessLock._os_unfair_lock_opaque = 0;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.ibooks.BLService.RestoreManager.dispatchQueue", v4);
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v5;

    v7 = objc_alloc_init(MBManager);
    restoreManager = v3->_restoreManager;
    v3->_restoreManager = v7;
  }

  return v3;
}

- (void)dealloc
{
  notify_cancel([(BLRestoreManager *)self restoreCellularToken]);
  v3.receiver = self;
  v3.super_class = BLRestoreManager;
  [(BLRestoreManager *)&v3 dealloc];
}

- (void)setupWithDownloadManager:(id)manager
{
  managerCopy = manager;
  v5 = BLServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Restore-Mgr] Setting up restore manager.", buf, 2u);
  }

  [(BLRestoreManager *)self setDownloadManager:managerCopy];
  dispatchQueue = [(BLRestoreManager *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100063580;
  block[3] = &unk_10011CFE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (BOOL)isCellularAllowed
{
  [(BLRestoreManager *)self _waitForCellularAccessValueReady];
  os_unfair_lock_lock(&self->_accessLock);
  cellularAccess = [(BLRestoreManager *)self cellularAccess];
  v4 = cellularAccess != 0;

  os_unfair_lock_unlock(&self->_accessLock);
  return v4;
}

- (BOOL)_isCellularAccessValueReadyOrAlreadyInUse
{
  os_unfair_lock_lock(&self->_accessLock);
  cellularAccessValueReadyOrAlreadyInUse = [(BLRestoreManager *)self cellularAccessValueReadyOrAlreadyInUse];
  os_unfair_lock_unlock(&self->_accessLock);
  return cellularAccessValueReadyOrAlreadyInUse;
}

- (void)_waitForCellularAccessValueReady
{
  _isCellularAccessValueReadyOrAlreadyInUse = [(BLRestoreManager *)self _isCellularAccessValueReadyOrAlreadyInUse];
  v4 = BLServiceLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (_isCellularAccessValueReadyOrAlreadyInUse)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Restore-Mgr] Proceeding as if cellular policy is ready", buf, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Restore-Mgr] Waiting for cellular policy to be ready", buf, 2u);
    }

    v6 = dispatch_group_create();
    dispatch_group_enter(v6);
    dispatchQueue = [(BLRestoreManager *)self dispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000637D4;
    block[3] = &unk_10011CFE8;
    v4 = v6;
    v11 = v4;
    dispatch_async(dispatchQueue, block);

    v8 = dispatch_time(0, 5000000000);
    if (dispatch_group_wait(v4, v8))
    {
      v9 = BLServiceLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[Restore-Mgr] Timed out waiting for cellular policy", buf, 2u);
      }
    }

    os_unfair_lock_lock(&self->_accessLock);
    [(BLRestoreManager *)self setCellularAccessValueReadyOrAlreadyInUse:1];
    os_unfair_lock_unlock(&self->_accessLock);
  }
}

- (void)_applyRestoreCellularAccess
{
  v3 = BLServiceLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    cellularAccess = [(BLRestoreManager *)self cellularAccess];
    v6 = 138412290;
    v7 = cellularAccess;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[Restore-Mgr] About to apply cellular policy: %@", &v6, 0xCu);
  }

  downloadManager = [(BLRestoreManager *)self downloadManager];
  [downloadManager updatePoliciesForRestoreDownloadsWithCompletion:&stru_10011D028];
}

- (void)dq_fetchRestoreCellularAccess
{
  dispatchQueue = [(BLRestoreManager *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  restoreManager = [(BLRestoreManager *)self restoreManager];
  v12 = 0;
  v5 = [restoreManager backgroundRestoreCellularAccessWithError:&v12];
  v6 = v12;

  v7 = BLServiceLog();
  cellularAccess = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, cellularAccess, OS_LOG_TYPE_ERROR, "[Restore-Mgr] The restore cellular policy changed, but we couldn't fetch it:  %@", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, cellularAccess, OS_LOG_TYPE_DEFAULT, "[Restore-Mgr] Got cellular policy: %@", buf, 0xCu);
    }

    os_unfair_lock_lock(&self->_accessLock);
    cellularAccess = [(BLRestoreManager *)self cellularAccess];
    [(BLRestoreManager *)self setCellularAccess:v5];
    cellularAccessValueReadyOrAlreadyInUse = [(BLRestoreManager *)self cellularAccessValueReadyOrAlreadyInUse];
    [(BLRestoreManager *)self setCellularAccessValueReadyOrAlreadyInUse:1];
    os_unfair_lock_unlock(&self->_accessLock);
    if (cellularAccessValueReadyOrAlreadyInUse)
    {
      if ((v5 != 0) == (cellularAccess == 0) || (v10 = -[NSObject allowsExpensiveNetworkAccess](cellularAccess, "allowsExpensiveNetworkAccess"), v10 != [v5 allowsExpensiveNetworkAccess]))
      {
        [(BLRestoreManager *)self _applyRestoreCellularAccess];
      }
    }

    else
    {
      v11 = BLServiceLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[Restore-Mgr] Skip cellular policy changed check", buf, 2u);
      }
    }
  }
}

- (void)dq_setupRestoreStateChangeHandler
{
  dispatchQueue = [(BLRestoreManager *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  uTF8String = [kMBBackgroundRestoreCellularAccessChangedNotification UTF8String];
  dispatchQueue2 = [(BLRestoreManager *)self dispatchQueue];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100063C58;
  handler[3] = &unk_10011D050;
  handler[4] = self;
  notify_register_dispatch(uTF8String, &self->_restoreCellularToken, dispatchQueue2, handler);

  [(BLRestoreManager *)self dq_fetchRestoreCellularAccess];
}

- (BLDownloadManager)downloadManager
{
  WeakRetained = objc_loadWeakRetained(&self->_downloadManager);

  return WeakRetained;
}

@end