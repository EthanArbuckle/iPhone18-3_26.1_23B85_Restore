@interface UARPUSBDFUAccessory
+ (id)matchingDictionaryForIdentifier:(id)identifier serialNumber:(id)number;
+ (id)matchingDictionaryHIDForIdentifier:(id)identifier serialNumber:(id)number;
- (BOOL)updateQueriesCompleted:(id)completed;
- (BOOL)waitForQueriesCompletion:(id)completion;
- (UARPUSBDFUAccessory)initWithIdentifier:(id)identifier serialNumber:(id)number fwVersion:(UARPVersion *)version;
- (UARPVersion)activeFW;
- (UARPVersion)stagedFW;
- (id)description;
- (int)applyFirmware;
- (int)disableDisconnectCallback;
- (int)enableDisconnectCallback:(void *)callback reference:(void *)reference;
- (unsigned)connectUarpController:(id)controller options:(uarpPlatformOptionsObj *)options;
- (unsigned)disconnectUarpController;
- (unsigned)recvMessage:(id)message;
- (void)setStagedFW:(UARPVersion)w;
@end

@implementation UARPUSBDFUAccessory

+ (id)matchingDictionaryForIdentifier:(id)identifier serialNumber:(id)number
{
  identifierCopy = identifier;
  numberCopy = number;
  v7 = [UARPSupportedAccessory findByAppleModelNumber:identifierCopy];
  hardwareID = [v7 hardwareID];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    hardwareID2 = [v7 hardwareID];
    v11 = +[USBDFUUpdater matchingDictionaryForVendorID:productId:serialNumber:](USBDFUUpdater, "matchingDictionaryForVendorID:productId:serialNumber:", [hardwareID2 vendorID], objc_msgSend(hardwareID2, "productID"), numberCopy);
  }

  else
  {
    v12 = os_log_create("com.apple.accessoryupdater.uarp", "dfuUpdater");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100016F7C();
    }

    v11 = 0;
  }

  return v11;
}

+ (id)matchingDictionaryHIDForIdentifier:(id)identifier serialNumber:(id)number
{
  identifierCopy = identifier;
  numberCopy = number;
  v7 = [UARPSupportedAccessory findByAppleModelNumber:identifierCopy];
  hardwareID = [v7 hardwareID];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    hardwareID2 = [v7 hardwareID];
    v11 = +[USBDFUUpdater matchingDictionaryHIDForVendorID:productId:serialNumber:](USBDFUUpdater, "matchingDictionaryHIDForVendorID:productId:serialNumber:", [hardwareID2 vendorID], objc_msgSend(hardwareID2, "productID"), numberCopy);
  }

  else
  {
    v12 = os_log_create("com.apple.accessoryupdater.uarp", "dfuUpdater");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100016FF8();
    }

    v11 = 0;
  }

  return v11;
}

- (UARPUSBDFUAccessory)initWithIdentifier:(id)identifier serialNumber:(id)number fwVersion:(UARPVersion *)version
{
  identifierCopy = identifier;
  numberCopy = number;
  v40.receiver = self;
  v40.super_class = UARPUSBDFUAccessory;
  v10 = [(UARPUSBDFUAccessory *)&v40 init];
  if (!v10)
  {
LABEL_11:
    v14 = v10;
    goto LABEL_12;
  }

  v11 = os_log_create("com.apple.accessoryupdater.uarp", "dfuUpdater");
  log = v10->_log;
  v10->_log = v11;

  v13 = v10->_log;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_100017074(v13);
  }

  v14 = [UARPSupportedAccessory findByAppleModelNumber:identifierCopy];
  if (v14)
  {
    v10->_activeFW = *version;
    v15 = [identifierCopy copy];
    identifier = v10->_identifier;
    v10->_identifier = v15;

    modelName = [(UARPUSBDFUAccessory *)v14 modelName];
    modelName = v10->_modelName;
    v10->_modelName = modelName;

    appleModelNumber = [(UARPUSBDFUAccessory *)v14 appleModelNumber];
    modelNumber = v10->_modelNumber;
    v10->_modelNumber = appleModelNumber;

    vendorName = [(UARPUSBDFUAccessory *)v14 vendorName];
    vendorName = v10->_vendorName;
    v10->_vendorName = vendorName;

    pRxSuperBinaries = v10->_pRxSuperBinaries;
    v10->_pRxSuperBinaries = 0;

    hardwareID = [(UARPUSBDFUAccessory *)v14 hardwareID];
    v25 = -[USBDFUUpdater initWithVendorID:productID:serialNumber:dfuModeActive:simulator:]([USBDFUUpdater alloc], "initWithVendorID:productID:serialNumber:dfuModeActive:simulator:", [hardwareID vendorID], objc_msgSend(hardwareID, "productID"), numberCopy, -[UARPUSBDFUAccessory dfuMode](v14, "dfuMode"), -[UARPUSBDFUAccessory isSimulator](v14, "isSimulator"));
    usbDfuAccessory = v10->_usbDfuAccessory;
    v10->_usbDfuAccessory = v25;

    if ([(UARPUSBDFUAccessory *)v14 isSimulator]&& [(UARPUSBDFUAccessory *)v14 dfuMode])
    {
      v38 = 0;
      v39 = 0;
      [(USBDFUUpdater *)v10->_usbDfuAccessory openDfuDevice];
      if (![(USBDFUUpdater *)v10->_usbDfuAccessory dfuGetVersionCmdMajor:&v39 + 4 minor:&v39 release:&v38 + 4 build:&v38])
      {
        v27 = v39;
        v10->_stagedFW.major = HIDWORD(v39);
        v10->_stagedFW.minor = v27;
        v28 = v38;
        v10->_stagedFW.release = HIDWORD(v38);
        v10->_stagedFW.build = v28;
      }

      [(USBDFUUpdater *)v10->_usbDfuAccessory closeDfuDevice];
    }

    v29 = [[UARPAccessory alloc] initWithModelNumber:identifierCopy];
    uarpAccessory = v10->_uarpAccessory;
    v10->_uarpAccessory = v29;

    [(UARPAccessory *)v10->_uarpAccessory setCapability:[(UARPUSBDFUAccessory *)v14 capabilities]];
    [(UARPAccessory *)v10->_uarpAccessory setSerialNumber:numberCopy];
    v10->_requiresPowerAssertion = [(UARPUSBDFUAccessory *)v14 updateRequiresPowerAssertion];
    v31 = dispatch_queue_create("com.apple.accessoryupdater.uarpdfuotp.notification.queue", 0);
    notificationQueue = v10->_notificationQueue;
    v10->_notificationQueue = v31;

    v10->_mNotificationPort = IONotificationPortCreate(kIOMainPortDefault);
    v33 = objc_alloc_init(NSCondition);
    queriesCompleteLock = v10->_queriesCompleteLock;
    v10->_queriesCompleteLock = v33;

    [(NSCondition *)v10->_queriesCompleteLock setName:@"queriesComplete"];
    v35 = objc_alloc_init(NSMutableSet);
    pendingProperties = v10->_pendingProperties;
    v10->_pendingProperties = v35;

    goto LABEL_11;
  }

LABEL_12:

  return v14;
}

- (unsigned)connectUarpController:(id)controller options:(uarpPlatformOptionsObj *)options
{
  controllerCopy = controller;
  v7 = *&options->upgradeOnly;
  v8 = *&options->responseTimeout;
  *&self->_options.maxTxPayloadLength = *&options->maxTxPayloadLength;
  *&self->_options.responseTimeout = v8;
  *&self->_options.upgradeOnly = v7;
  *&self->_options.maxTxPayloadLength = 0x100000001000;
  self->_options.payloadWindowLength = 4096;
  bzero(&self->_callbacks, 0x230uLL);
  self->_callbacks.fRequestBuffer = sub_100007ABC;
  self->_callbacks.fReturnBuffer = sub_100007AF8;
  self->_callbacks.fRequestTransmitMsgBuffer = sub_100007B00;
  self->_callbacks.fReturnTransmitMsgBuffer = sub_100007B68;
  self->_callbacks.fSendMessage = sub_100007B78;
  self->_callbacks.fSuperBinaryOffered = sub_100007C28;
  self->_callbacks.fDynamicAssetOffered = sub_100007E4C;
  self->_callbacks.fApplyStagedAssets = sub_100007ED4;
  self->_callbacks.fManufacturerName = sub_100007F88;
  self->_callbacks.fModelName = sub_100008084;
  self->_callbacks.fFriendlyName = sub_100008084;
  self->_callbacks.fSerialNumber = sub_100008184;
  self->_callbacks.fHardwareVersion = sub_100008280;
  self->_callbacks.fActiveFirmwareVersion2 = sub_100008318;
  self->_callbacks.fStagedFirmwareVersion2 = sub_100008388;
  self->_localEpApple.callbacks.fAppleModelNumber = sub_1000083F8;
  self->_localEpApple.callbacks.fHwFusingType = sub_1000084F4;
  *&self->_localEpApple.supportsPersonalization = 0;
  self->_localEP.fVendorSpecific = uarpPlatformEndpointCallbackAppleSpecific;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    LOWORD(v29) = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Init Platform Endpoint", &v29, 2u);
  }

  v10 = uarpPlatformEndpointInit(&self->_localEP, self, 0, &self->_options, &self->_callbacks, &self->_localEpApple, uarpPlatformEndpointCallbackAppleSpecific);
  v11 = self->_log;
  if (v10)
  {
    v12 = v10;
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_1000170F8(v11, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_INFO))
    {
      v29 = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Link Controller to Accessory %@", &v29, 0xCu);
    }

    v12 = uarpPlatformRemoteEndpointAdd(&self->_localEP, &self->_remoteEP, &self->_options, controllerCopy);
    if (v12)
    {
      v20 = self->_log;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1000170F8(v20, v21, v22, v23, v24, v25, v26, v27);
      }
    }
  }

  return v12;
}

- (unsigned)disconnectUarpController
{
  v3 = uarpPlatformRemoteEndpointRemove(&self->_localEP, &self->_remoteEP);
  if (v3)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_100017170(log, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return v3;
}

- (int)enableDisconnectCallback:(void *)callback reference:(void *)reference
{
  IONotificationPortSetDispatchQueue(self->_mNotificationPort, self->_notificationQueue);
  identifier = self->_identifier;
  serialNumber = [(UARPAccessory *)self->_uarpAccessory serialNumber];
  v9 = [UARPUSBDFUAccessory matchingDictionaryForIdentifier:identifier serialNumber:serialNumber];

  Current = CFRunLoopGetCurrent();
  RunLoopSource = IONotificationPortGetRunLoopSource(self->_mNotificationPort);
  CFRunLoopAddSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
  mNotificationPort = self->_mNotificationPort;
  v13 = v9;
  v14 = IOServiceAddMatchingNotification(mNotificationPort, "IOServiceTerminate", v13, callback, reference, &self->_notificationIterator);
  if (!v14)
  {
    while (1)
    {
      v15 = IOIteratorNext(self->_notificationIterator);
      if (!v15)
      {
        break;
      }

      IOObjectRelease(v15);
    }

    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v18 = 136315394;
      v19 = "[UARPUSBDFUAccessory enableDisconnectCallback:reference:]";
      v20 = 2112;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Enabled disconnect callback for %@", &v18, 0x16u);
    }
  }

  return v14;
}

- (int)disableDisconnectCallback
{
  IsValid = IOIteratorIsValid(self->_notificationIterator);
  log = self->_log;
  v5 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
  if (IsValid)
  {
    if (v5)
    {
      v7 = 136315394;
      v8 = "[UARPUSBDFUAccessory disableDisconnectCallback]";
      v9 = 2112;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Disabling disconnect callback for %@", &v7, 0x16u);
    }

    IOObjectRelease(self->_notificationIterator);
    self->_notificationIterator = 0;
  }

  else if (v5)
  {
    v7 = 136315394;
    v8 = "[UARPUSBDFUAccessory disableDisconnectCallback]";
    v9 = 2112;
    selfCopy2 = self;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Disconnect callback is already disabled for %@", &v7, 0x16u);
  }

  return 0;
}

- (BOOL)waitForQueriesCompletion:(id)completion
{
  completionCopy = completion;
  [(NSCondition *)self->_queriesCompleteLock lock];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = completionCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(NSMutableSet *)self->_pendingProperties addObject:*(*(&v15 + 1) + 8 * i), v15];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v7);
  }

  if (!self->_queriesCompleted)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      pendingProperties = self->_pendingProperties;
      *buf = 136315394;
      v20 = "[UARPUSBDFUAccessory waitForQueriesCompletion:]";
      v21 = 2112;
      v22 = pendingProperties;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Waiting for property queries %@", buf, 0x16u);
    }

    [(NSCondition *)self->_queriesCompleteLock wait];
    v12 = self->_log;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v20 = "[UARPUSBDFUAccessory waitForQueriesCompletion:]";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s: Pending properties completed", buf, 0xCu);
    }
  }

  [(NSCondition *)self->_queriesCompleteLock unlock];
  queriesCompleted = self->_queriesCompleted;

  return queriesCompleted;
}

- (BOOL)updateQueriesCompleted:(id)completed
{
  completedCopy = completed;
  [(NSCondition *)self->_queriesCompleteLock lock];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[UARPUSBDFUAccessory updateQueriesCompleted:]";
    v10 = 2112;
    v11 = completedCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Removing pending property query %@", &v8, 0x16u);
  }

  [(NSMutableSet *)self->_pendingProperties removeObject:completedCopy];
  if (![(NSMutableSet *)self->_pendingProperties count])
  {
    self->_queriesCompleted = 1;
    [(NSCondition *)self->_queriesCompleteLock signal];
  }

  [(NSCondition *)self->_queriesCompleteLock unlock];
  queriesCompleted = self->_queriesCompleted;

  return queriesCompleted;
}

- (unsigned)recvMessage:(id)message
{
  messageCopy = message;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_1000171E8(log);
  }

  v6 = uarpPlatformEndpointRecvMessage(&self->_localEP, &self->_remoteEP._options.maxTxPayloadLength, [messageCopy bytes], objc_msgSend(messageCopy, "length"));
  if (v6)
  {
    v7 = self->_log;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100017280(messageCopy, v6, v7);
    }
  }

  return v6;
}

- (id)description
{
  identifier = self->_identifier;
  v4 = [(USBDFUUpdater *)self->_usbDfuAccessory vid];
  v5 = [(USBDFUUpdater *)self->_usbDfuAccessory pid];
  serialNumber = [(UARPUSBDFUAccessory *)self serialNumber];
  if ([(UARPUSBDFUAccessory *)self dfuModeActive])
  {
    v7 = "DFU";
  }

  else
  {
    v7 = "APP";
  }

  simulator = [(UARPUSBDFUAccessory *)self simulator];
  v9 = "NO";
  if (simulator)
  {
    v9 = "YES";
  }

  v10 = [NSString stringWithFormat:@"<%@, vid=%d, pid=%d, %@, dfuMode=<%s> simulator=<%s>>", identifier, v4, v5, serialNumber, v7, v9];

  return v10;
}

- (int)applyFirmware
{
  openDfuDevice = [(USBDFUUpdater *)self->_usbDfuAccessory openDfuDevice];
  if (openDfuDevice)
  {
    v4 = openDfuDevice;
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_10001750C(log, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  else if ([(USBDFUUpdater *)self->_usbDfuAccessory simulator]&& (v13 = [(USBDFUUpdater *)self->_usbDfuAccessory dfuGetVersionCmdMajor:&self->_stagedFW minor:&self->_stagedFW.minor release:&self->_stagedFW.release build:&self->_stagedFW.build]) != 0)
  {
    v4 = v13;
    v14 = self->_log;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100017584(v14, v15, v16, v17, v18, v19, v20, v21);
    }

    [(USBDFUUpdater *)self->_usbDfuAccessory closeDfuDevice];
  }

  else
  {
    [(UARPUSBDFUAccessory *)self disableDisconnectCallback];
    if ([(USBDFUUpdater *)self->_usbDfuAccessory dfuSetState:0])
    {
      v22 = self->_log;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_100017584(v22, v23, v24, v25, v26, v27, v28, v29);
      }

      return 54;
    }

    else
    {
      [(USBDFUUpdater *)self->_usbDfuAccessory closeDfuDevice];
      v4 = 0;
      self->_activeFW = self->_stagedFW;
      self->_stagedFW = 0u;
    }
  }

  return v4;
}

- (void)setStagedFW:(UARPVersion)w
{
  v3 = *&w.release;
  v4 = *&w.major;
  self->_stagedFW = w;
  if ([(USBDFUUpdater *)self->_usbDfuAccessory simulator]&& [(USBDFUUpdater *)self->_usbDfuAccessory dfuSetVersionCmdMajor:v4 minor:HIDWORD(v4) release:v3 build:HIDWORD(v3)])
  {
    usbDfuAccessory = self->_usbDfuAccessory;

    [(USBDFUUpdater *)usbDfuAccessory closeDfuDevice];
  }
}

- (UARPVersion)activeFW
{
  objc_copyStruct(v4, &self->_activeFW, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.release = v3;
  result.build = HIDWORD(v3);
  result.major = v2;
  result.minor = HIDWORD(v2);
  return result;
}

- (UARPVersion)stagedFW
{
  v2 = *&self->_stagedFW.release;
  v3 = *&self->_stagedFW.major;
  result.release = v2;
  result.build = HIDWORD(v2);
  result.major = v3;
  result.minor = HIDWORD(v3);
  return result;
}

@end