@interface MBCellularDataSubscriptionMonitor
- (BOOL)_startDelegateTimerWithTimeout:(unint64_t)a3;
- (MBCellularDataSubscriptionMonitor)initWithQueue:(id)a3 timeout:(unint64_t)a4;
- (MBCellularDataSubscriptionMonitor)initWithTimeout:(unint64_t)a3;
- (unint64_t)_backupOnCellularSupportWithError:(id *)a3;
- (void)_cancelDelegateTimer;
- (void)_refreshBackupOnCellularSupportWithTimeout:(unint64_t)a3;
- (void)cancel;
- (void)currentDataSimChanged:(id)a3;
- (void)dataSettingsChanged:(id)a3;
- (void)internetDataStatus:(id)a3;
- (void)start;
@end

@implementation MBCellularDataSubscriptionMonitor

- (MBCellularDataSubscriptionMonitor)initWithQueue:(id)a3 timeout:(unint64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = MBCellularDataSubscriptionMonitor;
  v7 = [(MBCellularDataSubscriptionMonitor *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(MBCellularDataSubscriptionMonitor *)v7 setQueue:v6];
    [(MBCellularDataSubscriptionMonitor *)v8 setTimeout:a4];
  }

  return v8;
}

- (MBCellularDataSubscriptionMonitor)initWithTimeout:(unint64_t)a3
{
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_UTILITY, 0);

  v7 = objc_opt_class();
  Name = class_getName(v7);
  v9 = dispatch_queue_create(Name, v6);
  v10 = [(MBCellularDataSubscriptionMonitor *)self initWithQueue:v9 timeout:a3];
  v11 = v10;
  if (v10)
  {
    [(MBCellularDataSubscriptionMonitor *)v10 setBackupOnCellularSupport:0];
    [(MBCellularDataSubscriptionMonitor *)v11 setCellularRadioType:0];
  }

  return v11;
}

- (unint64_t)_backupOnCellularSupportWithError:(id *)a3
{
  v127 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [MBCellularDataSubscriptionMonitor _backupOnCellularSupportWithError:];
  }

  v5 = [(MBCellularDataSubscriptionMonitor *)self queue];
  dispatch_assert_queue_V2(v5);

  *a3 = 0;
  v6 = [(MBCellularDataSubscriptionMonitor *)self telephonyClient];
  v7 = v6;
  if (v6)
  {
    v120 = 0;
    v8 = [v6 getCurrentDataSubscriptionContextSync:&v120];
    v9 = v120;
    v10 = MBGetDefaultLog();
    v11 = v10;
    if (!v8)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v122 = v9;
        _os_log_impl(&dword_1DEB5D000, v11, OS_LOG_TYPE_ERROR, "Failed to fetch the data subscription context: %@", buf, 0xCu);
        _MBLog(@"E ", "Failed to fetch the data subscription context: %@", v42, v43, v44, v45, v46, v47, v9);
      }

      v48 = v9;
      v41 = 0;
      *a3 = v9;
      goto LABEL_66;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v122 = v8;
      _os_log_impl(&dword_1DEB5D000, v11, OS_LOG_TYPE_INFO, "Fetched the data subscription context: %@", buf, 0xCu);
      _MBLog(@"I ", "Fetched the data subscription context: %@", v12, v13, v14, v15, v16, v17, v8);
    }

    v119 = v9;
    v18 = [v7 getSupports5G:v8 error:&v119];
    v19 = v119;

    if (v18)
    {
      v20 = MBGetDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v122 = v18;
        _os_log_impl(&dword_1DEB5D000, v20, OS_LOG_TYPE_DEBUG, "Fetched device&carrier 5G support: %{public}@", buf, 0xCu);
        _MBLog(@"Db", "Fetched device&carrier 5G support: %{public}@", v21, v22, v23, v24, v25, v26, v18);
      }

      if (![(__CFString *)v18 BOOLValue])
      {
        v41 = 0;
        goto LABEL_54;
      }

      v27 = [objc_alloc(MEMORY[0x1E6964F68]) initWithBundleType:1];

      v118 = 0;
      v28 = [v7 copyCarrierBundleValueWithDefault:v8 key:@"EnableBackupOnCellular" bundleType:v27 error:&v118];
      v29 = v118;
      v30 = v29;
      v31 = 0x1E696A000uLL;
      if (v28)
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v33 = MBGetDefaultLog();
        v34 = v33;
        if (isKindOfClass)
        {
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v122 = @"EnableBackupOnCellular";
            v123 = 2114;
            *v124 = v28;
            _os_log_impl(&dword_1DEB5D000, v34, OS_LOG_TYPE_DEFAULT, "Fetched %{public}@ carrier bundle key: %{public}@", buf, 0x16u);
            _MBLog(@"Df", "Fetched %{public}@ carrier bundle key: %{public}@", v35, v36, v37, v38, v39, v40, @"EnableBackupOnCellular");
          }

          v31 = 0x1E696A000;
          if (([v28 BOOLValue]& 1) == 0)
          {
            v41 = 0;
            goto LABEL_38;
          }

LABEL_37:
          v41 = 2;
LABEL_38:

          v117 = 0;
          v72 = [v7 copyCarrierBundleValueWithDefault:v8 key:@"EnableRestoreOnCellular" bundleType:v27 error:&v117];
          v19 = v117;

          if (v72)
          {
            v73 = *(v31 + 3480);
            objc_opt_class();
            v74 = objc_opt_isKindOfClass();
            v75 = MBGetDefaultLog();
            v76 = v75;
            if (v74)
            {
              if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543618;
                v122 = @"EnableRestoreOnCellular";
                v123 = 2114;
                *v124 = v72;
                _os_log_impl(&dword_1DEB5D000, v76, OS_LOG_TYPE_DEFAULT, "Fetched %{public}@ carrier bundle key: %{public}@", buf, 0x16u);
                _MBLog(@"Df", "Fetched %{public}@ carrier bundle key: %{public}@", v77, v78, v79, v80, v81, v82, @"EnableRestoreOnCellular");
              }

              if (([v72 BOOLValue]& 1) == 0)
              {
                goto LABEL_53;
              }

              goto LABEL_52;
            }

            if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v122 = @"EnableRestoreOnCellular";
              v123 = 2114;
              *v124 = v72;
              _os_log_impl(&dword_1DEB5D000, v76, OS_LOG_TYPE_ERROR, "Invalid value for %{public}@ carrier bundle key: %{public}@", buf, 0x16u);
              _MBLog(@"E ", "Invalid value for %{public}@ carrier bundle key: %{public}@", v89, v90, v91, v92, v93, v94, @"EnableRestoreOnCellular");
            }
          }

          else
          {
            if (!v19)
            {
LABEL_51:
              v72 = 0;
LABEL_52:
              v41 |= 4uLL;
LABEL_53:

LABEL_54:
              v95 = v19;
              v116 = v19;
              v96 = [v7 getDataStatus:v8 error:&v116];
              v19 = v116;

              if (!v96)
              {
                v101 = MBGetDefaultLog();
                if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v122 = v19;
                  _os_log_impl(&dword_1DEB5D000, v101, OS_LOG_TYPE_ERROR, "Failed to fetch data status: %@", buf, 0xCu);
                  _MBLog(@"E ", "Failed to fetch data status: %@", v102, v103, v104, v105, v106, v107, v19);
                }

                goto LABEL_64;
              }

              v97 = [v96 newRadioCoverage];
              v98 = [v96 radioTechnology];
              v99 = v98;
              if (v97)
              {
                v100 = 2;
              }

              else
              {
                if (v98 != 7)
                {
                  goto LABEL_62;
                }

                v100 = 1;
              }

              [(MBCellularDataSubscriptionMonitor *)self setCellularRadioType:v100];
              v41 |= 1uLL;
LABEL_62:
              v101 = MBGetDefaultLog();
              if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
              {
                *buf = 138544130;
                v122 = v18;
                v123 = 1024;
                *v124 = v97;
                *&v124[4] = 1024;
                *&v124[6] = v99;
                v125 = 2048;
                v126 = v41;
                _os_log_impl(&dword_1DEB5D000, v101, OS_LOG_TYPE_INFO, "Fetched data status, supports5G:%{public}@, newRadioCoverage:%d, radioTechnology:%d, result:0x%lx", buf, 0x22u);
                _MBLog(@"I ", "Fetched data status, supports5G:%{public}@, newRadioCoverage:%d, radioTechnology:%d, result:0x%lx", v108, v109, v110, v111, v112, v113, v18);
              }

LABEL_64:

              goto LABEL_65;
            }

            v72 = MBGetDefaultLog();
            if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v122 = @"EnableRestoreOnCellular";
              v123 = 2112;
              *v124 = v19;
              _os_log_impl(&dword_1DEB5D000, v72, OS_LOG_TYPE_ERROR, "Failed to fetch %{public}@ carrier bundle key: %@", buf, 0x16u);
              _MBLog(@"E ", "Failed to fetch %{public}@ carrier bundle key: %@", v83, v84, v85, v86, v87, v88, @"EnableRestoreOnCellular");
            }
          }

          goto LABEL_51;
        }

        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v122 = @"EnableBackupOnCellular";
          v123 = 2114;
          *v124 = v28;
          _os_log_impl(&dword_1DEB5D000, v34, OS_LOG_TYPE_ERROR, "Invalid value for %{public}@ carrier bundle key: %{public}@", buf, 0x16u);
          _MBLog(@"E ", "Invalid value for %{public}@ carrier bundle key: %{public}@", v66, v67, v68, v69, v70, v71, @"EnableBackupOnCellular");
        }

        v31 = 0x1E696A000uLL;
      }

      else
      {
        if (!v29)
        {
LABEL_36:
          v28 = 0;
          goto LABEL_37;
        }

        v28 = MBGetDefaultLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v122 = @"EnableBackupOnCellular";
          v123 = 2112;
          *v124 = v30;
          _os_log_impl(&dword_1DEB5D000, v28, OS_LOG_TYPE_ERROR, "Failed to fetch %{public}@ carrier bundle key: %@", buf, 0x16u);
          _MBLog(@"E ", "Failed to fetch %{public}@ carrier bundle key: %@", v60, v61, v62, v63, v64, v65, @"EnableBackupOnCellular");
        }
      }

      goto LABEL_36;
    }

    if (-[__CFString code](v19, "code") == 45 && (-[__CFString domain](v19, "domain"), v49 = objc_claimAutoreleasedReturnValue(), v50 = [v49 isEqualToString:*MEMORY[0x1E696A798]], v49, v50))
    {
      v51 = MBGetDefaultLog();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v122 = v19;
        _os_log_impl(&dword_1DEB5D000, v51, OS_LOG_TYPE_INFO, "Failed to check for device&carrier 5G support: %@", buf, 0xCu);
        v58 = @"I ";
LABEL_27:
        _MBLog(v58, "Failed to check for device&carrier 5G support: %@", v52, v53, v54, v55, v56, v57, v19);
      }
    }

    else
    {
      v51 = MBGetDefaultLog();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v122 = v19;
        _os_log_impl(&dword_1DEB5D000, v51, OS_LOG_TYPE_ERROR, "Failed to check for device&carrier 5G support: %@", buf, 0xCu);
        v58 = @"E ";
        goto LABEL_27;
      }
    }

    v59 = v19;
    v41 = 0;
    *a3 = v19;
LABEL_65:

    v9 = v19;
LABEL_66:

    goto LABEL_67;
  }

  [MBError errorWithCode:1 format:@"nil CoreTelephonyClient"];
  *a3 = v41 = 0;
LABEL_67:

  v114 = *MEMORY[0x1E69E9840];
  return v41;
}

- (BOOL)_startDelegateTimerWithTimeout:(unint64_t)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = [(MBCellularDataSubscriptionMonitor *)self queue];
  dispatch_assert_queue_V2(v5);

  [(MBCellularDataSubscriptionMonitor *)self _cancelDelegateTimer];
  if (a3)
  {
    objc_initWeak(&location, self);
    v6 = [(MBCellularDataSubscriptionMonitor *)self queue];
    v7 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v6);

    v8 = dispatch_walltime(0, 1000000000 * a3);
    dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __68__MBCellularDataSubscriptionMonitor__startDelegateTimerWithTimeout___block_invoke;
    handler[3] = &unk_1E86844D0;
    objc_copyWeak(&v19, &location);
    dispatch_source_set_event_handler(v7, handler);
    [(MBCellularDataSubscriptionMonitor *)self setDelegateTimer:v7];
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      v22 = a3;
      v23 = 2048;
      v24 = v7;
      _os_log_impl(&dword_1DEB5D000, v9, OS_LOG_TYPE_DEBUG, "Starting CoreTelephonyClientDataDelegate timer (%llds): %p", buf, 0x16u);
      _MBLog(@"Db", "Starting CoreTelephonyClientDataDelegate timer (%llds): %p", v10, v11, v12, v13, v14, v15, a3);
    }

    dispatch_resume(v7);
    objc_destroyWeak(&v19);

    objc_destroyWeak(&location);
  }

  result = a3 != 0;
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

void __68__MBCellularDataSubscriptionMonitor__startDelegateTimerWithTimeout___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = MBGetDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v12 = objc_opt_class();
      _os_log_impl(&dword_1DEB5D000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ timer fired", buf, 0xCu);
      v3 = objc_opt_class();
      _MBLog(@"Df", "%{public}@ timer fired", v4, v5, v6, v7, v8, v9, v3);
    }

    [WeakRetained _cancelDelegateTimer];
    [WeakRetained _refreshBackupOnCellularSupportWithTimeout:0];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_cancelDelegateTimer
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(MBCellularDataSubscriptionMonitor *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(MBCellularDataSubscriptionMonitor *)self delegateTimer];
  if (v4)
  {
    [(MBCellularDataSubscriptionMonitor *)self setDelegateTimer:0];
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v14 = v4;
      _os_log_impl(&dword_1DEB5D000, v5, OS_LOG_TYPE_DEBUG, "Canceling CoreTelephonyClientDataDelegate timer: %p", buf, 0xCu);
      _MBLog(@"Db", "Canceling CoreTelephonyClientDataDelegate timer: %p", v6, v7, v8, v9, v10, v11, v4);
    }

    dispatch_source_cancel(v4);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_refreshBackupOnCellularSupportWithTimeout:(unint64_t)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = [(MBCellularDataSubscriptionMonitor *)self queue];
  dispatch_assert_queue_V2(v5);

  v23 = 0;
  v6 = [(MBCellularDataSubscriptionMonitor *)self _backupOnCellularSupportWithError:&v23];
  v7 = v23;
  if ([v7 code] == 35 && (objc_msgSend(v7, "domain"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", *MEMORY[0x1E696A798]), v8, v9))
  {
    if (![(MBCellularDataSubscriptionMonitor *)self _startDelegateTimerWithTimeout:a3])
    {
      self->_backupOnCellularSupportChanged = 0;
      v10 = [(MBCellularDataSubscriptionMonitor *)self backupOnCellularSupportHandler];

      if (v10)
      {
        v11 = [(MBCellularDataSubscriptionMonitor *)self backupOnCellularSupportHandler];
        v12 = [MBError errorWithCode:17 format:@"Failed to fetch backupOnCellularSupport"];
        (v11)[2](v11, v6, v12);

LABEL_12:
      }
    }
  }

  else if (!self->_backupOnCellularSupportChanged || v6 != [(MBCellularDataSubscriptionMonitor *)self backupOnCellularSupport])
  {
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(MBCellularDataSubscriptionMonitor *)self backupOnCellularSupport];
      *buf = 134218240;
      v25 = v6;
      v26 = 2048;
      v27 = v14;
      _os_log_impl(&dword_1DEB5D000, v13, OS_LOG_TYPE_DEFAULT, "backupOnCellularSupport changed: %ld(%ld)", buf, 0x16u);
      [(MBCellularDataSubscriptionMonitor *)self backupOnCellularSupport];
      _MBLog(@"Df", "backupOnCellularSupport changed: %ld(%ld)", v15, v16, v17, v18, v19, v20, v6);
    }

    self->_backupOnCellularSupportChanged = 1;
    [(MBCellularDataSubscriptionMonitor *)self setBackupOnCellularSupport:v6];
    v21 = [(MBCellularDataSubscriptionMonitor *)self backupOnCellularSupportHandler];

    if (v21)
    {
      v11 = [(MBCellularDataSubscriptionMonitor *)self backupOnCellularSupportHandler];
      v11[2](v11, v6, 0);
      goto LABEL_12;
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)start
{
  if ([(MBCellularDataSubscriptionMonitor *)self backupOnCellularSupport])
  {
    [MBCellularDataSubscriptionMonitor start];
  }

  [(MBCellularDataSubscriptionMonitor *)self telephonyClient];
  if (objc_claimAutoreleasedReturnValue())
  {
    [MBCellularDataSubscriptionMonitor start];
  }

  v3 = [(MBCellularDataSubscriptionMonitor *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__MBCellularDataSubscriptionMonitor_start__block_invoke;
  block[3] = &unk_1E8684358;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __42__MBCellularDataSubscriptionMonitor_start__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E69650A0]);
  v3 = [*(a1 + 32) queue];
  v4 = [v2 initWithQueue:v3];
  [*(a1 + 32) setTelephonyClient:v4];

  v5 = *(a1 + 32);
  v6 = [v5 telephonyClient];
  [v6 setDelegate:v5];

  v7 = *(a1 + 32);
  v8 = [v7 timeout];

  return [v7 _refreshBackupOnCellularSupportWithTimeout:v8];
}

- (void)cancel
{
  [(MBCellularDataSubscriptionMonitor *)self setTelephonyClient:0];
  v3 = [(MBCellularDataSubscriptionMonitor *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__MBCellularDataSubscriptionMonitor_cancel__block_invoke;
  block[3] = &unk_1E8684358;
  block[4] = self;
  dispatch_async(v3, block);
}

void __43__MBCellularDataSubscriptionMonitor_cancel__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cancelDelegateTimer];
  v2 = [*(a1 + 32) backupOnCellularSupportHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) backupOnCellularSupportHandler];
    v4 = [MBError errorWithCode:202 format:@"Cancelled"];
    (v3)[2](v3, 0, v4);

    v5 = *(a1 + 32);

    [v5 setBackupOnCellularSupportHandler:0];
  }
}

- (void)currentDataSimChanged:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MBCellularDataSubscriptionMonitor *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v4;
    _os_log_impl(&dword_1DEB5D000, v6, OS_LOG_TYPE_DEFAULT, "currentDataSimChanged: %@", buf, 0xCu);
    _MBLog(@"Df", "currentDataSimChanged: %@", v7, v8, v9, v10, v11, v12, v4);
  }

  [(MBCellularDataSubscriptionMonitor *)self _refreshBackupOnCellularSupportWithTimeout:0];
  v13 = *MEMORY[0x1E69E9840];
}

- (void)dataSettingsChanged:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&dword_1DEB5D000, v4, OS_LOG_TYPE_DEFAULT, "dataSettingsChanged: %@", buf, 0xCu);
    _MBLog(@"Df", "dataSettingsChanged: %@", v5, v6, v7, v8, v9, v10, v3);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)internetDataStatus:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MBCellularDataSubscriptionMonitor *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v4;
    _os_log_impl(&dword_1DEB5D000, v6, OS_LOG_TYPE_DEFAULT, "internetDataStatus: %@", buf, 0xCu);
    _MBLog(@"Df", "internetDataStatus: %@", v7, v8, v9, v10, v11, v12, v4);
  }

  [(MBCellularDataSubscriptionMonitor *)self _refreshBackupOnCellularSupportWithTimeout:0];
  v13 = *MEMORY[0x1E69E9840];
}

@end