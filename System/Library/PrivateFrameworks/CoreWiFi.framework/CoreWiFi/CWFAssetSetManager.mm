@interface CWFAssetSetManager
- (BOOL)isMobileAssetDaemonReady;
- (CWFAssetSetManager)init;
- (id)checkAssetsWithReason:(id)a3 CanBlock:(BOOL)a4 forAtomicInstance:(id)a5;
- (id)makeAutoAssetSetWithEntry:(id)a3;
- (id)makeAutoAssetWithSelector:(id)a3;
- (void)__periodicCheckA11;
- (void)__startAssetTracking;
- (void)__stopPeriodicCheckA11;
- (void)_configureIntervalForTestingForPeriodicCheckForDownload;
- (void)_forTestingPeriodicCheck;
- (void)_handleAssetDiscoveredNotification;
- (void)_handleAssetDownloadedNotification;
- (void)_periodicCheckForDownloaded;
- (void)_registerForAssetDiscoveredNotification:(id)a3;
- (void)_registerForAssetDownloadedNotification:(id)a3;
- (void)activate;
- (void)forTestingEnablePeriodicCheck;
- (void)invalidate;
- (void)processQueryResults:(id)a3 withError:(id)a4;
- (void)rootMonitorDetectedAdd:(id)a3 deleted:(id)a4 updated:(id)a5;
- (void)scheduleReadinessRetry;
- (void)unlockAssetWithReason:(id)a3;
@end

@implementation CWFAssetSetManager

- (CWFAssetSetManager)init
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v40 = 0;
  v41 = &v40;
  v42 = 0x2050000000;
  v4 = qword_1ED7E38B0;
  v43 = qword_1ED7E38B0;
  if (!qword_1ED7E38B0)
  {
    *&v44 = MEMORY[0x1E69E9820];
    *(&v44 + 1) = 3221225472;
    v45 = sub_1E0BFA4F0;
    v46 = &unk_1E86E5600;
    v47 = &v40;
    sub_1E0BFA4F0(&v44);
    v4 = v41[3];
  }

  v5 = v4;
  _Block_object_dispose(&v40, 8);
  if (!objc_opt_class() || (sub_1E0BF3F68(), !objc_opt_class()) || (sub_1E0BF406C(), v6 = objc_opt_class(), !MEMORY[0x1EEE987B8]) || !v6 || (_os_feature_enabled_impl() & 1) == 0)
  {
    v29 = CWFGetOTAOSLog();
    if (v29)
    {
      v30 = CWFGetOTAOSLog();
    }

    else
    {
      v30 = MEMORY[0x1E69E9C10];
      v31 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v44) = 0;
      _os_log_send_and_compose_impl();
    }

    goto LABEL_27;
  }

  v7 = +[CWFAssetPowerTable isSupportedOTAPTUpdate];
  has_internal_content = +[CWFAssetPowerTable isSupportedOTAPTDownloadOnly];
  if (has_internal_content)
  {
    has_internal_content = _os_feature_enabled_impl();
    if (has_internal_content)
    {
      has_internal_content = os_variant_has_internal_content();
    }
  }

  if (((v7 | has_internal_content) & 1) == 0)
  {
    v32 = CWFGetOTAOSLog();
    if (v32)
    {
      v30 = CWFGetOTAOSLog();
    }

    else
    {
      v30 = MEMORY[0x1E69E9C10];
      v36 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v44) = 136315138;
      *(&v44 + 4) = "[CWFAssetSetManager init]";
      _os_log_send_and_compose_impl();
    }

LABEL_27:

LABEL_28:
    v9 = 0;
    goto LABEL_21;
  }

  v39.receiver = self;
  v39.super_class = CWFAssetSetManager;
  v9 = [(CWFAssetSetManager *)&v39 init];
  if (!v9)
  {
    v33 = CWFGetOTAOSLog();
    if (v33)
    {
      self = CWFGetOTAOSLog();
    }

    else
    {
      self = MEMORY[0x1E69E9C10];
      v37 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(&self->super, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v44) = 136315138;
      *(&v44 + 4) = "[CWFAssetSetManager init]";
      _os_log_send_and_compose_impl();
    }

    goto LABEL_28;
  }

  v10 = +[CWFAssetPowerTable sharedObj];
  assetPowerTable = v9->_assetPowerTable;
  v9->_assetPowerTable = v10;

  if (!v9->_assetPowerTable)
  {
    v34 = CWFGetOTAOSLog();
    if (v34)
    {
      v35 = CWFGetOTAOSLog();
    }

    else
    {
      v35 = MEMORY[0x1E69E9C10];
      v38 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v44) = 136315138;
      *(&v44 + 4) = "[CWFAssetSetManager init]";
      _os_log_send_and_compose_impl();
    }

    self = v9;
    goto LABEL_28;
  }

  v12 = +[CWFAssetPowerTableTelemetry sharedObj];
  v13 = +[CWFAssetPowerTable getDeviceSKU];
  [v12 setSKU:v13];

  v14 = +[CWFAssetPowerTableTelemetry sharedObj];
  [v14 setIsSupportedChipset:{+[CWFAssetPowerTable isChipsetFullySupported](CWFAssetPowerTable, "isChipsetFullySupported")}];

  v15 = [@"com.apple.corewifi.AutoAssetNotifyAndOpsQueue" UTF8String];
  v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v17 = dispatch_queue_create(v15, v16);
  eventQueue = v9->_eventQueue;
  v9->_eventQueue = v17;

  v19 = MGCopyAnswer();
  LODWORD(v15) = [v19 BOOLValue];

  if (v15)
  {
    v20 = NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, 2uLL, 1);
    v21 = [v20 firstObject];
    v22 = [v21 stringByAppendingPathComponent:@"CoreWiFiAssetRootDropoff"];
    v9->_assetRootToProcess = 0;
    v23 = [[CWFAssetRootMonitor alloc] initMonitorWithPath:v22];
    assetRootMonitor = v9->_assetRootMonitor;
    v9->_assetRootMonitor = v23;

    [(CWFAssetRootMonitor *)v9->_assetRootMonitor setDelegate:v9];
    [(CWFAssetRootMonitor *)v9->_assetRootMonitor startMonitoring];
  }

  v25 = CWFGetOTAOSLog();
  if (v25)
  {
    self = CWFGetOTAOSLog();
  }

  else
  {
    self = MEMORY[0x1E69E9C10];
    v26 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(&self->super, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v44) = 136315138;
    *(&v44 + 4) = "[CWFAssetSetManager init]";
    _os_log_send_and_compose_impl();
  }

LABEL_21:

  objc_autoreleasePoolPop(v3);
  v27 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)rootMonitorDetectedAdd:(id)a3 deleted:(id)a4 updated:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = CWFGetOTAOSLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136447490;
    v20 = "[CWFAssetSetManager rootMonitorDetectedAdd:deleted:updated:]";
    v21 = 1024;
    v22 = 204;
    v23 = 2080;
    v24 = "[CWFAssetSetManager rootMonitorDetectedAdd:deleted:updated:]";
    v25 = 2112;
    v26 = v8;
    v27 = 2112;
    v28 = v9;
    v29 = 2112;
    v30 = v10;
    _os_log_impl(&dword_1E0BBF000, v11, OS_LOG_TYPE_INFO, "%{public}s::%d:%s:  addedPaths ---\n %@\n deletedPaths ---\n %@\n updatedPaths ---\n %@", buf, 0x3Au);
  }

  if ([v8 count] || objc_msgSend(v10, "count"))
  {
    v12 = [(CWFAssetSetManager *)self eventQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0BF43A0;
    block[3] = &unk_1E86E6060;
    block[4] = self;
    v17 = v8;
    v18 = v10;
    dispatch_async(v12, block);

    v13 = v17;
  }

  else
  {
    if (![v9 count])
    {
      goto LABEL_7;
    }

    v13 = [(CWFAssetSetManager *)self eventQueue];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1E0BF461C;
    v15[3] = &unk_1E86E6010;
    v15[4] = self;
    dispatch_async(v13, v15);
  }

LABEL_7:
  v14 = *MEMORY[0x1E69E9840];
}

- (void)forTestingEnablePeriodicCheck
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = CWFGetOTAOSLog();
  if (v4)
  {
    v5 = CWFGetOTAOSLog();
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 136315138;
    v33 = "[CWFAssetSetManager forTestingEnablePeriodicCheck]";
    LODWORD(v30) = 12;
    v29 = &v32;
    _os_log_send_and_compose_impl();
  }

  self->_forTestingPeriodicCheckEnabled = 0;
  v7 = [v3 objectForKey:@"OTAPeriodicCheckEnabled"];

  if (v7)
  {
    self->_forTestingPeriodicCheckEnabled = [v3 BOOLForKey:@"OTAPeriodicCheckEnabled"];
    v8 = CWFGetOTAOSLog();
    if (v8)
    {
      v9 = CWFGetOTAOSLog();
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"NO";
      if (self->_forTestingPeriodicCheckEnabled)
      {
        v11 = @"YES";
      }

      v32 = 136315394;
      v33 = "[CWFAssetSetManager forTestingEnablePeriodicCheck]";
      v34 = 2112;
      v35 = v11;
      LODWORD(v30) = 22;
      v29 = &v32;
      _os_log_send_and_compose_impl();
    }
  }

  self->_forTestingPeriodicityInSecs = -1;
  v12 = [v3 objectForKey:{@"OTAPeriodicCheckIntervalInSecs", v29, v30}];

  if (v12)
  {
    self->_forTestingPeriodicityInSecs = [v3 integerForKey:@"OTAPeriodicCheckIntervalInSecs"];
    v13 = CWFGetOTAOSLog();
    if (v13)
    {
      v14 = CWFGetOTAOSLog();
    }

    else
    {
      v14 = MEMORY[0x1E69E9C10];
      v15 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      forTestingPeriodicityInSecs = self->_forTestingPeriodicityInSecs;
      v32 = 136315394;
      v33 = "[CWFAssetSetManager forTestingEnablePeriodicCheck]";
      v34 = 2048;
      v35 = forTestingPeriodicityInSecs;
      _os_log_send_and_compose_impl();
    }

    v17 = self->_forTestingPeriodicityInSecs;
    if (v17 < 60)
    {
      v18 = 60;
LABEL_24:
      self->_forTestingPeriodicityInSecs = v18;
      goto LABEL_25;
    }

    v18 = 604800;
    if (v17 > 0x93A80)
    {
      goto LABEL_24;
    }
  }

LABEL_25:
  if (self->_forTestingPeriodicCheckEnabled && self->_forTestingPeriodicityInSecs >= 1)
  {
    v19 = CWFGetOTAOSLog();
    if (v19)
    {
      v20 = CWFGetOTAOSLog();
    }

    else
    {
      v20 = MEMORY[0x1E69E9C10];
      v24 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v32 = 136315138;
      v33 = "[CWFAssetSetManager forTestingEnablePeriodicCheck]";
      _os_log_send_and_compose_impl();
    }

    v25 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_eventQueue);
    forTestingPeriodicCheckTimer = self->_forTestingPeriodicCheckTimer;
    self->_forTestingPeriodicCheckTimer = v25;

    v27 = self->_forTestingPeriodicCheckTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_1E0BF4BD0;
    handler[3] = &unk_1E86E6010;
    handler[4] = self;
    dispatch_source_set_event_handler(v27, handler);
  }

  else
  {
    v21 = CWFGetOTAOSLog();
    if (v21)
    {
      v22 = CWFGetOTAOSLog();
    }

    else
    {
      v22 = MEMORY[0x1E69E9C10];
      v23 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v32 = 136315138;
      v33 = "[CWFAssetSetManager forTestingEnablePeriodicCheck]";
      _os_log_send_and_compose_impl();
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (void)activate
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_eventQueue);
  periodicCheckA11Timer = self->_periodicCheckA11Timer;
  self->_periodicCheckA11Timer = v4;

  v6 = self->_periodicCheckA11Timer;
  if (v6)
  {
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_1E0BF4D98;
    handler[3] = &unk_1E86E6010;
    handler[4] = self;
    dispatch_source_set_event_handler(v6, handler);
    v7 = self->_periodicCheckA11Timer;
    v8 = dispatch_walltime(0, 10000000000);
    dispatch_source_set_timer(v7, v8, 0xDF8475800uLL, 0);
    dispatch_activate(self->_periodicCheckA11Timer);
  }

  else
  {
    v10 = CWFGetOTAOSLog();
    if (v10)
    {
      v11 = CWFGetOTAOSLog();
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v12 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315138;
      v15 = "[CWFAssetSetManager activate]";
      _os_log_send_and_compose_impl();
    }
  }

  objc_autoreleasePoolPop(v3);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)__periodicCheckA11
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(CWFAssetSetManager *)self eventHandler];

  if (v4)
  {
    v5 = [(CWFAssetSetManager *)self eventHandler];
    v5[2]();
  }

  objc_autoreleasePoolPop(v3);
}

- (void)processQueryResults:(id)a3 withError:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = CWFGetOTAOSLog();
  if (v8)
  {
    v9 = CWFGetOTAOSLog();
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315138;
    v20 = "[CWFAssetSetManager processQueryResults:withError:]";
    _os_log_send_and_compose_impl();
  }

  eventQueue = self->_eventQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0BF4FB0;
  block[3] = &unk_1E86E6060;
  v16 = v7;
  v17 = self;
  v18 = v6;
  v12 = v6;
  v13 = v7;
  dispatch_async(eventQueue, block);

  v14 = *MEMORY[0x1E69E9840];
}

- (void)__stopPeriodicCheckA11
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = CWFGetOTAOSLog();
  if (v3)
  {
    v4 = CWFGetOTAOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  periodicCheckA11Timer = self->_periodicCheckA11Timer;
  if (periodicCheckA11Timer)
  {
    dispatch_source_cancel(periodicCheckA11Timer);
    v7 = self->_periodicCheckA11Timer;
    self->_periodicCheckA11Timer = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)isMobileAssetDaemonReady
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [sub_1E0BF3F68() hasStartupActivatedCompletedOnce];
  v4 = CWFGetOTAOSLog();
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = CWFGetOTAOSLog();
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      _os_log_send_and_compose_impl();
    }
  }

  else
  {
    if (v4)
    {
      v7 = CWFGetOTAOSLog();
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      [(CWFAssetSetManager *)self readinessRetryCount];
      _os_log_send_and_compose_impl();
    }

    [(CWFAssetSetManager *)self scheduleReadinessRetry];
  }

  v10 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)scheduleReadinessRetry
{
  v3 = dispatch_time(0, 30000000000);
  eventQueue = self->_eventQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0BF5888;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_after(v3, eventQueue, block);
  [(CWFAssetSetManager *)self setReadinessRetryCount:[(CWFAssetSetManager *)self readinessRetryCount]+ 1];
}

- (void)__startAssetTracking
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(CWFAssetSetManager *)self eventQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0BF5934;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_async(v4, block);

  objc_autoreleasePoolPop(v3);
}

- (void)invalidate
{
  if ([(CWFAssetSetManager *)self notifyTokenVersionDownloaded]!= -1)
  {
    notify_cancel([(CWFAssetSetManager *)self notifyTokenVersionDownloaded]);
  }

  v3 = [(CWFAssetSetManager *)self forTestingPeriodicCheckTimer];

  if (v3)
  {
    v4 = [(CWFAssetSetManager *)self forTestingPeriodicCheckTimer];
    dispatch_source_cancel(v4);
  }
}

- (void)_registerForAssetDiscoveredNotification:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    [(CWFAssetSetManager *)self setAssetDiscoveredHandler:v4];
  }

  v5 = [sub_1E0BF67F0() notifyRegistrationName:@"ATOMIC_INSTANCE_DISCOVERED" forAssetSetIdentifier:@"WiFi_SetOfPowerTables"];
  out_token[0] = -1;
  v6 = [v5 UTF8String];
  v7 = [(CWFAssetSetManager *)self eventQueue];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_1E0BF68F4;
  handler[3] = &unk_1E86E60B0;
  handler[4] = self;
  notify_register_dispatch(v6, out_token, v7, handler);

  [(CWFAssetSetManager *)self setNotifyTokenVersionDiscovered:out_token[0]];
  v8 = CWFGetOTAOSLog();
  if (v8)
  {
    v9 = CWFGetOTAOSLog();
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    out_token[1] = 136315394;
    v14 = "[CWFAssetSetManager _registerForAssetDiscoveredNotification:]";
    v15 = 1024;
    v16 = out_token[0];
    _os_log_send_and_compose_impl();
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_registerForAssetDownloadedNotification:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    [(CWFAssetSetManager *)self setAssetDownloadedHandler:v4];
  }

  v5 = [sub_1E0BF67F0() notifyRegistrationName:@"ATOMIC_INSTANCE_DOWNLOADED" forAssetSetIdentifier:@"WiFi_SetOfPowerTables"];
  out_token[0] = -1;
  v6 = [v5 UTF8String];
  v7 = [(CWFAssetSetManager *)self eventQueue];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_1E0BF6C90;
  handler[3] = &unk_1E86E60D8;
  v14 = v5;
  v15 = self;
  v8 = v5;
  notify_register_dispatch(v6, out_token, v7, handler);

  [(CWFAssetSetManager *)self setNotifyTokenVersionDownloaded:out_token[0]];
  v9 = CWFGetOTAOSLog();
  if (v9)
  {
    v10 = CWFGetOTAOSLog();
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    out_token[1] = 136315394;
    v17 = "[CWFAssetSetManager _registerForAssetDownloadedNotification:]";
    v18 = 1024;
    v19 = out_token[0];
    _os_log_send_and_compose_impl();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_forTestingPeriodicCheck
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = CWFGetOTAOSLog();
  if (v3)
  {
    v4 = CWFGetOTAOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 136315138;
    v29 = "[CWFAssetSetManager _forTestingPeriodicCheck]";
    _os_log_send_and_compose_impl();
  }

  v6 = objc_alloc_init(sub_1E0BF730C());
  [v6 setAllowCheckDownloadOverCellular:1];
  [v6 setAllowCheckDownloadOnBattery:1];
  [v6 setAllowCheckDownloadOverExpensive:1];
  v7 = [(CWFAssetSetManager *)self makeAutoAssetSetWithEntry:0];
  v26 = 0;
  v27 = 0;
  v8 = [v7 checkAtomicSync:@"reason-expedite-discovery-for-testing" forAtomicInstance:0 withNeedPolicy:v6 withTimeout:-2 discoveredAtomicEntries:&v27 error:&v26];
  v9 = v27;
  v10 = v26;
  v11 = v10;
  if (v10)
  {
    if ([v10 code] == 13)
    {
      v12 = CWFGetOTAOSLog();
      if (v12)
      {
        v13 = CWFGetOTAOSLog();
      }

      else
      {
        v13 = MEMORY[0x1E69E9C10];
        v18 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      v28 = 136315138;
      v29 = "[CWFAssetSetManager _forTestingPeriodicCheck]";
    }

    else
    {
      v15 = [v11 code];
      v16 = CWFGetOTAOSLog();
      v17 = v16;
      if (v15 == 6205)
      {
        if (v16)
        {
          v13 = CWFGetOTAOSLog();
        }

        else
        {
          v13 = MEMORY[0x1E69E9C10];
          v20 = MEMORY[0x1E69E9C10];
        }

        if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (v16)
        {
          v13 = CWFGetOTAOSLog();
        }

        else
        {
          v13 = MEMORY[0x1E69E9C10];
          v25 = MEMORY[0x1E69E9C10];
        }

        if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_28;
        }
      }

      v28 = 136315394;
      v29 = "[CWFAssetSetManager _forTestingPeriodicCheck]";
      v30 = 2112;
      v31 = v11;
    }

    goto LABEL_27;
  }

  if (!v9)
  {
    goto LABEL_29;
  }

  v14 = CWFGetOTAOSLog();
  if (v14)
  {
    v13 = CWFGetOTAOSLog();
  }

  else
  {
    v13 = MEMORY[0x1E69E9C10];
    v19 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 136315650;
    v29 = "[CWFAssetSetManager _forTestingPeriodicCheck]";
    v30 = 2112;
    v31 = v8;
    v32 = 2112;
    v33 = v9;
LABEL_27:
    _os_log_send_and_compose_impl();
  }

LABEL_28:

LABEL_29:
  v21 = CWFGetOTAOSLog();
  if (v21)
  {
    v22 = CWFGetOTAOSLog();
  }

  else
  {
    v22 = MEMORY[0x1E69E9C10];
    v23 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 136315138;
    v29 = "[CWFAssetSetManager _forTestingPeriodicCheck]";
    _os_log_send_and_compose_impl();
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)_periodicCheckForDownloaded
{
  v54 = *MEMORY[0x1E69E9840];
  forTestingPeriodicCheckForDownloadEnabled = self->_forTestingPeriodicCheckForDownloadEnabled;
  forTestingPeriodicityForDownloadInSecs = self->_forTestingPeriodicityForDownloadInSecs;
  v5 = CWFGetOTAOSLog();
  if (v5)
  {
    v6 = CWFGetOTAOSLog();
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v48 = 136315138;
    v49 = "[CWFAssetSetManager _periodicCheckForDownloaded]";
    LODWORD(v46) = 12;
    v45 = &v48;
    _os_log_send_and_compose_impl();
  }

  v8 = [(CWFAssetSetManager *)self periodicCheckForDownloadCounts];
  v9 = [(CWFAssetSetManager *)self atomicInstanceTrackedForDownloaded];

  if (!v8)
  {
    if (v9)
    {
      v43 = CWFGetOTAOSLog();
      if (v43)
      {
        v37 = CWFGetOTAOSLog();
      }

      else
      {
        v37 = MEMORY[0x1E69E9C10];
        v44 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_44;
      }

      v48 = 136315138;
      v49 = "[CWFAssetSetManager _periodicCheckForDownloaded]";
LABEL_43:
      _os_log_send_and_compose_impl();
LABEL_44:

      goto LABEL_45;
    }

    v11 = [(CWFAssetSetManager *)self checkAssetsWithReason:@"reason-expedite-discovery" CanBlock:0 forAtomicInstance:0];
    [(CWFAssetSetManager *)self setAtomicInstanceTrackedForDownloaded:v11];
    v18 = CWFGetOTAOSLog();
    if (v18)
    {
      v19 = CWFGetOTAOSLog();
    }

    else
    {
      v19 = MEMORY[0x1E69E9C10];
      v24 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v25 = [(CWFAssetSetManager *)self periodicCheckForDownloadCounts];
      v26 = [(CWFAssetSetManager *)self atomicInstanceTrackedForDownloaded];
      v48 = 136315650;
      v49 = "[CWFAssetSetManager _periodicCheckForDownloaded]";
      v50 = 2048;
      v51 = v25;
      v52 = 2112;
      v53 = v26;
      LODWORD(v46) = 32;
      v45 = &v48;
      _os_log_send_and_compose_impl();
    }

    goto LABEL_28;
  }

  if (v9)
  {
    v10 = [(CWFAssetSetManager *)self atomicInstanceTrackedForDownloaded];
    v11 = [(CWFAssetSetManager *)self checkAssetsWithReason:@"reason-expedite-discovery" CanBlock:0 forAtomicInstance:v10];

    if (!v11)
    {
      goto LABEL_16;
    }

    v12 = [(CWFAssetSetManager *)self atomicInstanceTrackedForDownloaded];
    if (!v12)
    {
      goto LABEL_16;
    }

    v13 = v12;
    v14 = [(CWFAssetSetManager *)self atomicInstanceTrackedForDownloaded];
    v15 = [v11 isEqualToString:v14];

    if (v15)
    {
      v16 = CWFGetOTAOSLog();
      if (v16)
      {
        v17 = CWFGetOTAOSLog();
      }

      else
      {
        v17 = MEMORY[0x1E69E9C10];
        v40 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v41 = [(CWFAssetSetManager *)self periodicCheckForDownloadCounts];
        v42 = [(CWFAssetSetManager *)self atomicInstanceTrackedForDownloaded];
        v48 = 136315650;
        v49 = "[CWFAssetSetManager _periodicCheckForDownloaded]";
        v50 = 2048;
        v51 = v41;
        v52 = 2112;
        v53 = v42;
        LODWORD(v46) = 32;
        v45 = &v48;
        _os_log_send_and_compose_impl();
      }

      [(CWFAssetSetManager *)self setPeriodicCheckForDownloadEnabled:0];
    }

    else
    {
LABEL_16:
      v20 = CWFGetOTAOSLog();
      if (v20)
      {
        v21 = CWFGetOTAOSLog();
      }

      else
      {
        v21 = MEMORY[0x1E69E9C10];
        v27 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [(CWFAssetSetManager *)self periodicCheckForDownloadCounts];
        v29 = [(CWFAssetSetManager *)self atomicInstanceTrackedForDownloaded];
        v48 = 136315650;
        v49 = "[CWFAssetSetManager _periodicCheckForDownloaded]";
        v50 = 2048;
        v51 = v28;
        v52 = 2112;
        v53 = v29;
        LODWORD(v46) = 32;
        v45 = &v48;
        _os_log_send_and_compose_impl();
      }

      v30 = [(CWFAssetSetManager *)self checkAssetsWithReason:@"reason-expedite-discovery" CanBlock:1 forAtomicInstance:0];
    }

LABEL_28:

    goto LABEL_33;
  }

  v22 = CWFGetOTAOSLog();
  if (v22)
  {
    v23 = CWFGetOTAOSLog();
  }

  else
  {
    v23 = MEMORY[0x1E69E9C10];
    v31 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v48 = 136315138;
    v49 = "[CWFAssetSetManager _periodicCheckForDownloaded]";
    LODWORD(v46) = 12;
    v45 = &v48;
    _os_log_send_and_compose_impl();
  }

  [(CWFAssetSetManager *)self setPeriodicCheckForDownloadEnabled:0];
LABEL_33:
  if ([(CWFAssetSetManager *)self periodicCheckForDownloadEnabled:v45])
  {
    v32 = [(CWFAssetSetManager *)self periodicCheckForDownloadCounts];
    if (v32 < [&unk_1F5BB9AC0 count])
    {
      if (!forTestingPeriodicCheckForDownloadEnabled)
      {
        v33 = [&unk_1F5BB9AC0 objectAtIndex:{-[CWFAssetSetManager periodicCheckForDownloadCounts](self, "periodicCheckForDownloadCounts")}];
        forTestingPeriodicityForDownloadInSecs = 3600 * [v33 longLongValue];
      }

      v34 = dispatch_time(0, 1000000000 * forTestingPeriodicityForDownloadInSecs);
      eventQueue = self->_eventQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1E0BF7B78;
      block[3] = &unk_1E86E6010;
      block[4] = self;
      dispatch_after(v34, eventQueue, block);
      [(CWFAssetSetManager *)self setPeriodicCheckForDownloadCounts:[(CWFAssetSetManager *)self periodicCheckForDownloadCounts]+ 1];
      v36 = CWFGetOTAOSLog();
      if (v36)
      {
        v37 = CWFGetOTAOSLog();
      }

      else
      {
        v37 = MEMORY[0x1E69E9C10];
        v38 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_44;
      }

      v48 = 136315394;
      v49 = "[CWFAssetSetManager _periodicCheckForDownloaded]";
      v50 = 2048;
      v51 = forTestingPeriodicityForDownloadInSecs;
      goto LABEL_43;
    }
  }

  [(CWFAssetSetManager *)self setPeriodicCheckForDownloadEnabled:0];
  [(CWFAssetSetManager *)self setAtomicInstanceTrackedForDownloaded:0];
  [(CWFAssetSetManager *)self setPeriodicCheckForDownloadCounts:0];
LABEL_45:
  v39 = *MEMORY[0x1E69E9840];
}

- (id)checkAssetsWithReason:(id)a3 CanBlock:(BOOL)a4 forAtomicInstance:(id)a5
{
  v5 = a4;
  v38 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = a3;
  v10 = objc_alloc_init(sub_1E0BF730C());
  [v10 setAllowCheckDownloadOverCellular:1];
  [v10 setAllowCheckDownloadOnBattery:1];
  [v10 setAllowCheckDownloadOverExpensive:1];
  v11 = [(CWFAssetSetManager *)self makeAutoAssetSetWithEntry:0];
  v12 = v11;
  if (v5)
  {
    v13 = -2;
  }

  else
  {
    v13 = 0;
  }

  v30 = 0;
  v31 = 0;
  v14 = [v11 checkAtomicSync:v9 forAtomicInstance:v8 withNeedPolicy:v10 withTimeout:v13 discoveredAtomicEntries:&v31 error:&v30];

  v15 = v31;
  v16 = v30;
  v17 = v16;
  if (v16)
  {
    if ([v16 code] == 13)
    {
      v18 = CWFGetOTAOSLog();
      if (v18)
      {
        v19 = CWFGetOTAOSLog();
      }

      else
      {
        v19 = MEMORY[0x1E69E9C10];
        v24 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      v32 = 136315138;
      v33 = "[CWFAssetSetManager checkAssetsWithReason:CanBlock:forAtomicInstance:]";
    }

    else
    {
      v21 = [v17 code];
      v22 = CWFGetOTAOSLog();
      v23 = v22;
      if (v21 == 6205)
      {
        if (v22)
        {
          v19 = CWFGetOTAOSLog();
        }

        else
        {
          v19 = MEMORY[0x1E69E9C10];
          v26 = MEMORY[0x1E69E9C10];
        }

        if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v22)
        {
          v19 = CWFGetOTAOSLog();
        }

        else
        {
          v19 = MEMORY[0x1E69E9C10];
          v29 = MEMORY[0x1E69E9C10];
        }

        if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_26;
        }
      }

      v32 = 136315394;
      v33 = "[CWFAssetSetManager checkAssetsWithReason:CanBlock:forAtomicInstance:]";
      v34 = 2112;
      v35 = v17;
    }

    goto LABEL_25;
  }

  if (!v15)
  {
    goto LABEL_27;
  }

  v20 = CWFGetOTAOSLog();
  if (v20)
  {
    v19 = CWFGetOTAOSLog();
  }

  else
  {
    v19 = MEMORY[0x1E69E9C10];
    v25 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v32 = 136315650;
    v33 = "[CWFAssetSetManager checkAssetsWithReason:CanBlock:forAtomicInstance:]";
    v34 = 2112;
    v35 = v14;
    v36 = 2112;
    v37 = v15;
LABEL_25:
    _os_log_send_and_compose_impl();
  }

LABEL_26:

LABEL_27:
  v27 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)_configureIntervalForTestingForPeriodicCheckForDownload
{
  v25 = *MEMORY[0x1E69E9840];
  self->_forTestingPeriodicCheckForDownloadEnabled = 0;
  self->_forTestingPeriodicityForDownloadInSecs = -1;
  if (os_variant_has_internal_content())
  {
    v3 = CWFGetOTAOSLog();
    if (v3)
    {
      v4 = CWFGetOTAOSLog();
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      _os_log_send_and_compose_impl();
    }

    v6 = [MEMORY[0x1E695E000] standardUserDefaults];
    v7 = [v6 objectForKey:@"OTAPeriodicCheckForDownloadEnabled"];

    if (v7)
    {
      self->_forTestingPeriodicCheckForDownloadEnabled = [v6 BOOLForKey:@"OTAPeriodicCheckForDownloadEnabled"];
      v8 = CWFGetOTAOSLog();
      if (v8)
      {
        v9 = CWFGetOTAOSLog();
      }

      else
      {
        v9 = MEMORY[0x1E69E9C10];
        v10 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        self->_forTestingPeriodicCheckForDownloadEnabled;
        _os_log_send_and_compose_impl();
      }
    }

    if (self->_forTestingPeriodicCheckForDownloadEnabled)
    {
      v11 = [v6 objectForKey:@"OTAPeriodicCheckForDownloadIntervalInSecs"];

      if (v11)
      {
        self->_forTestingPeriodicityForDownloadInSecs = [v6 integerForKey:@"OTAPeriodicCheckForDownloadIntervalInSecs"];
        v12 = CWFGetOTAOSLog();
        if (v12)
        {
          v13 = CWFGetOTAOSLog();
        }

        else
        {
          v13 = MEMORY[0x1E69E9C10];
          v14 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          forTestingPeriodicityForDownloadInSecs = self->_forTestingPeriodicityForDownloadInSecs;
          _os_log_send_and_compose_impl();
        }

        v15 = self->_forTestingPeriodicityForDownloadInSecs;
        if (v15 < 60)
        {
          v16 = 60;
LABEL_24:
          self->_forTestingPeriodicityForDownloadInSecs = v16;
          goto LABEL_25;
        }

        v16 = 604800;
        if (v15 > 0x93A80)
        {
          goto LABEL_24;
        }
      }
    }

LABEL_25:
    if (self->_forTestingPeriodicCheckForDownloadEnabled && self->_forTestingPeriodicityForDownloadInSecs >= 1)
    {
      v17 = CWFGetOTAOSLog();
      if (v17)
      {
        v18 = CWFGetOTAOSLog();
      }

      else
      {
        v18 = MEMORY[0x1E69E9C10];
        v21 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_38;
      }

      v24 = self->_forTestingPeriodicityForDownloadInSecs;
    }

    else
    {
      v19 = CWFGetOTAOSLog();
      if (v19)
      {
        v18 = CWFGetOTAOSLog();
      }

      else
      {
        v18 = MEMORY[0x1E69E9C10];
        v20 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_38;
      }
    }

    _os_log_send_and_compose_impl();
LABEL_38:
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)_handleAssetDiscoveredNotification
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = CWFGetOTAOSLog();
  if (v3)
  {
    v4 = CWFGetOTAOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315138;
    v15 = "[CWFAssetSetManager _handleAssetDiscoveredNotification]";
    LODWORD(v12) = 12;
    v11 = &v14;
    _os_log_send_and_compose_impl();
  }

  if (![(CWFAssetSetManager *)self periodicCheckForDownloadEnabled])
  {
    [(CWFAssetSetManager *)self _configureIntervalForTestingForPeriodicCheckForDownload];
    [(CWFAssetSetManager *)self setPeriodicCheckForDownloadEnabled:1];
    v6 = dispatch_time(0, 60000000000);
    eventQueue = self->_eventQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0BF8544;
    block[3] = &unk_1E86E6010;
    block[4] = self;
    dispatch_after(v6, eventQueue, block);
  }

  v8 = [(CWFAssetSetManager *)self assetDiscoveredHandler:v11];

  if (v8)
  {
    v9 = [(CWFAssetSetManager *)self assetDiscoveredHandler];
    v9[2]();
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_handleAssetDownloadedNotification
{
  [(CWFAssetSetManager *)self lockAndHandOffCanBlock:1 forcedFetch:0];
  v3 = [(CWFAssetSetManager *)self assetDownloadedHandler];

  if (v3)
  {
    v4 = [(CWFAssetSetManager *)self assetDownloadedHandler];
    v4[2]();
  }
}

- (id)makeAutoAssetWithSelector:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2050000000;
    v6 = qword_1ECE86940;
    v23 = qword_1ECE86940;
    if (!qword_1ECE86940)
    {
      *v24 = MEMORY[0x1E69E9820];
      *&v24[8] = 3221225472;
      *&v24[16] = sub_1E0BFA8EC;
      v25 = &unk_1E86E5600;
      v26 = &v20;
      sub_1E0BFA6B8();
      Class = objc_getClass("MAAutoAssetSelector");
      *(v26[1] + 24) = Class;
      qword_1ECE86940 = *(v26[1] + 24);
      v6 = v21[3];
    }

    v8 = v6;
    _Block_object_dispose(&v20, 8);
    v9 = [v6 alloc];
    v10 = [(CWFAssetSetManager *)self assetSpecifier];
    v5 = [v9 initForAssetType:@"com.apple.MobileAsset.CoreWiFi" withAssetSpecifier:v10];
  }

  v19 = 0;
  v11 = [objc_alloc(sub_1E0BF3F68()) initForClientName:@"CoreWiFiAssetMAClient" selectingAsset:v5 error:&v19];
  v12 = v19;
  if (v12 || !v11)
  {
    v14 = CWFGetOTAOSLog();
    if (v14)
    {
      v15 = CWFGetOTAOSLog();
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v24 = 136315650;
      *&v24[4] = "[CWFAssetSetManager makeAutoAssetWithSelector:]";
      *&v24[12] = 2112;
      *&v24[14] = v4;
      *&v24[22] = 2112;
      v25 = v12;
      _os_log_send_and_compose_impl();
    }

    v13 = 0;
  }

  else
  {
    v13 = v11;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)unlockAssetWithReason:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = CWFGetOTAOSLog();
  if (v5)
  {
    v6 = CWFGetOTAOSLog();
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  v8 = [(CWFAssetSetManager *)self currentLockedAutoAsset];

  if (v8)
  {
    v9 = [(CWFAssetSetManager *)self currentLockedAutoAsset];
    v10 = [v9 endLockUsageSync:v4];

    v11 = CWFGetOTAOSLog();
    v12 = v11;
    if (v10)
    {
      if (v11)
      {
        v13 = CWFGetOTAOSLog();
      }

      else
      {
        v13 = MEMORY[0x1E69E9C10];
        v16 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        _os_log_send_and_compose_impl();
      }
    }

    else
    {
      if (v11)
      {
        v15 = CWFGetOTAOSLog();
      }

      else
      {
        v15 = MEMORY[0x1E69E9C10];
        v18 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        _os_log_send_and_compose_impl();
      }

      [(CWFAssetSetManager *)self setCurrentLockedAutoAssetSelector:0];
      [(CWFAssetSetManager *)self setCurrentLockedAutoAsset:0];
      v10 = 0;
    }
  }

  else
  {
    v14 = CWFGetOTAOSLog();
    if (v14)
    {
      v10 = CWFGetOTAOSLog();
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v17 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      _os_log_send_and_compose_impl();
    }
  }

  v19 = CWFGetOTAOSLog();
  if (v19)
  {
    v20 = CWFGetOTAOSLog();
  }

  else
  {
    v20 = MEMORY[0x1E69E9C10];
    v21 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (id)makeAutoAssetSetWithEntry:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4 || (v6 = v4, ![v4 count]))
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2050000000;
    v7 = qword_1ECE86950;
    v26 = qword_1ECE86950;
    if (!qword_1ECE86950)
    {
      *v27 = MEMORY[0x1E69E9820];
      *&v27[8] = 3221225472;
      *&v27[16] = sub_1E0BFA98C;
      v28 = &unk_1E86E5600;
      v29 = &v23;
      sub_1E0BFA6B8();
      Class = objc_getClass("MAAutoAssetSetEntry");
      *(v29[1] + 24) = Class;
      qword_1ECE86950 = *(v29[1] + 24);
      v7 = v24[3];
    }

    v9 = v7;
    _Block_object_dispose(&v23, 8);
    v10 = [v7 alloc];
    v11 = [(CWFAssetSetManager *)self assetSpecifier];
    v12 = [v10 initForAssetType:@"com.apple.MobileAsset.CoreWiFi" withAssetSpecifier:v11];

    v6 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v12, 0}];
  }

  v22 = 0;
  v13 = [objc_alloc(sub_1E0BF406C()) initUsingClientDomain:@"com.apple.CoreWiFi" forClientName:@"CoreWiFiAssetMAClient" forAssetSetIdentifier:@"WiFi_SetOfPowerTables" comprisedOfEntries:v6 error:&v22];
  v14 = v22;
  v15 = [v13 alterEntriesRepresentingAtomicSync:@"reason-define-asset-set" toBeComprisedOfEntries:v6];
  if (v14 || !v13)
  {
    v17 = CWFGetOTAOSLog();
    if (v17)
    {
      v18 = CWFGetOTAOSLog();
    }

    else
    {
      v18 = MEMORY[0x1E69E9C10];
      v19 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *v27 = 136315650;
      *&v27[4] = "[CWFAssetSetManager makeAutoAssetSetWithEntry:]";
      *&v27[12] = 2112;
      *&v27[14] = v6;
      *&v27[22] = 2112;
      v28 = v14;
      _os_log_send_and_compose_impl();
    }

    v16 = 0;
  }

  else
  {
    v16 = v13;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v16;
}

@end