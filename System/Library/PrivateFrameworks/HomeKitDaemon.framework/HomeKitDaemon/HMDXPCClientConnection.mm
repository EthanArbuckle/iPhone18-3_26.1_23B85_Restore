@interface HMDXPCClientConnection
+ (id)logCategory;
+ (unint64_t)entitlementsForConnection:(id)a3;
- (BOOL)canSendMessage:(id)a3;
- (BOOL)isAuthorizedForHomeDataAccess;
- (BOOL)isAuthorizedForLocationAccess;
- (BOOL)isAuthorizedForMicrophoneAccess;
- (BOOL)isEntitledForHomeLocationAccess;
- (BOOL)isPlatformBinary;
- (BOOL)sendMessage:(id)a3 error:(id *)a4;
- (Class)principalClass;
- (HMDProcessInfo)processInfo;
- (HMDXPCClientConnection)initWithConnection:(id)a3 queue:(id)a4;
- (HMDXPCClientConnection)initWithConnection:(id)a3 queue:(id)a4 messageCountTracker:(id)a5 requestTracker:(id)a6;
- (HMDXPCClientConnectionDelegate)delegate;
- (HMDXPCMessageSendPolicyParameters)sendPolicyParameters;
- (NSDictionary)stateDump;
- (NSDictionary)userInfo;
- (NSString)applicationBundleIdentifier;
- (NSString)clientIdentifier;
- (NSString)clientName;
- (NSString)name;
- (id)_displayName;
- (id)attributeDescriptions;
- (id)clientUUID;
- (id)shortDescription;
- (int)clientPid;
- (unint64_t)homeManagerOptions;
- (unint64_t)inactiveUpdatingLevel;
- (void)_activate;
- (void)_deactivate;
- (void)_handleMessage:(id)a3 responseHandler:(id)a4;
- (void)_invalidate;
- (void)_start;
- (void)activate;
- (void)deactivate;
- (void)dealloc;
- (void)handleMessage:(id)a3;
- (void)handleMessage:(id)a3 responseHandler:(id)a4;
- (void)handleProcessStateDidChange;
- (void)initiateRefresh;
- (void)invalidate;
- (void)notifyOfExternallyManagedActivation;
- (void)sendMessage:(id)a3 completionHandler:(id)a4;
- (void)setProcessInfo:(id)a3;
- (void)setSendPolicyParameters:(id)a3;
- (void)setUserInfo:(id)a3;
- (void)updateSendPolicyParameters:(id)a3;
- (void)updateUserInfo:(id)a3;
- (void)updateUserInfo:(id)a3 responseHandler:(id)a4;
@end

@implementation HMDXPCClientConnection

- (BOOL)isAuthorizedForHomeDataAccess
{
  v2 = *MEMORY[0x277D6C258];
  v3 = [(HMDXPCClientConnection *)self xpcConnection];
  v4 = v3;
  if (v3)
  {
    [v3 auditToken];
  }

  v5 = TCCAccessCheckAuditToken() != 0;

  return v5;
}

- (HMDProcessInfo)processInfo
{
  os_unfair_lock_lock_with_options();
  v3 = self->_processInfo;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)attributeDescriptions
{
  v15[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDXPCClientConnection *)self _displayName];
  v5 = [v3 initWithName:@"Name" value:v4];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMDXPCClientConnection clientPid](self, "clientPid", v5)}];
  v8 = [v6 initWithName:@"PID" value:v7];
  v15[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDXPCClientConnection *)self entitlements];
  v10 = HMXPCClientEntitlementsShortDescription();
  v11 = [v9 initWithName:@"Entitlements" value:v10];
  v15[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_displayName
{
  v3 = [(HMDXPCClientConnection *)self name];

  if (v3)
  {
    v4 = [(HMDXPCClientConnection *)self name];
  }

  else
  {
    v5 = [(HMDXPCClientConnection *)self processInfo];
    v6 = [v5 applicationInfo];
    v7 = [v6 bundleIdentifier];

    if (v7)
    {
      v8 = [(HMDXPCClientConnection *)self processInfo];
      v9 = [v8 applicationInfo];
      v4 = [v9 bundleIdentifier];
    }

    else
    {
      v4 = @"unknown";
    }
  }

  return v4;
}

- (NSString)name
{
  v3 = [(HMDXPCClientConnection *)self processInfo];
  v4 = [v3 name];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(HMDXPCClientConnection *)self clientName];
  }

  v7 = v6;

  return v7;
}

- (int)clientPid
{
  v2 = [(HMDXPCClientConnection *)self xpcConnection];
  v3 = [v2 processIdentifier];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (NSString)clientName
{
  v2 = [(HMDXPCClientConnection *)self userInfo];
  v3 = [v2 hmf_stringForKey:*MEMORY[0x277CD0C88]];

  return v3;
}

- (NSDictionary)userInfo
{
  os_unfair_lock_lock_with_options();
  v3 = self->_userInfo;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t42_57479 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t42_57479, &__block_literal_global_57480);
  }

  v3 = logCategory__hmf_once_v43_57481;

  return v3;
}

- (void)_start
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(HMDXPCClientConnection *)self queue];
  dispatch_assert_queue_V2(v3);

  if ([(HMDXPCClientConnection *)self state]== 3)
  {
    _HMFPreconditionFailure();
  }

  v4 = [(HMDXPCClientConnection *)self state];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v4)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Not starting already started XPC connection", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Starting XPC connection", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v11 = [(HMDXPCClientConnection *)v6 delegate];
    [v11 connectionDidStart:v6];

    if (![(HMDXPCClientConnection *)v6 hasExternallyManagedActivation])
    {
      [(HMDXPCClientConnection *)v6 _activate];
    }

    [(HMDXPCClientConnection *)v6 handleProcessStateDidChange];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (unint64_t)homeManagerOptions
{
  if (![(objc_class *)[(HMDXPCClientConnection *)self principalClass] isEqual:objc_opt_class()])
  {
    return -1;
  }

  v3 = [(HMDXPCClientConnection *)self userInfo];
  v4 = [v3 hmf_numberForKey:*MEMORY[0x277CD02D8]];

  if (v4)
  {
    v5 = [v4 unsignedIntegerValue];
    if (([(HMDXPCClientConnection *)self entitlements]& 4) != 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = v5 & 0xFFFFFFFFFFFF372FLL;
    }
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

- (id)clientUUID
{
  v2 = [(HMDXPCClientConnection *)self userInfo];
  v3 = [v2 hmf_UUIDForKey:*MEMORY[0x277CD15B0]];

  return v3;
}

- (HMDXPCClientConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (Class)principalClass
{
  v2 = [(HMDXPCClientConnection *)self userInfo];
  v3 = [v2 hmf_stringForKey:*MEMORY[0x277CD0C80]];

  if (v3)
  {
    v4 = NSClassFromString(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)notifyOfExternallyManagedActivation
{
  v3 = [(HMDXPCClientConnection *)self queue];
  dispatch_assert_queue_V2(v3);

  if ([(HMDXPCClientConnection *)self state])
  {
    v4 = _HMFPreconditionFailure();
    sub_229541DF0(v4);
  }

  else
  {

    [(HMDXPCClientConnection *)self setHasExternallyManagedActivation:1];
  }
}

- (HMDXPCMessageSendPolicyParameters)sendPolicyParameters
{
  os_unfair_lock_lock_with_options();
  v3 = self->_sendPolicyParameters;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (unint64_t)inactiveUpdatingLevel
{
  v2 = [(HMDXPCClientConnection *)self userInfo];
  v3 = [v2 hmf_numberForKey:*MEMORY[0x277CD0250]];
  v4 = [v3 integerValue];

  return v4;
}

- (void)activate
{
  v3 = [(HMDXPCClientConnection *)self queue];
  dispatch_assert_queue_V2(v3);

  if ([(HMDXPCClientConnection *)self hasExternallyManagedActivation])
  {

    [(HMDXPCClientConnection *)self _activate];
  }

  else
  {
    v4 = _HMFPreconditionFailure();
    [(HMDProcessInfo *)v4 isForegrounded];
  }
}

- (void)_activate
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(HMDXPCClientConnection *)self queue];
  dispatch_assert_queue_V2(v3);

  if ([(HMDXPCClientConnection *)self state]== 3)
  {
    _HMFPreconditionFailure();
  }

  v4 = [(HMDXPCClientConnection *)self state];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v4 == 1)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Not activating already activated XPC connection", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Activating XPC connection", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v11 = [(HMDXPCClientConnection *)v6 state];
    [(HMDXPCClientConnection *)v6 setState:1];
    v12 = [(HMDXPCClientConnection *)v6 delegate];
    [v12 connectionDidActivate:v6];

    if (v11 == 2)
    {
      [(HMDXPCClientConnection *)v6 initiateRefresh];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)initiateRefresh
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(HMDXPCClientConnection *)self queue];
  dispatch_assert_queue_V2(v3);

  if ([(HMDXPCClientConnection *)self state]!= 1)
  {
    _HMFPreconditionFailure();
  }

  v4 = MEMORY[0x277D0F818];
  v5 = *MEMORY[0x277CD15A8];
  v6 = [MEMORY[0x277D0F820] allMessageDestinations];
  v7 = [v4 messageWithName:v5 qualityOfService:9 destination:v6 payload:0];

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 0;
    *&buf[8] = 0;
    v12 = [v7 identifier];

    if (v12)
    {
      v13 = [v7 identifier];
      [v13 getUUIDBytes:buf];
    }

    else
    {
      *buf = *MEMORY[0x277D0F960];
    }

    v15 = *buf;
    *buf = 138543874;
    *&buf[4] = v11;
    *&buf[12] = 1042;
    *&buf[14] = 16;
    v17 = 2098;
    v18 = &v15;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Initiating refresh using message with identifier: %{public,uuid_t}.16P", buf, 0x1Cu);
  }

  objc_autoreleasePoolPop(v8);
  [(HMDXPCClientConnection *)v9 sendMessage:v7 completionHandler:0];

  v14 = *MEMORY[0x277D85DE8];
}

- (NSString)clientIdentifier
{
  os_unfair_lock_lock_with_options();
  clientIdentifier = self->_clientIdentifier;
  if (!clientIdentifier)
  {
    v4 = [(HMDProcessInfo *)self->_processInfo applicationInfo];
    v5 = [v4 bundleIdentifier];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
      v8 = self->_clientIdentifier;
      self->_clientIdentifier = v7;
    }

    else
    {
      v9 = [(HMFProcessInfo *)self->_processInfo name];
      v8 = v9;
      if (v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = [(NSDictionary *)self->_userInfo hmf_stringForKey:*MEMORY[0x277CD0C88]];
      }

      v11 = self->_clientIdentifier;
      self->_clientIdentifier = v10;
    }

    clientIdentifier = self->_clientIdentifier;
  }

  v12 = clientIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v12;
}

- (void)handleProcessStateDidChange
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(HMDXPCClientConnection *)self queue];
  dispatch_assert_queue_V2(v3);

  if (![(HMDXPCClientConnection *)self hasExternallyManagedActivation])
  {
    v4 = [(HMDXPCClientConnection *)self processInfo];
    v5 = [v4 state];

    if ((v5 & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      if ([(HMDXPCClientConnection *)self state]== 1)
      {
        v10 = objc_autoreleasePoolPush();
        v11 = self;
        v12 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = HMFGetLogIdentifier();
          v15 = 138543362;
          v16 = v13;
          _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Deactivating XPC connection that is now in the background", &v15, 0xCu);
        }

        objc_autoreleasePoolPop(v10);
        [(HMDXPCClientConnection *)v11 _deactivate];
      }
    }

    else if ((v5 & 0xFFFFFFFFFFFFFFFDLL) == 0 && [(HMDXPCClientConnection *)self state]== 2)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        v15 = 138543362;
        v16 = v9;
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Activating XPC connection that is now in the foreground and initiating refresh", &v15, 0xCu);
      }

      objc_autoreleasePoolPop(v6);
      [(HMDXPCClientConnection *)v7 _activate];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)sendMessage:(id)a3 error:(id *)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HMDXPCClientConnection *)self canSendMessage:v6];
  if (v7)
  {
    if (([v6 isLocationAuthorized] & 1) != 0 || objc_msgSend(v6, "requiresHomeLocationEntitlement"))
    {
      v8 = objc_autoreleasePoolPush();
      v9 = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [v6 shortDescription];
        *buf = 138543618;
        v30 = v11;
        v31 = 2112;
        v32 = v12;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Marking location for message: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v13 = [(HMDXPCClientConnection *)v9 processInfo];
      v14 = [v13 locationAuthorization];
      [v14 mark];
    }

    v15 = [v6 mutableCopy];
    v16 = [v6 identifier];
    [v15 setIdentifier:v16];

    v17 = [MEMORY[0x277CBEAA8] date];
    [v15 setHeaderValue:v17 forKey:*MEMORY[0x277CD15E0]];

    v18 = [(HMDXPCClientConnection *)self xpcConnection];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __44__HMDXPCClientConnection_sendMessage_error___block_invoke;
    v28[3] = &unk_27868A250;
    v28[4] = self;
    v19 = [v18 remoteObjectProxyWithErrorHandler:v28];

    v20 = [v15 responseHandler];

    v21 = [v15 copy];
    if (v20)
    {
      v22 = [v15 responseHandler];
      [v19 handleMessage:v21 responseHandler:v22];
    }

    else
    {
      [v19 handleMessage:v21];
    }

    v23 = [(HMDXPCClientConnection *)self clientIdentifier];
    if (v23)
    {
      v24 = [(HMDXPCClientConnection *)self messageCountTracker];
      v25 = [v6 name];
      [v24 incrementCounterOfType:2 clientIdentifier:v23 messageName:v25];
    }
  }

  else if (a4)
  {
    *a4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
  }

  v26 = *MEMORY[0x277D85DE8];
  return v7;
}

void __44__HMDXPCClientConnection_sendMessage_error___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to get remote object proxy for sending message: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)sendMessage:(id)a3 completionHandler:(id)a4
{
  v11 = 0;
  v6 = a4;
  v7 = [(HMDXPCClientConnection *)self sendMessage:a3 error:&v11];
  v8 = v11;
  v9 = _Block_copy(v6);

  if (v9)
  {
    if (v7)
    {
      v10 = 0;
    }

    else
    {
      v10 = v8;
    }

    (v9)[2](v9, v10);
  }
}

- (void)updateUserInfo:(id)a3 responseHandler:(id)a4
{
  v8 = a4;
  v6 = a3;
  v7 = [(HMDXPCClientConnection *)self queue];
  dispatch_assert_queue_V2(v7);

  [(HMDXPCClientConnection *)self setUserInfo:v6];
  v8[2]();
}

- (void)updateUserInfo:(id)a3
{
  v5 = a3;
  v4 = [(HMDXPCClientConnection *)self queue];
  dispatch_assert_queue_V2(v4);

  [(HMDXPCClientConnection *)self setUserInfo:v5];
}

- (void)handleMessage:(id)a3 responseHandler:(id)a4
{
  v6 = a4;
  v8 = a3;
  v7 = [(HMDXPCClientConnection *)self queue];
  dispatch_assert_queue_V2(v7);

  [(HMDXPCClientConnection *)self _handleMessage:v8 responseHandler:v6];
}

- (void)handleMessage:(id)a3
{
  v5 = a3;
  v4 = [(HMDXPCClientConnection *)self queue];
  dispatch_assert_queue_V2(v4);

  [(HMDXPCClientConnection *)self _handleMessage:v5 responseHandler:0];
}

- (void)_invalidate
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(HMDXPCClientConnection *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDXPCClientConnection *)self state];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v4 == 3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Not invalidating already invalidated XPC connection", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Invalidating XPC connection", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    [(HMDXPCClientConnection *)v6 _deactivate];
    [(HMDXPCClientConnection *)v6 setState:3];
    v11 = [(HMDXPCClientConnection *)v6 delegate];
    [v11 connectionDidInvalidate:v6];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_deactivate
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(HMDXPCClientConnection *)self queue];
  dispatch_assert_queue_V2(v3);

  if ([(HMDXPCClientConnection *)self state]== 3)
  {
    _HMFPreconditionFailure();
  }

  v4 = [(HMDXPCClientConnection *)self state];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v4 == 2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Not de-activating already de-activated XPC connection", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Deactivating XPC connection", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    [(HMDXPCClientConnection *)v6 setState:2];
    v11 = [(HMDXPCClientConnection *)v6 delegate];
    [v11 connectionDidDeactivate:v6];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  v3 = [(HMDXPCClientConnection *)self queue];
  dispatch_assert_queue_V2(v3);

  [(HMDXPCClientConnection *)self _invalidate];
}

- (void)deactivate
{
  v3 = [(HMDXPCClientConnection *)self queue];
  dispatch_assert_queue_V2(v3);

  if ([(HMDXPCClientConnection *)self hasExternallyManagedActivation])
  {

    [(HMDXPCClientConnection *)self _deactivate];
  }

  else
  {
    v4 = _HMFPreconditionFailure();
    [(HMDXPCClientConnection *)v4 _handleMessage:v5 responseHandler:v6, v7];
  }
}

- (void)_handleMessage:(id)a3 responseHandler:(id)a4
{
  v83 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v57 = a4;
  v7 = [(HMDXPCClientConnection *)self queue];
  dispatch_assert_queue_V2(v7);

  v53 = objc_autoreleasePoolPush();
  v8 = objc_alloc(MEMORY[0x277D0F770]);
  v9 = MEMORY[0x277D0F818];
  v10 = [v6 name];
  v11 = [v9 activityNameWithMessageName:v10];
  v58 = [v8 initWithName:v11];

  v12 = [v6 headers];
  v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277CCF1D0]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  [v58 setClientMetricIdentifier:v15];
  v55 = [v6 name];
  v56 = [v6 identifier];
  context = objc_autoreleasePoolPush();
  v16 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v49 = HMFGetLogIdentifier();
    v52 = [v58 identifier];
    v51 = [v52 shortDescription];
    v48 = [v56 UUIDString];
    v50 = [(HMDXPCClientConnection *)v16 name];
    v18 = [v6 destination];
    v19 = [v18 target];
    v47 = [v19 UUIDString];
    if (v57)
    {
      v20 = "";
    }

    else
    {
      v20 = " not";
    }

    v21 = [v6 messagePayload];
    if (getDenylistKeys_onceToken != -1)
    {
      dispatch_once(&getDenylistKeys_onceToken, &__block_literal_global_419);
    }

    v22 = getDenylistKeys_denylistKeys;
    v23 = [v21 secureDescriptionWithBlacklistKeys:v22];
    [v6 qualityOfService];
    v24 = HMFQualityOfServiceToString();
    *buf = 138545411;
    v66 = v49;
    v67 = 2114;
    v68 = v51;
    v69 = 2114;
    v70 = v55;
    v71 = 2114;
    v72 = v48;
    v73 = 2114;
    v74 = v50;
    v75 = 2114;
    v76 = v47;
    v77 = 2082;
    v78 = v20;
    v79 = 2113;
    v80 = v23;
    v81 = 2114;
    v82 = v24;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Received incoming message %{public}@ (%{public}@) from client '%{public}@' for target %{public}@ that does%{public}s expect a response, payload %{private}@, QoS: %{public}@", buf, 0x5Cu);
  }

  objc_autoreleasePoolPop(context);
  v25 = [(HMDXPCClientConnection *)v16 clientIdentifier];
  if (v25)
  {
    v26 = [(HMDXPCClientConnection *)v16 messageCountTracker];
    v27 = [v6 name];
    [v26 incrementCounterOfType:0 clientIdentifier:v25 messageName:v27];
  }

  [(HMDXPCClientConnection *)v16 clientName];
  v28 = [v6 mutableCopy];
  if (shouldEnableInternalDebugInterfaces__hmf_once_t48 != -1)
  {
    dispatch_once(&shouldEnableInternalDebugInterfaces__hmf_once_t48, &__block_literal_global_786);
  }

  if (shouldEnableInternalDebugInterfaces__hmf_once_v49)
  {
    v29 = [v6 messagePayload];
    v30 = *MEMORY[0x277CD0B10];
    v31 = [v29 objectForKeyedSubscript:*MEMORY[0x277CD0B10]];
    v32 = v31 == 0;

    if (!v32)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v30 = *MEMORY[0x277CD0B10];
  }

  v33 = [v6 messagePayload];
  v34 = [v33 mutableCopy];

  v35 = [MEMORY[0x277CCAD78] UUID];
  v36 = [v35 UUIDString];
  [v34 setObject:v36 forKeyedSubscript:v30];

  v37 = [v34 copy];
  [v28 setMessagePayload:v37];

LABEL_20:
  [v28 setTransport:v16];
  [v28 setActivity:v58];
  v38 = [(HMDXPCClientConnection *)v16 clientIdentifier];
  [v28 setUntrustedClientIdentifier:v38];

  if (v57)
  {
    v39 = [(HMDXPCClientConnection *)v16 requestTracker];
    v40 = [v6 identifier];
    v41 = [v6 name];
    [v39 addRequestWithIdentifier:v40 name:v41 qualityOfService:objc_msgSend(v6 isTimeoutDisabled:"qualityOfService") responseHandler:{objc_msgSend(v6, "hm_isXPCTimeoutDisabled"), v57}];

    v42 = [(HMDXPCClientConnection *)v16 clientName];
    objc_initWeak(buf, v16);
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __57__HMDXPCClientConnection__handleMessage_responseHandler___block_invoke;
    v59[3] = &unk_278674470;
    objc_copyWeak(&v64, buf);
    v60 = v58;
    v43 = v42;
    v61 = v43;
    v62 = v56;
    v63 = v6;
    [v28 setResponseHandler:v59];

    objc_destroyWeak(&v64);
    objc_destroyWeak(buf);
  }

  else
  {
    [v58 end];
  }

  v44 = [(HMDXPCClientConnection *)v16 delegate];
  v45 = [v28 copy];
  [v44 messageTransport:v16 didReceiveMessage:v45];

  objc_autoreleasePoolPop(v53);
  v46 = *MEMORY[0x277D85DE8];
}

void __57__HMDXPCClientConnection__handleMessage_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    [v11 domain];

    [v11 code];
    v7 = [WeakRetained requestTracker];
    [v7 respondToRequestWithIdentifier:*(a1 + 48) withPayload:v5 error:v11];

    if (v11)
    {
      v8 = [WeakRetained clientIdentifier];
      if (v8)
      {
        v9 = [WeakRetained messageCountTracker];
        v10 = [*(a1 + 56) name];
        [v9 incrementCounterOfType:1 clientIdentifier:v8 messageName:v10];
      }
    }

    [*(a1 + 32) end];
  }
}

- (BOOL)canSendMessage:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 transport];
  v6 = v5;
  if (v5 && ([v5 isEqual:self] & 1) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    v23 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v4 shortDescription];
      v42 = 138543874;
      v43 = v10;
      v44 = 2112;
      v45 = v11;
      v46 = 2112;
      v47 = v6;
      v12 = "%{public}@Cannot send message %@: This XPC client connection does not match the message's transport: %@";
      v24 = v9;
      v25 = 32;
LABEL_53:
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_DEBUG, v12, &v42, v25);

LABEL_54:
      goto LABEL_55;
    }

    goto LABEL_55;
  }

  if ([v4 requiresSPIEntitlement] && !-[HMDXPCClientConnection isEntitledForSPIAccess](self, "isEntitledForSPIAccess"))
  {
    v7 = objc_autoreleasePoolPush();
    v26 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v4 shortDescription];
      v42 = 138543618;
      v43 = v10;
      v44 = 2112;
      v45 = v11;
      v12 = "%{public}@Cannot send message %@: Client is not SPI entitled and message requires SPI entitlement";
      goto LABEL_52;
    }

LABEL_55:

    objc_autoreleasePoolPop(v7);
    v22 = 0;
    goto LABEL_56;
  }

  if ([v4 requiresNoSPIEntitlement] && -[HMDXPCClientConnection isEntitledForSPIAccess](self, "isEntitledForSPIAccess"))
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v4 shortDescription];
      v42 = 138543618;
      v43 = v10;
      v44 = 2112;
      v45 = v11;
      v12 = "%{public}@Cannot send message %@: Client is SPI entitled and message requires no SPI entitlement";
LABEL_52:
      v24 = v9;
      v25 = 22;
      goto LABEL_53;
    }

    goto LABEL_55;
  }

  if ([v4 isLocationAuthorized] && !-[HMDXPCClientConnection isAuthorizedForLocationAccess](self, "isAuthorizedForLocationAccess"))
  {
    v7 = objc_autoreleasePoolPush();
    v27 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v4 shortDescription];
      v42 = 138543618;
      v43 = v10;
      v44 = 2112;
      v45 = v11;
      v12 = "%{public}@Cannot send message %@: Client is not location authorized and message requires location authorization";
      goto LABEL_52;
    }

    goto LABEL_55;
  }

  if ([v4 requiresHomeLocationEntitlement] && !-[HMDXPCClientConnection isEntitledForHomeLocationAccess](self, "isEntitledForHomeLocationAccess"))
  {
    v7 = objc_autoreleasePoolPush();
    v28 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v4 shortDescription];
      v42 = 138543618;
      v43 = v10;
      v44 = 2112;
      v45 = v11;
      v12 = "%{public}@Cannot send message %@: Client is not entitled for the HomeKit location data. Please make sure the client has com.apple.private.homekit.home-location & com.apple.private.homekit.location entitlements.";
      goto LABEL_52;
    }

    goto LABEL_55;
  }

  if ([v4 requiresCameraClipsEntitlement] && !-[HMDXPCClientConnection isEntitledForCameraClipsAccess](self, "isEntitledForCameraClipsAccess"))
  {
    v7 = objc_autoreleasePoolPush();
    v29 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v4 shortDescription];
      v42 = 138543618;
      v43 = v10;
      v44 = 2112;
      v45 = v11;
      v12 = "%{public}@Cannot send message %@: Client is not camera clips entitled and message requires camera clips entitlement";
      goto LABEL_52;
    }

    goto LABEL_55;
  }

  if ([v4 requiresMultiUserSetupEntitlement] && !-[HMDXPCClientConnection isEntitledForMultiUserSetupAccess](self, "isEntitledForMultiUserSetupAccess"))
  {
    v7 = objc_autoreleasePoolPush();
    v30 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v4 shortDescription];
      v42 = 138543618;
      v43 = v10;
      v44 = 2112;
      v45 = v11;
      v12 = "%{public}@Cannot send message %@: Client is not multi user entitled and message requires multi user entitlement";
      goto LABEL_52;
    }

    goto LABEL_55;
  }

  if ([v4 requiresSetupPayloadEntitlement] && !-[HMDXPCClientConnection isEntitledToProvideAccessorySetupPayload](self, "isEntitledToProvideAccessorySetupPayload"))
  {
    v7 = objc_autoreleasePoolPush();
    v31 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v4 shortDescription];
      v42 = 138543618;
      v43 = v10;
      v44 = 2112;
      v45 = v11;
      v12 = "%{public}@Cannot send message %@: Client is not setup payload entitled and message requires setup payload entitlement";
      goto LABEL_52;
    }

    goto LABEL_55;
  }

  if ([v4 requiresMatterSetupPayloadEntitlement] && !-[HMDXPCClientConnection isEntitledToProvideMatterSetupPayload](self, "isEntitledToProvideMatterSetupPayload"))
  {
    v7 = objc_autoreleasePoolPush();
    v32 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v4 shortDescription];
      v42 = 138543618;
      v43 = v10;
      v44 = 2112;
      v45 = v11;
      v12 = "%{public}@Cannot send message %@: Client is not matter setup payload entitled and message requires matter setup payload entitlement";
      goto LABEL_52;
    }

    goto LABEL_55;
  }

  if ([v4 requiresPersonManagerEntitlement] && !-[HMDXPCClientConnection isEntitledForPersonManagerAccess](self, "isEntitledForPersonManagerAccess"))
  {
    v7 = objc_autoreleasePoolPush();
    v33 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v4 shortDescription];
      v42 = 138543618;
      v43 = v10;
      v44 = 2112;
      v45 = v11;
      v12 = "%{public}@Cannot send message %@: Client is not person manager entitled and message requires person manager entitlement";
      goto LABEL_52;
    }

    goto LABEL_55;
  }

  if ([v4 requiresWalletKeyEntitlement] && !-[HMDXPCClientConnection isEntitledForWalletKeyAccess](self, "isEntitledForWalletKeyAccess"))
  {
    v7 = objc_autoreleasePoolPush();
    v34 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v4 shortDescription];
      v42 = 138543618;
      v43 = v10;
      v44 = 2112;
      v45 = v11;
      v12 = "%{public}@Cannot send message %@: Client is not wallet key entitled and message requires wallet key entitlement";
      goto LABEL_52;
    }

    goto LABEL_55;
  }

  if (![(HMDXPCClientConnection *)self isActivated])
  {
    v13 = [(HMDXPCClientConnection *)self requestTracker];
    v14 = [v13 requestIdentifiers];
    v15 = [v4 identifier];
    v16 = [v14 containsObject:v15];

    if ((v16 & 1) == 0)
    {
      v7 = objc_autoreleasePoolPush();
      v35 = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = HMFGetLogIdentifier();
        v11 = [v4 shortDescription];
        v42 = 138543618;
        v43 = v10;
        v44 = 2112;
        v45 = v11;
        v12 = "%{public}@Cannot send message %@: Connection is not activated and the message isn't responding to a pending request";
        goto LABEL_52;
      }

      goto LABEL_55;
    }
  }

  v17 = [v4 sendPolicy];
  if (v17)
  {
    v18 = v17;
    v19 = [v4 sendPolicy];
    v20 = [(HMDXPCClientConnection *)self sendPolicyParameters];
    v21 = [v19 canSendWithPolicyParameters:v20];

    if ((v21 & 1) == 0)
    {
      v7 = objc_autoreleasePoolPush();
      v38 = self;
      v9 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_55;
      }

      v10 = HMFGetLogIdentifier();
      v39 = [v4 shortDescription];
      v40 = [v4 sendPolicy];
      v41 = [(HMDXPCClientConnection *)v38 sendPolicyParameters];
      v42 = 138544130;
      v43 = v10;
      v44 = 2112;
      v45 = v39;
      v46 = 2112;
      v47 = v40;
      v48 = 2112;
      v49 = v41;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Cannot send message %@: Message send policy %@ does not pass client connection send policy: %@", &v42, 0x2Au);

      goto LABEL_54;
    }
  }

  v22 = 1;
LABEL_56:

  v36 = *MEMORY[0x277D85DE8];
  return v22;
}

- (NSDictionary)stateDump
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(HMDXPCClientConnection *)self name];
  [v3 setObject:v4 forKeyedSubscript:@"Name"];

  v5 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMDXPCClientConnection clientPid](self, "clientPid")}];
  [v3 setObject:v5 forKeyedSubscript:@"PID"];

  [(HMDXPCClientConnection *)self entitlements];
  v6 = HMXPCClientEntitlementsShortDescription();
  [v3 setObject:v6 forKeyedSubscript:@"Entitlements"];

  [(HMDXPCClientConnection *)self isActivated];
  v7 = HMFBooleanToString();
  [v3 setObject:v7 forKeyedSubscript:@"Activated"];

  v8 = [(HMDXPCClientConnection *)self sendPolicyParameters];
  v9 = [v8 description];
  [v3 setObject:v9 forKeyedSubscript:@"Send Policy Parameters"];

  v10 = [(HMDXPCClientConnection *)self userInfo];
  [v3 setObject:v10 forKeyedSubscript:@"User Info"];

  v11 = [(HMDXPCClientConnection *)self requestTracker];
  v12 = [v11 requestIdentifiers];
  [v3 setObject:v12 forKeyedSubscript:@"Active Requests"];

  v13 = [v3 copy];

  return v13;
}

- (void)updateSendPolicyParameters:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Updating sendPolicyParameters to %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDXPCClientConnection *)v6 setSendPolicyParameters:v4];

  v9 = *MEMORY[0x277D85DE8];
}

- (NSString)applicationBundleIdentifier
{
  v2 = [(HMDXPCClientConnection *)self processInfo];
  v3 = [v2 applicationInfo];
  v4 = [v3 bundleIdentifier];

  if (v4)
  {
    v5 = v4;
  }

  return v4;
}

- (void)setSendPolicyParameters:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
  sendPolicyParameters = self->_sendPolicyParameters;
  self->_sendPolicyParameters = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setProcessInfo:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  processInfo = self->_processInfo;
  self->_processInfo = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isPlatformBinary
{
  v3 = [(HMDXPCClientConnection *)self xpcConnection:0];
  v4 = v3;
  if (v3)
  {
    [v3 auditToken];
  }

  [(HMDXPCClientConnection *)self clientPid];
  if (csops_audittoken())
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isEntitledForHomeLocationAccess
{
  v2 = [(HMDXPCClientConnection *)self xpcConnection];
  v3 = validateEntitlementForConnection(@"com.apple.private.homekit.home-location", v2);

  return v3;
}

- (BOOL)isAuthorizedForLocationAccess
{
  if (([(HMDXPCClientConnection *)self entitlements]& 0x400) != 0)
  {
    v3 = [objc_opt_class() bundleForLocationManager];
    if (!v3)
    {
      v5 = 0;
      goto LABEL_6;
    }

    v4 = [objc_alloc(MEMORY[0x277D0F800]) initWithBundle:v3];
  }

  else
  {
    v3 = [(HMDXPCClientConnection *)self processInfo];
    v4 = [v3 locationAuthorization];
  }

  v5 = v4;
LABEL_6:

  v6 = [v5 isAuthorized];
  return v6;
}

- (BOOL)isAuthorizedForMicrophoneAccess
{
  v2 = *MEMORY[0x277D6C1A8];
  v3 = [(HMDXPCClientConnection *)self xpcConnection];
  v4 = v3;
  if (v3)
  {
    [v3 auditToken];
  }

  v5 = TCCAccessCheckAuditToken() != 0;

  return v5;
}

- (void)setUserInfo:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDXPCClientConnection *)self queue];
  dispatch_assert_queue_V2(v5);

  os_unfair_lock_lock_with_options();
  userInfo = self->_userInfo;
  if (HMFEqualObjects())
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v7 = self->_userInfo;
    v8 = [v4 copy];
    v9 = self->_userInfo;
    self->_userInfo = v8;

    os_unfair_lock_unlock(&self->_lock);
    v10 = [(HMDXPCClientConnection *)self clientName];
    if (v10)
    {
      v11 = [(HMDXPCClientConnection *)self requestTracker];
      [v11 setClientName:v10];
    }

    v12 = MEMORY[0x277CCACA8];
    v13 = [(HMDXPCClientConnection *)self name];
    v14 = [(HMDXPCClientConnection *)self clientPid];
    v15 = [(HMDXPCClientConnection *)self clientUUID];
    v16 = [v12 stringWithFormat:@"%@/%d/%@", v13, v14, v15];
    [(HMDXPCClientConnection *)self setLogIdentifier:v16];

    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v20;
      v24 = 2112;
      v25 = v4;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Updated user info: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    if (!v7)
    {
      [(HMDXPCClientConnection *)v18 _start];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [objc_opt_class() shortDescription];
  v5 = [(HMDXPCClientConnection *)self name];
  v6 = [v3 stringWithFormat:@"%@ %@ (%d)", v4, v5, -[HMDXPCClientConnection clientPid](self, "clientPid")];

  return v6;
}

- (void)dealloc
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4 = [(HMDXPCClientConnection *)self requestTracker];
  [v4 cancelAllRequests];

  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v12 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@XPC connection got deallocated.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v10.receiver = v6;
  v10.super_class = HMDXPCClientConnection;
  [(HMDXPCClientConnection *)&v10 dealloc];
  v9 = *MEMORY[0x277D85DE8];
}

- (HMDXPCClientConnection)initWithConnection:(id)a3 queue:(id)a4 messageCountTracker:(id)a5 requestTracker:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v11)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!v12)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!v13)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v15 = v14;
  if (!v14)
  {
LABEL_11:
    v22 = _HMFPreconditionFailure();
    return [(HMDXPCClientConnection *)v22 initWithConnection:v23 queue:v24, v25];
  }

  v26.receiver = self;
  v26.super_class = HMDXPCClientConnection;
  v16 = [(HMDXPCClientConnection *)&v26 init];
  if (v16)
  {
    [v11 setQueue:v12];
    objc_storeStrong(&v16->_xpcConnection, a3);
    objc_storeStrong(&v16->_queue, a4);
    objc_storeStrong(&v16->_messageCountTracker, a5);
    objc_storeStrong(&v16->_requestTracker, a6);
    v16->_state = 0;
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", objc_msgSend(v11, "processIdentifier")];
    logIdentifier = v16->_logIdentifier;
    v16->_logIdentifier = v17;

    v16->_entitlements = [HMDXPCClientConnection entitlementsForConnection:v11];
    v16->_entitledForAPIAccess = validateEntitlementForConnection(@"com.apple.developer.homekit", v11);
    v16->_entitledForBackgroundMode = validateEntitlementForConnection(@"com.apple.developer.homekit.background-mode", v11);
    v16->_entitledForCameraClipsAccess = validateEntitlementForConnection(@"com.apple.private.homekit.cameraclips", v11);
    v16->_entitledForMultiUserSetupAccess = validateEntitlementForConnection(@"com.apple.private.homekit.multi-user.setup", v11);
    v16->_entitledForPersonManagerAccess = validateEntitlementForConnection(@"com.apple.private.homekit.person-manager", v11);
    v16->_entitledForWalletKeyAccess = validateEntitlementForConnection(@"com.apple.private.homekit.wallet-key", v11);
    v19 = [[HMDXPCMessageSendPolicyParameters alloc] initWithEntitlements:v16->_entitlements];
    sendPolicyParameters = v16->_sendPolicyParameters;
    v16->_sendPolicyParameters = v19;
  }

  return v16;
}

- (HMDXPCClientConnection)initWithConnection:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = v7;
    v9 = +[HMDXPCMessageCountTracker sharedTracker];
    v10 = [[HMDXPCRequestTracker alloc] initWithQueue:v8];
    v11 = [(HMDXPCClientConnection *)self initWithConnection:v6 queue:v8 messageCountTracker:v9 requestTracker:v10];

    return v11;
  }

  else
  {
    v13 = _HMFPreconditionFailure();
    return __37__HMDXPCClientConnection_logCategory__block_invoke(v13);
  }
}

void __37__HMDXPCClientConnection_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v43_57481;
  logCategory__hmf_once_v43_57481 = v1;
}

+ (unint64_t)entitlementsForConnection:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = validateEntitlementForConnection(@"com.apple.developer.homekit", v4);
  if (validateEntitlementForConnection(@"com.apple.developer.homekit.background-mode", v4))
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  if (!validateEntitlementForConnection(@"com.apple.private.homekit", v4))
  {
    if (!validateEntitlementForConnection(@"com.apple.homekit.private-spi-access", v4))
    {
      goto LABEL_10;
    }

    v7 = objc_autoreleasePoolPush();
    v8 = a1;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v14 = 138543874;
      v15 = v10;
      v16 = 2112;
      v17 = @"com.apple.private.homekit";
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Client should adopt %@ entitlement: %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v6 |= 4uLL;
LABEL_10:
  if (validateEntitlementForConnection(@"com.apple.private.homekit.pairing-identity.private", v4))
  {
    v11 = v6 | 0x18;
  }

  else if (validateEntitlementForConnection(@"com.apple.private.homekit.pairing-identity", v4))
  {
    v11 = v6 | 8;
  }

  else
  {
    v11 = v6;
  }

  if (validateEntitlementForConnection(@"com.apple.private.homekit.remote-login.private", v4))
  {
    v11 |= 0x20uLL;
  }

  if (validateEntitlementForConnection(@"com.apple.developer.homekit.allow-setup-payload", v4))
  {
    v11 |= 0x40uLL;
  }

  if (validateEntitlementForConnection(@"com.apple.developer.matter.allow-setup-payload", v4))
  {
    v11 |= 0x200000uLL;
  }

  if (validateEntitlementForConnection(@"com.apple.private.homekit.cameraclips", v4))
  {
    v11 |= 0x80uLL;
  }

  if (validateEntitlementForConnection(@"com.apple.private.homekit.connectivity-info", v4))
  {
    v11 |= 0x100uLL;
  }

  if (validateEntitlementForConnection(@"com.apple.private.homekit.multi-user.setup", v4))
  {
    v11 |= 0x200uLL;
  }

  if (validateEntitlementForConnection(@"com.apple.private.homekit.location", v4))
  {
    v11 |= 0x400uLL;
  }

  if (validateEntitlementForConnection(@"com.apple.private.homekit.home-location", v4))
  {
    v11 |= 0x80000uLL;
  }

  if (validateEntitlementForConnection(@"com.apple.private.homekit.shortcuts-automation-access", v4))
  {
    v11 |= 0x800uLL;
  }

  if (validateEntitlementForConnection(@"com.apple.private.homekit.messaging", v4))
  {
    v11 |= 0x1000uLL;
  }

  if (validateEntitlementForConnection(@"com.apple.private.homekit.person-manager", v4))
  {
    v11 |= 0x2000uLL;
  }

  if (validateEntitlementForConnection(@"com.apple.private.homekit.allow-secure-access", v4))
  {
    v11 |= 0x4000uLL;
  }

  if (validateEntitlementForConnection(@"com.apple.private.homekit.diagnostics", v4))
  {
    v11 |= 0x8000uLL;
  }

  if (validateEntitlementForConnection(@"com.apple.private.homekit.state-dump", v4))
  {
    v11 |= 0x10000uLL;
  }

  if (validateEntitlementForConnection(@"com.apple.private.homekit.wallet-key", v4))
  {
    v11 |= 0x20000uLL;
  }

  if (validateEntitlementForConnection(@"com.apple.private.homekit.assistant-identifiers", v4))
  {
    v11 |= 0x40000uLL;
  }

  if (validateEntitlementForConnection(@"com.apple.private.homekit.location-feedback-debug", v4))
  {
    v11 |= 0x100000uLL;
  }

  if (validateEntitlementForConnection(@"com.apple.private.homekit.modern-messaging", v4))
  {
    v11 |= 0x400000uLL;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

@end