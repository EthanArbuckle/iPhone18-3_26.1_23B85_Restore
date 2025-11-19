@interface NSSServer
+ (double)mirrorAirplaneSendTimeout;
+ (id)getActivePairedDeviceIDFromNanoRegistry;
+ (void)associateProtobufHandlers:(id)a3;
+ (void)setLaunchNotification:(id)a3 enabled:(BOOL)a4;
- (BOOL)activeDeviceIsAltAccount;
- (BOOL)isDefaultPairedDeviceNearby;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)messageIdentifier:(id)a3 didSendWithSuccess:(BOOL)a4 error:(id)a5;
- (BOOL)mirroringAirplaneMode;
- (BOOL)scheduleTimerForIdentifier:(id)a3 requests:(id)a4 timeout:(double)a5 timeoutHandler:(id)a6 timers:(id)a7 utilityName:(id)a8;
- (IDSService)idsFileTransferService;
- (IDSService)idsService;
- (NSSServer)init;
- (id)getActivePairedDevice;
- (id)initTestInstance;
- (id)linkFileForViewing:(id)a3 metadata:(id)a4 withError:(id *)a5;
- (id)sendLogFileAtUrl:(id)a3 toDevice:(id)a4 withOptions:(id)a5;
- (id)sendProtobuf:(id)a3 options:(id)a4 identifier:(id *)a5;
- (id)systemBuildVersion;
- (void)_resetIfTheActivePairedDeviceChanges;
- (void)askRemoteDeviceToPasscodeLockWithCompletionHandler:(id)a3;
- (void)cancelOrphanedFileTransfer:(id)a3;
- (void)cancelTimerForIdentifier:(id)a3 timers:(id)a4 utilityName:(id)a5;
- (void)connectionHandlerLostConnection:(id)a3;
- (void)dealloc;
- (void)earlyIvarInitialzation;
- (void)enableAirplaneMode:(BOOL)a3 completionHandler:(id)a4;
- (void)handleAirplaneModeMsg:(id)a3;
- (void)handleMemoryPressureEvent;
- (void)handleNotifyRemoteDeviceOfUsageAfterSetupRequestMsg:(id)a3;
- (void)handleRemotePasscodeLockRequestMsg:(id)a3;
- (void)listenToNanoRegistryAndResetIfTheActivePairedDeviceChanges;
- (void)notifyRemoteDeviceOfUsageAfterSetup:(id)a3;
- (void)resetIfTheActivePairedDeviceChanges;
- (void)sendFileTransfer:(id)a3 progress:(unint64_t)a4;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 hasBeenDeliveredWithContext:(id)a6;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 sentBytes:(int64_t)a6 totalBytes:(int64_t)a7;
- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 metadata:(id)a6 fromID:(id)a7 context:(id)a8;
@end

@implementation NSSServer

+ (void)setLaunchNotification:(id)a3 enabled:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (v4)
  {
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v6, "Notification", [v5 UTF8String]);
  }

  else
  {
    v6 = 0;
  }

  v7 = NSSLogForType();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"disabling";
    if (v4)
    {
      v8 = @"enabling";
    }

    v9 = 138412546;
    v10 = v8;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "setLaunchNotification: %@ launch notification %@", &v9, 0x16u);
  }

  [v5 UTF8String];
  xpc_set_event();
}

+ (id)getActivePairedDeviceIDFromNanoRegistry
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v4 = [v2 getAllDevicesWithArchivedAltAccountDevicesMatching:v3];
  v5 = [v4 firstObject];

  v6 = [v5 valueForProperty:NRDevicePropertyPairingID];

  return v6;
}

- (BOOL)activeDeviceIsAltAccount
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v4 = [v2 getAllDevicesWithArchivedAltAccountDevicesMatching:v3];
  v5 = [v4 firstObject];

  v6 = [v5 valueForProperty:NRDevicePropertyIsAltAccount];
  LOBYTE(v3) = [v6 BOOLValue];

  return v3;
}

- (void)listenToNanoRegistryAndResetIfTheActivePairedDeviceChanges
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"resetIfTheActivePairedDeviceChanges" name:NRPairedDeviceRegistryDeviceDidBecomeActive object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"resetIfTheActivePairedDeviceChanges" name:NRPairedDeviceRegistryDeviceDidBecomeInactive object:0];

  v5 = [objc_opt_class() getActivePairedDeviceIDFromNanoRegistry];
  activeDeviceID = self->_activeDeviceID;
  self->_activeDeviceID = v5;

  _objc_release_x1();
}

- (void)resetIfTheActivePairedDeviceChanges
{
  idsQueue = self->_idsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017AB0;
  block[3] = &unk_100034B48;
  block[4] = self;
  dispatch_async(idsQueue, block);
}

- (void)_resetIfTheActivePairedDeviceChanges
{
  v3 = [objc_opt_class() getActivePairedDeviceIDFromNanoRegistry];
  if (self->_activeDeviceID != v3)
  {
    v4 = NSSLogForType();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      activeDeviceID = self->_activeDeviceID;
      v6 = 138543618;
      v7 = activeDeviceID;
      v8 = 2114;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Resetting because the active paired device changed from %{public}@ to %{public}@", &v6, 0x16u);
    }

    objc_storeStrong(&self->_activeDeviceID, v3);
    [(NSSServer *)self resetBecauseTheActivePairedDeviceChanged];
  }
}

- (NSSServer)init
{
  v22.receiver = self;
  v22.super_class = NSSServer;
  v2 = [(NSSServer *)&v22 init];
  if (v2)
  {
    v3 = NSSLogForType();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Launching; NanoSystemSettingsDaemon-366 3339", buf, 2u);
    }

    [(NSSServer *)v2 listenToNanoRegistryAndResetIfTheActivePairedDeviceChanges];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_100017DEC, @"com.apple.language.changed", 0, 0);
    [(NSSServer *)v2 earlyIvarInitialzation];
    v5 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.nanosystemsettings"];
    listener = v2->_listener;
    v2->_listener = v5;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
    [(NSSServer *)v2 initializeIDS];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100017E5C;
    handler[3] = &unk_1000350B8;
    v7 = v2;
    v20 = v7;
    xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, handler);
    v8 = dispatch_get_global_queue(9, 0);
    v9 = dispatch_source_create(&_dispatch_source_type_memorypressure, 0, 6uLL, v8);
    vmPressureHandler = v7->_vmPressureHandler;
    v7->_vmPressureHandler = v9;

    v11 = v7->_vmPressureHandler;
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_10001800C;
    v17 = &unk_100034B48;
    v12 = v7;
    v18 = v12;
    dispatch_source_set_event_handler(v11, &v14);
    [(NSSServer *)v12 setFileTransferInProgress:0, v14, v15, v16, v17];
  }

  return v2;
}

- (id)initTestInstance
{
  v3.receiver = self;
  v3.super_class = NSSServer;
  return [(NSSServer *)&v3 init];
}

- (void)earlyIvarInitialzation
{
  v3 = objc_alloc_init(NSMutableArray);
  connectionHandlers = self->_connectionHandlers;
  self->_connectionHandlers = v3;

  v5 = dispatch_queue_create("com.apple.nanosystemsettings.connectionHandlers", &_dispatch_queue_attr_concurrent);
  connectionHandlersQueue = self->_connectionHandlersQueue;
  self->_connectionHandlersQueue = v5;

  v7 = dispatch_queue_create("com.apple.nanosystemsettings.ids", 0);
  idsQueue = self->_idsQueue;
  self->_idsQueue = v7;

  v9 = dispatch_queue_create("com.apple.nanosystemsettings.airplaneMode", 0);
  airplaneModeQueue = self->_airplaneModeQueue;
  self->_airplaneModeQueue = v9;

  v11 = objc_opt_new();
  airplaneModeDeliveryTimers = self->_airplaneModeDeliveryTimers;
  self->_airplaneModeDeliveryTimers = v11;

  v13 = objc_opt_new();
  logTranferIdentifiers = self->_logTranferIdentifiers;
  self->_logTranferIdentifiers = v13;

  _objc_release_x1();
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NSSServer;
  [(NSSServer *)&v2 dealloc];
}

- (void)handleMemoryPressureEvent
{
  v2 = NSSLogForType();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, &unk_100025E91, v3, 2u);
  }
}

- (id)systemBuildVersion
{
  if (qword_10003DD48 != -1)
  {
    sub_10001F724();
  }

  v3 = qword_10003DD50;

  return v3;
}

+ (void)associateProtobufHandlers:(id)a3
{
  v3 = a3;
  [v3 setProtobufAction:"handleAirplaneModeMsg:" forIncomingRequestsOfType:0];
  [v3 setProtobufAction:"handleRemotePasscodeLockRequestMsg:" forIncomingRequestsOfType:41];
  [v3 setProtobufAction:"handleNotifyRemoteDeviceOfUsageAfterSetupRequestMsg:" forIncomingRequestsOfType:42];
}

- (IDSService)idsService
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018448;
  block[3] = &unk_100034B48;
  block[4] = self;
  if (qword_10003DD60 != -1)
  {
    dispatch_once(&qword_10003DD60, block);
  }

  return qword_10003DD58;
}

- (IDSService)idsFileTransferService
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018604;
  block[3] = &unk_100034B48;
  block[4] = self;
  if (qword_10003DD70 != -1)
  {
    dispatch_once(&qword_10003DD70, block);
  }

  v2 = NSSLogForType();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v6 = qword_10003DD68;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "DEBUG: returning tranfer service %@", buf, 0xCu);
  }

  return qword_10003DD68;
}

- (BOOL)isDefaultPairedDeviceNearby
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(NSSServer *)self idsService];
  v3 = [v2 devices];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 isDefaultPairedDevice])
        {
          LODWORD(v4) = [v7 isNearby];
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = NSSLogForType();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "dpd isNearby: %d", buf, 8u);
  }

  return v4;
}

- (id)linkFileForViewing:(id)a3 metadata:(id)a4 withError:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = +[NSFileManager defaultManager];
  v48 = v7;
  v10 = [(__CFString *)v7 relativePath];
  v46 = [v10 lastPathComponent];
  v47 = v10;
  v11 = [v10 stringByReplacingOccurrencesOfString:? withString:?];
  v52 = 0;
  v12 = [v9 contentsOfDirectoryAtPath:v11 error:&v52];
  v13 = v52;
  v14 = [v12 firstObject];
  v45 = v11;
  v15 = [v11 stringByAppendingPathComponent:v14];

  if (v13)
  {
    v16 = NSSLogForType();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v54 = v13;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Couldn't get files from IDS's temp dir with error: %@", buf, 0xCu);
    }
  }

  v17 = [(NSSServer *)self getActivePairedDevice];
  v18 = [v17 valueForProperty:NRDevicePropertyPairingID];

  v19 = NSSLogForType();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v54 = v18;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "pairing id: %@", buf, 0xCu);
  }

  v20 = [(__CFString *)v18 UUIDString];
  v21 = [@"/var/mobile/tmp/BridgeDiagnosticLogs/" stringByAppendingPathComponent:v20];

  if (([v9 fileExistsAtPath:@"/var/mobile/tmp/BridgeDiagnosticLogs/"] & 1) == 0)
  {
    v51 = 0;
    [v9 createDirectoryAtPath:@"/var/mobile/tmp/BridgeDiagnosticLogs/" withIntermediateDirectories:0 attributes:0 error:&v51];
    v22 = v51;
    if (v22)
    {
      v23 = v22;
      v24 = NSSLogForType();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v54 = @"/var/mobile/tmp/BridgeDiagnosticLogs/";
        v55 = 2112;
        v56 = v23;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Failed to create %@ directory with error: %@", buf, 0x16u);
      }
    }
  }

  if (([v9 fileExistsAtPath:v21] & 1) == 0)
  {
    v50 = 0;
    [v9 createDirectoryAtPath:v21 withIntermediateDirectories:0 attributes:0 error:&v50];
    v25 = v50;
    if (v25)
    {
      v26 = v25;
      v27 = NSSLogForType();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v54 = v21;
        v55 = 2112;
        v56 = v26;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Failed to create %@ directory with error: %@", buf, 0x16u);
      }
    }
  }

  v28 = [v8 objectForKey:@"originalFilePath"];
  v29 = [v28 lastPathComponent];

  v30 = [(__CFString *)v21 stringByAppendingPathComponent:v29];
  v31 = v30;
  v32 = v15;
  if (!v15 || !v30)
  {
    v33 = v13;
    v39 = NSSLogForType();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v54 = v32;
      v55 = 2112;
      v56 = v31;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Can't copy file; transferred file path and/or destination path is nil\nTransferred File: %@\nNew Path: %@", buf, 0x16u);
    }

    v34 = v8;

    if (a5)
    {
      [NSError errorWithDomain:@"NSSErrorDomain" code:12 userInfo:0];
      *a5 = v37 = 0;
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v33 = v13;
  v34 = v8;
  v49 = 0;
  v35 = [v9 moveItemAtPath:v32 toPath:v30 error:&v49];
  v36 = v49;
  v37 = v36;
  if (!v35)
  {
    if (a5)
    {
      v40 = v36;
      *a5 = v37;
    }

    v41 = NSSLogForType();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v54 = v48;
      v55 = 2112;
      v56 = v31;
      v57 = 2112;
      v58 = v37;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Failed to copy file from %@ to %@ with error: %@", buf, 0x20u);
    }

LABEL_32:
    v37 = 0;
    goto LABEL_33;
  }

  v38 = NSSLogForType();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v54 = v48;
    v55 = 2112;
    v56 = v31;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Copied file from %@ to %@", buf, 0x16u);
  }

LABEL_33:
  v42 = [NSURL URLWithString:v31];

  return v42;
}

- (id)getActivePairedDevice
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v4 = [v2 getAllDevicesWithArchivedAltAccountDevicesMatching:v3];
  v5 = [v4 firstObject];

  return v5;
}

- (id)sendProtobuf:(id)a3 options:(id)a4 identifier:(id *)a5
{
  v7 = a3;
  v8 = a4;
  [(NSSServer *)self _resetIfTheActivePairedDeviceChanges];
  v9 = [[NSMutableDictionary alloc] initWithDictionary:v8];
  v10 = IDSSendMessageOptionTimeoutKey;
  v11 = [v8 objectForKeyedSubscript:IDSSendMessageOptionTimeoutKey];
  v12 = v11;
  if (!v11 || ([v11 doubleValue], v13 == 0.0))
  {
    v14 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
    [v9 setObject:v14 forKeyedSubscript:v10];
  }

  v15 = [v8 objectForKeyedSubscript:IDSSendMessageOptionPeerResponseIdentifierKey];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = 5;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = 6;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = 26;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = 33;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = 34;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = 29;
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v16 = 24;
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v16 = 25;
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v16 = 32;
                  }

                  else
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v16 = 31;
                    }

                    else
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v16 = 30;
                      }

                      else
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v16 = 35;
                        }

                        else
                        {
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v16 = 27;
                          }

                          else
                          {
                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v16 = 28;
                            }

                            else
                            {
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v16 = 0;
                              }

                              else
                              {
                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v16 = 9;
                                }

                                else
                                {
                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v16 = 10;
                                  }

                                  else
                                  {
                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v16 = 15;
                                    }

                                    else
                                    {
                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v16 = 16;
                                      }

                                      else
                                      {
                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v16 = 8;
                                        }

                                        else
                                        {
                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v16 = 20;
                                          }

                                          else
                                          {
                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              v16 = 21;
                                            }

                                            else
                                            {
                                              objc_opt_class();
                                              if (objc_opt_isKindOfClass())
                                              {
                                                v16 = 22;
                                              }

                                              else
                                              {
                                                objc_opt_class();
                                                if (objc_opt_isKindOfClass())
                                                {
                                                  v16 = 23;
                                                }

                                                else
                                                {
                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    v16 = 13;
                                                  }

                                                  else
                                                  {
                                                    objc_opt_class();
                                                    if (objc_opt_isKindOfClass())
                                                    {
                                                      v16 = 14;
                                                    }

                                                    else
                                                    {
                                                      objc_opt_class();
                                                      if (objc_opt_isKindOfClass())
                                                      {
                                                        v16 = 11;
                                                      }

                                                      else
                                                      {
                                                        objc_opt_class();
                                                        if (objc_opt_isKindOfClass())
                                                        {
                                                          v16 = 12;
                                                        }

                                                        else
                                                        {
                                                          objc_opt_class();
                                                          if (objc_opt_isKindOfClass())
                                                          {
                                                            v16 = 19;
                                                          }

                                                          else
                                                          {
                                                            objc_opt_class();
                                                            if (objc_opt_isKindOfClass())
                                                            {
                                                              v16 = 17;
                                                            }

                                                            else
                                                            {
                                                              objc_opt_class();
                                                              if (objc_opt_isKindOfClass())
                                                              {
                                                                v16 = 18;
                                                              }

                                                              else
                                                              {
                                                                objc_opt_class();
                                                                if (objc_opt_isKindOfClass())
                                                                {
                                                                  v16 = 7;
                                                                }

                                                                else
                                                                {
                                                                  objc_opt_class();
                                                                  if (objc_opt_isKindOfClass())
                                                                  {
                                                                    v16 = 3;
                                                                  }

                                                                  else
                                                                  {
                                                                    objc_opt_class();
                                                                    if (objc_opt_isKindOfClass())
                                                                    {
                                                                      v16 = 4;
                                                                    }

                                                                    else
                                                                    {
                                                                      objc_opt_class();
                                                                      if (objc_opt_isKindOfClass())
                                                                      {
                                                                        v16 = 1;
                                                                      }

                                                                      else
                                                                      {
                                                                        objc_opt_class();
                                                                        if (objc_opt_isKindOfClass())
                                                                        {
                                                                          v16 = 2;
                                                                        }

                                                                        else
                                                                        {
                                                                          objc_opt_class();
                                                                          if (objc_opt_isKindOfClass())
                                                                          {
                                                                            v16 = 36;
                                                                          }

                                                                          else
                                                                          {
                                                                            objc_opt_class();
                                                                            if (objc_opt_isKindOfClass())
                                                                            {
                                                                              v16 = 37;
                                                                            }

                                                                            else
                                                                            {
                                                                              objc_opt_class();
                                                                              if (objc_opt_isKindOfClass())
                                                                              {
                                                                                v16 = 38;
                                                                              }

                                                                              else
                                                                              {
                                                                                objc_opt_class();
                                                                                if (objc_opt_isKindOfClass())
                                                                                {
                                                                                  v16 = 39;
                                                                                }

                                                                                else
                                                                                {
                                                                                  objc_opt_class();
                                                                                  if (objc_opt_isKindOfClass())
                                                                                  {
                                                                                    v16 = 40;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    objc_opt_class();
                                                                                    if (objc_opt_isKindOfClass())
                                                                                    {
                                                                                      v16 = 41;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      objc_opt_class();
                                                                                      if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                      {
                                                                                        abort();
                                                                                      }

                                                                                      v16 = 42;
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v17 = v15 != 0;
  v18 = [v7 data];
  v19 = [[IDSProtobuf alloc] initWithProtobufData:v18 type:v16 isResponse:v17];
  v20 = [(NSSServer *)self idsService];
  v21 = [NSSet setWithObject:IDSDefaultPairedDevice];
  v33 = 0;
  v34 = 0;
  [v20 sendProtobuf:v19 toDestinations:v21 priority:300 options:v8 identifier:&v34 error:&v33];
  v22 = v34;
  v23 = v33;

  v24 = NSSLogForType();
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
  if (v23)
  {
    if (!v25)
    {
      goto LABEL_96;
    }

    v26 = [v18 length];
    *buf = 134218242;
    v36 = v26;
    v37 = 2112;
    v38 = v23;
    v27 = "Failed to send message of length (%lu) with error: (%@); ";
  }

  else
  {
    if (!v25)
    {
      goto LABEL_96;
    }

    v28 = [v18 length];
    *buf = 138412546;
    v36 = v22;
    v37 = 2048;
    v38 = v28;
    v27 = "sendProtobuf: success; identifier: (%@); length: (%lu)";
  }

  _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v27, buf, 0x16u);
LABEL_96:

  if (a5)
  {
    v29 = v22;
    *a5 = v22;
  }

  v30 = v23;

  return v23;
}

- (id)sendLogFileAtUrl:(id)a3 toDevice:(id)a4 withOptions:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!self->_fileTransferInProgress)
  {
    [(NSSServer *)self setFileTransferInProgress:1];
  }

  v11 = [(NSSServer *)self idsFileTransferService];
  v12 = [v8 relativePath];
  v13 = [NSDictionary dictionaryWithObject:v12 forKey:@"originalFilePath"];

  v23 = 0;
  v24 = 0;
  v14 = [v11 sendResourceAtURL:v8 metadata:v13 toDestinations:v9 priority:300 options:v10 identifier:&v24 error:&v23];
  v15 = v24;
  v16 = v23;
  v17 = NSSLogForType();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = @"failure";
    *buf = 138412802;
    if (v14)
    {
      v18 = @"success";
    }

    v26 = v18;
    v27 = 2112;
    v28 = v8;
    v29 = 2112;
    v30 = v15;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "result: %@ for file %@ with id: %@", buf, 0x20u);
  }

  if (v16)
  {
    v19 = NSSLogForType();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v16;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "error while sending resource error: %@", buf, 0xCu);
    }
  }

  else
  {
    v19 = [(NSSServer *)self logTranferIdentifiers];
    v20 = [v8 lastPathComponent];
    [v19 setObject:v20 forKey:v15];
  }

  v21 = v15;
  return v15;
}

- (BOOL)scheduleTimerForIdentifier:(id)a3 requests:(id)a4 timeout:(double)a5 timeoutHandler:(id)a6 timers:(id)a7 utilityName:(id)a8
{
  v14 = a3;
  v15 = a4;
  v29 = a6;
  v16 = a7;
  v17 = a8;
  if (v15)
  {
    v18 = [v15 objectForKey:v14];
    if (!v18)
    {
      v27 = 0;
      goto LABEL_9;
    }

    v19 = NSSLogForType();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      *&buf[4] = v14;
      *&buf[12] = 2112;
      *&buf[14] = v17;
      *&buf[22] = 2048;
      v40 = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Found replyBlock for identifier (%@) in container (%@): (%p)", buf, 0x20u);
    }
  }

  else
  {
    v18 = 0;
  }

  v20 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_idsQueue);
  v21 = dispatch_time(0, (a5 * 1000000000.0));
  dispatch_source_set_timer(v20, v21, 0xFFFFFFFFFFFFFFFFLL, 0);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10001A288;
  handler[3] = &unk_100035100;
  v22 = v14;
  v32 = v22;
  v33 = v17;
  v23 = v20;
  v34 = v23;
  v35 = v15;
  v24 = v16;
  v36 = v24;
  v38 = v29;
  v25 = v18;
  v37 = v25;
  dispatch_source_set_event_handler(v23, handler);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v40 = sub_10001A370;
  v41 = sub_10001A380;
  v26 = [NSString stringWithFormat:@"%s", "[NSSServer scheduleTimerForIdentifier:requests:timeout:timeoutHandler:timers:utilityName:]"];
  v42 = NSSOSTransactionCreate();

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10001A388;
  v30[3] = &unk_100035128;
  v30[4] = buf;
  dispatch_source_set_cancel_handler(v23, v30);
  [v24 setObject:v23 forKey:v22];
  dispatch_resume(v23);
  _Block_object_dispose(buf, 8);

  v27 = 1;
LABEL_9:

  return v27;
}

- (void)cancelTimerForIdentifier:(id)a3 timers:(id)a4 utilityName:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7 && v8)
  {
    v10 = [v8 objectForKey:v7];
    if (v10)
    {
      v11 = NSSLogForType();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412802;
        v13 = v7;
        v14 = 2112;
        v15 = v9;
        v16 = 2048;
        v17 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Found timerSource for identifier (%@) in container (%@): (%p)", &v12, 0x20u);
      }

      dispatch_source_cancel(v10);
      [v8 removeObjectForKey:v7];
    }
  }
}

- (void)cancelOrphanedFileTransfer:(id)a3
{
  v4 = a3;
  v5 = [(NSSServer *)self idsFileTransferService];
  v8 = 0;
  [v5 cancelIdentifier:v4 error:&v8];
  v6 = v8;
  v7 = NSSLogForType();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "IDS service is tranferring a file, but it was not ordered, cancelled identifier %@ with error: %@", buf, 0x16u);
  }
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 sentBytes:(int64_t)a6 totalBytes:(int64_t)a7
{
  v10 = a5;
  v11 = NSSLogForType();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(NSSServer *)self fileTransferInProgress];
    v13 = @"NO";
    *v20 = 138413058;
    *&v20[4] = v10;
    *&v20[12] = 2048;
    if (v12)
    {
      v13 = @"YES";
    }

    *&v20[14] = a6;
    v21 = 2048;
    v22 = a7;
    v23 = 2112;
    v24 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Delegate called for progress message %@ with sentBytes %ld and totalBytes %ld with file transfer in progress: %@", v20, 0x2Au);
  }

  v14 = [(NSSServer *)self logTranferIdentifiers];
  v15 = [v14 objectForKey:v10];

  if (v15)
  {
    v16 = [(NSSServer *)self logTranferIdentifiers];
    v17 = [v16 objectForKey:v10];

    if (a6 == a7)
    {
      v18 = [(NSSServer *)self logTranferIdentifiers];
      [v18 removeObjectForKey:v10];

      v19 = 100;
    }

    else
    {
      v19 = vcvtas_u32_f32((a6 / a7) * 100.0);
    }

    [(NSSServer *)self sendFileTransfer:v17 progress:v19, *v20];
  }

  else
  {
    [(NSSServer *)self cancelOrphanedFileTransfer:v10];
  }
}

- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 metadata:(id)a6 fromID:(id)a7 context:(id)a8
{
  v12 = a3;
  v13 = a5;
  v14 = a8;
  v15 = a6;
  v16 = NSSLogForType();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v14 incomingResponseIdentifier];
    *buf = 138412802;
    v24 = v13;
    v25 = 2112;
    v26 = v12;
    v27 = 2112;
    v28 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Delegate called for incoming resource at URL file downloaded to: %@ on service: %@ with identifier: %@", buf, 0x20u);
  }

  v22 = 0;
  v18 = [(NSSServer *)self linkFileForViewing:v13 metadata:v15 withError:&v22];

  v19 = v22;
  if (v19)
  {
    v20 = NSSLogForType();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v24 = v13;
      v25 = 2112;
      v26 = v19;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Error when linking file %@ with error: %@", buf, 0x16u);
    }
  }

  v21 = [v14 incomingResponseIdentifier];
  [(NSSServer *)self handleIncomingDiagnosticLogFile:v18 withContext:v21];
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 hasBeenDeliveredWithContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = NSSLogForType();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138413058;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    v19 = 2112;
    v20 = v12;
    v21 = 2112;
    v22 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "service: (%@), account: (%@), identifier: (%@), context: (%@)", &v15, 0x2Au);
  }

  [(NSSServer *)self messageIdentifier:v12 hasBeenDeliveredWithContext:v13];
}

- (BOOL)messageIdentifier:(id)a3 didSendWithSuccess:(BOOL)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(NSMutableDictionary *)self->_airplaneModeDeliveryTimers objectForKey:v8];

  if (!v10)
  {
    goto LABEL_12;
  }

  [(NSSServer *)self cancelTimerForIdentifier:v8 timers:self->_airplaneModeDeliveryTimers utilityName:@"airplane"];
  v11 = [(NSMutableDictionary *)self->_airplaneModeEnabledTracking objectForKey:v8];

  if (v11)
  {
    v12 = [(NSMutableDictionary *)self->_airplaneModeEnabledTracking objectForKey:v8];
    LOBYTE(v11) = [v12 BOOLValue];

    [(NSMutableDictionary *)self->_airplaneModeEnabledTracking removeObjectForKey:v8];
  }

  if (!v9)
  {
    goto LABEL_11;
  }

  v13 = [v9 domain];
  if (([v13 isEqualToString:IDSErrorDomain] & 1) == 0)
  {

    goto LABEL_11;
  }

  v14 = [v9 code];

  if (v14 != 24)
  {
LABEL_11:
    *&buf = 0;
    *(&buf + 1) = &buf;
    v26 = 0x3032000000;
    v27 = sub_10001A370;
    v28 = sub_10001A380;
    v16 = [NSString stringWithFormat:@"%s", "[NSSServer messageIdentifier:didSendWithSuccess:error:]"];
    v29 = NSSOSTransactionCreate();

    airplaneModeQueue = self->_airplaneModeQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001AEBC;
    block[3] = &unk_100035150;
    v23 = a4;
    block[4] = self;
    v24 = v11;
    v20 = v8;
    v21 = v9;
    p_buf = &buf;
    dispatch_async(airplaneModeQueue, block);

    _Block_object_dispose(&buf, 8);
    goto LABEL_12;
  }

  v15 = NSSLogForType();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v8;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Skipping handling of Airplane mode IDS mesasge as it got replaced (%@)", &buf, 0xCu);
  }

LABEL_12:
  return v10 != 0;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = NSSLogForType();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v14 = v5;
    v15 = 1024;
    v16 = [v5 processIdentifier];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "New connection (%p) received from process: (%d)", buf, 0x12u);
  }

  v7 = [(NSSServer *)self acceptConnection:v5];
  connectionHandlersQueue = self->_connectionHandlersQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001B15C;
  v11[3] = &unk_100035178;
  v11[4] = self;
  v12 = v7;
  v9 = v7;
  dispatch_barrier_sync(connectionHandlersQueue, v11);

  return 1;
}

- (void)connectionHandlerLostConnection:(id)a3
{
  v4 = a3;
  v5 = NSSLogForType();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 connection];
    *buf = 134217984;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Connection invalidated: (%p)", buf, 0xCu);
  }

  connectionHandlersQueue = self->_connectionHandlersQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001B2A0;
  v9[3] = &unk_100035178;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  dispatch_barrier_sync(connectionHandlersQueue, v9);
}

- (void)enableAirplaneMode:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = NSSLogForType();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_retainBlock(v6);
    *buf = 67109376;
    *&buf[4] = v4;
    LOWORD(v16) = 2048;
    *(&v16 + 2) = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Enabling Airplane Mode: (%d), completionHandler: (%p)", buf, 0x12u);
  }

  if (v6)
  {
    (*(v6 + 2))(v6, 0);
  }

  v9 = objc_opt_new();
  airplaneModeEnabledTracking = self->_airplaneModeEnabledTracking;
  self->_airplaneModeEnabledTracking = v9;

  *buf = 0;
  *&v16 = buf;
  *(&v16 + 1) = 0x3032000000;
  v17 = sub_10001A370;
  v18 = sub_10001A380;
  v11 = [NSString stringWithFormat:@"%s", "[NSSServer enableAirplaneMode:completionHandler:]"];
  v19 = NSSOSTransactionCreate();

  airplaneModeQueue = self->_airplaneModeQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B4B4;
  block[3] = &unk_1000351A0;
  v14 = v4;
  block[4] = self;
  block[5] = buf;
  dispatch_async(airplaneModeQueue, block);
  _Block_object_dispose(buf, 8);
}

- (void)askRemoteDeviceToPasscodeLockWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v9 = 0;
  v6 = [(NSSServer *)self sendMessage:v5 identifier:&v9 sendTimeout:0 wantsAcknowledgement:@"remote-passcode-lock" queueOneIdentifier:0 overBluetoothOnly:10.0];
  v7 = v9;

  v8 = NSSLogForType();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Asked remote device to passcode lock with send identifier: %@ and error: %@", buf, 0x16u);
  }

  v4[2](v4, v6 == 0, v6);
}

- (void)handleRemotePasscodeLockRequestMsg:(id)a3
{
  v3 = +[MCProfileConnection sharedConnection];
  [v3 lockDeviceImmediately:1];

  v4 = NSSLogForType();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Handle remote device passcode lock request!", v5, 2u);
  }
}

- (void)notifyRemoteDeviceOfUsageAfterSetup:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v9 = 0;
  v6 = [(NSSServer *)self sendMessage:v5 identifier:&v9 sendTimeout:0 wantsAcknowledgement:@"device-in-use" queueOneIdentifier:0 overBluetoothOnly:10.0];
  v7 = v9;

  v8 = NSSLogForType();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Asked remote device to notify of use: %@ and error: %@", buf, 0x16u);
  }

  v4[2](v4, v6 == 0, v6);
}

- (void)handleNotifyRemoteDeviceOfUsageAfterSetupRequestMsg:(id)a3
{
  v4 = a3;
  v5 = NSSLogForType();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handle notify remote device of usage after setup request!", buf, 2u);
  }

  v6 = [(NSSServer *)self endBridgeLiveActivity];
  v7 = NSSLogForType();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Did end Bridge Live Activity? %{BOOL}d", buf, 8u);
  }

  v8 = [v4 context];

  v9 = [v8 fromID];
  v15[1] = @"date";
  v16[0] = v9;
  v10 = +[NSDate date];
  [v10 timeIntervalSince1970];
  v11 = [NSNumber numberWithDouble:?];
  v16[1] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];

  v13 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.Bridge"];
  [v13 setObject:v12 forKey:@"COSWatchReportedUseAfterSetup"];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.nanosystemsettings.WatchReportedUsedOnAfterSetup", 0, 0, 1u);
}

- (BOOL)mirroringAirplaneMode
{
  v2 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.nano"];
  v3 = [v2 synchronize];
  v7 = 0;
  v4 = [v2 BOOLForKey:@"mirror-airplane" keyExistsAndHasValidFormat:&v7];
  v5 = v7 & v4;

  return v5 & 1;
}

- (void)handleAirplaneModeMsg:(id)a3
{
  v4 = a3;
  v5 = [v4 context];
  v6 = [v5 outgoingResponseIdentifier];

  v7 = NSSLogForType();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = v4;
    *&buf[12] = 2112;
    *&buf[14] = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "idsProtobuf: (%p); outgoingResponseIdentifier: (%@)", buf, 0x16u);
  }

  if ([(NSSServer *)self mirroringAirplaneMode])
  {
    v8 = objc_opt_new();
    v9 = [PBDataReader alloc];
    v10 = [v4 data];
    v11 = [v9 initWithData:v10];

    v12 = NSSAirplaneModeMsgReadFrom();
    v13 = NSSLogForType();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (v14)
      {
        v15 = [v8 enabled];
        *buf = 67109120;
        *&buf[4] = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received Airplane Mode request (%d)", buf, 8u);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v23 = sub_10001A370;
      v24 = sub_10001A380;
      v16 = [NSString stringWithFormat:@"%s", "[NSSServer handleAirplaneModeMsg:]"];
      v25 = NSSOSTransactionCreate();

      v17 = dispatch_time(0, 1000000000);
      airplaneModeQueue = self->_airplaneModeQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001C2F8;
      block[3] = &unk_100035218;
      block[4] = self;
      v20 = v8;
      v21 = buf;
      dispatch_after(v17, airplaneModeQueue, block);

      _Block_object_dispose(buf, 8);
    }

    else
    {
      if (v14)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Could not parse incoming protobuf", buf, 2u);
      }
    }
  }

  else
  {
    v8 = NSSLogForType();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Ignoring Airplane Mode Mirroring request since local setting is to not mirror it", buf, 2u);
    }
  }
}

+ (double)mirrorAirplaneSendTimeout
{
  keyExistsAndHasValidFormat = 0;
  CFPreferencesAppSynchronize(@"com.apple.nanosystemsettings");
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"mirror-airplane-timout", @"com.apple.nanosystemsettings", &keyExistsAndHasValidFormat);
  v3 = AppIntegerValue < 0 || keyExistsAndHasValidFormat == 0;
  result = AppIntegerValue;
  if (v3)
  {
    return 10.0;
  }

  return result;
}

- (void)sendFileTransfer:(id)a3 progress:(unint64_t)a4
{
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setPath:v6];
  [v7 setProgress:a4];
  v11 = 0;
  v8 = [(NSSServer *)self sendProtobuf:v7 options:0 identifier:&v11];
  v9 = v11;
  v10 = NSSLogForType();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v13 = v6;
    v14 = 2048;
    v15 = a4;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Sent file transfer progress message for file: %@ with progress: %lu with id: %@", buf, 0x20u);
  }
}

@end