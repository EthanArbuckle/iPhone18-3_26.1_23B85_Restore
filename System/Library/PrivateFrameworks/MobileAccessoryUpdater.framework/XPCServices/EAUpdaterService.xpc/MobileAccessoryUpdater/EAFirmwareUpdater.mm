@interface EAFirmwareUpdater
+ (id)findAccessoryWithProtocolString:(id)string serialNum:(id)num;
+ (id)getEAFirmwareRevisionActive:(id)active forProtocol:(id)protocol;
+ (id)getEAFirmwareRevisionPending:(id)pending forProtocol:(id)protocol;
- (BOOL)findAccessory;
- (BOOL)isDeploymentAllowed:(id)allowed;
- (BOOL)isRestartRequired;
- (BOOL)isSleepWakeRequired;
- (BOOL)isUrgentUpdate;
- (BOOL)stitchManifestInSuperBinary:(id)binary withManifest:(id)manifest withId:(unsigned int)id;
- (BOOL)updateRequiresPersonalization;
- (BOOL)updateRequiresSuperBinary;
- (EAFirmwareUpdater)initWithDeviceClass:(id)class assetType:(id)type skipDFU:(BOOL)u byteEscape:(BOOL)escape skipReconnect:(BOOL)reconnect skipVersionCheck:(BOOL)check options:(id)options serialNum:(id)self0;
- (id)applyFirmware:(id)firmware progress:(id)progress update:(id)update personalization:(id)personalization;
- (id)assetWithMaxVersion:(id)version;
- (id)createEndOfUpdateEventDict:(id)dict error:(id)error;
- (id)flushOutput;
- (id)openSession;
- (id)queryPredicate;
- (id)supportedProtocolForAccessory:(id)accessory;
- (id)validateAsset;
- (id)validateAssetAttributes:(id)attributes;
- (id)writeData:(id)data;
- (unsigned)getPersonalizationID;
- (unsigned)getWhitelistedPersonalizationFields;
- (void)_accessoryDidConnect:(id)connect;
- (void)_accessoryDidDisconnect:(id)disconnect;
- (void)closeSession;
- (void)dealloc;
- (void)firmwareUpdateComplete:(id)complete error:(id)error;
- (void)handleFirmwareUpdateStatus:(id)status;
- (void)handleInputData;
- (void)handleSessionError:(unsigned int)error message:(id)message;
- (void)personalizationResponse:(id)response error:(id)error;
- (void)processPersonalizationInfoFromAccessory:(id)accessory;
- (void)reconnectTimerDidFire:(id)fire;
- (void)setAccessory:(id)accessory;
- (void)setFirmwareBundle:(id)bundle;
- (void)setFirmwareLocalURL:(id)l;
- (void)setFirmwareURL:(id)l withManifest:(id)manifest signature:(id)signature certificate:(id)certificate hash:(id)hash;
- (void)setManifestIDs:(id)ds;
- (void)setSession:(id)session;
- (void)stopReconnectTimer;
- (void)stream:(id)stream handleEvent:(unint64_t)event;
- (void)updateComplete:(id)complete error:(id)error;
- (void)updateProgress:(double)progress;
@end

@implementation EAFirmwareUpdater

+ (id)findAccessoryWithProtocolString:(id)string serialNum:(id)num
{
  if (string)
  {
    v6 = +[EAAccessoryManager sharedAccessoryManager];
    if (v6)
    {
      connectedAccessories = [(EAAccessoryManager *)v6 connectedAccessories];
      if (connectedAccessories)
      {
        v8 = connectedAccessories;
        if ([(NSArray *)connectedAccessories count])
        {
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v9 = [(NSArray *)v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
          if (v9)
          {
            v10 = v9;
            obj = v8;
            v21 = *v27;
            do
            {
              for (i = 0; i != v10; i = i + 1)
              {
                if (*v27 != v21)
                {
                  objc_enumerationMutation(obj);
                }

                v12 = *(*(&v26 + 1) + 8 * i);
                protocolStrings = [v12 protocolStrings];
                if (protocolStrings)
                {
                  v14 = protocolStrings;
                  v24 = 0u;
                  v25 = 0u;
                  v22 = 0u;
                  v23 = 0u;
                  v15 = [protocolStrings countByEnumeratingWithState:&v22 objects:v30 count:16];
                  if (v15)
                  {
                    v16 = v15;
                    v17 = *v23;
LABEL_13:
                    v18 = 0;
                    while (1)
                    {
                      if (*v23 != v17)
                      {
                        objc_enumerationMutation(v14);
                      }

                      if ([*(*(&v22 + 1) + 8 * v18) rangeOfString:string] != 0x7FFFFFFFFFFFFFFFLL && (!num || (objc_msgSend(num, "isEqualToString:", objc_msgSend(v12, "serialNumber")) & 1) != 0))
                      {
                        break;
                      }

                      if (v16 == ++v18)
                      {
                        v16 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
                        if (v16)
                        {
                          goto LABEL_13;
                        }

                        goto LABEL_23;
                      }
                    }

                    if (v12)
                    {
                      return v12;
                    }
                  }
                }

LABEL_23:
                ;
              }

              v10 = [(NSArray *)obj countByEnumeratingWithState:&v26 objects:v31 count:16];
            }

            while (v10);
          }
        }
      }
    }
  }

  NSLog(@"%s() No EAAccessory found for protocol=%@", a2, "+[EAFirmwareUpdater findAccessoryWithProtocolString:serialNum:]", string);
  return 0;
}

- (EAFirmwareUpdater)initWithDeviceClass:(id)class assetType:(id)type skipDFU:(BOOL)u byteEscape:(BOOL)escape skipReconnect:(BOOL)reconnect skipVersionCheck:(BOOL)check options:(id)options serialNum:(id)self0
{
  v27.receiver = self;
  v27.super_class = EAFirmwareUpdater;
  v15 = [(EAFirmwareUpdater *)&v27 initWithAssetType:type];
  if (!v15)
  {
    goto LABEL_14;
  }

  if (([class hasPrefix:@"com.apple.MobileAccessoryUpdater.EA"] & 1) == 0 && (objc_msgSend(class, "hasPrefix:", @"com.apple.UARP.EA") & 1) == 0)
  {
    NSLog(@"%s: Invalid deviceClass base = %@\n", "[EAFirmwareUpdater initWithDeviceClass:assetType:skipDFU:byteEscape:skipReconnect:skipVersionCheck:options:serialNum:]", class);
    goto LABEL_14;
  }

  v16 = [class rangeOfString:@"dfu"];
  v17 = [class rangeOfString:@"app"];
  v18 = [class rangeOfString:@"app.multiasset"];
  v19 = v18;
  if (v16 == 0x7FFFFFFFFFFFFFFFLL && v17 == 0x7FFFFFFFFFFFFFFFLL && v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    NSLog(@"%s: Invalid deviceClass extension = %@\n", "[EAFirmwareUpdater initWithDeviceClass:assetType:skipDFU:byteEscape:skipReconnect:skipVersionCheck:options:serialNum:]", class);
    goto LABEL_14;
  }

  v20 = [class componentsSeparatedByString:@"."];
  if ([v20 count] != 7 && objc_msgSend(v20, "count") != 8)
  {
    NSLog(@"%s: Invalid deviceClass components = %@\n", "[EAFirmwareUpdater initWithDeviceClass:assetType:skipDFU:byteEscape:skipReconnect:skipVersionCheck:options:serialNum:]", class);
    goto LABEL_14;
  }

  lastObject = [v20 lastObject];
  if (!lastObject)
  {
    NSLog(@"%s: Invalid deviceClass eaID string = %@\n", "[EAFirmwareUpdater initWithDeviceClass:assetType:skipDFU:byteEscape:skipReconnect:skipVersionCheck:options:serialNum:]", class);
    goto LABEL_14;
  }

  v22 = lastObject;
  v15->_overrideProtocol = 0;
  v15->_firmwareUpdateIsUrgent = 0;
  v15->_firmwareUpdateComplete = 0;
  v15->_isExpectingReconnect = 0;
  v15->_forceSilentUpdate = 0;
  v15->_skipDFUMode = u;
  v15->_skipVersionCheck = check;
  v15->_closeEASession = 0;
  v15->_excludeUniqueAccessoryCheck = 0;
  v15->_reconnectTimer = 0;
  v15->_progressHandler = 0;
  v15->_applyCompletion = 0;
  v15->_personalizationRequestHandler = 0;
  v15->_updateHandler = 0;
  v15->_currentFirmwareVersionOnAcc = 0;
  v15->_firmwareVersionAvailable = 0;
  v15->_outputData = 0;
  pthread_mutex_init(&v15->_flushOutputLock, 0);
  v15->_currentSessionTimeTaken = &off_100024328;
  v15->_cumulativeBytesDownloaded = &off_100024328;
  v15->_totalBytesForCompleteUpdate = &off_100024328;
  v15->_cumulativeProgressPercent = &off_100024328;
  v15->_cumulativeTimeTaken = &off_100024328;
  v15->_cumulativeCloakTime = &off_100024328;
  v15->_resumeCount = &off_100024328;
  -[EAFirmwareUpdater setBootloaderProtocol:](v15, "setBootloaderProtocol:", [objc_opt_class() bootloaderProtocolStringWithEAID:v22]);
  -[EAFirmwareUpdater setAppProtocol:](v15, "setAppProtocol:", [objc_opt_class() appProtocolStringWithEAID:v22]);
  -[EAFirmwareUpdater setMultiAssetAppProtocol:](v15, "setMultiAssetAppProtocol:", [objc_opt_class() multiAssetAppProtocolStringWithEAID:v22]);
  v15->_manifestIDs = 0;
  v15->_manifestList = 0;
  v15->_manifestIndex = 0;
  v15->_serialNumber = [num copy];
  if (v19 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v16 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v17 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [(EAFirmwareUpdater *)v15 log:5 format:@"%s: huh? Unknown session type in device class %@", "[EAFirmwareUpdater initWithDeviceClass:assetType:skipDFU:byteEscape:skipReconnect:skipVersionCheck:options:serialNum:]", class];
LABEL_14:
        v23 = v15;
        return 0;
      }

      [(EAFirmwareUpdater *)v15 setProtocolString:v15->_appProtocol];
      v15->_isMultiAssetSession = 0;
      v15->_byteEscape = escape;
      v24 = 468;
      escape = reconnect;
    }

    else
    {
      [(EAFirmwareUpdater *)v15 setProtocolString:v15->_bootloaderProtocol];
      v15->_isMultiAssetSession = 0;
      v24 = 467;
    }
  }

  else
  {
    [(EAFirmwareUpdater *)v15 setProtocolString:v15->_multiAssetAppProtocol];
    escape = 0;
    v15->_isMultiAssetSession = 1;
    v15->_skipDFUMode = 1;
    v24 = 467;
  }

  v15->MobileAssetUpdater_opaque[v24] = escape;
  v15->_deviceClass = class;
  v15->_deviceOptions = options;
  dispatch_sync(&_dispatch_main_q, &stru_100020690);
  [+[EAAccessoryManager sharedAccessoryManager](EAAccessoryManager registerForLocalNotifications];
  [+[EAAccessoryManager sharedAccessoryManager](EAAccessoryManager setShouldAllowInternalProtocols:"setShouldAllowInternalProtocols:", 1];
  [EAAccessoryManager registerCapabilities:64];
  if (![(EAFirmwareUpdater *)v15 findAccessory])
  {
    NSLog(@"%s: No EAAccessory found matching protocol = %@\n", "[EAFirmwareUpdater initWithDeviceClass:assetType:skipDFU:byteEscape:skipReconnect:skipVersionCheck:options:serialNum:]", v15->_protocolString);
    goto LABEL_14;
  }

  v15->_overrideProtocol = [(NSString *)[(EAFirmwareUpdater *)v15 protocolString] hasSuffix:@"-override"];
  if (!v15->_serialNumber)
  {
    v15->_serialNumber = [(NSString *)[(EAAccessory *)[(EAFirmwareUpdater *)v15 accessory] serialNumber] copy];
  }

  v15->_modelNumber = [(NSString *)[(EAAccessory *)[(EAFirmwareUpdater *)v15 accessory] modelNumber] copy];
  v15->_name = [(NSString *)[(EAAccessory *)[(EAFirmwareUpdater *)v15 accessory] name] copy];
  deviceOptions = v15->_deviceOptions;
  if (deviceOptions)
  {
    LOBYTE(deviceOptions) = [-[NSDictionary objectForKey:](deviceOptions objectForKey:{@"closeEASession", "BOOLValue"}];
  }

  v15->_closeEASession = deviceOptions;
  NSLog(@"%s: _accessory = %@\n", "[EAFirmwareUpdater initWithDeviceClass:assetType:skipDFU:byteEscape:skipReconnect:skipVersionCheck:options:serialNum:]", v15->_accessory);
  -[EAFirmwareUpdater log:format:](v15, "log:format:", 5, @"%s %@", "-[EAFirmwareUpdater initWithDeviceClass:assetType:skipDFU:byteEscape:skipReconnect:skipVersionCheck:options:serialNum:]", [[NSString alloc] initWithFormat:@"deviceClass=%@ protocolString=%@ isMultiAssetSession=%d byteEscape=%d skipDFU=%d", v15->_deviceClass, -[EAFirmwareUpdater protocolString](v15, "protocolString"), v15->_isMultiAssetSession, v15->_byteEscape, v15->_skipDFUMode]);
  -[EAFirmwareUpdater log:format:](v15, "log:format:", 5, @"%s %@", "-[EAFirmwareUpdater initWithDeviceClass:assetType:skipDFU:byteEscape:skipReconnect:skipVersionCheck:options:serialNum:]", [[NSString alloc] initWithFormat:@"appProtocol=%@ bootloaderProtocol=%@ multiAssetAppProtocol=%@", -[EAFirmwareUpdater appProtocol](v15, "appProtocol"), -[EAFirmwareUpdater bootloaderProtocol](v15, "bootloaderProtocol"), -[EAFirmwareUpdater multiAssetAppProtocol](v15, "multiAssetAppProtocol")]);
  return v15;
}

- (void)dealloc
{
  -[EAFirmwareUpdater log:format:](self, "log:format:", 5, @"%s %@", "-[EAFirmwareUpdater dealloc]", [[NSString alloc] initWithFormat:@"%s: EAFirmwareUpdater dealloc\n", "-[EAFirmwareUpdater dealloc]"]);
  [(EAFirmwareUpdater *)self stopReconnectTimer];
  appProtocol = self->_appProtocol;
  if (appProtocol)
  {
  }

  bootloaderProtocol = self->_bootloaderProtocol;
  if (bootloaderProtocol)
  {
  }

  multiAssetAppProtocol = self->_multiAssetAppProtocol;
  if (multiAssetAppProtocol)
  {
  }

  protocolString = self->_protocolString;
  if (protocolString)
  {
  }

  iAUPServer = self->_iAUPServer;
  if (iAUPServer)
  {
  }

  manifestIDs = self->_manifestIDs;
  if (manifestIDs)
  {
  }

  manifestList = self->_manifestList;
  if (manifestList)
  {
  }

  buildIdentities = self->_buildIdentities;
  if (buildIdentities)
  {
  }

  serialNumber = self->_serialNumber;
  if (serialNumber)
  {
  }

  accessory = self->_accessory;
  if (accessory)
  {
  }

  eaNotificationDispatchQueue = self->_eaNotificationDispatchQueue;
  if (eaNotificationDispatchQueue)
  {
  }

  pthread_mutex_destroy(&self->_flushOutputLock);
  v14.receiver = self;
  v14.super_class = EAFirmwareUpdater;
  [(EAFirmwareUpdater *)&v14 dealloc];
}

- (void)setFirmwareLocalURL:(id)l
{
  -[EAFirmwareUpdater log:format:](self, "log:format:", 5, @"%s %@", "-[EAFirmwareUpdater setFirmwareLocalURL:]", [[NSString alloc] initWithFormat:@"%s: EAFirmwareUpdater setFirmwareImage\n", "-[EAFirmwareUpdater setFirmwareLocalURL:]"]);
  if (!self->_iAUPServer)
  {
    v5 = [[iAUPServer alloc] initInstanceWithByteEscape:self->_byteEscape];
    self->_iAUPServer = v5;
    [(iAUPServer *)v5 setDelegate:self];
  }

  v6 = [[FirmwareBundle alloc] initWithURL:l hashData:0 signatureData:0 certData:0];
  [self->_iAUPServer setFirmwareBundle:v6];

  v7 = [(NSString *)self->_protocolString componentsSeparatedByString:@"."];
  if (v7)
  {
    v8 = [-[NSArray lastObject](v7 "lastObject")];
  }

  else
  {
    v8 = 0;
  }

  firmwareBundle = [self->_iAUPServer firmwareBundle];

  [(FirmwareBundle *)firmwareBundle setProductIDCode:v8];
}

- (BOOL)findAccessory
{
  if (![(EAFirmwareUpdater *)self accessory])
  {
    -[EAFirmwareUpdater setAccessory:](self, "setAccessory:", [objc_opt_class() findAccessoryWithProtocolString:-[EAFirmwareUpdater protocolString](self serialNum:{"protocolString"), self->_serialNumber}]);
  }

  return [(EAFirmwareUpdater *)self accessory]!= 0;
}

- (void)setManifestIDs:(id)ds
{
  v4 = [ds copy];
  self->_manifestIDs = v4;
  self->_manifestList = [(NSDictionary *)v4 allKeys];
  self->_manifestIndex = 0;
}

- (void)stopReconnectTimer
{
  objc_sync_enter(self);
  -[EAFirmwareUpdater log:format:](self, "log:format:", 5, @"%s %@", "-[EAFirmwareUpdater stopReconnectTimer]", [[NSString alloc] initWithFormat:@"_isExpectingReconnect=%d", self->_isExpectingReconnect]);
  self->_isExpectingReconnect = 0;
  reconnectTimer = self->_reconnectTimer;
  if (reconnectTimer)
  {
    [(NSTimer *)reconnectTimer invalidate];

    self->_reconnectTimer = 0;
  }

  objc_sync_exit(self);
}

- (void)reconnectTimerDidFire:(id)fire
{
  v4 = [NSString alloc];
  isExpectingReconnect = self->_isExpectingReconnect;
  modelNumber = [(EAAccessory *)[(EAFirmwareUpdater *)self accessory] modelNumber];
  connectionID = [(EAAccessory *)[(EAFirmwareUpdater *)self accessory] connectionID];
  v8 = [objc_opt_class() getEAFirmwareRevisionActive:-[EAFirmwareUpdater accessory](self forProtocol:{"accessory"), self->_protocolString}];
  -[EAFirmwareUpdater log:format:](self, "log:format:", 5, @"%s %@", "-[EAFirmwareUpdater reconnectTimerDidFire:]", [v4 initWithFormat:@"Timed out waiting for accessory to reconnect _isExpectingReconnect=%d accessory=[%@:%lu:FWvA%@:FWvP%@]", isExpectingReconnect, modelNumber, connectionID, v8, objc_msgSend(objc_opt_class(), "getEAFirmwareRevisionPending:forProtocol:", -[EAFirmwareUpdater accessory](self, "accessory"), self->_protocolString)]);
  objc_sync_enter(self);
  if ([(EAFirmwareUpdater *)self accessory])
  {
    [(EAFirmwareUpdater *)self log:5 format:@"%s() self.accessory is valid. Ignoring fired timer ", "[EAFirmwareUpdater reconnectTimerDidFire:]"];
  }

  else
  {
    if (self->_isExpectingReconnect == 2)
    {
      v9 = 3;
    }

    else
    {
      v9 = 0;
    }

    self->_isExpectingReconnect = v9;
    [(EAFirmwareUpdater *)self _accessoryDidDisconnect:0];
  }

  objc_sync_exit(self);
}

- (void)setFirmwareURL:(id)l withManifest:(id)manifest signature:(id)signature certificate:(id)certificate hash:(id)hash
{
  -[EAFirmwareUpdater log:format:](self, "log:format:", 5, @"%s %@", "-[EAFirmwareUpdater setFirmwareURL:withManifest:signature:certificate:hash:]", [[NSString alloc] initWithFormat:@"%s: EAFirmwareUpdater using local files for %@\n", "-[EAFirmwareUpdater setFirmwareURL:withManifest:signature:certificate:hash:]", self->_protocolString]);
  if (!self->_iAUPServer)
  {
    v13 = [[iAUPServer alloc] initInstanceWithByteEscape:self->_byteEscape];
    self->_iAUPServer = v13;
    [(iAUPServer *)v13 setDelegate:self];
  }

  v14 = [[FirmwareBundle alloc] initWithURL:l hashData:hash signatureData:signature certData:certificate];
  [self->_iAUPServer setFirmwareBundle:v14];
  [(FirmwareBundle *)[self->_iAUPServer firmwareBundle] setBuildManifest:manifest];

  v15 = [(NSString *)self->_protocolString componentsSeparatedByString:@"."];
  if (v15)
  {
    v16 = [-[NSArray lastObject](v15 "lastObject")];
  }

  else
  {
    v16 = 0;
  }

  firmwareBundle = [self->_iAUPServer firmwareBundle];

  [(FirmwareBundle *)firmwareBundle setProductIDCode:v16];
}

- (void)setFirmwareBundle:(id)bundle
{
  -[EAFirmwareUpdater log:format:](self, "log:format:", 5, @"%s %@", "-[EAFirmwareUpdater setFirmwareBundle:]", [[NSString alloc] initWithFormat:@"%s: EAFirmwareUpdater using local firmware bundles for %@\n", "-[EAFirmwareUpdater setFirmwareBundle:]", self->_protocolString]);
  iAUPServer = self->_iAUPServer;
  if (!iAUPServer)
  {
    v6 = [[iAUPServer alloc] initInstanceWithByteEscape:self->_byteEscape];
    self->_iAUPServer = v6;
    [(iAUPServer *)v6 setDelegate:self];
    iAUPServer = self->_iAUPServer;
  }

  [iAUPServer setFirmwareBundle:bundle];
}

- (void)setSession:(id)session
{
  session = self->_session;
  if (session != session)
  {
    if (session)
    {
      sessionCopy = session;
      inputStream = [(EASession *)session inputStream];
      if (inputStream)
      {
        v6 = inputStream;
        [(NSInputStream *)inputStream close];
        [(NSInputStream *)v6 removeFromRunLoop:+[NSRunLoop forMode:"mainRunLoop"], NSDefaultRunLoopMode];
      }

      outputStream = [(EASession *)self->_session outputStream];
      if (outputStream)
      {
        v8 = outputStream;
        [(NSOutputStream *)outputStream close];
        [(NSOutputStream *)v8 removeFromRunLoop:+[NSRunLoop forMode:"mainRunLoop"], NSDefaultRunLoopMode];
      }

      session = sessionCopy;
    }

    self->_session = session;
    if (session)
    {

      sessionCopy2 = session;
    }
  }
}

- (id)queryPredicate
{
  if ([(EAFirmwareUpdater *)self isMultiAssetSession]|| ![(NSString *)[(EAFirmwareUpdater *)self protocolString] isEqualToString:[(EAFirmwareUpdater *)self appProtocol]])
  {
    return 0;
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000DBB4;
  v4[3] = &unk_1000206B8;
  v4[4] = self;
  v4[5] = 2;
  return [NSPredicate predicateWithBlock:v4];
}

- (id)validateAssetAttributes:(id)attributes
{
  if (attributes)
  {
    -[EAFirmwareUpdater setFirmwareBundleFilename:](self, "setFirmwareBundleFilename:", [attributes objectForKey:@"FirmwareBundle"]);
    if ([(EAFirmwareUpdater *)self firmwareBundleFilename])
    {
      v18 = [attributes objectForKey:@"ForceSilentUpdate"];
      if (v18)
      {
        bOOLValue = [v18 BOOLValue];
      }

      else
      {
        bOOLValue = 0;
      }

      [(EAFirmwareUpdater *)self setForceSilentUpdate:bOOLValue];
      -[EAFirmwareUpdater log:format:](self, "log:format:", 5, @"%s %@", "-[EAFirmwareUpdater validateAssetAttributes:]", [[NSString alloc] initWithFormat:@"EA FUD Plugin: forceSilentUpdate=%d", -[EAFirmwareUpdater forceSilentUpdate](self, "forceSilentUpdate")]);
      self->_firmwareVersionAvailable = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@.%@.%@", [attributes objectForKeyedSubscript:@"FirmwareVersionMajor"], objc_msgSend(attributes, "objectForKeyedSubscript:", @"FirmwareVersionMinor"), objc_msgSend(attributes, "objectForKeyedSubscript:", @"FirmwareVersionRelease"));
      -[EAFirmwareUpdater log:format:](self, "log:format:", 5, @"%s %@", "-[EAFirmwareUpdater validateAssetAttributes:]", [[NSString alloc] initWithFormat:@"Firmware version available = %@", self->_firmwareVersionAvailable]);
    }

    else
    {
      sub_10000E9B4(0, v11, v12, v13, v14, v15, v16, v17);
    }

    return 0;
  }

  else
  {

    return sub_1000064B4(0, 3, @"No asset attributes", v3, v4, v5, v6, v7, v21);
  }
}

- (BOOL)isDeploymentAllowed:(id)allowed
{
  v3 = [allowed objectForKey:@"DeploymentList"];
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = [[UARPAssetID alloc] initWithLocationType:3 remoteURL:0];
  [v5 processUARPDeploymentRules:v4];
  LOBYTE(v4) = [v5 deploymentAllowed];

  return v4;
}

- (BOOL)updateRequiresSuperBinary
{
  v2 = [(NSDictionary *)self->_deviceOptions objectForKey:@"UpdateRequiresSuperBinary"];

  return [v2 BOOLValue];
}

- (BOOL)updateRequiresPersonalization
{
  v2 = [(NSDictionary *)self->_deviceOptions objectForKey:@"NeedsPersonalization"];

  return [v2 BOOLValue];
}

- (unsigned)getWhitelistedPersonalizationFields
{
  if (![(NSDictionary *)self->_deviceOptions objectForKey:@"WhitelistedPersonalizationFields"])
  {
    return -1;
  }

  v3 = [(NSDictionary *)self->_deviceOptions objectForKey:@"WhitelistedPersonalizationFields"];

  return [v3 unsignedIntValue];
}

- (BOOL)isRestartRequired
{
  iAUPServer = self->_iAUPServer;
  if (iAUPServer)
  {
    LOBYTE(iAUPServer) = [iAUPServer restartRequired];
  }

  return iAUPServer;
}

- (BOOL)isSleepWakeRequired
{
  iAUPServer = self->_iAUPServer;
  if (iAUPServer)
  {
    LOBYTE(iAUPServer) = [iAUPServer sleepWakeRequired];
  }

  return iAUPServer;
}

- (BOOL)isUrgentUpdate
{
  if (self->_firmwareUpdateIsUrgent)
  {
    return 1;
  }

  else
  {
    return [self->_iAUPServer urgentUpdate];
  }
}

- (void)processPersonalizationInfoFromAccessory:(id)accessory
{
  v55 = +[NSMutableArray array];
  v63 = 0;
  if (!accessory)
  {
    v46 = @"Invalid Info from Accessory";
LABEL_88:
    v47 = sub_1000064B4(0, 21, v46, v5, v6, v7, v8, v9, v52);
    v11 = 0;
    v19 = 0;
    v45 = 1;
    goto LABEL_109;
  }

  if (!self->_personalizationRequestHandler)
  {
    v46 = @"Invalid _personalizationRequestHandler";
    goto LABEL_88;
  }

  v52 = @"PersonalizationRequest";
  [(EAFirmwareUpdater *)self protocolString];
  v10 = [[FudPersonalizationRequest alloc] initWithName:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@_%@"}];
  if (!v10)
  {
    v46 = @"Failed to init FudPersonalizationRequest";
    goto LABEL_88;
  }

  v11 = v10;
  if ([(NSDictionary *)self->_deviceOptions objectForKey:@"PersonalizationResponseFormat"])
  {
    [v11 setResponseFormat:objc_msgSend(-[NSDictionary objectForKey:](self->_deviceOptions, "objectForKey:", @"PersonalizationResponseFormat", "unsignedIntValue")];
    if ([v11 responseFormat] >= 3)
    {
      v48 = @"Invalid Response format specified";
    }

    else
    {
      if ([v11 responseFormat] == 1 && -[NSDictionary objectForKey:](self->_deviceOptions, "objectForKey:", @"PersonalizationResponseAlign"))
      {
        [v11 setResponseAlignment:{objc_msgSend(-[NSDictionary objectForKey:](self->_deviceOptions, "objectForKey:", @"PersonalizationResponseAlign", "unsignedIntValue")}];
      }

      if (self->_manifestIDs)
      {
        manifestIndex = self->_manifestIndex;
        if ([(NSArray *)self->_manifestList count]> manifestIndex)
        {
          manifestList = self->_manifestList;
          ++self->_manifestIndex;
          [v11 setRequestPrefix:{-[NSArray objectAtIndexedSubscript:](manifestList, "objectAtIndexedSubscript:")}];
        }
      }

      if ([accessory objectForKey:@"BoardID"])
      {
        [v11 setBoardID:{objc_msgSend(objc_msgSend(accessory, "objectForKey:", @"BoardID", "unsignedIntValue")}];
        if ([accessory objectForKey:@"ChipID"])
        {
          [v11 setChipID:{objc_msgSend(objc_msgSend(accessory, "objectForKey:", @"ChipID", "unsignedIntValue")}];
          if ([accessory objectForKey:@"ECID"])
          {
            if ([v11 requestPrefix] && objc_msgSend(objc_msgSend(v11, "requestPrefix"), "isEqualToString:", @"Baobab"))
            {
              v62 = 0;
              v63 = bswap64([objc_msgSend(accessory objectForKey:{@"ECID", "unsignedLongValue"}]);
              v19 = [[NSMutableData alloc] initWithBytes:&v62 length:8];
              [v19 appendBytes:&v63 length:8];
              [v11 setExtEcID:v19];
            }

            else
            {
              [v11 setEcID:{objc_msgSend(objc_msgSend(accessory, "objectForKey:", @"ECID", "unsignedLongValue")}];
              v19 = 0;
            }

            [v11 setGlobalSigning:0];
          }

          else
          {
            [v11 setGlobalSigning:1];
            v19 = 0;
          }

          if ([accessory objectForKey:@"securityDomain"])
          {
            [v11 setSecurityDomain:{objc_msgSend(objc_msgSend(accessory, "objectForKey:", @"securityDomain", "unsignedIntValue")}];
            if ([accessory objectForKey:@"productionMode"])
            {
              [v11 setProductionMode:{objc_msgSend(objc_msgSend(accessory, "objectForKey:", @"productionMode", "BOOLValue")}];
              if ([accessory objectForKey:@"securityMode"])
              {
                v25 = [accessory objectForKey:@"securityMode"];
                if (v25 != +[NSNull null])
                {
                  [v11 setSecurityMode:{objc_msgSend(objc_msgSend(accessory, "objectForKey:", @"securityMode", "BOOLValue")}];
                }

                if ([accessory objectForKey:@"nonceHash"])
                {
                  if ([v11 requestPrefix] && objc_msgSend(objc_msgSend(v11, "requestPrefix"), "isEqualToString:", @"Baobab"))
                  {
                    v26 = [[NSData alloc] initWithBytes:objc_msgSend(objc_msgSend(accessory length:{"objectForKey:", @"nonceHash", "bytes"), 16}];
                    [v11 setNonceHash:v26];

                    v27 = [[NSString alloc] initWithFormat:@"Truncating nonceHash=%@\n", objc_msgSend(v11, "nonceHash")];
                    v52 = "[EAFirmwareUpdater processPersonalizationInfoFromAccessory:]";
                    [(EAFirmwareUpdater *)self log:5 format:@"%s %@"];
                  }

                  else
                  {
                    [v11 setNonceHash:{objc_msgSend(accessory, "objectForKey:", @"nonceHash"}];
                  }

                  v28 = [accessory objectForKey:@"chipEpoch"];
                  if (v28 != +[NSNull null](NSNull, "null") && (![v11 requestPrefix] || (objc_msgSend(objc_msgSend(v11, "requestPrefix"), "isEqualToString:", @"DMC") & 1) == 0))
                  {
                    [v11 setChipEpoch:{objc_msgSend(objc_msgSend(accessory, "objectForKey:", @"chipEpoch", "unsignedIntValue")}];
                  }

                  if ([accessory objectForKey:@"enableMixMatch"])
                  {
                    [v11 setEnableMixMatch:{objc_msgSend(objc_msgSend(accessory, "objectForKey:", @"enableMixMatch", "BOOLValue")}];
                    if ([(EAFirmwareUpdater *)self firmwareBundleURL]|| [self->_iAUPServer firmwareBundle])
                    {
                      if (![v11 responseFormat])
                      {
                        buildIdentities = self->_buildIdentities;
                        if (buildIdentities)
                        {
                          v31 = 0;
LABEL_50:
                          memset(v61, 0, sizeof(v61));
                          selfCopy = self;
                          v53 = v31;
                          if (-[NSArray countByEnumeratingWithState:objects:count:](buildIdentities, "countByEnumeratingWithState:objects:count:", v61, v67, 16) && (v35 = [**(&v61[0] + 1) objectForKey:@"Manifest"], v57 = 0u, v58 = 0u, v59 = 0u, v60 = 0u, (v36 = objc_msgSend(v35, "countByEnumeratingWithState:objects:count:", &v57, v66, 16)) != 0))
                          {
                            v37 = v36;
                            v38 = 0;
                            v39 = *v58;
                            while (2)
                            {
                              for (i = 0; i != v37; i = i + 1)
                              {
                                if (*v58 != v39)
                                {
                                  objc_enumerationMutation(v35);
                                }

                                v41 = *(*(&v57 + 1) + 8 * i);
                                if (v38)
                                {
                                }

                                v42 = [v35 objectForKey:v41];
                                if (!v42)
                                {
                                  v38 = 0;
LABEL_84:
                                  self = selfCopy;
                                  goto LABEL_76;
                                }

                                v43 = v42;
                                if ([v11 requestPrefix] && !objc_msgSend(v41, "hasPrefix:", objc_msgSend(v11, "requestPrefix")))
                                {
                                  v38 = 0;
                                }

                                else
                                {
                                  v38 = [[FudPersonalizationObjectInfo alloc] initWithTag:v41];
                                  if (!v38)
                                  {
                                    goto LABEL_84;
                                  }

                                  [v38 setDigest:{objc_msgSend(v43, "objectForKey:", @"Digest"}];
                                  if ([v43 objectForKey:@"Trusted"])
                                  {
                                    [v38 setTrusted:{objc_msgSend(objc_msgSend(v43, "objectForKey:", @"Trusted", "BOOLValue")}];
                                  }

                                  [v38 setEffectiveProductionMode:{objc_msgSend(v11, "productionMode")}];
                                  if ([v11 isSecurityModeSet])
                                  {
                                    [v38 setEffectiveSecurityMode:{objc_msgSend(v11, "securityMode")}];
                                  }

                                  [v55 addObject:v38];
                                }
                              }

                              v37 = [v35 countByEnumeratingWithState:&v57 objects:v66 count:16];
                              if (v37)
                              {
                                continue;
                              }

                              break;
                            }
                          }

                          else
                          {
                            v38 = 0;
                          }

                          [v11 setObjectList:{objc_msgSend(v55, "copy")}];
                          if ([v11 responseFormat])
                          {
                            firmwareImage = [(FirmwareBundle *)v53 firmwareImage];
                          }

                          else
                          {
                            firmwareImage = 0;
                          }

                          self = selfCopy;
                          [v11 setPayload:firmwareImage];
LABEL_76:
                          (*(self->_personalizationRequestHandler + 2))();
                          v45 = 0;
                          if (!v19)
                          {
                            goto LABEL_78;
                          }

                          goto LABEL_77;
                        }
                      }

                      firmwareBundle = [self->_iAUPServer firmwareBundle];
                      if (firmwareBundle || (v30 = [[FirmwareBundle alloc] initWithBundlePath:[(NSURL *)[(EAFirmwareUpdater *)self firmwareBundleURL] path]], [self->_iAUPServer setFirmwareBundle:v30], v30, (firmwareBundle = [self->_iAUPServer firmwareBundle]) != 0))
                      {
                        v31 = firmwareBundle;
                        if ([(FirmwareBundle *)firmwareBundle buildManifest])
                        {
                          if (![(FirmwareBundle *)v31 firmwareImage]&& [(FirmwareBundle *)v31 firmwareLocalURL])
                          {
                            [(FirmwareBundle *)v31 loadFirmwareImage];
                          }

                          if ([(FirmwareBundle *)v31 firmwareImage])
                          {
                            v32 = [(NSDictionary *)[(FirmwareBundle *)v31 buildManifest] objectForKey:@"BuildIdentities"];
                            self->_buildIdentities = v32;
                            if (v32)
                            {
                              v33 = v32;
                              buildIdentities = self->_buildIdentities;
                              goto LABEL_50;
                            }

                            v49 = @"Unable to find BuildIdentities in firmwareBundle.buildManifest";
                          }

                          else
                          {
                            v49 = @"Unable to find firmwareImage from MobileAsset";
                          }
                        }

                        else
                        {
                          v49 = @"Unable to find BuildManifest.plist";
                        }
                      }

                      else
                      {
                        v49 = @"Unable to allocate FirmwareBundle object";
                      }
                    }

                    else
                    {
                      v49 = @"No firmware bundle URL";
                    }

                    v50 = 6;
                    goto LABEL_106;
                  }

                  v49 = @"Missing kManifestPropertyKeyEnableMixMatch from Accessory";
                }

                else
                {
                  v49 = @"Missing kManifestPropertyKeyNonceHash from Accessory";
                }
              }

              else
              {
                v49 = @"Missing kManifestPropertyKeySecurityMode from Accessory";
              }
            }

            else
            {
              v49 = @"Missing kManifestPropertyKeyProductionMode from Accessory";
            }
          }

          else
          {
            v49 = @"Missing kManifestPropertyKeySecurityDomain from Accessory";
          }

          v50 = 21;
LABEL_106:
          v47 = sub_1000064B4(0, v50, v49, v20, v21, v22, v23, v24, v52);
          goto LABEL_107;
        }

        v48 = @"PersonalizationInfo: Missing kManifestPropertyKeyChipID from Accessory";
      }

      else
      {
        v48 = @"PersonalizationInfo: Missing kManifestPropertyKeyBoardID from Accessory";
      }
    }
  }

  else
  {
    v48 = @"No Response format specified";
  }

  v47 = sub_1000064B4(0, 21, v48, v12, v13, v14, v15, v16, @"PersonalizationRequest");
  v19 = 0;
LABEL_107:
  if (!v47)
  {
    v38 = 0;
    goto LABEL_76;
  }

  v45 = 0;
LABEL_109:
  eaNotificationDispatchQueue = self->_eaNotificationDispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007198;
  block[3] = &unk_1000206E0;
  block[4] = self;
  dispatch_async(eaNotificationDispatchQueue, block);
  v64 = @"Event";
  v65 = @"com.apple.fud.updateFailed";
  [(EAFirmwareUpdater *)self updateComplete:[NSDictionary error:"dictionaryWithObjects:forKeys:count:" dictionaryWithObjects:&v64 forKeys:1 count:?], v47];
  v38 = 0;
  if (v19)
  {
LABEL_77:
  }

LABEL_78:
  if (v38)
  {
  }

  if ((v45 & 1) == 0)
  {
  }
}

- (BOOL)stitchManifestInSuperBinary:(id)binary withManifest:(id)manifest withId:(unsigned int)id
{
  v6 = @"Error null data to stitchManifestInSuperBinary";
  if (!binary || !manifest)
  {
    goto LABEL_18;
  }

  [binary bytes];
  [binary length];
  v10 = parseSuperBinaryAndPayloadHeaders();
  if (!v10)
  {
    v6 = @"Error could not parse SuperBinary headers";
LABEL_18:
    sub_10000E9F0(self, v6);
    v15 = 0;
    v14 = 0;
    goto LABEL_14;
  }

  v11 = v10;
  if (*(v10 + 16))
  {
    v12 = 0;
    while (1)
    {
      v13 = &v11[10 * v12 + 10];
      v14 = [[NSString alloc] initWithBytes:v13 length:4 encoding:4];
      if ([v14 isEqualToString:@"IM4M"])
      {
        if ((*(v13 + 4) & id) != 0)
        {
          break;
        }
      }

      if (v11[8] <= ++v12)
      {
        goto LABEL_9;
      }
    }

    if ([manifest length] > *(v13 + 16))
    {
      v17 = @"Error manifest too large for SuperBinary payload";
    }

    else
    {
      [binary mutableBytes];
      [binary length];
      [manifest bytes];
      [manifest length];
      if (updateSuperBinaryPayload())
      {
        v15 = 1;
        goto LABEL_13;
      }

      v17 = @"Error could not update Manifest size in SuperBinary header";
    }

    sub_10000E9F0(self, v17);
    v15 = 0;
    goto LABEL_13;
  }

LABEL_9:
  v15 = 0;
  v14 = 0;
LABEL_13:
  free(v11);
LABEL_14:

  return v15;
}

- (void)personalizationResponse:(id)response error:(id)error
{
  if (!response || error)
  {
    eaNotificationDispatchQueue = self->_eaNotificationDispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000075B4;
    block[3] = &unk_100020708;
    block[4] = self;
    block[5] = error;
    block[6] = response;
    dispatch_async(eaNotificationDispatchQueue, block);
    goto LABEL_7;
  }

  v6 = [-[NSDictionary objectForKey:](self->_deviceOptions objectForKey:{@"PersonalizationResponseFormat", "unsignedIntValue"}];
  if ([self->_iAUPServer firmwareBundle])
  {
    productIDCode = [(FirmwareBundle *)[self->_iAUPServer firmwareBundle] productIDCode];
    if (v6)
    {
      goto LABEL_13;
    }
  }

  else
  {
    productIDCode = 0;
    if (v6)
    {
      goto LABEL_13;
    }
  }

  if (self->_buildIdentities)
  {
    v10 = [-[NSDictionary objectForKey:](self->_manifestIDs objectForKey:{-[NSArray objectAtIndexedSubscript:](self->_manifestList, "objectAtIndexedSubscript:", self->_manifestIndex - 1)), "intValue"}];
    if ([self->_iAUPServer firmwareBundle])
    {
      v12 = v10 << 24;
      v9 = [[NSMutableData alloc] initWithData:{-[FirmwareBundle firmwareImage](-[iAUPServer firmwareBundle](self->_iAUPServer, "firmwareBundle"), "firmwareImage")}];
      if (![(EAFirmwareUpdater *)self stitchManifestInSuperBinary:v9 withManifest:response withId:v12])
      {
        sub_10000E9F4(self, v13);
        goto LABEL_18;
      }

      v14 = [[FirmwareBundle alloc] initWithData:v9 hashData:0 signatureData:0 certData:0];
      goto LABEL_14;
    }

    sub_10000EA00(self, v11);
LABEL_7:
    v9 = 0;
    goto LABEL_18;
  }

LABEL_13:
  v14 = [[FirmwareBundle alloc] initWithData:response hashData:0 signatureData:0 certData:0];
  v9 = 0;
LABEL_14:
  [self->_iAUPServer setFirmwareBundle:v14];

  if (productIDCode)
  {
    [(FirmwareBundle *)[self->_iAUPServer firmwareBundle] setProductIDCode:productIDCode];
  }

  if (![self->_iAUPServer personalizationComplete])
  {
    [(EAFirmwareUpdater *)self handleSessionError:15 message:@"Error during personalization response"];
  }

LABEL_18:
}

- (void)handleSessionError:(unsigned int)error message:(id)message
{
  v9 = sub_1000064B4(0, error, message, message, v4, v5, v6, v7, v11[0]);
  eaNotificationDispatchQueue = self->_eaNotificationDispatchQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000077B0;
  v11[3] = &unk_1000206E0;
  v11[4] = self;
  dispatch_async(eaNotificationDispatchQueue, v11);
  v12 = @"Event";
  v13 = @"com.apple.fud.updateFailed";
  [(EAFirmwareUpdater *)self updateComplete:[NSDictionary error:"dictionaryWithObjects:forKeys:count:" dictionaryWithObjects:&v12 forKeys:1 count:?], v9];
}

- (id)applyFirmware:(id)firmware progress:(id)progress update:(id)update personalization:(id)personalization
{
  [(EAFirmwareUpdater *)self log:5 format:@"%s"];
  self->_applyCompletion = _Block_copy(firmware);
  self->_progressHandler = _Block_copy(progress);
  self->_updateHandler = _Block_copy(update);
  v11 = _Block_copy(personalization);
  self->_personalizationRequestHandler = v11;
  if (!self->_applyCompletion || !self->_progressHandler || (self->_updateHandler ? (v12 = v11 == 0) : (v12 = 1), v12))
  {
    sub_10000EA0C();
    return 0;
  }

  iAUPServer = self->_iAUPServer;
  if (!iAUPServer)
  {
    v14 = [[iAUPServer alloc] initInstanceWithByteEscape:self->_byteEscape];
    self->_iAUPServer = v14;
    if (!v14)
    {
      v33 = @"Can't create iAUPServer";
      v34 = 17;
      goto LABEL_36;
    }

    [(iAUPServer *)v14 setDelegate:self];
    iAUPServer = self->_iAUPServer;
  }

  [iAUPServer setAckAppReentry:self->_closeEASession];
  if ([(EAFirmwareUpdater *)self isMultiAssetSession]|| [self->_iAUPServer firmwareBundle])
  {
    goto LABEL_26;
  }

  if (![(EAFirmwareUpdater *)self firmwareBundleURL])
  {
    v33 = @"No firmware bundle URL";
LABEL_35:
    v34 = 6;
    goto LABEL_36;
  }

  v20 = [[FirmwareBundle alloc] initWithBundlePath:[(NSURL *)[(EAFirmwareUpdater *)self firmwareBundleURL] path]];
  if (!v20)
  {
    v33 = @"Unable to allocated FirmwareBundle object";
    goto LABEL_35;
  }

  v21 = v20;
  v22 = [NSString alloc];
  v23 = "nil";
  if ([(FirmwareBundle *)v21 firmwareImage])
  {
    v24 = "valid";
  }

  else
  {
    v24 = "nil";
  }

  firmwareImageSize = [(FirmwareBundle *)v21 firmwareImageSize];
  if ([(FirmwareBundle *)v21 hash])
  {
    v26 = "valid";
  }

  else
  {
    v26 = "nil";
  }

  if ([(FirmwareBundle *)v21 signature])
  {
    v27 = "valid";
  }

  else
  {
    v27 = "nil";
  }

  if ([(FirmwareBundle *)v21 certificate])
  {
    v23 = "valid";
  }

  v28 = [v22 initWithFormat:@"FirmwareBundle created [image=%s imageSize=%d hash=%s signature=%s cert=%s productID=%d baseAddress=%d]\n", v24, firmwareImageSize, v26, v27, v23, -[FirmwareBundle productIDCode](v21, "productIDCode"), -[FirmwareBundle firmwareImageBaseAddress](v21, "firmwareImageBaseAddress")];
  [(EAFirmwareUpdater *)self log:5 format:@"%s %@"];
  [self->_iAUPServer setFirmwareBundle:v21];

LABEL_26:
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:self name:"_accessoryDidConnect:" object:EAAccessoryDidConnectNotification, 0];
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:self name:"_accessoryDidDisconnect:" object:EAAccessoryDidDisconnectNotification, 0];
  v29 = dispatch_queue_create("com.apple.MobileAccessoryUpdater.EAFirmwareUpdater", 0);
  self->_eaNotificationDispatchQueue = v29;
  if (v29)
  {
    [self->_iAUPServer setDispatchQ:v29];
    eaNotificationDispatchQueue = self->_eaNotificationDispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100007BB0;
    block[3] = &unk_1000206E0;
    block[4] = self;
    dispatch_async(eaNotificationDispatchQueue, block);
    return 0;
  }

  v33 = @"Unable to allocate dispatch queue for EA notifications";
  v34 = 19;
LABEL_36:
  v31 = sub_1000064B4(0, v34, v33, v15, v16, v17, v18, v19, "[EAFirmwareUpdater applyFirmware:progress:update:personalization:]");
  if (v31)
  {
    v36 = @"Event";
    v37 = @"com.apple.fud.updateFailed";
    [(EAFirmwareUpdater *)self updateComplete:[NSDictionary error:"dictionaryWithObjects:forKeys:count:" dictionaryWithObjects:&v36 forKeys:1 count:?], v31];
  }

  return v31;
}

- (id)openSession
{
  if ([(EAFirmwareUpdater *)self accessory])
  {
    if ([(EAFirmwareUpdater *)self protocolString])
    {
      NSLog(@"accessory = %@\n", [(EAFirmwareUpdater *)self accessory]);
      NSLog(@"protocolString = %@\n", [(EAFirmwareUpdater *)self protocolString]);
      v8 = [[EASession alloc] initWithAccessory:-[EAFirmwareUpdater accessory](self forProtocol:{"accessory"), -[EAFirmwareUpdater protocolString](self, "protocolString")}];
      if (v8)
      {
        v9 = v8;
        [(EAFirmwareUpdater *)self setSession:v8];

        inputStream = [(EASession *)self->_session inputStream];
        if (inputStream)
        {
          v11 = inputStream;
          [(NSInputStream *)inputStream setDelegate:self];
          [(NSInputStream *)v11 scheduleInRunLoop:+[NSRunLoop forMode:"mainRunLoop"], NSDefaultRunLoopMode];
          [(NSInputStream *)v11 open];
          outputStream = [(EASession *)self->_session outputStream];
          if (outputStream)
          {
            v13 = outputStream;
            [(NSOutputStream *)outputStream setDelegate:self];
            [(NSOutputStream *)v13 scheduleInRunLoop:+[NSRunLoop forMode:"mainRunLoop"], NSDefaultRunLoopMode];
            [(NSOutputStream *)v13 open];
            return 0;
          }

          v15 = @"EASession has no output stream";
        }

        else
        {
          v15 = @"EASession has no input stream";
        }

        v16 = 15;
      }

      else
      {
        v15 = @"Unable to allocate new session";
        v16 = 14;
      }
    }

    else
    {
      v15 = @"No protocol string";
      v16 = 13;
    }
  }

  else
  {
    v15 = @"No accessory";
    v16 = 12;
  }

  return sub_1000064B4(0, v16, v15, v3, v4, v5, v6, v7, v18);
}

- (void)closeSession
{
  if (self->_session)
  {
    -[EAFirmwareUpdater log:format:](self, "log:format:", 5, @"%s %@", "-[EAFirmwareUpdater closeSession]", [[NSString alloc] initWithFormat:@"Closing EA Session=%@", self->_session]);
    inputStream = [(EASession *)self->_session inputStream];
    if (inputStream)
    {
      v4 = inputStream;
      [(NSInputStream *)inputStream close];
      [(NSInputStream *)v4 removeFromRunLoop:+[NSRunLoop forMode:"mainRunLoop"], NSDefaultRunLoopMode];
    }

    outputStream = [(EASession *)self->_session outputStream];
    if (outputStream)
    {
      v6 = outputStream;
      [(NSOutputStream *)outputStream close];
      [(NSOutputStream *)v6 removeFromRunLoop:+[NSRunLoop forMode:"mainRunLoop"], NSDefaultRunLoopMode];
    }

    self->_session = 0;
  }
}

- (id)writeData:(id)data
{
  if (data)
  {
    -[EAFirmwareUpdater log:format:](self, "log:format:", 5, @"%s %@", "-[EAFirmwareUpdater writeData:]", [[NSString alloc] initWithFormat:@"- writing %u bytes", objc_msgSend(data, "length")]);
    if (![(EAFirmwareUpdater *)self isMultiAssetSession]&& !self->_closeEASession)
    {
      bytes = [data bytes];
      v11 = 3;
      if (!self->_byteEscape)
      {
        v11 = 4;
      }

      if (bytes[v11] == 65 && !self->_skipReconnect)
      {
        [(EAFirmwareUpdater *)self startReconnectTimer:2];
      }
    }

    outputData = self->_outputData;
    if (outputData)
    {
      [(NSMutableData *)outputData appendData:data];
LABEL_12:

      return [(EAFirmwareUpdater *)self flushOutput];
    }

    v13 = [[NSMutableData alloc] initWithData:data];
    self->_outputData = v13;
    if (v13)
    {
      goto LABEL_12;
    }

    v14 = @"Couldn't allocate NSMutableData object to store bytes to be written";
    v15 = 16;
  }

  else
  {
    v14 = @"No data to write";
    v15 = 18;
  }

  return sub_1000064B4(0, v15, v14, v3, v4, v5, v6, v7, v18);
}

- (void)updateProgress:(double)progress
{
  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    progressHandler[2](progress);
  }
}

- (id)createEndOfUpdateEventDict:(id)dict error:(id)error
{
  -[EAFirmwareUpdater log:format:](self, "log:format:", 5, @"%s %@", "-[EAFirmwareUpdater createEndOfUpdateEventDict:error:]", [[NSString alloc] initWithFormat:&stru_100021DB8]);
  v7 = [dict objectForKey:@"Event"];
  if (!v7)
  {
    sub_10000EAFC(self, v8);
    v23 = 0;
    goto LABEL_22;
  }

  v9 = v7;
  if (self->_updateStartTime)
  {
    [+[NSDate date](NSDate timeIntervalSinceDate:"timeIntervalSinceDate:", self->_updateStartTime];
    v11 = v10;
    self->_currentSessionTimeTaken = [NSNumber numberWithUnsignedInt:v10];
  }

  else
  {
    v11 = 0.0;
  }

  v12 = [-[iAUPServer getNumberOfBytesDownloadedInCurrentSession](self->_iAUPServer "getNumberOfBytesDownloadedInCurrentSession")];
  v13 = v12;
  if (v11 == 0.0)
  {
    v26 = &off_100024328;
  }

  else
  {
    v26 = [NSNumber numberWithUnsignedInt:((8 * v12) / v11)];
  }

  v14 = [(NSNumber *)self->_cumulativeBytesDownloaded unsignedIntValue]+ v13;
  [(EAFirmwareUpdater *)self log:5 format:@"_cumulativeBytesDownloaded = %d (= %d earlier + %d current session)", v14, [(NSNumber *)self->_cumulativeBytesDownloaded unsignedIntValue], v13];
  self->_cumulativeBytesDownloaded = [NSNumber numberWithUnsignedInt:v14];
  if ([(NSNumber *)self->_totalBytesForCompleteUpdate unsignedIntValue])
  {
    [(NSNumber *)self->_totalBytesForCompleteUpdate floatValue];
    v16 = ((v14 / v15) * 100.0);
    self->_cumulativeProgressPercent = [NSNumber numberWithUnsignedInt:v16];
  }

  else
  {
    v16 = 0;
  }

  [(EAFirmwareUpdater *)self log:5 format:@"_totalBytesForCompleteUpdate = %d, So _cumulativeProgressPercent = %d [ = (%d / %d) * 100 ]", [(NSNumber *)self->_totalBytesForCompleteUpdate unsignedIntValue], v16, v14, [(NSNumber *)self->_totalBytesForCompleteUpdate unsignedIntValue]];
  self->_cumulativeTimeTaken = [NSNumber numberWithUnsignedInt:[(NSNumber *)self->_currentSessionTimeTaken unsignedIntValue]+ [(NSNumber *)self->_cumulativeTimeTaken unsignedIntValue]];
  self->_cumulativeCloakTime = [NSNumber numberWithUnsignedInt:[(NSNumber *)self->_currentSessionCloakTime unsignedIntValue]+ [(NSNumber *)self->_cumulativeCloakTime unsignedIntValue]];
  v17 = [NSNumber numberWithUnsignedInt:[(NSNumber *)self->_resumeCount unsignedIntValue]+ 1];
  if (error && [error userInfo] && objc_msgSend(objc_msgSend(error, "userInfo"), "objectForKey:", NSLocalizedDescriptionKey))
  {
    v18 = [objc_msgSend(error "userInfo")];
  }

  else
  {
    v18 = @"Unknown";
  }

  cumulativeProgressPercent = self->_cumulativeProgressPercent;
  v27[0] = @"cumulativeProgressPercent";
  v27[1] = @"currentSessionTimeTaken";
  currentSessionTimeTaken = self->_currentSessionTimeTaken;
  v28[0] = cumulativeProgressPercent;
  v28[1] = currentSessionTimeTaken;
  cumulativeTimeTaken = self->_cumulativeTimeTaken;
  v27[2] = @"cumulativeTimeTaken";
  v27[3] = @"cumulativeCloakingTime";
  cumulativeCloakTime = self->_cumulativeCloakTime;
  v28[2] = cumulativeTimeTaken;
  v28[3] = cumulativeCloakTime;
  v27[4] = @"averageBitRate";
  v27[5] = @"totalSessionCount";
  v28[4] = v26;
  v28[5] = v17;
  v27[6] = @"error";
  v28[6] = v18;
  v23 = [NSMutableDictionary dictionaryWithDictionary:[NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:7]];
  if (([v9 isEqualToString:@"com.apple.fud.updateCompleted"] & 1) == 0)
  {
    if ([v9 isEqualToString:@"com.apple.fud.updateInterrupted"])
    {
      v24 = @"interruptedState";
LABEL_21:
      [(NSMutableDictionary *)v23 setObject:@"FailureStateApply" forKey:v24];
      goto LABEL_22;
    }

    if ([v9 isEqualToString:@"com.apple.fud.updateFailed"])
    {
      v24 = @"failureState";
      goto LABEL_21;
    }
  }

LABEL_22:
  [(EAFirmwareUpdater *)self log:5 format:@"Event dict = %@", v23];
  return v23;
}

- (void)firmwareUpdateComplete:(id)complete error:(id)error
{
  if (error)
  {

    [EAFirmwareUpdater updateComplete:"updateComplete:error:" error:?];
  }

  else
  {
    self->_firmwareUpdateComplete = 1;
    if (self->_isMultiAssetSession || [self->_iAUPServer iAUPVersion]== 2 || self->_closeEASession)
    {
      [(EAFirmwareUpdater *)self updateComplete:complete error:0];
      eaNotificationDispatchQueue = self->_eaNotificationDispatchQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000087D4;
      block[3] = &unk_1000206E0;
      block[4] = self;
      dispatch_async(eaNotificationDispatchQueue, block);
    }
  }
}

- (unsigned)getPersonalizationID
{
  manifestList = self->_manifestList;
  if (!manifestList)
  {
    sub_10000EB08(self, a2);
    return 1;
  }

  if (!self->_manifestIDs)
  {
    return 1;
  }

  manifestIndex = self->_manifestIndex;
  if ([(NSArray *)manifestList count]<= manifestIndex)
  {
    return 1;
  }

  return [-[NSDictionary objectForKey:](self->_manifestIDs objectForKey:{-[NSArray objectAtIndexedSubscript:](self->_manifestList, "objectAtIndexedSubscript:", self->_manifestIndex)), "intValue"}] | 1;
}

- (void)updateComplete:(id)complete error:(id)error
{
  objc_sync_enter(self);
  [(EAFirmwareUpdater *)self log:5 format:@"error=%@", error];
  [(EAFirmwareUpdater *)self stopReconnectTimer];
  eaNotificationDispatchQueue = self->_eaNotificationDispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008AAC;
  block[3] = &unk_1000206E0;
  block[4] = self;
  dispatch_async(eaNotificationDispatchQueue, block);
  if (!self->_applyCompletion)
  {
    goto LABEL_16;
  }

  if (complete)
  {
    v8 = [(EAFirmwareUpdater *)self createEndOfUpdateEventDict:complete error:error];
    if ([objc_msgSend(complete objectForKeyedSubscript:{@"Event", "isEqualToString:", @"com.apple.fud.updateInterrupted"}])
    {
      userInfo = [error userInfo];
      v10 = 1;
    }

    else
    {
      if (![objc_msgSend(complete objectForKeyedSubscript:{@"Event", "isEqualToString:", @"com.apple.fud.updateFailed"}])
      {
        v11 = 0;
        goto LABEL_10;
      }

      userInfo = [error userInfo];
      v10 = 4;
    }

    v11 = [NSError errorWithDomain:@"com.apple.MobileAccessoryUpdater.ErrorDomain" code:v10 userInfo:userInfo];
  }

  else
  {
    v11 = 0;
    v8 = 0;
  }

LABEL_10:
  applyCompletion = [(EAFirmwareUpdater *)self applyCompletion];
  applyCompletion[2](applyCompletion, v8, v11);
  _Block_release(self->_applyCompletion);
  self->_applyCompletion = 0;
  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    _Block_release(progressHandler);
    self->_progressHandler = 0;
  }

  updateHandler = self->_updateHandler;
  if (updateHandler)
  {
    _Block_release(updateHandler);
    self->_updateHandler = 0;
  }

  personalizationRequestHandler = self->_personalizationRequestHandler;
  if (personalizationRequestHandler)
  {
    _Block_release(personalizationRequestHandler);
    self->_personalizationRequestHandler = 0;
  }

LABEL_16:
  [(EAFirmwareUpdater *)self doneWithAsset];
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:", self];
  objc_sync_exit(self);
}

- (void)_accessoryDidConnect:(id)connect
{
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3052000000;
  v18[3] = sub_100008EBC;
  v18[4] = sub_100008ECC;
  v18[5] = 0;
  -[EAFirmwareUpdater log:format:](self, "log:format:", 5, @"%s %@", "-[EAFirmwareUpdater _accessoryDidConnect:]", [[NSString alloc] initWithFormat:@"notification=%@", connect]);
  -[EAFirmwareUpdater log:format:](self, "log:format:", 5, @"%s %@", "-[EAFirmwareUpdater _accessoryDidConnect:]", [[NSString alloc] initWithFormat:@"_isExpectingReconnect=%d _isMultiAssetSession=%d current=[%@:%lu:FWvA%@:FWvP%@] ", self->_isExpectingReconnect, self->_isMultiAssetSession, -[EAAccessory modelNumber](-[EAFirmwareUpdater accessory](self, "accessory"), "modelNumber"), -[EAAccessory connectionID](-[EAFirmwareUpdater accessory](self, "accessory"), "connectionID"), -[EAAccessory firmwareRevisionActive](-[EAFirmwareUpdater accessory](self, "accessory"), "firmwareRevisionActive"), -[EAAccessory firmwareRevisionPending](-[EAFirmwareUpdater accessory](self, "accessory"), "firmwareRevisionPending")]);
  if (connect)
  {
    v5 = [objc_msgSend(connect "userInfo")];
    if (v5)
    {
      v6 = [(EAFirmwareUpdater *)self supportedProtocolForAccessory:v5];
      if (v6)
      {
        if (((self->_excludeUniqueAccessoryCheck | [objc_msgSend(v5 "serialNumber")]) & 1) == 0)
        {
          -[EAFirmwareUpdater log:format:](self, "log:format:", 5, @"%s %@", "-[EAFirmwareUpdater _accessoryDidConnect:]", [[NSString alloc] initWithFormat:@"%s: notification tracking different accessory, expected serial# %@ got %@", "-[EAFirmwareUpdater _accessoryDidConnect:]", self->_serialNumber, objc_msgSend(v5, "serialNumber")]);
          goto LABEL_16;
        }

        isExpectingReconnect = self->_isExpectingReconnect;
        [(EAFirmwareUpdater *)self stopReconnectTimer];
        if ([v6 isEqualToString:{-[EAFirmwareUpdater bootloaderProtocol](self, "bootloaderProtocol")}])
        {
          if (isExpectingReconnect == 1)
          {
            if (self->_eaNotificationDispatchQueue)
            {
              sub_10000EB54(&v17);
              goto LABEL_16;
            }

            goto LABEL_18;
          }
        }

        else
        {
          if (![v6 isEqualToString:{-[EAFirmwareUpdater appProtocol](self, "appProtocol")}])
          {
            [(EAFirmwareUpdater *)self log:5 format:@"%s() Ignoring unrelated connect notification", "[EAFirmwareUpdater _accessoryDidConnect:]"];
            goto LABEL_16;
          }

          if (isExpectingReconnect == 2)
          {
            if (self->_eaNotificationDispatchQueue)
            {
              sub_10000EB14(&v16);
              goto LABEL_16;
            }

LABEL_18:
            v8 = @"System error";
            goto LABEL_14;
          }
        }

        v8 = @"Accessory reconnected in wrong mode";
LABEL_14:
        [(EAFirmwareUpdater *)self log:5 format:@"%s() Error - connect notification: supportedProtocol=%@ deviceClass=%@ [%@] ", "[EAFirmwareUpdater _accessoryDidConnect:]", v6, self->_deviceClass, v8];
        v19 = @"Event";
        v20 = @"com.apple.fud.updateFailed";
        v9 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
        [(EAFirmwareUpdater *)self updateComplete:v9 error:sub_1000064B4(0, 11, v8, v10, v11, v12, v13, v14, v15)];
      }
    }
  }

LABEL_16:
  _Block_object_dispose(v18, 8);
}

- (void)_accessoryDidDisconnect:(id)disconnect
{
  -[EAFirmwareUpdater log:format:](self, "log:format:", 5, @"%s %@", "-[EAFirmwareUpdater _accessoryDidDisconnect:]", [[NSString alloc] initWithFormat:@"notification=%@", disconnect]);
  if (self->_eaNotificationDispatchQueue)
  {
    objc_sync_enter(self);
    v5 = [objc_msgSend(disconnect "userInfo")];
    -[EAFirmwareUpdater log:format:](self, "log:format:", 5, @"%s %@", "-[EAFirmwareUpdater _accessoryDidDisconnect:]", [[NSString alloc] initWithFormat:@"_isExpectingReconnect=%d _isMultiAssetSession=%d disconnecting=[%@:%lu:FWvA%@:FWvP%@] current=[%@:%lu:FWvA%@:FWP%@]", self->_isExpectingReconnect, self->_isMultiAssetSession, objc_msgSend(v5, "modelNumber"), objc_msgSend(v5, "connectionID"), objc_msgSend(v5, "firmwareRevisionActive"), objc_msgSend(v5, "firmwareRevisionPending"), -[EAAccessory modelNumber](-[EAFirmwareUpdater accessory](self, "accessory"), "modelNumber"), -[EAAccessory connectionID](-[EAFirmwareUpdater accessory](self, "accessory"), "connectionID"), -[EAAccessory firmwareRevisionActive](-[EAFirmwareUpdater accessory](self, "accessory"), "firmwareRevisionActive"), -[EAAccessory firmwareRevisionPending](-[EAFirmwareUpdater accessory](self, "accessory"), "firmwareRevisionPending")]);
    sub_10000EB94(&self->_eaNotificationDispatchQueue, &v6, v5, self);
  }
}

+ (id)getEAFirmwareRevisionActive:(id)active forProtocol:(id)protocol
{
  firmwareRevisionActive = 0;
  if (active)
  {
    if (protocol)
    {
      firmwareRevisionActive = [active firmwareRevisionActive];
      v7 = [objc_msgSend(active "modelNumber")];
      v8 = [objc_msgSend(active "modelNumber")];
      if (([objc_msgSend(active "modelNumber")] & 1) != 0 || (v8 & 1) != 0 || v7)
      {
        if ([active protocolDetails] && objc_msgSend(objc_msgSend(active, "protocolDetails"), "objectForKey:", protocol))
        {
          v9 = [objc_msgSend(active "protocolDetails")];
          firmwareRevisionActive = [v9 objectForKey:EAProtocolFirmwareVersionActiveKey];
          sub_1000096F0();
          NSLog(@"%s(): fwRevisionActive=%@ forProtocol=%@");
        }

        else
        {
          [active protocolDetails];
          sub_1000096F0();
          NSLog(@"%s() EAAccessory has no protocolDetails=%@ for protocol");
        }
      }
    }
  }

  return firmwareRevisionActive;
}

+ (id)getEAFirmwareRevisionPending:(id)pending forProtocol:(id)protocol
{
  firmwareRevisionPending = 0;
  if (pending)
  {
    if (protocol)
    {
      firmwareRevisionPending = [pending firmwareRevisionPending];
      v7 = [objc_msgSend(pending "modelNumber")];
      v8 = [objc_msgSend(pending "modelNumber")];
      if (([objc_msgSend(pending "modelNumber")] & 1) != 0 || (v8 & 1) != 0 || v7)
      {
        if ([pending protocolDetails] && objc_msgSend(objc_msgSend(pending, "protocolDetails"), "objectForKey:", protocol))
        {
          v9 = [objc_msgSend(pending "protocolDetails")];
          firmwareRevisionPending = [v9 objectForKey:EAProtocolFirmwareVersionPendingKey];
          sub_1000096F0();
          NSLog(@"%s(): fwRevisionPending=%@ forProtocol=%@");
        }

        else
        {
          [pending protocolDetails];
          sub_1000096F0();
          NSLog(@"%s() EAAccessory has no protocolDetails=%@ for protocol");
        }
      }
    }
  }

  return firmwareRevisionPending;
}

- (void)setAccessory:(id)accessory
{
  if (self->_accessory == accessory)
  {
    goto LABEL_18;
  }

  v24 = [objc_opt_class() getEAFirmwareRevisionPending:self->_accessory forProtocol:self->_protocolString];
  v23 = [objc_opt_class() getEAFirmwareRevisionActive:self->_accessory forProtocol:self->_protocolString];
  v5 = [NSString alloc];
  modelNumber = [(EAAccessory *)self->_accessory modelNumber];
  connectionID = [(EAAccessory *)self->_accessory connectionID];
  modelNumber2 = [accessory modelNumber];
  connectionID2 = [accessory connectionID];
  v10 = [objc_opt_class() getEAFirmwareRevisionActive:accessory forProtocol:self->_protocolString];
  v11 = [v5 initWithFormat:@"old=[%@:%lu:FWvA%@:FWvP%@] new=[%@:%lu:FWvA%@:FWvP%@] ", modelNumber, connectionID, v23, v24, modelNumber2, connectionID2, v10, objc_msgSend(objc_opt_class(), "getEAFirmwareRevisionPending:forProtocol:", accessory, self->_protocolString)];
  [sub_100009678() log:"-[EAFirmwareUpdater setAccessory:]" format:v11];
  accessory = self->_accessory;
  if (accessory)
  {
    [(EAAccessory *)accessory setDelegate:0];
  }

  self->_accessory = accessory;
  if (!accessory)
  {
    goto LABEL_15;
  }

  accessoryCopy = accessory;
  [(EAFirmwareUpdater *)self setProtocolString:[(EAFirmwareUpdater *)self supportedProtocolForAccessory:self->_accessory]];
  if (![(EAFirmwareUpdater *)self protocolString])
  {
    [sub_100009678() log:? format:?];
  }

  if (![(EAFirmwareUpdater *)self isMultiAssetSession])
  {
    v14 = [objc_opt_class() getEAFirmwareRevisionPending:self->_accessory forProtocol:self->_protocolString];
    v15 = [objc_opt_class() getEAFirmwareRevisionActive:self->_accessory forProtocol:self->_protocolString];
    if (v14)
    {
      v15 = v14;
    }

    if (v15)
    {
      v16 = [v15 componentsSeparatedByString:@"."];
      if (v16)
      {
        v17 = v16;
        if ([v16 count] == 3)
        {
          self->_firmwareVersionMajor = [objc_msgSend(v17 objectAtIndex:{0), "longLongValue"}];
          self->_firmwareVersionMinor = [objc_msgSend(v17 objectAtIndex:{1), "longLongValue"}];
          self->_firmwareVersionRelease = [objc_msgSend(v17 objectAtIndex:{2), "longLongValue"}];
          v18 = [NSString alloc];
          firmwareVersionMinor = self->_firmwareVersionMinor;
          [sub_100009678() log:"-[EAFirmwareUpdater setAccessory:]" format:{objc_msgSend(v18, "initWithFormat:", @" - FW Version: %llu.%llu.%llu", self->_firmwareVersionMajor, firmwareVersionMinor, self->_firmwareVersionRelease)}];
          goto LABEL_14;
        }
      }
    }

LABEL_18:
    sub_1000096FC();
    return;
  }

LABEL_14:
  [sub_100009678() log:"-[EAFirmwareUpdater setAccessory:]" format:{objc_msgSend([NSString alloc], "initWithFormat:", @" - FW Version: %llu.%llu.%llu (%@)", self->_firmwareVersionMajor, self->_firmwareVersionMinor, self->_firmwareVersionRelease, -[EAFirmwareUpdater protocolString](self, "protocolString"))}];
  v20 = self->_firmwareVersionMinor;
  [(EAFirmwareUpdater *)self setCurrentFirmwareVersionOnAcc:[NSString stringWithFormat:@"%llu.%llu.%llu", self->_firmwareVersionMajor, v20, self->_firmwareVersionRelease]];
LABEL_15:
  sub_1000096FC();

  [v21 setSession:?];
}

- (id)supportedProtocolForAccessory:(id)accessory
{
  if (!accessory)
  {
    return 0;
  }

  result = [(EAFirmwareUpdater *)self bootloaderProtocol];
  if (result)
  {
    result = [(EAFirmwareUpdater *)self appProtocol];
    if (result)
    {
      result = [accessory protocolStrings];
      if (result)
      {
        v6 = result;
        v13 = 0u;
        v14 = 0u;
        v11 = 0u;
        v12 = 0u;
        result = [result countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (result)
        {
          v7 = result;
          v8 = *v12;
          while (2)
          {
            v9 = 0;
            do
            {
              if (*v12 != v8)
              {
                objc_enumerationMutation(v6);
              }

              v10 = *(*(&v11 + 1) + 8 * v9);
              if ([(EAFirmwareUpdater *)self isMultiAssetSession])
              {
                if (sub_1000096C0([(EAFirmwareUpdater *)self multiAssetAppProtocol]) != 0x7FFFFFFFFFFFFFFFLL)
                {
                  return [(EAFirmwareUpdater *)self multiAssetAppProtocol];
                }
              }

              else
              {
                if (sub_1000096C0([(EAFirmwareUpdater *)self bootloaderProtocol]) != 0x7FFFFFFFFFFFFFFFLL)
                {
                  return [(EAFirmwareUpdater *)self bootloaderProtocol];
                }

                if (sub_1000096C0([(EAFirmwareUpdater *)self appProtocol]) != 0x7FFFFFFFFFFFFFFFLL)
                {
                  return [(EAFirmwareUpdater *)self appProtocol];
                }
              }

              v9 = v9 + 1;
            }

            while (v7 != v9);
            result = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
            v7 = result;
            if (result)
            {
              continue;
            }

            break;
          }
        }
      }
    }
  }

  return result;
}

- (id)assetWithMaxVersion:(id)version
{
  if (!version)
  {
    return 0;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = [version countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v23 = 0;
  v24 = 0;
  v6 = 0;
  v25 = 0;
  obj = version;
  v7 = 0;
  v8 = *v28;
  do
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v28 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v27 + 1) + 8 * i);
      attributes = [v10 attributes];
      if (attributes)
      {
        v12 = attributes;
        v13 = [attributes objectForKey:@"FirmwareVersionMajor"];
        if (v13)
        {
          unsignedLongLongValue = [v13 unsignedLongLongValue];
          v15 = [v12 objectForKey:@"FirmwareVersionMinor"];
          if (v15)
          {
            unsignedLongLongValue2 = [v15 unsignedLongLongValue];
            v17 = [v12 objectForKey:@"FirmwareVersionRelease"];
            if (v17)
            {
              unsignedLongLongValue3 = [v17 unsignedLongLongValue];
              v19 = [v12 objectForKey:@"FormatVersion"];
              if (v19)
              {
                unsignedLongLongValue4 = [v19 unsignedLongLongValue];
                if (unsignedLongLongValue4 >= v7)
                {
                  if (unsignedLongLongValue > v6 || unsignedLongLongValue == v6 && (unsignedLongLongValue2 > v25 || (unsignedLongLongValue2 == v25 ? (v21 = unsignedLongLongValue3 > v24) : (v21 = 0), v21)))
                  {
                    v23 = v10;
                    v24 = unsignedLongLongValue3;
                    v6 = unsignedLongLongValue;
                    v25 = unsignedLongLongValue2;
                    v7 = unsignedLongLongValue4;
                  }
                }
              }
            }
          }
        }
      }
    }

    v5 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  }

  while (v5);
  return v23;
}

- (id)validateAsset
{
  if (![(EAFirmwareUpdater *)self asset])
  {
    v32 = @"NoAsset";
    v33 = 2;
LABEL_27:
    sub_1000064B4(0, v33, v32, v3, v4, v5, v6, v7, v36);
    v14 = 0;
    goto LABEL_21;
  }

  v8 = [-[EAFirmwareUpdater asset](self "asset")];
  v14 = v8;
  if (!v8)
  {
    v34 = @"No local URL for asset";
    v35 = 5;
LABEL_32:
    sub_1000064B4(0, v35, v34, v9, v10, v11, v12, v13, v36);
    goto LABEL_21;
  }

  v15 = [[NSString alloc] initWithFormat:@"validating MobileAsset [localURL=%@] attributes=%@\n", v8, objc_msgSend(-[EAFirmwareUpdater asset](self, "asset"), "attributes")];
  v36 = "[EAFirmwareUpdater validateAsset]";
  v38 = v15;
  [sub_100009678() log:? format:?];
  -[EAFirmwareUpdater setFirmwareBundleURL:](self, "setFirmwareBundleURL:", [-[FirmwareBundle URLByAppendingPathComponent:](v14 URLByAppendingPathComponent:{-[EAFirmwareUpdater firmwareBundleFilename](self, "firmwareBundleFilename")), "filePathURL"}]);
  if (![(EAFirmwareUpdater *)self firmwareBundleURL])
  {
    v32 = @"Couldn't build firmware update URL";
    v33 = 4;
    goto LABEL_27;
  }

  if (![+[NSFileManager isReadableFileAtPath:"isReadableFileAtPath:"]
  {
    v36 = [(EAFirmwareUpdater *)self firmwareBundleURL:"[EAFirmwareUpdater validateAsset]"];
    v32 = @"No firmware bundle: %@";
    v33 = 6;
    goto LABEL_27;
  }

  if (![(EAFirmwareUpdater *)self updateRequiresSuperBinary])
  {
    v14 = 0;
    goto LABEL_21;
  }

  v16 = [[FirmwareBundle alloc] initWithBundlePath:[(NSURL *)[(EAFirmwareUpdater *)self firmwareBundleURL] path]];
  v14 = v16;
  if (!v16)
  {
    v34 = @"Couldn't read firmware bundle";
LABEL_31:
    v35 = 4;
    goto LABEL_32;
  }

  if (![(FirmwareBundle *)v16 firmwareImage:"[EAFirmwareUpdater validateAsset]"]&& [(FirmwareBundle *)v14 firmwareLocalURL])
  {
    [(FirmwareBundle *)v14 loadFirmwareImage];
  }

  bytes = [(NSData *)[(FirmwareBundle *)v14 firmwareImage] bytes];
  [(NSData *)[(FirmwareBundle *)v14 firmwareImage] length];
  v18 = parseSuperBinaryAndPayloadHeaders();
  if (!v18)
  {
    v34 = @"Couldn't parse SuperBinary header";
    goto LABEL_31;
  }

  v19 = v18;
  if (*(v18 + 16))
  {
    v20 = 0;
    v21 = (v18 + 20);
    while (1)
    {
      v22 = [NSString stringWithFormat:@"%c%c%c%c", *v21, v21[1], v21[2], v21[3]];
      if (!v22)
      {
        sub_1000064B4(0, 4, @"Couldn't parse SuperBinary header tag", v23, v24, v25, v26, v27, v37);
        goto LABEL_20;
      }

      if ([(NSString *)v22 isEqualToString:@"sbmd"])
      {
        break;
      }

      ++v20;
      v21 += 20;
      if (v20 >= v19[8])
      {
        goto LABEL_20;
      }
    }

    v28 = &bytes[*(v21 + 3)];
    v29 = (*(v21 + 4) + *(v21 + 3));
    if (metadataTLVGetNext())
    {
      v30 = [[NSString alloc] initWithFormat:@"Warning: Unsupported TLV type found in metadata: %d", 0];
      [sub_100009678() log:? format:?];
    }
  }

LABEL_20:
  free(v19);
LABEL_21:

  sub_1000096FC();
  return result;
}

- (void)handleFirmwareUpdateStatus:(id)status
{
  if (status)
  {
    v5 = [status objectForKey:@"Event"];
    if (([v5 isEqualToString:@"com.apple.fud.updateStarted"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"com.apple.fud.updateResumed"))
    {
      self->_updateStartTime = +[NSDate date];
      self->_cumulativeBytesDownloaded = [status objectForKeyedSubscript:@"totalBytesDownloadedSoFar"];
      self->_totalBytesForCompleteUpdate = [status objectForKeyedSubscript:@"totalBytesForCompleteUpdate"];
      [(NSNumber *)self->_cumulativeBytesDownloaded floatValue];
      v7 = v6;
      [(NSNumber *)self->_totalBytesForCompleteUpdate floatValue];
      self->_resumedFromPercentNum = [NSNumber numberWithUnsignedInt:((v7 / v8) * 100.0)];
      self->_resumeCount = [status objectForKeyedSubscript:@"resumeCount"];
      self->_cumulativeCloakTime = [status objectForKeyedSubscript:@"cumulativeCloakTime"];
      self->_cumulativeTimeTaken = [status objectForKeyedSubscript:@"cumulativeUpdateTime"];
      v13[0] = @"Event";
      v13[1] = @"transportType";
      v14[0] = v5;
      v14[1] = @"EATransport";
      resumedFromPercentNum = self->_resumedFromPercentNum;
      v13[2] = @"resumingFromPercent";
      v13[3] = @"resumeCount";
      resumeCount = self->_resumeCount;
      v14[2] = resumedFromPercentNum;
      v14[3] = resumeCount;
      v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:4];
    }

    else
    {
      v11 = 0;
    }

    updateHandler = self->_updateHandler;
    if (updateHandler)
    {
      updateHandler[2](updateHandler, v11);
    }
  }
}

- (void)stream:(id)stream handleEvent:(unint64_t)event
{
  switch(event)
  {
    case 0uLL:
      streamCopy4 = stream;
      goto LABEL_9;
    case 1uLL:
      streamCopy4 = stream;
      goto LABEL_9;
    case 2uLL:
      [sub_100009678() log:stream format:?];
      eaNotificationDispatchQueue = self->_eaNotificationDispatchQueue;
      if (!eaNotificationDispatchQueue)
      {
        return;
      }

      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100008AD8;
      v9[3] = &unk_1000206E0;
      v9[4] = self;
      v6 = v9;
      goto LABEL_12;
    case 3uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
      return;
    case 4uLL:
      [sub_100009678() log:stream format:?];
      eaNotificationDispatchQueue = self->_eaNotificationDispatchQueue;
      if (!eaNotificationDispatchQueue)
      {
        return;
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100008AE0;
      block[3] = &unk_1000206E0;
      block[4] = self;
      v6 = block;
LABEL_12:
      dispatch_async(eaNotificationDispatchQueue, v6);
      break;
    case 8uLL:
      streamCopy4 = stream;
      goto LABEL_9;
    default:
      if (event != 16)
      {
        return;
      }

      streamCopy4 = stream;
LABEL_9:
      [sub_100009678() log:streamCopy4 format:?];
      break;
  }
}

- (id)flushOutput
{
  pthread_mutex_lock(&self->_flushOutputLock);
  if ([(EAFirmwareUpdater *)self accessory])
  {
    session = self->_session;
    if (session)
    {
      outputStream = [(EASession *)session outputStream];
      if (outputStream)
      {
        v10 = outputStream;
        if ([(NSOutputStream *)outputStream hasSpaceAvailable])
        {
          while ([(NSMutableData *)self->_outputData length])
          {
            v11 = [(NSOutputStream *)v10 write:[(NSMutableData *)self->_outputData bytes] maxLength:[(NSMutableData *)self->_outputData length]];
            if (v11 == -1)
            {
              v14 = @"Failure attempting to write to NSOutputStream";
              v15 = 16;
              goto LABEL_13;
            }

            if (v11 >= 1)
            {
              [(NSMutableData *)self->_outputData replaceBytesInRange:0 withBytes:v11 length:0, 0];
            }

            if (![(NSOutputStream *)v10 hasSpaceAvailable])
            {
              goto LABEL_10;
            }
          }
        }

        goto LABEL_10;
      }

      v14 = @"No output stream on session";
      v15 = 15;
    }

    else
    {
      v14 = @"No session";
      v15 = 14;
    }

LABEL_13:
    v12 = sub_1000064B4(0, v15, v14, v3, v4, v5, v6, v7, v16);
    goto LABEL_11;
  }

LABEL_10:
  v12 = 0;
LABEL_11:
  pthread_mutex_unlock(&self->_flushOutputLock);
  return v12;
}

- (void)handleInputData
{
  [(EAFirmwareUpdater *)self log:5 format:@"%s", "[EAFirmwareUpdater handleInputData]"];
  if (self->_iAUPServer)
  {
    session = self->_session;
    if (session)
    {
      inputStream = [(EASession *)session inputStream];
      if (inputStream)
      {
        v5 = inputStream;
        if ([(NSInputStream *)inputStream hasBytesAvailable])
        {
          do
          {
            v6 = [(NSInputStream *)v5 read:v9 maxLength:128];
            [sub_100009678() log:v6 format:?];
            if (v6 >= 1)
            {
              v7 = v9;
              do
              {
                v8 = *v7++;
                [self->_iAUPServer processInByte:v8];
                --v6;
              }

              while (v6);
            }
          }

          while ([(NSInputStream *)v5 hasBytesAvailable]);
        }
      }
    }
  }
}

@end