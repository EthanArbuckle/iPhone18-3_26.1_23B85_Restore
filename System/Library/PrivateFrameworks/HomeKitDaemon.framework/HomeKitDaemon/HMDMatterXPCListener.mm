@interface HMDMatterXPCListener
+ (id)logCategory;
- (BOOL)connection:(id)connection allowsOperationWithHome:(id)home operationType:(int64_t)type nodeId:(id)id commandId:(id)commandId endpointId:(id)endpointId clusterId:(id)clusterId attributeId:(id)self0;
- (BOOL)connection:(id)connection sendMessagePayloadToPrimaryResident:(id)resident responseHandler:(id)handler timeout:(double)timeout error:(id *)error;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)sendMessage:(id)message homeUUID:(id)d timeout:(double)timeout error:(id *)error;
- (HMDHomeManager)homeManager;
- (HMDMatterXPCListener)initWithHomeManager:(id)manager;
- (id)_homeForUUID:(id)d;
- (id)_runningModeToString:(int64_t)string;
- (int64_t)runningModeForHomeUUID:(id)d;
- (void)handleInHomeGeoChangeNotification:(id)notification;
- (void)handlePrimaryResidentUpdateNotification:(id)notification;
- (void)start;
- (void)stop;
@end

@implementation HMDMatterXPCListener

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (BOOL)sendMessage:(id)message homeUUID:(id)d timeout:(double)timeout error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  dCopy = d;
  v12 = [(HMDMatterXPCListener *)self _homeForUUID:dCopy];
  if (!v12)
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
LABEL_15:
      v19 = 0;
      goto LABEL_16;
    }

    v21 = HMFGetLogIdentifier();
    v28 = 138543362;
    v29 = v21;
    v22 = "%{public}@MTRPluginClientConnection sendMessage: supplied an invalid home, failing to send message";
    v23 = v17;
    v24 = 12;
LABEL_14:
    _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, v22, &v28, v24);

    goto LABEL_15;
  }

  if (timeout != 0.0)
  {
    v13 = [messageCopy mutableCopy];
    [v13 setTimeout:timeout];
    v14 = [v13 copy];

    messageCopy = v14;
  }

  if (![v12 sendMatterHMFMessageRequest:messageCopy])
  {
    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
    }

    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v21 = HMFGetLogIdentifier();
    v28 = 138543874;
    v29 = v21;
    v30 = 2112;
    v31 = messageCopy;
    v32 = 2112;
    v33 = dCopy;
    v22 = "%{public}@ *** MTRPluginClientConnection sendMessage: %@ homeUUID: %@  failed";
    v23 = v17;
    v24 = 32;
    goto LABEL_14;
  }

  v15 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = HMFGetLogIdentifier();
    v28 = 138544130;
    v29 = v18;
    v30 = 2112;
    v31 = messageCopy;
    v32 = 2112;
    v33 = dCopy;
    v34 = 2048;
    timeoutCopy = timeout;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEBUG, "%{public}@MTRPluginClientConnection sendMessage: %@ homeUUID: %@  succeeded timeout: %f", &v28, 0x2Au);
  }

  v19 = 1;
LABEL_16:

  objc_autoreleasePoolPop(v15);
  v26 = *MEMORY[0x277D85DE8];
  return v19;
}

- (int64_t)runningModeForHomeUUID:(id)d
{
  v25 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [(HMDMatterXPCListener *)self _homeForUUID:dCopy];
  v6 = v5;
  if (v5)
  {
    if ([v5 shouldSendMatterCommandsToResident])
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [(HMDMatterXPCListener *)selfCopy _runningModeToString:v7];
      v17 = 138544130;
      v18 = v11;
      v19 = 2112;
      v20 = v6;
      v21 = 2048;
      v22 = v7;
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Returning running mode for home: %@ mode: %ld (%@)", &v17, 0x2Au);
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v14;
      v19 = 2112;
      v20 = dCopy;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@No home found for UUID: %@", &v17, 0x16u);
    }

    v7 = 0;
  }

  objc_autoreleasePoolPop(v8);
  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)handleInHomeGeoChangeNotification:(id)notification
{
  v34 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  object = [notificationCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = object;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    uuid = [v7 uuid];
    v26 = 138543618;
    v27 = v11;
    v28 = 2112;
    v29 = uuid;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Matter XPC Listener Handling InHomeGeo change notification for home UUID: %@", &v26, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  if (v7)
  {
    if ([v7 shouldSendMatterCommandsToResident])
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    v14 = objc_autoreleasePoolPush();
    v15 = selfCopy;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [(HMDMatterXPCListener *)v15 _runningModeToString:v13];
      v26 = 138544130;
      v27 = v17;
      v28 = 2112;
      v29 = v7;
      v30 = 2048;
      v31 = v13;
      v32 = 2112;
      v33 = v18;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Updating running mode due to InHomeGeo change for home: %@ to %ld (%@)", &v26, 0x2Au);
    }

    objc_autoreleasePoolPop(v14);
    mEMORY[0x277D26768] = [MEMORY[0x277D26768] sharedInstance];
    uuid2 = [v7 uuid];
    [mEMORY[0x277D26768] runningModeForHomeUUID:uuid2 runningModeChanged:v13];
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v26 = 138543362;
      v27 = v24;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Handling InHomeGeo change notification: supplied an invalid home, failing to update plugin", &v26, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)handlePrimaryResidentUpdateNotification:(id)notification
{
  v39 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"HMDResidentDeviceHomeUUIDNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (!v8)
  {
    userInfo2 = [notificationCopy userInfo];
    v10 = [userInfo2 objectForKeyedSubscript:@"HMDResidentDeviceManagerHomeUUIDNotificationKey"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v6 = v11;
  }

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v31 = 138543618;
    v32 = v15;
    v33 = 2112;
    v34 = v6;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Matter XPC Listener Handling primary resident updated notification for home UUID: %@", &v31, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  v16 = [(HMDMatterXPCListener *)selfCopy _homeForUUID:v6];
  v17 = v16;
  if (v16)
  {
    if ([v16 shouldSendMatterCommandsToResident])
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [(HMDMatterXPCListener *)v20 _runningModeToString:v18];
      v31 = 138544130;
      v32 = v22;
      v33 = 2112;
      v34 = v17;
      v35 = 2048;
      v36 = v18;
      v37 = 2112;
      v38 = v23;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Updating running mode for home: %@ to %ld (%@)", &v31, 0x2Au);
    }

    objc_autoreleasePoolPop(v19);
    mEMORY[0x277D26768] = [MEMORY[0x277D26768] sharedInstance];
    uuid = [v17 uuid];
    [mEMORY[0x277D26768] runningModeForHomeUUID:uuid runningModeChanged:v18];
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = selfCopy;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      v31 = 138543362;
      v32 = v29;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Handling primary resident updated notification: supplied an invalid home, failing to update plugin", &v31, 0xCu);
    }

    objc_autoreleasePoolPop(v26);
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (id)_runningModeToString:(int64_t)string
{
  if (string > 2)
  {
    return @"Undefined";
  }

  else
  {
    return off_27867CDD0[string];
  }
}

- (BOOL)connection:(id)connection sendMessagePayloadToPrimaryResident:(id)resident responseHandler:(id)handler timeout:(double)timeout error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  residentCopy = resident;
  handlerCopy = handler;
  homeUUID = [connectionCopy homeUUID];
  v15 = [(HMDMatterXPCListener *)self _homeForUUID:homeUUID];

  if (!v15)
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v28 = 138543362;
      v29 = v24;
      v25 = "%{public}@MTRPluginClientConnection sendMessage: supplied an invalid home, failing to send message";
LABEL_10:
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, v25, &v28, 0xCu);
    }

LABEL_11:
    v22 = 0;
    goto LABEL_12;
  }

  v16 = [v15 sendMatterMessagePayloadToPrimaryResident:residentCopy timeout:handlerCopy responseHandler:timeout];
  v17 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v19 = HMFGetOSLogHandle();
  v20 = v19;
  if ((v16 & 1) == 0)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v28 = 138543362;
      v29 = v24;
      v25 = "%{public}@ *** MTRPluginClientConnection sendMatterMessagePayloadToPrimaryResident failed";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v21 = HMFGetLogIdentifier();
    v28 = 138543362;
    v29 = v21;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEBUG, "%{public}@MTRPluginClientConnection sendMatterMessagePayloadToPrimaryResident succeeded", &v28, 0xCu);
  }

  v22 = 1;
LABEL_12:

  objc_autoreleasePoolPop(v17);
  v26 = *MEMORY[0x277D85DE8];
  return v22;
}

- (BOOL)connection:(id)connection allowsOperationWithHome:(id)home operationType:(int64_t)type nodeId:(id)id commandId:(id)commandId endpointId:(id)endpointId clusterId:(id)clusterId attributeId:(id)self0
{
  v62 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  homeCopy = home;
  idCopy = id;
  commandIdCopy = commandId;
  endpointIdCopy = endpointId;
  clusterIdCopy = clusterId;
  attributeIdCopy = attributeId;
  v21 = objc_autoreleasePoolPush();
  selfCopy = self;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    HMFGetLogIdentifier();
    v25 = v24 = commandIdCopy;
    *buf = 138543874;
    v57 = v25;
    v58 = 2112;
    v59 = connectionCopy;
    v60 = 2112;
    v61 = homeCopy;
    _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_DEBUG, "%{public}@connection:%@, allowsOperationWithHome %@", buf, 0x20u);

    commandIdCopy = v24;
  }

  objc_autoreleasePoolPop(v21);
  context = [connectionCopy context];
  v27 = [context objectForKey:@"HMDMTRPluginClientConnectionHMDProcessInfo"];

  if (v27)
  {
    if (homeCopy)
    {
      v28 = [(HMDMatterXPCListener *)selfCopy _homeForUUID:homeCopy];
      if (v28)
      {
        if ([v27 isForegrounded] & 1) != 0 || (objc_msgSend(connectionCopy, "backgroundModeEntitled"))
        {
          v29 = 1;
LABEL_19:

          goto LABEL_20;
        }

        context = objc_autoreleasePoolPush();
        selfCopy;
        v41 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v54 = homeCopy;
          v45 = connectionCopy;
          v46 = attributeIdCopy;
          v47 = clusterIdCopy;
          v48 = endpointIdCopy;
          v50 = v49 = commandIdCopy;
          *buf = 138543362;
          v57 = v50;
          _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@MTRPluginClientConnection is not foregrounded, and not allowed to run in background, denying access", buf, 0xCu);

          commandIdCopy = v49;
          endpointIdCopy = v48;
          clusterIdCopy = v47;
          attributeIdCopy = v46;
          connectionCopy = v45;
          homeCopy = v54;
        }
      }

      else
      {
        v53 = commandIdCopy;
        context = objc_autoreleasePoolPush();
        v40 = selfCopy;
        v41 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v42 = HMFGetLogIdentifier();
          *buf = 138543618;
          v57 = v42;
          v58 = 2112;
          v59 = homeCopy;
          _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@MTRPluginClientConnection supplied an invalid home, denying access (UUID: %@)", buf, 0x16u);
        }

        commandIdCopy = v53;
      }

      objc_autoreleasePoolPop(context);
      v29 = 0;
      goto LABEL_19;
    }

    v30 = objc_autoreleasePoolPush();
    v31 = selfCopy;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v52 = 0;
      v33 = connectionCopy;
      v34 = attributeIdCopy;
      v35 = clusterIdCopy;
      v36 = endpointIdCopy;
      v38 = v37 = commandIdCopy;
      *buf = 138543362;
      v57 = v38;
      v39 = "%{public}@MTRPluginClientConnection passed in an empty homeUUID, denying access";
      goto LABEL_13;
    }
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    v31 = selfCopy;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v52 = homeCopy;
      v33 = connectionCopy;
      v34 = attributeIdCopy;
      v35 = clusterIdCopy;
      v36 = endpointIdCopy;
      v38 = v37 = commandIdCopy;
      *buf = 138543362;
      v57 = v38;
      v39 = "%{public}@MTRPluginClientConnection had no process info attached to it, denying access";
LABEL_13:
      _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, v39, buf, 0xCu);

      commandIdCopy = v37;
      endpointIdCopy = v36;
      clusterIdCopy = v35;
      attributeIdCopy = v34;
      connectionCopy = v33;
      homeCopy = v52;
    }
  }

  objc_autoreleasePoolPop(v30);
  v29 = 0;
LABEL_20:

  v43 = *MEMORY[0x277D85DE8];
  return v29;
}

- (id)_homeForUUID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  homeManager = [(HMDMatterXPCListener *)self homeManager];
  homes = [homeManager homes];

  v7 = [homes countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(homes);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        uuid = [v10 uuid];
        v12 = [uuid isEqual:dCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [homes countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v63 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v10;
    *&buf[12] = 2112;
    *&buf[14] = connectionCopy;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@New Matter XPC connection requested: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = *MEMORY[0x277D6C258];
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  else
  {
    memset(buf, 0, 32);
  }

  if (TCCAccessCheckAuditToken())
  {
    v12 = [connectionCopy valueForEntitlement:@"com.apple.developer.homekit"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    v15 = [connectionCopy valueForEntitlement:@"com.apple.private.homekit"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v51 = v16;

    if ([v14 BOOLValue] & 1) != 0 || (objc_msgSend(v51, "BOOLValue"))
    {
      v17 = [connectionCopy valueForEntitlement:@"com.apple.developer.homekit.background-mode"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;

      bOOLValue = [v19 BOOLValue];
      v21 = objc_autoreleasePoolPush();
      v22 = selfCopy;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        v25 = HMFBooleanToString();
        *buf = 138543618;
        *&buf[4] = v24;
        *&buf[12] = 2112;
        *&buf[14] = v25;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Matter XPC connect entitlement for background mode: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      processIdentifier = [connectionCopy processIdentifier];
      processMonitor = [(os_unfair_lock_s *)v22 processMonitor];
      v28 = [objc_alloc(MEMORY[0x277CD1F30]) initWithXPCConnection:connectionCopy];
      v29 = [processMonitor processInfoForXPCConnection:v28];

      v60 = @"HMDMTRPluginClientConnectionHMDProcessInfo";
      v61 = v29;
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
      v31 = objc_alloc(MEMORY[0x277D26758]);
      delegateQueue = [(os_unfair_lock_s *)v22 delegateQueue];
      v33 = [v31 initWithClientConnection:connectionCopy backgroundModeEntitled:bOOLValue pid:processIdentifier context:v30 delegate:v22 delegateQueue:delegateQueue];

      mEMORY[0x277D26768] = [MEMORY[0x277D26768] sharedInstance];
      [mEMORY[0x277D26768] addClientConnection:v33];

      os_unfair_lock_lock_with_options();
      mutableConnections = [(os_unfair_lock_s *)v22 mutableConnections];
      [mutableConnections addObject:v33];

      os_unfair_lock_unlock(v22 + 2);
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __59__HMDMatterXPCListener_listener_shouldAcceptNewConnection___block_invoke;
      v56[3] = &unk_27867CD88;
      v56[4] = v22;
      v59 = processIdentifier;
      v36 = v33;
      v57 = v36;
      v58 = v29;
      v37 = v29;
      [connectionCopy setInvalidationHandler:v56];
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __59__HMDMatterXPCListener_listener_shouldAcceptNewConnection___block_invoke_2;
      v53[3] = &unk_27867CDB0;
      v55 = processIdentifier;
      v53[4] = v22;
      v54 = v36;
      v38 = v36;
      [connectionCopy setInterruptionHandler:v53];
      workQueue = [(os_unfair_lock_s *)v22 workQueue];
      [connectionCopy _setQueue:workQueue];

      [v38 resume];
      v40 = 1;
    }

    else
    {
      v45 = objc_autoreleasePoolPush();
      v46 = selfCopy;
      v47 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        v48 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v48;
        *&buf[12] = 2112;
        *&buf[14] = connectionCopy;
        _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_INFO, "%{public}@Matter XPC connection does not have required HomeKit entitlements: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v45);
      v40 = 0;
    }
  }

  else
  {
    v41 = objc_autoreleasePoolPush();
    v42 = selfCopy;
    v43 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v44;
      *&buf[12] = 2112;
      *&buf[14] = connectionCopy;
      _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@Matter XPC connection has no permission to access Home data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v41);
    v40 = 0;
  }

  v49 = *MEMORY[0x277D85DE8];
  return v40;
}

void __59__HMDMatterXPCListener_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 56);
    *buf = 138543618;
    v17 = v5;
    v18 = 1024;
    v19 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Matter XPC client invalidated: %d", buf, 0x12u);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 40) invalidated];
  v7 = (*(a1 + 32) + 8);
  os_unfair_lock_lock_with_options();
  v8 = [*(a1 + 32) mutableConnections];
  [v8 removeObject:*(a1 + 40)];

  os_unfair_lock_unlock(v7);
  LODWORD(v8) = [*(a1 + 40) pid];
  v9 = (*(a1 + 32) + 8);
  os_unfair_lock_lock_with_options();
  v10 = [*(a1 + 32) mutableConnections];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __59__HMDMatterXPCListener_listener_shouldAcceptNewConnection___block_invoke_30;
  v14[3] = &__block_descriptor_36_e35_B16__0__MTRPluginClientConnection_8l;
  v15 = v8;
  LOBYTE(v8) = [v10 na_any:v14];

  os_unfair_lock_unlock(v9);
  if ((v8 & 1) == 0 && ([*(a1 + 48) shouldMonitor] & 1) == 0)
  {
    v11 = [*(a1 + 32) processMonitor];
    [v11 removeProcess:*(a1 + 48)];
  }

  v12 = [MEMORY[0x277D26768] sharedInstance];
  [v12 removeClientConnection:*(a1 + 40)];

  v13 = *MEMORY[0x277D85DE8];
}

void __59__HMDMatterXPCListener_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 48);
    v9 = 138543618;
    v10 = v5;
    v11 = 1024;
    v12 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Matter XPC client interrupted: %d", &v9, 0x12u);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 40) interrupted];
  v7 = [MEMORY[0x277D26768] sharedInstance];
  [v7 removeClientConnection:*(a1 + 40)];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  if ((_os_feature_enabled_impl() & 1) != 0 || HM_FEATURE_RVC_DEFAULTS_ENABLED())
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self];

    mEMORY[0x277D26768] = [MEMORY[0x277D26768] sharedInstance];
    [mEMORY[0x277D26768] stop];

    listener = [(HMDMatterXPCListener *)self listener];
    [listener suspend];
  }
}

- (void)start
{
  v18 = *MEMORY[0x277D85DE8];
  if ((_os_feature_enabled_impl() & 1) != 0 || HM_FEATURE_RVC_DEFAULTS_ENABLED())
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel_handlePrimaryResidentUpdateNotification_ name:@"HMDResidentDeviceConfirmedStateChangedNotification" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel_handlePrimaryResidentUpdateNotification_ name:@"HMDResidentDeviceManagerUpdateResidentNotification" object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:self selector:sel_handlePrimaryResidentUpdateNotification_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:0];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:self selector:sel_handleInHomeGeoChangeNotification_ name:@"HMDHomeDidLeaveHomeNotificationKey" object:0];

    defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter5 addObserver:self selector:sel_handleInHomeGeoChangeNotification_ name:@"HMDHomeDidArriveHomeNotificationKey" object:0];

    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Starting Matter XPC listener", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    mEMORY[0x277D26768] = [MEMORY[0x277D26768] sharedInstance];
    workQueue = [(HMDMatterXPCListener *)selfCopy workQueue];
    [mEMORY[0x277D26768] startWithDelegate:selfCopy queue:workQueue];

    listener = [(HMDMatterXPCListener *)selfCopy listener];
    [listener resume];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (HMDMatterXPCListener)initWithHomeManager:(id)manager
{
  managerCopy = manager;
  v30.receiver = self;
  v30.super_class = HMDMatterXPCListener;
  v5 = [(HMDMatterXPCListener *)&v30 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = HMDispatchQueueNameString();
    uTF8String = [v7 UTF8String];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create(uTF8String, v9);
    delegateQueue = v6->_delegateQueue;
    v6->_delegateQueue = v10;

    v12 = HMDispatchQueueNameString();
    uTF8String2 = [v12 UTF8String];
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create(uTF8String2, v14);
    workQueue = v6->_workQueue;
    v6->_workQueue = v15;

    v17 = objc_alloc(MEMORY[0x277CCAE98]);
    v18 = [v17 initWithMachServiceName:*MEMORY[0x277CD15D8]];
    listener = v6->_listener;
    v6->_listener = v18;

    [(NSXPCListener *)v6->_listener _setQueue:v6->_workQueue];
    [(NSXPCListener *)v6->_listener setDelegate:v6];
    objc_storeWeak(&v6->_homeManager, managerCopy);
    v20 = HMDispatchQueueNameString();
    uTF8String3 = [v20 UTF8String];
    v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v23 = dispatch_queue_create(uTF8String3, v22);
    processMonitorQueue = v6->_processMonitorQueue;
    v6->_processMonitorQueue = v23;

    v25 = [[HMDProcessMonitor alloc] initWithQueue:v6->_processMonitorQueue];
    processMonitor = v6->_processMonitor;
    v6->_processMonitor = v25;

    v27 = objc_alloc_init(MEMORY[0x277CBEB58]);
    mutableConnections = v6->_mutableConnections;
    v6->_mutableConnections = v27;
  }

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t36_172583 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t36_172583, &__block_literal_global_172584);
  }

  v3 = logCategory__hmf_once_v37_172585;

  return v3;
}

void __35__HMDMatterXPCListener_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v37_172585;
  logCategory__hmf_once_v37_172585 = v1;
}

@end