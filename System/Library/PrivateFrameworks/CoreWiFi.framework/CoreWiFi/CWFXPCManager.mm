@interface CWFXPCManager
- (CWFXPCManager)init;
- (CWFXPCManager)initWithServiceTypes:(id)types;
- (id)__wifiNetworkSharingAppXPCConnectionWithBundleID:(id)d;
- (id)__wifiNetworkSharingAppexXPCConnections;
- (id)__wifiNetworkSharingUIServiceXPCConnection;
- (id)__wifiUserAgentXPCConnection;
- (id)endpointWithServiceType:(int64_t)type;
- (id)localXPCClientWithServiceType:(int64_t)type;
- (id)registeredActivities;
- (id)registeredEventIDs;
- (void)XPCListener:(id)listener XPCConnection:(id)connection completedXPCRequest:(id)request;
- (void)XPCListener:(id)listener XPCConnection:(id)connection receivedXPCRequest:(id)request;
- (void)XPCListener:(id)listener XPCConnection:(id)connection updatedRegisteredEventIDs:(id)ds;
- (void)XPCRequestProxy:(id)proxy XPCConnection:(id)connection canceledXPCRequestsWithUUID:(id)d;
- (void)XPCRequestProxy:(id)proxy XPCConnection:(id)connection receivedXPCRequest:(id)request;
- (void)XPCRequestProxy:(id)proxy invalidatedXPCConnection:(id)connection;
- (void)XPCRequestProxy:(id)proxy sendXPCEvent:(id)event reply:(id)reply;
- (void)__checkKeybagLockStatus;
- (void)__startMonitoringKeybagLockStatus;
- (void)__stopMonitoringKeybagLockStatus;
- (void)__updateProcessMonitorConfiguration;
- (void)__updateProcessStateForXPCConnection:(id)connection;
- (void)activate;
- (void)invalidate;
- (void)resume;
- (void)setAssociatedNetwork:(id)network;
- (void)setLocation:(id)location;
- (void)suspend;
@end

@implementation CWFXPCManager

- (id)registeredActivities
{
  array = [MEMORY[0x1E695DF70] array];
  mutexQueue = self->_mutexQueue;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = sub_1E0BC0E1C;
  v11 = &unk_1E86E6420;
  selfCopy = self;
  v13 = array;
  v5 = array;
  dispatch_sync(mutexQueue, &v8);
  v6 = [v5 copy];

  return v6;
}

- (id)registeredEventIDs
{
  v3 = objc_alloc_init(MEMORY[0x1E696AB50]);
  mutexQueue = self->_mutexQueue;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = sub_1E0BCAFF0;
  v11 = &unk_1E86E6420;
  selfCopy = self;
  v13 = v3;
  v5 = v3;
  dispatch_sync(mutexQueue, &v8);
  v6 = [v5 copy];

  return v6;
}

- (void)__updateProcessMonitorConfiguration
{
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0BCA4D0;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_async(mutexQueue, block);
}

- (CWFXPCManager)initWithServiceTypes:(id)types
{
  v48 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  v46.receiver = self;
  v46.super_class = CWFXPCManager;
  v5 = [(CWFXPCManager *)&v46 init];
  if (!v5)
  {
    goto LABEL_26;
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v29 = CWFGetOSLog();
    if (v29)
    {
      v19 = CWFGetOSLog();
    }

    else
    {
      v19 = MEMORY[0x1E69E9C10];
      v30 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_send_and_compose_impl();
    }

LABEL_25:

    goto LABEL_26;
  }

  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_create("com.apple.corewifi.XPC-manager-mutex", v6);
  mutexQueue = v5->_mutexQueue;
  v5->_mutexQueue = v7;

  if (!v5->_mutexQueue)
  {
    goto LABEL_26;
  }

  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  mutableXPCListeners = v5->_mutableXPCListeners;
  v5->_mutableXPCListeners = v9;

  if (!v5->_mutableXPCListeners)
  {
    goto LABEL_26;
  }

  v11 = objc_alloc_init(CWFXPCRequestProxy);
  XPCRequestProxy = v5->_XPCRequestProxy;
  v5->_XPCRequestProxy = v11;

  if (!v5->_XPCRequestProxy)
  {
    goto LABEL_26;
  }

  if (objc_opt_class())
  {
    monitor = [MEMORY[0x1E69C75F8] monitor];
    processMonitor = v5->_processMonitor;
    v5->_processMonitor = monitor;

    if (!v5->_processMonitor)
    {
      goto LABEL_26;
    }

    v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    processMonitorPIDs = v5->_processMonitorPIDs;
    v5->_processMonitorPIDs = v15;

    if (!v5->_processMonitorPIDs)
    {
      goto LABEL_26;
    }

    v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    processMonitorBundleIDs = v5->_processMonitorBundleIDs;
    v5->_processMonitorBundleIDs = v17;

    if (!v5->_processMonitorBundleIDs)
    {
      goto LABEL_26;
    }
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v19 = typesCopy;
  v20 = [v19 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v20)
  {
    v21 = *v43;
LABEL_12:
    v22 = 0;
    while (1)
    {
      if (*v43 != v21)
      {
        objc_enumerationMutation(v19);
      }

      v23 = -[CWFXPCListener initWithServiceType:]([CWFXPCListener alloc], "initWithServiceType:", [*(*(&v42 + 1) + 8 * v22) integerValue]);
      v24 = v23;
      if (!v23)
      {
        goto LABEL_25;
      }

      [(CWFXPCListener *)v23 setDelegate:v5];
      [(NSMutableArray *)v5->_mutableXPCListeners addObject:v24];

      if (v20 == ++v22)
      {
        v20 = [v19 countByEnumeratingWithState:&v42 objects:v47 count:16];
        if (v20)
        {
          goto LABEL_12;
        }

        break;
      }
    }
  }

  v25 = [CWFWiFiUserAgent alloc];
  v26 = [(CWFXPCManager *)v5 localXPCClientWithServiceType:8];
  v27 = [(CWFWiFiUserAgent *)v25 initWithXPCClient:v26 requestParameters:0];
  wifiUserAgent = v5->_wifiUserAgent;
  v5->_wifiUserAgent = v27;

  if (!v5->_wifiUserAgent)
  {
LABEL_26:

    v5 = 0;
    goto LABEL_27;
  }

  objc_initWeak(location, v5);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = sub_1E0C578FC;
  v39[3] = &unk_1E86E70E8;
  objc_copyWeak(&v40, location);
  [(CWFXPCRequestProxy *)v5->_XPCRequestProxy setWifiUserAgentConnection:v39];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = sub_1E0C57980;
  v37[3] = &unk_1E86E70E8;
  objc_copyWeak(&v38, location);
  [(CWFXPCRequestProxy *)v5->_XPCRequestProxy setWifiNetworkSharingUIServiceXPCConnection:v37];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = sub_1E0C57A04;
  v35[3] = &unk_1E86E7110;
  objc_copyWeak(&v36, location);
  [(CWFXPCRequestProxy *)v5->_XPCRequestProxy setWifiNetworkSharingAppexXPCConnections:v35];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = sub_1E0C57A88;
  v33[3] = &unk_1E86E7138;
  objc_copyWeak(&v34, location);
  [(CWFXPCRequestProxy *)v5->_XPCRequestProxy setWifiNetworkSharingAppXPCConnection:v33];
  objc_destroyWeak(&v34);
  objc_destroyWeak(&v36);
  objc_destroyWeak(&v38);
  objc_destroyWeak(&v40);
  objc_destroyWeak(location);
LABEL_27:

  v31 = *MEMORY[0x1E69E9840];
  return v5;
}

- (CWFXPCManager)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"-[CWFXPCManager init] unavailable" userInfo:0];
  objc_exception_throw(v2);
}

- (void)resume
{
  [(CWFXPCRequestProxy *)self->_XPCRequestProxy resume];
  [(CWFInterface *)self->_wifiUserAgent resume];
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C57C08;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_sync(mutexQueue, block);
}

- (void)suspend
{
  [(CWFXPCRequestProxy *)self->_XPCRequestProxy suspend];
  [(CWFInterface *)self->_wifiUserAgent suspend];
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C57D98;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_sync(mutexQueue, block);
}

- (void)__checkKeybagLockStatus
{
  if (MKBUserUnlockedSinceBoot())
  {
    v3 = CWFGetOSLog();
    if (v3)
    {
      v4 = CWFGetOSLog();
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

    [(CWFWiFiUserAgent *)self->_wifiUserAgent activate];
    [(CWFXPCManager *)self __stopMonitoringKeybagLockStatus];
  }
}

- (void)__startMonitoringKeybagLockStatus
{
  mutexQueue = self->_mutexQueue;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_1E0C58088;
  handler[3] = &unk_1E86E60B0;
  handler[4] = self;
  notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &self->_notifyKeybagLockStatusToken, mutexQueue, handler);
  v4 = CWFGetOSLog();
  if (v4)
  {
    v5 = CWFGetOSLog();
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    _os_log_send_and_compose_impl();
  }

  [(CWFXPCManager *)self __checkKeybagLockStatus];
}

- (void)__stopMonitoringKeybagLockStatus
{
  notifyKeybagLockStatusToken = self->_notifyKeybagLockStatusToken;
  if (notifyKeybagLockStatusToken)
  {
    notify_cancel(notifyKeybagLockStatusToken);
    v3 = CWFGetOSLog();
    if (v3)
    {
      v4 = CWFGetOSLog();
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
  }
}

- (void)activate
{
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C58270;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_sync(mutexQueue, block);
}

- (void)invalidate
{
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C586A8;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_sync(mutexQueue, block);
}

- (id)__wifiUserAgentXPCConnection
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1E0BC2D40;
  v14 = sub_1E0BC61DC;
  v15 = 0;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C589BC;
  block[3] = &unk_1E86E6A28;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(mutexQueue, block);
  v3 = v11[5];
  if (!v3)
  {
    v4 = CWFGetOSLog();
    if (v4)
    {
      v5 = CWFGetOSLog();
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _os_log_send_and_compose_impl();
    }

    v3 = v11[5];
  }

  v7 = v3;
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (id)__wifiNetworkSharingUIServiceXPCConnection
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1E0BC2D40;
  v14 = sub_1E0BC61DC;
  v15 = 0;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C58D34;
  block[3] = &unk_1E86E6A28;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(mutexQueue, block);
  v3 = v11[5];
  if (!v3)
  {
    v4 = CWFGetOSLog();
    if (v4)
    {
      v5 = CWFGetOSLog();
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _os_log_send_and_compose_impl();
    }

    v3 = v11[5];
  }

  v7 = v3;
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (id)__wifiNetworkSharingAppexXPCConnections
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1E0BC2D40;
  v14 = sub_1E0BC61DC;
  v15 = 0;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C590AC;
  block[3] = &unk_1E86E6A28;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(mutexQueue, block);
  v3 = v11[5];
  if (!v3)
  {
    v4 = CWFGetOSLog();
    if (v4)
    {
      v5 = CWFGetOSLog();
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _os_log_send_and_compose_impl();
    }

    v3 = v11[5];
  }

  v7 = v3;
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (id)__wifiNetworkSharingAppXPCConnectionWithBundleID:(id)d
{
  v26 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1E0BC2D40;
  v22 = sub_1E0BC61DC;
  v23 = 0;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C59400;
  block[3] = &unk_1E86E7188;
  block[4] = self;
  v6 = dCopy;
  v16 = v6;
  v17 = &v18;
  dispatch_sync(mutexQueue, block);

  v7 = v19[5];
  if (!v7)
  {
    v8 = CWFGetOSLog();
    if (v8)
    {
      v9 = CWFGetOSLog();
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      redactedForWiFi = [v6 redactedForWiFi];
      v24 = 138543362;
      v25 = redactedForWiFi;
      _os_log_send_and_compose_impl();
    }

    v7 = v19[5];
  }

  v12 = v7;
  _Block_object_dispose(&v18, 8);

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)localXPCClientWithServiceType:(int64_t)type
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1E0BC2D40;
  v11 = sub_1E0BC61DC;
  v12 = 0;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C59754;
  block[3] = &unk_1E86E71B0;
  block[5] = &v7;
  block[6] = type;
  block[4] = self;
  dispatch_sync(mutexQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)endpointWithServiceType:(int64_t)type
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1E0BC2D40;
  v11 = sub_1E0BC61DC;
  v12 = 0;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C59988;
  block[3] = &unk_1E86E71B0;
  block[5] = &v7;
  block[6] = type;
  block[4] = self;
  dispatch_sync(mutexQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setLocation:(id)location
{
  XPCRequestProxy = self->_XPCRequestProxy;
  locationCopy = location;
  [(CWFXPCRequestProxy *)XPCRequestProxy setLocation:locationCopy];
  autoJoinManagerCached = [(CWFXPCManager *)self autoJoinManagerCached];
  [autoJoinManagerCached setLocation:locationCopy];

  wifiNetworkSharingManager = [(CWFXPCManager *)self wifiNetworkSharingManager];
  [wifiNetworkSharingManager setLocation:locationCopy];
}

- (void)setAssociatedNetwork:(id)network
{
  XPCRequestProxy = self->_XPCRequestProxy;
  networkCopy = network;
  [(CWFXPCRequestProxy *)XPCRequestProxy setAssociatedNetwork:networkCopy];
  autoJoinManagerCached = [(CWFXPCManager *)self autoJoinManagerCached];
  [autoJoinManagerCached setAssociatedNetwork:networkCopy];

  wifiNetworkSharingManager = [(CWFXPCManager *)self wifiNetworkSharingManager];
  [wifiNetworkSharingManager setAssociatedNetwork:networkCopy];
}

- (void)__updateProcessStateForXPCConnection:(id)connection
{
  connectionCopy = connection;
  mutexQueue = self->_mutexQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0C59CC8;
  v7[3] = &unk_1E86E6420;
  v8 = connectionCopy;
  selfCopy = self;
  v6 = connectionCopy;
  dispatch_async(mutexQueue, v7);
}

- (void)XPCListener:(id)listener XPCConnection:(id)connection receivedXPCRequest:(id)request
{
  XPCRequestProxy = self->_XPCRequestProxy;
  connectionCopy = connection;
  [(CWFXPCRequestProxy *)XPCRequestProxy XPCManager:self XPCConnection:connectionCopy receivedXPCRequest:request];
  [(CWFXPCManager *)self __updateProcessStateForXPCConnection:connectionCopy];
}

- (void)XPCListener:(id)listener XPCConnection:(id)connection completedXPCRequest:(id)request
{
  XPCRequestProxy = self->_XPCRequestProxy;
  connectionCopy = connection;
  [(CWFXPCRequestProxy *)XPCRequestProxy XPCManager:self XPCConnection:connectionCopy completedXPCRequest:request];
  [(CWFXPCManager *)self __updateProcessStateForXPCConnection:connectionCopy];
}

- (void)XPCListener:(id)listener XPCConnection:(id)connection updatedRegisteredEventIDs:(id)ds
{
  XPCRequestProxy = self->_XPCRequestProxy;
  connectionCopy = connection;
  [(CWFXPCRequestProxy *)XPCRequestProxy XPCManager:self XPCConnection:connectionCopy updatedRegisteredEventIDs:ds];
  [(CWFXPCManager *)self __updateProcessStateForXPCConnection:connectionCopy];
}

- (void)XPCRequestProxy:(id)proxy XPCConnection:(id)connection receivedXPCRequest:(id)request
{
  v23 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  requestCopy = request;
  delegate = [(CWFXPCManager *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && (-[CWFXPCManager supportedRequestTypes](self, "supportedRequestTypes"), v10 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(requestCopy, "type")}], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "containsObject:", v11), v11, v10, v12))
  {
    [delegate XPCManager:self XPCConnection:connectionCopy receivedXPCRequest:requestCopy];
  }

  else
  {
    v13 = CWFGetOSLog();
    if (v13)
    {
      v14 = CWFGetOSLog();
    }

    else
    {
      v14 = MEMORY[0x1E69E9C10];
      v15 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v22 = sub_1E0BC2FCC([requestCopy type]);
      _os_log_send_and_compose_impl();
    }

    response = [requestCopy response];

    if (response)
    {
      response2 = [requestCopy response];
      v18 = *MEMORY[0x1E696A798];
      v19 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
      v20 = CWFErrorWithDescription(v18, 45, v19);
      (response2)[2](response2, v20, 0);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)XPCRequestProxy:(id)proxy XPCConnection:(id)connection canceledXPCRequestsWithUUID:(id)d
{
  connectionCopy = connection;
  dCopy = d;
  delegate = [(CWFXPCManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate XPCManager:self XPCConnection:connectionCopy canceledXPCRequestsWithUUID:dCopy];
  }
}

- (void)XPCRequestProxy:(id)proxy invalidatedXPCConnection:(id)connection
{
  connectionCopy = connection;
  delegate = [(CWFXPCManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate XPCManager:self invalidatedXPCConnection:connectionCopy];
  }
}

- (void)XPCRequestProxy:(id)proxy sendXPCEvent:(id)event reply:(id)reply
{
  eventCopy = event;
  replyCopy = reply;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C5A474;
  block[3] = &unk_1E86E7228;
  v13 = eventCopy;
  v14 = replyCopy;
  block[4] = self;
  v10 = eventCopy;
  v11 = replyCopy;
  dispatch_async(mutexQueue, block);
}

@end