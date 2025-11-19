@interface HMDDeviceSetupSession
+ (BOOL)isRoleSupported:(int64_t)a3;
+ (id)logCategory;
- (BOOL)isEqual:(id)a3;
- (HMDDeviceSetupSession)init;
- (HMDDeviceSetupSession)initWithIdentifier:(id)a3 role:(int64_t)a4 homeManager:(id)a5;
- (HMDDeviceSetupSession)initWithIdentifier:(id)a3 role:(int64_t)a4 homeManager:(id)a5 upSecondsFactory:(id)a6 userDefaults:(id)a7;
- (HMDDeviceSetupSessionDelegate)delegate;
- (HMDHomeManager)homeManager;
- (id)logIdentifier;
- (id)messageDestination;
- (id)messageDispatcher;
- (id)setupTrackingInfo;
- (int64_t)role;
- (unint64_t)hash;
- (void)__registerForMessages;
- (void)_closeWithError:(id)a3;
- (void)_handleClose:(id)a3;
- (void)_handleReceiveData:(id)a3;
- (void)_sendRequestData:(id)a3;
- (void)close:(id)a3;
- (void)open;
- (void)updateAccessoryUUIDAndNotifyDelegate:(id)a3 accessoryIDSIdentifier:(id)a4 accessoryCategory:(id)a5;
@end

@implementation HMDDeviceSetupSession

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (HMDDeviceSetupSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)setupTrackingInfo
{
  os_unfair_lock_lock_with_options();
  v14 = [HMDDeviceSetupTrackingInfo alloc];
  v15 = [(HMDDeviceSetupSession *)self identifier];
  v3 = [v15 copy];
  v4 = [(HMDDeviceSetupSession *)self startTime];
  v5 = [(HMDDeviceSetupSession *)self endTime];
  v6 = [(HMDDeviceSetupSession *)self role];
  v7 = [(HMDDeviceSetupSession *)self accessoryUUID];
  v8 = [v7 copy];
  v9 = [(HMDDeviceSetupSession *)self accessoryCategory];
  v10 = [(HMDDeviceSetupSession *)self accessoryIDSIdentifier];
  v11 = [(HMDDeviceSetupSession *)self setupClientBundleID];
  v12 = [(HMDDeviceSetupTrackingInfo *)v14 initWithIdentifier:v3 startTime:v4 endTime:v5 role:v6 accessoryUUID:v8 accessoryCategory:v9 accessoryIDSIdentifier:v10 setupClientBundleID:v11];

  os_unfair_lock_unlock(&self->_lock);

  return v12;
}

- (id)logIdentifier
{
  v2 = [(HMDDeviceSetupSession *)self identifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)_sendRequestData:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(HMFActivity *)self->_activity markWithReason:@"Sending data"];
  [(HMFActivity *)self->_activity markWithReason:@"HMDDeviceSetupSession.sendRequestData"];
  v19 = *MEMORY[0x277CCFC98];
  v20[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v6 = [MEMORY[0x277D0F818] entitledMessageWithName:*MEMORY[0x277CCFCB8] messagePayload:v5];
  v7 = [(HMDDeviceSetupSession *)self messageDispatcher];
  v8 = [(HMDDeviceSetupSession *)self messageDestination];
  v9 = [v8 target];
  [v7 sendMessage:v6 target:v9];

  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v13;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Sending data : %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)_handleReceiveData:(id)a3
{
  v4 = a3;
  activity = self->_activity;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__HMDDeviceSetupSession__handleReceiveData___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(HMFActivity *)activity performBlock:v7];
}

void __44__HMDDeviceSetupSession__handleReceiveData___block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 8) markWithReason:@"Received data"];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v45 = v5;
    v46 = 2112;
    v47 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Received receive data request : %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *MEMORY[0x277CCFC98];
  v8 = [*(a1 + 40) dataForKey:*MEMORY[0x277CCFC98]];
  if (v8)
  {
    v9 = *(a1 + 32);
    os_unfair_lock_lock_with_options();
    v10 = [*(a1 + 40) clientIdentifier];
    [*(a1 + 32) setSetupClientBundleID:v10];

    os_unfair_lock_unlock(v9 + 4);
    v11 = [*(a1 + 32) internal];
    v40 = 0;
    v41 = 0;
    v38 = 0;
    v39 = 0;
    v12 = [v11 processSessionData:v8 outAccessoryUUID:&v41 outAccessoryCategory:&v40 outAccessoryIDSIdentifier:&v39 error:&v38];
    v37 = v41;
    v13 = v40;
    v14 = v39;
    v15 = v38;

    if (v12)
    {
      [*(a1 + 32) updateAccessoryUUIDAndNotifyDelegate:v37 accessoryIDSIdentifier:v14 accessoryCategory:v13];
      v16 = [*(a1 + 32) internal];
      v17 = [v16 sessionData];

      if (v17)
      {
        v42 = v7;
        v43 = v17;
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      }

      else
      {
        v18 = 0;
      }

      [*(a1 + 40) respondWithPayload:v18];
      v29 = [*(a1 + 32) internal];
      v30 = [v29 state] == 3;

      if (v30)
      {
        context = objc_autoreleasePoolPush();
        v31 = *(a1 + 32);
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v35 = HMFGetLogIdentifier();
          [*(a1 + 32) isOpen];
          v33 = HMFBooleanToString();
          *buf = 138543618;
          v45 = v35;
          v46 = 2112;
          v47 = v33;
          _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@Going to close the session as the state is now complete: [isOpen : %@]", buf, 0x16u);
        }

        objc_autoreleasePoolPop(context);
        [*(a1 + 32) _closeWithError:0];
      }
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = *(a1 + 32);
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543618;
        v45 = v27;
        v46 = 2112;
        v47 = v15;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to process session data with error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      v28 = [*(a1 + 40) responseHandler];

      if (!v28)
      {
        goto LABEL_21;
      }

      v18 = [*(a1 + 40) responseHandler];
      (v18)[2](v18, v15, 0);
    }

LABEL_21:
    goto LABEL_22;
  }

  v19 = objc_autoreleasePoolPush();
  v20 = *(a1 + 32);
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = HMFGetLogIdentifier();
    *buf = 138543362;
    v45 = v22;
    _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Missing session data", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v19);
  v23 = *(a1 + 40);
  v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:27];
  [v23 respondWithError:v15];
LABEL_22:

  v34 = *MEMORY[0x277D85DE8];
}

- (void)close:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v15 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Called to close session", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDDeviceSetupSession *)v6 clientQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __31__HMDDeviceSetupSession_close___block_invoke;
  v12[3] = &unk_27868A750;
  v12[4] = v6;
  v13 = v4;
  v10 = v4;
  dispatch_async(v9, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleClose:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(HMFActivity *)self->_activity begin];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    [(HMDDeviceSetupSession *)v6 isOpen];
    v9 = HMFBooleanToString();
    v12 = 138543874;
    v13 = v8;
    v14 = 2112;
    v15 = v4;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Received close request : %@, [isOpen = %@]", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [v4 errorForKey:*MEMORY[0x277CCFCA0]];
  [(HMDDeviceSetupSession *)v6 _closeWithError:v10];
  [v4 respondWithPayload:0];
  [(HMFActivity *)self->_activity end];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_closeWithError:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    [(HMDDeviceSetupSession *)v6 isOpen];
    v9 = HMFBooleanToString();
    *buf = 138543874;
    v42 = v8;
    v43 = 2112;
    v44 = v9;
    v45 = 2112;
    v46 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@CloseWithError: [isOpen: %@] [error: %@]", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  if ([(HMDDeviceSetupSession *)v6 isOpen])
  {
    v10 = objc_autoreleasePoolPush();
    v11 = v6;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v42 = v13;
      v43 = 2112;
      v44 = v4;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Closing the session with error:%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    [(HMFActivity *)v11->_activity markWithReason:@"Closing"];
    activity = v11->_activity;
    v39 = @"errorCode";
    v15 = MEMORY[0x277CCABB0];
    v16 = activity;
    v17 = [v15 numberWithInteger:{objc_msgSend(v4, "code")}];
    v40 = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];

    [(HMFActivity *)v11->_activity markWithReason:@"HMDDeviceSetupSession.close"];
    [(HMDDeviceSetupSession *)v11 setOpen:0];
    if (v4)
    {
      v19 = encodeRootObjectForIncomingXPCMessage(v4, 0);
      v37 = *MEMORY[0x277CCFCA0];
      v38 = v19;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    }

    else
    {
      v21 = [(HMDDeviceSetupSession *)v11 internal];
      v22 = [v21 userInfo];

      if (!v22)
      {
        v20 = 0;
        goto LABEL_11;
      }

      v19 = [(HMDDeviceSetupSession *)v11 internal];
      v23 = [v19 userInfo];
      v36 = v23;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    }

LABEL_11:
    os_unfair_lock_lock_with_options();
    [(HMDDeviceSetupSession *)v11 setSessionError:v4];
    v24 = [(HMDDeviceSetupSession *)v11 upSecondsFactory];
    [(HMDDeviceSetupSession *)v11 setEndTime:v24[2]()];

    os_unfair_lock_unlock(&v11->_lock);
    v25 = [MEMORY[0x277D0F818] entitledMessageWithName:*MEMORY[0x277CCFC90] messagePayload:v20];
    v26 = [(HMDDeviceSetupSession *)v11 messageDispatcher];
    v27 = [(HMDDeviceSetupSession *)v11 messageDestination];
    v28 = [v27 target];
    [v26 sendMessage:v25 target:v28];

    v29 = objc_autoreleasePoolPush();
    v30 = v11;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543874;
      v42 = v32;
      v43 = 2112;
      v44 = v4;
      v45 = 2112;
      v46 = v25;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@Going to call the delegate with error:%@, Also sending the close message to client: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v29);
    v33 = [(HMDDeviceSetupSession *)v30 delegate];
    [v33 setupSession:v30 didCloseWithError:v4];
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)updateAccessoryUUIDAndNotifyDelegate:(id)a3 accessoryIDSIdentifier:(id)a4 accessoryCategory:(id)a5
{
  v17 = a3;
  v8 = a4;
  v9 = a5;
  os_unfair_lock_lock_with_options();
  if (v17)
  {
    v10 = [(HMDDeviceSetupSession *)self accessoryUUID];
    v11 = [v17 hmf_isEqualToUUID:v10];

    v12 = [v17 copy];
    [(HMDDeviceSetupSession *)self setAccessoryUUID:v12];
    v13 = v11 ^ 1;

    if (!v8)
    {
      goto LABEL_3;
    }

LABEL_6:
    v14 = [v8 copy];
    [(HMDDeviceSetupSession *)self setAccessoryIDSIdentifier:v14];

    if (!v9)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v13 = 0;
  if (v8)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v9)
  {
LABEL_7:
    v15 = [v9 copy];
    [(HMDDeviceSetupSession *)self setAccessoryCategory:v15];
  }

LABEL_8:
  os_unfair_lock_unlock(&self->_lock);
  if (v13)
  {
    v16 = [(HMDDeviceSetupSession *)self delegate];
    [v16 setupSession:self didReceiveAccessoryWithUUID:v17];
  }
}

- (void)open
{
  v3 = self->_activity;
  [(HMFActivity *)v3 begin];
  v4 = [(HMDDeviceSetupSession *)self clientQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __29__HMDDeviceSetupSession_open__block_invoke;
  v6[3] = &unk_27868A750;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __29__HMDDeviceSetupSession_open__block_invoke(uint64_t a1)
{
  v47[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) homeManager];
  [*(a1 + 40) markWithReason:@"Opening"];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v43 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Opening", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = *(a1 + 40);
  v46 = @"HomeManagerUUID";
  v8 = v7;
  v9 = [v2 uuid];
  v10 = HMDailyRotatedUUID();
  v11 = [v10 UUIDString];
  v12 = v11;
  v13 = @"no uuid";
  if (v11)
  {
    v13 = v11;
  }

  v47[0] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:&v46 count:1];

  [*(a1 + 40) markWithReason:@"HMDDeviceSetupSession.open"];
  [*(a1 + 32) setOpen:1];
  if ([*(a1 + 32) role])
  {
    goto LABEL_6;
  }

  v15 = [*(a1 + 32) internal];
  v40 = 0;
  v41 = 0;
  v38 = 0;
  v39 = 0;
  v16 = [v15 processSessionData:0 outAccessoryUUID:&v41 outAccessoryCategory:&v40 outAccessoryIDSIdentifier:&v39 error:&v38];
  v17 = v41;
  v18 = v40;
  v19 = v39;
  v20 = v38;

  if ((v16 & 1) == 0)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = *(a1 + 32);
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v43 = v27;
      v44 = 2112;
      v45 = v20;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to send initial session data with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    [*(a1 + 32) _closeWithError:v20];
    [*(a1 + 32) updateAccessoryUUIDAndNotifyDelegate:v17 accessoryIDSIdentifier:v19 accessoryCategory:v18];
    goto LABEL_13;
  }

  [*(a1 + 32) updateAccessoryUUIDAndNotifyDelegate:v17 accessoryIDSIdentifier:v19 accessoryCategory:v18];
  v21 = [*(a1 + 32) internal];
  v22 = [v21 state];

  v23 = *(a1 + 32);
  if (v22 == 3)
  {
    [v23 _closeWithError:0];
LABEL_13:

    goto LABEL_14;
  }

  v29 = [v23 internal];
  v30 = [v29 sessionData];

  if (v30)
  {
    [*(a1 + 32) _sendRequestData:v30];
  }

  else
  {
    v31 = objc_autoreleasePoolPush();
    v32 = *(a1 + 32);
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      HMFGetLogIdentifier();
      v34 = v37 = v31;
      *buf = 138543362;
      v43 = v34;
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@Missing session data", buf, 0xCu);

      v31 = v37;
    }

    objc_autoreleasePoolPop(v31);
    v35 = *(a1 + 32);
    v36 = [MEMORY[0x277CCA9B8] hmErrorWithCode:56];
    [v35 _closeWithError:v36];
  }

  if (v30)
  {
LABEL_6:
    [*(a1 + 40) end];
  }

LABEL_14:

  v28 = *MEMORY[0x277D85DE8];
}

- (void)__registerForMessages
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = [(HMDDeviceSetupSession *)self messageDispatcher];
  v4 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v5 = *MEMORY[0x277CCFC90];
  v11[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [v3 registerForMessage:v5 receiver:self policies:v6 selector:sel__handleClose_];

  v7 = *MEMORY[0x277CCFCB8];
  v10 = v4;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  [v3 registerForMessage:v7 receiver:self policies:v8 selector:sel__handleReceiveData_];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)messageDispatcher
{
  v2 = [(HMDDeviceSetupSession *)self homeManager];
  v3 = [v2 messageDispatcher];

  return v3;
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x277D0F820]);
  v4 = [(HMDDeviceSetupSession *)self identifier];
  v5 = [v3 initWithTarget:v4];

  return v5;
}

- (int64_t)role
{
  v2 = [(HMDDeviceSetupSession *)self internal];
  v3 = [objc_opt_class() role];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      v7 = [(HMDDeviceSetupSession *)self identifier];
      v8 = [(HMDDeviceSetupSession *)v6 identifier];
      v9 = [v7 isEqual:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = [(HMDDeviceSetupSession *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (HMDDeviceSetupSession)initWithIdentifier:(id)a3 role:(int64_t)a4 homeManager:(id)a5 upSecondsFactory:(id)a6 userDefaults:(id)a7
{
  v47 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (!v12)
  {
    v35 = objc_autoreleasePoolPush();
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = HMFGetLogIdentifier();
      *buf = 138543362;
      v46 = v37;
      v38 = "%{public}@Identifier is a required parameter";
LABEL_10:
      _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, v38, buf, 0xCu);
    }

LABEL_11:

    objc_autoreleasePoolPop(v35);
    v39 = 0;
    goto LABEL_15;
  }

  if (!v13)
  {
    v35 = objc_autoreleasePoolPush();
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = HMFGetLogIdentifier();
      *buf = 138543362;
      v46 = v37;
      v38 = "%{public}@Home manager is a required parameter";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v44.receiver = self;
  v44.super_class = HMDDeviceSetupSession;
  v16 = [(HMDDeviceSetupSession *)&v44 init];
  v17 = v16;
  if (v16)
  {
    v16->_lock._os_unfair_lock_opaque = 0;
    v18 = [v12 copy];
    identifier = v17->_identifier;
    v17->_identifier = v18;

    objc_storeWeak(&v17->_homeManager, v13);
    v20 = HMDispatchQueueNameString();
    v21 = [v20 UTF8String];
    v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v23 = dispatch_queue_create(v21, v22);
    clientQueue = v17->_clientQueue;
    v17->_clientQueue = v23;

    v25 = objc_alloc(MEMORY[0x277D0F770]);
    v26 = MEMORY[0x277CCACA8];
    v27 = [(NSUUID *)v17->_identifier UUIDString];
    v28 = [v26 stringWithFormat:@"Device Setup Session (%@)", v27];
    v29 = [v13 setupActivity];
    v30 = [v25 initWithName:v28 parent:v29];
    activity = v17->_activity;
    v17->_activity = v30;

    v32 = _Block_copy(v14);
    upSecondsFactory = v17->_upSecondsFactory;
    v17->_upSecondsFactory = v32;

    if (a4)
    {
      v34 = [[HMDDeviceSetupServerSession alloc] initWithHomeManager:v13 userDefaults:v15];
    }

    else
    {
      v34 = [[HMDDeviceSetupClientSession alloc] initWithHomeManager:v13 userDefaults:v15 sessionIdentifier:v12];
    }

    internal = v17->_internal;
    v17->_internal = &v34->super;

    v41 = [(HMDDeviceSetupSession *)v17 upSecondsFactory];
    v17->_startTime = v41[2]();

    [(HMDDeviceSetupSession *)v17 __registerForMessages];
    [(HMDDeviceSetupSession *)v17 open];
  }

  self = v17;
  v39 = self;
LABEL_15:

  v42 = *MEMORY[0x277D85DE8];
  return v39;
}

- (HMDDeviceSetupSession)initWithIdentifier:(id)a3 role:(int64_t)a4 homeManager:(id)a5
{
  v8 = MEMORY[0x277CBEBD0];
  v9 = a5;
  v10 = a3;
  v11 = [v8 standardUserDefaults];
  v12 = [(HMDDeviceSetupSession *)self initWithIdentifier:v10 role:a4 homeManager:v9 upSecondsFactory:&__block_literal_global_37887 userDefaults:v11];

  return v12;
}

- (HMDDeviceSetupSession)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t19_37896 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t19_37896, &__block_literal_global_81);
  }

  v3 = logCategory__hmf_once_v20_37897;

  return v3;
}

void __36__HMDDeviceSetupSession_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v20_37897;
  logCategory__hmf_once_v20_37897 = v1;
}

+ (BOOL)isRoleSupported:(int64_t)a3
{
  if (!a3)
  {
    v3 = off_278666110;
    return [(__objc2_class *)*v3 isSupported];
  }

  if (a3 == 1)
  {
    v3 = off_278666118;
    return [(__objc2_class *)*v3 isSupported];
  }

  return 0;
}

@end