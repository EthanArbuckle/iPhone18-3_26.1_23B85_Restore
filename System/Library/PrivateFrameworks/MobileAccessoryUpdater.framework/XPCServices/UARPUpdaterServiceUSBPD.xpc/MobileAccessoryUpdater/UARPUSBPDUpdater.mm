@interface UARPUSBPDUpdater
+ (id)sharedInstance;
- (BOOL)applyStagedFirmwareForAccessories:(id)a3;
- (BOOL)needsApplyStagedFirmware:(id)a3;
- (BOOL)qAddAccessory:(id)a3;
- (BOOL)qConnectToCoreUARP:(id)a3;
- (BOOL)qCreateOrUpdatePowerAdapter:(id)a3 accessory:(id)a4 hardwareID:(id)a5;
- (BOOL)queryProperties:(id)a3 accessoryID:(id)a4 goldrestoreQuery:(BOOL)a5;
- (BOOL)recvUarpMsgFromAccessory:(id)a3 uarpMsg:(id)a4 error:(id *)a5;
- (BOOL)requestedPowerAdapterDiscovery;
- (BOOL)rescindStagedFirmwareForAccessories:(id)a3;
- (BOOL)sendMessageToAccessory:(id)a3 uarpMsg:(id)a4 error:(id *)a5;
- (UARPUSBPDUpdater)init;
- (id)gFindMagSafeAccessories:(id)a3;
- (id)gFindUSBCLightningAccessories:(id)a3;
- (id)getUARPAccessoryForUARPAccessoryID:(id)a3;
- (id)getUARPUSBPDAccessoryForUARPAccessory:(id)a3;
- (id)qCreateOrUpdatePowerAdapterAccessory:(id)a3 identifier:(id)a4;
- (id)qFindPowerAdapterAccessories:(id)a3;
- (id)qHpmForRID:(unsigned __int16)a3;
- (id)usbpdHardwareIdForPowerAdapter;
- (void)accessoryUnplugged:(id)a3;
- (void)assetAvailablityUpdateForAccessoryID:(id)a3 assetID:(id)a4;
- (void)assetDownloadFailed:(id)a3 assetID:(id)a4;
- (void)assetNotFound:(id)a3 assetID:(id)a4;
- (void)assetOnAssetServer:(id)a3 assetID:(id)a4;
- (void)assetOnDropbox:(id)a3 assetID:(id)a4;
- (void)assetOnLocalStorage:(id)a3 assetID:(id)a4;
- (void)assetSolicitationComplete:(id)a3 assetID:(id)a4 withStatus:(unint64_t)a5;
- (void)assetSolicitationProgress:(id)a3 assetID:(id)a4 bytesReceived:(unint64_t)a5 bytesTotal:(unint64_t)a6;
- (void)assetTransferComplete:(id)a3 assetID:(id)a4 status:(unint64_t)a5;
- (void)bsdNotificationReceived:(id)a3;
- (void)dasActivityReceived;
- (void)disabledProductIdentifiers:(id)a3;
- (void)discoverHPMs;
- (void)dynamicAssetTransferComplete:(id)a3 assetID:(id)a4;
- (void)firmwareStagingComplete:(id)a3 assetID:(id)a4 withStatus:(unint64_t)a5;
- (void)firmwareStagingProgress:(id)a3 assetID:(id)a4 bytesSent:(unint64_t)a5 bytesTotal:(unint64_t)a6;
- (void)handleBsdNotificationPowerAdapter;
- (void)handlePeriodicAssetSolicitation;
- (void)holdPowerAssertionForAccessory;
- (void)matchingService:(unsigned int)a3 identifier:(id)a4;
- (void)qAccessoryTransferComplete:(id)a3 assetID:(id)a4 status:(unint64_t)a5;
- (void)qAccessoryUnplugged:(id)a3;
- (void)qBsdNotificationReceivedPowerSource;
- (void)qCheckForUpdate:(id)a3 assetID:(id)a4;
- (void)qDisconnectFromCoreUARP:(id)a3;
- (void)qEnumerateHPMsWithMagSafe;
- (void)qRemoveDisconnectedAccessories:(unsigned __int16)a3;
- (void)qShowUpdaterSets;
- (void)qSolicitDynamicAsset:(id)a3 assetID:(id)a4;
- (void)qSolicitDynamicAssetForUSBPDAccessory:(id)a3 assetID:(id)a4;
- (void)qSolicitDynamicAssetForUSBPDAccessory:(id)a3 assetTag:(id)a4;
- (void)qStartUpdateForUSBPDAccessory:(id)a3 assetID:(id)a4;
- (void)qUpdatePowerAdapter:(id)a3 identifier:(id)a4;
- (void)queryCompleteForAccessory:(id)a3 appleModelNumber:(id)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 firmwareVersion:(id)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 friendlyName:(id)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 hardwareVersion:(id)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 hwFusingType:(id)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 manufacturer:(id)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 modelName:(id)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 serialNumber:(id)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 stagedFirmwareVersion:(id)a4 error:(id)a5;
- (void)queryCompleteForAccessory:(id)a3 stats:(id)a4 error:(id)a5;
- (void)queryFailedForAccessory:(id)a3 property:(unint64_t)a4 error:(int64_t)a5;
- (void)releasePowerAssertionForAccessory;
- (void)setUarpCaptureFileName:(id)a3;
- (void)solicitDynamicAssetForAccessories:(id)a3 assetID:(id)a4;
- (void)stagedFirmwareApplicationComplete:(id)a3 withStatus:(unint64_t)a4;
- (void)stagedFirmwareRescindComplete:(id)a3 withStatus:(unint64_t)a4;
@end

@implementation UARPUSBPDUpdater

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002CC8;
  block[3] = &unk_1000405E8;
  block[4] = a1;
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

- (void)setUarpCaptureFileName:(id)a3
{
  v4 = [a3 copy];
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

- (id)gFindMagSafeAccessories:(id)a3
{
  v4 = a3;
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
        v10 = [(UARPUSBPDUpdater *)self qCreateOrUpdateMagSafeAccessory:v9 identifier:v4];
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

- (id)gFindUSBCLightningAccessories:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = [UARPSupportedAccessory findByAppleModelNumber:v4];
  v7 = [v6 hardwareID];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [v6 hardwareID];
    if ([v9 isUSBCLightning])
    {
      [UARPMagSafeCable matchingDictionaryUSBCLightning:v9 launchStream:0];
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
            v14 = [(UARPUSBPDUpdater *)self qCreateOrUpdateDongle:v13 identifier:v4];
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

- (void)matchingService:(unsigned int)a3 identifier:(id)a4
{
  v6 = a4;
  hpmQueue = self->_hpmQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000343C;
  block[3] = &unk_100040638;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
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

- (void)bsdNotificationReceived:(id)a3
{
  if ([a3 isEqualToString:kUARPStringBsdNotificationPowerAdapter])
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

- (id)qFindPowerAdapterAccessories:(id)a3
{
  v4 = a3;
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
          v14 = [(UARPUSBPDUpdater *)self qCreateOrUpdatePowerAdapterAccessory:v13 identifier:v4];
          if (v14)
          {
            log = self->_log;
            if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v23 = v4;
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

- (id)qCreateOrUpdatePowerAdapterAccessory:(id)a3 identifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v26 = 138412290;
    v27 = v6;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Check Power Adapter on %@", &v26, 0xCu);
  }

  v9 = [(UARPUSBPDUpdater *)self usbpdHardwareIdForPowerAdapter];
  if (v9)
  {
    v10 = [UARPSupportedAccessory findByHardwareID:v9];
    v11 = v10;
    if (v10)
    {
      if (!v7 || ([v10 identifier], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v7, "isEqualToString:", v12), v12, v13))
      {
        v14 = [v11 hardwareID];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([(UARPUSBPDUpdater *)self qCreateOrUpdatePowerAdapter:v6 accessory:v11 hardwareID:v14])
          {
            v15 = [UARPUSBPDAccessory alloc];
            v16 = [v11 identifier];
            v17 = [v6 sopDelegate];
            v18 = [v6 sopDelegate];
            v19 = [(UARPUSBPDAccessory *)v15 initWithHardwareID:v14 identifier:v16 vuarpDelegate:v17 hpmDelegate:v18];

LABEL_19:
            goto LABEL_20;
          }

          v24 = self->_log;
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v26 = 138412290;
            v27 = v6;
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
        v27 = v6;
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
    v22 = [v6 rid];
    v26 = 67109120;
    LODWORD(v27) = v22;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Not supported power adapter (by hardware id) on this HPM %u", &v26, 8u);
  }

  v19 = 0;
LABEL_21:

  return v19;
}

- (void)qUpdatePowerAdapter:(id)a3 identifier:(id)a4
{
  v6 = a3;
  v7 = [(UARPUSBPDUpdater *)self qCreateOrUpdatePowerAdapterAccessory:v6 identifier:a4];
  if (v7)
  {
    v8 = v7;
    if ([(UARPUSBPDAccessory *)v6 hasMagSafe]&& self->magSafeCable)
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

      [(UARPUSBPDAccessory *)v6 setSopType:1];
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
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Power Adapter not supported; ignoring notification on %@", &v15, 0xCu);
    }

    [(UARPUSBPDUpdater *)self qRemoveDisconnectedAccessories:[(UARPUSBPDAccessory *)v6 rid]];
  }
}

- (BOOL)qCreateOrUpdatePowerAdapter:(id)a3 accessory:(id)a4 hardwareID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v25 = 138412290;
    v26 = v8;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Check Power Adapter on %@", &v25, 0xCu);
  }

  if (![(UARPPowerAdapter *)v8 hasChargePassthru])
  {
    [(UARPPowerAdapter *)v8 checkConnection:0];
    if (([(UARPPowerAdapter *)v8 connected]& 1) == 0)
    {
      v18 = self->_log;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v25 = 138412290;
        v26 = v8;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Power Adapter (not connected); remove accessories %@", &v25, 0xCu);
      }

      [(UARPUSBPDUpdater *)self qRemoveDisconnectedAccessories:[(UARPPowerAdapter *)v8 rid]];
      goto LABEL_16;
    }

    v13 = [(UARPPowerAdapter *)v8 sopDelegate];

    if (v13)
    {
      v14 = [(UARPPowerAdapter *)v8 sopDelegate];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_10;
      }

      v16 = [(UARPPowerAdapter *)v8 sopDelegate];
      if (!v16)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v16 = -[UARPPowerAdapter initWithHPM:supportsAccMode7:]([UARPPowerAdapter alloc], "initWithHPM:supportsAccMode7:", v8, [v9 supportsAccMode7]);
      [(UARPPowerAdapter *)v8 setSopDelegate:v16];
      if (!v16)
      {
LABEL_10:
        v17 = self->_log;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v25 = 138412290;
          v26 = v8;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "No supported power adapter on this HPM %@", &v25, 0xCu);
        }

        v16 = 0;
        goto LABEL_27;
      }
    }

    if ([(UARPPowerAdapter *)v8 probeVDOs:0])
    {
      [(UARPPowerAdapter *)v16 updateWithHPM:v8];
      v20 = self->_log;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v25 = 138412290;
        v26 = v16;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Updated power adapter info %@", &v25, 0xCu);
      }

      v21 = [(UARPPowerAdapter *)v16 vendorID];
      if ([v10 vendorID] == v21)
      {
        v22 = [(UARPPowerAdapter *)v16 productID];
        if ([v10 productID] == v22)
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
        v26 = v16;
        v27 = 2112;
        v28 = v10;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Mismatched power adapter <%@>, expected <%@>", &v25, 0x16u);
      }

      [(UARPPowerAdapter *)v8 setSopDelegate:0];
    }

LABEL_27:
    v19 = 0;
    goto LABEL_28;
  }

  v12 = self->_log;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v25 = 138412290;
    v26 = v8;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Power Adapter behind a passthru dongle, skipping %@", &v25, 0xCu);
  }

LABEL_16:
  v19 = 0;
LABEL_29:

  return v19;
}

- (void)qCheckForUpdate:(id)a3 assetID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100023A44();
  }

  if ([(UARPUSBPDUpdater *)self qConnectToCoreUARP:v6])
  {
    [(UARPUSBPDUpdater *)self qStartUpdateForUSBPDAccessory:v6 assetID:v7];
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v9 = 136315394;
      v10 = "[UARPUSBPDUpdater qCheckForUpdate:assetID:]";
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Not [safe to be] connected %@", &v9, 0x16u);
    }
  }
}

- (void)qSolicitDynamicAsset:(id)a3 assetID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100023AC4();
  }

  if ([(UARPUSBPDUpdater *)self qConnectToCoreUARP:v6])
  {
    [(UARPUSBPDUpdater *)self qSolicitDynamicAssetForUSBPDAccessory:v6 assetID:v7];
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v9 = 136315394;
      v10 = "[UARPUSBPDUpdater qSolicitDynamicAsset:assetID:]";
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Not [safe to be] connected %@", &v9, 0x16u);
    }
  }
}

- (BOOL)qAddAccessory:(id)a3
{
  v4 = a3;
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
  v8 = [v4 identifier];
  v9 = [(NSDictionary *)v7 objectForKeyedSubscript:v8];
  v10 = [v9 BOOLValue];

  v11 = self->_log;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    v13 = [v4 identifier];
    v14 = v13;
    v15 = "NO";
    v52 = "[UARPUSBPDUpdater qAddAccessory:]";
    *buf = 136315650;
    if (v10)
    {
      v15 = "YES";
    }

    v53 = 2112;
    *v54 = v13;
    *&v54[8] = 2080;
    *&v54[10] = v15;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s: Disabled state for %@ is %s", buf, 0x20u);
  }

  if (v10)
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

          v24 = [v22 vendorID];
          if (v24 == [v4 vendorID])
          {
            v25 = [v22 productID];
            if (v25 == [v4 productID])
            {
              v26 = [v22 hpmDelegate];
              v45 = [v26 routerID];
              v27 = [v4 hpmDelegate];
              v28 = v18;
              v29 = v19;
              v30 = v4;
              v31 = self;
              v32 = v16;
              v33 = v20;
              v34 = [v27 routerID];

              v35 = v45 == v34;
              v20 = v33;
              v16 = v32;
              self = v31;
              v4 = v30;
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
                  *v54 = v4;
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
      *v54 = v4;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "%s: Adding USB-PD Accessory %@", buf, 0x16u);
    }

    [(NSMutableArray *)self->_uarpUSBPDAccessories addObject:v4];
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

- (BOOL)qConnectToCoreUARP:(id)a3
{
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v61 = v4;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Connect to CoreUARP %@", buf, 0xCu);
  }

  v6 = self->_log;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v61 = "[UARPUSBPDUpdater qConnectToCoreUARP:]";
    v62 = 2112;
    v63 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s: Connect to CoreUARP %@", buf, 0x16u);
  }

  v7 = [v4 identifier];
  v8 = [UARPSupportedAccessory findByAppleModelNumber:v7];

  v9 = [v4 uarpAccessoryID];

  if (!v9)
  {
    v10 = [NSString stringWithFormat:@"%s", UARPAccessoryHardwareFusingToString()];
    v11 = [UARPAccessoryID alloc];
    v12 = [v8 identifier];
    v13 = [v11 initWithModelNumber:v12];
    [v4 setUarpAccessoryID:v13];

    v14 = [v4 vuarpDelegate];
    v15 = [v14 serialNumber];
    v16 = [v4 uarpAccessoryID];
    [v16 setSerialNumber:v15];

    v17 = [v4 vuarpDelegate];
    v18 = [v17 activeFwVersion];
    v19 = [v18 versionString];
    v20 = [v4 uarpAccessoryID];
    [v20 setFirmwareVersion:v19];

    v21 = [v4 uarpAccessoryID];
    [v21 setHwFusingType:v10];

    v22 = [v8 capabilities];
    v23 = [v4 uarpAccessoryID];
    [v23 setCapability:v22];

    v24 = [v4 vuarpDelegate];
    LOBYTE(v23) = objc_opt_respondsToSelector();

    if (v23)
    {
      v25 = [v4 vuarpDelegate];
      v26 = [v25 hardwareVersion];
      v27 = [v26 stringValue];
      v28 = [v4 uarpAccessoryID];
      [v28 setHwRevision:v27];
    }

    v29 = [v4 vuarpDelegate];
    v30 = [v29 uarpMaxPayloadSize];
    v31 = [v4 vuarpDelegate];
    [v4 connectToVUARP:v30 payloadWindowLength:objc_msgSend(v31 delegate:{"uarpPayloadWindowSize"), self}];
  }

  v32 = [v4 uarpAccessory];

  if (!v32)
  {
    v33 = [[UARPUpdaterServicePreferences alloc] initWithDomain:@"com.apple.uarpupdaterserviceusbpd"];
    v34 = [v4 identifier];
    v35 = [v4 uarpAccessoryID];
    v36 = [v35 serialNumber];
    v37 = [v33 uuidForAccessory:v34 serialNumber:v36 error:0];

    v38 = [UARPAccessory alloc];
    v39 = [v8 hardwareID];
    v40 = [v38 initWithHardwareID:v39 uuid:v37];
    [v4 setUarpAccessory:v40];

    v41 = [v4 uarpAccessory];
    [v41 setDownloadOnCellularAllowed:0];

    v42 = [v4 uarpAccessory];
    [v42 setAutoDownloadAllowed:0];

    v43 = [v4 uarpAccessoryID];
    v44 = [v43 capability];
    v45 = [v4 uarpAccessory];
    [v45 setCapability:v44];

    v46 = [v4 uarpAccessoryID];
    v47 = [v46 serialNumber];
    v48 = [v4 uarpAccessory];
    [v48 setSerialNumber:v47];

    v49 = [v4 uarpAccessoryID];
    v50 = [v49 firmwareVersion];
    v51 = [v4 uarpAccessory];
    [v51 setFirmwareVersion:v50];

    v52 = [v4 uarpAccessoryID];
    v53 = [v52 hwFusingType];
    v54 = [v4 uarpAccessory];
    [v54 setHwFusingType:v53];

    uarpController = self->_uarpController;
    v56 = [v4 uarpAccessory];
    [(UARPController *)uarpController addAccessory:v56 assetID:0];

    v57 = self->_uarpController;
    v58 = [v4 uarpAccessory];
    [(UARPController *)v57 accessoryReachable:v58];
  }

  return 1;
}

- (void)qStartUpdateForUSBPDAccessory:(id)a3 assetID:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 setNeedsTransferFirmware:1];
  v8 = [v6 identifier];
  v9 = [UARPSupportedAccessory findByAppleModelNumber:v8];

  if ([v9 supportsLogs])
  {
    [v6 setNeedsTransferLogs:1];
  }

  if ([v9 supportsAnalytics])
  {
    [v6 setNeedsTransferAnalytics:1];
  }

  if ([v9 autoAppliesStagedFirmware])
  {
    [v6 setAutoAppliesStagedFirmware:1];
  }

  if ([v9 updateRequiresPowerAssertion])
  {
    [v6 setRequiresPowerAssertion:1];
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v16 = 136315394;
    v17 = "[UARPUSBPDUpdater qStartUpdateForUSBPDAccessory:assetID:]";
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: usbpd = %@", &v16, 0x16u);
  }

  v11 = self->_log;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v16 = 136315394;
    v17 = "[UARPUSBPDUpdater qStartUpdateForUSBPDAccessory:assetID:]";
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s: assetID = %@", &v16, 0x16u);
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100023BB8(self);
  }

  if (([(NSMutableArray *)self->_uarpUSBPDAccessories containsObject:v6]& 1) != 0)
  {
    v12 = v7;
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
    v14 = [v6 uarpAccessory];
    [(UARPController *)uarpController changeAssetLocation:v14 assetID:v12];
  }

  else
  {
    v15 = self->_log;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = 136315394;
      v17 = "[UARPUSBPDUpdater qStartUpdateForUSBPDAccessory:assetID:]";
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s: Accessory not in updater set %@", &v16, 0x16u);
    }
  }
}

- (void)qSolicitDynamicAssetForUSBPDAccessory:(id)a3 assetTag:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = uarpDynamicAssetURL();
  v8 = [[UARPAssetID alloc] initWithLocationType:10 assetTag:v6 url:v9];

  [(UARPUSBPDUpdater *)self qSolicitDynamicAssetForUSBPDAccessory:v7 assetID:v8];
}

- (void)qSolicitDynamicAssetForUSBPDAccessory:(id)a3 assetID:(id)a4
{
  v6 = a3;
  v7 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Solicit Dynamic Asset usbpd <%@> assetID <%@>", &v12, 0x16u);
  }

  if (([(NSMutableArray *)self->_uarpUSBPDAccessories containsObject:v6]& 1) != 0)
  {
    uarpController = self->_uarpController;
    v10 = [v6 uarpAccessory];
    [(UARPController *)uarpController solicitDynamicAsset:v10 assetID:v7];
  }

  else
  {
    v11 = self->_log;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Cannot solicit dynamic asset, accessory not in set %@", &v12, 0xCu);
    }
  }
}

- (void)qDisconnectFromCoreUARP:(id)a3
{
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Disconnect from CoreUARP; %@", &v8, 0xCu);
  }

  uarpController = self->_uarpController;
  v7 = [v4 uarpAccessory];
  [(UARPController *)uarpController removeAccessory:v7];

  [v4 disconnectFromVUARP];
}

- (void)qAccessoryTransferComplete:(id)a3 assetID:(id)a4 status:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v11 = log;
    v12 = [v9 tag];
    *buf = 138412802;
    v62 = v12;
    v63 = 2080;
    v64 = UARPFirmwareStagingCompletionStatusToString();
    v65 = 2112;
    v66 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "accessory asset transfer <tag=%@> complete with status <%s> %@", buf, 0x20u);
  }

  if (!v9)
  {
    [v8 setNeedsTransferFirmware:0];
    v13 = self->_log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v62 = "[UARPUSBPDUpdater qAccessoryTransferComplete:assetID:status:]";
      v63 = 2112;
      v64 = v8;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s: accessory no longer needs firmware <%@>", buf, 0x16u);
    }
  }

  v14 = uarpAssetTagStructLogs();
  v15 = [[UARPAssetTag alloc] initWithChar1:*v14 char2:v14[1] char3:v14[2] char4:v14[3]];
  v16 = [v9 tag];
  v17 = [v16 isEqual:v15];

  if (v17)
  {
    [v8 setNeedsTransferLogs:0];
    v18 = self->_log;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v62 = "[UARPUSBPDUpdater qAccessoryTransferComplete:assetID:status:]";
      v63 = 2112;
      v64 = v8;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s: accessory no longer needs LOGS %@", buf, 0x16u);
    }

    if (!a5)
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
        v23 = [v9 localURL];
        v56 = 0;
        v53 = v22;
        LOBYTE(v22) = [v22 newLog:v23 error:&v56];
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
  v27 = [v9 tag];
  v28 = [v27 isEqual:v26];

  if (v28)
  {
    [v8 setNeedsTransferAnalytics:0];
    v29 = self->_log;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v62 = "[UARPUSBPDUpdater qAccessoryTransferComplete:assetID:status:]";
      v63 = 2112;
      v64 = v8;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%s: accessory no longer needs TICS %@", buf, 0x16u);
    }

    if (!a5)
    {
      v30 = [UARPDynamicAssetAnalyticsEvent alloc];
      v31 = [v9 localURL];
      v32 = [v30 initWithURL:v31];

      if ([v32 decomposeUARP])
      {
        [v32 send];
      }
    }
  }

  if ([v8 needsTransferLogs])
  {
    v33 = self->_log;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v62 = v8;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Soliciting LOGS for %@", buf, 0xCu);
    }

    v34 = self;
    v35 = v8;
    v36 = v15;
LABEL_33:
    [(UARPUSBPDUpdater *)v34 qSolicitDynamicAssetForUSBPDAccessory:v35 assetTag:v36];
    goto LABEL_34;
  }

  if ([v8 needsTransferAnalytics])
  {
    v37 = self->_log;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v62 = v8;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "Soliciting TICS for %@", buf, 0xCu);
    }

    v34 = self;
    v35 = v8;
    v36 = v26;
    goto LABEL_33;
  }

  if ([v8 isMagSafeCable])
  {
    if (![(UARPUSBPDUpdater *)self needsApplyStagedFirmware:v8])
    {
      v45 = [v8 hpmDelegate];
      v46 = [v45 routerID];

      [(UARPUSBPDUpdater *)self qRemoveDisconnectedAccessories:v46];
      v39 = [(UARPUSBPDUpdater *)self qHpmForRID:v46];
      v47 = self->_log;
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v62 = v39;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "Check for power adapter on HPM %@", buf, 0xCu);
      }

      [v39 setSopType:0];
      [(UARPUSBPDUpdater *)self qUpdatePowerAdapter:v39 identifier:0];
      goto LABEL_46;
    }

    uarpController = self->_uarpController;
    v39 = [v8 uarpAccessory];
    v60 = v39;
    v40 = &v60;
LABEL_38:
    v41 = [NSArray arrayWithObjects:v40 count:1];
    [(UARPController *)uarpController applyStagedFirmwareOnAccessoryList:v41 withUserIntent:0];

LABEL_46:
    goto LABEL_34;
  }

  if ([v8 isPowerAdapter])
  {
    v42 = self->_log;
    v43 = os_log_type_enabled(v42, OS_LOG_TYPE_INFO);
    if (a5)
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
      v50 = [v8 supportsAccMode7];
      *buf = 67109120;
      LODWORD(v62) = v50;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "power adapter supports accmode7 %d", buf, 8u);
    }

    if (-[UARPUSBPDUpdater needsApplyStagedFirmware:](self, "needsApplyStagedFirmware:", v8) && [v8 supportsAccMode7])
    {
      v51 = self->_log;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "Apply staged assets to power adapter", buf, 2u);
      }

      uarpController = self->_uarpController;
      v39 = [v8 uarpAccessory];
      v59 = v39;
      v40 = &v59;
      goto LABEL_38;
    }

    goto LABEL_34;
  }

  if (![v8 isUSBCLightning])
  {
    goto LABEL_34;
  }

  if ([(UARPUSBPDUpdater *)self needsApplyStagedFirmware:v8])
  {
    uarpController = self->_uarpController;
    v39 = [v8 uarpAccessory];
    v58 = v39;
    v40 = &v58;
    goto LABEL_38;
  }

  v52 = self->_log;
  if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v62 = v8;
    _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "Dongle doesn't need to apply firmware %@", buf, 0xCu);
  }

  [(UARPUSBPDUpdater *)self qAccessoryUnplugged:v8];
LABEL_34:
}

- (void)qAccessoryUnplugged:(id)a3
{
  v4 = [a3 hpmDelegate];
  v5 = [v4 routerID];

  [(UARPUSBPDUpdater *)self qRemoveDisconnectedAccessories:v5];
}

- (void)qRemoveDisconnectedAccessories:(unsigned __int16)a3
{
  v3 = a3;
  v29 = objc_alloc_init(NSMutableArray);
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v40) = v3;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Remove disconnected accessories on RID %d", buf, 8u);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v6 = self->_uarpUSBPDAccessories;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v35 objects:v46 count:16];
  v28 = v3;
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
        v12 = [v11 hpmDelegate];
        v13 = [v12 routerID];

        if (v13 == v3)
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

- (id)qHpmForRID:(unsigned __int16)a3
{
  v3 = a3;
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
        if ([v9 rid] == v3)
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

- (BOOL)queryProperties:(id)a3 accessoryID:(id)a4 goldrestoreQuery:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(UARPUSBPDUpdater *)self getUARPAccessoryForUARPAccessoryID:v9];
  v11 = v10;
  if (v10)
  {
    if (v5)
    {
      [v10 setGoldrestoreQueryInProgress:1];
    }

    v26 = v9;
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      sub_100023E84();
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = v8;
    v12 = v8;
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
          v19 = [v17 unsignedIntegerValue];
          v20 = [v11 uarpAccessory];
          v21 = [(UARPController *)uarpController queryProperty:v19 forAccessory:v20];

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

    v9 = v26;
    v8 = v27;
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100023E10();
  }

  return v11 != 0;
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
        [(UARPUSBPDUpdater *)self queryCompleteForAccessory:v9 modelName:0 error:v8];
      }

      else
      {
        v9 = [v11 uarpAccessory];
        [(UARPUSBPDUpdater *)self queryCompleteForAccessory:v9 manufacturer:0 error:v8];
      }
    }

    else if (a4 == 2)
    {
      v9 = [v11 uarpAccessory];
      [(UARPUSBPDUpdater *)self queryCompleteForAccessory:v9 serialNumber:0 error:v8];
    }

    else
    {
      [v11 uarpAccessory];
      if (a4 == 3)
        v9 = {;
        [(UARPUSBPDUpdater *)self queryCompleteForAccessory:v9 hardwareVersion:0 error:v8];
      }

      else
        v9 = {;
        [(UARPUSBPDUpdater *)self queryCompleteForAccessory:v9 firmwareVersion:0 error:v8];
      }
    }

    goto LABEL_24;
  }

  if (a4 <= 10)
  {
    if (a4 == 5)
    {
      v9 = [v11 uarpAccessory];
      [(UARPUSBPDUpdater *)self queryCompleteForAccessory:v9 stagedFirmwareVersion:0 error:v8];
    }

    else
    {
      if (a4 != 6)
      {
        goto LABEL_25;
      }

      v9 = [v11 uarpAccessory];
      [(UARPUSBPDUpdater *)self queryCompleteForAccessory:v9 stats:0 error:v8];
    }

    goto LABEL_24;
  }

  switch(a4)
  {
    case 0xBuLL:
      v9 = [v11 uarpAccessory];
      [(UARPUSBPDUpdater *)self queryCompleteForAccessory:v9 appleModelNumber:0 error:v8];
LABEL_24:

      break;
    case 0xCuLL:
      v10 = [v11 uarpAccessory];
      [(UARPUSBPDUpdater *)self queryCompleteForAccessory:v10 hwFusingType:0 error:v8];

      goto LABEL_23;
    case 0xDuLL:
LABEL_23:
      v9 = [v11 uarpAccessory];
      [(UARPUSBPDUpdater *)self queryCompleteForAccessory:v9 friendlyName:0 error:v8];
      goto LABEL_24;
  }

LABEL_25:
}

- (BOOL)applyStagedFirmwareForAccessories:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v4;
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
          v15 = [v13 uarpAccessory];
          [v5 addObject:v15];
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

- (BOOL)rescindStagedFirmwareForAccessories:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v4;
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
          v15 = [v13 uarpAccessory];
          [v5 addObject:v15];
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

- (void)solicitDynamicAssetForAccessories:(id)a3 assetID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100023F00();
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v6;
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
          v22 = v7;
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

- (void)assetAvailablityUpdateForAccessoryID:(id)a3 assetID:(id)a4
{
  v6 = a3;
  v7 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v9 = log;
    v10 = [v6 availableFirmwareVersion];
    v12 = 136315906;
    v13 = "[UARPUSBPDUpdater assetAvailablityUpdateForAccessoryID:assetID:]";
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s: accessory = %@, available version = %@, assetID = %@", &v12, 0x2Au);
  }

  v11 = [(UARPUSBPDUpdater *)self getUARPUSBPDAccessoryForUARPAccessory:v6];
  if (v11)
  {
    if ([v7 downloadStatus] == 2)
    {
      [(UARPUSBPDUpdater *)self assetDownloadFailed:v11 assetID:v7];
    }

    else if ([v7 updateAvailabilityStatus] == 1)
    {
      [(UARPUSBPDUpdater *)self assetOnAssetServer:v11 assetID:v7];
    }

    else if ([v7 updateAvailabilityStatus] == 3)
    {
      [(UARPUSBPDUpdater *)self assetOnLocalStorage:v11 assetID:v7];
    }

    else if ([v7 updateAvailabilityStatus] == 4)
    {
      [(UARPUSBPDUpdater *)self assetOnDropbox:v11 assetID:v7];
    }

    else if ([v7 updateAvailabilityStatus] == 6)
    {
      [(UARPUSBPDUpdater *)self assetNotFound:v11 assetID:v7];
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100023F8C();
  }
}

- (void)firmwareStagingComplete:(id)a3 assetID:(id)a4 withStatus:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v18 = 136315906;
    v19 = "[UARPUSBPDUpdater firmwareStagingComplete:assetID:withStatus:]";
    v20 = 2112;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    v24 = 2048;
    v25 = a5;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: accessory=%@, assetID=%@, status=%lu", &v18, 0x2Au);
  }

  v11 = [(UARPUSBPDUpdater *)self getUARPUSBPDAccessoryForUARPAccessory:v8];
  v12 = v11;
  if (v11)
  {
    if (a5 == 31)
    {
      v13 = [v11 hpmDelegate];
      v14 = [v13 isConnected];

      if (v14)
      {
        a5 = 31;
      }

      else
      {
        if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
        {
          sub_100024000();
        }

        a5 = 3;
      }
    }

    goldRestoreDelegate = self->_goldRestoreDelegate;
    if (objc_opt_respondsToSelector())
    {
      v16 = self->_goldRestoreDelegate;
      v17 = [v12 uarpAccessoryID];
      [(GoldRestoreUARPStatusDelegate *)v16 firmwareStagingComplete:v17 withStatus:a5];
    }

    else if (a5 == 3)
    {
      [(UARPUSBPDUpdater *)self accessoryUnplugged:v12];
    }

    else
    {
      [(UARPUSBPDUpdater *)self assetTransferComplete:v12 assetID:0 status:a5];
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100024074();
  }
}

- (void)stagedFirmwareApplicationComplete:(id)a3 withStatus:(unint64_t)a4
{
  v6 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v12 = 136315650;
    v13 = "[UARPUSBPDUpdater stagedFirmwareApplicationComplete:withStatus:]";
    v14 = 2112;
    v15 = v6;
    v16 = 2048;
    v17 = a4;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: accessory=%@, status=%lu", &v12, 0x20u);
  }

  v8 = [(UARPUSBPDUpdater *)self getUARPUSBPDAccessoryForUARPAccessory:v6];
  if (v8)
  {
    goldRestoreDelegate = self->_goldRestoreDelegate;
    if (objc_opt_respondsToSelector())
    {
      v10 = self->_goldRestoreDelegate;
      v11 = [v8 uarpAccessoryID];
      [(GoldRestoreUARPStatusDelegate *)v10 stagedFirmwareApplicationComplete:v11 withStatus:a4];
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

- (void)stagedFirmwareRescindComplete:(id)a3 withStatus:(unint64_t)a4
{
  v6 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v12 = 136315650;
    v13 = "[UARPUSBPDUpdater stagedFirmwareRescindComplete:withStatus:]";
    v14 = 2112;
    v15 = v6;
    v16 = 2048;
    v17 = a4;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: accessory=%@, status=%lu", &v12, 0x20u);
  }

  v8 = [(UARPUSBPDUpdater *)self getUARPUSBPDAccessoryForUARPAccessory:v6];
  if (v8)
  {
    goldRestoreDelegate = self->_goldRestoreDelegate;
    if (objc_opt_respondsToSelector())
    {
      v10 = self->_goldRestoreDelegate;
      v11 = [v8 uarpAccessoryID];
      [(GoldRestoreUARPStatusDelegate *)v10 stagedFirmwareRescindComplete:v11 withStatus:a4];
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

- (void)assetSolicitationComplete:(id)a3 assetID:(id)a4 withStatus:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v15 = 136315906;
    v16 = "[UARPUSBPDUpdater assetSolicitationComplete:assetID:withStatus:]";
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    v21 = 2048;
    v22 = a5;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: accessory=%@, assetID=%@, status=%lu", &v15, 0x2Au);
  }

  v11 = [(UARPUSBPDUpdater *)self getUARPUSBPDAccessoryForUARPAccessory:v8];
  if (v11)
  {
    goldRestoreDelegate = self->_goldRestoreDelegate;
    if (objc_opt_respondsToSelector())
    {
      v13 = self->_goldRestoreDelegate;
      v14 = [v11 uarpAccessoryID];
      [(GoldRestoreUARPStatusDelegate *)v13 assetSolicitationComplete:v14 assetID:v9 withStatus:a5];
    }

    else if (a5 == 3)
    {
      [(UARPUSBPDUpdater *)self accessoryUnplugged:v11];
    }

    else
    {
      [(UARPUSBPDUpdater *)self assetTransferComplete:v11 assetID:v9 status:a5];
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_1000241D0();
  }
}

- (void)queryCompleteForAccessory:(id)a3 manufacturer:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(UARPUSBPDUpdater *)self getUARPUSBPDAccessoryForUARPAccessory:v8];
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
      v17 = v9;
      v18 = v10;
      dispatch_async(delegateQueue, v15);
    }

    else
    {
      [v12 updateProperty:0 value:v9];
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100024244();
  }
}

- (void)queryCompleteForAccessory:(id)a3 modelName:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(UARPUSBPDUpdater *)self getUARPUSBPDAccessoryForUARPAccessory:v8];
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
      v17 = v9;
      v18 = v10;
      dispatch_async(delegateQueue, v15);
    }

    else
    {
      [v12 updateProperty:1 value:v9];
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_1000242B8();
  }
}

- (void)queryCompleteForAccessory:(id)a3 firmwareVersion:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(UARPUSBPDUpdater *)self getUARPUSBPDAccessoryForUARPAccessory:v8];
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
      v17 = v9;
      v18 = v10;
      dispatch_async(delegateQueue, v15);
    }

    else
    {
      [v12 updateProperty:4 value:v9];
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10002432C();
  }
}

- (void)queryCompleteForAccessory:(id)a3 stagedFirmwareVersion:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(UARPUSBPDUpdater *)self getUARPUSBPDAccessoryForUARPAccessory:v8];
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
      v17 = v9;
      v18 = v10;
      dispatch_async(delegateQueue, v15);
    }

    else
    {
      [v12 updateProperty:5 value:v9];
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_1000243A0();
  }
}

- (void)queryCompleteForAccessory:(id)a3 stats:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(UARPUSBPDUpdater *)self getUARPUSBPDAccessoryForUARPAccessory:v8];
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
        v17 = v9;
        v18 = v10;
        dispatch_async(delegateQueue, v15);
      }
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100024414();
  }
}

- (void)queryCompleteForAccessory:(id)a3 hardwareVersion:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(UARPUSBPDUpdater *)self getUARPUSBPDAccessoryForUARPAccessory:v8];
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
        v17 = v9;
        v18 = v10;
        dispatch_async(delegateQueue, v15);
      }
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100024488();
  }
}

- (void)queryCompleteForAccessory:(id)a3 serialNumber:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(UARPUSBPDUpdater *)self getUARPUSBPDAccessoryForUARPAccessory:v8];
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
      v17 = v9;
      v18 = v10;
      dispatch_async(delegateQueue, v15);
    }

    else
    {
      [v12 updateProperty:2 value:v9];
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_1000244FC();
  }
}

- (void)queryCompleteForAccessory:(id)a3 appleModelNumber:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(UARPUSBPDUpdater *)self getUARPUSBPDAccessoryForUARPAccessory:v8];
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
      v20 = v9;
      v21 = v10;
      dispatch_async(delegateQueue, v18);
    }

    else
    {
      if (!v10)
      {
        v14 = [v11 uarpAccessoryID];
        v15 = [v14 modelNumber];
        v16 = [v9 isEqualToString:v15];

        if ((v16 & 1) == 0)
        {
          log = self->_log;
          if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
          {
            sub_100024570(v9, log, v11);
          }
        }
      }

      [v11 updateProperty:11 value:v9];
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100024640();
  }
}

- (void)queryCompleteForAccessory:(id)a3 hwFusingType:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(UARPUSBPDUpdater *)self getUARPUSBPDAccessoryForUARPAccessory:v8];
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
      v16 = v9;
      v17 = v10;
      dispatch_async(delegateQueue, v14);
    }

    else
    {
      [v11 updateProperty:12 value:v9];
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_1000246B4();
  }
}

- (void)queryCompleteForAccessory:(id)a3 friendlyName:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(UARPUSBPDUpdater *)self getUARPUSBPDAccessoryForUARPAccessory:v8];
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
      v16 = v9;
      v17 = v10;
      dispatch_async(delegateQueue, v14);
    }

    else
    {
      [v11 updateProperty:13 value:v9];
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100024728();
  }
}

- (void)firmwareStagingProgress:(id)a3 assetID:(id)a4 bytesSent:(unint64_t)a5 bytesTotal:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [(UARPUSBPDUpdater *)self getUARPUSBPDAccessoryForUARPAccessory:v10];
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
    v23 = v10;
    v24 = 2112;
    v25 = v11;
    v26 = 2048;
    v27 = ((a5 / a6) * 100.0);
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
    v18 = a5;
    v19 = a6;
    dispatch_async(delegateQueue, v16);
  }
}

- (void)assetSolicitationProgress:(id)a3 assetID:(id)a4 bytesReceived:(unint64_t)a5 bytesTotal:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [(UARPUSBPDUpdater *)self getUARPUSBPDAccessoryForUARPAccessory:v10];
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
    v24 = v10;
    v25 = 2112;
    v26 = v11;
    v27 = 2048;
    v28 = ((a5 / a6) * 100.0);
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
    v18 = v11;
    v19 = a5;
    v20 = a6;
    dispatch_async(delegateQueue, block);
  }
}

- (BOOL)sendMessageToAccessory:(id)a3 uarpMsg:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  uarpQueue = self->_uarpQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A580;
  block[3] = &unk_100040688;
  block[4] = self;
  v14 = v7;
  v15 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(uarpQueue, block);

  return 1;
}

- (BOOL)recvUarpMsgFromAccessory:(id)a3 uarpMsg:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  uarpQueue = self->_uarpQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A6A0;
  block[3] = &unk_100040688;
  block[4] = self;
  v14 = v7;
  v15 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(uarpQueue, block);

  return 1;
}

- (void)assetDownloadFailed:(id)a3 assetID:(id)a4
{
  v6 = a3;
  v7 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v15 = "[UARPUSBPDUpdater assetDownloadFailed:assetID:]";
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
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
    v12 = v6;
    v13 = v7;
    dispatch_async(delegateQueue, block);
  }

  else if ([v7 updateAvailabilityStatus] == 6)
  {
    [(UARPUSBPDUpdater *)self assetTransferComplete:v6 assetID:0 status:4];
  }
}

- (void)assetOnAssetServer:(id)a3 assetID:(id)a4
{
  v6 = a3;
  v7 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v11 = 136315650;
    v12 = "[UARPUSBPDUpdater assetOnAssetServer:assetID:]";
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: usbpd = %@, assetID = %@", &v11, 0x20u);
  }

  uarpController = self->_uarpController;
  v10 = [v6 uarpAccessory];
  [(UARPController *)uarpController downloadAvailableFirmwareUpdate:v10 assetID:v7 withUserIntent:1];
}

- (void)assetOnDropbox:(id)a3 assetID:(id)a4
{
  v6 = a3;
  v7 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v11 = 136315650;
    v12 = "[UARPUSBPDUpdater assetOnDropbox:assetID:]";
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: usbpd = %@, assetID = %@", &v11, 0x20u);
  }

  uarpController = self->_uarpController;
  v10 = [v6 uarpAccessory];
  [(UARPController *)uarpController downloadAvailableFirmwareUpdate:v10 assetID:v7 withUserIntent:1];
}

- (void)assetNotFound:(id)a3 assetID:(id)a4
{
  v6 = a3;
  v7 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v15 = "[UARPUSBPDUpdater assetNotFound:assetID:]";
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
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
    v12 = v6;
    v13 = v7;
    dispatch_async(delegateQueue, block);
  }

  else if ([v7 updateAvailabilityStatus] == 6)
  {
    [(UARPUSBPDUpdater *)self assetTransferComplete:v6 assetID:0 status:4];
  }
}

- (void)assetOnLocalStorage:(id)a3 assetID:(id)a4
{
  v6 = a3;
  v7 = a4;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v12 = 136315650;
    v13 = "[UARPUSBPDUpdater assetOnLocalStorage:assetID:]";
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: usbpd = %@, assetID = %@", &v12, 0x20u);
  }

  if ([v6 requiresPowerAssertion])
  {
    v9 = self->_log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = 136315394;
      v13 = "[UARPUSBPDUpdater assetOnLocalStorage:assetID:]";
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s: usbpd = %@, requires power assertion", &v12, 0x16u);
    }

    [(UARPUSBPDUpdater *)self holdPowerAssertionForAccessory];
  }

  v10 = [v6 uarpAccessory];
  v11 = [NSArray arrayWithObject:v10];

  [(UARPController *)self->_uarpController stageFirmwareUpdateOnAccessoryList:v11 withUserIntent:1];
}

- (void)assetTransferComplete:(id)a3 assetID:(id)a4 status:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  hpmQueue = self->_hpmQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000AF50;
  v13[3] = &unk_100040728;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a5;
  v11 = v9;
  v12 = v8;
  dispatch_sync(hpmQueue, v13);
}

- (void)dynamicAssetTransferComplete:(id)a3 assetID:(id)a4
{
  v5 = a3;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100024904();
  }
}

- (BOOL)needsApplyStagedFirmware:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
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

  v6 = [v4 stagedFwVersion];

  v7 = self->_log;
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (!v6)
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
    v10 = [v5 stagedFwVersion];
    v22 = 138412546;
    v23 = v10;
    v24 = 2112;
    v25 = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "usbpd staged firmware of <%@> %@", &v22, 0x16u);
  }

  v11 = [v5 stagedFwVersion];
  v12 = [v11 isValid];

  log = self->_log;
  v14 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
  if ((v12 & 1) == 0)
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
    v16 = [v5 vuarpDelegate];
    v17 = [v16 stagedFwVersion];
    v22 = 138412546;
    v23 = v17;
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

- (void)disabledProductIdentifiers:(id)a3
{
  v4 = a3;
  hpmQueue = self->_hpmQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000B390;
  v7[3] = &unk_100040750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(hpmQueue, v7);
}

- (id)getUARPAccessoryForUARPAccessoryID:(id)a3
{
  v4 = a3;
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
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(hpmQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)getUARPUSBPDAccessoryForUARPAccessory:(id)a3
{
  v4 = a3;
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
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(hpmQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)accessoryUnplugged:(id)a3
{
  v4 = a3;
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
  v8 = v4;
  v6 = v4;
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