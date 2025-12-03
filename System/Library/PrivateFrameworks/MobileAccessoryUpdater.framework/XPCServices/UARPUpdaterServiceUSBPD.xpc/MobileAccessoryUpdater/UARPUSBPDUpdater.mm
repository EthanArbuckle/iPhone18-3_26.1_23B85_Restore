@interface UARPUSBPDUpdater
+ (id)sharedInstance;
- (BOOL)applyStagedFirmwareForAccessories:(id)accessories;
- (BOOL)needsApplyStagedFirmware:(id)firmware;
- (BOOL)qAddAccessory:(id)accessory;
- (BOOL)qConnectToCoreUARP:(id)p;
- (BOOL)qCreateOrUpdatePowerAdapter:(id)adapter accessory:(id)accessory hardwareID:(id)d;
- (BOOL)queryProperties:(id)properties accessoryID:(id)d goldrestoreQuery:(BOOL)query;
- (BOOL)recvUarpMsgFromAccessory:(id)accessory uarpMsg:(id)msg error:(id *)error;
- (BOOL)requestedPowerAdapterDiscovery;
- (BOOL)rescindStagedFirmwareForAccessories:(id)accessories;
- (BOOL)sendMessageToAccessory:(id)accessory uarpMsg:(id)msg error:(id *)error;
- (UARPUSBPDUpdater)init;
- (id)gFindMagSafeAccessories:(id)accessories;
- (id)gFindUSBCLightningAccessories:(id)accessories;
- (id)getUARPAccessoryForUARPAccessoryID:(id)d;
- (id)getUARPUSBPDAccessoryForUARPAccessory:(id)accessory;
- (id)qCreateOrUpdatePowerAdapterAccessory:(id)accessory identifier:(id)identifier;
- (id)qFindPowerAdapterAccessories:(id)accessories;
- (id)qHpmForRID:(unsigned __int16)d;
- (id)usbpdHardwareIdForPowerAdapter;
- (void)accessoryUnplugged:(id)unplugged;
- (void)assetAvailablityUpdateForAccessoryID:(id)d assetID:(id)iD;
- (void)assetDownloadFailed:(id)failed assetID:(id)d;
- (void)assetNotFound:(id)found assetID:(id)d;
- (void)assetOnAssetServer:(id)server assetID:(id)d;
- (void)assetOnDropbox:(id)dropbox assetID:(id)d;
- (void)assetOnLocalStorage:(id)storage assetID:(id)d;
- (void)assetSolicitationComplete:(id)complete assetID:(id)d withStatus:(unint64_t)status;
- (void)assetSolicitationProgress:(id)progress assetID:(id)d bytesReceived:(unint64_t)received bytesTotal:(unint64_t)total;
- (void)assetTransferComplete:(id)complete assetID:(id)d status:(unint64_t)status;
- (void)bsdNotificationReceived:(id)received;
- (void)dasActivityReceived;
- (void)disabledProductIdentifiers:(id)identifiers;
- (void)discoverHPMs;
- (void)dynamicAssetTransferComplete:(id)complete assetID:(id)d;
- (void)firmwareStagingComplete:(id)complete assetID:(id)d withStatus:(unint64_t)status;
- (void)firmwareStagingProgress:(id)progress assetID:(id)d bytesSent:(unint64_t)sent bytesTotal:(unint64_t)total;
- (void)handleBsdNotificationPowerAdapter;
- (void)handlePeriodicAssetSolicitation;
- (void)holdPowerAssertionForAccessory;
- (void)matchingService:(unsigned int)service identifier:(id)identifier;
- (void)qAccessoryTransferComplete:(id)complete assetID:(id)d status:(unint64_t)status;
- (void)qAccessoryUnplugged:(id)unplugged;
- (void)qBsdNotificationReceivedPowerSource;
- (void)qCheckForUpdate:(id)update assetID:(id)d;
- (void)qDisconnectFromCoreUARP:(id)p;
- (void)qEnumerateHPMsWithMagSafe;
- (void)qRemoveDisconnectedAccessories:(unsigned __int16)accessories;
- (void)qShowUpdaterSets;
- (void)qSolicitDynamicAsset:(id)asset assetID:(id)d;
- (void)qSolicitDynamicAssetForUSBPDAccessory:(id)accessory assetID:(id)d;
- (void)qSolicitDynamicAssetForUSBPDAccessory:(id)accessory assetTag:(id)tag;
- (void)qStartUpdateForUSBPDAccessory:(id)accessory assetID:(id)d;
- (void)qUpdatePowerAdapter:(id)adapter identifier:(id)identifier;
- (void)queryCompleteForAccessory:(id)accessory appleModelNumber:(id)number error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory firmwareVersion:(id)version error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory friendlyName:(id)name error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory hardwareVersion:(id)version error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory hwFusingType:(id)type error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory manufacturer:(id)manufacturer error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory modelName:(id)name error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory serialNumber:(id)number error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory stagedFirmwareVersion:(id)version error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory stats:(id)stats error:(id)error;
- (void)queryFailedForAccessory:(id)accessory property:(unint64_t)property error:(int64_t)error;
- (void)releasePowerAssertionForAccessory;
- (void)setUarpCaptureFileName:(id)name;
- (void)solicitDynamicAssetForAccessories:(id)accessories assetID:(id)d;
- (void)stagedFirmwareApplicationComplete:(id)complete withStatus:(unint64_t)status;
- (void)stagedFirmwareRescindComplete:(id)complete withStatus:(unint64_t)status;
@end

@implementation UARPUSBPDUpdater

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002CC8;
  block[3] = &unk_1000405E8;
  block[4] = self;
  if (qword_100049140 != -1)
  {
    dispatch_once(&qword_100049140, block);
  }

  v2 = qword_100049138;

  return v2;
}

- (UARPUSBPDUpdater)init
{
  v16.receiver = self;
  v16.super_class = UARPUSBPDUpdater;
  v2 = [(UARPUSBPDUpdater *)&v16 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    uarpUSBPDAccessories = v2->_uarpUSBPDAccessories;
    v2->_uarpUSBPDAccessories = v3;

    v5 = os_log_create("com.apple.accessoryupdater.uarp", "usbpdUpdater");
    log = v2->_log;
    v2->_log = v5;

    v7 = dispatch_queue_create("com.apple.accessoryupdater.usbpd.uarp.queue", 0);
    uarpQueue = v2->_uarpQueue;
    v2->_uarpQueue = v7;

    v9 = dispatch_queue_create("com.apple.accessoryupdater.usbpd.hpm.queue", 0);
    hpmQueue = v2->_hpmQueue;
    v2->_hpmQueue = v9;

    v11 = dispatch_queue_create("com.apple.accessoryupdater.usbpd.delegate.queue", 0);
    delegateQueue = v2->_delegateQueue;
    v2->_delegateQueue = v11;

    v13 = objc_alloc_init(UARPController);
    uarpController = v2->_uarpController;
    v2->_uarpController = v13;

    [(UARPController *)v2->_uarpController setDelegate:v2];
    v2->_powerAdapterDelay = 8000000000;
    v2->_requestedPowerAdapterDiscovery = 0;
    [(UARPUSBPDUpdater *)v2 discoverHPMs];
  }

  return v2;
}

- (void)setUarpCaptureFileName:(id)name
{
  v4 = [name copy];
  uarpCaptureFileName = self->_uarpCaptureFileName;
  self->_uarpCaptureFileName = v4;

  if (self->_uarpCaptureFileName)
  {
    [(UARPController *)self->_uarpController stopPacketCapture];
    uarpController = self->_uarpController;
    v7 = self->_uarpCaptureFileName;

    [(UARPController *)uarpController startPacketCapture:v7];
  }
}

- (void)discoverHPMs
{
  hpmQueue = self->_hpmQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002F04;
  block[3] = &unk_100040610;
  block[4] = self;
  dispatch_sync(hpmQueue, block);
}

- (void)qEnumerateHPMsWithMagSafe
{
  [UARPMagSafeCable matchingDictionary:0];
  v3 = existing = 0;
  if (IOServiceGetMatchingServices(kIOMasterPortDefault, v3, &existing))
  {
    v4 = 1;
  }

  else
  {
    v4 = existing == 0;
  }

  if (!v4)
  {
    v5 = IOIteratorNext(existing);
    if (v5)
    {
      v6 = v5;
      do
      {
        v7 = [(UARPUSBPDUpdater *)self qHpmForRID:[UARPMagSafeCable rid:v6]];
        v8 = v7;
        if (v7)
        {
          [v7 checkIfMagSafe:v6];
        }

        IOObjectRelease(v6);

        v6 = IOIteratorNext(existing);
      }

      while (v6);
    }

    IOObjectRelease(existing);
  }
}

- (id)gFindMagSafeAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  v5 = objc_alloc_init(NSMutableArray);
  [UARPMagSafeCable matchingDictionary:0];
  v6 = existing = 0;
  if (IOServiceGetMatchingServices(kIOMasterPortDefault, v6, &existing))
  {
    v7 = 1;
  }

  else
  {
    v7 = existing == 0;
  }

  if (!v7)
  {
    v8 = IOIteratorNext(existing);
    if (v8)
    {
      v9 = v8;
      do
      {
        v10 = [(UARPUSBPDUpdater *)self qCreateOrUpdateMagSafeAccessory:v9 identifier:accessoriesCopy];
        if (v10)
        {
          [v5 addObject:v10];
        }

        IOObjectRelease(v9);

        v9 = IOIteratorNext(existing);
      }

      while (v9);
    }

    IOObjectRelease(existing);
  }

  return v5;
}

- (id)gFindUSBCLightningAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = [UARPSupportedAccessory findByAppleModelNumber:accessoriesCopy];
  hardwareID = [v6 hardwareID];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    hardwareID2 = [v6 hardwareID];
    if ([hardwareID2 isUSBCLightning])
    {
      [UARPMagSafeCable matchingDictionaryUSBCLightning:hardwareID2 launchStream:0];
      v10 = existing = 0;
      if (IOServiceGetMatchingServices(kIOMasterPortDefault, v10, &existing))
      {
        v11 = 1;
      }

      else
      {
        v11 = existing == 0;
      }

      if (!v11)
      {
        v12 = IOIteratorNext(existing);
        if (v12)
        {
          v13 = v12;
          do
          {
            v14 = [(UARPUSBPDUpdater *)self qCreateOrUpdateDongle:v13 identifier:accessoriesCopy];
            if (v14)
            {
              [v5 addObject:v14];
            }

            IOObjectRelease(v13);

            v13 = IOIteratorNext(existing);
          }

          while (v13);
        }

        IOObjectRelease(existing);
      }

      v15 = v5;
    }

    else
    {
      v17 = v5;
    }
  }

  else
  {
    v16 = v5;
  }

  return v5;
}

- (void)matchingService:(unsigned int)service identifier:(id)identifier
{
  identifierCopy = identifier;
  hpmQueue = self->_hpmQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000343C;
  block[3] = &unk_100040638;
  serviceCopy = service;
  block[4] = self;
  v10 = identifierCopy;
  v8 = identifierCopy;
  dispatch_sync(hpmQueue, block);
}

- (void)dasActivityReceived
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  hpmQueue = self->_hpmQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100003780;
  v4[3] = &unk_100040660;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(hpmQueue, v4);
  if (v6[3])
  {
    [(UARPUSBPDUpdater *)self handleBsdNotificationPowerAdapter];
  }

  else
  {
    [(UARPUSBPDUpdater *)self handlePeriodicAssetSolicitation];
  }

  _Block_object_dispose(&v5, 8);
}

- (void)handlePeriodicAssetSolicitation
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v7 = "[UARPUSBPDUpdater handlePeriodicAssetSolicitation]";
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Solicit dynamic assets for tracked devices", buf, 0xCu);
  }

  hpmQueue = self->_hpmQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000038E0;
  block[3] = &unk_100040610;
  block[4] = self;
  dispatch_async(hpmQueue, block);
}

- (void)bsdNotificationReceived:(id)received
{
  if ([received isEqualToString:kUARPStringBsdNotificationPowerAdapter])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v5 = 136315138;
      v6 = "[UARPUSBPDUpdater bsdNotificationReceived:]";
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Force check for power adapters because power adapter notification", &v5, 0xCu);
    }

    [(UARPUSBPDUpdater *)self handleBsdNotificationPowerAdapter];
  }
}

- (id)qFindPowerAdapterAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = IOPSCopyExternalPowerAdapterDetails();
  v7 = v6;
  if (v6)
  {
    v17 = v6;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = self->_hpms;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          [v13 setSopType:0];
          v14 = [(UARPUSBPDUpdater *)self qCreateOrUpdatePowerAdapterAccessory:v13 identifier:accessoriesCopy];
          if (v14)
          {
            log = self->_log;
            if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v23 = accessoriesCopy;
              _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "No accessory found for %@", buf, 0xCu);
            }

            [v5 addObject:v14];
          }
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v24 count:16];
      }

      while (v10);
    }

    v7 = v17;
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100023744();
  }

  return v5;
}

- (void)qBsdNotificationReceivedPowerSource
{
  v3 = IOPSCopyExternalPowerAdapterDetails();
  v4 = v3;
  log = self->_log;
  if (v3)
  {
    v13 = v3;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v20 = "[UARPUSBPDUpdater qBsdNotificationReceivedPowerSource]";
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Look for power adapters on all HPMs", buf, 0xCu);
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = self->_hpms;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          v12 = self->_log;
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v20 = v11;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Check for power adapter on HPM %@", buf, 0xCu);
          }

          [v11 setSopType:0];
          [(UARPUSBPDUpdater *)self qUpdatePowerAdapter:v11 identifier:0];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    v4 = v13;
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_1000237C4();
  }
}

- (BOOL)requestedPowerAdapterDiscovery
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  hpmQueue = self->_hpmQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100004024;
  v5[3] = &unk_100040660;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(hpmQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)handleBsdNotificationPowerAdapter
{
  if ([(UARPUSBPDUpdater *)self requestedPowerAdapterDiscovery])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v10 = "[UARPUSBPDUpdater handleBsdNotificationPowerAdapter]";
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Power adapter poll already requested", buf, 0xCu);
    }
  }

  else
  {
    hpmQueue = self->_hpmQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100004194;
    block[3] = &unk_100040610;
    block[4] = self;
    dispatch_sync(hpmQueue, block);
    v5 = dispatch_time(0, self->_powerAdapterDelay);
    v6 = self->_hpmQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100004260;
    v7[3] = &unk_100040610;
    v7[4] = self;
    dispatch_after(v5, v6, v7);
  }
}

- (id)usbpdHardwareIdForPowerAdapter
{
  v3 = IOPSCopyExternalPowerAdapterDetails();
  v4 = os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v4)
    {
      sub_100023844();
    }

    v5 = [(__CFDictionary *)v3 objectForKeyedSubscript:@"Manufacturer"];
    v6 = v5;
    if (v5)
    {
      if ([v5 isEqualToString:kUARPSupportedAccessoryKeyVendorNameApple])
      {
        v7 = [(__CFDictionary *)v3 objectForKeyedSubscript:@"Model"];
        log = self->_log;
        v9 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
        if (v7)
        {
          if (v9)
          {
            v12 = 136315650;
            v13 = "[UARPUSBPDUpdater usbpdHardwareIdForPowerAdapter]";
            v14 = 2112;
            v15 = v6;
            v16 = 2112;
            v17 = v7;
            _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Found Power Adapter %@ %@", &v12, 0x20u);
          }

          v10 = [[UARPAccessoryHardwareUSBPD alloc] initWithVendorID:1452 productID:strtoul(objc_msgSend(v7 usbpdClass:"UTF8String") locationType:{0, 16), 1, 0}];
        }

        else
        {
          if (v9)
          {
            v12 = 136315138;
            v13 = "[UARPUSBPDUpdater usbpdHardwareIdForPowerAdapter]";
            _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: No Model String", &v12, 0xCu);
          }

          v10 = 0;
        }

        goto LABEL_22;
      }

      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_1000238C0();
      }
    }

    else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100023944();
    }

    v10 = 0;
LABEL_22:

    goto LABEL_23;
  }

  if (v4)
  {
    sub_1000239C4();
  }

  v10 = 0;
LABEL_23:

  return v10;
}

- (id)qCreateOrUpdatePowerAdapterAccessory:(id)accessory identifier:(id)identifier
{
  accessoryCopy = accessory;
  identifierCopy = identifier;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v26 = 138412290;
    v27 = accessoryCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Check Power Adapter on %@", &v26, 0xCu);
  }

  usbpdHardwareIdForPowerAdapter = [(UARPUSBPDUpdater *)self usbpdHardwareIdForPowerAdapter];
  if (usbpdHardwareIdForPowerAdapter)
  {
    v10 = [UARPSupportedAccessory findByHardwareID:usbpdHardwareIdForPowerAdapter];
    v11 = v10;
    if (v10)
    {
      if (!identifierCopy || ([v10 identifier], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(identifierCopy, "isEqualToString:", v12), v12, v13))
      {
        hardwareID = [v11 hardwareID];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([(UARPUSBPDUpdater *)self qCreateOrUpdatePowerAdapter:accessoryCopy accessory:v11 hardwareID:hardwareID])
          {
            v15 = [UARPUSBPDAccessory alloc];
            identifier = [v11 identifier];
            sopDelegate = [accessoryCopy sopDelegate];
            sopDelegate2 = [accessoryCopy sopDelegate];
            v19 = [(UARPUSBPDAccessory *)v15 initWithHardwareID:hardwareID identifier:identifier vuarpDelegate:sopDelegate hpmDelegate:sopDelegate2];

LABEL_19:
            goto LABEL_20;
          }

          v24 = self->_log;
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v26 = 138412290;
            v27 = accessoryCopy;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "No supported Power Adapter found on %@", &v26, 0xCu);
          }
        }

        v19 = 0;
        goto LABEL_19;
      }
    }

    else
    {
      v23 = self->_log;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v26 = 138412290;
        v27 = accessoryCopy;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "No supported power adapter (by supported accessory) on this HPM %@", &v26, 0xCu);
      }
    }

    v19 = 0;
LABEL_20:

    goto LABEL_21;
  }

  v20 = self->_log;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = v20;
    v22 = [accessoryCopy rid];
    v26 = 67109120;
    LODWORD(v27) = v22;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Not supported power adapter (by hardware id) on this HPM %u", &v26, 8u);
  }

  v19 = 0;
LABEL_21:

  return v19;
}

- (void)qUpdatePowerAdapter:(id)adapter identifier:(id)identifier
{
  adapterCopy = adapter;
  v7 = [(UARPUSBPDUpdater *)self qCreateOrUpdatePowerAdapterAccessory:adapterCopy identifier:identifier];
  if (v7)
  {
    v8 = v7;
    if ([(UARPUSBPDAccessory *)adapterCopy hasMagSafe]&& self->magSafeCable)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
      {
        magSafeCable = self->magSafeCable;
        v15 = 138412290;
        v16 = magSafeCable;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Found a supported power adapter on MagSafe port, check for cable first %@", &v15, 0xCu);
      }

      v11 = self->magSafeCable;

      [(UARPUSBPDAccessory *)adapterCopy setSopType:1];
      v12 = self->magSafeCable;
      self->magSafeCable = 0;

      v8 = v11;
    }

    else
    {
      v13 = self->_log;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v15 = 138412290;
        v16 = v8;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Found a supported power adapter, check for update %@", &v15, 0xCu);
      }
    }

    [(UARPUSBPDUpdater *)self qAddAccessory:v8];
    [(UARPUSBPDUpdater *)self qCheckForUpdate:v8 assetID:0];
  }

  else
  {
    v14 = self->_log;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = adapterCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Power Adapter not supported; ignoring notification on %@", &v15, 0xCu);
    }

    [(UARPUSBPDUpdater *)self qRemoveDisconnectedAccessories:[(UARPUSBPDAccessory *)adapterCopy rid]];
  }
}

- (BOOL)qCreateOrUpdatePowerAdapter:(id)adapter accessory:(id)accessory hardwareID:(id)d
{
  adapterCopy = adapter;
  accessoryCopy = accessory;
  dCopy = d;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v25 = 138412290;
    v26 = adapterCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Check Power Adapter on %@", &v25, 0xCu);
  }

  if (![(UARPPowerAdapter *)adapterCopy hasChargePassthru])
  {
    [(UARPPowerAdapter *)adapterCopy checkConnection:0];
    if (([(UARPPowerAdapter *)adapterCopy connected]& 1) == 0)
    {
      v18 = self->_log;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v25 = 138412290;
        v26 = adapterCopy;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Power Adapter (not connected); remove accessories %@", &v25, 0xCu);
      }

      [(UARPUSBPDUpdater *)self qRemoveDisconnectedAccessories:[(UARPPowerAdapter *)adapterCopy rid]];
      goto LABEL_16;
    }

    sopDelegate = [(UARPPowerAdapter *)adapterCopy sopDelegate];

    if (sopDelegate)
    {
      sopDelegate2 = [(UARPPowerAdapter *)adapterCopy sopDelegate];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_10;
      }

      sopDelegate3 = [(UARPPowerAdapter *)adapterCopy sopDelegate];
      if (!sopDelegate3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sopDelegate3 = -[UARPPowerAdapter initWithHPM:supportsAccMode7:]([UARPPowerAdapter alloc], "initWithHPM:supportsAccMode7:", adapterCopy, [accessoryCopy supportsAccMode7]);
      [(UARPPowerAdapter *)adapterCopy setSopDelegate:sopDelegate3];
      if (!sopDelegate3)
      {
LABEL_10:
        v17 = self->_log;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v25 = 138412290;
          v26 = adapterCopy;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "No supported power adapter on this HPM %@", &v25, 0xCu);
        }

        sopDelegate3 = 0;
        goto LABEL_27;
      }
    }

    if ([(UARPPowerAdapter *)adapterCopy probeVDOs:0])
    {
      [(UARPPowerAdapter *)sopDelegate3 updateWithHPM:adapterCopy];
      v20 = self->_log;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v25 = 138412290;
        v26 = sopDelegate3;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Updated power adapter info %@", &v25, 0xCu);
      }

      vendorID = [(UARPPowerAdapter *)sopDelegate3 vendorID];
      if ([dCopy vendorID] == vendorID)
      {
        productID = [(UARPPowerAdapter *)sopDelegate3 productID];
        if ([dCopy productID] == productID)
        {
          v19 = 1;
LABEL_28:

          goto LABEL_29;
        }
      }

      v23 = self->_log;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v25 = 138412546;
        v26 = sopDelegate3;
        v27 = 2112;
        v28 = dCopy;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Mismatched power adapter <%@>, expected <%@>", &v25, 0x16u);
      }

      [(UARPPowerAdapter *)adapterCopy setSopDelegate:0];
    }

LABEL_27:
    v19 = 0;
    goto LABEL_28;
  }

  v12 = self->_log;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v25 = 138412290;
    v26 = adapterCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Power Adapter behind a passthru dongle, skipping %@", &v25, 0xCu);
  }

LABEL_16:
  v19 = 0;
LABEL_29:

  return v19;
}

- (void)qCheckForUpdate:(id)update assetID:(id)d
{
  updateCopy = update;
  dCopy = d;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100023A44();
  }

  if ([(UARPUSBPDUpdater *)self qConnectToCoreUARP:updateCopy])
  {
    [(UARPUSBPDUpdater *)self qStartUpdateForUSBPDAccessory:updateCopy assetID:dCopy];
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v9 = 136315394;
      v10 = "[UARPUSBPDUpdater qCheckForUpdate:assetID:]";
      v11 = 2112;
      v12 = updateCopy;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Not [safe to be] connected %@", &v9, 0x16u);
    }
  }
}

- (void)qSolicitDynamicAsset:(id)asset assetID:(id)d
{
  assetCopy = asset;
  dCopy = d;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100023AC4();
  }

  if ([(UARPUSBPDUpdater *)self qConnectToCoreUARP:assetCopy])
  {
    [(UARPUSBPDUpdater *)self qSolicitDynamicAssetForUSBPDAccessory:assetCopy assetID:dCopy];
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v9 = 136315394;
      v10 = "[UARPUSBPDUpdater qSolicitDynamicAsset:assetID:]";
      v11 = 2112;
      v12 = assetCopy;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Not [safe to be] connected %@", &v9, 0x16u);
    }
  }
}

- (BOOL)qAddAccessory:(id)accessory
{
  accessoryCopy = accessory;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    disabledIdentifiers = self->_disabledIdentifiers;
    *buf = 136315394;
    v52 = "[UARPUSBPDUpdater qAddAccessory:]";
    v53 = 2112;
    *v54 = disabledIdentifiers;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Disabled accessories %@", buf, 0x16u);
  }

  v7 = self->_disabledIdentifiers;
  identifier = [accessoryCopy identifier];
  v9 = [(NSDictionary *)v7 objectForKeyedSubscript:identifier];
  bOOLValue = [v9 BOOLValue];

  v11 = self->_log;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    identifier2 = [accessoryCopy identifier];
    v14 = identifier2;
    v15 = "NO";
    v52 = "[UARPUSBPDUpdater qAddAccessory:]";
    *buf = 136315650;
    if (bOOLValue)
    {
      v15 = "YES";
    }

    v53 = 2112;
    *v54 = identifier2;
    *&v54[8] = 2080;
    *&v54[10] = v15;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s: Disabled state for %@ is %s", buf, 0x20u);
  }

  if (bOOLValue)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100023B44();
    }

LABEL_29:
    v38 = 0;
  }

  else
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v16 = self->_uarpUSBPDAccessories;
    v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v47;
      v20 = "[UARPUSBPDUpdater qAddAccessory:]";
      while (2)
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v47 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v22 = *(*(&v46 + 1) + 8 * i);
          v23 = self->_log;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v52 = v20;
            v53 = 2112;
            *v54 = v22;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s: Checking against entry in set %@", buf, 0x16u);
          }

          vendorID = [v22 vendorID];
          if (vendorID == [accessoryCopy vendorID])
          {
            productID = [v22 productID];
            if (productID == [accessoryCopy productID])
            {
              hpmDelegate = [v22 hpmDelegate];
              routerID = [hpmDelegate routerID];
              hpmDelegate2 = [accessoryCopy hpmDelegate];
              v28 = v18;
              v29 = v19;
              v30 = accessoryCopy;
              selfCopy = self;
              v32 = v16;
              v33 = v20;
              routerID2 = [hpmDelegate2 routerID];

              v35 = routerID == routerID2;
              v20 = v33;
              v16 = v32;
              self = selfCopy;
              accessoryCopy = v30;
              v19 = v29;
              v18 = v28;
              if (v35)
              {
                v43 = self->_log;
                if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                {
                  *buf = 136315394;
                  v52 = v20;
                  v53 = 2112;
                  *v54 = accessoryCopy;
                  _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "%s: Duplicate accessory, not adding to list %@", buf, 0x16u);
                }

                goto LABEL_29;
              }
            }
          }
        }

        v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v46 objects:v50 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    v36 = self->_log;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v52 = "[UARPUSBPDUpdater qAddAccessory:]";
      v53 = 2112;
      *v54 = accessoryCopy;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "%s: Adding USB-PD Accessory %@", buf, 0x16u);
    }

    [(NSMutableArray *)self->_uarpUSBPDAccessories addObject:accessoryCopy];
    v37 = self->_log;
    v38 = 1;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      uarpUSBPDAccessories = self->_uarpUSBPDAccessories;
      v40 = v37;
      v41 = [(NSMutableArray *)uarpUSBPDAccessories count];
      v42 = self->_uarpUSBPDAccessories;
      *buf = 136315650;
      v52 = "[UARPUSBPDUpdater qAddAccessory:]";
      v53 = 1024;
      *v54 = v41;
      *&v54[4] = 2112;
      *&v54[6] = v42;
      v38 = 1;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "%s: USB-PD Accessory Set (%d) is %@", buf, 0x1Cu);
    }
  }

  return v38;
}

- (BOOL)qConnectToCoreUARP:(id)p
{
  pCopy = p;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v61 = pCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Connect to CoreUARP %@", buf, 0xCu);
  }

  v6 = self->_log;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v61 = "[UARPUSBPDUpdater qConnectToCoreUARP:]";
    v62 = 2112;
    v63 = pCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s: Connect to CoreUARP %@", buf, 0x16u);
  }

  identifier = [pCopy identifier];
  v8 = [UARPSupportedAccessory findByAppleModelNumber:identifier];

  uarpAccessoryID = [pCopy uarpAccessoryID];

  if (!uarpAccessoryID)
  {
    v10 = [NSString stringWithFormat:@"%s", UARPAccessoryHardwareFusingToString()];
    v11 = [UARPAccessoryID alloc];
    identifier2 = [v8 identifier];
    v13 = [v11 initWithModelNumber:identifier2];
    [pCopy setUarpAccessoryID:v13];

    vuarpDelegate = [pCopy vuarpDelegate];
    serialNumber = [vuarpDelegate serialNumber];
    uarpAccessoryID2 = [pCopy uarpAccessoryID];
    [uarpAccessoryID2 setSerialNumber:serialNumber];

    vuarpDelegate2 = [pCopy vuarpDelegate];
    activeFwVersion = [vuarpDelegate2 activeFwVersion];
    versionString = [activeFwVersion versionString];
    uarpAccessoryID3 = [pCopy uarpAccessoryID];
    [uarpAccessoryID3 setFirmwareVersion:versionString];

    uarpAccessoryID4 = [pCopy uarpAccessoryID];
    [uarpAccessoryID4 setHwFusingType:v10];

    capabilities = [v8 capabilities];
    uarpAccessoryID5 = [pCopy uarpAccessoryID];
    [uarpAccessoryID5 setCapability:capabilities];

    vuarpDelegate3 = [pCopy vuarpDelegate];
    LOBYTE(uarpAccessoryID5) = objc_opt_respondsToSelector();

    if (uarpAccessoryID5)
    {
      vuarpDelegate4 = [pCopy vuarpDelegate];
      hardwareVersion = [vuarpDelegate4 hardwareVersion];
      stringValue = [hardwareVersion stringValue];
      uarpAccessoryID6 = [pCopy uarpAccessoryID];
      [uarpAccessoryID6 setHwRevision:stringValue];
    }

    vuarpDelegate5 = [pCopy vuarpDelegate];
    uarpMaxPayloadSize = [vuarpDelegate5 uarpMaxPayloadSize];
    vuarpDelegate6 = [pCopy vuarpDelegate];
    [pCopy connectToVUARP:uarpMaxPayloadSize payloadWindowLength:objc_msgSend(vuarpDelegate6 delegate:{"uarpPayloadWindowSize"), self}];
  }

  uarpAccessory = [pCopy uarpAccessory];

  if (!uarpAccessory)
  {
    v33 = [[UARPUpdaterServicePreferences alloc] initWithDomain:@"com.apple.uarpupdaterserviceusbpd"];
    identifier3 = [pCopy identifier];
    uarpAccessoryID7 = [pCopy uarpAccessoryID];
    serialNumber2 = [uarpAccessoryID7 serialNumber];
    v37 = [v33 uuidForAccessory:identifier3 serialNumber:serialNumber2 error:0];

    v38 = [UARPAccessory alloc];
    hardwareID = [v8 hardwareID];
    v40 = [v38 initWithHardwareID:hardwareID uuid:v37];
    [pCopy setUarpAccessory:v40];

    uarpAccessory2 = [pCopy uarpAccessory];
    [uarpAccessory2 setDownloadOnCellularAllowed:0];

    uarpAccessory3 = [pCopy uarpAccessory];
    [uarpAccessory3 setAutoDownloadAllowed:0];

    uarpAccessoryID8 = [pCopy uarpAccessoryID];
    capability = [uarpAccessoryID8 capability];
    uarpAccessory4 = [pCopy uarpAccessory];
    [uarpAccessory4 setCapability:capability];

    uarpAccessoryID9 = [pCopy uarpAccessoryID];
    serialNumber3 = [uarpAccessoryID9 serialNumber];
    uarpAccessory5 = [pCopy uarpAccessory];
    [uarpAccessory5 setSerialNumber:serialNumber3];

    uarpAccessoryID10 = [pCopy uarpAccessoryID];
    firmwareVersion = [uarpAccessoryID10 firmwareVersion];
    uarpAccessory6 = [pCopy uarpAccessory];
    [uarpAccessory6 setFirmwareVersion:firmwareVersion];

    uarpAccessoryID11 = [pCopy uarpAccessoryID];
    hwFusingType = [uarpAccessoryID11 hwFusingType];
    uarpAccessory7 = [pCopy uarpAccessory];
    [uarpAccessory7 setHwFusingType:hwFusingType];

    uarpController = self->_uarpController;
    uarpAccessory8 = [pCopy uarpAccessory];
    [(UARPController *)uarpController addAccessory:uarpAccessory8 assetID:0];

    v57 = self->_uarpController;
    uarpAccessory9 = [pCopy uarpAccessory];
    [(UARPController *)v57 accessoryReachable:uarpAccessory9];
  }

  return 1;
}

- (void)qStartUpdateForUSBPDAccessory:(id)accessory assetID:(id)d
{
  accessoryCopy = accessory;
  dCopy = d;
  [accessoryCopy setNeedsTransferFirmware:1];
  identifier = [accessoryCopy identifier];
  v9 = [UARPSupportedAccessory findByAppleModelNumber:identifier];

  if ([v9 supportsLogs])
  {
    [accessoryCopy setNeedsTransferLogs:1];
  }

  if ([v9 supportsAnalytics])
  {
    [accessoryCopy setNeedsTransferAnalytics:1];
  }

  if ([v9 autoAppliesStagedFirmware])
  {
    [accessoryCopy setAutoAppliesStagedFirmware:1];
  }

  if ([v9 updateRequiresPowerAssertion])
  {
    [accessoryCopy setRequiresPowerAssertion:1];
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v16 = 136315394;
    v17 = "[UARPUSBPDUpdater qStartUpdateForUSBPDAccessory:assetID:]";
    v18 = 2112;
    v19 = accessoryCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: usbpd = %@", &v16, 0x16u);
  }

  v11 = self->_log;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v16 = 136315394;
    v17 = "[UARPUSBPDUpdater qStartUpdateForUSBPDAccessory:assetID:]";
    v18 = 2112;
    v19 = dCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s: assetID = %@", &v16, 0x16u);
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100023BB8(self);
  }

  if (([(NSMutableArray *)self->_uarpUSBPDAccessories containsObject:accessoryCopy]& 1) != 0)
  {
    v12 = dCopy;
    if (!v12)
    {
      v12 = [[UARPAssetID alloc] initWithLocationType:3 remoteURL:0];
    }

    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      sub_100023C38();
    }

    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      sub_100023CB4();
    }

    uarpController = self->_uarpController;
    uarpAccessory = [accessoryCopy uarpAccessory];
    [(UARPController *)uarpController changeAssetLocation:uarpAccessory assetID:v12];
  }

  else
  {
    v15 = self->_log;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = 136315394;
      v17 = "[UARPUSBPDUpdater qStartUpdateForUSBPDAccessory:assetID:]";
      v18 = 2112;
      v19 = accessoryCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: Accessory not in updater set %@", &v16, 0x16u);
    }
  }
}

- (void)qSolicitDynamicAssetForUSBPDAccessory:(id)accessory assetTag:(id)tag
{
  tagCopy = tag;
  accessoryCopy = accessory;
  v9 = uarpDynamicAssetURL();
  v8 = [[UARPAssetID alloc] initWithLocationType:10 assetTag:tagCopy url:v9];

  [(UARPUSBPDUpdater *)self qSolicitDynamicAssetForUSBPDAccessory:accessoryCopy assetID:v8];
}

- (void)qSolicitDynamicAssetForUSBPDAccessory:(id)accessory assetID:(id)d
{
  accessoryCopy = accessory;
  dCopy = d;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v12 = 138412546;
    v13 = accessoryCopy;
    v14 = 2112;
    v15 = dCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Solicit Dynamic Asset usbpd <%@> assetID <%@>", &v12, 0x16u);
  }

  if (([(NSMutableArray *)self->_uarpUSBPDAccessories containsObject:accessoryCopy]& 1) != 0)
  {
    uarpController = self->_uarpController;
    uarpAccessory = [accessoryCopy uarpAccessory];
    [(UARPController *)uarpController solicitDynamicAsset:uarpAccessory assetID:dCopy];
  }

  else
  {
    v11 = self->_log;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = accessoryCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Cannot solicit dynamic asset, accessory not in set %@", &v12, 0xCu);
    }
  }
}

- (void)qDisconnectFromCoreUARP:(id)p
{
  pCopy = p;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = pCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Disconnect from CoreUARP; %@", &v8, 0xCu);
  }

  uarpController = self->_uarpController;
  uarpAccessory = [pCopy uarpAccessory];
  [(UARPController *)uarpController removeAccessory:uarpAccessory];

  [pCopy disconnectFromVUARP];
}

- (void)qAccessoryTransferComplete:(id)complete assetID:(id)d status:(unint64_t)status
{
  completeCopy = complete;
  dCopy = d;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v11 = log;
    v12 = [dCopy tag];
    *buf = 138412802;
    v62 = v12;
    v63 = 2080;
    v64 = UARPFirmwareStagingCompletionStatusToString();
    v65 = 2112;
    v66 = completeCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "accessory asset transfer <tag=%@> complete with status <%s> %@", buf, 0x20u);
  }

  if (!dCopy)
  {
    [completeCopy setNeedsTransferFirmware:0];
    v13 = self->_log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v62 = "[UARPUSBPDUpdater qAccessoryTransferComplete:assetID:status:]";
      v63 = 2112;
      v64 = completeCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s: accessory no longer needs firmware <%@>", buf, 0x16u);
    }
  }

  v14 = uarpAssetTagStructLogs();
  v15 = [[UARPAssetTag alloc] initWithChar1:*v14 char2:v14[1] char3:v14[2] char4:v14[3]];
  v16 = [dCopy tag];
  v17 = [v16 isEqual:v15];

  if (v17)
  {
    [completeCopy setNeedsTransferLogs:0];
    v18 = self->_log;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v62 = "[UARPUSBPDUpdater qAccessoryTransferComplete:assetID:status:]";
      v63 = 2112;
      v64 = completeCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s: accessory no longer needs LOGS %@", buf, 0x16u);
    }

    if (!status)
    {
      v19 = +[NSFileManager defaultManager];
      v57 = 0;
      v20 = [v19 createDirectoryAtPath:@"/var/tmp/aud/uarp/updaterservice/usbpd" withIntermediateDirectories:1 attributes:0 error:&v57];
      v21 = v57;

      if (v20)
      {
        v55 = v21;
        v54 = [NSURL fileURLWithPath:@"/var/tmp/aud/uarp/updaterservice/usbpd"];
        v22 = [[UARPDyanamicAssetLogManager alloc] initWithBaseURL:v54];
        localURL = [dCopy localURL];
        v56 = 0;
        v53 = v22;
        LOBYTE(v22) = [v22 newLog:localURL error:&v56];
        v24 = v56;

        if ((v22 & 1) == 0 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
        {
          sub_100023DA0();
        }

        v21 = v55;
      }

      else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_100023D30();
      }
    }
  }

  v25 = uarpAssetTagStructAnalytics();
  v26 = [[UARPAssetTag alloc] initWithChar1:*v25 char2:v25[1] char3:v25[2] char4:v25[3]];
  v27 = [dCopy tag];
  v28 = [v27 isEqual:v26];

  if (v28)
  {
    [completeCopy setNeedsTransferAnalytics:0];
    v29 = self->_log;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v62 = "[UARPUSBPDUpdater qAccessoryTransferComplete:assetID:status:]";
      v63 = 2112;
      v64 = completeCopy;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%s: accessory no longer needs TICS %@", buf, 0x16u);
    }

    if (!status)
    {
      v30 = [UARPDynamicAssetAnalyticsEvent alloc];
      localURL2 = [dCopy localURL];
      v32 = [v30 initWithURL:localURL2];

      if ([v32 decomposeUARP])
      {
        [v32 send];
      }
    }
  }

  if ([completeCopy needsTransferLogs])
  {
    v33 = self->_log;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v62 = completeCopy;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Soliciting LOGS for %@", buf, 0xCu);
    }

    selfCopy2 = self;
    v35 = completeCopy;
    v36 = v15;
LABEL_33:
    [(UARPUSBPDUpdater *)selfCopy2 qSolicitDynamicAssetForUSBPDAccessory:v35 assetTag:v36];
    goto LABEL_34;
  }

  if ([completeCopy needsTransferAnalytics])
  {
    v37 = self->_log;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v62 = completeCopy;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "Soliciting TICS for %@", buf, 0xCu);
    }

    selfCopy2 = self;
    v35 = completeCopy;
    v36 = v26;
    goto LABEL_33;
  }

  if ([completeCopy isMagSafeCable])
  {
    if (![(UARPUSBPDUpdater *)self needsApplyStagedFirmware:completeCopy])
    {
      hpmDelegate = [completeCopy hpmDelegate];
      routerID = [hpmDelegate routerID];

      [(UARPUSBPDUpdater *)self qRemoveDisconnectedAccessories:routerID];
      uarpAccessory = [(UARPUSBPDUpdater *)self qHpmForRID:routerID];
      v47 = self->_log;
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v62 = uarpAccessory;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "Check for power adapter on HPM %@", buf, 0xCu);
      }

      [uarpAccessory setSopType:0];
      [(UARPUSBPDUpdater *)self qUpdatePowerAdapter:uarpAccessory identifier:0];
      goto LABEL_46;
    }

    uarpController = self->_uarpController;
    uarpAccessory = [completeCopy uarpAccessory];
    v60 = uarpAccessory;
    v40 = &v60;
LABEL_38:
    v41 = [NSArray arrayWithObjects:v40 count:1];
    [(UARPController *)uarpController applyStagedFirmwareOnAccessoryList:v41 withUserIntent:0];

LABEL_46:
    goto LABEL_34;
  }

  if ([completeCopy isPowerAdapter])
  {
    v42 = self->_log;
    v43 = os_log_type_enabled(v42, OS_LOG_TYPE_INFO);
    if (status)
    {
      if (!v43)
      {
        goto LABEL_53;
      }

      *buf = 0;
      v44 = "No power adapter update, remove everything on this RID";
    }

    else
    {
      if (!v43)
      {
        goto LABEL_53;
      }

      *buf = 0;
      v44 = "Power adapter will restart";
    }

    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, v44, buf, 2u);
LABEL_53:
    v48 = self->_log;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
      v49 = v48;
      supportsAccMode7 = [completeCopy supportsAccMode7];
      *buf = 67109120;
      LODWORD(v62) = supportsAccMode7;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "power adapter supports accmode7 %d", buf, 8u);
    }

    if (-[UARPUSBPDUpdater needsApplyStagedFirmware:](self, "needsApplyStagedFirmware:", completeCopy) && [completeCopy supportsAccMode7])
    {
      v51 = self->_log;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "Apply staged assets to power adapter", buf, 2u);
      }

      uarpController = self->_uarpController;
      uarpAccessory = [completeCopy uarpAccessory];
      v59 = uarpAccessory;
      v40 = &v59;
      goto LABEL_38;
    }

    goto LABEL_34;
  }

  if (![completeCopy isUSBCLightning])
  {
    goto LABEL_34;
  }

  if ([(UARPUSBPDUpdater *)self needsApplyStagedFirmware:completeCopy])
  {
    uarpController = self->_uarpController;
    uarpAccessory = [completeCopy uarpAccessory];
    v58 = uarpAccessory;
    v40 = &v58;
    goto LABEL_38;
  }

  v52 = self->_log;
  if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v62 = completeCopy;
    _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "Dongle doesn't need to apply firmware %@", buf, 0xCu);
  }

  [(UARPUSBPDUpdater *)self qAccessoryUnplugged:completeCopy];
LABEL_34:
}

- (void)qAccessoryUnplugged:(id)unplugged
{
  hpmDelegate = [unplugged hpmDelegate];
  routerID = [hpmDelegate routerID];

  [(UARPUSBPDUpdater *)self qRemoveDisconnectedAccessories:routerID];
}

- (void)qRemoveDisconnectedAccessories:(unsigned __int16)accessories
{
  accessoriesCopy = accessories;
  v29 = objc_alloc_init(NSMutableArray);
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v40) = accessoriesCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Remove disconnected accessories on RID %d", buf, 8u);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v6 = self->_uarpUSBPDAccessories;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v35 objects:v46 count:16];
  v28 = accessoriesCopy;
  if (v7)
  {
    v8 = v7;
    v30 = 0;
    v9 = *v36;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v35 + 1) + 8 * i);
        hpmDelegate = [v11 hpmDelegate];
        routerID = [hpmDelegate routerID];

        if (routerID == accessoriesCopy)
        {
          v14 = self->_log;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v40 = v11;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "mark accessory for removal %@", buf, 0xCu);
          }

          [v29 addObject:v11];
        }

        else
        {
          v30 |= [v11 requiresPowerAssertion];
        }
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v35 objects:v46 count:16];
    }

    while (v8);
  }

  else
  {
    LOBYTE(v30) = 0;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v15 = v29;
  v16 = [v15 countByEnumeratingWithState:&v31 objects:v45 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v32;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v32 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v31 + 1) + 8 * j);
        v21 = self->_log;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v40 = v20;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "remove accessory %@", buf, 0xCu);
        }

        [(NSMutableArray *)self->_uarpUSBPDAccessories removeObject:v20];
        v22 = self->_log;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          uarpUSBPDAccessories = self->_uarpUSBPDAccessories;
          v24 = v22;
          v25 = [(NSMutableArray *)uarpUSBPDAccessories count];
          v26 = self->_uarpUSBPDAccessories;
          *buf = 136315650;
          v40 = "[UARPUSBPDUpdater qRemoveDisconnectedAccessories:]";
          v41 = 1024;
          v42 = v25;
          v43 = 2112;
          v44 = v26;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s: USB-PD Accessory Set (%d) is %@", buf, 0x1Cu);
        }

        [(UARPUSBPDUpdater *)self qDisconnectFromCoreUARP:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v31 objects:v45 count:16];
    }

    while (v17);
  }

  if ((v30 & 1) == 0)
  {
    [(UARPUSBPDUpdater *)self releasePowerAssertionForAccessory];
  }

  v27 = [(UARPUSBPDUpdater *)self qHpmForRID:v28];
  [v27 setSopDelegate:0];
  [v27 setSopPrimeDelegate:0];
  [(UARPUSBPDUpdater *)self qShowUpdaterSets];
}

- (id)qHpmForRID:(unsigned __int16)d
{
  dCopy = d;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_hpms;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 rid] == dCopy)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)qShowUpdaterSets
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    uarpUSBPDAccessories = self->_uarpUSBPDAccessories;
    v5 = log;
    v6 = [(NSMutableArray *)uarpUSBPDAccessories count];
    v7 = self->_uarpUSBPDAccessories;
    v10 = 67109378;
    LODWORD(v11[0]) = v6;
    WORD2(v11[0]) = 2112;
    *(v11 + 6) = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "USB-PD Accessory Set (%d) is %@", &v10, 0x12u);
  }

  v8 = self->_log;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    hpms = self->_hpms;
    v10 = 138412290;
    v11[0] = hpms;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "HPM Set is %@", &v10, 0xCu);
  }
}

- (BOOL)queryProperties:(id)properties accessoryID:(id)d goldrestoreQuery:(BOOL)query
{
  queryCopy = query;
  propertiesCopy = properties;
  dCopy = d;
  v10 = [(UARPUSBPDUpdater *)self getUARPAccessoryForUARPAccessoryID:dCopy];
  v11 = v10;
  if (v10)
  {
    if (queryCopy)
    {
      [v10 setGoldrestoreQueryInProgress:1];
    }

    v26 = dCopy;
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      sub_100023E84();
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = propertiesCopy;
    v12 = propertiesCopy;
    v13 = [v12 countByEnumeratingWithState:&v28 objects:v38 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v29;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v28 + 1) + 8 * i);
          uarpController = self->_uarpController;
          unsignedIntegerValue = [v17 unsignedIntegerValue];
          uarpAccessory = [v11 uarpAccessory];
          v21 = [(UARPController *)uarpController queryProperty:unsignedIntegerValue forAccessory:uarpAccessory];

          if (v21)
          {
            log = self->_log;
            if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
            {
              v23 = log;
              [v17 unsignedIntegerValue];
              v24 = UARPAccessoryPropertyToString();
              *buf = 136315650;
              v33 = "[UARPUSBPDUpdater queryProperties:accessoryID:goldrestoreQuery:]";
              v34 = 2080;
              v35 = v24;
              v36 = 2048;
              v37 = v21;
              _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s: Query Property %s failed with error %ld", buf, 0x20u);
            }

            -[UARPUSBPDUpdater queryFailedForAccessory:property:error:](self, "queryFailedForAccessory:property:error:", v11, [v17 unsignedIntegerValue], v21);
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v28 objects:v38 count:16];
      }

      while (v14);
    }

    dCopy = v26;
    propertiesCopy = v27;
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100023E10();
  }

  return v11 != 0;
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
        [(UARPUSBPDUpdater *)self queryCompleteForAccessory:uarpAccessory modelName:0 error:v8];
      }

      else
      {
        uarpAccessory = [accessoryCopy uarpAccessory];
        [(UARPUSBPDUpdater *)self queryCompleteForAccessory:uarpAccessory manufacturer:0 error:v8];
      }
    }

    else if (property == 2)
    {
      uarpAccessory = [accessoryCopy uarpAccessory];
      [(UARPUSBPDUpdater *)self queryCompleteForAccessory:uarpAccessory serialNumber:0 error:v8];
    }

    else
    {
      [accessoryCopy uarpAccessory];
      if (property == 3)
        uarpAccessory = {;
        [(UARPUSBPDUpdater *)self queryCompleteForAccessory:uarpAccessory hardwareVersion:0 error:v8];
      }

      else
        uarpAccessory = {;
        [(UARPUSBPDUpdater *)self queryCompleteForAccessory:uarpAccessory firmwareVersion:0 error:v8];
      }
    }

    goto LABEL_24;
  }

  if (property <= 10)
  {
    if (property == 5)
    {
      uarpAccessory = [accessoryCopy uarpAccessory];
      [(UARPUSBPDUpdater *)self queryCompleteForAccessory:uarpAccessory stagedFirmwareVersion:0 error:v8];
    }

    else
    {
      if (property != 6)
      {
        goto LABEL_25;
      }

      uarpAccessory = [accessoryCopy uarpAccessory];
      [(UARPUSBPDUpdater *)self queryCompleteForAccessory:uarpAccessory stats:0 error:v8];
    }

    goto LABEL_24;
  }

  switch(property)
  {
    case 0xBuLL:
      uarpAccessory = [accessoryCopy uarpAccessory];
      [(UARPUSBPDUpdater *)self queryCompleteForAccessory:uarpAccessory appleModelNumber:0 error:v8];
LABEL_24:

      break;
    case 0xCuLL:
      uarpAccessory2 = [accessoryCopy uarpAccessory];
      [(UARPUSBPDUpdater *)self queryCompleteForAccessory:uarpAccessory2 hwFusingType:0 error:v8];

      goto LABEL_23;
    case 0xDuLL:
LABEL_23:
      uarpAccessory = [accessoryCopy uarpAccessory];
      [(UARPUSBPDUpdater *)self queryCompleteForAccessory:uarpAccessory friendlyName:0 error:v8];
      goto LABEL_24;
  }

LABEL_25:
}

- (BOOL)applyStagedFirmwareForAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  v5 = +[NSMutableArray array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = accessoriesCopy;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v21;
    *&v8 = 136315394;
    v19 = v8;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [(UARPUSBPDUpdater *)self getUARPAccessoryForUARPAccessoryID:v12, v19, v20];
        v14 = v13;
        if (v13)
        {
          uarpAccessory = [v13 uarpAccessory];
          [v5 addObject:uarpAccessory];
        }

        else
        {
          log = self->_log;
          if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
          {
            *buf = v19;
            v25 = "[UARPUSBPDUpdater applyStagedFirmwareForAccessories:]";
            v26 = 2112;
            v27 = v12;
            _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: Unknown UARPAccessoryID %@", buf, 0x16u);
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v9);
  }

  v17 = [(UARPController *)self->_uarpController applyStagedFirmwareOnAccessoryList:v5 withUserIntent:1];
  return v17;
}

- (BOOL)rescindStagedFirmwareForAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  v5 = +[NSMutableArray array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = accessoriesCopy;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v21;
    *&v8 = 136315394;
    v19 = v8;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [(UARPUSBPDUpdater *)self getUARPAccessoryForUARPAccessoryID:v12, v19, v20];
        v14 = v13;
        if (v13)
        {
          uarpAccessory = [v13 uarpAccessory];
          [v5 addObject:uarpAccessory];
        }

        else
        {
          log = self->_log;
          if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
          {
            *buf = v19;
            v25 = "[UARPUSBPDUpdater rescindStagedFirmwareForAccessories:]";
            v26 = 2112;
            v27 = v12;
            _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: Unknown UARPAccessoryID %@", buf, 0x16u);
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v9);
  }

  v17 = [(UARPController *)self->_uarpController rescindStagedFirmwareOnAccessoryList:v5 withUserIntent:1];
  return v17;
}

- (void)solicitDynamicAssetForAccessories:(id)accessories assetID:(id)d
{
  accessoriesCopy = accessories;
  dCopy = d;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100023F00();
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = accessoriesCopy;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v24;
    *&v10 = 136315394;
    v19 = v10;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        v15 = [(UARPUSBPDUpdater *)self getUARPAccessoryForUARPAccessoryID:v14, v19];
        v16 = v15;
        if (v15)
        {
          hpmQueue = self->_hpmQueue;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000085FC;
          block[3] = &unk_100040688;
          block[4] = self;
          v21 = v15;
          v22 = dCopy;
          dispatch_async(hpmQueue, block);
        }

        else
        {
          log = self->_log;
          if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
          {
            *buf = v19;
            v28 = "[UARPUSBPDUpdater solicitDynamicAssetForAccessories:assetID:]";
            v29 = 2112;
            v30 = v14;
            _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: Unknown UARPAccessoryID %@, dropping it", buf, 0x16u);
          }
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v11);
  }
}

- (void)assetAvailablityUpdateForAccessoryID:(id)d assetID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v9 = log;
    availableFirmwareVersion = [dCopy availableFirmwareVersion];
    v12 = 136315906;
    v13 = "[UARPUSBPDUpdater assetAvailablityUpdateForAccessoryID:assetID:]";
    v14 = 2112;
    v15 = dCopy;
    v16 = 2112;
    v17 = availableFirmwareVersion;
    v18 = 2112;
    v19 = iDCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s: accessory = %@, available version = %@, assetID = %@", &v12, 0x2Au);
  }

  v11 = [(UARPUSBPDUpdater *)self getUARPUSBPDAccessoryForUARPAccessory:dCopy];
  if (v11)
  {
    if ([iDCopy downloadStatus] == 2)
    {
      [(UARPUSBPDUpdater *)self assetDownloadFailed:v11 assetID:iDCopy];
    }

    else if ([iDCopy updateAvailabilityStatus] == 1)
    {
      [(UARPUSBPDUpdater *)self assetOnAssetServer:v11 assetID:iDCopy];
    }

    else if ([iDCopy updateAvailabilityStatus] == 3)
    {
      [(UARPUSBPDUpdater *)self assetOnLocalStorage:v11 assetID:iDCopy];
    }

    else if ([iDCopy updateAvailabilityStatus] == 4)
    {
      [(UARPUSBPDUpdater *)self assetOnDropbox:v11 assetID:iDCopy];
    }

    else if ([iDCopy updateAvailabilityStatus] == 6)
    {
      [(UARPUSBPDUpdater *)self assetNotFound:v11 assetID:iDCopy];
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100023F8C();
  }
}

- (void)firmwareStagingComplete:(id)complete assetID:(id)d withStatus:(unint64_t)status
{
  completeCopy = complete;
  dCopy = d;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v18 = 136315906;
    v19 = "[UARPUSBPDUpdater firmwareStagingComplete:assetID:withStatus:]";
    v20 = 2112;
    v21 = completeCopy;
    v22 = 2112;
    v23 = dCopy;
    v24 = 2048;
    statusCopy = status;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: accessory=%@, assetID=%@, status=%lu", &v18, 0x2Au);
  }

  v11 = [(UARPUSBPDUpdater *)self getUARPUSBPDAccessoryForUARPAccessory:completeCopy];
  v12 = v11;
  if (v11)
  {
    if (status == 31)
    {
      hpmDelegate = [v11 hpmDelegate];
      isConnected = [hpmDelegate isConnected];

      if (isConnected)
      {
        status = 31;
      }

      else
      {
        if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
        {
          sub_100024000();
        }

        status = 3;
      }
    }

    goldRestoreDelegate = self->_goldRestoreDelegate;
    if (objc_opt_respondsToSelector())
    {
      v16 = self->_goldRestoreDelegate;
      uarpAccessoryID = [v12 uarpAccessoryID];
      [(GoldRestoreUARPStatusDelegate *)v16 firmwareStagingComplete:uarpAccessoryID withStatus:status];
    }

    else if (status == 3)
    {
      [(UARPUSBPDUpdater *)self accessoryUnplugged:v12];
    }

    else
    {
      [(UARPUSBPDUpdater *)self assetTransferComplete:v12 assetID:0 status:status];
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100024074();
  }
}

- (void)stagedFirmwareApplicationComplete:(id)complete withStatus:(unint64_t)status
{
  completeCopy = complete;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v12 = 136315650;
    v13 = "[UARPUSBPDUpdater stagedFirmwareApplicationComplete:withStatus:]";
    v14 = 2112;
    v15 = completeCopy;
    v16 = 2048;
    statusCopy = status;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: accessory=%@, status=%lu", &v12, 0x20u);
  }

  v8 = [(UARPUSBPDUpdater *)self getUARPUSBPDAccessoryForUARPAccessory:completeCopy];
  if (v8)
  {
    goldRestoreDelegate = self->_goldRestoreDelegate;
    if (objc_opt_respondsToSelector())
    {
      v10 = self->_goldRestoreDelegate;
      uarpAccessoryID = [v8 uarpAccessoryID];
      [(GoldRestoreUARPStatusDelegate *)v10 stagedFirmwareApplicationComplete:uarpAccessoryID withStatus:status];
    }

    else
    {
      [(UARPUSBPDUpdater *)self accessoryUnplugged:v8];
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_1000240E8();
  }
}

- (void)stagedFirmwareRescindComplete:(id)complete withStatus:(unint64_t)status
{
  completeCopy = complete;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v12 = 136315650;
    v13 = "[UARPUSBPDUpdater stagedFirmwareRescindComplete:withStatus:]";
    v14 = 2112;
    v15 = completeCopy;
    v16 = 2048;
    statusCopy = status;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: accessory=%@, status=%lu", &v12, 0x20u);
  }

  v8 = [(UARPUSBPDUpdater *)self getUARPUSBPDAccessoryForUARPAccessory:completeCopy];
  if (v8)
  {
    goldRestoreDelegate = self->_goldRestoreDelegate;
    if (objc_opt_respondsToSelector())
    {
      v10 = self->_goldRestoreDelegate;
      uarpAccessoryID = [v8 uarpAccessoryID];
      [(GoldRestoreUARPStatusDelegate *)v10 stagedFirmwareRescindComplete:uarpAccessoryID withStatus:status];
    }

    else
    {
      [(UARPUSBPDUpdater *)self accessoryUnplugged:v8];
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10002415C();
  }
}

- (void)assetSolicitationComplete:(id)complete assetID:(id)d withStatus:(unint64_t)status
{
  completeCopy = complete;
  dCopy = d;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = 136315906;
    v16 = "[UARPUSBPDUpdater assetSolicitationComplete:assetID:withStatus:]";
    v17 = 2112;
    v18 = completeCopy;
    v19 = 2112;
    v20 = dCopy;
    v21 = 2048;
    statusCopy = status;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: accessory=%@, assetID=%@, status=%lu", &v15, 0x2Au);
  }

  v11 = [(UARPUSBPDUpdater *)self getUARPUSBPDAccessoryForUARPAccessory:completeCopy];
  if (v11)
  {
    goldRestoreDelegate = self->_goldRestoreDelegate;
    if (objc_opt_respondsToSelector())
    {
      v13 = self->_goldRestoreDelegate;
      uarpAccessoryID = [v11 uarpAccessoryID];
      [(GoldRestoreUARPStatusDelegate *)v13 assetSolicitationComplete:uarpAccessoryID assetID:dCopy withStatus:status];
    }

    else if (status == 3)
    {
      [(UARPUSBPDUpdater *)self accessoryUnplugged:v11];
    }

    else
    {
      [(UARPUSBPDUpdater *)self assetTransferComplete:v11 assetID:dCopy status:status];
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_1000241D0();
  }
}

- (void)queryCompleteForAccessory:(id)accessory manufacturer:(id)manufacturer error:(id)error
{
  accessoryCopy = accessory;
  manufacturerCopy = manufacturer;
  errorCopy = error;
  v11 = [(UARPUSBPDUpdater *)self getUARPUSBPDAccessoryForUARPAccessory:accessoryCopy];
  v12 = v11;
  if (v11)
  {
    if ([v11 goldrestoreQueryInProgress] && (goldRestoreDelegate = self->_goldRestoreDelegate, (objc_opt_respondsToSelector() & 1) != 0))
    {
      delegateQueue = self->_delegateQueue;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100008FCC;
      v15[3] = &unk_1000406B0;
      v15[4] = self;
      v16 = v12;
      v17 = manufacturerCopy;
      v18 = errorCopy;
      dispatch_async(delegateQueue, v15);
    }

    else
    {
      [v12 updateProperty:0 value:manufacturerCopy];
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100024244();
  }
}

- (void)queryCompleteForAccessory:(id)accessory modelName:(id)name error:(id)error
{
  accessoryCopy = accessory;
  nameCopy = name;
  errorCopy = error;
  v11 = [(UARPUSBPDUpdater *)self getUARPUSBPDAccessoryForUARPAccessory:accessoryCopy];
  v12 = v11;
  if (v11)
  {
    if ([v11 goldrestoreQueryInProgress] && (goldRestoreDelegate = self->_goldRestoreDelegate, (objc_opt_respondsToSelector() & 1) != 0))
    {
      delegateQueue = self->_delegateQueue;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100009190;
      v15[3] = &unk_1000406B0;
      v15[4] = self;
      v16 = v12;
      v17 = nameCopy;
      v18 = errorCopy;
      dispatch_async(delegateQueue, v15);
    }

    else
    {
      [v12 updateProperty:1 value:nameCopy];
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_1000242B8();
  }
}

- (void)queryCompleteForAccessory:(id)accessory firmwareVersion:(id)version error:(id)error
{
  accessoryCopy = accessory;
  versionCopy = version;
  errorCopy = error;
  v11 = [(UARPUSBPDUpdater *)self getUARPUSBPDAccessoryForUARPAccessory:accessoryCopy];
  v12 = v11;
  if (v11)
  {
    if ([v11 goldrestoreQueryInProgress] && (goldRestoreDelegate = self->_goldRestoreDelegate, (objc_opt_respondsToSelector() & 1) != 0))
    {
      delegateQueue = self->_delegateQueue;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100009354;
      v15[3] = &unk_1000406B0;
      v15[4] = self;
      v16 = v12;
      v17 = versionCopy;
      v18 = errorCopy;
      dispatch_async(delegateQueue, v15);
    }

    else
    {
      [v12 updateProperty:4 value:versionCopy];
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10002432C();
  }
}

- (void)queryCompleteForAccessory:(id)accessory stagedFirmwareVersion:(id)version error:(id)error
{
  accessoryCopy = accessory;
  versionCopy = version;
  errorCopy = error;
  v11 = [(UARPUSBPDUpdater *)self getUARPUSBPDAccessoryForUARPAccessory:accessoryCopy];
  v12 = v11;
  if (v11)
  {
    if ([v11 goldrestoreQueryInProgress] && (goldRestoreDelegate = self->_goldRestoreDelegate, (objc_opt_respondsToSelector() & 1) != 0))
    {
      delegateQueue = self->_delegateQueue;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100009518;
      v15[3] = &unk_1000406B0;
      v15[4] = self;
      v16 = v12;
      v17 = versionCopy;
      v18 = errorCopy;
      dispatch_async(delegateQueue, v15);
    }

    else
    {
      [v12 updateProperty:5 value:versionCopy];
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_1000243A0();
  }
}

- (void)queryCompleteForAccessory:(id)accessory stats:(id)stats error:(id)error
{
  accessoryCopy = accessory;
  statsCopy = stats;
  errorCopy = error;
  v11 = [(UARPUSBPDUpdater *)self getUARPUSBPDAccessoryForUARPAccessory:accessoryCopy];
  v12 = v11;
  if (v11)
  {
    if ([v11 goldrestoreQueryInProgress])
    {
      goldRestoreDelegate = self->_goldRestoreDelegate;
      if (objc_opt_respondsToSelector())
      {
        delegateQueue = self->_delegateQueue;
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_1000096C8;
        v15[3] = &unk_1000406B0;
        v15[4] = self;
        v16 = v12;
        v17 = statsCopy;
        v18 = errorCopy;
        dispatch_async(delegateQueue, v15);
      }
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100024414();
  }
}

- (void)queryCompleteForAccessory:(id)accessory hardwareVersion:(id)version error:(id)error
{
  accessoryCopy = accessory;
  versionCopy = version;
  errorCopy = error;
  v11 = [(UARPUSBPDUpdater *)self getUARPUSBPDAccessoryForUARPAccessory:accessoryCopy];
  v12 = v11;
  if (v11)
  {
    if ([v11 goldrestoreQueryInProgress])
    {
      goldRestoreDelegate = self->_goldRestoreDelegate;
      if (objc_opt_respondsToSelector())
      {
        delegateQueue = self->_delegateQueue;
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_100009878;
        v15[3] = &unk_1000406B0;
        v15[4] = self;
        v16 = v12;
        v17 = versionCopy;
        v18 = errorCopy;
        dispatch_async(delegateQueue, v15);
      }
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100024488();
  }
}

- (void)queryCompleteForAccessory:(id)accessory serialNumber:(id)number error:(id)error
{
  accessoryCopy = accessory;
  numberCopy = number;
  errorCopy = error;
  v11 = [(UARPUSBPDUpdater *)self getUARPUSBPDAccessoryForUARPAccessory:accessoryCopy];
  v12 = v11;
  if (v11)
  {
    if ([v11 goldrestoreQueryInProgress] && (goldRestoreDelegate = self->_goldRestoreDelegate, (objc_opt_respondsToSelector() & 1) != 0))
    {
      delegateQueue = self->_delegateQueue;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100009A3C;
      v15[3] = &unk_1000406B0;
      v15[4] = self;
      v16 = v12;
      v17 = numberCopy;
      v18 = errorCopy;
      dispatch_async(delegateQueue, v15);
    }

    else
    {
      [v12 updateProperty:2 value:numberCopy];
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_1000244FC();
  }
}

- (void)queryCompleteForAccessory:(id)accessory appleModelNumber:(id)number error:(id)error
{
  accessoryCopy = accessory;
  numberCopy = number;
  errorCopy = error;
  v11 = [(UARPUSBPDUpdater *)self getUARPUSBPDAccessoryForUARPAccessory:accessoryCopy];
  if (v11)
  {
    goldRestoreDelegate = self->_goldRestoreDelegate;
    if (objc_opt_respondsToSelector())
    {
      delegateQueue = self->_delegateQueue;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100009C5C;
      v18[3] = &unk_1000406B0;
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
            sub_100024570(numberCopy, log, v11);
          }
        }
      }

      [v11 updateProperty:11 value:numberCopy];
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100024640();
  }
}

- (void)queryCompleteForAccessory:(id)accessory hwFusingType:(id)type error:(id)error
{
  accessoryCopy = accessory;
  typeCopy = type;
  errorCopy = error;
  v11 = [(UARPUSBPDUpdater *)self getUARPUSBPDAccessoryForUARPAccessory:accessoryCopy];
  if (v11)
  {
    goldRestoreDelegate = self->_goldRestoreDelegate;
    if (objc_opt_respondsToSelector())
    {
      delegateQueue = self->_delegateQueue;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100009E10;
      v14[3] = &unk_1000406B0;
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

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_1000246B4();
  }
}

- (void)queryCompleteForAccessory:(id)accessory friendlyName:(id)name error:(id)error
{
  accessoryCopy = accessory;
  nameCopy = name;
  errorCopy = error;
  v11 = [(UARPUSBPDUpdater *)self getUARPUSBPDAccessoryForUARPAccessory:accessoryCopy];
  if (v11)
  {
    goldRestoreDelegate = self->_goldRestoreDelegate;
    if (objc_opt_respondsToSelector())
    {
      delegateQueue = self->_delegateQueue;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100009FC4;
      v14[3] = &unk_1000406B0;
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

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100024728();
  }
}

- (void)firmwareStagingProgress:(id)progress assetID:(id)d bytesSent:(unint64_t)sent bytesTotal:(unint64_t)total
{
  progressCopy = progress;
  dCopy = d;
  v12 = [(UARPUSBPDUpdater *)self getUARPUSBPDAccessoryForUARPAccessory:progressCopy];
  if (!v12 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10002479C();
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v21 = "[UARPUSBPDUpdater firmwareStagingProgress:assetID:bytesSent:bytesTotal:]";
    v22 = 2112;
    v23 = progressCopy;
    v24 = 2112;
    v25 = dCopy;
    v26 = 2048;
    v27 = ((sent / total) * 100.0);
    _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s: accessory=%@, assetID=%@, progress=%f", buf, 0x2Au);
  }

  goldRestoreDelegate = self->_goldRestoreDelegate;
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000A204;
    v16[3] = &unk_1000406D8;
    v16[4] = self;
    v17 = v12;
    sentCopy = sent;
    totalCopy = total;
    dispatch_async(delegateQueue, v16);
  }
}

- (void)assetSolicitationProgress:(id)progress assetID:(id)d bytesReceived:(unint64_t)received bytesTotal:(unint64_t)total
{
  progressCopy = progress;
  dCopy = d;
  v12 = [(UARPUSBPDUpdater *)self getUARPUSBPDAccessoryForUARPAccessory:progressCopy];
  if (!v12 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100024810();
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v22 = "[UARPUSBPDUpdater assetSolicitationProgress:assetID:bytesReceived:bytesTotal:]";
    v23 = 2112;
    v24 = progressCopy;
    v25 = 2112;
    v26 = dCopy;
    v27 = 2048;
    v28 = ((received / total) * 100.0);
    _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s: accessory=%@, assetID=%@, progress=%f", buf, 0x2Au);
  }

  goldRestoreDelegate = self->_goldRestoreDelegate;
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000A454;
    block[3] = &unk_100040700;
    block[4] = self;
    v17 = v12;
    v18 = dCopy;
    receivedCopy = received;
    totalCopy = total;
    dispatch_async(delegateQueue, block);
  }
}

- (BOOL)sendMessageToAccessory:(id)accessory uarpMsg:(id)msg error:(id *)error
{
  accessoryCopy = accessory;
  msgCopy = msg;
  uarpQueue = self->_uarpQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A580;
  block[3] = &unk_100040688;
  block[4] = self;
  v14 = accessoryCopy;
  v15 = msgCopy;
  v10 = msgCopy;
  v11 = accessoryCopy;
  dispatch_async(uarpQueue, block);

  return 1;
}

- (BOOL)recvUarpMsgFromAccessory:(id)accessory uarpMsg:(id)msg error:(id *)error
{
  accessoryCopy = accessory;
  msgCopy = msg;
  uarpQueue = self->_uarpQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A6A0;
  block[3] = &unk_100040688;
  block[4] = self;
  v14 = accessoryCopy;
  v15 = msgCopy;
  v10 = msgCopy;
  v11 = accessoryCopy;
  dispatch_async(uarpQueue, block);

  return 1;
}

- (void)assetDownloadFailed:(id)failed assetID:(id)d
{
  failedCopy = failed;
  dCopy = d;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v15 = "[UARPUSBPDUpdater assetDownloadFailed:assetID:]";
    v16 = 2112;
    v17 = failedCopy;
    v18 = 2112;
    v19 = dCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: usbpd = %@, assetID = %@", buf, 0x20u);
  }

  goldRestoreDelegate = self->_goldRestoreDelegate;
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000A890;
    block[3] = &unk_100040688;
    block[4] = self;
    v12 = failedCopy;
    v13 = dCopy;
    dispatch_async(delegateQueue, block);
  }

  else if ([dCopy updateAvailabilityStatus] == 6)
  {
    [(UARPUSBPDUpdater *)self assetTransferComplete:failedCopy assetID:0 status:4];
  }
}

- (void)assetOnAssetServer:(id)server assetID:(id)d
{
  serverCopy = server;
  dCopy = d;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v11 = 136315650;
    v12 = "[UARPUSBPDUpdater assetOnAssetServer:assetID:]";
    v13 = 2112;
    v14 = serverCopy;
    v15 = 2112;
    v16 = dCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: usbpd = %@, assetID = %@", &v11, 0x20u);
  }

  uarpController = self->_uarpController;
  uarpAccessory = [serverCopy uarpAccessory];
  [(UARPController *)uarpController downloadAvailableFirmwareUpdate:uarpAccessory assetID:dCopy withUserIntent:1];
}

- (void)assetOnDropbox:(id)dropbox assetID:(id)d
{
  dropboxCopy = dropbox;
  dCopy = d;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v11 = 136315650;
    v12 = "[UARPUSBPDUpdater assetOnDropbox:assetID:]";
    v13 = 2112;
    v14 = dropboxCopy;
    v15 = 2112;
    v16 = dCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: usbpd = %@, assetID = %@", &v11, 0x20u);
  }

  uarpController = self->_uarpController;
  uarpAccessory = [dropboxCopy uarpAccessory];
  [(UARPController *)uarpController downloadAvailableFirmwareUpdate:uarpAccessory assetID:dCopy withUserIntent:1];
}

- (void)assetNotFound:(id)found assetID:(id)d
{
  foundCopy = found;
  dCopy = d;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v15 = "[UARPUSBPDUpdater assetNotFound:assetID:]";
    v16 = 2112;
    v17 = foundCopy;
    v18 = 2112;
    v19 = dCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: usbpd = %@, assetID = %@", buf, 0x20u);
  }

  goldRestoreDelegate = self->_goldRestoreDelegate;
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000AC90;
    block[3] = &unk_100040688;
    block[4] = self;
    v12 = foundCopy;
    v13 = dCopy;
    dispatch_async(delegateQueue, block);
  }

  else if ([dCopy updateAvailabilityStatus] == 6)
  {
    [(UARPUSBPDUpdater *)self assetTransferComplete:foundCopy assetID:0 status:4];
  }
}

- (void)assetOnLocalStorage:(id)storage assetID:(id)d
{
  storageCopy = storage;
  dCopy = d;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v12 = 136315650;
    v13 = "[UARPUSBPDUpdater assetOnLocalStorage:assetID:]";
    v14 = 2112;
    v15 = storageCopy;
    v16 = 2112;
    v17 = dCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: usbpd = %@, assetID = %@", &v12, 0x20u);
  }

  if ([storageCopy requiresPowerAssertion])
  {
    v9 = self->_log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = 136315394;
      v13 = "[UARPUSBPDUpdater assetOnLocalStorage:assetID:]";
      v14 = 2112;
      v15 = storageCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s: usbpd = %@, requires power assertion", &v12, 0x16u);
    }

    [(UARPUSBPDUpdater *)self holdPowerAssertionForAccessory];
  }

  uarpAccessory = [storageCopy uarpAccessory];
  v11 = [NSArray arrayWithObject:uarpAccessory];

  [(UARPController *)self->_uarpController stageFirmwareUpdateOnAccessoryList:v11 withUserIntent:1];
}

- (void)assetTransferComplete:(id)complete assetID:(id)d status:(unint64_t)status
{
  completeCopy = complete;
  dCopy = d;
  hpmQueue = self->_hpmQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000AF50;
  v13[3] = &unk_100040728;
  v13[4] = self;
  v14 = completeCopy;
  v15 = dCopy;
  statusCopy = status;
  v11 = dCopy;
  v12 = completeCopy;
  dispatch_sync(hpmQueue, v13);
}

- (void)dynamicAssetTransferComplete:(id)complete assetID:(id)d
{
  completeCopy = complete;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100024904();
  }
}

- (BOOL)needsApplyStagedFirmware:(id)firmware
{
  firmwareCopy = firmware;
  v5 = firmwareCopy;
  if (!firmwareCopy)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      LOWORD(v22) = 0;
      v19 = "accessory staged firmware - nil usbpd";
LABEL_14:
      v20 = log;
      goto LABEL_15;
    }

LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  stagedFwVersion = [firmwareCopy stagedFwVersion];

  v7 = self->_log;
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (!stagedFwVersion)
  {
    if (v8)
    {
      LOWORD(v22) = 0;
      v19 = "accessory staged firmware - nil stagedFwVersion";
      v20 = v7;
LABEL_15:
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, v19, &v22, 2u);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  if (v8)
  {
    v9 = v7;
    stagedFwVersion2 = [v5 stagedFwVersion];
    v22 = 138412546;
    v23 = stagedFwVersion2;
    v24 = 2112;
    v25 = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "usbpd staged firmware of <%@> %@", &v22, 0x16u);
  }

  stagedFwVersion3 = [v5 stagedFwVersion];
  isValid = [stagedFwVersion3 isValid];

  log = self->_log;
  v14 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
  if ((isValid & 1) == 0)
  {
    if (v14)
    {
      LOWORD(v22) = 0;
      v19 = "accessory staged firmware - not valid stagedFwVersion";
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  if (v14)
  {
    v15 = log;
    vuarpDelegate = [v5 vuarpDelegate];
    stagedFwVersion4 = [vuarpDelegate stagedFwVersion];
    v22 = 138412546;
    v23 = stagedFwVersion4;
    v24 = 2112;
    v25 = v5;
    v18 = 1;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "vuarp staged firmware of <%@> %@", &v22, 0x16u);
  }

  else
  {
    v18 = 1;
  }

LABEL_17:

  return v18;
}

- (void)disabledProductIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  hpmQueue = self->_hpmQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000B390;
  v7[3] = &unk_100040750;
  v7[4] = self;
  v8 = identifiersCopy;
  v6 = identifiersCopy;
  dispatch_sync(hpmQueue, v7);
}

- (id)getUARPAccessoryForUARPAccessoryID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10000B500;
  v16 = sub_10000B510;
  v17 = 0;
  hpmQueue = self->_hpmQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B518;
  block[3] = &unk_100040778;
  block[4] = self;
  v10 = dCopy;
  v11 = &v12;
  v6 = dCopy;
  dispatch_sync(hpmQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)getUARPUSBPDAccessoryForUARPAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10000B500;
  v16 = sub_10000B510;
  v17 = 0;
  hpmQueue = self->_hpmQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B80C;
  block[3] = &unk_100040778;
  block[4] = self;
  v10 = accessoryCopy;
  v11 = &v12;
  v6 = accessoryCopy;
  dispatch_sync(hpmQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)accessoryUnplugged:(id)unplugged
{
  unpluggedCopy = unplugged;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100024AF8();
  }

  hpmQueue = self->_hpmQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000BAB4;
  v7[3] = &unk_100040750;
  v7[4] = self;
  v8 = unpluggedCopy;
  v6 = unpluggedCopy;
  dispatch_sync(hpmQueue, v7);
}

- (void)holdPowerAssertionForAccessory
{
  if (self->_powerAssertionID)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100024B78();
    }
  }

  else
  {
    v3 = [NSString stringWithFormat:@"com.apple.UARPPowerAssertion-USBPD"];
    if ((createPowerAssertion() & 1) == 0 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100024BB8();
    }

    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v6 = "[UARPUSBPDUpdater holdPowerAssertionForAccessory]";
      v7 = 2112;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Power assertion held for %@", buf, 0x16u);
    }

    self->_powerAssertionID = 0;
  }
}

- (void)releasePowerAssertionForAccessory
{
  if (self->_powerAssertionID)
  {
    if ((releasePowerAssertion() & 1) == 0 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100024C2C();
    }

    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v4 = 136315138;
      v5 = "[UARPUSBPDUpdater releasePowerAssertionForAccessory]";
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Power assertion released for USBPD", &v4, 0xCu);
    }

    self->_powerAssertionID = 0;
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100024CAC();
  }
}

@end