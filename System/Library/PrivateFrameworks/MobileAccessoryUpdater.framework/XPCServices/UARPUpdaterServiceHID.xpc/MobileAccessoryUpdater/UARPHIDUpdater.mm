@interface UARPHIDUpdater
+ (id)sharedInstance;
- (BOOL)_queryProperties:(id)properties accessoryID:(id)d goldrestoreQuery:(BOOL)query;
- (BOOL)applyStagedFirmwareForAccessories:(id)accessories;
- (BOOL)queryProperties:(id)properties accessoryID:(id)d goldrestoreQuery:(BOOL)query;
- (BOOL)registerHIDCallbacksForUARPHIDAccessory:(id)accessory;
- (BOOL)registerHIDForAccessory:(id)accessory;
- (BOOL)rescindStagedFirmwareForAccessories:(id)accessories;
- (BOOL)sendHIDReportToAccessory:(id)accessory forUARPMessage:(id)message error:(id *)error;
- (BOOL)sendMessageToAccessory:(id)accessory uarpMsg:(id)msg error:(id *)error;
- (BOOL)unRegisterHIDCallbacksForUARPHIDAccessory:(id)accessory;
- (NSString)uarpCaptureFileName;
- (UARPHIDUpdater)init;
- (id)copyManagedPrefsValueForKey:(id)key;
- (id)createAndSaveUARPHIDAccessoryFromService:(unsigned int)service identifier:(id)identifier;
- (id)createUARPAccessoryFromAccessoryID:(id)d;
- (id)createUARPAssetIDForAccessoryID:(id)d;
- (id)getAccessoriesForIdentifier:(id)identifier;
- (id)getAccessoryForIORegEntryID:(unint64_t)d identifier:(id)identifier;
- (id)getContainerIDFromCFPrefsForAccessory:(id)accessory;
- (id)getUARPHIDAccessoryForUARPAccessory:(id)accessory;
- (id)getUARPHIDAccessoryForUARPAccessoryID:(id)d;
- (id)matchingDictionaryForIdentifier:(id)identifier;
- (id)matchingDictionaryForIdentifier:(id)identifier hardwareID:(UARPHIDHardwareID *)d;
- (id)matchingDictionaryForVendorID:(id)d productID:(id)iD;
- (id)pendingTatsuRequests;
- (id)uuidForAccessoryID:(id)d;
- (unsigned)getReportSizeForReportUsage:(unsigned int)usage forAccessory:(id)accessory;
- (void)_accessoryTransportNeeded:(id)needed isNeeded:(BOOL)isNeeded;
- (void)_assetAvailablityUpdateForAccessoryID:(id)d assetID:(id)iD;
- (void)_assetSolicitationComplete:(id)complete assetID:(id)d withStatus:(unint64_t)status;
- (void)_assetSolicitationProgress:(id)progress assetID:(id)d bytesReceived:(unint64_t)received bytesTotal:(unint64_t)total;
- (void)_firmwareStagingComplete:(id)complete assetID:(id)d withStatus:(unint64_t)status;
- (void)_firmwareStagingProgress:(id)progress assetID:(id)d bytesSent:(unint64_t)sent bytesTotal:(unint64_t)total;
- (void)_queryCompleteForAccessory:(id)accessory appleModelNumber:(id)number error:(id)error;
- (void)_queryCompleteForAccessory:(id)accessory firmwareVersion:(id)version error:(id)error;
- (void)_queryCompleteForAccessory:(id)accessory friendlyName:(id)name error:(id)error;
- (void)_queryCompleteForAccessory:(id)accessory hardwareVersion:(id)version error:(id)error;
- (void)_queryCompleteForAccessory:(id)accessory hwFusingType:(id)type error:(id)error;
- (void)_queryCompleteForAccessory:(id)accessory manufacturer:(id)manufacturer error:(id)error;
- (void)_queryCompleteForAccessory:(id)accessory modelName:(id)name error:(id)error;
- (void)_queryCompleteForAccessory:(id)accessory serialNumber:(id)number error:(id)error;
- (void)_queryCompleteForAccessory:(id)accessory stagedFirmwareVersion:(id)version error:(id)error;
- (void)_queryCompleteForAccessory:(id)accessory stats:(id)stats error:(id)error;
- (void)_queryCompleteForAccessoryID:(id)d appleModelNumber:(id)number error:(id)error;
- (void)_queryCompleteForAccessoryID:(id)d friendlyName:(id)name error:(id)error;
- (void)_queryCompleteForAccessoryID:(id)d hwFusingType:(id)type error:(id)error;
- (void)_solicitDynamicAssetForAccessory:(id)accessory assetID:(id)d;
- (void)_solicitDynamicAssetMTICForAccessory:(id)accessory;
- (void)_solicitDynamicAssetTICSForAccessory:(id)accessory;
- (void)_stagedFirmwareApplicationComplete:(id)complete withStatus:(unint64_t)status;
- (void)_stagedFirmwareRescindComplete:(id)complete withStatus:(unint64_t)status;
- (void)_startUpdateForAccessories:(id)accessories assetID:(id)d;
- (void)accessoryTransportNeeded:(id)needed isNeeded:(BOOL)isNeeded;
- (void)allocateController;
- (void)applyStagedAssets:(id)assets;
- (void)assetAvailablityUpdateForAccessoryID:(id)d assetID:(id)iD;
- (void)assetCheckForProductGroup:(id)group productNumber:(id)number assetID:(id)d options:(unsigned int)options;
- (void)assetDownloadFailed:(id)failed assetID:(id)d;
- (void)assetNotFound:(id)found assetID:(id)d;
- (void)assetOnAssetServer:(id)server assetID:(id)d;
- (void)assetOnDropbox:(id)dropbox assetID:(id)d;
- (void)assetOnLocalStorage:(id)storage assetID:(id)d;
- (void)assetSolicitationComplete:(id)complete assetID:(id)d withStatus:(unint64_t)status;
- (void)assetSolicitationProgress:(id)progress assetID:(id)d bytesReceived:(unint64_t)received bytesTotal:(unint64_t)total;
- (void)assetStagingPause:(id)pause;
- (void)assetStagingResume:(id)resume;
- (void)firmwareStagingComplete:(id)complete assetID:(id)d withStatus:(unint64_t)status;
- (void)firmwareStagingProgress:(id)progress assetID:(id)d bytesSent:(unint64_t)sent bytesTotal:(unint64_t)total;
- (void)handleHIDDisconnectForAccessory:(id)accessory;
- (void)parseInputReport:(id)report forAccessory:(id)accessory;
- (void)processUARPMessage:(id)message fromAccessory:(id)accessory;
- (void)qHoldPowerAssertionForAccessory:(id)accessory;
- (void)qPostStagingStatusNotificationForAccessory:(id)accessory status:(unint64_t)status;
- (void)qReleasePowerAssertionForAccessory:(id)accessory;
- (void)queryCompleteForAccessory:(id)accessory appleModelNumber:(id)number error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory boardID:(unint64_t)d error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory chipID:(unint64_t)d error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory chipRevision:(unint64_t)revision error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory ecid:(unint64_t)ecid error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory enableMixMatch:(BOOL)match error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory epoch:(unint64_t)epoch error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory firmwareVersion:(id)version error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory friendlyName:(id)name error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory hardwareVersion:(id)version error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory hwFusingType:(id)type error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory liveNonce:(BOOL)nonce error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory manifestPrefix:(id)prefix error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory manufacturer:(id)manufacturer error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory modelName:(id)name error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory nonceHash:(id)hash error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory nonceSeed:(id)seed error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory prefixNeedsLUN:(BOOL)n error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory productionMode:(unint64_t)mode error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory securityDomain:(unint64_t)domain error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory securityMode:(unint64_t)mode error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory serialNumber:(id)number error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory stagedFirmwareVersion:(id)version error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory stats:(id)stats error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory suffixNeedsLUN:(BOOL)n error:(id)error;
- (void)queryCompleteForAccessoryID:(id)d appleModelNumber:(id)number error:(id)error;
- (void)queryCompleteForAccessoryID:(id)d friendlyName:(id)name error:(id)error;
- (void)queryCompleteForAccessoryID:(id)d hwFusingType:(id)type error:(id)error;
- (void)queryFailedForAccessory:(id)accessory property:(unint64_t)property error:(int64_t)error;
- (void)queryPropertiesForUARPHIDAccessory:(id)accessory completionCallback:(id)callback;
- (void)removeAccessoryID:(id)d;
- (void)runHIDRegistrationThread:(id)thread;
- (void)scheduleHIDDeviceForAccessory:(id)accessory;
- (void)setUarpCaptureFileName:(id)name;
- (void)solicitDynamicAssetForAccessories:(id)accessories assetID:(id)d;
- (void)stagedFirmwareApplicationComplete:(id)complete withStatus:(unint64_t)status;
- (void)stagedFirmwareRescindComplete:(id)complete withStatus:(unint64_t)status;
- (void)startTapToRadar:(id)radar;
- (void)startUpdateForAccessories:(id)accessories assetID:(id)d;
- (void)stopHIDRegistrationThread;
- (void)stopPacketCapture;
- (void)stopTapToRadar;
- (void)tssResponse:(id)response;
- (void)unScheduleHIDDeviceForAccessory:(id)accessory;
- (void)unsolicitedDynamicAssetForAccessories:(id)accessories assetTag:(id)tag;
@end

@implementation UARPHIDUpdater

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001864;
  block[3] = &unk_10002C520;
  block[4] = self;
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

- (id)getAccessoriesForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[NSMutableArray array];
  v6 = [UARPSupportedAccessory supportedAccessoriesByTransport:1];
  uarpHIDQueue = self->_uarpHIDQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100001AD0;
  v14[3] = &unk_10002C548;
  v15 = v6;
  v16 = identifierCopy;
  selfCopy = self;
  v8 = v5;
  v18 = v8;
  v9 = identifierCopy;
  v10 = v6;
  dispatch_sync(uarpHIDQueue, v14);
  v11 = v18;
  v12 = v8;

  return v8;
}

- (id)getAccessoryForIORegEntryID:(unint64_t)d identifier:(id)identifier
{
  identifierCopy = identifier;
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
  dCopy = d;
  selfCopy = self;
  v8 = identifierCopy;
  v16 = v8;
  dispatch_sync(uarpHIDQueue, &v11);
  uarpAccessoryID = [v20[5] uarpAccessoryID];

  _Block_object_dispose(&v19, 8);

  return uarpAccessoryID;
}

- (void)setUarpCaptureFileName:(id)name
{
  nameCopy = name;
  uarpHIDQueue = self->_uarpHIDQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000209C;
  v7[3] = &unk_10002C598;
  v7[4] = self;
  v8 = nameCopy;
  v6 = nameCopy;
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
      powerLogStagingWindowSecondsOverride = [v5 powerLogStagingWindowSecondsOverride];
      if (powerLogStagingWindowSecondsOverride)
      {
        v8 = powerLogStagingWindowSecondsOverride;
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

- (void)startUpdateForAccessories:(id)accessories assetID:(id)d
{
  accessoriesCopy = accessories;
  dCopy = d;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [accessoriesCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(accessoriesCopy);
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
        v15 = dCopy;
        dispatch_sync(uarpHIDQueue, block);

        _Block_object_dispose(v17, 8);
      }

      v9 = [accessoriesCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }
}

- (void)qPostStagingStatusNotificationForAccessory:(id)accessory status:(unint64_t)status
{
  accessoryCopy = accessory;
  getID = [accessoryCopy getID];
  modelIdentifier = [getID modelIdentifier];

  v9 = [UARPSupportedAccessory findByAppleModelNumber:modelIdentifier];
  if ([v9 postStagingNotifications])
  {
    stagingStatusNotificationTokens = self->_stagingStatusNotificationTokens;
    getID2 = [accessoryCopy getID];
    v12 = [(NSMutableDictionary *)stagingStatusNotificationTokens objectForKeyedSubscript:getID2];

    if (v12)
    {
      notify_cancel([v12 intValue]);
      v13 = self->_stagingStatusNotificationTokens;
      getID3 = [accessoryCopy getID];
      [(NSMutableDictionary *)v13 removeObjectForKey:getID3];
    }

    v15 = postStagingStatusForModelIdentifier();
    if (v15 == -1)
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_10001D564();
      }
    }

    else if (status)
    {
      v16 = [NSNumber numberWithInt:v15];
      v17 = self->_stagingStatusNotificationTokens;
      getID4 = [accessoryCopy getID];
      [(NSMutableDictionary *)v17 setObject:v16 forKeyedSubscript:getID4];
    }

    else
    {
      notify_cancel(v15);
    }
  }
}

- (void)qHoldPowerAssertionForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  modelNumber = [accessoryCopy modelNumber];
  v6 = [UARPSupportedAccessory findByAppleModelNumber:modelNumber];

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
        v12 = accessoryCopy;
        v13 = 1024;
        v14 = powerAssertionRefCount;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Already holding power assertion for %@ refCount=%u", buf, 0x12u);
      }
    }

    else
    {
      *buf = 0;
      hardwareID = [v6 hardwareID];
      [hardwareID transport];
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

- (void)qReleasePowerAssertionForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  modelNumber = [accessoryCopy modelNumber];
  v6 = [UARPSupportedAccessory findByAppleModelNumber:modelNumber];

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

- (void)_startUpdateForAccessories:(id)accessories assetID:(id)d
{
  accessoriesCopy = accessories;
  dCopy = d;
  [(UARPHIDUpdater *)self allocateController];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = accessoriesCopy;
  v9 = [v8 countByEnumeratingWithState:&v33 objects:v41 count:16];
  v32 = dCopy;
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

        uarpAccessory = [v14 uarpAccessory];

        if (!uarpAccessory)
        {
          uarpAccessoryID = [v14 uarpAccessoryID];
          v17 = [(UARPHIDUpdater *)self createUARPAccessoryFromAccessoryID:uarpAccessoryID];
          [v14 setUarpAccessory:v17];

          uarpAccessory2 = [v14 uarpAccessory];
          [uarpAccessory2 setDownloadOnCellularAllowed:0];

          uarpAccessory3 = [v14 uarpAccessory];
          [uarpAccessory3 setAutoDownloadAllowed:0];

          uarpAccessory4 = [v14 uarpAccessory];
          [uarpAccessory4 setTransport:1];

          capability = [v13 capability];
          uarpAccessory5 = [v14 uarpAccessory];
          [uarpAccessory5 setCapability:capability];
        }

        [v14 setUpdateInProgress:1];
        v23 = +[NSDate distantPast];
        [v14 setLastReportedStagingTime:v23];

        uarpAccessory6 = [v14 uarpAccessory];
        [(UARPHIDUpdater *)self qHoldPowerAssertionForAccessory:uarpAccessory6];

        if (!dCopy)
        {
          dCopy = [(UARPHIDUpdater *)self createUARPAssetIDForAccessoryID:v14];
        }

        isDynamicAsset = [dCopy isDynamicAsset];
        uarpController = self->_uarpController;
        uarpAccessory7 = [v14 uarpAccessory];
        if (isDynamicAsset)
        {
          [(UARPController *)uarpController dynamicAssetAvailableForAccessory:uarpAccessory7 assetID:dCopy error:0];
        }

        else
        {
          [(UARPController *)uarpController changeAssetLocation:uarpAccessory7 assetID:dCopy];
        }

LABEL_21:
      }

      v10 = [v8 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v10);
  }
}

- (id)getContainerIDFromCFPrefsForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  vendorID = [accessoryCopy vendorID];
  unsignedIntegerValue = [vendorID unsignedIntegerValue];
  productID = [accessoryCopy productID];

  v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"vid0x%04lXpid0x%04lX", unsignedIntegerValue, [productID unsignedIntegerValue]);

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

- (id)copyManagedPrefsValueForKey:(id)key
{
  keyCopy = key;
  v5 = [NSURL fileURLWithPath:@"/Library/Managed Preferences/mobile/com.apple.UARPUpdaterServiceHID.plist"];
  v6 = 0;
  if ([v5 checkResourceIsReachableAndReturnError:0])
  {
    v11 = 0;
    v7 = [[NSDictionary alloc] initWithContentsOfURL:v5 error:&v11];
    v8 = v11;
    if (v7)
    {
      v9 = [v7 objectForKeyedSubscript:keyCopy];
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

- (id)createUARPAssetIDForAccessoryID:(id)d
{
  dCopy = d;
  uarpAccessoryID = [dCopy uarpAccessoryID];
  productGroup = [uarpAccessoryID productGroup];
  if (!productGroup)
  {

    goto LABEL_8;
  }

  v7 = productGroup;
  uarpAccessoryID2 = [dCopy uarpAccessoryID];
  productNumber = [uarpAccessoryID2 productNumber];

  if (!productNumber)
  {
LABEL_8:
    v11 = 3;
    goto LABEL_13;
  }

  v10 = [(UARPHIDUpdater *)self getContainerIDFromCFPrefsForAccessory:dCopy];
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

- (BOOL)_queryProperties:(id)properties accessoryID:(id)d goldrestoreQuery:(BOOL)query
{
  queryCopy = query;
  propertiesCopy = properties;
  dCopy = d;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v38 = 136315394;
    v39 = "[UARPHIDUpdater _queryProperties:accessoryID:goldrestoreQuery:]";
    v40 = 2112;
    v41 = propertiesCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: properties %@", &v38, 0x16u);
  }

  [(UARPHIDUpdater *)self allocateController];
  v11 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessoryID:dCopy];
  if (!v11)
  {
    v21 = self->_log;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v38 = 136315394;
      v39 = "[UARPHIDUpdater _queryProperties:accessoryID:goldrestoreQuery:]";
      v40 = 2112;
      v41 = dCopy;
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

  uarpAccessory = [v11 uarpAccessory];

  if (!uarpAccessory)
  {
    productGroup = [dCopy productGroup];
    if (productGroup && (v14 = productGroup, [dCopy productNumber], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v15))
    {
      v16 = [UARPAccessory alloc];
      productGroup2 = [dCopy productGroup];
      productNumber = [dCopy productNumber];
      v19 = +[NSUUID UUID];
      v20 = [v16 initWithProductGroup:productGroup2 productNumber:productNumber uuid:v19];
      [v11 setUarpAccessory:v20];
    }

    else
    {
      productGroup2 = [(UARPHIDUpdater *)self createUARPAccessoryFromAccessoryID:dCopy];
      [v11 setUarpAccessory:productGroup2];
    }

    uarpAccessory2 = [v11 uarpAccessory];
    [uarpAccessory2 setDownloadOnCellularAllowed:0];

    uarpAccessory3 = [v11 uarpAccessory];
    [uarpAccessory3 setAutoDownloadAllowed:0];

    uarpAccessory4 = [v11 uarpAccessory];
    [uarpAccessory4 setTransport:1];

    capability = [dCopy capability];
    uarpAccessory5 = [v11 uarpAccessory];
    [uarpAccessory5 setCapability:capability];

    suppressAutomaticDynamicAssets = [dCopy suppressAutomaticDynamicAssets];
    uarpAccessory6 = [v11 uarpAccessory];
    [uarpAccessory6 setSuppressAutomaticDynamicAssets:suppressAutomaticDynamicAssets];

    suppressInfoQueries = [dCopy suppressInfoQueries];
    uarpAccessory7 = [v11 uarpAccessory];
    [uarpAccessory7 setSuppressInfoQueries:suppressInfoQueries];

    uarpController = self->_uarpController;
    uarpAccessory8 = [v11 uarpAccessory];
    [(UARPController *)uarpController addAccessory:uarpAccessory8 assetID:0];

    v35 = self->_uarpController;
    uarpAccessory9 = [v11 uarpAccessory];
    [(UARPController *)v35 accessoryReachable:uarpAccessory9];
  }

  if (queryCopy)
  {
    [v11 setGoldrestoreQueryInProgress:1];
  }

  [v11 proceedWithUpdate];
  v23 = 1;
LABEL_20:

  return v23;
}

- (BOOL)queryProperties:(id)properties accessoryID:(id)d goldrestoreQuery:(BOOL)query
{
  propertiesCopy = properties;
  dCopy = d;
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
  v15 = propertiesCopy;
  v16 = dCopy;
  v17 = &v19;
  queryCopy = query;
  v11 = dCopy;
  v12 = propertiesCopy;
  dispatch_sync(uarpHIDQueue, block);
  LOBYTE(uarpHIDQueue) = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  return uarpHIDQueue;
}

- (void)queryFailedForAccessory:(id)accessory property:(unint64_t)property error:(int64_t)error
{
  accessoryCopy = accessory;
  v8 = [NSError errorWithDomain:kUARPErrorDomain code:error userInfo:0];
  if (property <= 4)
  {
    if (property <= 1)
    {
      if (property)
      {
        if (property != 1)
        {
          goto LABEL_25;
        }

        uarpAccessory = [accessoryCopy uarpAccessory];
        [(UARPHIDUpdater *)self _queryCompleteForAccessory:uarpAccessory modelName:0 error:v8];
      }

      else
      {
        uarpAccessory = [accessoryCopy uarpAccessory];
        [(UARPHIDUpdater *)self _queryCompleteForAccessory:uarpAccessory manufacturer:0 error:v8];
      }
    }

    else if (property == 2)
    {
      uarpAccessory = [accessoryCopy uarpAccessory];
      [(UARPHIDUpdater *)self _queryCompleteForAccessory:uarpAccessory serialNumber:0 error:v8];
    }

    else
    {
      [accessoryCopy uarpAccessory];
      if (property == 3)
        uarpAccessory = {;
        [(UARPHIDUpdater *)self _queryCompleteForAccessory:uarpAccessory hardwareVersion:0 error:v8];
      }

      else
        uarpAccessory = {;
        [(UARPHIDUpdater *)self _queryCompleteForAccessory:uarpAccessory firmwareVersion:0 error:v8];
      }
    }

    goto LABEL_24;
  }

  if (property <= 10)
  {
    if (property == 5)
    {
      uarpAccessory = [accessoryCopy uarpAccessory];
      [(UARPHIDUpdater *)self _queryCompleteForAccessory:uarpAccessory stagedFirmwareVersion:0 error:v8];
    }

    else
    {
      if (property != 6)
      {
        goto LABEL_25;
      }

      uarpAccessory = [accessoryCopy uarpAccessory];
      [(UARPHIDUpdater *)self _queryCompleteForAccessory:uarpAccessory stats:0 error:v8];
    }

    goto LABEL_24;
  }

  switch(property)
  {
    case 0xBuLL:
      uarpAccessory = [accessoryCopy uarpAccessory];
      [(UARPHIDUpdater *)self _queryCompleteForAccessory:uarpAccessory appleModelNumber:0 error:v8];
LABEL_24:

      break;
    case 0xCuLL:
      uarpAccessory2 = [accessoryCopy uarpAccessory];
      [(UARPHIDUpdater *)self _queryCompleteForAccessory:uarpAccessory2 hwFusingType:0 error:v8];

      goto LABEL_23;
    case 0xDuLL:
LABEL_23:
      uarpAccessory = [accessoryCopy uarpAccessory];
      [(UARPHIDUpdater *)self _queryCompleteForAccessory:uarpAccessory friendlyName:0 error:v8];
      goto LABEL_24;
  }

LABEL_25:
}

- (BOOL)applyStagedFirmwareForAccessories:(id)accessories
{
  accessoriesCopy = accessories;
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
  v9 = accessoriesCopy;
  v10 = &v11;
  v6 = accessoriesCopy;
  dispatch_sync(uarpHIDQueue, block);
  LOBYTE(uarpHIDQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return uarpHIDQueue;
}

- (BOOL)rescindStagedFirmwareForAccessories:(id)accessories
{
  accessoriesCopy = accessories;
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
  v9 = accessoriesCopy;
  v10 = &v11;
  v6 = accessoriesCopy;
  dispatch_sync(uarpHIDQueue, block);
  LOBYTE(uarpHIDQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return uarpHIDQueue;
}

- (void)assetCheckForProductGroup:(id)group productNumber:(id)number assetID:(id)d options:(unsigned int)options
{
  groupCopy = group;
  numberCopy = number;
  dCopy = d;
  uarpHIDQueue = self->_uarpHIDQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000044F4;
  block[3] = &unk_10002C688;
  optionsCopy = options;
  block[4] = self;
  v18 = groupCopy;
  v19 = numberCopy;
  v20 = dCopy;
  v14 = dCopy;
  v15 = numberCopy;
  v16 = groupCopy;
  dispatch_sync(uarpHIDQueue, block);
}

- (void)unsolicitedDynamicAssetForAccessories:(id)accessories assetTag:(id)tag
{
  accessoriesCopy = accessories;
  tagCopy = tag;
  uarpHIDQueue = self->_uarpHIDQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000046D4;
  block[3] = &unk_10002C6B0;
  block[4] = self;
  v12 = accessoriesCopy;
  v13 = tagCopy;
  v9 = tagCopy;
  v10 = accessoriesCopy;
  dispatch_sync(uarpHIDQueue, block);
}

- (void)_solicitDynamicAssetTICSForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  modelNumber = [accessoryCopy modelNumber];
  v6 = [UARPSupportedAccessory findByAppleModelNumber:modelNumber];

  supportsAnalytics = [v6 supportsAnalytics];
  log = self->_log;
  v9 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
  if (supportsAnalytics)
  {
    if (v9)
    {
      v14 = 138412290;
      v15 = accessoryCopy;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Solicit TICS for HID <%@>", &v14, 0xCu);
    }

    v10 = uarpAssetTagStructAnalytics();
    v11 = [[UARPAssetTag alloc] initWithChar1:*v10 char2:v10[1] char3:v10[2] char4:v10[3]];
    v12 = uarpDynamicAssetURL();
    v13 = [[UARPAssetID alloc] initWithLocationType:10 assetTag:v11 url:v12];
    [(UARPHIDUpdater *)self _solicitDynamicAssetForAccessory:accessoryCopy assetID:v13];
  }

  else if (v9)
  {
    v14 = 138412290;
    v15 = accessoryCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "HID Accessory does not support TICS <%@>", &v14, 0xCu);
  }
}

- (void)_solicitDynamicAssetMTICForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  modelNumber = [accessoryCopy modelNumber];
  v6 = [UARPSupportedAccessory findByAppleModelNumber:modelNumber];

  supportsMappedAnalytics = [v6 supportsMappedAnalytics];
  log = self->_log;
  v9 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
  if (supportsMappedAnalytics)
  {
    if (v9)
    {
      v14 = 138412290;
      v15 = accessoryCopy;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Solicit MTIC for HID <%@>", &v14, 0xCu);
    }

    v10 = uarpAssetTagStructMappedAnalytics();
    v11 = [[UARPAssetTag alloc] initWithChar1:*v10 char2:v10[1] char3:v10[2] char4:v10[3]];
    v12 = uarpDynamicAssetURL();
    v13 = [[UARPAssetID alloc] initWithLocationType:10 assetTag:v11 url:v12];
    [(UARPHIDUpdater *)self _solicitDynamicAssetForAccessory:accessoryCopy assetID:v13];
  }

  else if (v9)
  {
    v14 = 138412290;
    v15 = accessoryCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "HID Accessory does not support MTIC <%@>", &v14, 0xCu);
  }
}

- (void)_solicitDynamicAssetForAccessory:(id)accessory assetID:(id)d
{
  accessoryCopy = accessory;
  dCopy = d;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v14 = 138412546;
    v15 = accessoryCopy;
    v16 = 2112;
    v17 = dCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Solicit Dynamic Asset HID <%@> assetID <%@>", &v14, 0x16u);
  }

  v9 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessory:accessoryCopy];
  v10 = v9;
  if (v9)
  {
    uarpController = self->_uarpController;
    uarpAccessory = [v9 uarpAccessory];
    [(UARPController *)uarpController solicitDynamicAsset:uarpAccessory assetID:dCopy];
  }

  else
  {
    v13 = self->_log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = 136315394;
      v15 = "[UARPHIDUpdater _solicitDynamicAssetForAccessory:assetID:]";
      v16 = 2112;
      v17 = accessoryCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s: Unknown UARPAccessory %@, dropping it", &v14, 0x16u);
    }
  }
}

- (void)_assetAvailablityUpdateForAccessoryID:(id)d assetID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v9 = log;
    availableFirmwareVersion = [dCopy availableFirmwareVersion];
    v13 = 136315906;
    v14 = "[UARPHIDUpdater _assetAvailablityUpdateForAccessoryID:assetID:]";
    v15 = 2112;
    v16 = dCopy;
    v17 = 2112;
    v18 = availableFirmwareVersion;
    v19 = 2112;
    v20 = iDCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s: accessory = %@, available version = %@, assetID = %@", &v13, 0x2Au);
  }

  v11 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessory:dCopy];
  if (v11)
  {
    if ([iDCopy downloadStatus] == 2)
    {
      [(UARPHIDUpdater *)self assetDownloadFailed:v11 assetID:iDCopy];
    }

    else if ([iDCopy updateAvailabilityStatus] == 1)
    {
      [(UARPHIDUpdater *)self assetOnAssetServer:v11 assetID:iDCopy];
    }

    else if ([iDCopy updateAvailabilityStatus] == 3)
    {
      [(UARPHIDUpdater *)self assetOnLocalStorage:v11 assetID:iDCopy];
    }

    else if ([iDCopy updateAvailabilityStatus] == 4)
    {
      [(UARPHIDUpdater *)self assetOnDropbox:v11 assetID:iDCopy];
    }

    else if ([iDCopy updateAvailabilityStatus] == 6 || objc_msgSend(iDCopy, "updateAvailabilityStatus") == 7)
    {
      [(UARPHIDUpdater *)self assetNotFound:v11 assetID:iDCopy];
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
      v16 = dCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s: Unknown UARPAccessory %@, dropping it", &v13, 0x16u);
    }
  }
}

- (void)assetDownloadFailed:(id)failed assetID:(id)d
{
  failedCopy = failed;
  dCopy = d;
  uarpAccessory = [failedCopy uarpAccessory];
  modelNumber = [uarpAccessory modelNumber];
  v10 = [UARPSupportedAccessory findByAppleModelNumber:modelNumber];

  [failedCopy setUpdateInProgress:0];
  uarpAccessory2 = [failedCopy uarpAccessory];
  [(UARPHIDUpdater *)self qReleasePowerAssertionForAccessory:uarpAccessory2];

  uarpAccessory3 = [failedCopy uarpAccessory];
  [(UARPHIDUpdater *)self qPostStagingStatusNotificationForAccessory:uarpAccessory3 status:0];

  uarpHIDQueue = self->_uarpHIDQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000530C;
  block[3] = &unk_10002C598;
  block[4] = self;
  v14 = failedCopy;
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
    v19 = dCopy;
    dispatch_async(delegateQueue, v17);
  }
}

- (void)assetOnAssetServer:(id)server assetID:(id)d
{
  serverCopy = server;
  dCopy = d;
  uarpAccessory = [serverCopy uarpAccessory];
  reachable = [uarpAccessory reachable];

  if (reachable)
  {
    uarpAccessory2 = [serverCopy uarpAccessory];
    autoDownloadAllowed = [uarpAccessory2 autoDownloadAllowed];

    if (autoDownloadAllowed)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if ([serverCopy options])
  {
LABEL_7:
    uarpController = self->_uarpController;
    uarpAccessory3 = [serverCopy uarpAccessory];
    [(UARPController *)uarpController downloadAvailableFirmwareUpdate:uarpAccessory3 assetID:dCopy withUserIntent:1];

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
    v17 = serverCopy;
    v18 = dCopy;
    dispatch_async(delegateQueue, block);
  }

LABEL_8:
}

- (void)assetOnLocalStorage:(id)storage assetID:(id)d
{
  storageCopy = storage;
  dCopy = d;
  uarpAccessory = [storageCopy uarpAccessory];
  reachable = [uarpAccessory reachable];

  if (reachable)
  {
    if ([storageCopy needsConsentToStage])
    {
      [(UARPHIDUpdater *)self obtainConsentToStageForAccessoryID:storageCopy];
    }

    else
    {
      uarpController = self->_uarpController;
      uarpAccessory2 = [storageCopy uarpAccessory];
      v18 = uarpAccessory2;
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
      v16 = storageCopy;
      v17 = dCopy;
      dispatch_async(delegateQueue, block);
    }
  }
}

- (void)assetOnDropbox:(id)dropbox assetID:(id)d
{
  uarpController = self->_uarpController;
  dCopy = d;
  uarpAccessory = [dropbox uarpAccessory];
  [(UARPController *)uarpController downloadAvailableFirmwareUpdate:uarpAccessory assetID:dCopy withUserIntent:1];
}

- (void)assetNotFound:(id)found assetID:(id)d
{
  foundCopy = found;
  dCopy = d;
  uarpAccessory = [foundCopy uarpAccessory];
  modelNumber = [uarpAccessory modelNumber];
  v10 = [UARPSupportedAccessory findByAppleModelNumber:modelNumber];

  [foundCopy setUpdateInProgress:0];
  uarpAccessory2 = [foundCopy uarpAccessory];
  [(UARPHIDUpdater *)self qReleasePowerAssertionForAccessory:uarpAccessory2];

  uarpAccessory3 = [foundCopy uarpAccessory];
  [(UARPHIDUpdater *)self qPostStagingStatusNotificationForAccessory:uarpAccessory3 status:0];

  uarpHIDQueue = self->_uarpHIDQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005A84;
  block[3] = &unk_10002C598;
  block[4] = self;
  v14 = foundCopy;
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
    v19 = dCopy;
    dispatch_async(delegateQueue, v17);
  }
}

- (void)assetAvailablityUpdateForAccessoryID:(id)d assetID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  uarpHIDQueue = self->_uarpHIDQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005CB4;
  block[3] = &unk_10002C6B0;
  block[4] = self;
  v12 = dCopy;
  v13 = iDCopy;
  v9 = iDCopy;
  v10 = dCopy;
  dispatch_async(uarpHIDQueue, block);
}

- (void)_firmwareStagingComplete:(id)complete assetID:(id)d withStatus:(unint64_t)status
{
  completeCopy = complete;
  dCopy = d;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v26 = "[UARPHIDUpdater _firmwareStagingComplete:assetID:withStatus:]";
    v27 = 2112;
    v28 = completeCopy;
    v29 = 2112;
    v30 = dCopy;
    v31 = 2048;
    statusCopy = status;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: accessory=%@, assetID=%@, status=%lu", buf, 0x2Au);
  }

  v11 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessory:completeCopy];
  v12 = v11;
  if (v11)
  {
    if (status)
    {
      [v11 setUpdateInProgress:0];
      uarpAccessory = [v12 uarpAccessory];
      [(UARPHIDUpdater *)self qReleasePowerAssertionForAccessory:uarpAccessory];

      uarpAccessory2 = [v12 uarpAccessory];
      [(UARPHIDUpdater *)self qPostStagingStatusNotificationForAccessory:uarpAccessory2 status:0];
    }

    v15 = self->_log;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = v15;
      uarpAccessory3 = [v12 uarpAccessory];
      *buf = 138412290;
      v26 = uarpAccessory3;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Solicit TICS/MTIC (firmware staging complete) for HID <%@>", buf, 0xCu);
    }

    [(UARPHIDUpdater *)self _solicitDynamicAssetTICSForAccessory:completeCopy];
    uarpAccessory4 = [v12 uarpAccessory];
    [(UARPHIDUpdater *)self _solicitDynamicAssetMTICForAccessory:uarpAccessory4];

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
      statusCopy2 = status;
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
      v28 = completeCopy;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s: Unknown UARPAccessory %@, dropping it", buf, 0x16u);
    }
  }
}

- (void)firmwareStagingComplete:(id)complete assetID:(id)d withStatus:(unint64_t)status
{
  completeCopy = complete;
  dCopy = d;
  uarpHIDQueue = self->_uarpHIDQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000060CC;
  v13[3] = &unk_10002C700;
  v13[4] = self;
  v14 = completeCopy;
  v15 = dCopy;
  statusCopy = status;
  v11 = dCopy;
  v12 = completeCopy;
  dispatch_async(uarpHIDQueue, v13);
}

- (void)applyStagedAssets:(id)assets
{
  assetsCopy = assets;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v33 = "[UARPHIDUpdater applyStagedAssets:]";
    v34 = 2112;
    v35 = assetsCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: accessory=%@", buf, 0x16u);
  }

  v6 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessoryID:assetsCopy];
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
        identifier = [v13 identifier];
        modelIdentifier = [assetsCopy modelIdentifier];
        v16 = [identifier isEqualToString:modelIdentifier];

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
          identifier2 = [v17 identifier];
          *buf = 136315394;
          v33 = "[UARPHIDUpdater applyStagedAssets:]";
          v34 = 2112;
          v35 = identifier2;
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
    uarpAccessory = [v7 uarpAccessory];
    v30 = uarpAccessory;
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
      v35 = assetsCopy;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s: Unknown UARPAccessory %@, dropping it", buf, 0x16u);
    }
  }
}

- (void)_assetSolicitationComplete:(id)complete assetID:(id)d withStatus:(unint64_t)status
{
  completeCopy = complete;
  dCopy = d;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v50 = "[UARPHIDUpdater _assetSolicitationComplete:assetID:withStatus:]";
    v51 = 2112;
    v52 = completeCopy;
    v53 = 2112;
    v54 = dCopy;
    v55 = 2048;
    statusCopy = status;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: accessory=%@, assetID=%@, status=%lu", buf, 0x2Au);
  }

  v11 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessory:completeCopy];
  if (v11)
  {
    v12 = uarpAssetTagStructAnalytics();
    v13 = [[UARPAssetTag alloc] initWithChar1:*v12 char2:v12[1] char3:v12[2] char4:v12[3]];
    v14 = [dCopy tag];
    v15 = [v14 isEqual:v13];

    if (!status && v15)
    {
      v16 = [UARPDynamicAssetAnalyticsEvent alloc];
      localURL = [dCopy localURL];
      v18 = [v16 initWithURL:localURL];

      if ([v18 decomposeUARP])
      {
        [v18 send];
      }
    }

    v19 = +[UARPDynamicAssetMappedAnalyticsEvent tag];
    v20 = [dCopy tag];
    v21 = [v20 isEqual:v19];

    if (!status && v21)
    {
      v22 = [UARPDynamicAssetMappedAnalyticsEvent alloc];
      localURL2 = [dCopy localURL];
      serialNumber = [completeCopy serialNumber];
      v25 = [v22 initWithURL:localURL2 serialNumber:serialNumber];

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
      statusCopy2 = status;
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
      v44 = dCopy;
      statusCopy3 = status;
      dispatch_async(v37, v42);
    }

    pendingAssets = [completeCopy pendingAssets];
    v39 = [pendingAssets count];

    if (!v39 && !self->_unregisterOnComplete)
    {
      v40 = self->_log;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v50 = "[UARPHIDUpdater _assetSolicitationComplete:assetID:withStatus:]";
        v51 = 2112;
        v52 = completeCopy;
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
      v52 = completeCopy;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "%s: Unknown UARPAccessory %@, dropping it", buf, 0x16u);
    }
  }
}

- (void)assetSolicitationComplete:(id)complete assetID:(id)d withStatus:(unint64_t)status
{
  completeCopy = complete;
  dCopy = d;
  uarpHIDQueue = self->_uarpHIDQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100006A08;
  v13[3] = &unk_10002C700;
  v13[4] = self;
  v14 = completeCopy;
  v15 = dCopy;
  statusCopy = status;
  v11 = dCopy;
  v12 = completeCopy;
  dispatch_async(uarpHIDQueue, v13);
}

- (void)_accessoryTransportNeeded:(id)needed isNeeded:(BOOL)isNeeded
{
  isNeededCopy = isNeeded;
  neededCopy = needed;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v8 = @"NO";
    *buf = 136315650;
    v17 = "[UARPHIDUpdater _accessoryTransportNeeded:isNeeded:]";
    v18 = 2112;
    v19 = neededCopy;
    if (isNeededCopy)
    {
      v8 = @"YES";
    }

    v20 = 2112;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: accessory=%@, isNeeded=%@", buf, 0x20u);
  }

  v9 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessory:neededCopy];
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
      v15 = isNeededCopy;
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
      v19 = neededCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s: Unknown UARPAccessory %@, dropping it", buf, 0x16u);
    }
  }
}

- (void)accessoryTransportNeeded:(id)needed isNeeded:(BOOL)isNeeded
{
  neededCopy = needed;
  uarpHIDQueue = self->_uarpHIDQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006D0C;
  block[3] = &unk_10002C728;
  block[4] = self;
  v10 = neededCopy;
  isNeededCopy = isNeeded;
  v8 = neededCopy;
  dispatch_async(uarpHIDQueue, block);
}

- (void)_queryCompleteForAccessory:(id)accessory manufacturer:(id)manufacturer error:(id)error
{
  manufacturerCopy = manufacturer;
  errorCopy = error;
  v10 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessory:accessory];
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
      v16 = manufacturerCopy;
      v17 = errorCopy;
      dispatch_async(delegateQueue, v14);
    }

    else
    {
      [v11 updateProperty:0 value:manufacturerCopy];
    }
  }
}

- (void)queryCompleteForAccessory:(id)accessory manufacturer:(id)manufacturer error:(id)error
{
  accessoryCopy = accessory;
  manufacturerCopy = manufacturer;
  errorCopy = error;
  uarpHIDQueue = self->_uarpHIDQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100006F90;
  v15[3] = &unk_10002C548;
  v15[4] = self;
  v16 = accessoryCopy;
  v17 = manufacturerCopy;
  v18 = errorCopy;
  v12 = errorCopy;
  v13 = manufacturerCopy;
  v14 = accessoryCopy;
  dispatch_async(uarpHIDQueue, v15);
}

- (void)_queryCompleteForAccessory:(id)accessory modelName:(id)name error:(id)error
{
  nameCopy = name;
  errorCopy = error;
  v10 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessory:accessory];
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
      v16 = nameCopy;
      v17 = errorCopy;
      dispatch_async(delegateQueue, v14);
    }

    else
    {
      [v11 updateProperty:1 value:nameCopy];
    }
  }
}

- (void)queryCompleteForAccessory:(id)accessory modelName:(id)name error:(id)error
{
  accessoryCopy = accessory;
  nameCopy = name;
  errorCopy = error;
  uarpHIDQueue = self->_uarpHIDQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100007214;
  v15[3] = &unk_10002C548;
  v15[4] = self;
  v16 = accessoryCopy;
  v17 = nameCopy;
  v18 = errorCopy;
  v12 = errorCopy;
  v13 = nameCopy;
  v14 = accessoryCopy;
  dispatch_async(uarpHIDQueue, v15);
}

- (void)_queryCompleteForAccessory:(id)accessory firmwareVersion:(id)version error:(id)error
{
  versionCopy = version;
  errorCopy = error;
  v10 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessory:accessory];
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
      v16 = versionCopy;
      v17 = errorCopy;
      dispatch_async(delegateQueue, v14);
    }

    else
    {
      [v11 updateProperty:4 value:versionCopy];
    }
  }
}

- (void)queryCompleteForAccessory:(id)accessory firmwareVersion:(id)version error:(id)error
{
  accessoryCopy = accessory;
  versionCopy = version;
  errorCopy = error;
  uarpHIDQueue = self->_uarpHIDQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100007498;
  v15[3] = &unk_10002C548;
  v15[4] = self;
  v16 = accessoryCopy;
  v17 = versionCopy;
  v18 = errorCopy;
  v12 = errorCopy;
  v13 = versionCopy;
  v14 = accessoryCopy;
  dispatch_async(uarpHIDQueue, v15);
}

- (void)_queryCompleteForAccessory:(id)accessory stagedFirmwareVersion:(id)version error:(id)error
{
  versionCopy = version;
  errorCopy = error;
  v10 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessory:accessory];
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
      v16 = versionCopy;
      v17 = errorCopy;
      dispatch_async(delegateQueue, v14);
    }

    else
    {
      [v11 updateProperty:5 value:versionCopy];
    }
  }
}

- (void)queryCompleteForAccessory:(id)accessory stagedFirmwareVersion:(id)version error:(id)error
{
  accessoryCopy = accessory;
  versionCopy = version;
  errorCopy = error;
  uarpHIDQueue = self->_uarpHIDQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000771C;
  v15[3] = &unk_10002C548;
  v15[4] = self;
  v16 = accessoryCopy;
  v17 = versionCopy;
  v18 = errorCopy;
  v12 = errorCopy;
  v13 = versionCopy;
  v14 = accessoryCopy;
  dispatch_async(uarpHIDQueue, v15);
}

- (void)_queryCompleteForAccessory:(id)accessory stats:(id)stats error:(id)error
{
  statsCopy = stats;
  errorCopy = error;
  v10 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessory:accessory];
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
        v16 = statsCopy;
        v17 = errorCopy;
        dispatch_async(delegateQueue, v14);
      }
    }
  }
}

- (void)queryCompleteForAccessory:(id)accessory stats:(id)stats error:(id)error
{
  accessoryCopy = accessory;
  statsCopy = stats;
  errorCopy = error;
  uarpHIDQueue = self->_uarpHIDQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000798C;
  v15[3] = &unk_10002C548;
  v15[4] = self;
  v16 = accessoryCopy;
  v17 = statsCopy;
  v18 = errorCopy;
  v12 = errorCopy;
  v13 = statsCopy;
  v14 = accessoryCopy;
  dispatch_async(uarpHIDQueue, v15);
}

- (void)_queryCompleteForAccessory:(id)accessory hardwareVersion:(id)version error:(id)error
{
  versionCopy = version;
  errorCopy = error;
  v10 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessory:accessory];
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
      v16 = versionCopy;
      v17 = errorCopy;
      dispatch_async(delegateQueue, v14);
    }

    else
    {
      [v11 updateProperty:3 value:versionCopy];
    }
  }
}

- (void)queryCompleteForAccessory:(id)accessory hardwareVersion:(id)version error:(id)error
{
  accessoryCopy = accessory;
  versionCopy = version;
  errorCopy = error;
  uarpHIDQueue = self->_uarpHIDQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100007C10;
  v15[3] = &unk_10002C548;
  v15[4] = self;
  v16 = accessoryCopy;
  v17 = versionCopy;
  v18 = errorCopy;
  v12 = errorCopy;
  v13 = versionCopy;
  v14 = accessoryCopy;
  dispatch_async(uarpHIDQueue, v15);
}

- (void)_queryCompleteForAccessory:(id)accessory serialNumber:(id)number error:(id)error
{
  numberCopy = number;
  errorCopy = error;
  v10 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessory:accessory];
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
      v16 = numberCopy;
      v17 = errorCopy;
      dispatch_async(delegateQueue, v14);
    }

    else
    {
      [v11 updateProperty:2 value:numberCopy];
    }
  }
}

- (void)queryCompleteForAccessory:(id)accessory serialNumber:(id)number error:(id)error
{
  accessoryCopy = accessory;
  numberCopy = number;
  errorCopy = error;
  uarpHIDQueue = self->_uarpHIDQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100007E94;
  v15[3] = &unk_10002C548;
  v15[4] = self;
  v16 = accessoryCopy;
  v17 = numberCopy;
  v18 = errorCopy;
  v12 = errorCopy;
  v13 = numberCopy;
  v14 = accessoryCopy;
  dispatch_async(uarpHIDQueue, v15);
}

- (void)_queryCompleteForAccessory:(id)accessory appleModelNumber:(id)number error:(id)error
{
  numberCopy = number;
  errorCopy = error;
  v10 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessory:accessory];
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
      v20 = numberCopy;
      v21 = errorCopy;
      dispatch_async(delegateQueue, v18);
    }

    else
    {
      if (!errorCopy)
      {
        uarpAccessoryID = [v11 uarpAccessoryID];
        modelNumber = [uarpAccessoryID modelNumber];
        v16 = [numberCopy isEqualToString:modelNumber];

        if ((v16 & 1) == 0)
        {
          log = self->_log;
          if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
          {
            sub_10001D874(numberCopy, log, v11);
          }
        }
      }

      [v11 updateProperty:11 value:numberCopy];
    }
  }
}

- (void)queryCompleteForAccessory:(id)accessory appleModelNumber:(id)number error:(id)error
{
  accessoryCopy = accessory;
  numberCopy = number;
  errorCopy = error;
  uarpHIDQueue = self->_uarpHIDQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100008184;
  v15[3] = &unk_10002C548;
  v15[4] = self;
  v16 = accessoryCopy;
  v17 = numberCopy;
  v18 = errorCopy;
  v12 = errorCopy;
  v13 = numberCopy;
  v14 = accessoryCopy;
  dispatch_async(uarpHIDQueue, v15);
}

- (void)_queryCompleteForAccessory:(id)accessory hwFusingType:(id)type error:(id)error
{
  typeCopy = type;
  errorCopy = error;
  v10 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessory:accessory];
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
      v16 = typeCopy;
      v17 = errorCopy;
      dispatch_async(delegateQueue, v14);
    }

    else
    {
      [v11 updateProperty:12 value:typeCopy];
    }
  }
}

- (void)queryCompleteForAccessory:(id)accessory hwFusingType:(id)type error:(id)error
{
  accessoryCopy = accessory;
  typeCopy = type;
  errorCopy = error;
  uarpHIDQueue = self->_uarpHIDQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100008408;
  v15[3] = &unk_10002C548;
  v15[4] = self;
  v16 = accessoryCopy;
  v17 = typeCopy;
  v18 = errorCopy;
  v12 = errorCopy;
  v13 = typeCopy;
  v14 = accessoryCopy;
  dispatch_async(uarpHIDQueue, v15);
}

- (void)_queryCompleteForAccessory:(id)accessory friendlyName:(id)name error:(id)error
{
  nameCopy = name;
  errorCopy = error;
  v10 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessory:accessory];
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
      v16 = nameCopy;
      v17 = errorCopy;
      dispatch_async(delegateQueue, v14);
    }

    else
    {
      [v11 updateProperty:13 value:nameCopy];
    }
  }
}

- (void)queryCompleteForAccessory:(id)accessory friendlyName:(id)name error:(id)error
{
  accessoryCopy = accessory;
  nameCopy = name;
  errorCopy = error;
  uarpHIDQueue = self->_uarpHIDQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000868C;
  v15[3] = &unk_10002C548;
  v15[4] = self;
  v16 = accessoryCopy;
  v17 = nameCopy;
  v18 = errorCopy;
  v12 = errorCopy;
  v13 = nameCopy;
  v14 = accessoryCopy;
  dispatch_async(uarpHIDQueue, v15);
}

- (void)queryCompleteForAccessory:(id)accessory manifestPrefix:(id)prefix error:(id)error
{
  accessoryCopy = accessory;
  prefixCopy = prefix;
  errorCopy = error;
  uarpHIDQueue = self->_uarpHIDQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100008780;
  v15[3] = &unk_10002C548;
  v15[4] = self;
  v16 = accessoryCopy;
  v17 = prefixCopy;
  v18 = errorCopy;
  v12 = errorCopy;
  v13 = prefixCopy;
  v14 = accessoryCopy;
  dispatch_async(uarpHIDQueue, v15);
}

- (void)queryCompleteForAccessory:(id)accessory boardID:(unint64_t)d error:(id)error
{
  accessoryCopy = accessory;
  errorCopy = error;
  uarpHIDQueue = self->_uarpHIDQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000089AC;
  v13[3] = &unk_10002C700;
  v13[4] = self;
  v14 = accessoryCopy;
  v15 = errorCopy;
  dCopy = d;
  v11 = errorCopy;
  v12 = accessoryCopy;
  dispatch_async(uarpHIDQueue, v13);
}

- (void)queryCompleteForAccessory:(id)accessory chipID:(unint64_t)d error:(id)error
{
  accessoryCopy = accessory;
  errorCopy = error;
  uarpHIDQueue = self->_uarpHIDQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100008BC8;
  v13[3] = &unk_10002C700;
  v13[4] = self;
  v14 = accessoryCopy;
  v15 = errorCopy;
  dCopy = d;
  v11 = errorCopy;
  v12 = accessoryCopy;
  dispatch_async(uarpHIDQueue, v13);
}

- (void)queryCompleteForAccessory:(id)accessory chipRevision:(unint64_t)revision error:(id)error
{
  accessoryCopy = accessory;
  errorCopy = error;
  uarpHIDQueue = self->_uarpHIDQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100008DE4;
  v13[3] = &unk_10002C700;
  v13[4] = self;
  v14 = accessoryCopy;
  v15 = errorCopy;
  revisionCopy = revision;
  v11 = errorCopy;
  v12 = accessoryCopy;
  dispatch_async(uarpHIDQueue, v13);
}

- (void)queryCompleteForAccessory:(id)accessory ecid:(unint64_t)ecid error:(id)error
{
  accessoryCopy = accessory;
  errorCopy = error;
  uarpHIDQueue = self->_uarpHIDQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100009000;
  v13[3] = &unk_10002C700;
  v13[4] = self;
  v14 = accessoryCopy;
  v15 = errorCopy;
  ecidCopy = ecid;
  v11 = errorCopy;
  v12 = accessoryCopy;
  dispatch_async(uarpHIDQueue, v13);
}

- (void)queryCompleteForAccessory:(id)accessory securityDomain:(unint64_t)domain error:(id)error
{
  accessoryCopy = accessory;
  errorCopy = error;
  uarpHIDQueue = self->_uarpHIDQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000921C;
  v13[3] = &unk_10002C700;
  v13[4] = self;
  v14 = accessoryCopy;
  v15 = errorCopy;
  domainCopy = domain;
  v11 = errorCopy;
  v12 = accessoryCopy;
  dispatch_async(uarpHIDQueue, v13);
}

- (void)queryCompleteForAccessory:(id)accessory securityMode:(unint64_t)mode error:(id)error
{
  accessoryCopy = accessory;
  errorCopy = error;
  uarpHIDQueue = self->_uarpHIDQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100009438;
  v13[3] = &unk_10002C700;
  v13[4] = self;
  v14 = accessoryCopy;
  v15 = errorCopy;
  modeCopy = mode;
  v11 = errorCopy;
  v12 = accessoryCopy;
  dispatch_async(uarpHIDQueue, v13);
}

- (void)queryCompleteForAccessory:(id)accessory productionMode:(unint64_t)mode error:(id)error
{
  accessoryCopy = accessory;
  errorCopy = error;
  uarpHIDQueue = self->_uarpHIDQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100009654;
  v13[3] = &unk_10002C700;
  v13[4] = self;
  v14 = accessoryCopy;
  v15 = errorCopy;
  modeCopy = mode;
  v11 = errorCopy;
  v12 = accessoryCopy;
  dispatch_async(uarpHIDQueue, v13);
}

- (void)queryCompleteForAccessory:(id)accessory epoch:(unint64_t)epoch error:(id)error
{
  accessoryCopy = accessory;
  errorCopy = error;
  uarpHIDQueue = self->_uarpHIDQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100009870;
  v13[3] = &unk_10002C700;
  v13[4] = self;
  v14 = accessoryCopy;
  v15 = errorCopy;
  epochCopy = epoch;
  v11 = errorCopy;
  v12 = accessoryCopy;
  dispatch_async(uarpHIDQueue, v13);
}

- (void)queryCompleteForAccessory:(id)accessory enableMixMatch:(BOOL)match error:(id)error
{
  accessoryCopy = accessory;
  errorCopy = error;
  uarpHIDQueue = self->_uarpHIDQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100009A90;
  v13[3] = &unk_10002C750;
  v13[4] = self;
  v14 = accessoryCopy;
  matchCopy = match;
  v15 = errorCopy;
  v11 = errorCopy;
  v12 = accessoryCopy;
  dispatch_async(uarpHIDQueue, v13);
}

- (void)queryCompleteForAccessory:(id)accessory liveNonce:(BOOL)nonce error:(id)error
{
  accessoryCopy = accessory;
  errorCopy = error;
  uarpHIDQueue = self->_uarpHIDQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100009CB8;
  v13[3] = &unk_10002C750;
  v13[4] = self;
  v14 = accessoryCopy;
  nonceCopy = nonce;
  v15 = errorCopy;
  v11 = errorCopy;
  v12 = accessoryCopy;
  dispatch_async(uarpHIDQueue, v13);
}

- (void)queryCompleteForAccessory:(id)accessory prefixNeedsLUN:(BOOL)n error:(id)error
{
  accessoryCopy = accessory;
  errorCopy = error;
  uarpHIDQueue = self->_uarpHIDQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100009EE0;
  v13[3] = &unk_10002C750;
  v13[4] = self;
  v14 = accessoryCopy;
  nCopy = n;
  v15 = errorCopy;
  v11 = errorCopy;
  v12 = accessoryCopy;
  dispatch_async(uarpHIDQueue, v13);
}

- (void)queryCompleteForAccessory:(id)accessory suffixNeedsLUN:(BOOL)n error:(id)error
{
  accessoryCopy = accessory;
  errorCopy = error;
  uarpHIDQueue = self->_uarpHIDQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000A108;
  v13[3] = &unk_10002C750;
  v13[4] = self;
  v14 = accessoryCopy;
  nCopy = n;
  v15 = errorCopy;
  v11 = errorCopy;
  v12 = accessoryCopy;
  dispatch_async(uarpHIDQueue, v13);
}

- (void)queryCompleteForAccessory:(id)accessory nonceSeed:(id)seed error:(id)error
{
  accessoryCopy = accessory;
  seedCopy = seed;
  errorCopy = error;
  uarpHIDQueue = self->_uarpHIDQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000A348;
  v15[3] = &unk_10002C548;
  v15[4] = self;
  v16 = accessoryCopy;
  v17 = seedCopy;
  v18 = errorCopy;
  v12 = errorCopy;
  v13 = seedCopy;
  v14 = accessoryCopy;
  dispatch_async(uarpHIDQueue, v15);
}

- (void)queryCompleteForAccessory:(id)accessory nonceHash:(id)hash error:(id)error
{
  accessoryCopy = accessory;
  hashCopy = hash;
  errorCopy = error;
  uarpHIDQueue = self->_uarpHIDQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000A590;
  v15[3] = &unk_10002C548;
  v15[4] = self;
  v16 = accessoryCopy;
  v17 = hashCopy;
  v18 = errorCopy;
  v12 = errorCopy;
  v13 = hashCopy;
  v14 = accessoryCopy;
  dispatch_async(uarpHIDQueue, v15);
}

- (void)_queryCompleteForAccessoryID:(id)d appleModelNumber:(id)number error:(id)error
{
  numberCopy = number;
  errorCopy = error;
  v10 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessory:d];
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
        v16 = numberCopy;
        v17 = errorCopy;
        dispatch_async(delegateQueue, v14);
      }
    }
  }
}

- (void)queryCompleteForAccessoryID:(id)d appleModelNumber:(id)number error:(id)error
{
  dCopy = d;
  numberCopy = number;
  errorCopy = error;
  uarpHIDQueue = self->_uarpHIDQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000A954;
  v15[3] = &unk_10002C548;
  v15[4] = self;
  v16 = dCopy;
  v17 = numberCopy;
  v18 = errorCopy;
  v12 = errorCopy;
  v13 = numberCopy;
  v14 = dCopy;
  dispatch_async(uarpHIDQueue, v15);
}

- (void)_queryCompleteForAccessoryID:(id)d hwFusingType:(id)type error:(id)error
{
  typeCopy = type;
  errorCopy = error;
  v10 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessory:d];
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
        v16 = typeCopy;
        v17 = errorCopy;
        dispatch_async(delegateQueue, v14);
      }
    }
  }
}

- (void)queryCompleteForAccessoryID:(id)d hwFusingType:(id)type error:(id)error
{
  dCopy = d;
  typeCopy = type;
  errorCopy = error;
  uarpHIDQueue = self->_uarpHIDQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000ABC4;
  v15[3] = &unk_10002C548;
  v15[4] = self;
  v16 = dCopy;
  v17 = typeCopy;
  v18 = errorCopy;
  v12 = errorCopy;
  v13 = typeCopy;
  v14 = dCopy;
  dispatch_async(uarpHIDQueue, v15);
}

- (void)_queryCompleteForAccessoryID:(id)d friendlyName:(id)name error:(id)error
{
  nameCopy = name;
  errorCopy = error;
  v10 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessory:d];
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
        v16 = nameCopy;
        v17 = errorCopy;
        dispatch_async(delegateQueue, v14);
      }
    }
  }
}

- (void)queryCompleteForAccessoryID:(id)d friendlyName:(id)name error:(id)error
{
  dCopy = d;
  nameCopy = name;
  errorCopy = error;
  uarpHIDQueue = self->_uarpHIDQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000AE34;
  v15[3] = &unk_10002C548;
  v15[4] = self;
  v16 = dCopy;
  v17 = nameCopy;
  v18 = errorCopy;
  v12 = errorCopy;
  v13 = nameCopy;
  v14 = dCopy;
  dispatch_async(uarpHIDQueue, v15);
}

- (void)_firmwareStagingProgress:(id)progress assetID:(id)d bytesSent:(unint64_t)sent bytesTotal:(unint64_t)total
{
  progressCopy = progress;
  dCopy = d;
  v12 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessory:progressCopy];
  log = self->_log;
  v14 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
  if (v12)
  {
    if (v14)
    {
      *buf = 136315906;
      v26 = "[UARPHIDUpdater _firmwareStagingProgress:assetID:bytesSent:bytesTotal:]";
      v27 = 2112;
      v28 = progressCopy;
      v29 = 2112;
      v30 = dCopy;
      v31 = 2048;
      v32 = ((sent / total) * 100.0);
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: accessory=%@, assetID=%@, progress=%f", buf, 0x2Au);
    }

    v15 = +[NSDate now];
    lastReportedStagingTime = [v12 lastReportedStagingTime];
    v17 = [lastReportedStagingTime dateByAddingTimeInterval:300.0];

    if ([v15 compare:v17] == 1)
    {
      [v12 setLastReportedStagingTime:v15];
      uarpAccessory = [v12 uarpAccessory];
      [(UARPHIDUpdater *)self qPostStagingStatusNotificationForAccessory:uarpAccessory status:1];
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
      sentCopy = sent;
      totalCopy = total;
      dispatch_async(delegateQueue, v21);
    }
  }

  else if (v14)
  {
    *buf = 136315394;
    v26 = "[UARPHIDUpdater _firmwareStagingProgress:assetID:bytesSent:bytesTotal:]";
    v27 = 2112;
    v28 = progressCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Unknown UARPAccessory %@, dropping it", buf, 0x16u);
  }
}

- (void)firmwareStagingProgress:(id)progress assetID:(id)d bytesSent:(unint64_t)sent bytesTotal:(unint64_t)total
{
  progressCopy = progress;
  dCopy = d;
  uarpHIDQueue = self->_uarpHIDQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B214;
  block[3] = &unk_10002C7A0;
  block[4] = self;
  v16 = progressCopy;
  v17 = dCopy;
  sentCopy = sent;
  totalCopy = total;
  v13 = dCopy;
  v14 = progressCopy;
  dispatch_async(uarpHIDQueue, block);
}

- (void)_assetSolicitationProgress:(id)progress assetID:(id)d bytesReceived:(unint64_t)received bytesTotal:(unint64_t)total
{
  progressCopy = progress;
  dCopy = d;
  v12 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessory:progressCopy];
  log = self->_log;
  v14 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
  if (v12)
  {
    if (v14)
    {
      *buf = 136315906;
      v21 = "[UARPHIDUpdater _assetSolicitationProgress:assetID:bytesReceived:bytesTotal:]";
      v22 = 2112;
      v23 = progressCopy;
      v24 = 2112;
      v25 = dCopy;
      v26 = 2048;
      v27 = ((received / total) * 100.0);
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: accessory=%@, assetID=%@, progress=%f", buf, 0x2Au);
    }

    delegateQueue = self->_delegateQueue;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000B41C;
    v16[3] = &unk_10002C778;
    v16[4] = self;
    v17 = v12;
    receivedCopy = received;
    totalCopy = total;
    dispatch_async(delegateQueue, v16);
  }

  else if (v14)
  {
    *buf = 136315394;
    v21 = "[UARPHIDUpdater _assetSolicitationProgress:assetID:bytesReceived:bytesTotal:]";
    v22 = 2112;
    v23 = progressCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Unknown UARPAccessory %@, dropping it", buf, 0x16u);
  }
}

- (void)assetSolicitationProgress:(id)progress assetID:(id)d bytesReceived:(unint64_t)received bytesTotal:(unint64_t)total
{
  progressCopy = progress;
  dCopy = d;
  uarpHIDQueue = self->_uarpHIDQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B554;
  block[3] = &unk_10002C7A0;
  block[4] = self;
  v16 = progressCopy;
  v17 = dCopy;
  receivedCopy = received;
  totalCopy = total;
  v13 = dCopy;
  v14 = progressCopy;
  dispatch_async(uarpHIDQueue, block);
}

- (BOOL)sendMessageToAccessory:(id)accessory uarpMsg:(id)msg error:(id *)error
{
  accessoryCopy = accessory;
  msgCopy = msg;
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
  v14 = accessoryCopy;
  v15 = msgCopy;
  v16 = &v17;
  v10 = msgCopy;
  v11 = accessoryCopy;
  dispatch_async(uarpHIDQueue, v13);
  LOBYTE(uarpHIDQueue) = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return uarpHIDQueue;
}

- (void)_stagedFirmwareApplicationComplete:(id)complete withStatus:(unint64_t)status
{
  completeCopy = complete;
  v7 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessory:completeCopy];
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
      statusCopy = status;
      dispatch_async(delegateQueue, block);
    }
  }

  pendingAssets = [completeCopy pendingAssets];
  v11 = [pendingAssets count];

  if (!v11)
  {
    [v7 setUpdateInProgress:0];
    uarpAccessory = [v7 uarpAccessory];
    [(UARPHIDUpdater *)self qReleasePowerAssertionForAccessory:uarpAccessory];

    uarpAccessory2 = [v7 uarpAccessory];
    [(UARPHIDUpdater *)self qPostStagingStatusNotificationForAccessory:uarpAccessory2 status:0];
  }
}

- (void)stagedFirmwareApplicationComplete:(id)complete withStatus:(unint64_t)status
{
  completeCopy = complete;
  uarpHIDQueue = self->_uarpHIDQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B910;
  block[3] = &unk_10002C6D8;
  block[4] = self;
  v10 = completeCopy;
  statusCopy = status;
  v8 = completeCopy;
  dispatch_async(uarpHIDQueue, block);
}

- (void)_stagedFirmwareRescindComplete:(id)complete withStatus:(unint64_t)status
{
  v6 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessory:complete];
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
      statusCopy = status;
      dispatch_async(delegateQueue, block);
    }
  }
}

- (void)stagedFirmwareRescindComplete:(id)complete withStatus:(unint64_t)status
{
  completeCopy = complete;
  uarpHIDQueue = self->_uarpHIDQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000BAEC;
  block[3] = &unk_10002C6D8;
  block[4] = self;
  v10 = completeCopy;
  statusCopy = status;
  v8 = completeCopy;
  dispatch_async(uarpHIDQueue, block);
}

- (id)createAndSaveUARPHIDAccessoryFromService:(unsigned int)service identifier:(id)identifier
{
  identifierCopy = identifier;
  properties = 0;
  v9 = IOHIDDeviceCreate(kCFAllocatorDefault, service);
  if (!v9)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10001D9D0();
    }

    goto LABEL_44;
  }

  v10 = v9;
  IORegistryEntryCreateCFProperties(service, &properties, kCFAllocatorDefault, 0);
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
  selfCopy = self;
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
  obj = selfCopy->_uarpHIDAccessories;
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
        uarpAccessoryID = [*(*(&v71 + 1) + 8 * v16) uarpAccessoryID];
        serialNumber = [uarpAccessoryID serialNumber];
        if ([serialNumber isEqualToString:v11])
        {

LABEL_46:
          v37 = selfCopy->_log;
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v38 = v37;
            uarpAccessoryID2 = [v17 uarpAccessoryID];
            *buf = 136315906;
            v79 = "[UARPHIDUpdater createAndSaveUARPHIDAccessoryFromService:identifier:]";
            v80 = 2112;
            v81 = uarpAccessoryID2;
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
          locationID = [v17 locationID];
          v19 = [locationID isEqualToNumber:v62];

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
        identifier = [v24 identifier];
        v26 = [identifier isEqualToString:identifierCopy];

        if (v26)
        {
          v40 = v24;

          v22 = v40;
          goto LABEL_50;
        }

        hardwareID = [v24 hardwareID];
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        personalities = [hardwareID personalities];
        v29 = [personalities countByEnumeratingWithState:&v63 objects:v76 count:16];
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
                objc_enumerationMutation(personalities);
              }

              v33 = *(*(&v63 + 1) + 8 * j);
              identifier2 = [v24 identifier];
              v35 = [v33 personalityIdentifier:identifier2];

              if ([v35 isEqualToString:identifierCopy])
              {
                v22 = v24;

                v21 = v54;
                v11 = v55;
                goto LABEL_37;
              }
            }

            v30 = [personalities countByEnumeratingWithState:&v63 objects:v76 count:16];
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
      identifier3 = [v22 identifier];
      v43 = [v41 initWithModelNumber:identifier3];
      v20 = obja;
      [(UARPHIDAccessory *)obja setUarpAccessoryID:v43];

      uarpAccessoryID3 = [(UARPHIDAccessory *)obja uarpAccessoryID];
      [uarpAccessoryID3 setSerialNumber:v11];

      [(UARPHIDAccessory *)obja setLocationID:v62];
      capabilities = [v22 capabilities];
      uarpAccessoryID4 = [(UARPHIDAccessory *)obja uarpAccessoryID];
      [uarpAccessoryID4 setCapability:capabilities];

      v47 = selfCopy->_log;
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v48 = v47;
        uarpAccessoryID5 = [(UARPHIDAccessory *)obja uarpAccessoryID];
        capability = [uarpAccessoryID5 capability];
        *buf = 136315650;
        v79 = "[UARPHIDUpdater createAndSaveUARPHIDAccessoryFromService:identifier:]";
        v80 = 2112;
        v81 = identifierCopy;
        v82 = 2048;
        v83 = capability;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%s: identifier=%@ cap=0x%llx", buf, 0x20u);
      }

      [(NSMutableSet *)selfCopy->_uarpHIDAccessories addObject:obja];
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

- (void)queryPropertiesForUARPHIDAccessory:(id)accessory completionCallback:(id)callback
{
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_10000C354;
  v15 = &unk_10002C7C8;
  selfCopy = self;
  callbackCopy = callback;
  v6 = callbackCopy;
  accessoryCopy = accessory;
  [accessoryCopy internalQueryStartWithCompletionCallback:&v12];
  propertiesToQuery = [accessoryCopy propertiesToQuery];
  allObjects = [propertiesToQuery allObjects];
  v10 = [NSArray arrayWithArray:allObjects];

  uarpAccessoryID = [accessoryCopy uarpAccessoryID];

  [(UARPHIDUpdater *)self _queryProperties:v10 accessoryID:uarpAccessoryID goldrestoreQuery:0];
}

- (id)createUARPAccessoryFromAccessoryID:(id)d
{
  dCopy = d;
  v5 = [(UARPHIDUpdater *)self uuidForAccessoryID:dCopy];
  productGroup = [dCopy productGroup];
  if (productGroup && (v7 = productGroup, [dCopy productNumber], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
  {
    v9 = [UARPAccessory alloc];
    productGroup2 = [dCopy productGroup];
    productNumber = [dCopy productNumber];
    v12 = [v9 initWithProductGroup:productGroup2 productNumber:productNumber uuid:v5];
  }

  else
  {
    modelNumber = [dCopy modelNumber];
    productGroup2 = [UARPSupportedAccessory findByAppleModelNumber:modelNumber];

    v14 = [UARPAccessory alloc];
    productNumber = [productGroup2 hardwareID];
    v12 = [v14 initWithHardwareID:productNumber uuid:v5];
  }

  v15 = v12;

  [v15 setSuppressAutomaticDynamicAssets:{objc_msgSend(dCopy, "suppressAutomaticDynamicAssets")}];
  [v15 setSuppressInfoQueries:{objc_msgSend(dCopy, "suppressInfoQueries")}];

  return v15;
}

- (id)uuidForAccessoryID:(id)d
{
  dCopy = d;
  serialNumber = [dCopy serialNumber];

  if (!serialNumber)
  {
    goto LABEL_12;
  }

  productGroup = [dCopy productGroup];
  if (productGroup)
  {
    v7 = productGroup;
    productNumber = [dCopy productNumber];

    if (productNumber)
    {
      productGroup2 = [dCopy productGroup];
      productNumber2 = [dCopy productNumber];
      serialNumber2 = [dCopy serialNumber];
      v12 = [NSString stringWithFormat:@"%@%@-%@", productGroup2, productNumber2, serialNumber2];

      goto LABEL_7;
    }
  }

  modelNumber = [dCopy modelNumber];

  if (!modelNumber)
  {
LABEL_12:
    v16 = +[NSUUID UUID];
    goto LABEL_18;
  }

  productGroup2 = [dCopy modelNumber];
  productNumber2 = [dCopy serialNumber];
  v12 = [NSString stringWithFormat:@"%@-%@", productGroup2, productNumber2];
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
    v24 = dCopy;
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
    v24 = dCopy;
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

- (id)getUARPHIDAccessoryForUARPAccessoryID:(id)d
{
  dCopy = d;
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
  v6 = dCopy;
  v10 = v6;
  v11 = &v12;
  [(NSMutableSet *)uarpHIDAccessories enumerateObjectsUsingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)getUARPHIDAccessoryForUARPAccessory:(id)accessory
{
  accessoryCopy = accessory;
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
  v6 = accessoryCopy;
  v10 = v6;
  v11 = &v12;
  [(NSMutableSet *)uarpHIDAccessories enumerateObjectsUsingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (BOOL)registerHIDForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v5 = IOHIDDeviceOpen([accessoryCopy hidDeviceRef], 0);
  if (!v5)
  {
    IOHIDDeviceRegisterRemovalCallback([accessoryCopy hidDeviceRef], sub_10000CE10, accessoryCopy);
    hidDeviceRef = [accessoryCopy hidDeviceRef];
    hidBuffer = [accessoryCopy hidBuffer];
    mutableBytes = [hidBuffer mutableBytes];
    hidBuffer2 = [accessoryCopy hidBuffer];
    IOHIDDeviceRegisterInputReportCallback(hidDeviceRef, mutableBytes, [hidBuffer2 length], sub_10001CAD0, accessoryCopy);

    ++self->_hidDevicesRegistered;
    uarpHIDRegistrationThread = self->_uarpHIDRegistrationThread;
    if (uarpHIDRegistrationThread)
    {
      [(UARPHIDUpdater *)self performSelector:"scheduleHIDDeviceForAccessory:" onThread:uarpHIDRegistrationThread withObject:accessoryCopy waitUntilDone:1];
    }

    else
    {
      v11 = [[NSThread alloc] initWithTarget:self selector:"runHIDRegistrationThread:" object:accessoryCopy];
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

- (BOOL)unRegisterHIDCallbacksForUARPHIDAccessory:(id)accessory
{
  accessoryCopy = accessory;
  if ([accessoryCopy hidDeviceScheduled])
  {
    if ([accessoryCopy hidDeviceScheduled])
    {
      --self->_hidDevicesRegistered;
      [(UARPHIDUpdater *)self performSelector:"unScheduleHIDDeviceForAccessory:" onThread:self->_uarpHIDRegistrationThread withObject:accessoryCopy waitUntilDone:1];
      IOHIDDeviceClose([accessoryCopy hidDeviceRef], 0);
      CFRelease([accessoryCopy hidDeviceRef]);
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
      {
        v9 = 136315394;
        v10 = "[UARPHIDUpdater unRegisterHIDCallbacksForUARPHIDAccessory:]";
        v11 = 2112;
        v12 = accessoryCopy;
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

    [accessoryCopy setHidReportSizeInput:0];
    [accessoryCopy setHidReportSizeOutput:0];
    [accessoryCopy setHidReportID:0];
    [accessoryCopy setExpectedHIDMessageID:1];
    [accessoryCopy setHidMessageID:0];
    [accessoryCopy setHidDeviceScheduled:0];
    [(NSMutableSet *)self->_uarpHIDAccessories removeObject:accessoryCopy];
  }

  else
  {
    sub_10001DB40(self, accessoryCopy);
  }

  return 1;
}

- (unsigned)getReportSizeForReportUsage:(unsigned int)usage forAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = IOHIDDeviceCopyMatchingElements([accessoryCopy hidDeviceRef], &off_10002D488, 0);
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
        if (IOHIDElementGetUsage(v11) == usage)
        {
          ReportSize = IOHIDElementGetReportSize(v11);
          ReportID = IOHIDElementGetReportID(v11);
          [accessoryCopy setHidReportID:{ReportID, v15}];
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

- (id)matchingDictionaryForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [UARPSupportedAccessory findByAppleModelNumber:identifierCopy];
  hardwareID = [v5 hardwareID];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    hardwareID2 = [v5 hardwareID];
    v9 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [hardwareID2 vendorID]);
    v10 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [hardwareID2 productID]);

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

- (id)matchingDictionaryForIdentifier:(id)identifier hardwareID:(UARPHIDHardwareID *)d
{
  identifierCopy = identifier;
  v6 = [UARPSupportedAccessory findByAppleModelNumber:identifierCopy];
  hardwareID = [v6 hardwareID];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    hardwareID2 = [v6 hardwareID];
    v10 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [hardwareID2 vendorID]);
    v11 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [hardwareID2 productID]);

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

- (id)matchingDictionaryForVendorID:(id)d productID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  v7 = [NSNumber numberWithUnsignedInt:70];
  v8 = [NSNumber numberWithUnsignedInt:65280];
  v9 = IOServiceMatching("IOHIDDevice");
  [(__CFDictionary *)v9 setObject:dCopy forKey:@"VendorID"];

  [(__CFDictionary *)v9 setObject:iDCopy forKey:@"ProductID"];
  [(__CFDictionary *)v9 setObject:v7 forKey:@"DeviceUsage"];
  [(__CFDictionary *)v9 setObject:v8 forKey:@"DeviceUsagePage"];
  [(__CFDictionary *)v9 setObject:&__kCFBooleanTrue forKey:@"IOMatchLaunchStream"];

  return v9;
}

- (void)runHIDRegistrationThread:(id)thread
{
  [(UARPHIDUpdater *)self scheduleHIDDeviceForAccessory:thread];
  dispatch_semaphore_signal(self->_uarpHIDRegistrationThreadSemaphore);

  CFRunLoopRun();
}

- (void)stopHIDRegistrationThread
{
  Current = CFRunLoopGetCurrent();

  CFRunLoopStop(Current);
}

- (void)scheduleHIDDeviceForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  Current = CFRunLoopGetCurrent();
  IOHIDDeviceScheduleWithRunLoop([accessoryCopy hidDeviceRef], Current, kCFRunLoopDefaultMode);
  [accessoryCopy setHidDeviceScheduled:1];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[UARPHIDUpdater scheduleHIDDeviceForAccessory:]";
    v9 = 2112;
    v10 = accessoryCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: accessory=%@ now scheduled for HID Callbacks", &v7, 0x16u);
  }
}

- (void)unScheduleHIDDeviceForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  Current = CFRunLoopGetCurrent();
  IOHIDDeviceUnscheduleFromRunLoop([accessoryCopy hidDeviceRef], Current, kCFRunLoopDefaultMode);
  [accessoryCopy setHidDeviceScheduled:0];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[UARPHIDUpdater unScheduleHIDDeviceForAccessory:]";
    v9 = 2112;
    v10 = accessoryCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: accessory=%@ now unscheduled for HID Callbacks", &v7, 0x16u);
  }
}

- (void)handleHIDDisconnectForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v5 = accessoryCopy;
  if (accessoryCopy)
  {
    if ([accessoryCopy updateInProgress])
    {
      [v5 setUpdateInProgress:0];
      uarpAccessory = [v5 uarpAccessory];
      [(UARPHIDUpdater *)self qReleasePowerAssertionForAccessory:uarpAccessory];

      uarpAccessory2 = [v5 uarpAccessory];
      [(UARPHIDUpdater *)self qPostStagingStatusNotificationForAccessory:uarpAccessory2 status:0];
    }

    uarpController = self->_uarpController;
    uarpAccessory3 = [v5 uarpAccessory];
    [(UARPController *)uarpController removeAccessory:uarpAccessory3];

    goldRestoreDelegate = self->_goldRestoreDelegate;
    if (objc_opt_respondsToSelector())
    {
      delegateQueue = self->_delegateQueue;
      v13 = _NSConcreteStackBlock;
      v14 = 3221225472;
      v15 = sub_10000DA30;
      v16 = &unk_10002C598;
      selfCopy = self;
      v18 = v5;
      dispatch_async(delegateQueue, &v13);
    }

    [(UARPHIDUpdater *)self unRegisterHIDCallbacksForUARPHIDAccessory:v5, v13, v14, v15, v16, selfCopy];
    [(NSMutableSet *)self->_uarpHIDAccessories removeObject:v5];
    [v5 handleHIDDisconnect];
    if (![(NSMutableSet *)self->_uarpHIDAccessories count])
    {
      v12 = self->_uarpController;
      self->_uarpController = 0;
    }
  }
}

- (void)parseInputReport:(id)report forAccessory:(id)accessory
{
  reportCopy = report;
  accessoryCopy = accessory;
  uarpHIDQueue = self->_uarpHIDQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001D244;
  block[3] = &unk_10002C6B0;
  v12 = reportCopy;
  v13 = accessoryCopy;
  selfCopy = self;
  v9 = accessoryCopy;
  v10 = reportCopy;
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

- (void)solicitDynamicAssetForAccessories:(id)accessories assetID:(id)d
{
  accessoriesCopy = accessories;
  dCopy = d;
  uarpHIDQueue = self->_uarpHIDQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000DC94;
  block[3] = &unk_10002C6B0;
  block[4] = self;
  v12 = accessoriesCopy;
  v13 = dCopy;
  v9 = dCopy;
  v10 = accessoriesCopy;
  dispatch_sync(uarpHIDQueue, block);
}

- (void)removeAccessoryID:(id)d
{
  v4 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessoryID:d];
  if (v4)
  {
    uarpController = self->_uarpController;
    v7 = v4;
    uarpAccessory = [v4 uarpAccessory];
    [(UARPController *)uarpController accessoryUnreachable:uarpAccessory];

    v4 = v7;
  }
}

- (void)startTapToRadar:(id)radar
{
  radarCopy = radar;
  uarpHIDQueue = self->_uarpHIDQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000E0E0;
  v7[3] = &unk_10002C598;
  v7[4] = self;
  v8 = radarCopy;
  v6 = radarCopy;
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

- (void)tssResponse:(id)response
{
  responseCopy = response;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[UARPHIDUpdater tssResponse:]";
    v12 = 2112;
    v13 = responseCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Tatsu Response, %@", buf, 0x16u);
  }

  uarpHIDQueue = self->_uarpHIDQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000E53C;
  v8[3] = &unk_10002C598;
  v8[4] = self;
  v9 = responseCopy;
  v7 = responseCopy;
  dispatch_sync(uarpHIDQueue, v8);
}

- (void)assetStagingPause:(id)pause
{
  pauseCopy = pause;
  uarpHIDQueue = self->_uarpHIDQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000E5E0;
  v7[3] = &unk_10002C598;
  v7[4] = self;
  v8 = pauseCopy;
  v6 = pauseCopy;
  dispatch_async(uarpHIDQueue, v7);
}

- (void)assetStagingResume:(id)resume
{
  resumeCopy = resume;
  uarpHIDQueue = self->_uarpHIDQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000E688;
  v7[3] = &unk_10002C598;
  v7[4] = self;
  v8 = resumeCopy;
  v6 = resumeCopy;
  dispatch_async(uarpHIDQueue, v7);
}

- (BOOL)registerHIDCallbacksForUARPHIDAccessory:(id)accessory
{
  accessoryCopy = accessory;
  if (![accessoryCopy hidDeviceRef])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      *v12 = 136315394;
      sub_10000E790();
      v13 = accessoryCopy;
      sub_10000E818(&_mh_execute_header, log, v9, "%s: accessory=%@ already disconnected", v12);
    }

    goto LABEL_8;
  }

  if (![accessoryCopy hidDeviceScheduled])
  {
    [accessoryCopy setHidReportSizeInput:{-[UARPHIDUpdater getReportSizeForReportUsage:forAccessory:](self, "getReportSizeForReportUsage:forAccessory:", 1, accessoryCopy) >> 3}];
    if ([accessoryCopy hidReportSizeInput])
    {
      [accessoryCopy setHidReportSizeOutput:{-[UARPHIDUpdater getReportSizeForReportUsage:forAccessory:](self, "getReportSizeForReportUsage:forAccessory:", 2, accessoryCopy) >> 3}];
      if ([accessoryCopy hidReportSizeOutput])
      {
        v5 = [[NSMutableData alloc] initWithLength:{objc_msgSend(accessoryCopy, "hidReportSizeInput") + 1}];
        [accessoryCopy setHidBuffer:v5];

        v6 = [(UARPHIDUpdater *)self registerHIDForAccessory:accessoryCopy];
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
    v13 = accessoryCopy;
    sub_10000E7EC(&_mh_execute_header, v10, v11, "%s: accessory=%@ already registered for HID Callbacks", v12);
  }

LABEL_9:

  return v6;
}

- (BOOL)sendHIDReportToAccessory:(id)accessory forUARPMessage:(id)message error:(id *)error
{
  accessoryCopy = accessory;
  messageCopy = message;
  v9 = messageCopy;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (!accessoryCopy || !messageCopy)
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

  v19 = [(UARPHIDUpdater *)self getUARPHIDAccessoryForUARPAccessory:accessoryCopy];
  if (v19)
  {
    v12 = v19;
    if ([v19 hidDeviceScheduled])
    {
      v44 = [v9 length];
      v10 = objc_alloc_init(NSMutableData);
      transport = [v12 transport];
      v21 = [transport containsString:@"Bluetooth"];

      if (v21)
      {
        buf[0] = [v12 hidReportID];
        [v10 appendBytes:buf length:1];
      }

      v43 = (self->_sessionID << 14) | 2;
      [v10 appendBytes:&v43 length:2];
      [v12 setHidMessageID:{(objc_msgSend(v12, "hidMessageID") + 1)}];
      hidMessageID = [v12 hidMessageID];
      [v10 appendBytes:&hidMessageID length:2];
      [v10 appendBytes:&v44 length:2];
      [v10 appendBytes:objc_msgSend(v9 length:{"bytes"), objc_msgSend(v9, "length")}];
      v22 = [v10 length];
      hidReportSizeOutput = [v12 hidReportSizeOutput];
      v24 = self->_log;
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);
      if (v22 > hidReportSizeOutput)
      {
        if (v25)
        {
          v37 = v24;
          v38 = [v10 length];
          hidReportSizeOutput2 = [v12 hidReportSizeOutput];
          *buf = 134218240;
          v46 = v38;
          v47 = 1024;
          LODWORD(v48) = hidReportSizeOutput2;
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
      v48 = accessoryCopy;
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
      v48 = accessoryCopy;
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

- (void)processUARPMessage:(id)message fromAccessory:(id)accessory
{
  messageCopy = message;
  accessoryCopy = accessory;
  v8 = accessoryCopy;
  uarpAccessory = 0;
  if (messageCopy)
  {
    if (accessoryCopy)
    {
      uarpAccessory = [accessoryCopy uarpAccessory];

      if (uarpAccessory)
      {
        uarpController = self->_uarpController;
        uarpAccessory2 = [v8 uarpAccessory];
        v19 = 0;
        v12 = [(UARPController *)uarpController recvDataFromAccessory:uarpAccessory2 data:messageCopy error:&v19];
        uarpAccessory = v19;

        if ((v12 & 1) == 0)
        {
          log = self->_log;
          if (sub_10000E830())
          {
            v20 = 138412290;
            v21 = uarpAccessory;
            sub_10000E7DC();
            _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
          }
        }
      }
    }
  }
}

@end