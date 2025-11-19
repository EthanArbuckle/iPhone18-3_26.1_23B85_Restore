@interface UARPHIDUpdater
+ (id)sharedInstance;
- (BOOL)_queryProperties:(id)a3 accessoryID:(id)a4 goldrestoreQuery:(BOOL)a5;
- (BOOL)applyStagedFirmwareForAccessories:(id)a3;
- (BOOL)queryProperties:(id)a3 accessoryID:(id)a4 goldrestoreQuery:(BOOL)a5;
- (BOOL)registerHIDCallbacksForUARPHIDAccessory:(id)a3;
- (BOOL)registerHIDForAccessory:(id)a3;
- (BOOL)rescindStagedFirmwareForAccessories:(id)a3;
- (BOOL)sendHIDReportToAccessory:(id)a3 forUARPMessage:(id)a4 error:(id *)a5;
- (BOOL)sendMessageToAccessory:(id)a3 uarpMsg:(id)a4 error:(id *)a5;
- (BOOL)unRegisterHIDCallbacksForUARPHIDAccessory:(id)a3;
- (NSString)uarpCaptureFileName;
- (UARPHIDUpdater)init;
- (id)copyManagedPrefsValueForKey:(id)a3;
- (id)createAndSaveUARPHIDAccessoryFromService:(unsigned int)a3 identifier:(id)a4;
- (id)createUARPAccessoryFromAccessoryID:(id)a3;
- (id)createUARPAssetIDForAccessoryID:(id)a3;
- (id)getAccessoriesForIdentifier:(id)a3;
- (id)getAccessoryForIORegEntryID:(unint64_t)a3 identifier:(id)a4;
- (id)getContainerIDFromCFPrefsForAccessory:(id)a3;
- (id)getUARPHIDAccessoryForUARPAccessory:(id)a3;
- (id)getUARPHIDAccessoryForUARPAccessoryID:(id)a3;
- (id)matchingDictionaryForIdentifier:(id)a3;
- (id)matchingDictionaryForIdentifier:(id)a3 hardwareID:(UARPHIDHardwareID *)a4;
- (id)matchingDictionaryForVendorID:(id)a3 productID:(id)a4;
- (id)pendingTatsuRequests;
- (id)uuidForAccessoryID:(id)a3;
- (unsigned)getReportSizeForReportUsage:(unsigned int)a3 forAccessory:(id)a4;
- (void)_accessoryTransportNeeded:(id)a3 isNeeded:(BOOL)a4;
- (void)_assetAvailablityUpdateForAccessoryID:(id)a3 assetID:(id)a4;
- (void)_assetSolicitationComplete:(id)a3 assetID:(id)a4 withStatus:(unint64_t)a5;
- (void)_assetSolicitationProgress:(id)a3 assetID:(id)a4 bytesReceived:(unint64_t)a5 bytesTotal:(unint64_t)a6;
- (void)_firmwareStagingComplete:(id)a3 assetID:(id)a4 withStatus:(unint64_t)a5;
- (void)_firmwareStagingProgress:(id)a3 assetID:(id)a4 bytesSent:(unint64_t)a5 bytesTotal:(unint64_t)a6;
- (void)_queryCompleteForAccessory:(id)a3 appleModelNumber:(id)a4 error:(id)a5;
- (void)_queryCompleteForAccessory:(id)a3 firmwareVersion:(id)a4 error:(id)a5;
- (void)_queryCompleteForAccessory:(id)a3 friendlyName:(id)a4 error:(id)a5;
- (void)_queryCompleteForAccessory:(id)a3 hardwareVersion:(id)a4 error:(id)a5;
- (void)_queryCompleteForAccessory:(id)a3 hwFusingType:(id)a4 error:(id)a5;
- (void)_queryCompleteForAccessory:(id)a3 manufacturer:(id)a4 error:(id)a5;
- (void)_queryCompleteForAccessory:(id)a3 modelName:(id)a4 error:(id)a5;
- (void)_queryCompleteForAccessory:(id)a3 serialNumber:(id)a4 error:(id)a5;
- (void)_queryCompleteForAccessory:(id)a3 stagedFirmwareVersion:(id)a4 error:(id)a5;
- (void)_queryCompleteForAccessory:(id)a3 stats:(id)a4 error:(id)a5;
- (void)_queryCompleteForAccessoryID:(id)a3 appleModelNumber:(id)a4 error:(id)a5;
- (void)_queryCompleteForAccessoryID:(id)a3 friendlyName:(id)a4 error:(id)a5;
- (void)_queryCompleteForAccessoryID:(id)a3 hwFusingType:(id)a4 error:(id)a5;
- (void)_solicitDynamicAssetForAccessory:(id)a3 assetID:(id)a4;
- (void)_solicitDynamicAssetMTICForAccessory:(id)a3;
- (void)_solicitDynamicAssetTICSForAccessory:(id)a3;
- (void)_stagedFirmwareApplicationComplete:(id)a3 withStatus:(unint64_t)a4;
- (void)_stagedFirmwareRescindComplete:(id)a3 withStatus:(unint64_t)a4;
- (void)_startUpdateForAccessories:(id)a3 assetID:(id)a4;
- (void)accessoryTransportNeeded:(id)a3 isNeeded:(BOOL)a4;
- (void)allocateController;
- (void)applyStagedAssets:(id)a3;
- (void)assetAvailablityUpdateForAccessoryID:(id)a3 assetID:(id)a4;
- (void)assetCheckForProductGroup:(id)a3 productNumber:(id)a4 assetID:(id)a5 options:(unsigned int)a6;
- (void)assetDownloadFailed:(id)a3 assetID:(id)a4;
- (void)assetNotFound:(id)a3 assetID:(id)a4;
- (void)assetOnAssetServer:(id)a3 assetID:(id)a4;
- (void)assetOnDropbox:(id)a3 assetID:(id)a4;
- (void)assetOnLocalStorage:(id)a3 assetID:(id)a4;
- (void)assetSolicitationComplete:(id)a3 assetID:(id)a4 withStatus:(unint64_t)a5;
- (void)assetSolicitationProgress:(id)a3 assetID:(id)a4 bytesReceived:(unint64_t)a5 bytesTotal:(unint64_t)a6;
- (void)assetStagingPause:(id)a3;
- (void)assetStagingResume:(id)a3;
- (void)firmwareStagingComplete:(id)a3 assetID:(id)a4 withStatus:(unint64_t)a5;
- (void)firmwareStagingProgress:(id)a3 assetID:(id)a4 bytesSent:(unint64_t)a5 bytesTotal:(unint64_t)a6;
- (void)handleHIDDisconnectForAccessory:(id)a3;
- (void)parseInputReport:(id)a3 forAccessory:(id)a4;
- (void)processUARPMessage:(id)a3 fromAccessory:(id)a4;
- (void)qHoldPowerAssertionForAccessory:(id)a3;
- (void)qPostStagingStatusNotificationForAccessory:(id)a3 status:(unint64_t)a4;
- (void)qReleasePowerAssertionForAccessory:(id)a3;
- (void)queryCompleteForAccessory:(id)a3 appleModelNumber:(id)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 boardID:(unint64_t)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 chipID:(unint64_t)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 chipRevision:(unint64_t)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 ecid:(unint64_t)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 enableMixMatch:(BOOL)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 epoch:(unint64_t)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 firmwareVersion:(id)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 friendlyName:(id)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 hardwareVersion:(id)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 hwFusingType:(id)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 liveNonce:(BOOL)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 manifestPrefix:(id)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 manufacturer:(id)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 modelName:(id)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 nonceHash:(id)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 nonceSeed:(id)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 prefixNeedsLUN:(BOOL)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 productionMode:(unint64_t)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 securityDomain:(unint64_t)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 securityMode:(unint64_t)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 serialNumber:(id)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 stagedFirmwareVersion:(id)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 stats:(id)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 suffixNeedsLUN:(BOOL)a4 error:(id)a5;
- (void)queryCompleteForAccessoryID:(id)a3 appleModelNumber:(id)a4 error:(id)a5;
- (void)queryCompleteForAccessoryID:(id)a3 friendlyName:(id)a4 error:(id)a5;
- (void)queryCompleteForAccessoryID:(id)a3 hwFusingType:(id)a4 error:(id)a5;
- (void)queryFailedForAccessory:(id)a3 property:(unint64_t)a4 error:(int64_t)a5;
- (void)queryPropertiesForUARPHIDAccessory:(id)a3 completionCallback:(id)a4;
- (void)removeAccessoryID:(id)a3;
- (void)runHIDRegistrationThread:(id)a3;
- (void)scheduleHIDDeviceForAccessory:(id)a3;
- (void)setUarpCaptureFileName:(id)a3;
- (void)solicitDynamicAssetForAccessories:(id)a3 assetID:(id)a4;
- (void)stagedFirmwareApplicationComplete:(id)a3 withStatus:(unint64_t)a4;
- (void)stagedFirmwareRescindComplete:(id)a3 withStatus:(unint64_t)a4;
- (void)startTapToRadar:(id)a3;
- (void)startUpdateForAccessories:(id)a3 assetID:(id)a4;
- (void)stopHIDRegistrationThread;
- (void)stopPacketCapture;
- (void)stopTapToRadar;
- (void)tssResponse:(id)a3;
- (void)unScheduleHIDDeviceForAccessory:(id)a3;
- (void)unsolicitedDynamicAssetForAccessories:(id)a3 assetTag:(id)a4;
@end

@implementation UARPHIDUpdater

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001864;
  block[3] = &unk_10002C520;
  block[4] = a1;
  if (qword_100032F88 != -1)
  {
    dispatch_once(&qword_100032F88, block);
  }

  v2 = qword_100032F80;

  return v2;
}

- (UARPHIDUpdater)init
{
  v18.receiver = self;
  v18.super_class = UARPHIDUpdater;
  v2 = [(UARPHIDUpdater *)&v18 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableSet);
    uarpHIDAccessories = v2->_uarpHIDAccessories;
    v2->_uarpHIDAccessories = v3;

    v5 = dispatch_queue_create("com.apple.accessoryupdater.uarpOverHID.queue", 0);
    uarpHIDQueue = v2->_uarpHIDQueue;
    v2->_uarpHIDQueue = v5;

    v7 = dispatch_queue_create("com.apple.accessoryupdater.uarpOverHID.delegate_queue", 0);
    delegateQueue = v2->_delegateQueue;
    v2->_delegateQueue = v7;

    v9 = os_log_create("com.apple.accessoryupdater.uarp", "hidUpdater");
    log = v2->_log;
    v2->_log = v9;

    v11 = dispatch_semaphore_create(0);
    uarpHIDRegistrationThreadSemaphore = v2->_uarpHIDRegistrationThreadSemaphore;
    v2->_uarpHIDRegistrationThreadSemaphore = v11;

    v13 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.UARPHIDUpdater.database"];
    database = v2->_database;
    v2->_database = v13;

    v2->_sessionID = 1;
    v2->_unregisterOnComplete = 1;
    v2->_powerAssertionID = 0;
    v2->_powerAssertionRefCount = 0;
    v15 = objc_alloc_init(NSMutableDictionary);
    stagingStatusNotificationTokens = v2->_stagingStatusNotificationTokens;
    v2->_stagingStatusNotificationTokens = v15;
  }

  return v2;
}

- (id)getAccessoriesForIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v6 = [UARPSupportedAccessory supportedAccessoriesByTransport:1];
  uarpHIDQueue = self->_uarpHIDQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100001AD0;
  v14[3] = &unk_10002C548;
  v15 = v6;
  v16 = v4;
  v17 = self;
  v8 = v5;
  v18 = v8;
  v9 = v4;
  v10 = v6;
  dispatch_sync(uarpHIDQueue, v14);
  v11 = v18;
  v12 = v8;

  return v8;
}

- (id)getAccessoryForIORegEntryID:(unint64_t)a3 identifier:(id)a4
{
  v6 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100001F70;
  v23 = sub_100001F80;
  v24 = 0;
  uarpHIDQueue = self->_uarpHIDQueue;
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_100001F88;
  v14 = &unk_10002C570;
  v17 = &v19;
  v18 = a3;
  v15 = self;
  v8 = v6;
  v16 = v8;
  dispatch_sync(uarpHIDQueue, &v11);
  v9 = [v20[5] uarpAccessoryID];

  _Block_object_dispose(&v19, 8);

  return v9;
}

- (void)setUarpCaptureFileName:(id)a3
{
  v4 = a3;
  uarpHIDQueue = self->_uarpHIDQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000209C;
  v7[3] = &unk_10002C598;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(uarpHIDQueue, v7);
}

- (NSString)uarpCaptureFileName
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100001F70;
  v10 = sub_100001F80;
  v11 = 0;
  uarpHIDQueue = self->_uarpHIDQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100002200;
  v5[3] = &unk_10002C5C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(uarpHIDQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)allocateController
{
  if (!self->_uarpController)
  {
    v3 = objc_alloc_init(UARPController);
    uarpController = self->_uarpController;
    self->_uarpController = v3;

    [(UARPController *)self->_uarpController setDelegate:self];
    [(UARPController *)self->_uarpController setChipInfoDelegate:self];
    if (self->_uarpCaptureFileName)
    {
      [(UARPController *)self->_uarpController startPacketCapture:?];
    }

    v5 = +[UARPHIDUpdaterPreferences sharedPrefs];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 powerLogStagingWindowSecondsOverride];
      if (v7)
      {
        v8 = v7;
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
        {
          v10[0] = 67109120;
          v10[1] = v8;
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Overriding power log staging update interval to %u s", v10, 8u);
        }

        [(UARPController *)self->_uarpController setPowerLogStagingWindowPeriodSeconds:v8];
      }
    }
  }
}

- (void)startUpdateForAccessories:(id)a3 assetID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v17[0] = 0;
        v17[1] = v17;
        v17[2] = 0x3032000000;
        v17[3] = sub_100001F70;
        v17[4] = sub_100001F80;
        v18 = 0;
        uarpHIDQueue = self->_uarpHIDQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100002514;
        block[3] = &unk_10002C610;
        v16 = v17;
        block[4] = self;
        block[5] = v12;
        v15 = v7;
        dispatch_sync(uarpHIDQueue, block);

        _Block_object_dispose(v17, 8);
      }

      v9 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }
}

- (void)qPostStagingStatusNotificationForAccessory:(id)a3 status:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 getID];
  v8 = [v7 modelIdentifier];

  v9 = [UARPSupportedAccessory findByAppleModelNumber:v8];
  if ([v9 postStagingNotifications])
  {
    stagingStatusNotificationTokens = self->_stagingStatusNotificationTokens;
    v11 = [v6 getID];
    v12 = [(NSMutableDictionary *)stagingStatusNotificationTokens objectForKeyedSubscript:v11];

    if (v12)
    {
      notify_cancel([v12 intValue]);
      v13 = self->_stagingStatusNotificationTokens;
      v14 = [v6 getID];
      [(NSMutableDictionary *)v13 removeObjectForKey:v14];
    }

    v15 = postStagingStatusForModelIdentifier();
    if (v15 == -1)
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_10001D564();
      }
    }

    else if (a4)
    {
      v16 = [NSNumber numberWithInt:v15];
      v17 = self->_stagingStatusNotificationTokens;
      v18 = [v6 getID];
      [(NSMutableDictionary *)v17 setObject:v16 forKeyedSubscript:v18];
    }

    else
    {
      notify_cancel(v15);
    }
  }
}

- (void)qHoldPowerAssertionForAccessory:(id)a3
{
  v4 = a3;
  v5 = [v4 modelNumber];
  v6 = [UARPSupportedAccessory findByAppleModelNumber:v5];

  if ([v6 updateRequiresPowerAssertion])
  {
    if (self->_powerAssertionID)
    {
      ++self->_powerAssertionRefCount;
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
      {
        powerAssertionRefCount = self->_powerAssertionRefCount;
        *buf = 138412546;
        v12 = v4;
        v13 = 1024;
        v14 = powerAssertionRefCount;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Already holding power assertion for %@ refCount=%u", buf, 0x12u);
      }
    }

    else
    {
      *buf = 0;
      v9 = [v6 hardwareID];
      [v9 transport];
      v10 = [NSString stringWithFormat:@"com.apple.UARPPowerAssertion-%s", UARPAccessoryTransportToString()];

      if (createPowerAssertion())
      {
        self->_powerAssertionID = *buf;
        ++self->_powerAssertionRefCount;
      }

      else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_10001D5CC();
      }
    }
  }
}

- (void)qReleasePowerAssertionForAccessory:(id)a3
{
  v4 = a3;
  v5 = [v4 modelNumber];
  v6 = [UARPSupportedAccessory findByAppleModelNumber:v5];

  if ([v6 updateRequiresPowerAssertion])
  {
    if (self->_powerAssertionID)
    {
      if (self->_powerAssertionRefCount)
      {
        powerAssertionRefCount = self->_powerAssertionRefCount - 1;
        self->_powerAssertionRefCount = powerAssertionRefCount;
      }

      else
      {
        if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
        {
          sub_10001D634();
        }

        powerAssertionRefCount = self->_powerAssertionRefCount;
      }

      if (!powerAssertionRefCount)
      {
        powerAssertionID = self->_powerAssertionID;
        v9 = releasePowerAssertion();
        self->_powerAssertionID = 0;
        if ((v9 & 1) == 0 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
        {
          sub_10001D69C();
        }
      }
    }

    else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10001D704();
    }
  }
}

- (void)_startUpdateForAccessories:(id)a3 assetID:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(UARPHIDUpdater *)self allocateController];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v33 objects:v41 count:16];
  v32 = v7;
  if (v9)
  {
    v10 = v9;
    v11 = *v34;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v33 + 1) + 8 * i);
        v14 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessoryID:v13];
        if (!v14)
        {
          log = self->_log;
          if (!os_log_type_enabled(log, OS_LOG_TYPE_INFO))
          {
            goto LABEL_21;
          }

          *buf = 136315394;
          v38 = "[UARPHIDUpdater _startUpdateForAccessories:assetID:]";
          v39 = 2112;
          v40 = v13;
          v29 = log;
          v30 = "%s: Unknown UARPAccessoryID %@, dropping it";
LABEL_18:
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, v30, buf, 0x16u);
          goto LABEL_21;
        }

        if (![(UARPHIDUpdater *)self registerHIDCallbacksForUARPHIDAccessory:v14])
        {
          v31 = self->_log;
          if (!os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            goto LABEL_21;
          }

          *buf = 136315394;
          v38 = "[UARPHIDUpdater _startUpdateForAccessories:assetID:]";
          v39 = 2112;
          v40 = v14;
          v29 = v31;
          v30 = "%s: Failed to register for HID Callbacks for %@, dropping it";
          goto LABEL_18;
        }

        v15 = [v14 uarpAccessory];

        if (!v15)
        {
          v16 = [v14 uarpAccessoryID];
          v17 = [(UARPHIDUpdater *)self createUARPAccessoryFromAccessoryID:v16];
          [v14 setUarpAccessory:v17];

          v18 = [v14 uarpAccessory];
          [v18 setDownloadOnCellularAllowed:0];

          v19 = [v14 uarpAccessory];
          [v19 setAutoDownloadAllowed:0];

          v20 = [v14 uarpAccessory];
          [v20 setTransport:1];

          v21 = [v13 capability];
          v22 = [v14 uarpAccessory];
          [v22 setCapability:v21];
        }

        [v14 setUpdateInProgress:1];
        v23 = +[NSDate distantPast];
        [v14 setLastReportedStagingTime:v23];

        v24 = [v14 uarpAccessory];
        [(UARPHIDUpdater *)self qHoldPowerAssertionForAccessory:v24];

        if (!v7)
        {
          v7 = [(UARPHIDUpdater *)self createUARPAssetIDForAccessoryID:v14];
        }

        v25 = [v7 isDynamicAsset];
        uarpController = self->_uarpController;
        v27 = [v14 uarpAccessory];
        if (v25)
        {
          [(UARPController *)uarpController dynamicAssetAvailableForAccessory:v27 assetID:v7 error:0];
        }

        else
        {
          [(UARPController *)uarpController changeAssetLocation:v27 assetID:v7];
        }

LABEL_21:
      }

      v10 = [v8 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v10);
  }
}

- (id)getContainerIDFromCFPrefsForAccessory:(id)a3
{
  v4 = a3;
  v5 = [v4 vendorID];
  v6 = [v5 unsignedIntegerValue];
  v7 = [v4 productID];

  v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"vid0x%04lXpid0x%04lX", v6, [v7 unsignedIntegerValue]);

  v9 = CFPreferencesCopyAppValue(v8, @"com.apple.UARPUpdaterServiceHID");
  if (!v9)
  {
    v10 = [(UARPHIDUpdater *)self copyManagedPrefsValueForKey:v8];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v15 = "[UARPHIDUpdater getContainerIDFromCFPrefsForAccessory:]";
        v16 = 2112;
        v17 = v8;
        v18 = 2112;
        v19 = v10;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%s: ContainerID found in managed prefs for %@: %@", buf, 0x20u);
      }

      v9 = v10;
    }

    else
    {
      v9 = 0;
    }
  }

  v12 = self->_log;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v15 = "[UARPHIDUpdater getContainerIDFromCFPrefsForAccessory:]";
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s: ContainerID override found for %@: %@", buf, 0x20u);
  }

  return v9;
}

- (id)copyManagedPrefsValueForKey:(id)a3
{
  v4 = a3;
  v5 = [NSURL fileURLWithPath:@"/Library/Managed Preferences/mobile/com.apple.UARPUpdaterServiceHID.plist"];
  v6 = 0;
  if ([v5 checkResourceIsReachableAndReturnError:0])
  {
    v11 = 0;
    v7 = [[NSDictionary alloc] initWithContentsOfURL:v5 error:&v11];
    v8 = v11;
    if (v7)
    {
      v9 = [v7 objectForKeyedSubscript:v4];
      v6 = [v9 copy];
    }

    else
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_10001D76C();
      }

      v6 = 0;
    }
  }

  return v6;
}

- (id)createUARPAssetIDForAccessoryID:(id)a3
{
  v4 = a3;
  v5 = [v4 uarpAccessoryID];
  v6 = [v5 productGroup];
  if (!v6)
  {

    goto LABEL_8;
  }

  v7 = v6;
  v8 = [v4 uarpAccessoryID];
  v9 = [v8 productNumber];

  if (!v9)
  {
LABEL_8:
    v11 = 3;
    goto LABEL_13;
  }

  v10 = [(UARPHIDUpdater *)self getContainerIDFromCFPrefsForAccessory:v4];
  if (MGGetBoolAnswer())
  {
    if (v10 && ([v10 isEqualToString:@"UARPiCloudPublicContainer"] & 1) == 0)
    {
      if ([v10 isEqualToString:@"UARPiCloudStagingContainer"])
      {
        v11 = 2;
      }

      else if ([v10 isEqualToString:@"UARPiCloudPublicContainerBeta"])
      {
        v11 = 7;
      }

      else if ([v10 isEqualToString:@"UARPiCloudStagingContainerBeta"])
      {
        v11 = 8;
      }

      else if ([v10 isEqualToString:@"UARPiCloudPublicContainerUAT"])
      {
        v11 = 5;
      }

      else if ([v10 isEqualToString:@"UARPiCloudStagingContainerUAT"])
      {
        v11 = 6;
      }

      else
      {
        log = self->_log;
        v11 = 1;
        if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
        {
          v15 = 136315138;
          v16 = "[UARPHIDUpdater createUARPAssetIDForAccessoryID:]";
          v11 = 1;
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Unsupported containerID in defaults write, pointing to Production Container by default", &v15, 0xCu);
        }
      }
    }

    else
    {
      v11 = 1;
    }
  }

  else if ([v10 isEqualToString:@"UARPiCloudStagingContainer"])
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

LABEL_13:
  v12 = [[UARPAssetID alloc] initWithLocationType:v11 remoteURL:0];

  return v12;
}

- (BOOL)_queryProperties:(id)a3 accessoryID:(id)a4 goldrestoreQuery:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v38 = 136315394;
    v39 = "[UARPHIDUpdater _queryProperties:accessoryID:goldrestoreQuery:]";
    v40 = 2112;
    v41 = v8;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: properties %@", &v38, 0x16u);
  }

  [(UARPHIDUpdater *)self allocateController];
  v11 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessoryID:v9];
  if (!v11)
  {
    v21 = self->_log;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v38 = 136315394;
      v39 = "[UARPHIDUpdater _queryProperties:accessoryID:goldrestoreQuery:]";
      v40 = 2112;
      v41 = v9;
      v22 = "%s: Unknown UARPAccessoryID %@";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, v22, &v38, 0x16u);
    }

LABEL_14:
    v23 = 0;
    goto LABEL_20;
  }

  if (![(UARPHIDUpdater *)self registerHIDCallbacksForUARPHIDAccessory:v11])
  {
    v21 = self->_log;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v38 = 136315394;
      v39 = "[UARPHIDUpdater _queryProperties:accessoryID:goldrestoreQuery:]";
      v40 = 2112;
      v41 = v11;
      v22 = "%s: Failed to register for HID Callbacks for %@";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v12 = [v11 uarpAccessory];

  if (!v12)
  {
    v13 = [v9 productGroup];
    if (v13 && (v14 = v13, [v9 productNumber], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v15))
    {
      v16 = [UARPAccessory alloc];
      v17 = [v9 productGroup];
      v18 = [v9 productNumber];
      v19 = +[NSUUID UUID];
      v20 = [v16 initWithProductGroup:v17 productNumber:v18 uuid:v19];
      [v11 setUarpAccessory:v20];
    }

    else
    {
      v17 = [(UARPHIDUpdater *)self createUARPAccessoryFromAccessoryID:v9];
      [v11 setUarpAccessory:v17];
    }

    v24 = [v11 uarpAccessory];
    [v24 setDownloadOnCellularAllowed:0];

    v25 = [v11 uarpAccessory];
    [v25 setAutoDownloadAllowed:0];

    v26 = [v11 uarpAccessory];
    [v26 setTransport:1];

    v27 = [v9 capability];
    v28 = [v11 uarpAccessory];
    [v28 setCapability:v27];

    v29 = [v9 suppressAutomaticDynamicAssets];
    v30 = [v11 uarpAccessory];
    [v30 setSuppressAutomaticDynamicAssets:v29];

    v31 = [v9 suppressInfoQueries];
    v32 = [v11 uarpAccessory];
    [v32 setSuppressInfoQueries:v31];

    uarpController = self->_uarpController;
    v34 = [v11 uarpAccessory];
    [(UARPController *)uarpController addAccessory:v34 assetID:0];

    v35 = self->_uarpController;
    v36 = [v11 uarpAccessory];
    [(UARPController *)v35 accessoryReachable:v36];
  }

  if (v5)
  {
    [v11 setGoldrestoreQueryInProgress:1];
  }

  [v11 proceedWithUpdate];
  v23 = 1;
LABEL_20:

  return v23;
}

- (BOOL)queryProperties:(id)a3 accessoryID:(id)a4 goldrestoreQuery:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  uarpHIDQueue = self->_uarpHIDQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000395C;
  block[3] = &unk_10002C638;
  block[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = &v19;
  v18 = a5;
  v11 = v9;
  v12 = v8;
  dispatch_sync(uarpHIDQueue, block);
  LOBYTE(uarpHIDQueue) = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  return uarpHIDQueue;
}

- (void)queryFailedForAccessory:(id)a3 property:(unint64_t)a4 error:(int64_t)a5
{
  v11 = a3;
  v8 = [NSError errorWithDomain:kUARPErrorDomain code:a5 userInfo:0];
  if (a4 <= 4)
  {
    if (a4 <= 1)
    {
      if (a4)
      {
        if (a4 != 1)
        {
          goto LABEL_25;
        }

        v9 = [v11 uarpAccessory];
        [(UARPHIDUpdater *)self _queryCompleteForAccessory:v9 modelName:0 error:v8];
      }

      else
      {
        v9 = [v11 uarpAccessory];
        [(UARPHIDUpdater *)self _queryCompleteForAccessory:v9 manufacturer:0 error:v8];
      }
    }

    else if (a4 == 2)
    {
      v9 = [v11 uarpAccessory];
      [(UARPHIDUpdater *)self _queryCompleteForAccessory:v9 serialNumber:0 error:v8];
    }

    else
    {
      [v11 uarpAccessory];
      if (a4 == 3)
        v9 = {;
        [(UARPHIDUpdater *)self _queryCompleteForAccessory:v9 hardwareVersion:0 error:v8];
      }

      else
        v9 = {;
        [(UARPHIDUpdater *)self _queryCompleteForAccessory:v9 firmwareVersion:0 error:v8];
      }
    }

    goto LABEL_24;
  }

  if (a4 <= 10)
  {
    if (a4 == 5)
    {
      v9 = [v11 uarpAccessory];
      [(UARPHIDUpdater *)self _queryCompleteForAccessory:v9 stagedFirmwareVersion:0 error:v8];
    }

    else
    {
      if (a4 != 6)
      {
        goto LABEL_25;
      }

      v9 = [v11 uarpAccessory];
      [(UARPHIDUpdater *)self _queryCompleteForAccessory:v9 stats:0 error:v8];
    }

    goto LABEL_24;
  }

  switch(a4)
  {
    case 0xBuLL:
      v9 = [v11 uarpAccessory];
      [(UARPHIDUpdater *)self _queryCompleteForAccessory:v9 appleModelNumber:0 error:v8];
LABEL_24:

      break;
    case 0xCuLL:
      v10 = [v11 uarpAccessory];
      [(UARPHIDUpdater *)self _queryCompleteForAccessory:v10 hwFusingType:0 error:v8];

      goto LABEL_23;
    case 0xDuLL:
LABEL_23:
      v9 = [v11 uarpAccessory];
      [(UARPHIDUpdater *)self _queryCompleteForAccessory:v9 friendlyName:0 error:v8];
      goto LABEL_24;
  }

LABEL_25:
}

- (BOOL)applyStagedFirmwareForAccessories:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  uarpHIDQueue = self->_uarpHIDQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003CDC;
  block[3] = &unk_10002C660;
  block[4] = self;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_sync(uarpHIDQueue, block);
  LOBYTE(uarpHIDQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return uarpHIDQueue;
}

- (BOOL)rescindStagedFirmwareForAccessories:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  uarpHIDQueue = self->_uarpHIDQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000040D4;
  block[3] = &unk_10002C660;
  block[4] = self;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_sync(uarpHIDQueue, block);
  LOBYTE(uarpHIDQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return uarpHIDQueue;
}

- (void)assetCheckForProductGroup:(id)a3 productNumber:(id)a4 assetID:(id)a5 options:(unsigned int)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  uarpHIDQueue = self->_uarpHIDQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000044F4;
  block[3] = &unk_10002C688;
  v21 = a6;
  block[4] = self;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_sync(uarpHIDQueue, block);
}

- (void)unsolicitedDynamicAssetForAccessories:(id)a3 assetTag:(id)a4
{
  v6 = a3;
  v7 = a4;
  uarpHIDQueue = self->_uarpHIDQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000046D4;
  block[3] = &unk_10002C6B0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(uarpHIDQueue, block);
}

- (void)_solicitDynamicAssetTICSForAccessory:(id)a3
{
  v4 = a3;
  v5 = [v4 modelNumber];
  v6 = [UARPSupportedAccessory findByAppleModelNumber:v5];

  v7 = [v6 supportsAnalytics];
  log = self->_log;
  v9 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (v9)
    {
      v14 = 138412290;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Solicit TICS for HID <%@>", &v14, 0xCu);
    }

    v10 = uarpAssetTagStructAnalytics();
    v11 = [[UARPAssetTag alloc] initWithChar1:*v10 char2:v10[1] char3:v10[2] char4:v10[3]];
    v12 = uarpDynamicAssetURL();
    v13 = [[UARPAssetID alloc] initWithLocationType:10 assetTag:v11 url:v12];
    [(UARPHIDUpdater *)self _solicitDynamicAssetForAccessory:v4 assetID:v13];
  }

  else if (v9)
  {
    v14 = 138412290;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "HID Accessory does not support TICS <%@>", &v14, 0xCu);
  }
}

- (void)_solicitDynamicAssetMTICForAccessory:(id)a3
{
  v4 = a3;
  v5 = [v4 modelNumber];
  v6 = [UARPSupportedAccessory findByAppleModelNumber:v5];

  v7 = [v6 supportsMappedAnalytics];
  log = self->_log;
  v9 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (v9)
    {
      v14 = 138412290;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Solicit MTIC for HID <%@>", &v14, 0xCu);
    }

    v10 = uarpAssetTagStructMappedAnalytics();
    v11 = [[UARPAssetTag alloc] initWithChar1:*v10 char2:v10[1] char3:v10[2] char4:v10[3]];
    v12 = uarpDynamicAssetURL();
    v13 = [[UARPAssetID alloc] initWithLocationType:10 assetTag:v11 url:v12];
    [(UARPHIDUpdater *)self _solicitDynamicAssetForAccessory:v4 assetID:v13];
  }

  else if (v9)
  {
    v14 = 138412290;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "HID Accessory does not support MTIC <%@>", &v14, 0xCu);
  }
}

- (void)_solicitDynamicAssetForAccessory:(id)a3 assetID:(id)a4
{
  v6 = a3;
  v7 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v14 = 138412546;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Solicit Dynamic Asset HID <%@> assetID <%@>", &v14, 0x16u);
  }

  v9 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessory:v6];
  v10 = v9;
  if (v9)
  {
    uarpController = self->_uarpController;
    v12 = [v9 uarpAccessory];
    [(UARPController *)uarpController solicitDynamicAsset:v12 assetID:v7];
  }

  else
  {
    v13 = self->_log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = 136315394;
      v15 = "[UARPHIDUpdater _solicitDynamicAssetForAccessory:assetID:]";
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s: Unknown UARPAccessory %@, dropping it", &v14, 0x16u);
    }
  }
}

- (void)_assetAvailablityUpdateForAccessoryID:(id)a3 assetID:(id)a4
{
  v6 = a3;
  v7 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v9 = log;
    v10 = [v6 availableFirmwareVersion];
    v13 = 136315906;
    v14 = "[UARPHIDUpdater _assetAvailablityUpdateForAccessoryID:assetID:]";
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s: accessory = %@, available version = %@, assetID = %@", &v13, 0x2Au);
  }

  v11 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessory:v6];
  if (v11)
  {
    if ([v7 downloadStatus] == 2)
    {
      [(UARPHIDUpdater *)self assetDownloadFailed:v11 assetID:v7];
    }

    else if ([v7 updateAvailabilityStatus] == 1)
    {
      [(UARPHIDUpdater *)self assetOnAssetServer:v11 assetID:v7];
    }

    else if ([v7 updateAvailabilityStatus] == 3)
    {
      [(UARPHIDUpdater *)self assetOnLocalStorage:v11 assetID:v7];
    }

    else if ([v7 updateAvailabilityStatus] == 4)
    {
      [(UARPHIDUpdater *)self assetOnDropbox:v11 assetID:v7];
    }

    else if ([v7 updateAvailabilityStatus] == 6 || objc_msgSend(v7, "updateAvailabilityStatus") == 7)
    {
      [(UARPHIDUpdater *)self assetNotFound:v11 assetID:v7];
    }
  }

  else
  {
    v12 = self->_log;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = 136315394;
      v14 = "[UARPHIDUpdater _assetAvailablityUpdateForAccessoryID:assetID:]";
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s: Unknown UARPAccessory %@, dropping it", &v13, 0x16u);
    }
  }
}

- (void)assetDownloadFailed:(id)a3 assetID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 uarpAccessory];
  v9 = [v8 modelNumber];
  v10 = [UARPSupportedAccessory findByAppleModelNumber:v9];

  [v6 setUpdateInProgress:0];
  v11 = [v6 uarpAccessory];
  [(UARPHIDUpdater *)self qReleasePowerAssertionForAccessory:v11];

  v12 = [v6 uarpAccessory];
  [(UARPHIDUpdater *)self qPostStagingStatusNotificationForAccessory:v12 status:0];

  uarpHIDQueue = self->_uarpHIDQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000530C;
  block[3] = &unk_10002C598;
  block[4] = self;
  v14 = v6;
  v21 = v14;
  dispatch_async(uarpHIDQueue, block);
  goldRestoreDelegate = self->_goldRestoreDelegate;
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100005418;
    v17[3] = &unk_10002C6B0;
    v17[4] = self;
    v18 = v14;
    v19 = v7;
    dispatch_async(delegateQueue, v17);
  }
}

- (void)assetOnAssetServer:(id)a3 assetID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 uarpAccessory];
  v9 = [v8 reachable];

  if (v9)
  {
    v10 = [v6 uarpAccessory];
    v11 = [v10 autoDownloadAllowed];

    if (v11)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if ([v6 options])
  {
LABEL_7:
    uarpController = self->_uarpController;
    v15 = [v6 uarpAccessory];
    [(UARPController *)uarpController downloadAvailableFirmwareUpdate:v15 assetID:v7 withUserIntent:1];

    goto LABEL_8;
  }

  goldRestoreDelegate = self->_goldRestoreDelegate;
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000055D4;
    block[3] = &unk_10002C6B0;
    block[4] = self;
    v17 = v6;
    v18 = v7;
    dispatch_async(delegateQueue, block);
  }

LABEL_8:
}

- (void)assetOnLocalStorage:(id)a3 assetID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 uarpAccessory];
  v9 = [v8 reachable];

  if (v9)
  {
    if ([v6 needsConsentToStage])
    {
      [(UARPHIDUpdater *)self obtainConsentToStageForAccessoryID:v6];
    }

    else
    {
      uarpController = self->_uarpController;
      v13 = [v6 uarpAccessory];
      v18 = v13;
      v14 = [NSArray arrayWithObjects:&v18 count:1];
      [(UARPController *)uarpController stageFirmwareUpdateOnAccessoryList:v14 withUserIntent:1];
    }
  }

  else
  {
    goldRestoreDelegate = self->_goldRestoreDelegate;
    if (objc_opt_respondsToSelector())
    {
      delegateQueue = self->_delegateQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000057CC;
      block[3] = &unk_10002C6B0;
      block[4] = self;
      v16 = v6;
      v17 = v7;
      dispatch_async(delegateQueue, block);
    }
  }
}

- (void)assetOnDropbox:(id)a3 assetID:(id)a4
{
  uarpController = self->_uarpController;
  v6 = a4;
  v7 = [a3 uarpAccessory];
  [(UARPController *)uarpController downloadAvailableFirmwareUpdate:v7 assetID:v6 withUserIntent:1];
}

- (void)assetNotFound:(id)a3 assetID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 uarpAccessory];
  v9 = [v8 modelNumber];
  v10 = [UARPSupportedAccessory findByAppleModelNumber:v9];

  [v6 setUpdateInProgress:0];
  v11 = [v6 uarpAccessory];
  [(UARPHIDUpdater *)self qReleasePowerAssertionForAccessory:v11];

  v12 = [v6 uarpAccessory];
  [(UARPHIDUpdater *)self qPostStagingStatusNotificationForAccessory:v12 status:0];

  uarpHIDQueue = self->_uarpHIDQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005A84;
  block[3] = &unk_10002C598;
  block[4] = self;
  v14 = v6;
  v21 = v14;
  dispatch_async(uarpHIDQueue, block);
  goldRestoreDelegate = self->_goldRestoreDelegate;
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100005B90;
    v17[3] = &unk_10002C6B0;
    v17[4] = self;
    v18 = v14;
    v19 = v7;
    dispatch_async(delegateQueue, v17);
  }
}

- (void)assetAvailablityUpdateForAccessoryID:(id)a3 assetID:(id)a4
{
  v6 = a3;
  v7 = a4;
  uarpHIDQueue = self->_uarpHIDQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005CB4;
  block[3] = &unk_10002C6B0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(uarpHIDQueue, block);
}

- (void)_firmwareStagingComplete:(id)a3 assetID:(id)a4 withStatus:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v26 = "[UARPHIDUpdater _firmwareStagingComplete:assetID:withStatus:]";
    v27 = 2112;
    v28 = v8;
    v29 = 2112;
    v30 = v9;
    v31 = 2048;
    v32 = a5;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: accessory=%@, assetID=%@, status=%lu", buf, 0x2Au);
  }

  v11 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessory:v8];
  v12 = v11;
  if (v11)
  {
    if (a5)
    {
      [v11 setUpdateInProgress:0];
      v13 = [v12 uarpAccessory];
      [(UARPHIDUpdater *)self qReleasePowerAssertionForAccessory:v13];

      v14 = [v12 uarpAccessory];
      [(UARPHIDUpdater *)self qPostStagingStatusNotificationForAccessory:v14 status:0];
    }

    v15 = self->_log;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = v15;
      v17 = [v12 uarpAccessory];
      *buf = 138412290;
      v26 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Solicit TICS/MTIC (firmware staging complete) for HID <%@>", buf, 0xCu);
    }

    [(UARPHIDUpdater *)self _solicitDynamicAssetTICSForAccessory:v8];
    v18 = [v12 uarpAccessory];
    [(UARPHIDUpdater *)self _solicitDynamicAssetMTICForAccessory:v18];

    goldRestoreDelegate = self->_goldRestoreDelegate;
    if (objc_opt_respondsToSelector())
    {
      delegateQueue = self->_delegateQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100005FA4;
      block[3] = &unk_10002C6D8;
      block[4] = self;
      v23 = v12;
      v24 = a5;
      dispatch_async(delegateQueue, block);
    }
  }

  else
  {
    v21 = self->_log;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v26 = "[UARPHIDUpdater _firmwareStagingComplete:assetID:withStatus:]";
      v27 = 2112;
      v28 = v8;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s: Unknown UARPAccessory %@, dropping it", buf, 0x16u);
    }
  }
}

- (void)firmwareStagingComplete:(id)a3 assetID:(id)a4 withStatus:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  uarpHIDQueue = self->_uarpHIDQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000060CC;
  v13[3] = &unk_10002C700;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a5;
  v11 = v9;
  v12 = v8;
  dispatch_async(uarpHIDQueue, v13);
}

- (void)applyStagedAssets:(id)a3
{
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v33 = "[UARPHIDUpdater applyStagedAssets:]";
    v34 = 2112;
    v35 = v4;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: accessory=%@", buf, 0x16u);
  }

  v6 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessoryID:v4];
  v7 = v6;
  if (v6)
  {
    v25 = v6;
    [UARPSupportedAccessory supportedAccessoriesByTransport:1];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v8 = v29 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v27;
LABEL_6:
      v12 = 0;
      while (1)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v26 + 1) + 8 * v12);
        v14 = [v13 identifier];
        v15 = [v4 modelIdentifier];
        v16 = [v14 isEqualToString:v15];

        if (v16)
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
          if (v10)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }

      v17 = v13;

      if (!v17)
      {
        goto LABEL_17;
      }

      v7 = v25;
      if ([v17 autoAppliesStagedFirmware])
      {
        v18 = self->_log;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = v18;
          v20 = [v17 identifier];
          *buf = 136315394;
          v33 = "[UARPHIDUpdater applyStagedAssets:]";
          v34 = 2112;
          v35 = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s: Accessory Identifier %@ auro-applies firmware ", buf, 0x16u);
        }

        goto LABEL_19;
      }
    }

    else
    {
LABEL_12:

      v17 = 0;
LABEL_17:
      v7 = v25;
    }

    uarpController = self->_uarpController;
    v22 = [v7 uarpAccessory];
    v30 = v22;
    v23 = [NSArray arrayWithObjects:&v30 count:1];
    [(UARPController *)uarpController applyStagedFirmwareOnAccessoryList:v23 withUserIntent:0];

LABEL_19:
  }

  else
  {
    v24 = self->_log;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v33 = "[UARPHIDUpdater applyStagedAssets:]";
      v34 = 2112;
      v35 = v4;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s: Unknown UARPAccessory %@, dropping it", buf, 0x16u);
    }
  }
}

- (void)_assetSolicitationComplete:(id)a3 assetID:(id)a4 withStatus:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v50 = "[UARPHIDUpdater _assetSolicitationComplete:assetID:withStatus:]";
    v51 = 2112;
    v52 = v8;
    v53 = 2112;
    v54 = v9;
    v55 = 2048;
    v56 = a5;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: accessory=%@, assetID=%@, status=%lu", buf, 0x2Au);
  }

  v11 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessory:v8];
  if (v11)
  {
    v12 = uarpAssetTagStructAnalytics();
    v13 = [[UARPAssetTag alloc] initWithChar1:*v12 char2:v12[1] char3:v12[2] char4:v12[3]];
    v14 = [v9 tag];
    v15 = [v14 isEqual:v13];

    if (!a5 && v15)
    {
      v16 = [UARPDynamicAssetAnalyticsEvent alloc];
      v17 = [v9 localURL];
      v18 = [v16 initWithURL:v17];

      if ([v18 decomposeUARP])
      {
        [v18 send];
      }
    }

    v19 = +[UARPDynamicAssetMappedAnalyticsEvent tag];
    v20 = [v9 tag];
    v21 = [v20 isEqual:v19];

    if (!a5 && v21)
    {
      v22 = [UARPDynamicAssetMappedAnalyticsEvent alloc];
      v23 = [v9 localURL];
      v24 = [v8 serialNumber];
      v25 = [v22 initWithURL:v23 serialNumber:v24];

      if (([v25 prepareAndSend] & 1) == 0)
      {
        v26 = self->_log;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          sub_10001D7FC(v26, v27, v28, v29, v30, v31, v32, v33);
        }
      }
    }

    goldRestoreDelegate = self->_goldRestoreDelegate;
    if (objc_opt_respondsToSelector())
    {
      delegateQueue = self->_delegateQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100006880;
      block[3] = &unk_10002C6D8;
      block[4] = self;
      v47 = v11;
      v48 = a5;
      dispatch_async(delegateQueue, block);
    }

    v36 = self->_goldRestoreDelegate;
    if (objc_opt_respondsToSelector())
    {
      v37 = self->_delegateQueue;
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_1000068E0;
      v42[3] = &unk_10002C700;
      v42[4] = self;
      v43 = v11;
      v44 = v9;
      v45 = a5;
      dispatch_async(v37, v42);
    }

    v38 = [v8 pendingAssets];
    v39 = [v38 count];

    if (!v39 && !self->_unregisterOnComplete)
    {
      v40 = self->_log;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v50 = "[UARPHIDUpdater _assetSolicitationComplete:assetID:withStatus:]";
        v51 = 2112;
        v52 = v8;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "%s: Configured to not unregister upon completion for UARPAccessory %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v41 = self->_log;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v50 = "[UARPHIDUpdater _assetSolicitationComplete:assetID:withStatus:]";
      v51 = 2112;
      v52 = v8;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "%s: Unknown UARPAccessory %@, dropping it", buf, 0x16u);
    }
  }
}

- (void)assetSolicitationComplete:(id)a3 assetID:(id)a4 withStatus:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  uarpHIDQueue = self->_uarpHIDQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100006A08;
  v13[3] = &unk_10002C700;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a5;
  v11 = v9;
  v12 = v8;
  dispatch_async(uarpHIDQueue, v13);
}

- (void)_accessoryTransportNeeded:(id)a3 isNeeded:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v8 = @"NO";
    *buf = 136315650;
    v17 = "[UARPHIDUpdater _accessoryTransportNeeded:isNeeded:]";
    v18 = 2112;
    v19 = v6;
    if (v4)
    {
      v8 = @"YES";
    }

    v20 = 2112;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: accessory=%@, isNeeded=%@", buf, 0x20u);
  }

  v9 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessory:v6];
  if (v9)
  {
    goldRestoreDelegate = self->_goldRestoreDelegate;
    if (objc_opt_respondsToSelector())
    {
      delegateQueue = self->_delegateQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100006C04;
      block[3] = &unk_10002C728;
      block[4] = self;
      v14 = v9;
      v15 = v4;
      dispatch_async(delegateQueue, block);
    }
  }

  else
  {
    v12 = self->_log;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v17 = "[UARPHIDUpdater _accessoryTransportNeeded:isNeeded:]";
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s: Unknown UARPAccessory %@, dropping it", buf, 0x16u);
    }
  }
}

- (void)accessoryTransportNeeded:(id)a3 isNeeded:(BOOL)a4
{
  v6 = a3;
  uarpHIDQueue = self->_uarpHIDQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006D0C;
  block[3] = &unk_10002C728;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(uarpHIDQueue, block);
}

- (void)_queryCompleteForAccessory:(id)a3 manufacturer:(id)a4 error:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessory:a3];
  v11 = v10;
  if (v10)
  {
    if ([v10 goldrestoreQueryInProgress] && (goldRestoreDelegate = self->_goldRestoreDelegate, (objc_opt_respondsToSelector() & 1) != 0))
    {
      delegateQueue = self->_delegateQueue;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100006E4C;
      v14[3] = &unk_10002C548;
      v14[4] = self;
      v15 = v11;
      v16 = v8;
      v17 = v9;
      dispatch_async(delegateQueue, v14);
    }

    else
    {
      [v11 updateProperty:0 value:v8];
    }
  }
}

- (void)queryCompleteForAccessory:(id)a3 manufacturer:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  uarpHIDQueue = self->_uarpHIDQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100006F90;
  v15[3] = &unk_10002C548;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(uarpHIDQueue, v15);
}

- (void)_queryCompleteForAccessory:(id)a3 modelName:(id)a4 error:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessory:a3];
  v11 = v10;
  if (v10)
  {
    if ([v10 goldrestoreQueryInProgress] && (goldRestoreDelegate = self->_goldRestoreDelegate, (objc_opt_respondsToSelector() & 1) != 0))
    {
      delegateQueue = self->_delegateQueue;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000070D0;
      v14[3] = &unk_10002C548;
      v14[4] = self;
      v15 = v11;
      v16 = v8;
      v17 = v9;
      dispatch_async(delegateQueue, v14);
    }

    else
    {
      [v11 updateProperty:1 value:v8];
    }
  }
}

- (void)queryCompleteForAccessory:(id)a3 modelName:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  uarpHIDQueue = self->_uarpHIDQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100007214;
  v15[3] = &unk_10002C548;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(uarpHIDQueue, v15);
}

- (void)_queryCompleteForAccessory:(id)a3 firmwareVersion:(id)a4 error:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessory:a3];
  v11 = v10;
  if (v10)
  {
    if ([v10 goldrestoreQueryInProgress] && (goldRestoreDelegate = self->_goldRestoreDelegate, (objc_opt_respondsToSelector() & 1) != 0))
    {
      delegateQueue = self->_delegateQueue;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100007354;
      v14[3] = &unk_10002C548;
      v14[4] = self;
      v15 = v11;
      v16 = v8;
      v17 = v9;
      dispatch_async(delegateQueue, v14);
    }

    else
    {
      [v11 updateProperty:4 value:v8];
    }
  }
}

- (void)queryCompleteForAccessory:(id)a3 firmwareVersion:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  uarpHIDQueue = self->_uarpHIDQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100007498;
  v15[3] = &unk_10002C548;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(uarpHIDQueue, v15);
}

- (void)_queryCompleteForAccessory:(id)a3 stagedFirmwareVersion:(id)a4 error:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessory:a3];
  v11 = v10;
  if (v10)
  {
    if ([v10 goldrestoreQueryInProgress] && (goldRestoreDelegate = self->_goldRestoreDelegate, (objc_opt_respondsToSelector() & 1) != 0))
    {
      delegateQueue = self->_delegateQueue;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000075D8;
      v14[3] = &unk_10002C548;
      v14[4] = self;
      v15 = v11;
      v16 = v8;
      v17 = v9;
      dispatch_async(delegateQueue, v14);
    }

    else
    {
      [v11 updateProperty:5 value:v8];
    }
  }
}

- (void)queryCompleteForAccessory:(id)a3 stagedFirmwareVersion:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  uarpHIDQueue = self->_uarpHIDQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000771C;
  v15[3] = &unk_10002C548;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(uarpHIDQueue, v15);
}

- (void)_queryCompleteForAccessory:(id)a3 stats:(id)a4 error:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessory:a3];
  v11 = v10;
  if (v10)
  {
    if ([v10 goldrestoreQueryInProgress])
    {
      goldRestoreDelegate = self->_goldRestoreDelegate;
      if (objc_opt_respondsToSelector())
      {
        delegateQueue = self->_delegateQueue;
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_100007848;
        v14[3] = &unk_10002C548;
        v14[4] = self;
        v15 = v11;
        v16 = v8;
        v17 = v9;
        dispatch_async(delegateQueue, v14);
      }
    }
  }
}

- (void)queryCompleteForAccessory:(id)a3 stats:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  uarpHIDQueue = self->_uarpHIDQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000798C;
  v15[3] = &unk_10002C548;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(uarpHIDQueue, v15);
}

- (void)_queryCompleteForAccessory:(id)a3 hardwareVersion:(id)a4 error:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessory:a3];
  v11 = v10;
  if (v10)
  {
    if ([v10 goldrestoreQueryInProgress] && (goldRestoreDelegate = self->_goldRestoreDelegate, (objc_opt_respondsToSelector() & 1) != 0))
    {
      delegateQueue = self->_delegateQueue;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100007ACC;
      v14[3] = &unk_10002C548;
      v14[4] = self;
      v15 = v11;
      v16 = v8;
      v17 = v9;
      dispatch_async(delegateQueue, v14);
    }

    else
    {
      [v11 updateProperty:3 value:v8];
    }
  }
}

- (void)queryCompleteForAccessory:(id)a3 hardwareVersion:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  uarpHIDQueue = self->_uarpHIDQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100007C10;
  v15[3] = &unk_10002C548;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(uarpHIDQueue, v15);
}

- (void)_queryCompleteForAccessory:(id)a3 serialNumber:(id)a4 error:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessory:a3];
  v11 = v10;
  if (v10)
  {
    if ([v10 goldrestoreQueryInProgress] && (goldRestoreDelegate = self->_goldRestoreDelegate, (objc_opt_respondsToSelector() & 1) != 0))
    {
      delegateQueue = self->_delegateQueue;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100007D50;
      v14[3] = &unk_10002C548;
      v14[4] = self;
      v15 = v11;
      v16 = v8;
      v17 = v9;
      dispatch_async(delegateQueue, v14);
    }

    else
    {
      [v11 updateProperty:2 value:v8];
    }
  }
}

- (void)queryCompleteForAccessory:(id)a3 serialNumber:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  uarpHIDQueue = self->_uarpHIDQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100007E94;
  v15[3] = &unk_10002C548;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(uarpHIDQueue, v15);
}

- (void)_queryCompleteForAccessory:(id)a3 appleModelNumber:(id)a4 error:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessory:a3];
  v11 = v10;
  if (v10)
  {
    if ([v10 goldrestoreQueryInProgress] && (goldRestoreDelegate = self->_goldRestoreDelegate, (objc_opt_respondsToSelector() & 1) != 0))
    {
      delegateQueue = self->_delegateQueue;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100008040;
      v18[3] = &unk_10002C548;
      v18[4] = self;
      v19 = v11;
      v20 = v8;
      v21 = v9;
      dispatch_async(delegateQueue, v18);
    }

    else
    {
      if (!v9)
      {
        v14 = [v11 uarpAccessoryID];
        v15 = [v14 modelNumber];
        v16 = [v8 isEqualToString:v15];

        if ((v16 & 1) == 0)
        {
          log = self->_log;
          if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
          {
            sub_10001D874(v8, log, v11);
          }
        }
      }

      [v11 updateProperty:11 value:v8];
    }
  }
}

- (void)queryCompleteForAccessory:(id)a3 appleModelNumber:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  uarpHIDQueue = self->_uarpHIDQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100008184;
  v15[3] = &unk_10002C548;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(uarpHIDQueue, v15);
}

- (void)_queryCompleteForAccessory:(id)a3 hwFusingType:(id)a4 error:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessory:a3];
  v11 = v10;
  if (v10)
  {
    if ([v10 goldrestoreQueryInProgress] && (goldRestoreDelegate = self->_goldRestoreDelegate, (objc_opt_respondsToSelector() & 1) != 0))
    {
      delegateQueue = self->_delegateQueue;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000082C4;
      v14[3] = &unk_10002C548;
      v14[4] = self;
      v15 = v11;
      v16 = v8;
      v17 = v9;
      dispatch_async(delegateQueue, v14);
    }

    else
    {
      [v11 updateProperty:12 value:v8];
    }
  }
}

- (void)queryCompleteForAccessory:(id)a3 hwFusingType:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  uarpHIDQueue = self->_uarpHIDQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100008408;
  v15[3] = &unk_10002C548;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(uarpHIDQueue, v15);
}

- (void)_queryCompleteForAccessory:(id)a3 friendlyName:(id)a4 error:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessory:a3];
  v11 = v10;
  if (v10)
  {
    if ([v10 goldrestoreQueryInProgress] && (goldRestoreDelegate = self->_goldRestoreDelegate, (objc_opt_respondsToSelector() & 1) != 0))
    {
      delegateQueue = self->_delegateQueue;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100008548;
      v14[3] = &unk_10002C548;
      v14[4] = self;
      v15 = v11;
      v16 = v8;
      v17 = v9;
      dispatch_async(delegateQueue, v14);
    }

    else
    {
      [v11 updateProperty:13 value:v8];
    }
  }
}

- (void)queryCompleteForAccessory:(id)a3 friendlyName:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  uarpHIDQueue = self->_uarpHIDQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000868C;
  v15[3] = &unk_10002C548;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(uarpHIDQueue, v15);
}

- (void)queryCompleteForAccessory:(id)a3 manifestPrefix:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  uarpHIDQueue = self->_uarpHIDQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100008780;
  v15[3] = &unk_10002C548;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(uarpHIDQueue, v15);
}

- (void)queryCompleteForAccessory:(id)a3 boardID:(unint64_t)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  uarpHIDQueue = self->_uarpHIDQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000089AC;
  v13[3] = &unk_10002C700;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(uarpHIDQueue, v13);
}

- (void)queryCompleteForAccessory:(id)a3 chipID:(unint64_t)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  uarpHIDQueue = self->_uarpHIDQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100008BC8;
  v13[3] = &unk_10002C700;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(uarpHIDQueue, v13);
}

- (void)queryCompleteForAccessory:(id)a3 chipRevision:(unint64_t)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  uarpHIDQueue = self->_uarpHIDQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100008DE4;
  v13[3] = &unk_10002C700;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(uarpHIDQueue, v13);
}

- (void)queryCompleteForAccessory:(id)a3 ecid:(unint64_t)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  uarpHIDQueue = self->_uarpHIDQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100009000;
  v13[3] = &unk_10002C700;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(uarpHIDQueue, v13);
}

- (void)queryCompleteForAccessory:(id)a3 securityDomain:(unint64_t)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  uarpHIDQueue = self->_uarpHIDQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000921C;
  v13[3] = &unk_10002C700;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(uarpHIDQueue, v13);
}

- (void)queryCompleteForAccessory:(id)a3 securityMode:(unint64_t)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  uarpHIDQueue = self->_uarpHIDQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100009438;
  v13[3] = &unk_10002C700;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(uarpHIDQueue, v13);
}

- (void)queryCompleteForAccessory:(id)a3 productionMode:(unint64_t)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  uarpHIDQueue = self->_uarpHIDQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100009654;
  v13[3] = &unk_10002C700;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(uarpHIDQueue, v13);
}

- (void)queryCompleteForAccessory:(id)a3 epoch:(unint64_t)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  uarpHIDQueue = self->_uarpHIDQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100009870;
  v13[3] = &unk_10002C700;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(uarpHIDQueue, v13);
}

- (void)queryCompleteForAccessory:(id)a3 enableMixMatch:(BOOL)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  uarpHIDQueue = self->_uarpHIDQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100009A90;
  v13[3] = &unk_10002C750;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(uarpHIDQueue, v13);
}

- (void)queryCompleteForAccessory:(id)a3 liveNonce:(BOOL)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  uarpHIDQueue = self->_uarpHIDQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100009CB8;
  v13[3] = &unk_10002C750;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(uarpHIDQueue, v13);
}

- (void)queryCompleteForAccessory:(id)a3 prefixNeedsLUN:(BOOL)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  uarpHIDQueue = self->_uarpHIDQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100009EE0;
  v13[3] = &unk_10002C750;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(uarpHIDQueue, v13);
}

- (void)queryCompleteForAccessory:(id)a3 suffixNeedsLUN:(BOOL)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  uarpHIDQueue = self->_uarpHIDQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000A108;
  v13[3] = &unk_10002C750;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(uarpHIDQueue, v13);
}

- (void)queryCompleteForAccessory:(id)a3 nonceSeed:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  uarpHIDQueue = self->_uarpHIDQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000A348;
  v15[3] = &unk_10002C548;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(uarpHIDQueue, v15);
}

- (void)queryCompleteForAccessory:(id)a3 nonceHash:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  uarpHIDQueue = self->_uarpHIDQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000A590;
  v15[3] = &unk_10002C548;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(uarpHIDQueue, v15);
}

- (void)_queryCompleteForAccessoryID:(id)a3 appleModelNumber:(id)a4 error:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessory:a3];
  v11 = v10;
  if (v10)
  {
    if ([v10 goldrestoreQueryInProgress])
    {
      goldRestoreDelegate = self->_goldRestoreDelegate;
      if (objc_opt_respondsToSelector())
      {
        delegateQueue = self->_delegateQueue;
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10000A810;
        v14[3] = &unk_10002C548;
        v14[4] = self;
        v15 = v11;
        v16 = v8;
        v17 = v9;
        dispatch_async(delegateQueue, v14);
      }
    }
  }
}

- (void)queryCompleteForAccessoryID:(id)a3 appleModelNumber:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  uarpHIDQueue = self->_uarpHIDQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000A954;
  v15[3] = &unk_10002C548;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(uarpHIDQueue, v15);
}

- (void)_queryCompleteForAccessoryID:(id)a3 hwFusingType:(id)a4 error:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessory:a3];
  v11 = v10;
  if (v10)
  {
    if ([v10 goldrestoreQueryInProgress])
    {
      goldRestoreDelegate = self->_goldRestoreDelegate;
      if (objc_opt_respondsToSelector())
      {
        delegateQueue = self->_delegateQueue;
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10000AA80;
        v14[3] = &unk_10002C548;
        v14[4] = self;
        v15 = v11;
        v16 = v8;
        v17 = v9;
        dispatch_async(delegateQueue, v14);
      }
    }
  }
}

- (void)queryCompleteForAccessoryID:(id)a3 hwFusingType:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  uarpHIDQueue = self->_uarpHIDQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000ABC4;
  v15[3] = &unk_10002C548;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(uarpHIDQueue, v15);
}

- (void)_queryCompleteForAccessoryID:(id)a3 friendlyName:(id)a4 error:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessory:a3];
  v11 = v10;
  if (v10)
  {
    if ([v10 goldrestoreQueryInProgress])
    {
      goldRestoreDelegate = self->_goldRestoreDelegate;
      if (objc_opt_respondsToSelector())
      {
        delegateQueue = self->_delegateQueue;
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10000ACF0;
        v14[3] = &unk_10002C548;
        v14[4] = self;
        v15 = v11;
        v16 = v8;
        v17 = v9;
        dispatch_async(delegateQueue, v14);
      }
    }
  }
}

- (void)queryCompleteForAccessoryID:(id)a3 friendlyName:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  uarpHIDQueue = self->_uarpHIDQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000AE34;
  v15[3] = &unk_10002C548;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(uarpHIDQueue, v15);
}

- (void)_firmwareStagingProgress:(id)a3 assetID:(id)a4 bytesSent:(unint64_t)a5 bytesTotal:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessory:v10];
  log = self->_log;
  v14 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
  if (v12)
  {
    if (v14)
    {
      *buf = 136315906;
      v26 = "[UARPHIDUpdater _firmwareStagingProgress:assetID:bytesSent:bytesTotal:]";
      v27 = 2112;
      v28 = v10;
      v29 = 2112;
      v30 = v11;
      v31 = 2048;
      v32 = ((a5 / a6) * 100.0);
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: accessory=%@, assetID=%@, progress=%f", buf, 0x2Au);
    }

    v15 = +[NSDate now];
    v16 = [v12 lastReportedStagingTime];
    v17 = [v16 dateByAddingTimeInterval:300.0];

    if ([v15 compare:v17] == 1)
    {
      [v12 setLastReportedStagingTime:v15];
      v18 = [v12 uarpAccessory];
      [(UARPHIDUpdater *)self qPostStagingStatusNotificationForAccessory:v18 status:1];
    }

    goldRestoreDelegate = self->_goldRestoreDelegate;
    if (objc_opt_respondsToSelector())
    {
      delegateQueue = self->_delegateQueue;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10000B0DC;
      v21[3] = &unk_10002C778;
      v21[4] = self;
      v22 = v12;
      v23 = a5;
      v24 = a6;
      dispatch_async(delegateQueue, v21);
    }
  }

  else if (v14)
  {
    *buf = 136315394;
    v26 = "[UARPHIDUpdater _firmwareStagingProgress:assetID:bytesSent:bytesTotal:]";
    v27 = 2112;
    v28 = v10;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Unknown UARPAccessory %@, dropping it", buf, 0x16u);
  }
}

- (void)firmwareStagingProgress:(id)a3 assetID:(id)a4 bytesSent:(unint64_t)a5 bytesTotal:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  uarpHIDQueue = self->_uarpHIDQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B214;
  block[3] = &unk_10002C7A0;
  block[4] = self;
  v16 = v10;
  v17 = v11;
  v18 = a5;
  v19 = a6;
  v13 = v11;
  v14 = v10;
  dispatch_async(uarpHIDQueue, block);
}

- (void)_assetSolicitationProgress:(id)a3 assetID:(id)a4 bytesReceived:(unint64_t)a5 bytesTotal:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessory:v10];
  log = self->_log;
  v14 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
  if (v12)
  {
    if (v14)
    {
      *buf = 136315906;
      v21 = "[UARPHIDUpdater _assetSolicitationProgress:assetID:bytesReceived:bytesTotal:]";
      v22 = 2112;
      v23 = v10;
      v24 = 2112;
      v25 = v11;
      v26 = 2048;
      v27 = ((a5 / a6) * 100.0);
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: accessory=%@, assetID=%@, progress=%f", buf, 0x2Au);
    }

    delegateQueue = self->_delegateQueue;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000B41C;
    v16[3] = &unk_10002C778;
    v16[4] = self;
    v17 = v12;
    v18 = a5;
    v19 = a6;
    dispatch_async(delegateQueue, v16);
  }

  else if (v14)
  {
    *buf = 136315394;
    v21 = "[UARPHIDUpdater _assetSolicitationProgress:assetID:bytesReceived:bytesTotal:]";
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Unknown UARPAccessory %@, dropping it", buf, 0x16u);
  }
}

- (void)assetSolicitationProgress:(id)a3 assetID:(id)a4 bytesReceived:(unint64_t)a5 bytesTotal:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  uarpHIDQueue = self->_uarpHIDQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B554;
  block[3] = &unk_10002C7A0;
  block[4] = self;
  v16 = v10;
  v17 = v11;
  v18 = a5;
  v19 = a6;
  v13 = v11;
  v14 = v10;
  dispatch_async(uarpHIDQueue, block);
}

- (BOOL)sendMessageToAccessory:(id)a3 uarpMsg:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  uarpHIDQueue = self->_uarpHIDQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000B660;
  v13[3] = &unk_10002C610;
  v13[4] = self;
  v14 = v7;
  v15 = v8;
  v16 = &v17;
  v10 = v8;
  v11 = v7;
  dispatch_async(uarpHIDQueue, v13);
  LOBYTE(uarpHIDQueue) = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return uarpHIDQueue;
}

- (void)_stagedFirmwareApplicationComplete:(id)a3 withStatus:(unint64_t)a4
{
  v6 = a3;
  v7 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessory:v6];
  if (v7)
  {
    goldRestoreDelegate = self->_goldRestoreDelegate;
    if (objc_opt_respondsToSelector())
    {
      delegateQueue = self->_delegateQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000B808;
      block[3] = &unk_10002C6D8;
      block[4] = self;
      v15 = v7;
      v16 = a4;
      dispatch_async(delegateQueue, block);
    }
  }

  v10 = [v6 pendingAssets];
  v11 = [v10 count];

  if (!v11)
  {
    [v7 setUpdateInProgress:0];
    v12 = [v7 uarpAccessory];
    [(UARPHIDUpdater *)self qReleasePowerAssertionForAccessory:v12];

    v13 = [v7 uarpAccessory];
    [(UARPHIDUpdater *)self qPostStagingStatusNotificationForAccessory:v13 status:0];
  }
}

- (void)stagedFirmwareApplicationComplete:(id)a3 withStatus:(unint64_t)a4
{
  v6 = a3;
  uarpHIDQueue = self->_uarpHIDQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B910;
  block[3] = &unk_10002C6D8;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(uarpHIDQueue, block);
}

- (void)_stagedFirmwareRescindComplete:(id)a3 withStatus:(unint64_t)a4
{
  v6 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessory:a3];
  if (v6)
  {
    goldRestoreDelegate = self->_goldRestoreDelegate;
    if (objc_opt_respondsToSelector())
    {
      delegateQueue = self->_delegateQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000B9E4;
      block[3] = &unk_10002C6D8;
      block[4] = self;
      v10 = v6;
      v11 = a4;
      dispatch_async(delegateQueue, block);
    }
  }
}

- (void)stagedFirmwareRescindComplete:(id)a3 withStatus:(unint64_t)a4
{
  v6 = a3;
  uarpHIDQueue = self->_uarpHIDQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000BAEC;
  block[3] = &unk_10002C6D8;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(uarpHIDQueue, block);
}

- (id)createAndSaveUARPHIDAccessoryFromService:(unsigned int)a3 identifier:(id)a4
{
  v8 = a4;
  properties = 0;
  v9 = IOHIDDeviceCreate(kCFAllocatorDefault, a3);
  if (!v9)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10001D9D0();
    }

    goto LABEL_44;
  }

  v10 = v9;
  IORegistryEntryCreateCFProperties(a3, &properties, kCFAllocatorDefault, 0);
  if (!properties)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10001D93C();
    }

LABEL_44:
    v36 = 0;
    goto LABEL_58;
  }

  v58 = v10;
  v11 = CFDictionaryGetValue(properties, @"SerialNumber");
  v62 = CFDictionaryGetValue(properties, @"LocationID");
  v53 = self;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v79 = "[UARPHIDUpdater createAndSaveUARPHIDAccessoryFromService:identifier:]";
    v80 = 2112;
    v81 = v11;
    v82 = 2112;
    v83 = v62;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%s: serialNumber=%@ locationID=%@", buf, 0x20u);
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = v53->_uarpHIDAccessories;
  v13 = [(NSMutableSet *)obj countByEnumeratingWithState:&v71 objects:v86 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v72;
LABEL_7:
    v16 = 0;
    while (1)
    {
      if (*v72 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v71 + 1) + 8 * v16);
      if (v11)
      {
        v4 = [*(*(&v71 + 1) + 8 * v16) uarpAccessoryID];
        v5 = [v4 serialNumber];
        if ([v5 isEqualToString:v11])
        {

LABEL_46:
          v37 = v53->_log;
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v38 = v37;
            v39 = [v17 uarpAccessoryID];
            *buf = 136315906;
            v79 = "[UARPHIDUpdater createAndSaveUARPHIDAccessoryFromService:identifier:]";
            v80 = 2112;
            v81 = v39;
            v82 = 2112;
            v83 = v11;
            v84 = 2112;
            v85 = v62;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "%s: hidAccessory %@ exists for serialNumber %@, locationID = %@", buf, 0x2Au);
          }

          v36 = v17;
          v20 = obj;
          goto LABEL_57;
        }

        if (v62)
        {
LABEL_15:
          v18 = [v17 locationID];
          v19 = [v18 isEqualToNumber:v62];

          if (v11)
          {

            if (v19)
            {
              goto LABEL_46;
            }
          }

          else if (v19)
          {
            goto LABEL_46;
          }

          goto LABEL_19;
        }
      }

      else if (v62)
      {
        goto LABEL_15;
      }

LABEL_19:
      if (v14 == ++v16)
      {
        v14 = [(NSMutableSet *)obj countByEnumeratingWithState:&v71 objects:v86 count:16];
        if (v14)
        {
          goto LABEL_7;
        }

        break;
      }
    }
  }

  v20 = [[UARPHIDAccessory alloc] initWithHIDDeviceRef:v58];
  v52 = CFDictionaryGetValue(properties, @"Transport");
  [(UARPHIDAccessory *)v20 setTransport:?];
  [UARPSupportedAccessory supportedAccessoriesByTransport:1];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v21 = v70 = 0u;
  v57 = [v21 countByEnumeratingWithState:&v67 objects:v77 count:16];
  if (v57)
  {
    obja = v20;
    v22 = 0;
    v55 = v11;
    v56 = *v68;
    v54 = v21;
    while (2)
    {
      for (i = 0; i != v57; i = i + 1)
      {
        if (*v68 != v56)
        {
          objc_enumerationMutation(v21);
        }

        v24 = *(*(&v67 + 1) + 8 * i);
        v25 = [v24 identifier];
        v26 = [v25 isEqualToString:v8];

        if (v26)
        {
          v40 = v24;

          v22 = v40;
          goto LABEL_50;
        }

        v27 = [v24 hardwareID];
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v28 = [v27 personalities];
        v29 = [v28 countByEnumeratingWithState:&v63 objects:v76 count:16];
        if (v29)
        {
          v30 = v29;
          v59 = v22;
          v31 = *v64;
          while (2)
          {
            for (j = 0; j != v30; j = j + 1)
            {
              if (*v64 != v31)
              {
                objc_enumerationMutation(v28);
              }

              v33 = *(*(&v63 + 1) + 8 * j);
              v34 = [v24 identifier];
              v35 = [v33 personalityIdentifier:v34];

              if ([v35 isEqualToString:v8])
              {
                v22 = v24;

                v21 = v54;
                v11 = v55;
                goto LABEL_37;
              }
            }

            v30 = [v28 countByEnumeratingWithState:&v63 objects:v76 count:16];
            if (v30)
            {
              continue;
            }

            break;
          }

          v21 = v54;
          v11 = v55;
          v22 = v59;
        }

LABEL_37:
      }

      v57 = [v21 countByEnumeratingWithState:&v67 objects:v77 count:16];
      if (v57)
      {
        continue;
      }

      break;
    }

LABEL_50:

    if (v22)
    {
      v41 = [UARPAccessoryID alloc];
      v42 = [v22 identifier];
      v43 = [v41 initWithModelNumber:v42];
      v20 = obja;
      [(UARPHIDAccessory *)obja setUarpAccessoryID:v43];

      v44 = [(UARPHIDAccessory *)obja uarpAccessoryID];
      [v44 setSerialNumber:v11];

      [(UARPHIDAccessory *)obja setLocationID:v62];
      v45 = [v22 capabilities];
      v46 = [(UARPHIDAccessory *)obja uarpAccessoryID];
      [v46 setCapability:v45];

      v47 = v53->_log;
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v48 = v47;
        v49 = [(UARPHIDAccessory *)obja uarpAccessoryID];
        v50 = [v49 capability];
        *buf = 136315650;
        v79 = "[UARPHIDUpdater createAndSaveUARPHIDAccessoryFromService:identifier:]";
        v80 = 2112;
        v81 = v8;
        v82 = 2048;
        v83 = v50;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%s: identifier=%@ cap=0x%llx", buf, 0x20u);
      }

      [(NSMutableSet *)v53->_uarpHIDAccessories addObject:obja];
      CFRelease(properties);
      v36 = obja;
    }

    else
    {
      v36 = 0;
      v20 = obja;
    }
  }

  else
  {

    v22 = 0;
    v36 = 0;
  }

LABEL_57:
LABEL_58:

  return v36;
}

- (void)queryPropertiesForUARPHIDAccessory:(id)a3 completionCallback:(id)a4
{
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_10000C354;
  v15 = &unk_10002C7C8;
  v16 = self;
  v17 = a4;
  v6 = v17;
  v7 = a3;
  [v7 internalQueryStartWithCompletionCallback:&v12];
  v8 = [v7 propertiesToQuery];
  v9 = [v8 allObjects];
  v10 = [NSArray arrayWithArray:v9];

  v11 = [v7 uarpAccessoryID];

  [(UARPHIDUpdater *)self _queryProperties:v10 accessoryID:v11 goldrestoreQuery:0];
}

- (id)createUARPAccessoryFromAccessoryID:(id)a3
{
  v4 = a3;
  v5 = [(UARPHIDUpdater *)self uuidForAccessoryID:v4];
  v6 = [v4 productGroup];
  if (v6 && (v7 = v6, [v4 productNumber], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
  {
    v9 = [UARPAccessory alloc];
    v10 = [v4 productGroup];
    v11 = [v4 productNumber];
    v12 = [v9 initWithProductGroup:v10 productNumber:v11 uuid:v5];
  }

  else
  {
    v13 = [v4 modelNumber];
    v10 = [UARPSupportedAccessory findByAppleModelNumber:v13];

    v14 = [UARPAccessory alloc];
    v11 = [v10 hardwareID];
    v12 = [v14 initWithHardwareID:v11 uuid:v5];
  }

  v15 = v12;

  [v15 setSuppressAutomaticDynamicAssets:{objc_msgSend(v4, "suppressAutomaticDynamicAssets")}];
  [v15 setSuppressInfoQueries:{objc_msgSend(v4, "suppressInfoQueries")}];

  return v15;
}

- (id)uuidForAccessoryID:(id)a3
{
  v4 = a3;
  v5 = [v4 serialNumber];

  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = [v4 productGroup];
  if (v6)
  {
    v7 = v6;
    v8 = [v4 productNumber];

    if (v8)
    {
      v9 = [v4 productGroup];
      v10 = [v4 productNumber];
      v11 = [v4 serialNumber];
      v12 = [NSString stringWithFormat:@"%@%@-%@", v9, v10, v11];

      goto LABEL_7;
    }
  }

  v13 = [v4 modelNumber];

  if (!v13)
  {
LABEL_12:
    v16 = +[NSUUID UUID];
    goto LABEL_18;
  }

  v9 = [v4 modelNumber];
  v10 = [v4 serialNumber];
  v12 = [NSString stringWithFormat:@"%@-%@", v9, v10];
LABEL_7:

  v14 = [(NSUserDefaults *)self->_database objectForKey:v12];
  if (!v14)
  {
    v16 = +[NSUUID UUID];
    v18 = [NSKeyedArchiver archivedDataWithRootObject:v16 requiringSecureCoding:1 error:0];
    [(NSUserDefaults *)self->_database setObject:v18 forKey:v12];
    log = self->_log;
    if (!os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

LABEL_16:
    *buf = 138412546;
    v22 = v16;
    v23 = 2112;
    v24 = v4;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Created new UUID:%@ for accessoryID:%@ in database", buf, 0x16u);
    goto LABEL_17;
  }

  v15 = v14;
  v16 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v14 error:0];
  v17 = self->_log;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = v16;
    v23 = 2112;
    v24 = v4;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Found UUID:%@ for accessoryID:%@ in database", buf, 0x16u);
  }

  if (!v16)
  {
    [(NSUserDefaults *)self->_database removeObjectForKey:v12];
    v16 = +[NSUUID UUID];
    v18 = [NSKeyedArchiver archivedDataWithRootObject:v16 requiringSecureCoding:1 error:0];

    [(NSUserDefaults *)self->_database setObject:v18 forKey:v12];
    log = self->_log;
    if (!os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v18 = v15;
LABEL_17:

LABEL_18:

  return v16;
}

- (id)getUARPHIDAccessoryForUARPAccessoryID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100001F70;
  v16 = sub_100001F80;
  v17 = 0;
  uarpHIDAccessories = self->_uarpHIDAccessories;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000CA20;
  v9[3] = &unk_10002C7F0;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [(NSMutableSet *)uarpHIDAccessories enumerateObjectsUsingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)getUARPHIDAccessoryForUARPAccessory:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100001F70;
  v16 = sub_100001F80;
  v17 = 0;
  uarpHIDAccessories = self->_uarpHIDAccessories;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000CBE4;
  v9[3] = &unk_10002C7F0;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [(NSMutableSet *)uarpHIDAccessories enumerateObjectsUsingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (BOOL)registerHIDForAccessory:(id)a3
{
  v4 = a3;
  v5 = IOHIDDeviceOpen([v4 hidDeviceRef], 0);
  if (!v5)
  {
    IOHIDDeviceRegisterRemovalCallback([v4 hidDeviceRef], sub_10000CE10, v4);
    v6 = [v4 hidDeviceRef];
    v7 = [v4 hidBuffer];
    v8 = [v7 mutableBytes];
    v9 = [v4 hidBuffer];
    IOHIDDeviceRegisterInputReportCallback(v6, v8, [v9 length], sub_10001CAD0, v4);

    ++self->_hidDevicesRegistered;
    uarpHIDRegistrationThread = self->_uarpHIDRegistrationThread;
    if (uarpHIDRegistrationThread)
    {
      [(UARPHIDUpdater *)self performSelector:"scheduleHIDDeviceForAccessory:" onThread:uarpHIDRegistrationThread withObject:v4 waitUntilDone:1];
    }

    else
    {
      v11 = [[NSThread alloc] initWithTarget:self selector:"runHIDRegistrationThread:" object:v4];
      v12 = self->_uarpHIDRegistrationThread;
      self->_uarpHIDRegistrationThread = v11;

      [(NSThread *)self->_uarpHIDRegistrationThread start];
      uarpHIDRegistrationThreadSemaphore = self->_uarpHIDRegistrationThreadSemaphore;
      v14 = dispatch_time(0, 2000000000);
      if (dispatch_semaphore_wait(uarpHIDRegistrationThreadSemaphore, v14))
      {
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          sub_10001DAC8(log, v16, v17, v18, v19, v20, v21, v22);
        }
      }
    }
  }

  return v5 == 0;
}

- (BOOL)unRegisterHIDCallbacksForUARPHIDAccessory:(id)a3
{
  v4 = a3;
  if ([v4 hidDeviceScheduled])
  {
    if ([v4 hidDeviceScheduled])
    {
      --self->_hidDevicesRegistered;
      [(UARPHIDUpdater *)self performSelector:"unScheduleHIDDeviceForAccessory:" onThread:self->_uarpHIDRegistrationThread withObject:v4 waitUntilDone:1];
      IOHIDDeviceClose([v4 hidDeviceRef], 0);
      CFRelease([v4 hidDeviceRef]);
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
      {
        v9 = 136315394;
        v10 = "[UARPHIDUpdater unRegisterHIDCallbacksForUARPHIDAccessory:]";
        v11 = 2112;
        v12 = v4;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: accessory=%@ now unregistered for HID Callbacks", &v9, 0x16u);
      }
    }

    if (!self->_hidDevicesRegistered)
    {
      v6 = self->_log;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v9 = 136315138;
        v10 = "[UARPHIDUpdater unRegisterHIDCallbacksForUARPHIDAccessory:]";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s: No more accessories registered for HID Callbacks, cancelling _uarpHIDRegistrationThread", &v9, 0xCu);
      }

      [(UARPHIDUpdater *)self performSelector:"stopHIDRegistrationThread" onThread:self->_uarpHIDRegistrationThread withObject:0 waitUntilDone:1];
      [(NSThread *)self->_uarpHIDRegistrationThread cancel];
      uarpHIDRegistrationThread = self->_uarpHIDRegistrationThread;
      self->_uarpHIDRegistrationThread = 0;
    }

    [v4 setHidReportSizeInput:0];
    [v4 setHidReportSizeOutput:0];
    [v4 setHidReportID:0];
    [v4 setExpectedHIDMessageID:1];
    [v4 setHidMessageID:0];
    [v4 setHidDeviceScheduled:0];
    [(NSMutableSet *)self->_uarpHIDAccessories removeObject:v4];
  }

  else
  {
    sub_10001DB40(self, v4);
  }

  return 1;
}

- (unsigned)getReportSizeForReportUsage:(unsigned int)a3 forAccessory:(id)a4
{
  v5 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = IOHIDDeviceCopyMatchingElements([v5 hidDeviceRef], &off_10002D488, 0);
  v7 = [(__CFArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if (IOHIDElementGetUsage(v11) == a3)
        {
          ReportSize = IOHIDElementGetReportSize(v11);
          ReportID = IOHIDElementGetReportID(v11);
          [v5 setHidReportID:{ReportID, v15}];
          goto LABEL_11;
        }
      }

      v8 = [(__CFArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  ReportSize = 0;
LABEL_11:

  return ReportSize;
}

- (id)matchingDictionaryForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [UARPSupportedAccessory findByAppleModelNumber:v4];
  v6 = [v5 hardwareID];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [v5 hardwareID];
    v9 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v8 vendorID]);
    v10 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v8 productID]);

    if (v9)
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v12 = [(UARPHIDUpdater *)self matchingDictionaryForVendorID:v9 productID:v10];
      goto LABEL_11;
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10001DBE0();
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (id)matchingDictionaryForIdentifier:(id)a3 hardwareID:(UARPHIDHardwareID *)a4
{
  v5 = a3;
  v6 = [UARPSupportedAccessory findByAppleModelNumber:v5];
  v7 = [v6 hardwareID];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [v6 hardwareID];
    v10 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v9 vendorID]);
    v11 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v9 productID]);

    if (v10)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      v13 = [(UARPHIDUpdater *)self matchingDictionaryForVendorID:v10 productID:v11];
      goto LABEL_11;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10001DBE0();
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (id)matchingDictionaryForVendorID:(id)a3 productID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [NSNumber numberWithUnsignedInt:70];
  v8 = [NSNumber numberWithUnsignedInt:65280];
  v9 = IOServiceMatching("IOHIDDevice");
  [(__CFDictionary *)v9 setObject:v6 forKey:@"VendorID"];

  [(__CFDictionary *)v9 setObject:v5 forKey:@"ProductID"];
  [(__CFDictionary *)v9 setObject:v7 forKey:@"DeviceUsage"];
  [(__CFDictionary *)v9 setObject:v8 forKey:@"DeviceUsagePage"];
  [(__CFDictionary *)v9 setObject:&__kCFBooleanTrue forKey:@"IOMatchLaunchStream"];

  return v9;
}

- (void)runHIDRegistrationThread:(id)a3
{
  [(UARPHIDUpdater *)self scheduleHIDDeviceForAccessory:a3];
  dispatch_semaphore_signal(self->_uarpHIDRegistrationThreadSemaphore);

  CFRunLoopRun();
}

- (void)stopHIDRegistrationThread
{
  Current = CFRunLoopGetCurrent();

  CFRunLoopStop(Current);
}

- (void)scheduleHIDDeviceForAccessory:(id)a3
{
  v4 = a3;
  Current = CFRunLoopGetCurrent();
  IOHIDDeviceScheduleWithRunLoop([v4 hidDeviceRef], Current, kCFRunLoopDefaultMode);
  [v4 setHidDeviceScheduled:1];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[UARPHIDUpdater scheduleHIDDeviceForAccessory:]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: accessory=%@ now scheduled for HID Callbacks", &v7, 0x16u);
  }
}

- (void)unScheduleHIDDeviceForAccessory:(id)a3
{
  v4 = a3;
  Current = CFRunLoopGetCurrent();
  IOHIDDeviceUnscheduleFromRunLoop([v4 hidDeviceRef], Current, kCFRunLoopDefaultMode);
  [v4 setHidDeviceScheduled:0];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[UARPHIDUpdater unScheduleHIDDeviceForAccessory:]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: accessory=%@ now unscheduled for HID Callbacks", &v7, 0x16u);
  }
}

- (void)handleHIDDisconnectForAccessory:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ([v4 updateInProgress])
    {
      [v5 setUpdateInProgress:0];
      v6 = [v5 uarpAccessory];
      [(UARPHIDUpdater *)self qReleasePowerAssertionForAccessory:v6];

      v7 = [v5 uarpAccessory];
      [(UARPHIDUpdater *)self qPostStagingStatusNotificationForAccessory:v7 status:0];
    }

    uarpController = self->_uarpController;
    v9 = [v5 uarpAccessory];
    [(UARPController *)uarpController removeAccessory:v9];

    goldRestoreDelegate = self->_goldRestoreDelegate;
    if (objc_opt_respondsToSelector())
    {
      delegateQueue = self->_delegateQueue;
      v13 = _NSConcreteStackBlock;
      v14 = 3221225472;
      v15 = sub_10000DA30;
      v16 = &unk_10002C598;
      v17 = self;
      v18 = v5;
      dispatch_async(delegateQueue, &v13);
    }

    [(UARPHIDUpdater *)self unRegisterHIDCallbacksForUARPHIDAccessory:v5, v13, v14, v15, v16, v17];
    [(NSMutableSet *)self->_uarpHIDAccessories removeObject:v5];
    [v5 handleHIDDisconnect];
    if (![(NSMutableSet *)self->_uarpHIDAccessories count])
    {
      v12 = self->_uarpController;
      self->_uarpController = 0;
    }
  }
}

- (void)parseInputReport:(id)a3 forAccessory:(id)a4
{
  v6 = a3;
  v7 = a4;
  uarpHIDQueue = self->_uarpHIDQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001D244;
  block[3] = &unk_10002C6B0;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(uarpHIDQueue, block);
}

- (void)stopPacketCapture
{
  uarpHIDQueue = self->_uarpHIDQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000DBC4;
  block[3] = &unk_10002C818;
  block[4] = self;
  dispatch_sync(uarpHIDQueue, block);
}

- (void)solicitDynamicAssetForAccessories:(id)a3 assetID:(id)a4
{
  v6 = a3;
  v7 = a4;
  uarpHIDQueue = self->_uarpHIDQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000DC94;
  block[3] = &unk_10002C6B0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(uarpHIDQueue, block);
}

- (void)removeAccessoryID:(id)a3
{
  v4 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessoryID:a3];
  if (v4)
  {
    uarpController = self->_uarpController;
    v7 = v4;
    v6 = [v4 uarpAccessory];
    [(UARPController *)uarpController accessoryUnreachable:v6];

    v4 = v7;
  }
}

- (void)startTapToRadar:(id)a3
{
  v4 = a3;
  uarpHIDQueue = self->_uarpHIDQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000E0E0;
  v7[3] = &unk_10002C598;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(uarpHIDQueue, v7);
}

- (void)stopTapToRadar
{
  uarpHIDQueue = self->_uarpHIDQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E194;
  block[3] = &unk_10002C818;
  block[4] = self;
  dispatch_sync(uarpHIDQueue, block);
}

- (id)pendingTatsuRequests
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[UARPHIDUpdater pendingTatsuRequests]";
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s:", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v15 = 0x3032000000;
  v16 = sub_100001F70;
  v17 = sub_100001F80;
  v18 = objc_opt_new();
  uarpHIDQueue = self->_uarpHIDQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000E3AC;
  v9[3] = &unk_10002C840;
  v9[4] = self;
  v9[5] = &buf;
  dispatch_sync(uarpHIDQueue, v9);
  v5 = self->_log;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(*(&buf + 1) + 40);
    *v10 = 136315394;
    v11 = "[UARPHIDUpdater pendingTatsuRequests]";
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s: Pending Tatsu Requests %@", v10, 0x16u);
  }

  v7 = [NSArray arrayWithArray:*(*(&buf + 1) + 40)];
  _Block_object_dispose(&buf, 8);

  return v7;
}

- (void)tssResponse:(id)a3
{
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[UARPHIDUpdater tssResponse:]";
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Tatsu Response, %@", buf, 0x16u);
  }

  uarpHIDQueue = self->_uarpHIDQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000E53C;
  v8[3] = &unk_10002C598;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_sync(uarpHIDQueue, v8);
}

- (void)assetStagingPause:(id)a3
{
  v4 = a3;
  uarpHIDQueue = self->_uarpHIDQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000E5E0;
  v7[3] = &unk_10002C598;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(uarpHIDQueue, v7);
}

- (void)assetStagingResume:(id)a3
{
  v4 = a3;
  uarpHIDQueue = self->_uarpHIDQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000E688;
  v7[3] = &unk_10002C598;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(uarpHIDQueue, v7);
}

- (BOOL)registerHIDCallbacksForUARPHIDAccessory:(id)a3
{
  v4 = a3;
  if (![v4 hidDeviceRef])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      *v12 = 136315394;
      sub_10000E790();
      v13 = v4;
      sub_10000E818(&_mh_execute_header, log, v9, "%s: accessory=%@ already disconnected", v12);
    }

    goto LABEL_8;
  }

  if (![v4 hidDeviceScheduled])
  {
    [v4 setHidReportSizeInput:{-[UARPHIDUpdater getReportSizeForReportUsage:forAccessory:](self, "getReportSizeForReportUsage:forAccessory:", 1, v4) >> 3}];
    if ([v4 hidReportSizeInput])
    {
      [v4 setHidReportSizeOutput:{-[UARPHIDUpdater getReportSizeForReportUsage:forAccessory:](self, "getReportSizeForReportUsage:forAccessory:", 2, v4) >> 3}];
      if ([v4 hidReportSizeOutput])
      {
        v5 = [[NSMutableData alloc] initWithLength:{objc_msgSend(v4, "hidReportSizeInput") + 1}];
        [v4 setHidBuffer:v5];

        v6 = [(UARPHIDUpdater *)self registerHIDForAccessory:v4];
        goto LABEL_9;
      }
    }

LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  v10 = self->_log;
  v6 = 1;
  if (sub_10000E830())
  {
    *v12 = 136315394;
    sub_10000E790();
    v13 = v4;
    sub_10000E7EC(&_mh_execute_header, v10, v11, "%s: accessory=%@ already registered for HID Callbacks", v12);
  }

LABEL_9:

  return v6;
}

- (BOOL)sendHIDReportToAccessory:(id)a3 forUARPMessage:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (!v7 || !v8)
  {
    goto LABEL_13;
  }

  log = self->_log;
  if (sub_10000E830())
  {
    sub_10000E7A0();
    v48 = v9;
    sub_10000E7DC();
    _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
  }

  v19 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessory:v7];
  if (v19)
  {
    v12 = v19;
    if ([v19 hidDeviceScheduled])
    {
      v44 = [v9 length];
      v10 = objc_alloc_init(NSMutableData);
      v20 = [v12 transport];
      v21 = [v20 containsString:@"Bluetooth"];

      if (v21)
      {
        buf[0] = [v12 hidReportID];
        [v10 appendBytes:buf length:1];
      }

      v43 = (self->_sessionID << 14) | 2;
      [v10 appendBytes:&v43 length:2];
      [v12 setHidMessageID:{(objc_msgSend(v12, "hidMessageID") + 1)}];
      v42 = [v12 hidMessageID];
      [v10 appendBytes:&v42 length:2];
      [v10 appendBytes:&v44 length:2];
      [v10 appendBytes:objc_msgSend(v9 length:{"bytes"), objc_msgSend(v9, "length")}];
      v22 = [v10 length];
      v23 = [v12 hidReportSizeOutput];
      v24 = self->_log;
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);
      if (v22 > v23)
      {
        if (v25)
        {
          v37 = v24;
          v38 = [v10 length];
          v39 = [v12 hidReportSizeOutput];
          *buf = 134218240;
          v46 = v38;
          v47 = 1024;
          LODWORD(v48) = v39;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "ERROR: Size of outputReport %lu > HID Output Report Size from accessory descriptor %d", buf, 0x12u);
        }
      }

      else
      {
        if (v25)
        {
          sub_10000E7A0();
          v48 = v10;
          sub_10000E7EC(&_mh_execute_header, v24, v26, "%s: Sending hidReport %@ to accessory", buf);
        }

        v11 = 1;
        v27 = IOHIDDeviceSetReport([v12 hidDeviceRef], kIOHIDReportTypeOutput, objc_msgSend(v12, "hidReportID"), objc_msgSend(v10, "bytes"), objc_msgSend(v10, "length"));
        if (!v27)
        {
          goto LABEL_13;
        }

        v40 = v27;
        v41 = self->_log;
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          LODWORD(v46) = v40;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "Failed to send HID Report status = 0x%x\n", buf, 8u);
        }
      }

      v11 = 0;
      goto LABEL_13;
    }

    v35 = self->_log;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      sub_10000E7A0();
      v48 = v7;
      sub_10000E7EC(&_mh_execute_header, v35, v36, "%s: Unregistered UARPAccessory %@, dropping it", buf);
    }

    v11 = 0;
    v10 = 0;
  }

  else
  {
    v29 = self->_log;
    if (sub_10000E830())
    {
      sub_10000E7A0();
      v48 = v7;
      sub_10000E7DC();
      _os_log_impl(v30, v31, v32, v33, v34, 0x16u);
    }

    v11 = 0;
    v10 = 0;
    v12 = 0;
  }

LABEL_13:

  return v11;
}

- (void)processUARPMessage:(id)a3 fromAccessory:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (v6)
  {
    if (v7)
    {
      v9 = [v7 uarpAccessory];

      if (v9)
      {
        uarpController = self->_uarpController;
        v11 = [v8 uarpAccessory];
        v19 = 0;
        v12 = [(UARPController *)uarpController recvDataFromAccessory:v11 data:v6 error:&v19];
        v9 = v19;

        if ((v12 & 1) == 0)
        {
          log = self->_log;
          if (sub_10000E830())
          {
            v20 = 138412290;
            v21 = v9;
            sub_10000E7DC();
            _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
          }
        }
      }
    }
  }
}

@end