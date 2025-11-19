@interface HMDXPCMessageTransport
+ (HMDXPCMessageTransport)accessorySetupTransport;
+ (HMDXPCMessageTransport)defaultTransport;
+ (id)logCategory;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (HMDXPCMessageTransport)initWithConfiguration:(id)a3;
- (HMDXPCMessageTransport)initWithConfiguration:(id)a3 listener:(id)a4 processMonitor:(id)a5 appProtectionGuard:(id)a6;
- (NSArray)connections;
- (NSDictionary)stateDump;
- (OS_dispatch_queue)queue;
- (id)logIdentifier;
- (void)connectionDidActivate:(id)a3;
- (void)connectionDidDeactivate:(id)a3;
- (void)connectionDidInvalidate:(id)a3;
- (void)connectionDidStart:(id)a3;
- (void)handleProcessStateDidChangeNotification:(id)a3;
- (void)messageTransport:(id)a3 didReceiveMessage:(id)a4;
- (void)sendMessage:(id)a3 completionHandler:(id)a4;
- (void)start;
- (void)stop;
@end

@implementation HMDXPCMessageTransport

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v41 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v10;
    *&buf[12] = 2112;
    *&buf[14] = v6;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@New XPC connection requested: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = [(HMDXPCMessageTransport *)v8 clientConnectionFactory];
  v12 = [(HMDXPCMessageTransport *)v8 queue];
  v13 = (v11)[2](v11, v6, v12);

  if (v8)
  {
    configuration = v8->_configuration;
  }

  else
  {
    configuration = 0;
  }

  v15 = [(HMXPCMessageTransportConfiguration *)configuration requiredEntitlements];
  v16 = [v13 entitlements];
  v17 = v16 & v15;
  if ((v16 & v15) != v15)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = v8;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v25 = HMXPCClientEntitlementsToComponents(v17 ^ v15);
      *buf = 138543874;
      *&buf[4] = v24;
      *&buf[12] = 2112;
      *&buf[14] = v25;
      *&buf[22] = 2112;
      *&buf[24] = v13;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Rejecting connection missing entitlements %@: %@", buf, 0x20u);
    }

    goto LABEL_16;
  }

  if (v8)
  {
    v18 = v8->_configuration;
  }

  else
  {
    v18 = 0;
  }

  if (![(HMXPCMessageTransportConfiguration *)v18 requiresHomeDataAccess])
  {
    goto LABEL_22;
  }

  if (([v13 isAuthorizedForHomeDataAccess] & 1) == 0)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = v8;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      v28 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v13, "clientPid")}];
      *buf = 138543618;
      *&buf[4] = v27;
      *&buf[12] = 2112;
      *&buf[14] = v28;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Rejecting connection from client with PID %@ because it is not authorized for Home data access", buf, 0x16u);
    }

LABEL_16:

    objc_autoreleasePoolPop(v21);
    v26 = 0;
    goto LABEL_29;
  }

  if (v8)
  {
    appProtectionGuard = v8->_appProtectionGuard;
  }

  else
  {
    appProtectionGuard = 0;
  }

  v20 = appProtectionGuard;
  if (v6)
  {
    [v6 auditToken];
  }

  else
  {
    memset(buf, 0, 32);
  }

  v29 = *MEMORY[0x277CCFE40];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __61__HMDXPCMessageTransport_listener_shouldAcceptNewConnection___block_invoke;
  v50[3] = &unk_27972B728;
  v50[4] = v8;
  v51 = v13;
  [(HMDAppProtectionGuard *)v20 initiateAuthenticationForApplicationWithBundleIdentifier:v29 onBehalfOfProcessWithAuditToken:buf completion:v50];

LABEL_22:
  [v13 setDelegate:v8];
  [v6 setExportedObject:v13];
  if (v8)
  {
    [v6 setExportedInterface:v8->_exportedInterface];
    remoteObjectInterface = v8->_remoteObjectInterface;
  }

  else
  {
    [v6 setExportedInterface:0];
    remoteObjectInterface = 0;
  }

  [v6 setRemoteObjectInterface:remoteObjectInterface];
  v31 = [(HMDXPCMessageTransport *)v8 processMonitor];
  v32 = [v31 processInfoForXPCConnection:v6];

  [v13 setProcessInfo:v32];
  os_unfair_lock_lock_with_options();
  if (v8)
  {
    mutableConnections = v8->_mutableConnections;
  }

  else
  {
    mutableConnections = 0;
  }

  v34 = mutableConnections;
  [(NSMutableSet *)v34 addObject:v13];

  os_unfair_lock_unlock(&v8->_lock);
  objc_initWeak(&location, v8);
  objc_initWeak(&from, v13);
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __61__HMDXPCMessageTransport_listener_shouldAcceptNewConnection___block_invoke_120;
  v45[3] = &unk_27972EC28;
  objc_copyWeak(&v46, &location);
  objc_copyWeak(&v47, &from);
  [v6 setInterruptionHandler:v45];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __61__HMDXPCMessageTransport_listener_shouldAcceptNewConnection___block_invoke_121;
  v42[3] = &unk_27972EC28;
  objc_copyWeak(&v43, &location);
  objc_copyWeak(&v44, &from);
  [v6 setInvalidationHandler:v42];
  v35 = objc_autoreleasePoolPush();
  v36 = v8;
  v37 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    v38 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v38;
    *&buf[12] = 2112;
    *&buf[14] = v13;
    _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@Resuming new XPC connection: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v35);
  [v6 resume];
  objc_destroyWeak(&v44);
  objc_destroyWeak(&v43);
  objc_destroyWeak(&v47);
  objc_destroyWeak(&v46);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  v26 = 1;
LABEL_29:

  v39 = *MEMORY[0x277D85DE8];
  return v26;
}

void __61__HMDXPCMessageTransport_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1, char a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (a2)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 40);
      v18 = 138543618;
      v19 = v10;
      v20 = 2112;
      v21 = v11;
      v12 = "%{public}@Successfully initiated authentication for app protection for connection: %@";
      v13 = v9;
      v14 = OS_LOG_TYPE_DEBUG;
      v15 = 22;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v13, v14, v12, &v18, v15);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v10 = HMFGetLogIdentifier();
    v16 = *(a1 + 40);
    v18 = 138543874;
    v19 = v10;
    v20 = 2112;
    v21 = v16;
    v22 = 2112;
    v23 = v5;
    v12 = "%{public}@Failed to initiate authentication for app protection for connection %@: %@";
    v13 = v9;
    v14 = OS_LOG_TYPE_ERROR;
    v15 = 32;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v6);
  v17 = *MEMORY[0x277D85DE8];
}

void __61__HMDXPCMessageTransport_listener_shouldAcceptNewConnection___block_invoke_120(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = objc_autoreleasePoolPush();
  v5 = WeakRetained;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Daemon received interruption for %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

void __61__HMDXPCMessageTransport_listener_shouldAcceptNewConnection___block_invoke_121(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = objc_autoreleasePoolPush();
  v5 = WeakRetained;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v7;
    v20 = 2112;
    v21 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Daemon received invalidation for %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  if (v5 && v3)
  {
    os_unfair_lock_lock_with_options();
    v8 = *(v5 + 7);
    [v8 removeObject:v3];

    v9 = *(v5 + 7);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __61__HMDXPCMessageTransport_listener_shouldAcceptNewConnection___block_invoke_122;
    v16[3] = &unk_279728488;
    v10 = v3;
    v17 = v10;
    v11 = [v9 na_any:v16];

    os_unfair_lock_unlock(v5 + 4);
    [v10 invalidate];
    v12 = [v10 processInfo];
    v13 = v12;
    if ((v11 & 1) == 0 && ([v12 shouldMonitor] & 1) == 0)
    {
      v14 = [v5 processMonitor];
      [v14 removeProcess:v13];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

BOOL __61__HMDXPCMessageTransport_listener_shouldAcceptNewConnection___block_invoke_122(uint64_t a1, void *a2)
{
  v3 = [a2 processInfo];
  v4 = [v3 identifier];
  v5 = [*(a1 + 32) processInfo];
  v6 = v4 == [v5 identifier];

  return v6;
}

- (void)connectionDidInvalidate:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDXPCMessageTransport *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  v9 = @"connection";
  v10[0] = v4;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  [v6 postNotificationName:@"HMDXPCClientConnectionDidInvalidateNotification" object:self userInfo:v7];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)connectionDidDeactivate:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDXPCMessageTransport *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  v9 = @"connection";
  v10[0] = v4;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  [v6 postNotificationName:@"HMDXPCClientConnectionDidDeactivateNotification" object:self userInfo:v7];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)connectionDidActivate:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDXPCMessageTransport *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  v9 = @"connection";
  v10[0] = v4;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  [v6 postNotificationName:@"HMDXPCClientConnectionDidActivateNotification" object:self userInfo:v7];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)connectionDidStart:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDXPCMessageTransport *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  v9 = @"connection";
  v10[0] = v4;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  [v6 postNotificationName:@"HMDXPCClientConnectionDidStartNotification" object:self userInfo:v7];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)messageTransport:(id)a3 didReceiveMessage:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMFMessageTransport *)self delegate];
  [v8 messageTransport:v7 didReceiveMessage:v6];
}

- (id)logIdentifier
{
  if (self)
  {
    self = self->_configuration;
  }

  return [(HMDXPCMessageTransport *)self machServiceName];
}

- (void)handleProcessStateDidChangeNotification:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDXPCMessageTransport *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 userInfo];
  v7 = [v6 objectForKeyedSubscript:@"processInfo"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [(HMDXPCMessageTransport *)self connections];
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
LABEL_6:
    v14 = 0;
    while (1)
    {
      if (*v19 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v18 + 1) + 8 * v14);
      v16 = [v15 processInfo];

      if (v16 != v9)
      {
        break;
      }

      [v15 handleProcessStateDidChange];
      if (v12 == ++v14)
      {
        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v12)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)sendMessage:(id)a3 completionHandler:(id)a4
{
  v88 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CBEB18];
  v9 = [(HMDXPCMessageTransport *)self connections];
  v10 = [v8 arrayWithCapacity:{objc_msgSend(v9, "count")}];

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v11 = [(HMDXPCMessageTransport *)self connections];
  v12 = [v11 countByEnumeratingWithState:&v67 objects:v87 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v68;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v68 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v67 + 1) + 8 * i);
        if ([v17 sendMessage:v6 error:0])
        {
          ++v14;
        }

        else
        {
          v18 = [v17 shortDescription];
          [v10 addObject:v18];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v67 objects:v87 count:16];
    }

    while (v13);

    if (v14)
    {
      v19 = objc_autoreleasePoolPush();
      v20 = self;
      v21 = HMFGetOSLogHandle();
      v66 = v7;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v64 = HMFGetLogIdentifier();
        v63 = [v6 name];
        *buf = 0;
        *&buf[8] = 0;
        v22 = [v6 identifier];

        if (v22)
        {
          v23 = [v6 identifier];
          [v23 getUUIDBytes:buf];
        }

        else
        {
          *buf = *MEMORY[0x277D0F960];
        }

        v75 = *buf;
        *buf = 0;
        *&buf[8] = 0;
        v39 = [v6 destination];
        v40 = [v39 target];

        if (v40)
        {
          v41 = [v6 destination];
          v42 = [v41 target];
          [v42 getUUIDBytes:buf];
        }

        else
        {
          *buf = *MEMORY[0x277D0F960];
        }

        v74 = *buf;
        v43 = [(HMDXPCMessageTransport *)v20 connections];
        v44 = [v43 count];
        v45 = [v6 sendPolicy];
        *buf = 138545410;
        *&buf[4] = v64;
        *&buf[12] = 2114;
        *&buf[14] = v63;
        v77 = 1042;
        *v78 = 16;
        *&v78[4] = 2098;
        *&v78[6] = &v75;
        *&v78[14] = 1040;
        *&v78[16] = 16;
        v79 = 2096;
        v80 = &v74;
        v81 = 2050;
        v82 = v14;
        v83 = 2050;
        v84 = v44;
        v85 = 2114;
        v86 = v45;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Sent message %{public}@(%{public,uuid_t}.16P) with target %{uuid_t}.16P to %{public}lu/%{public}lu clients with message send policy %{public}@", buf, 0x54u);

        v7 = v66;
        v19 = v62;
      }

      objc_autoreleasePoolPop(v19);
      v46 = objc_autoreleasePoolPush();
      v47 = v20;
      v48 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
      {
        v49 = HMFGetLogIdentifier();
        v50 = [v6 shortDescription];
        v51 = [v6 messagePayload];
        v52 = MEMORY[0x277CBEB98];
        v53 = *MEMORY[0x277CD1FD8];
        v73[0] = @"kAuthorizationDataKey";
        v73[1] = v53;
        v54 = *MEMORY[0x277CD2620];
        v73[2] = *MEMORY[0x277CD1FC8];
        v73[3] = v54;
        v55 = *MEMORY[0x277CD2758];
        v73[4] = *MEMORY[0x277CD2040];
        v73[5] = v55;
        v56 = *MEMORY[0x277CD23D0];
        v73[6] = *MEMORY[0x277CD27B0];
        v73[7] = v56;
        v73[8] = *MEMORY[0x277CD0D30];
        v73[9] = @"kAccessoryInfoSerialNumberKey";
        v73[10] = @"kUserIDKey";
        v73[11] = @"kUserIDsKey";
        v73[12] = @"kUserDisplayNameKey";
        v73[13] = @"kUserNamesKey";
        [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:14];
        v57 = v65 = v46;
        v58 = [v52 setWithArray:v57];
        v59 = [v51 secureDescriptionWithBlacklistKeys:v58];
        *buf = 138544130;
        *&buf[4] = v49;
        *&buf[12] = 2114;
        *&buf[14] = v50;
        v77 = 2114;
        *v78 = v59;
        *&v78[8] = 2114;
        *&v78[10] = v10;
        _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_DEBUG, "%{public}@Sent message %{public}@ with payload: %{public}@ (skipped ineligible clients: %{public}@)", buf, 0x2Au);

        v7 = v66;
        v46 = v65;
      }

      objc_autoreleasePoolPop(v46);
      v60 = _Block_copy(v7);
      v36 = v60;
      if (v60)
      {
        (*(v60 + 2))(v60, 0);
      }

      goto LABEL_36;
    }
  }

  else
  {
  }

  v24 = objc_autoreleasePoolPush();
  v25 = self;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = HMFGetLogIdentifier();
    v28 = [v6 name];
    *buf = 0;
    *&buf[8] = 0;
    v29 = [v6 identifier];

    if (v29)
    {
      v30 = [v6 identifier];
      [v30 getUUIDBytes:buf];
    }

    else
    {
      *buf = *MEMORY[0x277D0F960];
    }

    v72 = *buf;
    *buf = 0;
    *&buf[8] = 0;
    v31 = [v6 destination];
    v32 = [v31 target];

    if (v32)
    {
      v33 = [v6 destination];
      v34 = [v33 target];
      [v34 getUUIDBytes:buf];
    }

    else
    {
      *buf = *MEMORY[0x277D0F960];
    }

    v71 = *buf;
    v35 = [v6 sendPolicy];
    *buf = 138544898;
    *&buf[4] = v27;
    *&buf[12] = 2114;
    *&buf[14] = v28;
    v77 = 1042;
    *v78 = 16;
    *&v78[4] = 2098;
    *&v78[6] = &v72;
    *&v78[14] = 1040;
    *&v78[16] = 16;
    v79 = 2096;
    v80 = &v71;
    v81 = 2114;
    v82 = v35;
    _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Not sending message %{public}@(%{public,uuid_t}.16P) with target %{uuid_t}.16P because no clients are eligible for send policy: %{public}@", buf, 0x40u);
  }

  objc_autoreleasePoolPop(v24);
  v36 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54 description:@"Failed to send message." reason:@"No eligible clients" suggestion:0];
  v37 = _Block_copy(v7);
  v38 = v37;
  if (v37)
  {
    (*(v37 + 2))(v37, v36);
  }

LABEL_36:
  v61 = *MEMORY[0x277D85DE8];
}

- (NSDictionary)stateDump
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [(HMDXPCMessageTransport *)self connections];
  v3 = [v2 na_map:&__block_literal_global_97_68163];

  v7 = @"Connections";
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (NSArray)connections
{
  os_unfair_lock_lock_with_options();
  if (self)
  {
    mutableConnections = self->_mutableConnections;
  }

  else
  {
    mutableConnections = 0;
  }

  v4 = mutableConnections;
  v5 = [(NSMutableSet *)v4 allObjects];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)stop
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Stopping XPC message transport", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  if (v4)
  {
    listener = v4->_listener;
  }

  else
  {
    listener = 0;
  }

  [(HMDXPCListener *)listener stop];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Starting XPC message transport", &v15, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  v8 = HMDProcessMonitorProcessStateDidChangeNotification;
  v9 = [(HMDXPCMessageTransport *)v4 processMonitor];
  [v7 addObserver:v4 selector:sel_handleProcessStateDidChangeNotification_ name:v8 object:v9];

  if (v4)
  {
    listener = v4->_listener;
  }

  else
  {
    listener = 0;
  }

  [(HMDXPCListener *)listener setDelegate:v4];
  v11 = [(HMDXPCMessageTransport *)v4 queue];
  if (v4)
  {
    [(HMDXPCListener *)v4->_listener setQueue:v11];

    [(HMDXPCListener *)v4->_listener start];
    configuration = v4->_configuration;
  }

  else
  {
    [0 setQueue:v11];

    [0 start];
    configuration = 0;
  }

  v13 = [(HMXPCMessageTransportConfiguration *)configuration serverStartNotification];
  notify_post([v13 UTF8String]);

  v14 = *MEMORY[0x277D85DE8];
}

- (OS_dispatch_queue)queue
{
  if (self)
  {
    self = self->_configuration;
  }

  return [(HMDXPCMessageTransport *)self queue];
}

- (HMDXPCMessageTransport)initWithConfiguration:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v6 = [HMDXPCListener alloc];
    v7 = objc_alloc(MEMORY[0x277CCAE98]);
    v8 = [v5 machServiceName];
    v9 = [v7 initWithMachServiceName:v8];
    v10 = [(HMDXPCListener *)v6 initWithXPCListener:v9];

    v11 = [HMDProcessMonitor alloc];
    v12 = [v5 queue];
    v13 = [(HMDProcessMonitor *)v11 initWithQueue:v12];

    v14 = objc_alloc_init(HMDAppProtectionGuard);
    v15 = [(HMDXPCMessageTransport *)self initWithConfiguration:v5 listener:v10 processMonitor:v13 appProtectionGuard:v14];

    return v15;
  }

  else
  {
    v17 = _HMFPreconditionFailure();
    return [(HMDXPCMessageTransport *)v17 initWithConfiguration:v18 listener:v19 processMonitor:v20 appProtectionGuard:v21, v22];
  }
}

- (HMDXPCMessageTransport)initWithConfiguration:(id)a3 listener:(id)a4 processMonitor:(id)a5 appProtectionGuard:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!v11)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!v12)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v14 = v13;
  if (!v13)
  {
LABEL_11:
    v26 = _HMFPreconditionFailure();
    return __91__HMDXPCMessageTransport_initWithConfiguration_listener_processMonitor_appProtectionGuard___block_invoke(v26);
  }

  v27.receiver = self;
  v27.super_class = HMDXPCMessageTransport;
  v15 = [(HMDXPCMessageTransport *)&v27 init];
  if (v15)
  {
    v16 = [v10 copy];
    configuration = v15->_configuration;
    v15->_configuration = v16;

    objc_storeStrong(&v15->_listener, a4);
    objc_storeStrong(&v15->_processMonitor, a5);
    objc_storeStrong(&v15->_appProtectionGuard, a6);
    v18 = objc_alloc_init(MEMORY[0x277CBEB58]);
    mutableConnections = v15->_mutableConnections;
    v15->_mutableConnections = v18;

    v20 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286688240];
    exportedInterface = v15->_exportedInterface;
    v15->_exportedInterface = v20;

    v22 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28678F6F8];
    remoteObjectInterface = v15->_remoteObjectInterface;
    v15->_remoteObjectInterface = v22;

    clientConnectionFactory = v15->_clientConnectionFactory;
    v15->_clientConnectionFactory = &__block_literal_global_86;
  }

  return v15;
}

HMDXPCClientConnection *__91__HMDXPCMessageTransport_initWithConfiguration_listener_processMonitor_appProtectionGuard___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [[HMDXPCClientConnection alloc] initWithConnection:v5 queue:v4];

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t9_68204 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t9_68204, &__block_literal_global_114);
  }

  v3 = logCategory__hmf_once_v10_68205;

  return v3;
}

uint64_t __37__HMDXPCMessageTransport_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v10_68205;
  logCategory__hmf_once_v10_68205 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (HMDXPCMessageTransport)accessorySetupTransport
{
  if (accessorySetupTransport_onceToken != -1)
  {
    dispatch_once(&accessorySetupTransport_onceToken, &__block_literal_global_16_68209);
  }

  v3 = accessorySetupTransport_accessorySetupTransport;

  return v3;
}

void __49__HMDXPCMessageTransport_accessorySetupTransport__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CD1CA0]);
  v3 = [v0 initWithMachServiceName:*MEMORY[0x277CD15A0]];
  [v3 setRequiredEntitlements:1];
  [v3 setRequiresHomeDataAccess:0];
  v1 = [[HMDXPCMessageTransport alloc] initWithConfiguration:v3];
  v2 = accessorySetupTransport_accessorySetupTransport;
  accessorySetupTransport_accessorySetupTransport = v1;
}

+ (HMDXPCMessageTransport)defaultTransport
{
  if (defaultTransport_onceToken != -1)
  {
    dispatch_once(&defaultTransport_onceToken, &__block_literal_global_68213);
  }

  v3 = defaultTransport_defaultTransport;

  return v3;
}

void __42__HMDXPCMessageTransport_defaultTransport__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CD1CA0]);
  v3 = [v0 initWithMachServiceName:*MEMORY[0x277CD15C8]];
  [v3 setRequiredEntitlements:1];
  [v3 setRequiresHomeDataAccess:1];
  v1 = [[HMDXPCMessageTransport alloc] initWithConfiguration:v3];
  v2 = defaultTransport_defaultTransport;
  defaultTransport_defaultTransport = v1;
}

@end