@interface ICRemoteCameraDevice
- (BOOL)evaulateCommonTCC:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (ICRemoteCameraDevice)initWithDeviceContext:(id)a3;
- (NSArray)allConnections;
- (id)delegate;
- (void)addInitiatedOperation:(id)a3;
- (void)addInteractiveOperation:(id)a3;
- (void)dealloc;
- (void)holdPowerAssertion;
- (void)registerInterestedEventNotifications:(id)a3;
- (void)releasePowerAssertion;
- (void)removeAllSessions;
- (void)removeSessionsWithProcessIdentifier:(id)a3;
- (void)sendNotification:(id)a3 toConnections:(id)a4 selector:(SEL)a5;
- (void)sendPTPEventNotification:(id)a3;
- (void)startListening;
- (void)unregisterInterestedEventNotifications:(id)a3;
@end

@implementation ICRemoteCameraDevice

- (ICRemoteCameraDevice)initWithDeviceContext:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = ICRemoteCameraDevice;
  v5 = [(ICRemoteCameraDevice *)&v26 init];
  if (v5)
  {
    v6 = [[ICSessionManager alloc] initWithDelegate:v5];
    sessionManager = v5->_sessionManager;
    v5->_sessionManager = v6;

    v8 = objc_alloc_init(MEMORY[0x29EDB8E00]);
    cameraDictionary = v5->_cameraDictionary;
    v5->_cameraDictionary = v8;

    v10 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    deniedBundles = v5->_deniedBundles;
    v5->_deniedBundles = v10;

    v12 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    addedBundles = v5->_addedBundles;
    v5->_addedBundles = v12;

    v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v15 = MEMORY[0x29EDBA0F8];
    v16 = [v4 objectForKeyedSubscript:@"ICDeviceName"];
    v17 = [v15 stringWithFormat:@"%@:%@", @"ICDeviceUnderlyingQueue", v16];
    v18 = dispatch_queue_create([v17 UTF8String], v14);
    deviceOperationUnderlyingQueue = v5->_deviceOperationUnderlyingQueue;
    v5->_deviceOperationUnderlyingQueue = v18;

    v20 = objc_alloc_init(MEMORY[0x29EDBA088]);
    deviceOperationQueue = v5->_deviceOperationQueue;
    v5->_deviceOperationQueue = v20;

    [(NSOperationQueue *)v5->_deviceOperationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v5->_deviceOperationQueue setQualityOfService:25];
    v22 = MEMORY[0x29EDBA0F8];
    v23 = [v4 objectForKeyedSubscript:@"ICDeviceName"];
    v24 = [v22 stringWithFormat:@"%@:%@", @"ICDeviceOperationQueue", v23];
    [(NSOperationQueue *)v5->_deviceOperationQueue setName:v24];

    [(NSOperationQueue *)v5->_deviceOperationQueue setUnderlyingQueue:v5->_deviceOperationUnderlyingQueue];
  }

  return v5;
}

- (void)dealloc
{
  objc_storeWeak(&self->_delegate, 0);
  v3.receiver = self;
  v3.super_class = ICRemoteCameraDevice;
  [(ICRemoteCameraDevice *)&v3 dealloc];
}

- (void)startListening
{
  v3 = [MEMORY[0x29EDBA180] anonymousListener];
  [(ICRemoteCameraDevice *)self setListener:v3];

  v4 = [(ICRemoteCameraDevice *)self listener];
  [v4 setDelegate:self];

  v5 = [(ICRemoteCameraDevice *)self listener];
  [v5 resume];
}

- (BOOL)evaulateCommonTCC:(id)a3
{
  v4 = a3;
  v5 = v4;
  memset(&error[1], 0, 32);
  if (v4)
  {
    [v4 auditToken];
  }

  error[0] = 0;
  v6 = [v5 processIdentifier];
  token = *&error[1];
  v7 = SecTaskCreateWithAuditToken(0, &token);
  v8 = SecTaskCopySigningIdentifier(v7, error);
  v9 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@-%d", v8, v6];
  if (v7)
  {
    CFRelease(v7);
  }

  v10 = +[ICDeviceAccessManager sharedAccessManager];
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = [(ICRemoteCameraDevice *)self addedBundles];
  v12 = [v11 containsObject:v9];

  if (v12 & 1) != 0 || (-[ICRemoteCameraDevice deniedBundles](self, "deniedBundles"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 containsObject:v9], v13, (v14))
  {
LABEL_8:
    v15 = 0;
  }

  else
  {
    v15 = [v10 bundleIdentifier:v8 stateForAccessType:@"read_access"] == 2;
    if (v15)
    {
      [(ICRemoteCameraDevice *)self addedBundles];
    }

    else
    {
      [(ICRemoteCameraDevice *)self deniedBundles];
    }
    v17 = ;
    [v17 addObject:v9];
  }

  return v15;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v24 = *MEMORY[0x29EDCA608];
  v5 = a4;
  if ([(ICRemoteCameraDevice *)self acceptConnection:v5])
  {
    v6 = [MEMORY[0x29EDBA178] interfaceWithProtocol:&unk_2A254E248];
    v7 = [MEMORY[0x29EDBA178] interfaceWithProtocol:&unk_2A254E248];
    [(ICRemoteCameraDevice *)self addSelectorToInterface:v6 selectorString:@"imageCaptureEventNotification:completion:" origin:1];
    [(ICRemoteCameraDevice *)self addSelectorToInterface:v6 selectorString:@"postNotification:" origin:0];
    [(ICRemoteCameraDevice *)self addSelectorToInterface:v6 selectorString:@"notifyAddedItems:" origin:0];
    [(ICRemoteCameraDevice *)self addSelectorToInterface:v6 selectorString:@"notifyRemovedItems:" origin:0];
    [(ICRemoteCameraDevice *)self addSelectorToInterface:v6 selectorString:@"notifyUpdatedItems:" origin:0];
    [(ICRemoteCameraDevice *)self addSelectorToInterface:v6 selectorString:@"notifyStatus:" origin:0];
    [(ICRemoteCameraDevice *)self addSelectorToInterface:v6 selectorString:@"notifyPtpEvent:" origin:0];
    [(ICRemoteCameraDevice *)self addSelectorToInterface:v6 selectorString:@"registerInterestedEventNotifications:" origin:0];
    [(ICRemoteCameraDevice *)self addSelectorToInterface:v6 selectorString:@"unregisterInterestedEventNotifications:" origin:0];
    [(ICRemoteCameraDevice *)self addSelectorToInterface:v6 selectorString:@"requestThumbnailDataForObjectHandle:options:withReply:" origin:1];
    [(ICRemoteCameraDevice *)self addSelectorToInterface:v6 selectorString:@"requestMetadataForObjectHandle:options:withReply:" origin:1];
    [(ICRemoteCameraDevice *)self addSelectorToInterface:v6 selectorString:@"requestDownloadObjectHandle:options:withReply:" origin:1];
    [(ICRemoteCameraDevice *)self addSelectorToInterface:v6 selectorString:@"requestDeleteObjectHandle:options:withReply:" origin:1];
    [(ICRemoteCameraDevice *)self addSelectorToInterface:v6 selectorString:@"requestReadDataFromObjectHandle:options:withReply:" origin:1];
    [(ICRemoteCameraDevice *)self addSelectorToInterface:v6 selectorString:@"requestSecurityScopedURLForObjectHandle:withReply:" origin:1];
    [(ICRemoteCameraDevice *)self addSelectorToInterface:v6 selectorString:@"requestFingerprintForObjectHandle:withReply:" origin:1];
    [(ICRemoteCameraDevice *)self addSelectorToInterface:v6 selectorString:@"requestRefreshObjectHandleInfo:withReply:" origin:1];
    [(ICRemoteCameraDevice *)self addSelectorToInterface:v7 selectorString:@"imageCaptureEventNotification:completion:" origin:1];
    [(ICRemoteCameraDevice *)self addSelectorToInterface:v7 selectorString:@"postNotification:" origin:0];
    [(ICRemoteCameraDevice *)self addSelectorToInterface:v7 selectorString:@"notifyAddedItems:" origin:0];
    [(ICRemoteCameraDevice *)self addSelectorToInterface:v7 selectorString:@"notifyRemovedItems:" origin:0];
    [(ICRemoteCameraDevice *)self addSelectorToInterface:v7 selectorString:@"notifyUpdatedItems:" origin:0];
    [(ICRemoteCameraDevice *)self addSelectorToInterface:v7 selectorString:@"notifyStatus:" origin:0];
    [(ICRemoteCameraDevice *)self addSelectorToInterface:v7 selectorString:@"notifyPtpEvent:" origin:0];
    [(ICRemoteCameraDevice *)self addSelectorToInterface:v7 selectorString:@"registerInterestedEventNotifications:" origin:0];
    [(ICRemoteCameraDevice *)self addSelectorToInterface:v7 selectorString:@"unregisterInterestedEventNotifications:" origin:0];
    [(ICRemoteCameraDevice *)self addSelectorToInterface:v7 selectorString:@"requestThumbnailDataForObjectHandle:options:withReply:" origin:1];
    [(ICRemoteCameraDevice *)self addSelectorToInterface:v7 selectorString:@"requestMetadataForObjectHandle:options:withReply:" origin:1];
    [(ICRemoteCameraDevice *)self addSelectorToInterface:v7 selectorString:@"requestDownloadObjectHandle:options:withReply:" origin:1];
    [(ICRemoteCameraDevice *)self addSelectorToInterface:v7 selectorString:@"requestDeleteObjectHandle:options:withReply:" origin:1];
    [(ICRemoteCameraDevice *)self addSelectorToInterface:v7 selectorString:@"requestReadDataFromObjectHandle:options:withReply:" origin:1];
    [(ICRemoteCameraDevice *)self addSelectorToInterface:v7 selectorString:@"requestSecurityScopedURLForObjectHandle:withReply:" origin:1];
    [(ICRemoteCameraDevice *)self addSelectorToInterface:v7 selectorString:@"requestFingerprintForObjectHandle:withReply:" origin:1];
    [(ICRemoteCameraDevice *)self addSelectorToInterface:v7 selectorString:@"requestRefreshObjectHandleInfo:withReply:" origin:1];
    [v5 setExportedInterface:v6];
    [v5 setRemoteObjectInterface:v7];
    [v5 setExportedObject:self];
    __ICOSLogCreate();
    v8 = @"sessionManager";
    if ([@"sessionManager" length] >= 0x15)
    {
      v9 = [@"sessionManager" substringWithRange:{0, 18}];
      v8 = [v9 stringByAppendingString:@".."];
    }

    v10 = MEMORY[0x29EDBA0F8];
    v11 = [(ICRemoteCameraDevice *)self sessionManager];
    v12 = [v10 stringWithFormat:@"%@", v11];

    v13 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v8;
      v15 = v13;
      *buf = 136446466;
      v21 = [(__CFString *)v8 UTF8String];
      v22 = 2114;
      v23 = v12;
      _os_log_impl(&dword_29EB58000, v15, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    v16 = [(ICRemoteCameraDevice *)self sessionManager];
    v17 = [v16 createSessionWithConnection:v5];

    if (v17)
    {
      [v5 resume];
    }
  }

  else
  {
    LOBYTE(v17) = 0;
  }

  v18 = *MEMORY[0x29EDCA608];
  return v17;
}

uint64_t __69__ICRemoteCameraDevice_addSelectorToInterface_selectorString_origin___block_invoke()
{
  v13 = objc_alloc(MEMORY[0x29EDB8E50]);
  v12 = objc_opt_class();
  v11 = objc_opt_class();
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  addSelectorToInterface_selectorString_origin__incomingClasses = [v13 initWithObjects:{v12, v11, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];

  return MEMORY[0x2A1C71028]();
}

- (void)removeAllSessions
{
  v2 = [(ICRemoteCameraDevice *)self sessionManager];
  [v2 removeAllSessions];
}

- (void)removeSessionsWithProcessIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(ICRemoteCameraDevice *)self sessionManager];
  [v5 removeSessionsWithProcessIdentifier:v4];
}

- (NSArray)allConnections
{
  v2 = [(ICRemoteCameraDevice *)self sessionManager];
  v3 = [v2 connections];

  return v3;
}

- (void)addInitiatedOperation:(id)a3
{
  v6 = a3;
  v4 = [(ICRemoteCameraDevice *)self deviceOperationQueue];

  if (v4)
  {
    [v6 setQueuePriority:0];
    [v6 setQualityOfService:25];
    v5 = [(ICRemoteCameraDevice *)self deviceOperationQueue];
    [v5 addOperation:v6];
  }
}

- (void)addInteractiveOperation:(id)a3
{
  v6 = a3;
  v4 = [(ICRemoteCameraDevice *)self deviceOperationQueue];

  if (v4)
  {
    [v6 setQueuePriority:4];
    [v6 setQualityOfService:33];
    v5 = [(ICRemoteCameraDevice *)self deviceOperationQueue];
    [v5 addOperation:v6];
  }
}

- (void)holdPowerAssertion
{
  if (!self->_cpPowerAssertion)
  {
    v4 = MEMORY[0x29EDBA0F8];
    v6 = [(ICRemoteCameraDevice *)self cameraDictionary];
    v5 = [v6 objectForKeyedSubscript:@"ICDeviceName"];
    [v4 stringWithFormat:@"com.apple.mscamerad-xpc+%@", v5];
    self->_cpPowerAssertion = CPPowerAssertionCreate();
  }
}

- (void)releasePowerAssertion
{
  cpPowerAssertion = self->_cpPowerAssertion;
  if (cpPowerAssertion)
  {
    CFRelease(cpPowerAssertion);
    self->_cpPowerAssertion = 0;
  }
}

- (void)registerInterestedEventNotifications:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x29EDB9F40];
  v8 = MEMORY[0x29EDCA5F8];
  v9 = 3221225472;
  v10 = __61__ICRemoteCameraDevice_registerInterestedEventNotifications___block_invoke;
  v11 = &unk_29F380BD8;
  v12 = self;
  v13 = v4;
  v6 = v4;
  v7 = [v5 blockOperationWithBlock:&v8];
  [(ICRemoteCameraDevice *)self addInteractiveOperation:v7, v8, v9, v10, v11, v12];
}

void __61__ICRemoteCameraDevice_registerInterestedEventNotifications___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) sessionManager];
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x29EDBA170] currentConnection];
  [v4 addNotifications:v2 toSessionWithConnection:v3];
}

- (void)unregisterInterestedEventNotifications:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x29EDB9F40];
  v8 = MEMORY[0x29EDCA5F8];
  v9 = 3221225472;
  v10 = __63__ICRemoteCameraDevice_unregisterInterestedEventNotifications___block_invoke;
  v11 = &unk_29F380BD8;
  v12 = self;
  v13 = v4;
  v6 = v4;
  v7 = [v5 blockOperationWithBlock:&v8];
  [(ICRemoteCameraDevice *)self addInteractiveOperation:v7, v8, v9, v10, v11, v12];
}

void __63__ICRemoteCameraDevice_unregisterInterestedEventNotifications___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) sessionManager];
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x29EDBA170] currentConnection];
  [v4 remNotifications:v2 fromSessionWithConnection:v3];
}

- (void)sendPTPEventNotification:(id)a3
{
  v4 = a3;
  v5 = [(ICRemoteCameraDevice *)self sessionManager];
  v6 = [v5 connectionsMonitoringNotification:@"ICNotificationTypeDeviceForwardPTPEvents"];

  [(ICRemoteCameraDevice *)self sendNotification:v4 toConnections:v6 selector:sel_notifyPtpEvent_];
}

- (void)sendNotification:(id)a3 toConnections:(id)a4 selector:(SEL)a5
{
  v43 = *MEMORY[0x29EDCA608];
  v8 = a3;
  v9 = a4;
  v10 = v8;
  v11 = v9;
  v33 = v10;
  if (!a5)
  {
    v12 = [v10 mutableCopy];
    a5 = NSSelectorFromString(&cfstr_Postnotificati.isa);
    v13 = [(ICRemoteCameraDevice *)self internalUUID];
    v33 = v12;
    [v12 setObject:v13 forKeyedSubscript:@"ICInternalDeviceUUID"];
  }

  v31 = v10;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v11;
  v14 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v35;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v35 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v34 + 1) + 8 * i);
        v19 = [v18 remoteObjectProxyWithErrorHandler:&__block_literal_global_155];
        __ICOSLogCreate();
        if (__ICLogTypeEnabled(4))
        {
          v20 = @"sendNote";
          if ([@"sendNote" length] >= 0x15)
          {
            v21 = [@"sendNote" substringWithRange:{0, 18}];
            v20 = [v21 stringByAppendingString:@".."];
          }

          v22 = MEMORY[0x29EDBA0F8];
          v23 = [v18 processIdentifier];
          v24 = NSStringFromSelector(a5);
          v25 = [v22 stringWithFormat:@"[%05d] --> %@", v23, v24];

          v26 = _gICOSLog;
          if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
          {
            v27 = v20;
            v28 = v26;
            v29 = [(__CFString *)v20 UTF8String];
            *buf = 136446466;
            v39 = v29;
            v40 = 2114;
            v41 = v25;
            _os_log_impl(&dword_29EB58000, v28, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
          }
        }

        [v19 performSelector:a5 withObject:v33];
      }

      v15 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v15);
  }

  v30 = *MEMORY[0x29EDCA608];
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end