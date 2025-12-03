@interface UARPDFUUpdater
+ (UARPDFUUpdater)sharedInstance;
+ (id)matchingDictionaryForIdentifier:(id)identifier serialNumber:(id)number;
- (BOOL)addAccessory:(id)accessory enableNotification:(BOOL)notification;
- (BOOL)applyStagedFirmwareForAccessories:(id)accessories;
- (BOOL)connectUARPForUARPAccessory:(id)accessory;
- (BOOL)disconnectUARPForUARPAccessory:(id)accessory;
- (BOOL)getDfuModeForUARPAccessoryID:(id)d;
- (BOOL)queryProperties:(id)properties accessoryID:(id)d;
- (BOOL)recvUarpMsgFromAccessory:(id)accessory uarpMsg:(id)msg error:(id *)error;
- (BOOL)removeAccessory:(id)accessory;
- (BOOL)sendMessageToAccessory:(id)accessory uarpMsg:(id)msg error:(id *)error;
- (BOOL)setDfuModeAccessoryID:(id)d;
- (UARPDFUUpdater)init;
- (id)createAccessoryFromService:(unsigned int)service identifier:(id)identifier;
- (id)getAccessoriesForIdentifier:(id)identifier;
- (id)getDfuAccessoryForSerialNumber:(id)number;
- (id)getDfuAccessoryForUarpAccessory:(id)accessory;
- (id)getDfuAccessoryForUarpAccessoryID:(id)d;
- (void)accessoryTransferComplete:(id)complete assetID:(id)d status:(unint64_t)status;
- (void)assetAvailablityUpdateForAccessoryID:(id)d assetID:(id)iD;
- (void)assetDownloadFailed:(id)failed assetID:(id)d;
- (void)assetNotFound:(id)found assetID:(id)d;
- (void)assetOnLocalStorage:(id)storage assetID:(id)d;
- (void)assetTransferComplete:(id)complete assetID:(id)d status:(unint64_t)status;
- (void)firmwareStagingComplete:(id)complete assetID:(id)d withStatus:(unint64_t)status;
- (void)firmwareStagingProgress:(id)progress assetID:(id)d bytesSent:(unint64_t)sent bytesTotal:(unint64_t)total;
- (void)holdPowerAssertionForAccessory;
- (void)queryCompleteForAccessory:(id)accessory appleModelNumber:(id)number error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory firmwareVersion:(id)version error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory friendlyName:(id)name error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory hardwareVersion:(id)version error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory hwFusingType:(id)type error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory manufacturer:(id)manufacturer error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory modelName:(id)name error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory serialNumber:(id)number error:(id)error;
- (void)queryCompleteForAccessory:(id)accessory stagedFirmwareVersion:(id)version error:(id)error;
- (void)queryFailedForAccessory:(id)accessory property:(unint64_t)property error:(int64_t)error;
- (void)releasePowerAssertionForAccessory;
- (void)setUarpCaptureFileName:(id)name;
- (void)stagedFirmwareApplicationComplete:(id)complete withStatus:(unint64_t)status;
- (void)startUpdateForAccessories:(id)accessories assetID:(id)d;
- (void)startUpdateForAccessory:(id)accessory assetID:(id)d;
@end

@implementation UARPDFUUpdater

- (UARPDFUUpdater)init
{
  v16.receiver = self;
  v16.super_class = UARPDFUUpdater;
  v2 = [(UARPDFUUpdater *)&v16 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.accessoryupdater.uarp", "dfuUpdater");
    v4 = *(v2 + 1);
    *(v2 + 1) = v3;

    if (os_log_type_enabled(*(v2 + 1), OS_LOG_TYPE_DEBUG))
    {
      sub_100015EFC();
    }

    v5 = objc_alloc_init(NSMutableArray);
    v6 = *(v2 + 4);
    *(v2 + 4) = v5;

    v7 = dispatch_queue_create("com.apple.accessoryupdater.uarpdfuotp.uarpMessage.queue", 0);
    v8 = *(v2 + 5);
    *(v2 + 5) = v7;

    v9 = dispatch_queue_create("com.apple.accessoryupdater.uarpdfuotp.accry.queue", 0);
    v10 = *(v2 + 6);
    *(v2 + 6) = v9;

    v11 = dispatch_queue_create("com.apple.accessoryupdater.uarpdfuotp.delegate.queue", 0);
    v12 = *(v2 + 7);
    *(v2 + 7) = v11;

    v13 = objc_alloc_init(UARPController);
    v14 = *(v2 + 3);
    *(v2 + 3) = v13;

    [*(v2 + 3) setDelegate:v2];
    *(v2 + 16) = 0;
  }

  return v2;
}

+ (UARPDFUUpdater)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002598;
  block[3] = &unk_100024400;
  block[4] = self;
  if (qword_10002A4F8 != -1)
  {
    dispatch_once(&qword_10002A4F8, block);
  }

  v2 = qword_10002A4F0;

  return v2;
}

+ (id)matchingDictionaryForIdentifier:(id)identifier serialNumber:(id)number
{
  v4 = [UARPUSBDFUAccessory matchingDictionaryForIdentifier:identifier serialNumber:number];
  v5 = [v4 mutableCopy];

  [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:@"IOMatchLaunchStream"];
  [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:@"IOMatchAll"];

  return v5;
}

- (BOOL)recvUarpMsgFromAccessory:(id)accessory uarpMsg:(id)msg error:(id *)error
{
  accessoryCopy = accessory;
  msgCopy = msg;
  uarpMessageQueue = self->_uarpMessageQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002718;
  block[3] = &unk_100024428;
  block[4] = self;
  v14 = accessoryCopy;
  v15 = msgCopy;
  v10 = msgCopy;
  v11 = accessoryCopy;
  dispatch_async(uarpMessageQueue, block);

  return 1;
}

- (id)getAccessoriesForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = objc_alloc_init(NSMutableArray);
  [UARPUSBDFUAccessory matchingDictionaryForIdentifier:identifierCopy serialNumber:0];
  v20 = existing = 0;
  if (!IOServiceGetMatchingServices(kIOMainPortDefault, v20, &existing))
  {
    v6 = IOIteratorNext(existing);
    if (v6)
    {
      v7 = v6;
      do
      {
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v29 = identifierCopy;
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Instantiating accessory found %@", buf, 0xCu);
        }

        v9 = [(UARPDFUUpdater *)self createAccessoryFromService:v7 identifier:identifierCopy, v20];
        if (v9)
        {
          [v5 addObject:v9];
        }

        IOObjectRelease(v7);

        v7 = IOIteratorNext(existing);
      }

      while (v7);
    }

    IOObjectRelease(existing);
  }

  v10 = self->_log;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v29 = identifierCopy;
    v30 = 2112;
    v31 = v5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%@ accessories found  %@", buf, 0x16u);
  }

  v21 = identifierCopy;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = v5;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        if ([(UARPDFUUpdater *)self connectUARPForUARPAccessory:v16, v20, v21])
        {
          [(UARPDFUUpdater *)self addAccessory:v16 enableNotification:0];
        }

        else
        {
          v17 = self->_log;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v29 = "[UARPDFUUpdater getAccessoriesForIdentifier:]";
            v30 = 2112;
            v31 = v16;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s: Failed to initialize UARP layer for accessory (%@)", buf, 0x16u);
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v13);
  }

  v18 = [NSArray arrayWithArray:v11];

  return v18;
}

- (void)holdPowerAssertionForAccessory
{
  if (self->_powerAssertionID)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_100015FFC(log);
    }
  }

  else
  {
    v4 = [NSString stringWithFormat:@"com.apple.UARPPowerAssertion-USBDFU"];
    if ((createPowerAssertion() & 1) == 0 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100016040();
    }

    v5 = self->_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v7 = "[UARPDFUUpdater holdPowerAssertionForAccessory]";
      v8 = 2112;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s: Power assertion held for %@", buf, 0x16u);
    }

    self->_powerAssertionID = 0;
  }
}

- (void)releasePowerAssertionForAccessory
{
  if (self->_powerAssertionID)
  {
    if ((releasePowerAssertion() & 1) == 0)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        sub_1000160B4(log);
      }
    }

    v4 = self->_log;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[UARPDFUUpdater releasePowerAssertionForAccessory]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s: Power assertion released for USBDFU", &v6, 0xCu);
    }

    self->_powerAssertionID = 0;
  }

  else
  {
    v5 = self->_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100016138(v5);
    }
  }
}

- (BOOL)queryProperties:(id)properties accessoryID:(id)d
{
  propertiesCopy = properties;
  dCopy = d;
  v8 = [(UARPDFUUpdater *)self getDfuAccessoryForUarpAccessoryID:dCopy];
  if (v8)
  {
    v23 = dCopy;
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      sub_100016230();
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = propertiesCopy;
    v9 = propertiesCopy;
    v10 = [v9 countByEnumeratingWithState:&v25 objects:v35 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v25 + 1) + 8 * i);
          uarpController = self->_uarpController;
          unsignedIntegerValue = [v14 unsignedIntegerValue];
          uarpAccessory = [v8 uarpAccessory];
          v18 = [(UARPController *)uarpController queryProperty:unsignedIntegerValue forAccessory:uarpAccessory];

          if (v18)
          {
            log = self->_log;
            if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
            {
              v20 = log;
              [v14 unsignedIntegerValue];
              v21 = UARPAccessoryPropertyToString();
              *buf = 136315650;
              v30 = "[UARPDFUUpdater queryProperties:accessoryID:]";
              v31 = 2080;
              v32 = v21;
              v33 = 2048;
              v34 = v18;
              _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s: Query Property %s failed with error %ld", buf, 0x20u);
            }

            -[UARPDFUUpdater queryFailedForAccessory:property:error:](self, "queryFailedForAccessory:property:error:", v8, [v14 unsignedIntegerValue], v18);
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v25 objects:v35 count:16];
      }

      while (v11);
    }

    dCopy = v23;
    propertiesCopy = v24;
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_1000161BC();
  }

  return v8 != 0;
}

- (BOOL)getDfuModeForUARPAccessoryID:(id)d
{
  dCopy = d;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_1000162AC();
  }

  v5 = [(UARPDFUUpdater *)self getDfuAccessoryForUarpAccessoryID:dCopy];
  dfuModeActive = [v5 dfuModeActive];

  return dfuModeActive;
}

- (BOOL)setDfuModeAccessoryID:(id)d
{
  dCopy = d;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_10001632C();
  }

  v5 = [(UARPDFUUpdater *)self getDfuAccessoryForUarpAccessoryID:dCopy];
  if ([v5 requiresPowerAssertion])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v9 = 136315394;
      v10 = "[UARPDFUUpdater setDfuModeAccessoryID:]";
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: accessory = %@, requires power assertion", &v9, 0x16u);
    }

    [(UARPDFUUpdater *)self holdPowerAssertionForAccessory];
  }

  v7 = [v5 setDfuMode] == 0;
  [(UARPDFUUpdater *)self releasePowerAssertionForAccessory];

  return v7;
}

- (void)startUpdateForAccessories:(id)accessories assetID:(id)d
{
  accessoriesCopy = accessories;
  dCopy = d;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_1000163AC();
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v24 = "Starting update";
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = accessoriesCopy;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v20;
    *&v11 = 136315394;
    v18 = v11;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        v16 = [(UARPDFUUpdater *)self getDfuAccessoryForUarpAccessoryID:v15, v18, v19];
        if (v16)
        {
          [(UARPDFUUpdater *)self startUpdateForAccessory:v16 assetID:dCopy];
        }

        else
        {
          v17 = self->_log;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = v18;
            v24 = "[UARPDFUUpdater startUpdateForAccessories:assetID:]";
            v25 = 2112;
            v26 = v15;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s: Unknown UARPAccessoryID %@, dropping it", buf, 0x16u);
          }
        }
      }

      v12 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v12);
  }
}

- (BOOL)applyStagedFirmwareForAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_10001642C();
  }

  v5 = +[NSMutableArray array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = accessoriesCopy;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v22;
    *&v8 = 136315394;
    v20 = v8;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = [(UARPDFUUpdater *)self getDfuAccessoryForUarpAccessoryID:v12, v20, v21];
        v14 = v13;
        if (v13)
        {
          uarpAccessory = [v13 uarpAccessory];
          [v5 addObject:uarpAccessory];

          if ([v14 requiresPowerAssertion])
          {
            log = self->_log;
            if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
            {
              *buf = v20;
              v26 = "[UARPDFUUpdater applyStagedFirmwareForAccessories:]";
              v27 = 2112;
              v28 = v14;
              _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: accessory = %@, requires power assertion", buf, 0x16u);
            }

            [(UARPDFUUpdater *)self holdPowerAssertionForAccessory];
          }
        }

        else
        {
          v17 = self->_log;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = v20;
            v26 = "[UARPDFUUpdater applyStagedFirmwareForAccessories:]";
            v27 = 2112;
            v28 = v12;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s: Unknown UARPAccessoryID %@", buf, 0x16u);
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v9);
  }

  v18 = [(UARPController *)self->_uarpController applyStagedFirmwareOnAccessoryList:v5 withUserIntent:1];
  return v18;
}

- (void)assetTransferComplete:(id)complete assetID:(id)d status:(unint64_t)status
{
  completeCopy = complete;
  dCopy = d;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v12 = 136315394;
    v13 = "[UARPDFUUpdater assetTransferComplete:assetID:status:]";
    v14 = 2112;
    v15 = completeCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Asset Staging complete = %@", &v12, 0x16u);
  }

  v11 = [(UARPDFUUpdater *)self getDfuAccessoryForUarpAccessoryID:completeCopy];
  if (v11)
  {
    [(UARPDFUUpdater *)self accessoryTransferComplete:v11 assetID:dCopy status:status];
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_1000164AC();
  }
}

- (void)startUpdateForAccessory:(id)accessory assetID:(id)d
{
  accessoryCopy = accessory;
  dCopy = d;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100016520();
  }

  identifier = [accessoryCopy identifier];
  v9 = [UARPSupportedAccessory findByAppleModelNumber:identifier];

  if ([v9 updateRequiresPowerAssertion])
  {
    [accessoryCopy setRequiresPowerAssertion:1];
  }

  if (self->_serviceInstance)
  {
    uarpAccessory = [accessoryCopy uarpAccessory];
    getID = [uarpAccessory getID];
    [(UARPDFUUpdater *)self queryProperties:&off_100024E50 accessoryID:getID];

    [accessoryCopy waitForQueriesCompletion:&off_100024E50];
  }

  v12 = dCopy;
  v13 = v12;
  if (!v12)
  {
    v13 = [[UARPAssetID alloc] initWithLocationType:3 remoteURL:0];
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_1000165A0();
  }

  uarpController = self->_uarpController;
  uarpAccessory2 = [accessoryCopy uarpAccessory];
  [(UARPController *)uarpController changeAssetLocation:uarpAccessory2 assetID:v13];
}

- (id)getDfuAccessoryForUarpAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100003B20;
  v16 = sub_100003B30;
  v17 = 0;
  accessoriesQueue = self->_accessoriesQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003B38;
  block[3] = &unk_100024450;
  block[4] = self;
  v10 = accessoryCopy;
  v11 = &v12;
  v6 = accessoryCopy;
  dispatch_sync(accessoriesQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)getDfuAccessoryForUarpAccessoryID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100003B20;
  v16 = sub_100003B30;
  v17 = 0;
  accessoriesQueue = self->_accessoriesQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003E2C;
  block[3] = &unk_100024450;
  block[4] = self;
  v10 = dCopy;
  v11 = &v12;
  v6 = dCopy;
  dispatch_sync(accessoriesQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)getDfuAccessoryForSerialNumber:(id)number
{
  numberCopy = number;
  v5 = numberCopy;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100003B20;
  v16 = sub_100003B30;
  v17 = 0;
  if (numberCopy)
  {
    accessoriesQueue = self->_accessoriesQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100004140;
    block[3] = &unk_100024450;
    block[4] = self;
    v10 = numberCopy;
    v11 = &v12;
    dispatch_sync(accessoriesQueue, block);
    v7 = v13[5];
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)createAccessoryFromService:(unsigned int)service identifier:(id)identifier
{
  identifierCopy = identifier;
  properties = 0;
  IORegistryEntryCreateCFProperties(service, &properties, kCFAllocatorDefault, 0);
  if (properties)
  {
    v7 = CFDictionaryGetValue(properties, @"kUSBProductString");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = CFDictionaryGetValue(properties, @"kUSBSerialNumberString");
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = CFDictionaryGetValue(properties, @"bcdDevice");
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        CFRelease(properties);
        if (isKindOfClass)
        {
          v13[0] = [v9 unsignedIntValue] >> 12;
          v13[1] = ([v9 unsignedIntValue] >> 8) & 0xF;
          v13[2] = [v9 unsignedIntValue] >> 4;
          LOBYTE(v14) = [v9 unsignedIntValue] & 0xF;
          v14 = v14;
          v11 = [[UARPUSBDFUAccessory alloc] initWithIdentifier:identifierCopy serialNumber:v8 fwVersion:v13];
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        CFRelease(properties);
        v11 = 0;
      }
    }

    else
    {
      CFRelease(properties);
      v11 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_1000167A0();
    }

    v11 = 0;
  }

  return v11;
}

- (BOOL)connectUARPForUARPAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  [accessoryCopy connectUarpController:self options:v11];
  uarpController = self->_uarpController;
  uarpAccessory = [accessoryCopy uarpAccessory];
  LOBYTE(uarpController) = [(UARPController *)uarpController addAccessory:uarpAccessory assetID:0];

  if ((uarpController & 1) == 0)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100016830();
    }

    goto LABEL_8;
  }

  v7 = self->_uarpController;
  uarpAccessory2 = [accessoryCopy uarpAccessory];
  LOBYTE(v7) = [(UARPController *)v7 accessoryReachable:uarpAccessory2];

  if ((v7 & 1) == 0)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_1000168A4();
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  v9 = 1;
LABEL_9:

  return v9;
}

- (BOOL)disconnectUARPForUARPAccessory:(id)accessory
{
  uarpController = self->_uarpController;
  accessoryCopy = accessory;
  uarpAccessory = [accessoryCopy uarpAccessory];
  [(UARPController *)uarpController accessoryUnreachable:uarpAccessory];

  v7 = self->_uarpController;
  uarpAccessory2 = [accessoryCopy uarpAccessory];
  [(UARPController *)v7 removeAccessory:uarpAccessory2];

  [accessoryCopy disconnectUarpController];
  return 1;
}

- (BOOL)addAccessory:(id)accessory enableNotification:(BOOL)notification
{
  notificationCopy = notification;
  accessoryCopy = accessory;
  v7 = accessoryCopy;
  if (accessoryCopy)
  {
    accessoriesQueue = self->_accessoriesQueue;
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_1000047E8;
    v14 = &unk_100024478;
    selfCopy = self;
    v9 = accessoryCopy;
    v16 = v9;
    dispatch_sync(accessoriesQueue, &v11);
    if (notificationCopy)
    {
      [v9 enableDisconnectCallback:sub_1000048B8 reference:{self, v11, v12, v13, v14, selfCopy}];
    }
  }

  return v7 != 0;
}

- (BOOL)removeAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v5 = accessoryCopy;
  if (accessoryCopy)
  {
    accessoriesQueue = self->_accessoriesQueue;
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_100004B70;
    v12 = &unk_100024478;
    selfCopy = self;
    v7 = accessoryCopy;
    v14 = v7;
    dispatch_sync(accessoriesQueue, &v9);
    [(UARPDFUUpdater *)self disconnectUARPForUARPAccessory:v7, v9, v10, v11, v12, selfCopy];
  }

  return v5 != 0;
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
        [(UARPDFUUpdater *)self queryCompleteForAccessory:uarpAccessory modelName:0 error:v8];
      }

      else
      {
        uarpAccessory = [accessoryCopy uarpAccessory];
        [(UARPDFUUpdater *)self queryCompleteForAccessory:uarpAccessory manufacturer:0 error:v8];
      }
    }

    else if (property == 2)
    {
      uarpAccessory = [accessoryCopy uarpAccessory];
      [(UARPDFUUpdater *)self queryCompleteForAccessory:uarpAccessory serialNumber:0 error:v8];
    }

    else
    {
      [accessoryCopy uarpAccessory];
      if (property == 3)
        uarpAccessory = {;
        [(UARPDFUUpdater *)self queryCompleteForAccessory:uarpAccessory hardwareVersion:0 error:v8];
      }

      else
        uarpAccessory = {;
        [(UARPDFUUpdater *)self queryCompleteForAccessory:uarpAccessory firmwareVersion:0 error:v8];
      }
    }

    goto LABEL_24;
  }

  if (property <= 10)
  {
    if (property == 5)
    {
      uarpAccessory = [accessoryCopy uarpAccessory];
      [(UARPDFUUpdater *)self queryCompleteForAccessory:uarpAccessory stagedFirmwareVersion:0 error:v8];
    }

    else
    {
      if (property != 6)
      {
        goto LABEL_25;
      }

      uarpAccessory = [accessoryCopy uarpAccessory];
      [(UARPDFUUpdater *)self queryCompleteForAccessory:uarpAccessory stats:0 error:v8];
    }

    goto LABEL_24;
  }

  switch(property)
  {
    case 0xBuLL:
      uarpAccessory = [accessoryCopy uarpAccessory];
      [(UARPDFUUpdater *)self queryCompleteForAccessory:uarpAccessory appleModelNumber:0 error:v8];
LABEL_24:

      break;
    case 0xCuLL:
      uarpAccessory2 = [accessoryCopy uarpAccessory];
      [(UARPDFUUpdater *)self queryCompleteForAccessory:uarpAccessory2 hwFusingType:0 error:v8];

      goto LABEL_23;
    case 0xDuLL:
LABEL_23:
      uarpAccessory = [accessoryCopy uarpAccessory];
      [(UARPDFUUpdater *)self queryCompleteForAccessory:uarpAccessory friendlyName:0 error:v8];
      goto LABEL_24;
  }

LABEL_25:
}

- (void)setUarpCaptureFileName:(id)name
{
  v4 = [name copy];
  uarpCaptureFileName = self->_uarpCaptureFileName;
  self->_uarpCaptureFileName = v4;

  if (self->_uarpCaptureFileName)
  {
    [(UARPController *)self->_uarpController stopPacketCapture];
    v7 = self->_uarpCaptureFileName;
    uarpController = self->_uarpController;

    [(UARPController *)uarpController startPacketCapture:v7];
  }
}

- (void)assetDownloadFailed:(id)failed assetID:(id)d
{
  failedCopy = failed;
  dCopy = d;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v15 = "[UARPDFUUpdater assetDownloadFailed:assetID:]";
    v16 = 2112;
    v17 = failedCopy;
    v18 = 2112;
    v19 = dCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: dfuotp = %@, assetID = %@", buf, 0x20u);
  }

  goldRestoreDelegate = self->_goldRestoreDelegate;
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005160;
    block[3] = &unk_100024428;
    block[4] = self;
    v12 = failedCopy;
    v13 = dCopy;
    dispatch_async(delegateQueue, block);
  }

  [(UARPDFUUpdater *)self removeAccessory:failedCopy];
}

- (void)assetNotFound:(id)found assetID:(id)d
{
  foundCopy = found;
  dCopy = d;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v15 = "[UARPDFUUpdater assetNotFound:assetID:]";
    v16 = 2112;
    v17 = foundCopy;
    v18 = 2112;
    v19 = dCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: dfuotp = %@, assetID = %@", buf, 0x20u);
  }

  goldRestoreDelegate = self->_goldRestoreDelegate;
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = self->_delegateQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000534C;
    block[3] = &unk_100024428;
    block[4] = self;
    v12 = foundCopy;
    v13 = dCopy;
    dispatch_async(delegateQueue, block);
  }

  [(UARPDFUUpdater *)self removeAccessory:foundCopy];
}

- (void)assetOnLocalStorage:(id)storage assetID:(id)d
{
  storageCopy = storage;
  dCopy = d;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v14 = "[UARPDFUUpdater assetOnLocalStorage:assetID:]";
    v15 = 2112;
    v16 = dCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Asset Found On Local Storage assetID = %@", buf, 0x16u);
  }

  if ([storageCopy requiresPowerAssertion])
  {
    v9 = self->_log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v14 = "[UARPDFUUpdater assetOnLocalStorage:assetID:]";
      v15 = 2112;
      v16 = storageCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s: accessory = %@, requires power assertion", buf, 0x16u);
    }

    [(UARPDFUUpdater *)self holdPowerAssertionForAccessory];
  }

  uarpAccessory = [storageCopy uarpAccessory];
  v12 = uarpAccessory;
  v11 = [NSArray arrayWithObjects:&v12 count:1];

  [(UARPController *)self->_uarpController stageFirmwareUpdateOnAccessoryList:v11 withUserIntent:1];
}

- (void)accessoryTransferComplete:(id)complete assetID:(id)d status:(unint64_t)status
{
  completeCopy = complete;
  dCopy = d;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v11 = log;
    v12 = [dCopy tag];
    *buf = 136315906;
    v18 = "[UARPDFUUpdater accessoryTransferComplete:assetID:status:]";
    v19 = 2112;
    v20 = v12;
    v21 = 2080;
    v22 = UARPFirmwareStagingCompletionStatusToString();
    v23 = 2112;
    v24 = completeCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s: accessory asset transfer <tag=%@> complete with status <%s> %@", buf, 0x2Au);
  }

  if (status)
  {
    if ([(UARPDFUUpdater *)self removeAccessory:completeCopy])
    {
      [completeCopy disableDisconnectCallback];
    }
  }

  else
  {
    uarpController = self->_uarpController;
    uarpAccessory = [completeCopy uarpAccessory];
    v16 = uarpAccessory;
    v15 = [NSArray arrayWithObjects:&v16 count:1];
    [(UARPController *)uarpController applyStagedFirmwareOnAccessoryList:v15 withUserIntent:0];
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
    *v16 = 136315906;
    *&v16[4] = "[UARPDFUUpdater assetAvailablityUpdateForAccessoryID:assetID:]";
    *&v16[12] = 2112;
    *&v16[14] = dCopy;
    *&v16[22] = 2112;
    v17 = availableFirmwareVersion;
    v18 = 2112;
    v19 = iDCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s: accessory = %@, available version = %@, assetID = %@", v16, 0x2Au);
  }

  v11 = [(UARPDFUUpdater *)self getDfuAccessoryForUarpAccessory:dCopy];
  if (v11)
  {
    if ([iDCopy downloadStatus] == 2)
    {
      [(UARPDFUUpdater *)self assetDownloadFailed:v11 assetID:iDCopy];
      goto LABEL_18;
    }

    if ([iDCopy updateAvailabilityStatus] == 6)
    {
      [(UARPDFUUpdater *)self assetNotFound:v11 assetID:iDCopy];
      goto LABEL_18;
    }

    if ([iDCopy updateAvailabilityStatus] == 1)
    {
      v12 = self->_log;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v16 = 136315394;
        *&v16[4] = "[UARPDFUUpdater assetAvailablityUpdateForAccessoryID:assetID:]";
        *&v16[12] = 2112;
        *&v16[14] = iDCopy;
        v13 = "%s: Asset found On Asset Server assetID = %@";
LABEL_16:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, v13, v16, 0x16u);
        goto LABEL_17;
      }

      goto LABEL_17;
    }

    if ([iDCopy updateAvailabilityStatus] == 4)
    {
      v12 = self->_log;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v16 = 136315394;
        *&v16[4] = "[UARPDFUUpdater assetAvailablityUpdateForAccessoryID:assetID:]";
        *&v16[12] = 2112;
        *&v16[14] = iDCopy;
        v13 = "%s: Asset found On Dropbox assetID = %@";
        goto LABEL_16;
      }

LABEL_17:
      uarpController = self->_uarpController;
      uarpAccessory = [v11 uarpAccessory];
      [(UARPController *)uarpController downloadAvailableFirmwareUpdate:uarpAccessory assetID:iDCopy withUserIntent:1];

      goto LABEL_18;
    }

    if ([iDCopy updateAvailabilityStatus] == 3)
    {
      [(UARPDFUUpdater *)self assetOnLocalStorage:v11 assetID:iDCopy];
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100016918();
  }

LABEL_18:
}

- (BOOL)sendMessageToAccessory:(id)accessory uarpMsg:(id)msg error:(id *)error
{
  accessoryCopy = accessory;
  msgCopy = msg;
  uarpMessageQueue = self->_uarpMessageQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005A54;
  block[3] = &unk_100024428;
  block[4] = self;
  v14 = accessoryCopy;
  v15 = msgCopy;
  v10 = msgCopy;
  v11 = accessoryCopy;
  dispatch_async(uarpMessageQueue, block);

  return 1;
}

- (void)firmwareStagingProgress:(id)progress assetID:(id)d bytesSent:(unint64_t)sent bytesTotal:(unint64_t)total
{
  progressCopy = progress;
  dCopy = d;
  v12 = [(UARPDFUUpdater *)self getDfuAccessoryForUarpAccessory:progressCopy];
  log = self->_log;
  if (v12)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v21 = "[UARPDFUUpdater firmwareStagingProgress:assetID:bytesSent:bytesTotal:]";
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
      v16[2] = sub_100005C8C;
      v16[3] = &unk_1000244A0;
      v16[4] = self;
      v17 = v12;
      sentCopy = sent;
      totalCopy = total;
      dispatch_async(delegateQueue, v16);
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10001698C();
  }
}

- (void)firmwareStagingComplete:(id)complete assetID:(id)d withStatus:(unint64_t)status
{
  completeCopy = complete;
  dCopy = d;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v18 = "[UARPDFUUpdater firmwareStagingComplete:assetID:withStatus:]";
    v19 = 2112;
    v20 = completeCopy;
    v21 = 2112;
    v22 = dCopy;
    v23 = 2048;
    statusCopy = status;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: accessory=%@, assetID=%@, status=%lu", buf, 0x2Au);
  }

  v11 = [(UARPDFUUpdater *)self getDfuAccessoryForUarpAccessory:completeCopy];
  if (v11)
  {
    goldRestoreDelegate = self->_goldRestoreDelegate;
    if (objc_opt_respondsToSelector())
    {
      delegateQueue = self->_delegateQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100005EB8;
      block[3] = &unk_1000244C8;
      block[4] = self;
      v15 = v11;
      statusCopy2 = status;
      dispatch_async(delegateQueue, block);
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100016A00();
  }
}

- (void)queryCompleteForAccessory:(id)accessory manufacturer:(id)manufacturer error:(id)error
{
  accessoryCopy = accessory;
  manufacturerCopy = manufacturer;
  errorCopy = error;
  v11 = [(UARPDFUUpdater *)self getDfuAccessoryForUarpAccessory:accessoryCopy];
  if (v11)
  {
    goldRestoreDelegate = self->_goldRestoreDelegate;
    if (objc_opt_respondsToSelector())
    {
      delegateQueue = self->_delegateQueue;
      v14 = _NSConcreteStackBlock;
      v15 = 3221225472;
      v16 = sub_100006084;
      v17 = &unk_1000244F0;
      selfCopy = self;
      v19 = v11;
      v20 = manufacturerCopy;
      v21 = errorCopy;
      dispatch_async(delegateQueue, &v14);
    }

    [v11 updateQueriesCompleted:{&off_100024DB8, v14, v15, v16, v17, selfCopy}];
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100016A74();
  }
}

- (void)queryCompleteForAccessory:(id)accessory modelName:(id)name error:(id)error
{
  accessoryCopy = accessory;
  nameCopy = name;
  errorCopy = error;
  v11 = [(UARPDFUUpdater *)self getDfuAccessoryForUarpAccessory:accessoryCopy];
  if (v11)
  {
    goldRestoreDelegate = self->_goldRestoreDelegate;
    if (objc_opt_respondsToSelector())
    {
      delegateQueue = self->_delegateQueue;
      v14 = _NSConcreteStackBlock;
      v15 = 3221225472;
      v16 = sub_100006250;
      v17 = &unk_1000244F0;
      selfCopy = self;
      v19 = v11;
      v20 = nameCopy;
      v21 = errorCopy;
      dispatch_async(delegateQueue, &v14);
    }

    [v11 updateQueriesCompleted:{&off_100024DD0, v14, v15, v16, v17, selfCopy}];
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100016AE8();
  }
}

- (void)queryCompleteForAccessory:(id)accessory firmwareVersion:(id)version error:(id)error
{
  accessoryCopy = accessory;
  versionCopy = version;
  errorCopy = error;
  v11 = [(UARPDFUUpdater *)self getDfuAccessoryForUarpAccessory:accessoryCopy];
  if (v11)
  {
    goldRestoreDelegate = self->_goldRestoreDelegate;
    if (objc_opt_respondsToSelector())
    {
      delegateQueue = self->_delegateQueue;
      v14 = _NSConcreteStackBlock;
      v15 = 3221225472;
      v16 = sub_10000641C;
      v17 = &unk_1000244F0;
      selfCopy = self;
      v19 = v11;
      v20 = versionCopy;
      v21 = errorCopy;
      dispatch_async(delegateQueue, &v14);
    }

    [v11 updateQueriesCompleted:{&off_100024D88, v14, v15, v16, v17, selfCopy}];
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100016B5C();
  }
}

- (void)queryCompleteForAccessory:(id)accessory stagedFirmwareVersion:(id)version error:(id)error
{
  accessoryCopy = accessory;
  versionCopy = version;
  errorCopy = error;
  v11 = [(UARPDFUUpdater *)self getDfuAccessoryForUarpAccessory:accessoryCopy];
  if (v11)
  {
    goldRestoreDelegate = self->_goldRestoreDelegate;
    if (objc_opt_respondsToSelector())
    {
      delegateQueue = self->_delegateQueue;
      v14 = _NSConcreteStackBlock;
      v15 = 3221225472;
      v16 = sub_1000065E8;
      v17 = &unk_1000244F0;
      selfCopy = self;
      v19 = v11;
      v20 = versionCopy;
      v21 = errorCopy;
      dispatch_async(delegateQueue, &v14);
    }

    [v11 updateQueriesCompleted:{&off_100024DE8, v14, v15, v16, v17, selfCopy}];
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100016BD0();
  }
}

- (void)queryCompleteForAccessory:(id)accessory hwFusingType:(id)type error:(id)error
{
  accessoryCopy = accessory;
  typeCopy = type;
  errorCopy = error;
  v11 = [(UARPDFUUpdater *)self getDfuAccessoryForUarpAccessory:accessoryCopy];
  if (v11)
  {
    goldRestoreDelegate = self->_goldRestoreDelegate;
    if (objc_opt_respondsToSelector())
    {
      delegateQueue = self->_delegateQueue;
      v14 = _NSConcreteStackBlock;
      v15 = 3221225472;
      v16 = sub_1000067B4;
      v17 = &unk_1000244F0;
      selfCopy = self;
      v19 = v11;
      v20 = typeCopy;
      v21 = errorCopy;
      dispatch_async(delegateQueue, &v14);
    }

    [v11 updateQueriesCompleted:{&off_100024DA0, v14, v15, v16, v17, selfCopy}];
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100016C44();
  }
}

- (void)queryCompleteForAccessory:(id)accessory appleModelNumber:(id)number error:(id)error
{
  accessoryCopy = accessory;
  numberCopy = number;
  errorCopy = error;
  v11 = [(UARPDFUUpdater *)self getDfuAccessoryForUarpAccessory:accessoryCopy];
  if (v11)
  {
    goldRestoreDelegate = self->_goldRestoreDelegate;
    if (objc_opt_respondsToSelector())
    {
      delegateQueue = self->_delegateQueue;
      v14 = _NSConcreteStackBlock;
      v15 = 3221225472;
      v16 = sub_100006980;
      v17 = &unk_1000244F0;
      selfCopy = self;
      v19 = v11;
      v20 = numberCopy;
      v21 = errorCopy;
      dispatch_async(delegateQueue, &v14);
    }

    [v11 updateQueriesCompleted:{&off_100024E00, v14, v15, v16, v17, selfCopy}];
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100016CB8();
  }
}

- (void)queryCompleteForAccessory:(id)accessory serialNumber:(id)number error:(id)error
{
  accessoryCopy = accessory;
  numberCopy = number;
  errorCopy = error;
  v11 = [(UARPDFUUpdater *)self getDfuAccessoryForUarpAccessory:accessoryCopy];
  if (v11)
  {
    goldRestoreDelegate = self->_goldRestoreDelegate;
    if (objc_opt_respondsToSelector())
    {
      delegateQueue = self->_delegateQueue;
      v14 = _NSConcreteStackBlock;
      v15 = 3221225472;
      v16 = sub_100006B4C;
      v17 = &unk_1000244F0;
      selfCopy = self;
      v19 = v11;
      v20 = numberCopy;
      v21 = errorCopy;
      dispatch_async(delegateQueue, &v14);
    }

    [v11 updateQueriesCompleted:{&off_100024D58, v14, v15, v16, v17, selfCopy}];
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100016D2C();
  }
}

- (void)queryCompleteForAccessory:(id)accessory hardwareVersion:(id)version error:(id)error
{
  accessoryCopy = accessory;
  versionCopy = version;
  errorCopy = error;
  v11 = [(UARPDFUUpdater *)self getDfuAccessoryForUarpAccessory:accessoryCopy];
  if (v11)
  {
    goldRestoreDelegate = self->_goldRestoreDelegate;
    if (objc_opt_respondsToSelector())
    {
      delegateQueue = self->_delegateQueue;
      v14 = _NSConcreteStackBlock;
      v15 = 3221225472;
      v16 = sub_100006D18;
      v17 = &unk_1000244F0;
      selfCopy = self;
      v19 = v11;
      v20 = versionCopy;
      v21 = errorCopy;
      dispatch_async(delegateQueue, &v14);
    }

    [v11 updateQueriesCompleted:{&off_100024D70, v14, v15, v16, v17, selfCopy}];
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100016DA0();
  }
}

- (void)queryCompleteForAccessory:(id)accessory friendlyName:(id)name error:(id)error
{
  accessoryCopy = accessory;
  nameCopy = name;
  errorCopy = error;
  v11 = [(UARPDFUUpdater *)self getDfuAccessoryForUarpAccessory:accessoryCopy];
  if (v11)
  {
    goldRestoreDelegate = self->_goldRestoreDelegate;
    if (objc_opt_respondsToSelector())
    {
      delegateQueue = self->_delegateQueue;
      v14 = _NSConcreteStackBlock;
      v15 = 3221225472;
      v16 = sub_100006EE4;
      v17 = &unk_1000244F0;
      selfCopy = self;
      v19 = v11;
      v20 = nameCopy;
      v21 = errorCopy;
      dispatch_async(delegateQueue, &v14);
    }

    [v11 updateQueriesCompleted:{&off_100024E18, v14, v15, v16, v17, selfCopy}];
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100016E14();
  }
}

- (void)stagedFirmwareApplicationComplete:(id)complete withStatus:(unint64_t)status
{
  completeCopy = complete;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100016E88();
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v15 = "[UARPDFUUpdater stagedFirmwareApplicationComplete:withStatus:]";
    v16 = 2112;
    v17 = completeCopy;
    v18 = 2048;
    statusCopy = status;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: accessory=%@, status=%lu", buf, 0x20u);
  }

  v8 = [(UARPDFUUpdater *)self getDfuAccessoryForUarpAccessory:completeCopy];
  if (v8)
  {
    goldRestoreDelegate = self->_goldRestoreDelegate;
    if (objc_opt_respondsToSelector())
    {
      delegateQueue = self->_delegateQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100007124;
      block[3] = &unk_1000244C8;
      block[4] = self;
      v12 = v8;
      statusCopy2 = status;
      dispatch_async(delegateQueue, block);
    }

    [(UARPDFUUpdater *)self removeAccessory:v8];
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100016F08();
  }
}

@end