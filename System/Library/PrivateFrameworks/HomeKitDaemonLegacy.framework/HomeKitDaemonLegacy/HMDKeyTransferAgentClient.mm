@interface HMDKeyTransferAgentClient
+ (id)logCategory;
- (BOOL)_newDeviceSeen:(id)seen;
- (HMDKeyTransferAgentClient)initWithHomeManager:(id)manager;
- (id)_deviceWithUUID:(id)d;
- (void)__accessoryIsReachable:(id)reachable;
- (void)__accountChanged:(id)changed;
- (void)__deviceAddedToAccount:(id)account;
- (void)__deviceRemovedFromAccount:(id)account;
- (void)__deviceUpdated:(id)updated;
- (void)_beginBonjourResolution:(BOOL)resolution;
- (void)_device:(id)_device addedToAccount:(id)account;
- (void)_device:(id)_device removedFromAccount:(id)account;
- (void)_endPairingWithError:(id)error suspendingTimer:(BOOL)timer;
- (void)_handleKeyTransferAgentMessage:(id)message;
- (void)_handleResidentProvisioningStatusChanged:(id)changed;
- (void)_havePairVerifiedAccessoryWithKeyUUID:(id)d forDevice:(id)device;
- (void)_haveVerifiedTwoFactorAuthenticationWithKeyUUID:(id)d forTarget:(id)target;
- (void)_reallyBeginBonjourResolution;
- (void)_restartKeyTransfer:(id)transfer;
- (void)_saveKeyPlist;
- (void)_sendATVPrivateKey:(id)key withDevice:(id)device retry:(unint64_t)retry;
- (void)_sendIOSPublicKey:(id)key withDevice:(id)device;
- (void)_startBrowser;
- (void)_startPairingWithKeyUUID:(id)d forTarget:(id)target;
- (void)_stopBrowser;
- (void)_tfaVerificationCompleteForKeyUUID:(id)d forTarget:(id)target;
- (void)_tryPairingWithAccessories:(id)accessories completionHandler:(id)handler;
- (void)dealloc;
- (void)netService:(id)service didUpdateTXTRecord:(id)record;
- (void)netServiceBrowser:(id)browser didAddService:(id)service;
- (void)netServiceBrowser:(id)browser didStopBrowsingWithError:(id)error;
- (void)networkMonitorIsReachable:(id)reachable;
- (void)queryPlistDevices;
- (void)receivedBonjourTXTFrom:(id)from withUUIDData:(id)data;
- (void)resetConfig;
- (void)setResidentProvisioningStatus:(unint64_t)status;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDKeyTransferAgentClient

- (void)netServiceBrowser:(id)browser didAddService:(id)service
{
  serviceCopy = service;
  [serviceCopy setDelegate:self];
  tXTRecord = [serviceCopy TXTRecord];
  v6 = [tXTRecord objectForKey:@"uuid"];
  [(HMDKeyTransferAgentClient *)self receivedBonjourTXTFrom:serviceCopy withUUIDData:v6];
}

- (void)netService:(id)service didUpdateTXTRecord:(id)record
{
  serviceCopy = service;
  v7 = [record objectForKey:@"uuid"];
  [(HMDKeyTransferAgentClient *)self receivedBonjourTXTFrom:serviceCopy withUUIDData:v7];
}

- (void)netServiceBrowser:(id)browser didStopBrowsingWithError:(id)error
{
  v21 = *MEMORY[0x277D85DE8];
  browserCopy = browser;
  errorCopy = error;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (errorCopy)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v18 = v12;
      v19 = 2112;
      v20 = errorCopy;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Browsing got stop delegate with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    workQueue = [(HMDKeyTransferAgent *)selfCopy workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__HMDKeyTransferAgentClient_netServiceBrowser_didStopBrowsingWithError___block_invoke;
    block[3] = &unk_279735D00;
    block[4] = selfCopy;
    dispatch_async(workQueue, block);
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v14;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Browsing stopped.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)receivedBonjourTXTFrom:(id)from withUUIDData:(id)data
{
  fromCopy = from;
  dataCopy = data;
  workQueue = [(HMDKeyTransferAgent *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HMDKeyTransferAgentClient_receivedBonjourTXTFrom_withUUIDData___block_invoke;
  block[3] = &unk_279734960;
  v12 = fromCopy;
  v13 = dataCopy;
  selfCopy = self;
  v9 = dataCopy;
  v10 = fromCopy;
  dispatch_async(workQueue, block);
}

void __65__HMDKeyTransferAgentClient_receivedBonjourTXTFrom_withUUIDData___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) name];
  if (*(a1 + 40) && (v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:*(a1 + 40) encoding:4]) != 0)
  {
    v4 = v3;
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 48);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = HMFGetLogIdentifier();
      v15 = 138543874;
      v16 = v8;
      v17 = 2112;
      v18 = v2;
      v19 = 2112;
      v20 = v4;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@HMDHomeManager %@ advertised key transfer UUID %@ (Bonjour)", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [*(a1 + 48) bonjourKeys];
    [v9 setObject:v4 forKey:v2];

    [*(a1 + 48) _newDeviceSeen:v2];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 48);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v13;
      v17 = 2112;
      v18 = v2;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@HMDHomeManager %@ no longer advertising key transfer UUID (Bonjour)", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v4 = [*(a1 + 48) bonjourKeys];
    [v4 removeObjectForKey:v2];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_handleResidentProvisioningStatusChanged:(id)changed
{
  v25 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = [changedCopy stringForKey:@"data"];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v9;
      v23 = 2112;
      v24 = v5;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Got broadcast info that %@ has been successfully peered with.", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    idsKeys = [(HMDKeyTransferAgentClient *)selfCopy idsKeys];
    [idsKeys removeObjectForKey:v5];

    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = HMFGetLogIdentifier();
      idsKeys2 = [(HMDKeyTransferAgentClient *)v12 idsKeys];
      v21 = 138543618;
      v22 = v14;
      v23 = 2112;
      v24 = idsKeys2;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Current list of IDS received keys:%@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    [(HMDKeyTransferAgentClient *)v12 _saveKeyPlist];
    idsKeys3 = [(HMDKeyTransferAgentClient *)v12 idsKeys];
    v17 = [idsKeys3 count];

    if (v17)
    {
      atHomeRetryTimer = [(HMDKeyTransferAgentClient *)v12 atHomeRetryTimer];
      [atHomeRetryTimer reset];

      atHomeRetryTimer2 = [(HMDKeyTransferAgentClient *)v12 atHomeRetryTimer];
      [atHomeRetryTimer2 resume];
    }
  }

  [changedCopy respondWithPayload:0];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_handleKeyTransferAgentMessage:(id)message
{
  v57 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [(__CFString *)messageCopy stringForKey:@"phase"];
    *buf = 138543874;
    v52 = v8;
    v53 = 2112;
    v54 = messageCopy;
    v55 = 2112;
    v56 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Got Message: %@ / %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  mEMORY[0x277D0F8C0] = [MEMORY[0x277D0F8C0] sharedPowerLogger];
  v11 = [(__CFString *)messageCopy stringForKey:@"phase"];
  [mEMORY[0x277D0F8C0] reportIncomingLoxyMessage:v11];

  v12 = [(__CFString *)messageCopy stringForKey:@"phase"];
  v13 = [v12 isEqualToString:@"broadcast"];

  if (v13)
  {
    destination = [(__CFString *)messageCopy destination];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = destination;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    if (v16)
    {
      device = [v16 device];
      identifier = [device identifier];
      uUIDString = [identifier UUIDString];

      messagePayload = [(__CFString *)messageCopy messagePayload];
      v21 = [messagePayload hmf_UUIDForKey:@"data"];
      uUIDString2 = [v21 UUIDString];

      v23 = objc_autoreleasePoolPush();
      v24 = selfCopy;
      v25 = HMFGetOSLogHandle();
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
      if (uUIDString2)
      {
        if (v26)
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543874;
          v52 = v27;
          v53 = 2112;
          v54 = uUIDString;
          v55 = 2112;
          v56 = uUIDString2;
          _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@HMDHomeManager %@ advertised key transfer UUID %@ (IDS)", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v23);
        idsKeys = [(HMDKeyTransferAgentClient *)v24 idsKeys];
        [idsKeys setObject:uUIDString2 forKey:uUIDString];

        workQueue = [(HMDKeyTransferAgent *)v24 workQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __60__HMDKeyTransferAgentClient__handleKeyTransferAgentMessage___block_invoke;
        block[3] = &unk_279735D00;
        block[4] = v24;
        dispatch_async(workQueue, block);
      }

      else
      {
        if (v26)
        {
          v35 = HMFGetLogIdentifier();
          *buf = 138543618;
          v52 = v35;
          v53 = 2112;
          v54 = uUIDString;
          _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@HMDHomeManager %@ no longer advertising key transfer UUID (IDS)", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v23);
        workQueue = [(HMDKeyTransferAgentClient *)v24 idsKeys];
        [workQueue removeObjectForKey:uUIDString];
      }

      idsKeys2 = [(HMDKeyTransferAgentClient *)v24 idsKeys];
      v37 = [idsKeys2 writeToFile:@"/var/mobile/Library/homed/com.apple.atvpair.plist" atomically:1];

      if ((v37 & 1) == 0)
      {
        v38 = objc_autoreleasePoolPush();
        v39 = v24;
        v40 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = HMFGetLogIdentifier();
          *buf = 138543618;
          v52 = v41;
          v53 = 2112;
          v54 = @"/var/mobile/Library/homed/com.apple.atvpair.plist";
          _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@Unable to write key storage plist %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v38);
      }

      if (uUIDString2)
      {
        [(HMDKeyTransferAgentClient *)v24 _newDeviceSeen:uUIDString];
      }

      else
      {
        pairingWithUUID = [(HMDKeyTransferAgentClient *)v24 pairingWithUUID];
        v43 = [pairingWithUUID isEqual:uUIDString];

        if (v43)
        {
          v44 = objc_autoreleasePoolPush();
          v45 = v24;
          v46 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            v47 = HMFGetLogIdentifier();
            *buf = 138543362;
            v52 = v47;
            _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_DEFAULT, "%{public}@Ending current pairing operation with a no longer valid device.", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v44);
          v48 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:10 userInfo:0];
          [(HMDKeyTransferAgentClient *)v45 _endPairingWithError:v48 suspendingTimer:1];
        }
      }
    }

    [(__CFString *)messageCopy respondWithPayload:0];
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    v31 = selfCopy;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      v34 = [(__CFString *)messageCopy stringForKey:@"phase"];
      *buf = 138543618;
      v52 = v33;
      v53 = 2112;
      v54 = v34;
      _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@Unknown message key %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [(__CFString *)messageCopy respondWithError:v16];
  }

  v49 = *MEMORY[0x277D85DE8];
}

- (void)_restartKeyTransfer:(id)transfer
{
  v29 = *MEMORY[0x277D85DE8];
  transferCopy = transfer;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  bonjourKeys = [(HMDKeyTransferAgentClient *)self bonjourKeys];
  v5 = [bonjourKeys countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(bonjourKeys);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        selfCopy = self;
        v12 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = HMFGetLogIdentifier();
          *buf = 138543618;
          v25 = v13;
          v26 = 2112;
          v27 = v9;
          _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Trying to key transfer with device %@.", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v10);
        if ([(HMDKeyTransferAgentClient *)selfCopy _newDeviceSeen:v9])
        {
          v14 = objc_autoreleasePoolPush();
          v15 = selfCopy;
          v16 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = HMFGetLogIdentifier();
            *buf = 138543362;
            v25 = v17;
            _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Found device that we can possibly pair with.", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v14);
          goto LABEL_15;
        }
      }

      v6 = [bonjourKeys countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)__accountChanged:(id)changed
{
  changedCopy = changed;
  workQueue = [(HMDKeyTransferAgent *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__HMDKeyTransferAgentClient___accountChanged___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = changedCopy;
  v6 = changedCopy;
  dispatch_async(workQueue, v7);
}

uint64_t __46__HMDKeyTransferAgentClient___accountChanged___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) userInfo];
    v10 = 138543618;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Account status changed. Re-trying key transfer.: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) setTfaState:0];
  v7 = [*(a1 + 32) atHomeRetryTimer];
  [v7 reset];

  result = [*(a1 + 32) _restartKeyTransfer:0];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)__accessoryIsReachable:(id)reachable
{
  reachableCopy = reachable;
  objc_initWeak(&location, self);
  workQueue = [(HMDKeyTransferAgent *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HMDKeyTransferAgentClient___accessoryIsReachable___block_invoke;
  block[3] = &unk_279732E78;
  v8 = reachableCopy;
  v6 = reachableCopy;
  objc_copyWeak(&v9, &location);
  dispatch_async(workQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __52__HMDKeyTransferAgentClient___accessoryIsReachable___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _restartKeyTransfer:v4];
}

- (void)__deviceRemovedFromAccount:(id)account
{
  accountCopy = account;
  objc_initWeak(&location, self);
  workQueue = [(HMDKeyTransferAgent *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__HMDKeyTransferAgentClient___deviceRemovedFromAccount___block_invoke;
  block[3] = &unk_279732E78;
  v8 = accountCopy;
  v6 = accountCopy;
  objc_copyWeak(&v9, &location);
  dispatch_async(workQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __56__HMDKeyTransferAgentClient___deviceRemovedFromAccount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 valueForKey:@"HMDDeviceNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [*(a1 + 32) object];
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

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _device:v5 removedFromAccount:v8];
}

- (void)_device:(id)_device removedFromAccount:(id)account
{
  v41 = *MEMORY[0x277D85DE8];
  _deviceCopy = _device;
  accountCopy = account;
  identifier = [_deviceCopy identifier];
  uUIDString = [identifier UUIDString];

  if (_deviceCopy && accountCopy && (+[HMDAppleAccountManager sharedManager](HMDAppleAccountManager, "sharedManager"), v10 = objc_claimAutoreleasedReturnValue(), [v10 account], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(accountCopy, "isEqual:", v11), v11, v10, (v12 & 1) != 0))
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = HMFGetLogIdentifier();
      identifier2 = [_deviceCopy identifier];
      uUIDString2 = [identifier2 UUIDString];
      v35 = 138543618;
      v36 = v16;
      v37 = 2112;
      v38 = uUIDString2;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Got notification that %@ was removed from the current account", &v35, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    pairingWithUUID = [(HMDKeyTransferAgentClient *)selfCopy pairingWithUUID];
    v20 = [pairingWithUUID isEqual:uUIDString];

    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy;
    v23 = HMFGetOSLogHandle();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    if (v20)
    {
      if (v24)
      {
        v25 = HMFGetLogIdentifier();
        v35 = 138543362;
        v36 = v25;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Ending current pairing operation with a no longer valid device.", &v35, 0xCu);
      }

      objc_autoreleasePoolPop(v21);
      v26 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:10 userInfo:0];
      [(HMDKeyTransferAgentClient *)v22 _endPairingWithError:v26 suspendingTimer:1];
    }

    else
    {
      if (v24)
      {
        v33 = HMFGetLogIdentifier();
        v35 = 138543362;
        v36 = v33;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Removing device from list of potential pairing devices.", &v35, 0xCu);
      }

      objc_autoreleasePoolPop(v21);
      idsKeys = [(HMDKeyTransferAgentClient *)v22 idsKeys];
      [idsKeys removeObjectForKey:uUIDString];

      [(HMDKeyTransferAgentClient *)v22 _saveKeyPlist];
    }
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = HMFGetLogIdentifier();
      shortDescription = [accountCopy shortDescription];
      v35 = 138543874;
      v36 = v30;
      v37 = 2112;
      v38 = uUIDString;
      v39 = 2112;
      v40 = shortDescription;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@Device %@ not removed from current account %@.", &v35, 0x20u);
    }

    objc_autoreleasePoolPop(v27);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)__deviceUpdated:(id)updated
{
  updatedCopy = updated;
  objc_initWeak(&location, self);
  workQueue = [(HMDKeyTransferAgent *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__HMDKeyTransferAgentClient___deviceUpdated___block_invoke;
  block[3] = &unk_279732E78;
  v8 = updatedCopy;
  v6 = updatedCopy;
  objc_copyWeak(&v9, &location);
  dispatch_async(workQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __45__HMDKeyTransferAgentClient___deviceUpdated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [v4 account];
  [WeakRetained _device:v4 addedToAccount:v5];
}

- (void)__deviceAddedToAccount:(id)account
{
  accountCopy = account;
  objc_initWeak(&location, self);
  workQueue = [(HMDKeyTransferAgent *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HMDKeyTransferAgentClient___deviceAddedToAccount___block_invoke;
  block[3] = &unk_279732E78;
  v8 = accountCopy;
  v6 = accountCopy;
  objc_copyWeak(&v9, &location);
  dispatch_async(workQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __52__HMDKeyTransferAgentClient___deviceAddedToAccount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 valueForKey:@"HMDDeviceNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [*(a1 + 32) object];
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

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _device:v5 addedToAccount:v8];
}

- (void)_device:(id)_device addedToAccount:(id)account
{
  v29 = *MEMORY[0x277D85DE8];
  _deviceCopy = _device;
  accountCopy = account;
  identifier = [_deviceCopy identifier];
  uUIDString = [identifier UUIDString];

  if (_deviceCopy && accountCopy && (+[HMDAppleAccountManager sharedManager](HMDAppleAccountManager, "sharedManager"), v10 = objc_claimAutoreleasedReturnValue(), [v10 account], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(accountCopy, "isEqual:", v11), v11, v10, (v12 & 1) != 0))
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = HMFGetLogIdentifier();
      v23 = 138543618;
      v24 = v16;
      v25 = 2112;
      v26 = uUIDString;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Got notification that %@ was added to the current account", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    [(HMDKeyTransferAgentClient *)selfCopy _newDeviceSeen:uUIDString];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = HMFGetLogIdentifier();
      shortDescription = [accountCopy shortDescription];
      v23 = 138543874;
      v24 = v20;
      v25 = 2112;
      v26 = uUIDString;
      v27 = 2112;
      v28 = shortDescription;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Device %@ not added / updated from current account %@.", &v23, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)_newDeviceSeen:(id)seen
{
  v33 = *MEMORY[0x277D85DE8];
  seenCopy = seen;
  bonjourKeys = [(HMDKeyTransferAgentClient *)self bonjourKeys];
  v6 = [bonjourKeys objectForKey:seenCopy];

  idsKeys = [(HMDKeyTransferAgentClient *)self idsKeys];
  v8 = [idsKeys objectForKey:seenCopy];

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (!v6)
  {
    if (v12)
    {
      v20 = HMFGetLogIdentifier();
      v27 = 138543362;
      v28 = v20;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@We *DO NOT* have this device's pairing id via Bonjour", &v27, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    if (v8)
    {
      [(HMDKeyTransferAgentClient *)selfCopy setResidentProvisioningStatus:2];
    }

    goto LABEL_19;
  }

  if (v12)
  {
    v13 = HMFGetLogIdentifier();
    v27 = 138543362;
    v28 = v13;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@We have received this device's pairing id via Bonjour", &v27, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  v14 = objc_autoreleasePoolPush();
  v15 = selfCopy;
  v16 = HMFGetOSLogHandle();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (!v8)
  {
    if (v17)
    {
      v21 = HMFGetLogIdentifier();
      v27 = 138543362;
      v28 = v21;
      v22 = "%{public}@We *DO NOT* have this device's pairing id via IDS";
      v23 = v16;
      v24 = 12;
LABEL_17:
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_DEFAULT, v22, &v27, v24);
    }

LABEL_18:

    objc_autoreleasePoolPop(v14);
LABEL_19:
    v19 = 0;
    goto LABEL_20;
  }

  if (v17)
  {
    v18 = HMFGetLogIdentifier();
    v27 = 138543362;
    v28 = v18;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@We have received this device's pairing id via IDS", &v27, 0xCu);
  }

  objc_autoreleasePoolPop(v14);
  if (([v6 isEqual:v8] & 1) == 0)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = v15;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v21 = HMFGetLogIdentifier();
      v27 = 138543874;
      v28 = v21;
      v29 = 2112;
      v30 = v6;
      v31 = 2112;
      v32 = v8;
      v22 = "%{public}@Bonjour and IDS keys do not match (%@!=%@)";
      v23 = v16;
      v24 = 32;
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  [(HMDKeyTransferAgentClient *)v15 _startPairingWithKeyUUID:v8 forTarget:seenCopy];
  v19 = 1;
LABEL_20:

  v25 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)_sendATVPrivateKey:(id)key withDevice:(id)device retry:(unint64_t)retry
{
  v50 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  deviceCopy = device;
  v36 = [keyCopy hmf_stringForKey:@"kControllerPairingNameKey"];
  v35 = [keyCopy hmf_dataForKey:@"kControllerKeyPairKey"];
  v9 = [objc_alloc(MEMORY[0x277D0F8B0]) initWithPairingKeyData:v35];
  v10 = [objc_alloc(MEMORY[0x277CFEC20]) initWithIdentifier:v36 publicKey:v9 privateKey:0 permissions:0];
  if (v10)
  {
    v11 = +[HMDIdentityRegistry sharedRegistry];
    [v11 registerIdentity:v10 device:deviceCopy object:self];

    systemStore = [MEMORY[0x277CFEC78] systemStore];
    v43 = 0;
    v44 = 0;
    v42 = 0;
    v13 = [systemStore getControllerPublicKey:0 secretKey:0 keyPair:&v44 username:&v43 allowCreation:0 error:&v42];
    v33 = v44;
    v14 = v43;
    v34 = v42;

    if (v13)
    {
      v15 = [HMDRemoteDeviceMessageDestination alloc];
      uuid = [(HMDKeyTransferAgent *)self uuid];
      v31 = [(HMDRemoteDeviceMessageDestination *)v15 initWithTarget:uuid device:deviceCopy];

      v17 = [HMDRemoteMessage alloc];
      v45[0] = @"phase";
      v45[1] = @"kControllerKeyPairKey";
      v46[0] = @"send_private";
      v46[1] = v33;
      v45[2] = @"kControllerPairingNameKey";
      v46[2] = v14;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:3];
      v19 = [(HMDRemoteMessage *)v17 initWithName:@"kKeyTransferAgentKey" destination:v31 payload:v18 type:0 timeout:1 secure:2 restriction:0.0];

      objc_initWeak(location, self);
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __65__HMDKeyTransferAgentClient__sendATVPrivateKey_withDevice_retry___block_invoke;
      v37[3] = &unk_2797282E8;
      v37[4] = self;
      objc_copyWeak(v41, location);
      v41[1] = retry;
      v38 = deviceCopy;
      v39 = keyCopy;
      v40 = v10;
      [(HMDRemoteMessage *)v19 setResponseHandler:v37];
      homeManager = [(HMDKeyTransferAgent *)self homeManager];
      messageDispatcher = [homeManager messageDispatcher];
      [messageDispatcher sendMessage:v19 completionHandler:0];

      [(HMDKeyTransferAgentClient *)self setResidentProvisioningStatus:0];
      objc_destroyWeak(v41);
      objc_destroyWeak(location);
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      selfCopy = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        *location = 138543618;
        *&location[4] = v29;
        v48 = 2112;
        v49 = v34;
        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@unable to retrieve iOS public / private key pair: %@", location, 0x16u);
      }

      objc_autoreleasePoolPop(v26);
      [(HMDKeyTransferAgentClient *)selfCopy _endPairingWithError:v34 suspendingTimer:1];
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *location = 138543362;
      *&location[4] = v25;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@did not get valid username / public key from ATV device.", location, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:3 userInfo:0];
    [(HMDKeyTransferAgentClient *)selfCopy2 _endPairingWithError:v14 suspendingTimer:1];
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __65__HMDKeyTransferAgentClient__sendATVPrivateKey_withDevice_retry___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__HMDKeyTransferAgentClient__sendATVPrivateKey_withDevice_retry___block_invoke_2;
  v7[3] = &unk_2797282C0;
  objc_copyWeak(v12, (a1 + 64));
  v5 = *(a1 + 72);
  v8 = v3;
  v12[1] = v5;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v6 = v3;
  dispatch_async(v4, v7);

  objc_destroyWeak(v12);
}

void __65__HMDKeyTransferAgentClient__sendATVPrivateKey_withDevice_retry___block_invoke_2(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v4 = *(a1 + 72);
      v5 = objc_autoreleasePoolPush();
      v6 = v3;
      v7 = HMFGetOSLogHandle();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (v4 < 4)
      {
        if (v8)
        {
          v16 = HMFGetLogIdentifier();
          v17 = [*(a1 + 40) identifier];
          v18 = [v17 UUIDString];
          v19 = *(a1 + 32);
          *buf = 138544130;
          v30 = v16;
          v31 = 2112;
          v32 = v18;
          v33 = 2112;
          v34 = v19;
          v35 = 2048;
          v36 = 180;
          _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Send Private Key to %@ failed with error: %@ (retrying in %lu seconds)", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v5);
        v20 = dispatch_time(0, 180000000000);
        v21 = [v6 workQueue];
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __65__HMDKeyTransferAgentClient__sendATVPrivateKey_withDevice_retry___block_invoke_67;
        v25[3] = &unk_279733188;
        v25[4] = v6;
        v26 = *(a1 + 48);
        v22 = *(a1 + 40);
        v23 = *(a1 + 72);
        v27 = v22;
        v28 = v23;
        dispatch_after(v20, v21, v25);
      }

      else
      {
        if (v8)
        {
          v9 = HMFGetLogIdentifier();
          v10 = [*(a1 + 40) identifier];
          v11 = [v10 UUIDString];
          v12 = *(a1 + 32);
          v13 = *(a1 + 72);
          *buf = 138544130;
          v30 = v9;
          v31 = 2112;
          v32 = v11;
          v33 = 2112;
          v34 = v12;
          v35 = 2048;
          v36 = v13;
          _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Send Private Key to %@ failed with error: %@ (timed out after %lu retries)", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v5);
        v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:10 userInfo:0];
        [v6 _endPairingWithError:v14 suspendingTimer:1];
      }
    }

    else
    {
      [WeakRetained _endPairingWithError:0 suspendingTimer:1];
      if (*(a1 + 56))
      {
        v15 = +[HMDIdentityRegistry sharedRegistry];
        [v15 deregisterIdentity:*(a1 + 56) object:v3];
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_sendIOSPublicKey:(id)key withDevice:(id)device
{
  v40 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  deviceCopy = device;
  homeManager = [(HMDKeyTransferAgent *)self homeManager];
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v9 = [homeManager getOrCreateControllerPublicKey:&v34 controllerUsername:&v33 error:&v32];
  v10 = v34;
  v11 = v33;
  v12 = v32;
  if (v9)
  {
    v13 = [HMDRemoteDeviceMessageDestination alloc];
    uuid = [(HMDKeyTransferAgent *)self uuid];
    v15 = [(HMDRemoteDeviceMessageDestination *)v13 initWithTarget:uuid device:deviceCopy];

    v16 = [HMDRemoteMessage alloc];
    v35[0] = @"phase";
    v35[1] = @"kControllerKeyPairKey";
    v36[0] = @"send_public";
    v36[1] = v10;
    v35[2] = @"kControllerPairingNameKey";
    v36[2] = v11;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:3];
    v18 = [(HMDRemoteMessage *)v16 initWithName:@"kKeyTransferAgentKey" destination:v15 payload:v17 type:0 timeout:0 secure:1 restriction:0.0];

    objc_initWeak(location, self);
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __58__HMDKeyTransferAgentClient__sendIOSPublicKey_withDevice___block_invoke;
    v28 = &unk_279735248;
    selfCopy = self;
    objc_copyWeak(&v31, location);
    v30 = deviceCopy;
    [(HMDRemoteMessage *)v18 setResponseHandler:&v25];
    messageDispatcher = [homeManager messageDispatcher];
    [messageDispatcher sendMessage:v18];

    objc_destroyWeak(&v31);
    objc_destroyWeak(location);
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v23;
      v38 = 2112;
      v39 = v12;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Unable to get IOS controller key / name: %@", location, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    [(HMDKeyTransferAgentClient *)selfCopy2 _endPairingWithError:v12 suspendingTimer:1];
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __58__HMDKeyTransferAgentClient__sendIOSPublicKey_withDevice___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] workQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__HMDKeyTransferAgentClient__sendIOSPublicKey_withDevice___block_invoke_2;
  v10[3] = &unk_279733910;
  objc_copyWeak(&v14, a1 + 6);
  v11 = v5;
  v12 = a1[5];
  v13 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);

  objc_destroyWeak(&v14);
}

void __58__HMDKeyTransferAgentClient__sendIOSPublicKey_withDevice___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v4 = objc_autoreleasePoolPush();
      v5 = v3;
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = HMFGetLogIdentifier();
        v8 = [*(a1 + 40) identifier];
        v9 = [v8 UUIDString];
        v10 = *(a1 + 32);
        v13 = 138543874;
        v14 = v7;
        v15 = 2112;
        v16 = v9;
        v17 = 2112;
        v18 = v10;
        _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Send public key to %@ failed with error: %@", &v13, 0x20u);
      }

      objc_autoreleasePoolPop(v4);
      v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:10 userInfo:0];
      [v5 _endPairingWithError:v11 suspendingTimer:1];
    }

    else
    {
      [WeakRetained _sendATVPrivateKey:*(a1 + 48) withDevice:*(a1 + 40) retry:1];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_havePairVerifiedAccessoryWithKeyUUID:(id)d forDevice:(id)device
{
  v26[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  deviceCopy = device;
  v8 = [HMDRemoteDeviceMessageDestination alloc];
  uuid = [(HMDKeyTransferAgent *)self uuid];
  v10 = [(HMDRemoteDeviceMessageDestination *)v8 initWithTarget:uuid device:deviceCopy];

  v11 = [HMDRemoteMessage alloc];
  v25[0] = @"phase";
  v25[1] = @"data";
  v26[0] = @"ping";
  v26[1] = dCopy;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
  v13 = [(HMDRemoteMessage *)v11 initWithName:@"kKeyTransferAgentKey" destination:v10 payload:v12 type:0 timeout:0 secure:2 restriction:0.0];

  objc_initWeak(&location, self);
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __77__HMDKeyTransferAgentClient__havePairVerifiedAccessoryWithKeyUUID_forDevice___block_invoke;
  v21 = &unk_279733AE8;
  objc_copyWeak(&v23, &location);
  v14 = deviceCopy;
  v22 = v14;
  [(HMDRemoteMessage *)v13 setResponseHandler:&v18];
  v15 = [(HMDKeyTransferAgent *)self homeManager:v18];
  messageDispatcher = [v15 messageDispatcher];
  [messageDispatcher sendMessage:v13 completionHandler:0];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);

  v17 = *MEMORY[0x277D85DE8];
}

void __77__HMDKeyTransferAgentClient__havePairVerifiedAccessoryWithKeyUUID_forDevice___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained workQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __77__HMDKeyTransferAgentClient__havePairVerifiedAccessoryWithKeyUUID_forDevice___block_invoke_2;
    v10[3] = &unk_279734870;
    v11 = v5;
    v12 = v8;
    v13 = *(a1 + 32);
    v14 = v6;
    dispatch_async(v9, v10);
  }
}

void __77__HMDKeyTransferAgentClient__havePairVerifiedAccessoryWithKeyUUID_forDevice___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 40);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      v6 = [*(a1 + 48) remoteDestinationString];
      v7 = *(a1 + 32);
      v15 = 138543874;
      v16 = v5;
      v17 = 2112;
      v18 = v6;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_ERROR, "%{public}@Ping to %@ failed with error: %@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v2);
    v8 = *(a1 + 40);
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:10 userInfo:0];
    [v8 _endPairingWithError:v9 suspendingTimer:1];

    v10 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v12 = *(a1 + 48);
    v11 = *(a1 + 56);
    v13 = *(a1 + 40);
    v14 = *MEMORY[0x277D85DE8];

    [v13 _sendIOSPublicKey:v11 withDevice:v12];
  }
}

- (void)_haveVerifiedTwoFactorAuthenticationWithKeyUUID:(id)d forTarget:(id)target
{
  v113 = *MEMORY[0x277D85DE8];
  dCopy = d;
  targetCopy = target;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v5 = +[HMDAppleAccountManager sharedManager];
  account = [v5 account];
  devices = [account devices];

  obj = devices;
  v8 = [devices countByEnumeratingWithState:&v102 objects:v112 count:16];
  if (!v8)
  {
LABEL_14:

LABEL_52:
    v67 = objc_autoreleasePoolPush();
    selfCopy = self;
    v69 = HMFGetOSLogHandle();
    v33 = dCopy;
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      v70 = HMFGetLogIdentifier();
      *buf = 138543618;
      v109 = v70;
      v110 = 2112;
      v111 = targetCopy;
      _os_log_impl(&dword_2531F8000, v69, OS_LOG_TYPE_ERROR, "%{public}@The device with uuid %@ does not belong to the current user (waiting for IDS notification).", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v67);
    v65 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:10 userInfo:0];
    [(HMDKeyTransferAgentClient *)selfCopy _endPairingWithError:v65 suspendingTimer:1];
    goto LABEL_59;
  }

  v9 = v8;
  v10 = *v103;
LABEL_3:
  v11 = 0;
  while (1)
  {
    if (*v103 != v10)
    {
      objc_enumerationMutation(obj);
    }

    v12 = *(*(&v102 + 1) + 8 * v11);
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = HMFGetLogIdentifier();
      identifier = [v12 identifier];
      uUIDString = [identifier UUIDString];
      *buf = 138543618;
      v109 = v16;
      v110 = 2112;
      v111 = uUIDString;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Checking ownership of %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    capabilities = [v12 capabilities];
    if (([capabilities supportsKeyTransferServer] & 1) == 0)
    {

      goto LABEL_12;
    }

    identifier2 = [v12 identifier];
    uUIDString2 = [identifier2 UUIDString];
    v22 = [targetCopy isEqual:uUIDString2];

    if (v22)
    {
      break;
    }

LABEL_12:
    if (v9 == ++v11)
    {
      v9 = [obj countByEnumeratingWithState:&v102 objects:v112 count:16];
      if (!v9)
      {
        goto LABEL_14;
      }

      goto LABEL_3;
    }
  }

  v23 = objc_autoreleasePoolPush();
  v24 = selfCopy2;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v27 = HMFGetLogIdentifier();
    identifier3 = [v12 identifier];
    uUIDString3 = [identifier3 UUIDString];
    *buf = 138543618;
    v109 = v27;
    v110 = 2112;
    v111 = uUIDString3;
    _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@We own device %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v23);
  v30 = v12;

  if (!v30)
  {
    goto LABEL_52;
  }

  v100 = 0u;
  v101 = 0u;
  v99 = 0u;
  v98 = 0u;
  homeManager = [(HMDKeyTransferAgent *)v24 homeManager];
  homes = [homeManager homes];

  v33 = dCopy;
  v81 = [homes countByEnumeratingWithState:&v98 objects:v107 count:16];
  if (v81)
  {
    v82 = *v99;
    v79 = homes;
    v80 = v30;
    v78 = v24;
    do
    {
      v34 = 0;
      do
      {
        if (*v99 != v82)
        {
          objc_enumerationMutation(homes);
        }

        obja = v34;
        v35 = *(*(&v98 + 1) + 8 * v34);
        isOwnerUser = [v35 isOwnerUser];
        v37 = objc_autoreleasePoolPush();
        v38 = v24;
        v39 = HMFGetOSLogHandle();
        v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
        if ((isOwnerUser & 1) == 0)
        {
          if (v40)
          {
            v62 = HMFGetLogIdentifier();
            uuid = [v35 uuid];
            uUIDString4 = [uuid UUIDString];
            *buf = 138543618;
            v109 = v62;
            v110 = 2112;
            v111 = uUIDString4;
            _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@We do not own the home %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v37);
          goto LABEL_49;
        }

        if (v40)
        {
          v41 = HMFGetLogIdentifier();
          uuid2 = [v35 uuid];
          uUIDString5 = [uuid2 UUIDString];
          *buf = 138543618;
          v109 = v41;
          v110 = 2112;
          v111 = uUIDString5;
          _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@We own the home %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v37);
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        accessories = [v35 accessories];
        v45 = [accessories copy];

        v90 = v45;
        v46 = [v45 countByEnumeratingWithState:&v94 objects:v106 count:16];
        if (!v46)
        {
          goto LABEL_45;
        }

        v47 = v46;
        v48 = *v95;
        while (2)
        {
          for (i = 0; i != v47; ++i)
          {
            if (*v95 != v48)
            {
              objc_enumerationMutation(v90);
            }

            v50 = *(*(&v94 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v51 = v50;
            }

            else
            {
              v51 = 0;
            }

            v52 = v51;

            if (v52)
            {
              if ([v52 isSecuritySessionOpen])
              {
                v71 = objc_autoreleasePoolPush();
                v72 = v38;
                v73 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
                {
                  v74 = HMFGetLogIdentifier();
                  uuid3 = [v52 uuid];
                  uUIDString6 = [uuid3 UUIDString];
                  *buf = 138543618;
                  v109 = v74;
                  v110 = 2112;
                  v111 = uUIDString6;
                  _os_log_impl(&dword_2531F8000, v73, OS_LOG_TYPE_DEFAULT, "%{public}@%@ has an open pair verify session (how lucky).", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v71);
                v33 = dCopy;
                v65 = v80;
                [(HMDKeyTransferAgentClient *)v72 _havePairVerifiedAccessoryWithKeyUUID:dCopy forDevice:v80];

                v66 = v79;
                goto LABEL_58;
              }

              if ([v52 linkSpeed] < 0)
              {
                [array2 addObject:v52];
                v53 = objc_autoreleasePoolPush();
                v61 = v38;
                v55 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
                {
                  v56 = HMFGetLogIdentifier();
                  uuid4 = [v50 uuid];
                  uUIDString7 = [uuid4 UUIDString];
                  *buf = 138543618;
                  v109 = v56;
                  v110 = 2112;
                  v111 = uUIDString7;
                  v59 = v55;
                  v60 = "%{public}@%@ is a slow accessory.";
LABEL_41:
                  _os_log_impl(&dword_2531F8000, v59, OS_LOG_TYPE_DEFAULT, v60, buf, 0x16u);
                }
              }

              else
              {
                [array addObject:v52];
                v53 = objc_autoreleasePoolPush();
                v54 = v38;
                v55 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
                {
                  v56 = HMFGetLogIdentifier();
                  uuid4 = [v50 uuid];
                  uUIDString7 = [uuid4 UUIDString];
                  *buf = 138543618;
                  v109 = v56;
                  v110 = 2112;
                  v111 = uUIDString7;
                  v59 = v55;
                  v60 = "%{public}@%@ is a fast accessory.";
                  goto LABEL_41;
                }
              }

              objc_autoreleasePoolPop(v53);
            }
          }

          v47 = [v90 countByEnumeratingWithState:&v94 objects:v106 count:16];
          if (v47)
          {
            continue;
          }

          break;
        }

LABEL_45:

        v33 = dCopy;
        homes = v79;
        v30 = v80;
        v24 = v78;
LABEL_49:
        v34 = obja + 1;
      }

      while (obja + 1 != v81);
      v81 = [homes countByEnumeratingWithState:&v98 objects:v107 count:16];
    }

    while (v81);
  }

  [array addObjectsFromArray:array2];
  v91[0] = MEMORY[0x277D85DD0];
  v91[1] = 3221225472;
  v91[2] = __87__HMDKeyTransferAgentClient__haveVerifiedTwoFactorAuthenticationWithKeyUUID_forTarget___block_invoke;
  v91[3] = &unk_279734D88;
  v91[4] = v24;
  v92 = v33;
  v93 = v30;
  v65 = v30;
  [(HMDKeyTransferAgentClient *)v24 _tryPairingWithAccessories:array completionHandler:v91];

  v66 = v92;
LABEL_58:

LABEL_59:
  v77 = *MEMORY[0x277D85DE8];
}

void __87__HMDKeyTransferAgentClient__haveVerifiedTwoFactorAuthenticationWithKeyUUID_forTarget___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __87__HMDKeyTransferAgentClient__haveVerifiedTwoFactorAuthenticationWithKeyUUID_forTarget___block_invoke_2;
  v8[3] = &unk_279734870;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 48);
  v7 = v3;
  dispatch_async(v4, v8);
}

void __87__HMDKeyTransferAgentClient__haveVerifiedTwoFactorAuthenticationWithKeyUUID_forTarget___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 40);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v5;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_ERROR, "%{public}@No currently paired devices.", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    [*(a1 + 40) setResidentProvisioningStatus:2];
    v6 = *(a1 + 40);
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:10 userInfo:0];
    [v6 _endPairingWithError:v7 suspendingTimer:1];

    v8 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v12 = *MEMORY[0x277D85DE8];

    [v9 _havePairVerifiedAccessoryWithKeyUUID:v10 forDevice:v11];
  }
}

- (void)_tryPairingWithAccessories:(id)accessories completionHandler:(id)handler
{
  accessoriesCopy = accessories;
  handlerCopy = handler;
  firstObject = [accessoriesCopy firstObject];
  if (firstObject)
  {
    [accessoriesCopy removeObject:firstObject];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __74__HMDKeyTransferAgentClient__tryPairingWithAccessories_completionHandler___block_invoke;
    v10[3] = &unk_279728298;
    v10[4] = self;
    v11 = firstObject;
    v12 = accessoriesCopy;
    v13 = handlerCopy;
    [v11 verifyPairingWithCompletionHandler:v10];
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:2 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, v9);
  }
}

void __74__HMDKeyTransferAgentClient__tryPairingWithAccessories_completionHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = a1[4];
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v10)
    {
      v11 = HMFGetLogIdentifier();
      v12 = [a1[5] uuid];
      v13 = [v12 UUIDString];
      *buf = 138543874;
      v23 = v11;
      v24 = 2112;
      v25 = v13;
      v26 = 2112;
      v27 = v6;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Unable to pair verify with accessory %@ (%@)", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v14 = [a1[4] workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__HMDKeyTransferAgentClient__tryPairingWithAccessories_completionHandler___block_invoke_59;
    block[3] = &unk_2797355D0;
    block[4] = a1[4];
    v20 = a1[6];
    v21 = a1[7];
    dispatch_sync(v14, block);
  }

  else
  {
    if (v10)
    {
      v15 = HMFGetLogIdentifier();
      v16 = [a1[5] uuid];
      v17 = [v16 UUIDString];
      *buf = 138543874;
      v23 = v15;
      v24 = 2112;
      v25 = v17;
      v26 = 2112;
      v27 = v5;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Successful pair verify with accessory %@ (%@)", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    (*(a1[7] + 2))();
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_tfaVerificationCompleteForKeyUUID:(id)d forTarget:(id)target
{
  dCopy = d;
  targetCopy = target;
  if ([(HMDKeyTransferAgentClient *)self tfaState]== 1)
  {
    atHomeRetryTimer = [(HMDKeyTransferAgentClient *)self atHomeRetryTimer];
    [atHomeRetryTimer suspend];

    homeManager = [(HMDKeyTransferAgent *)self homeManager];
    [homeManager startLocalTransport];

    [(HMDKeyTransferAgentClient *)self setResidentProvisioningStatus:[(HMDKeyTransferAgentClient *)self residentProvisioningStatus]& 0xFFFFFFFFFFFFFFFELL];
    v10 = dispatch_time(0, 20000000000);
    workQueue = [(HMDKeyTransferAgent *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__HMDKeyTransferAgentClient__tfaVerificationCompleteForKeyUUID_forTarget___block_invoke;
    block[3] = &unk_279734960;
    block[4] = self;
    v15 = dCopy;
    v16 = targetCopy;
    dispatch_after(v10, workQueue, block);
  }

  else
  {
    [(HMDKeyTransferAgentClient *)self setResidentProvisioningStatus:[(HMDKeyTransferAgentClient *)self residentProvisioningStatus]| 1];
    atHomeRetryTimer2 = [(HMDKeyTransferAgentClient *)self atHomeRetryTimer];
    [atHomeRetryTimer2 resume];

    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:10 userInfo:0];
    [(HMDKeyTransferAgentClient *)self _endPairingWithError:v13 suspendingTimer:0];
  }
}

- (void)_startPairingWithKeyUUID:(id)d forTarget:(id)target
{
  v33 = *MEMORY[0x277D85DE8];
  dCopy = d;
  targetCopy = target;
  pairingWithUUID = [(HMDKeyTransferAgentClient *)self pairingWithUUID];

  if (pairingWithUUID)
  {
    pairingWithUUID2 = [(HMDKeyTransferAgentClient *)self pairingWithUUID];
    v10 = [pairingWithUUID2 isEqual:targetCopy];

    if ((v10 & 1) == 0)
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        pairingWithUUID3 = [(HMDKeyTransferAgentClient *)selfCopy pairingWithUUID];
        *buf = 138543874;
        v28 = v14;
        v29 = 2112;
        v30 = pairingWithUUID3;
        v31 = 2112;
        v32 = targetCopy;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Currently in the middle of processing a request from %@ (queueing request from %@)", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v11);
      targetsToProcess = [(HMDKeyTransferAgentClient *)selfCopy targetsToProcess];
      [targetsToProcess addObject:targetCopy];
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v20;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Beginning KeyTransferAgent", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    [(HMDKeyTransferAgentClient *)selfCopy2 setPairingWithUUID:targetCopy];
    if ([(HMDKeyTransferAgentClient *)selfCopy2 tfaState])
    {
      [(HMDKeyTransferAgentClient *)selfCopy2 _tfaVerificationCompleteForKeyUUID:dCopy forTarget:targetCopy];
    }

    else
    {
      atHomeRetryTimer = [(HMDKeyTransferAgentClient *)selfCopy2 atHomeRetryTimer];
      [atHomeRetryTimer suspend];

      objc_initWeak(buf, selfCopy2);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __64__HMDKeyTransferAgentClient__startPairingWithKeyUUID_forTarget___block_invoke;
      v23[3] = &unk_27972F0B8;
      objc_copyWeak(&v26, buf);
      v24 = dCopy;
      v25 = targetCopy;
      [HMDRemoteLoginUtilities fetchIsTwoFactorAuthenticationEnabledForAccountWithReason:@"Pairing with Apple TV" completionHandler:v23];

      objc_destroyWeak(&v26);
      objc_destroyWeak(buf);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __64__HMDKeyTransferAgentClient__startPairingWithKeyUUID_forTarget___block_invoke(id *a1, char a2)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained workQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __64__HMDKeyTransferAgentClient__startPairingWithKeyUUID_forTarget___block_invoke_2;
    v7[3] = &unk_279731C38;
    v10 = a2;
    v7[4] = v5;
    v8 = a1[4];
    v9 = a1[5];
    dispatch_async(v6, v7);
  }
}

uint64_t __64__HMDKeyTransferAgentClient__startPairingWithKeyUUID_forTarget___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  [v3 setTfaState:v4];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);

  return [v5 _tfaVerificationCompleteForKeyUUID:v6 forTarget:v7];
}

- (void)_endPairingWithError:(id)error suspendingTimer:(BOOL)timer
{
  timerCopy = timer;
  v45 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (errorCopy)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v42 = v9;
      v43 = 2112;
      v44 = errorCopy;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Pairing ended in failure: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    atHomeRetryTimer = [(HMDKeyTransferAgentClient *)self atHomeRetryTimer];
    [atHomeRetryTimer reset];

    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v42 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Pairing ended successfully", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    pairingWithUUID = [(HMDKeyTransferAgentClient *)selfCopy2 pairingWithUUID];

    if (pairingWithUUID)
    {
      bonjourKeys = [(HMDKeyTransferAgentClient *)selfCopy2 bonjourKeys];
      pairingWithUUID2 = [(HMDKeyTransferAgentClient *)selfCopy2 pairingWithUUID];
      [bonjourKeys removeObjectForKey:pairingWithUUID2];

      idsKeys = [(HMDKeyTransferAgentClient *)selfCopy2 idsKeys];
      pairingWithUUID3 = [(HMDKeyTransferAgentClient *)selfCopy2 pairingWithUUID];
      [idsKeys removeObjectForKey:pairingWithUUID3];
    }

    [(HMDKeyTransferAgentClient *)selfCopy2 _saveKeyPlist];
  }

  pairingWithUUID4 = [(HMDKeyTransferAgentClient *)self pairingWithUUID];

  if (pairingWithUUID4)
  {
    targetsToProcess = [(HMDKeyTransferAgentClient *)self targetsToProcess];
    pairingWithUUID5 = [(HMDKeyTransferAgentClient *)self pairingWithUUID];
    [targetsToProcess removeObject:pairingWithUUID5];
  }

  [(HMDKeyTransferAgentClient *)self setPairingWithUUID:0];
  if (timerCopy)
  {
    atHomeRetryTimer2 = [(HMDKeyTransferAgentClient *)self atHomeRetryTimer];
    [atHomeRetryTimer2 suspend];
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  targetsToProcess2 = [(HMDKeyTransferAgentClient *)self targetsToProcess];
  v25 = [targetsToProcess2 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v37;
LABEL_16:
    v28 = 0;
    while (1)
    {
      if (*v37 != v27)
      {
        objc_enumerationMutation(targetsToProcess2);
      }

      v29 = *(*(&v36 + 1) + 8 * v28);
      v30 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543618;
        v42 = v33;
        v43 = 2112;
        v44 = v29;
        _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@Processing remaining device in queue %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
      if ([(HMDKeyTransferAgentClient *)selfCopy3 _newDeviceSeen:v29])
      {
        break;
      }

      if (v26 == ++v28)
      {
        v26 = [targetsToProcess2 countByEnumeratingWithState:&v36 objects:v40 count:16];
        if (v26)
        {
          goto LABEL_16;
        }

        break;
      }
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)_beginBonjourResolution:(BOOL)resolution
{
  resolutionCopy = resolution;
  v27 = *MEMORY[0x277D85DE8];
  if ([(HMDKeyTransferAgentClient *)self resolutionInProgress])
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v8;
      v9 = "%{public}@Bonjour discovery already in progress.";
      v10 = v7;
      v11 = OS_LOG_TYPE_DEBUG;
LABEL_11:
      _os_log_impl(&dword_2531F8000, v10, v11, v9, buf, 0xCu);

      goto LABEL_12;
    }

    goto LABEL_12;
  }

  serviceBrowser = [(HMDKeyTransferAgentClient *)self serviceBrowser];

  if (!serviceBrowser)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v8;
      v9 = "%{public}@No allocated Bonjour browser. Not attempting to start.";
      v10 = v7;
      v11 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_11;
    }

LABEL_12:

    objc_autoreleasePoolPop(v5);
    goto LABEL_13;
  }

  [(HMDKeyTransferAgentClient *)self setResolutionInProgress:1];
  v13 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v15 = HMFGetOSLogHandle();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
  if (resolutionCopy)
  {
    if (v16)
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v17;
      v25 = 2048;
      v26 = 600;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Re-starting Bonjour discovery in %lu seconds", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v18 = dispatch_time(0, 600000000000);
    workQueue = [(HMDKeyTransferAgent *)selfCopy3 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__HMDKeyTransferAgentClient__beginBonjourResolution___block_invoke;
    block[3] = &unk_279735D00;
    block[4] = selfCopy3;
    dispatch_after(v18, workQueue, block);
  }

  else
  {
    if (v16)
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v21;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Starting Bonjour discovery.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    [(HMDKeyTransferAgentClient *)selfCopy3 _reallyBeginBonjourResolution];
  }

LABEL_13:
  v20 = *MEMORY[0x277D85DE8];
}

- (void)_reallyBeginBonjourResolution
{
  objc_initWeak(&location, self);
  serviceBrowser = [(HMDKeyTransferAgentClient *)self serviceBrowser];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__HMDKeyTransferAgentClient__reallyBeginBonjourResolution__block_invoke;
  v4[3] = &unk_2797338E8;
  v4[4] = self;
  objc_copyWeak(&v5, &location);
  [serviceBrowser startBrowsingWithCompletionHandler:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __58__HMDKeyTransferAgentClient__reallyBeginBonjourResolution__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__HMDKeyTransferAgentClient__reallyBeginBonjourResolution__block_invoke_2;
  v6[3] = &unk_279732E78;
  objc_copyWeak(&v8, (a1 + 40));
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);

  objc_destroyWeak(&v8);
}

void __58__HMDKeyTransferAgentClient__reallyBeginBonjourResolution__block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setResolutionInProgress:0];
    v4 = *(a1 + 32);
    v5 = objc_autoreleasePoolPush();
    v6 = v3;
    v7 = HMFGetOSLogHandle();
    v8 = v7;
    if (v4)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = HMFGetLogIdentifier();
        v10 = *(a1 + 32);
        v13 = 138543618;
        v14 = v9;
        v15 = 2112;
        v16 = v10;
        _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Bonjour search failed to start with error: %@", &v13, 0x16u);
      }

      objc_autoreleasePoolPop(v5);
      [v6 _beginBonjourResolution:1];
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v11 = HMFGetLogIdentifier();
        v13 = 138543362;
        v14 = v11;
        _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Bonjour search started.", &v13, 0xCu);
      }

      objc_autoreleasePoolPop(v5);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_stopBrowser
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Ending Bonjour browser.", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  serviceBrowser = [(HMDKeyTransferAgentClient *)selfCopy serviceBrowser];
  [serviceBrowser stopBrowsing];

  [(HMDKeyTransferAgentClient *)selfCopy setServiceBrowser:0];
  [(HMDKeyTransferAgentClient *)selfCopy setResolutionInProgress:0];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_startBrowser
{
  v14 = *MEMORY[0x277D85DE8];
  serviceBrowser = [(HMDKeyTransferAgentClient *)self serviceBrowser];

  if (!serviceBrowser)
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Starting Bonjour browser.", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v8 = [objc_alloc(MEMORY[0x277D0F878]) initWithDomain:@"local." serviceType:@"_homekit._tcp."];
    [(HMDKeyTransferAgentClient *)selfCopy setServiceBrowser:v8];

    serviceBrowser2 = [(HMDKeyTransferAgentClient *)selfCopy serviceBrowser];
    [serviceBrowser2 setDelegate:selfCopy];

    serviceBrowser3 = [(HMDKeyTransferAgentClient *)selfCopy serviceBrowser];
    [serviceBrowser3 setShouldCache:1];

    [(HMDKeyTransferAgentClient *)selfCopy setResolutionInProgress:0];
    [(HMDKeyTransferAgentClient *)selfCopy _beginBonjourResolution:0];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setResidentProvisioningStatus:(unint64_t)status
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v8;
    v21 = 2048;
    statusCopy = status;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Updating Resident Provisioning Status: %lx", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = MEMORY[0x277D0F818];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{status, @"kProvisioningStatusKey"}];
  v18 = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v12 = [v9 entitledMessageWithName:@"kResidentProvisioningStatusChangedNotificationKey" messagePayload:v11];

  selfCopy->_residentProvisioningStatus = status;
  homeManager = [(HMDKeyTransferAgent *)selfCopy homeManager];
  messageDispatcher = [homeManager messageDispatcher];
  uuid = [homeManager uuid];
  [messageDispatcher sendMessage:v12 target:uuid];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)resetConfig
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v11 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Resetting Configuration (flushing any stored UUIDs that we have).", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  workQueue = [(HMDKeyTransferAgent *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__HMDKeyTransferAgentClient_resetConfig__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = selfCopy;
  dispatch_async(workQueue, block);

  v8 = *MEMORY[0x277D85DE8];
}

void __40__HMDKeyTransferAgentClient_resetConfig__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPairingWithUUID:0];
  v2 = [*(a1 + 32) idsKeys];
  [v2 removeAllObjects];

  [*(a1 + 32) _saveKeyPlist];
  v3 = [*(a1 + 32) atHomeRetryTimer];
  [v3 suspend];

  v4 = [*(a1 + 32) atHomeRetryTimer];
  [v4 reset];
}

- (void)queryPlistDevices
{
  v27 = *MEMORY[0x277D85DE8];
  homeManager = [(HMDKeyTransferAgent *)self homeManager];
  homes = [homeManager homes];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = homes;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        if ([v10 isOwnerUser])
        {
          accessories = [v10 accessories];
          v12 = [accessories count];

          if (v12)
          {

            workQueue = [(HMDKeyTransferAgent *)self workQueue];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __46__HMDKeyTransferAgentClient_queryPlistDevices__block_invoke;
            block[3] = &unk_279735D00;
            block[4] = self;
            dispatch_async(workQueue, block);

            goto LABEL_14;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138543362;
    v25 = v16;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@No accessories found in owned homes, skipping key transfer", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v13);
LABEL_14:

  v18 = *MEMORY[0x277D85DE8];
}

void __46__HMDKeyTransferAgentClient_queryPlistDevices__block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v44 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Looking for stale items in the IDS Plist", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v6 = [*(a1 + 32) idsKeys];
  obj = [v6 allKeys];

  v7 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (v7)
  {
    v31 = 0;
    v8 = *v38;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v37 + 1) + 8 * i);
        v11 = [*(a1 + 32) _deviceWithUUID:v10];
        if (v11)
        {
          v12 = objc_autoreleasePoolPush();
          v13 = *(a1 + 32);
          v14 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = HMFGetLogIdentifier();
            *buf = 138543618;
            v44 = v15;
            v45 = 2112;
            v46 = v11;
            _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Querying device %@ for UUID.", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v12);
          v16 = [HMDRemoteDeviceMessageDestination alloc];
          v17 = [*(a1 + 32) uuid];
          v18 = [(HMDRemoteDeviceMessageDestination *)v16 initWithTarget:v17 device:v11];

          v19 = [HMDRemoteMessage alloc];
          v41[0] = @"phase";
          v41[1] = @"uuid";
          v42[0] = @"request_uuid";
          v42[1] = v10;
          v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];
          v21 = [(HMDRemoteMessage *)v19 initWithName:@"kKeyTransferAgentKey" destination:v18 payload:v20 type:0 timeout:0 secure:1 restriction:0.0];

          objc_initWeak(buf, *(a1 + 32));
          v33[0] = MEMORY[0x277D85DD0];
          v33[1] = 3221225472;
          v33[2] = __46__HMDKeyTransferAgentClient_queryPlistDevices__block_invoke_47;
          v33[3] = &unk_279735248;
          objc_copyWeak(&v36, buf);
          v22 = v18;
          v34 = v22;
          v35 = v10;
          [(HMDRemoteMessage *)v21 setResponseHandler:v33];
          v23 = [*(a1 + 32) homeManager];
          v24 = [v23 messageDispatcher];
          [v24 sendMessage:v21 completionHandler:0];

          objc_destroyWeak(&v36);
          objc_destroyWeak(buf);
        }

        else
        {
          v25 = [*(a1 + 32) idsKeys];
          [v25 removeObjectForKey:v10];

          v26 = objc_autoreleasePoolPush();
          v27 = *(a1 + 32);
          v28 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = HMFGetLogIdentifier();
            *buf = 138543618;
            v44 = v29;
            v45 = 2112;
            v46 = v10;
            _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@Probably never should have gotten a broadcast from UUID %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v26);
          v31 = 1;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
    }

    while (v7);

    if (v31)
    {
      [*(a1 + 32) _saveKeyPlist];
    }
  }

  else
  {
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __46__HMDKeyTransferAgentClient_queryPlistDevices__block_invoke_47(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__HMDKeyTransferAgentClient_queryPlistDevices__block_invoke_2;
    block[3] = &unk_2797352C0;
    v13 = v5;
    v14 = v8;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v15 = v10;
    v16 = v11;
    v17 = v6;
    dispatch_async(v9, block);
  }
}

void __46__HMDKeyTransferAgentClient_queryPlistDevices__block_invoke_2(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 40);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = HMFGetLogIdentifier();
      v6 = *(a1 + 48);
      v7 = *(a1 + 32);
      v25 = 138543874;
      v26 = v5;
      v27 = 2112;
      v28 = v6;
      v29 = 2112;
      v30 = v7;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Unable to send UUID request message to %@ (%@)", &v25, 0x20u);
    }

    objc_autoreleasePoolPop(v2);
  }

  else
  {
    v8 = [*(a1 + 40) idsKeys];
    v9 = [v8 valueForKey:*(a1 + 56)];

    v10 = [*(a1 + 64) hmf_stringForKey:@"uuid"];
    if (v10)
    {
      v11 = [v9 isEqual:v10];
      v12 = objc_autoreleasePoolPush();
      v13 = *(a1 + 40);
      v14 = HMFGetOSLogHandle();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        if (v15)
        {
          v16 = HMFGetLogIdentifier();
          v25 = 138543362;
          v26 = v16;
          _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Remote host still waiting for key transfer.", &v25, 0xCu);
        }

        objc_autoreleasePoolPop(v12);
      }

      else
      {
        if (v15)
        {
          v22 = HMFGetLogIdentifier();
          v25 = 138543874;
          v26 = v22;
          v27 = 2112;
          v28 = v9;
          v29 = 2112;
          v30 = v10;
          _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Transfer key changed from %@ to %@ (using new key).", &v25, 0x20u);
        }

        objc_autoreleasePoolPop(v12);
        v23 = [*(a1 + 40) idsKeys];
        [v23 setValue:v10 forKey:*(a1 + 56)];

        [*(a1 + 40) _saveKeyPlist];
      }

      [*(a1 + 40) _startBrowser];
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = *(a1 + 40);
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = HMFGetLogIdentifier();
        v25 = 138543618;
        v26 = v20;
        v27 = 2112;
        v28 = v9;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Remote %@ has already transferred key.", &v25, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      v21 = [*(a1 + 40) idsKeys];
      [v21 removeObjectForKey:*(a1 + 56)];

      [*(a1 + 40) _saveKeyPlist];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (id)_deviceWithUUID:(id)d
{
  v44 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = +[HMDAppleAccountManager sharedManager];
  account = [v5 account];
  devices = [account devices];
  v8 = [devices copy];

  v9 = [v8 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v36;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v36 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v35 + 1) + 8 * v12);
      identifier = [v13 identifier];
      uUIDString = [identifier UUIDString];
      v16 = [dCopy isEqual:uUIDString];

      if (v16)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    if ([v13 isCurrentDevice])
    {
      v22 = objc_autoreleasePoolPush();
      selfCopy = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543362;
        v40 = v25;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Skipping sending key to ourselves", buf, 0xCu);
      }

      v26 = v22;
    }

    else
    {
      capabilities = [v13 capabilities];
      supportsKeyTransferServer = [capabilities supportsKeyTransferServer];

      if (supportsKeyTransferServer)
      {
        v21 = v13;
LABEL_22:

        goto LABEL_23;
      }

      v29 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543618;
        v40 = v32;
        v41 = 2112;
        v42 = v13;
        _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@Device does not support key transfer: %@", buf, 0x16u);
      }

      v26 = v29;
    }

    objc_autoreleasePoolPop(v26);
    v21 = 0;
    goto LABEL_22;
  }

LABEL_9:

  v17 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138543618;
    v40 = v20;
    v41 = 2112;
    v42 = dCopy;
    _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Unable to find device with UUID %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  v21 = 0;
LABEL_23:

  v33 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)_saveKeyPlist
{
  v17 = *MEMORY[0x277D85DE8];
  idsKeys = [(HMDKeyTransferAgentClient *)self idsKeys];
  v4 = [idsKeys writeToFile:@"/var/mobile/Library/homed/com.apple.atvpair.plist" atomically:1];

  if ((v4 & 1) == 0)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v8;
      v15 = 2112;
      v16 = @"/var/mobile/Library/homed/com.apple.atvpair.plist";
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Unable to write key storage plist %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  idsKeys2 = [(HMDKeyTransferAgentClient *)self idsKeys];
  v10 = [idsKeys2 count];

  if (v10)
  {
    v11 = 2;
  }

  else
  {
    [(HMDKeyTransferAgentClient *)self _stopBrowser];
    v11 = 0;
  }

  [(HMDKeyTransferAgentClient *)self setResidentProvisioningStatus:v11];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)networkMonitorIsReachable:(id)reachable
{
  workQueue = [(HMDKeyTransferAgent *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__HMDKeyTransferAgentClient_networkMonitorIsReachable___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

uint64_t __55__HMDKeyTransferAgentClient_networkMonitorIsReachable___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) haveCulledPlist];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) setHaveCulledPlist:1];
    v3 = *(a1 + 32);

    return [v3 queryPlistDevices];
  }

  return result;
}

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  atHomeRetryTimer = [(HMDKeyTransferAgentClient *)self atHomeRetryTimer];

  if (atHomeRetryTimer == fireCopy)
  {
    workQueue = [(HMDKeyTransferAgent *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__HMDKeyTransferAgentClient_timerDidFire___block_invoke;
    block[3] = &unk_279735D00;
    block[4] = self;
    dispatch_async(workQueue, block);
  }
}

void __42__HMDKeyTransferAgentClient_timerDidFire___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) pairingWithUUID];

  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v6)
    {
      v7 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v7;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Got request to retry key transfer, but we are in the middle of one.", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    if (v6)
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Got request to retry key transfer.", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [*(a1 + 32) _restartKeyTransfer:0];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  homeManager = [(HMDKeyTransferAgent *)self homeManager];
  messageDispatcher = [homeManager messageDispatcher];
  [messageDispatcher deregisterReceiver:self];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v6.receiver = self;
  v6.super_class = HMDKeyTransferAgentClient;
  [(HMDKeyTransferAgentClient *)&v6 dealloc];
}

- (HMDKeyTransferAgentClient)initWithHomeManager:(id)manager
{
  v57[1] = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v51.receiver = self;
  v51.super_class = HMDKeyTransferAgentClient;
  v5 = [(HMDKeyTransferAgent *)&v51 initWithHomeManager:managerCopy];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v5;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v53 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Creating KeyTransferAgent", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v10 = [HMDRemoteAccountMessageFilter alloc];
    messageDestination = [(HMDKeyTransferAgent *)v7 messageDestination];
    v12 = [(HMDRemoteAccountMessageFilter *)v10 initWithTarget:messageDestination];

    msgFilterChain = [managerCopy msgFilterChain];
    [msgFilterChain addMessageFilter:v12];

    v14 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
    [v14 setRequiresSecureMessage:0];
    [v14 setRequiresAccountMessage:1];
    [v14 setTransportRestriction:1];
    v15 = [v14 copy];
    messageDispatcher = [managerCopy messageDispatcher];
    v48 = v15;
    v57[0] = v15;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:1];
    [messageDispatcher registerForMessage:@"kKeyTransferAgentKey" receiver:v7 policies:v17 selector:sel__handleKeyTransferAgentMessage_];

    v18 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
    [v18 setRequiresSecureMessage:1];
    [v18 setRequiresAccountMessage:1];
    [v18 setTransportRestriction:-1];
    v19 = [v18 copy];
    messageDispatcher2 = [managerCopy messageDispatcher];
    v56 = v19;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
    [messageDispatcher2 registerForMessage:@"kResidentProvisioningStatusChangedNotificationKey" receiver:v7 policies:v21 selector:sel__handleResidentProvisioningStatusChanged_];

    v22 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfFile:@"/var/mobile/Library/homed/com.apple.atvpair.plist"];
    idsKeys = v7->_idsKeys;
    v7->_idsKeys = v22;

    if (!v7->_idsKeys)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v25 = v7->_idsKeys;
      v7->_idsKeys = dictionary;

      if (([(NSMutableDictionary *)v7->_idsKeys writeToFile:@"/var/mobile/Library/homed/com.apple.atvpair.plist" atomically:1]& 1) == 0)
      {
        v47 = v12;
        context = objc_autoreleasePoolPush();
        v26 = v7;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v45 = HMFGetLogIdentifier();
          *buf = 138543618;
          v53 = v45;
          v54 = 2112;
          v55 = @"/var/mobile/Library/homed/com.apple.atvpair.plist";
          _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@Unable to write key storage plist %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(context);
        v12 = v47;
      }
    }

    if ([(NSMutableDictionary *)v7->_idsKeys count])
    {
      workQueue = [(HMDKeyTransferAgent *)v7 workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __49__HMDKeyTransferAgentClient_initWithHomeManager___block_invoke;
      block[3] = &unk_279735D00;
      v29 = v7;
      v50 = v29;
      dispatch_async(workQueue, block);

      [(HMDKeyTransferAgentClient *)v29 setResidentProvisioningStatus:2];
    }

    else
    {
      [(HMDKeyTransferAgentClient *)v7 setResidentProvisioningStatus:0];
    }

    v30 = [objc_alloc(MEMORY[0x277D0F7B0]) initWithMinimumTimeInterval:4 maximumTimeInterval:1 exponentialFactor:10.0 options:86400.0];
    atHomeRetryTimer = v7->_atHomeRetryTimer;
    v7->_atHomeRetryTimer = v30;

    [(HMFExponentialBackoffTimer *)v7->_atHomeRetryTimer setDelegate:v7];
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    bonjourKeys = v7->_bonjourKeys;
    v7->_bonjourKeys = dictionary2;

    v34 = [MEMORY[0x277CBEB58] set];
    targetsToProcess = v7->_targetsToProcess;
    v7->_targetsToProcess = v34;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel___accessoryIsReachable_ name:@"HMDAccessoryIsReachableNotification" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v7 selector:sel___deviceAddedToAccount_ name:@"HMDAccountAddedDeviceNotification" object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v7 selector:sel___deviceUpdated_ name:@"HMDDeviceUpdatedNotification" object:0];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:v7 selector:sel___deviceRemovedFromAccount_ name:@"HMDAccountRemovedDeviceNotification" object:0];

    defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter5 addObserver:v7 selector:sel___accountChanged_ name:@"HMDAppleAccountManagerAccountModifiedNotification" object:0];

    v7->_haveCulledPlist = 0;
    v41 = [objc_alloc(MEMORY[0x277D0F868]) initWithNetAddress:0];
    netMonitor = v7->_netMonitor;
    v7->_netMonitor = v41;

    [(HMFNetMonitor *)v7->_netMonitor setDelegate:v7];
    v7->_tfaState = 0;
    if ([(HMFNetMonitor *)v7->_netMonitor isReachable])
    {
      [(HMDKeyTransferAgentClient *)v7 queryPlistDevices];
      v7->_haveCulledPlist = 1;
    }
  }

  v43 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t83 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t83, &__block_literal_global_65389);
  }

  v3 = logCategory__hmf_once_v84;

  return v3;
}

uint64_t __40__HMDKeyTransferAgentClient_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v84;
  logCategory__hmf_once_v84 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end