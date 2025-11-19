@interface HMDKeyTransferAgentClient
+ (id)logCategory;
- (BOOL)_newDeviceSeen:(id)a3;
- (HMDKeyTransferAgentClient)initWithHomeManager:(id)a3;
- (id)_deviceWithUUID:(id)a3;
- (void)__accessoryIsReachable:(id)a3;
- (void)__accountChanged:(id)a3;
- (void)__deviceAddedToAccount:(id)a3;
- (void)__deviceRemovedFromAccount:(id)a3;
- (void)__deviceUpdated:(id)a3;
- (void)_beginBonjourResolution:(BOOL)a3;
- (void)_device:(id)a3 addedToAccount:(id)a4;
- (void)_device:(id)a3 removedFromAccount:(id)a4;
- (void)_endPairingWithError:(id)a3 suspendingTimer:(BOOL)a4;
- (void)_handleKeyTransferAgentMessage:(id)a3;
- (void)_handleResidentProvisioningStatusChanged:(id)a3;
- (void)_havePairVerifiedAccessoryWithKeyUUID:(id)a3 forDevice:(id)a4;
- (void)_haveVerifiedTwoFactorAuthenticationWithKeyUUID:(id)a3 forTarget:(id)a4;
- (void)_reallyBeginBonjourResolution;
- (void)_restartKeyTransfer:(id)a3;
- (void)_saveKeyPlist;
- (void)_sendATVPrivateKey:(id)a3 withDevice:(id)a4 retry:(unint64_t)a5;
- (void)_sendIOSPublicKey:(id)a3 withDevice:(id)a4;
- (void)_startBrowser;
- (void)_startPairingWithKeyUUID:(id)a3 forTarget:(id)a4;
- (void)_stopBrowser;
- (void)_tfaVerificationCompleteForKeyUUID:(id)a3 forTarget:(id)a4;
- (void)_tryPairingWithAccessories:(id)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)netService:(id)a3 didUpdateTXTRecord:(id)a4;
- (void)netServiceBrowser:(id)a3 didAddService:(id)a4;
- (void)netServiceBrowser:(id)a3 didStopBrowsingWithError:(id)a4;
- (void)networkMonitorIsReachable:(id)a3;
- (void)queryPlistDevices;
- (void)receivedBonjourTXTFrom:(id)a3 withUUIDData:(id)a4;
- (void)resetConfig;
- (void)setResidentProvisioningStatus:(unint64_t)a3;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDKeyTransferAgentClient

- (void)netServiceBrowser:(id)a3 didAddService:(id)a4
{
  v5 = a4;
  [v5 setDelegate:self];
  v7 = [v5 TXTRecord];
  v6 = [v7 objectForKey:@"uuid"];
  [(HMDKeyTransferAgentClient *)self receivedBonjourTXTFrom:v5 withUUIDData:v6];
}

- (void)netService:(id)a3 didUpdateTXTRecord:(id)a4
{
  v6 = a3;
  v7 = [a4 objectForKey:@"uuid"];
  [(HMDKeyTransferAgentClient *)self receivedBonjourTXTFrom:v6 withUUIDData:v7];
}

- (void)netServiceBrowser:(id)a3 didStopBrowsingWithError:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v18 = v12;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Browsing got stop delegate with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v13 = [(HMDKeyTransferAgent *)v9 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__HMDKeyTransferAgentClient_netServiceBrowser_didStopBrowsingWithError___block_invoke;
    block[3] = &unk_279735D00;
    block[4] = v9;
    dispatch_async(v13, block);
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

- (void)receivedBonjourTXTFrom:(id)a3 withUUIDData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDKeyTransferAgent *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HMDKeyTransferAgentClient_receivedBonjourTXTFrom_withUUIDData___block_invoke;
  block[3] = &unk_279734960;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
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

- (void)_handleResidentProvisioningStatusChanged:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 stringForKey:@"data"];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
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
    v10 = [(HMDKeyTransferAgentClient *)v7 idsKeys];
    [v10 removeObjectForKey:v5];

    v11 = objc_autoreleasePoolPush();
    v12 = v7;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [(HMDKeyTransferAgentClient *)v12 idsKeys];
      v21 = 138543618;
      v22 = v14;
      v23 = 2112;
      v24 = v15;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Current list of IDS received keys:%@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    [(HMDKeyTransferAgentClient *)v12 _saveKeyPlist];
    v16 = [(HMDKeyTransferAgentClient *)v12 idsKeys];
    v17 = [v16 count];

    if (v17)
    {
      v18 = [(HMDKeyTransferAgentClient *)v12 atHomeRetryTimer];
      [v18 reset];

      v19 = [(HMDKeyTransferAgentClient *)v12 atHomeRetryTimer];
      [v19 resume];
    }
  }

  [v4 respondWithPayload:0];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_handleKeyTransferAgentMessage:(id)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [(__CFString *)v4 stringForKey:@"phase"];
    *buf = 138543874;
    v52 = v8;
    v53 = 2112;
    v54 = v4;
    v55 = 2112;
    v56 = v9;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Got Message: %@ / %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [MEMORY[0x277D0F8C0] sharedPowerLogger];
  v11 = [(__CFString *)v4 stringForKey:@"phase"];
  [v10 reportIncomingLoxyMessage:v11];

  v12 = [(__CFString *)v4 stringForKey:@"phase"];
  v13 = [v12 isEqualToString:@"broadcast"];

  if (v13)
  {
    v14 = [(__CFString *)v4 destination];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    if (v16)
    {
      v17 = [v16 device];
      v18 = [v17 identifier];
      v19 = [v18 UUIDString];

      v20 = [(__CFString *)v4 messagePayload];
      v21 = [v20 hmf_UUIDForKey:@"data"];
      v22 = [v21 UUIDString];

      v23 = objc_autoreleasePoolPush();
      v24 = v6;
      v25 = HMFGetOSLogHandle();
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
      if (v22)
      {
        if (v26)
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543874;
          v52 = v27;
          v53 = 2112;
          v54 = v19;
          v55 = 2112;
          v56 = v22;
          _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@HMDHomeManager %@ advertised key transfer UUID %@ (IDS)", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v23);
        v28 = [(HMDKeyTransferAgentClient *)v24 idsKeys];
        [v28 setObject:v22 forKey:v19];

        v29 = [(HMDKeyTransferAgent *)v24 workQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __60__HMDKeyTransferAgentClient__handleKeyTransferAgentMessage___block_invoke;
        block[3] = &unk_279735D00;
        block[4] = v24;
        dispatch_async(v29, block);
      }

      else
      {
        if (v26)
        {
          v35 = HMFGetLogIdentifier();
          *buf = 138543618;
          v52 = v35;
          v53 = 2112;
          v54 = v19;
          _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@HMDHomeManager %@ no longer advertising key transfer UUID (IDS)", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v23);
        v29 = [(HMDKeyTransferAgentClient *)v24 idsKeys];
        [v29 removeObjectForKey:v19];
      }

      v36 = [(HMDKeyTransferAgentClient *)v24 idsKeys];
      v37 = [v36 writeToFile:@"/var/mobile/Library/homed/com.apple.atvpair.plist" atomically:1];

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

      if (v22)
      {
        [(HMDKeyTransferAgentClient *)v24 _newDeviceSeen:v19];
      }

      else
      {
        v42 = [(HMDKeyTransferAgentClient *)v24 pairingWithUUID];
        v43 = [v42 isEqual:v19];

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

    [(__CFString *)v4 respondWithPayload:0];
  }

  else
  {
    v30 = objc_autoreleasePoolPush();
    v31 = v6;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      v34 = [(__CFString *)v4 stringForKey:@"phase"];
      *buf = 138543618;
      v52 = v33;
      v53 = 2112;
      v54 = v34;
      _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@Unknown message key %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [(__CFString *)v4 respondWithError:v16];
  }

  v49 = *MEMORY[0x277D85DE8];
}

- (void)_restartKeyTransfer:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v19 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [(HMDKeyTransferAgentClient *)self bonjourKeys];
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v28 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        v11 = self;
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
        if ([(HMDKeyTransferAgentClient *)v11 _newDeviceSeen:v9])
        {
          v14 = objc_autoreleasePoolPush();
          v15 = v11;
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

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v28 count:16];
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

- (void)__accountChanged:(id)a3
{
  v4 = a3;
  v5 = [(HMDKeyTransferAgent *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__HMDKeyTransferAgentClient___accountChanged___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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

- (void)__accessoryIsReachable:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(HMDKeyTransferAgent *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HMDKeyTransferAgentClient___accessoryIsReachable___block_invoke;
  block[3] = &unk_279732E78;
  v8 = v4;
  v6 = v4;
  objc_copyWeak(&v9, &location);
  dispatch_async(v5, block);

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

- (void)__deviceRemovedFromAccount:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(HMDKeyTransferAgent *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__HMDKeyTransferAgentClient___deviceRemovedFromAccount___block_invoke;
  block[3] = &unk_279732E78;
  v8 = v4;
  v6 = v4;
  objc_copyWeak(&v9, &location);
  dispatch_async(v5, block);

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

- (void)_device:(id)a3 removedFromAccount:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 identifier];
  v9 = [v8 UUIDString];

  if (v6 && v7 && (+[HMDAppleAccountManager sharedManager](HMDAppleAccountManager, "sharedManager"), v10 = objc_claimAutoreleasedReturnValue(), [v10 account], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v7, "isEqual:", v11), v11, v10, (v12 & 1) != 0))
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [v6 identifier];
      v18 = [v17 UUIDString];
      v35 = 138543618;
      v36 = v16;
      v37 = 2112;
      v38 = v18;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Got notification that %@ was removed from the current account", &v35, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v19 = [(HMDKeyTransferAgentClient *)v14 pairingWithUUID];
    v20 = [v19 isEqual:v9];

    v21 = objc_autoreleasePoolPush();
    v22 = v14;
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
      v34 = [(HMDKeyTransferAgentClient *)v22 idsKeys];
      [v34 removeObjectForKey:v9];

      [(HMDKeyTransferAgentClient *)v22 _saveKeyPlist];
    }
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = HMFGetLogIdentifier();
      v31 = [v7 shortDescription];
      v35 = 138543874;
      v36 = v30;
      v37 = 2112;
      v38 = v9;
      v39 = 2112;
      v40 = v31;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@Device %@ not removed from current account %@.", &v35, 0x20u);
    }

    objc_autoreleasePoolPop(v27);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)__deviceUpdated:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(HMDKeyTransferAgent *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__HMDKeyTransferAgentClient___deviceUpdated___block_invoke;
  block[3] = &unk_279732E78;
  v8 = v4;
  v6 = v4;
  objc_copyWeak(&v9, &location);
  dispatch_async(v5, block);

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

- (void)__deviceAddedToAccount:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(HMDKeyTransferAgent *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HMDKeyTransferAgentClient___deviceAddedToAccount___block_invoke;
  block[3] = &unk_279732E78;
  v8 = v4;
  v6 = v4;
  objc_copyWeak(&v9, &location);
  dispatch_async(v5, block);

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

- (void)_device:(id)a3 addedToAccount:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 identifier];
  v9 = [v8 UUIDString];

  if (v6 && v7 && (+[HMDAppleAccountManager sharedManager](HMDAppleAccountManager, "sharedManager"), v10 = objc_claimAutoreleasedReturnValue(), [v10 account], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v7, "isEqual:", v11), v11, v10, (v12 & 1) != 0))
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = HMFGetLogIdentifier();
      v23 = 138543618;
      v24 = v16;
      v25 = 2112;
      v26 = v9;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Got notification that %@ was added to the current account", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    [(HMDKeyTransferAgentClient *)v14 _newDeviceSeen:v9];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [v7 shortDescription];
      v23 = 138543874;
      v24 = v20;
      v25 = 2112;
      v26 = v9;
      v27 = 2112;
      v28 = v21;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Device %@ not added / updated from current account %@.", &v23, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)_newDeviceSeen:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDKeyTransferAgentClient *)self bonjourKeys];
  v6 = [v5 objectForKey:v4];

  v7 = [(HMDKeyTransferAgentClient *)self idsKeys];
  v8 = [v7 objectForKey:v4];

  v9 = objc_autoreleasePoolPush();
  v10 = self;
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
      [(HMDKeyTransferAgentClient *)v10 setResidentProvisioningStatus:2];
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
  v15 = v10;
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

  [(HMDKeyTransferAgentClient *)v15 _startPairingWithKeyUUID:v8 forTarget:v4];
  v19 = 1;
LABEL_20:

  v25 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)_sendATVPrivateKey:(id)a3 withDevice:(id)a4 retry:(unint64_t)a5
{
  v50 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v36 = [v7 hmf_stringForKey:@"kControllerPairingNameKey"];
  v35 = [v7 hmf_dataForKey:@"kControllerKeyPairKey"];
  v9 = [objc_alloc(MEMORY[0x277D0F8B0]) initWithPairingKeyData:v35];
  v10 = [objc_alloc(MEMORY[0x277CFEC20]) initWithIdentifier:v36 publicKey:v9 privateKey:0 permissions:0];
  if (v10)
  {
    v11 = +[HMDIdentityRegistry sharedRegistry];
    [v11 registerIdentity:v10 device:v8 object:self];

    v12 = [MEMORY[0x277CFEC78] systemStore];
    v43 = 0;
    v44 = 0;
    v42 = 0;
    v13 = [v12 getControllerPublicKey:0 secretKey:0 keyPair:&v44 username:&v43 allowCreation:0 error:&v42];
    v33 = v44;
    v14 = v43;
    v34 = v42;

    if (v13)
    {
      v15 = [HMDRemoteDeviceMessageDestination alloc];
      v16 = [(HMDKeyTransferAgent *)self uuid];
      v31 = [(HMDRemoteDeviceMessageDestination *)v15 initWithTarget:v16 device:v8];

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
      v41[1] = a5;
      v38 = v8;
      v39 = v7;
      v40 = v10;
      [(HMDRemoteMessage *)v19 setResponseHandler:v37];
      v20 = [(HMDKeyTransferAgent *)self homeManager];
      v21 = [v20 messageDispatcher];
      [v21 sendMessage:v19 completionHandler:0];

      [(HMDKeyTransferAgentClient *)self setResidentProvisioningStatus:0];
      objc_destroyWeak(v41);
      objc_destroyWeak(location);
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      v27 = self;
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
      [(HMDKeyTransferAgentClient *)v27 _endPairingWithError:v34 suspendingTimer:1];
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = self;
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
    [(HMDKeyTransferAgentClient *)v23 _endPairingWithError:v14 suspendingTimer:1];
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

- (void)_sendIOSPublicKey:(id)a3 withDevice:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDKeyTransferAgent *)self homeManager];
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v9 = [v8 getOrCreateControllerPublicKey:&v34 controllerUsername:&v33 error:&v32];
  v10 = v34;
  v11 = v33;
  v12 = v32;
  if (v9)
  {
    v13 = [HMDRemoteDeviceMessageDestination alloc];
    v14 = [(HMDKeyTransferAgent *)self uuid];
    v15 = [(HMDRemoteDeviceMessageDestination *)v13 initWithTarget:v14 device:v7];

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
    v29 = self;
    objc_copyWeak(&v31, location);
    v30 = v7;
    [(HMDRemoteMessage *)v18 setResponseHandler:&v25];
    v19 = [v8 messageDispatcher];
    [v19 sendMessage:v18];

    objc_destroyWeak(&v31);
    objc_destroyWeak(location);
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = self;
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
    [(HMDKeyTransferAgentClient *)v21 _endPairingWithError:v12 suspendingTimer:1];
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

- (void)_havePairVerifiedAccessoryWithKeyUUID:(id)a3 forDevice:(id)a4
{
  v26[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [HMDRemoteDeviceMessageDestination alloc];
  v9 = [(HMDKeyTransferAgent *)self uuid];
  v10 = [(HMDRemoteDeviceMessageDestination *)v8 initWithTarget:v9 device:v7];

  v11 = [HMDRemoteMessage alloc];
  v25[0] = @"phase";
  v25[1] = @"data";
  v26[0] = @"ping";
  v26[1] = v6;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
  v13 = [(HMDRemoteMessage *)v11 initWithName:@"kKeyTransferAgentKey" destination:v10 payload:v12 type:0 timeout:0 secure:2 restriction:0.0];

  objc_initWeak(&location, self);
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __77__HMDKeyTransferAgentClient__havePairVerifiedAccessoryWithKeyUUID_forDevice___block_invoke;
  v21 = &unk_279733AE8;
  objc_copyWeak(&v23, &location);
  v14 = v7;
  v22 = v14;
  [(HMDRemoteMessage *)v13 setResponseHandler:&v18];
  v15 = [(HMDKeyTransferAgent *)self homeManager:v18];
  v16 = [v15 messageDispatcher];
  [v16 sendMessage:v13 completionHandler:0];

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

- (void)_haveVerifiedTwoFactorAuthenticationWithKeyUUID:(id)a3 forTarget:(id)a4
{
  v113 = *MEMORY[0x277D85DE8];
  v83 = a3;
  v86 = a4;
  v85 = [MEMORY[0x277CBEB18] array];
  v84 = [MEMORY[0x277CBEB18] array];
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v5 = +[HMDAppleAccountManager sharedManager];
  v6 = [v5 account];
  v7 = [v6 devices];

  obj = v7;
  v8 = [v7 countByEnumeratingWithState:&v102 objects:v112 count:16];
  if (!v8)
  {
LABEL_14:

LABEL_52:
    v67 = objc_autoreleasePoolPush();
    v68 = self;
    v69 = HMFGetOSLogHandle();
    v33 = v83;
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      v70 = HMFGetLogIdentifier();
      *buf = 138543618;
      v109 = v70;
      v110 = 2112;
      v111 = v86;
      _os_log_impl(&dword_2531F8000, v69, OS_LOG_TYPE_ERROR, "%{public}@The device with uuid %@ does not belong to the current user (waiting for IDS notification).", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v67);
    v65 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:10 userInfo:0];
    [(HMDKeyTransferAgentClient *)v68 _endPairingWithError:v65 suspendingTimer:1];
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
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [v12 identifier];
      v18 = [v17 UUIDString];
      *buf = 138543618;
      v109 = v16;
      v110 = 2112;
      v111 = v18;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Checking ownership of %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v19 = [v12 capabilities];
    if (([v19 supportsKeyTransferServer] & 1) == 0)
    {

      goto LABEL_12;
    }

    v20 = [v12 identifier];
    v21 = [v20 UUIDString];
    v22 = [v86 isEqual:v21];

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
  v24 = v14;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v27 = HMFGetLogIdentifier();
    v28 = [v12 identifier];
    v29 = [v28 UUIDString];
    *buf = 138543618;
    v109 = v27;
    v110 = 2112;
    v111 = v29;
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
  v31 = [(HMDKeyTransferAgent *)v24 homeManager];
  v32 = [v31 homes];

  v33 = v83;
  v81 = [v32 countByEnumeratingWithState:&v98 objects:v107 count:16];
  if (v81)
  {
    v82 = *v99;
    v79 = v32;
    v80 = v30;
    v78 = v24;
    do
    {
      v34 = 0;
      do
      {
        if (*v99 != v82)
        {
          objc_enumerationMutation(v32);
        }

        obja = v34;
        v35 = *(*(&v98 + 1) + 8 * v34);
        v36 = [v35 isOwnerUser];
        v37 = objc_autoreleasePoolPush();
        v38 = v24;
        v39 = HMFGetOSLogHandle();
        v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
        if ((v36 & 1) == 0)
        {
          if (v40)
          {
            v62 = HMFGetLogIdentifier();
            v63 = [v35 uuid];
            v64 = [v63 UUIDString];
            *buf = 138543618;
            v109 = v62;
            v110 = 2112;
            v111 = v64;
            _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@We do not own the home %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v37);
          goto LABEL_49;
        }

        if (v40)
        {
          v41 = HMFGetLogIdentifier();
          v42 = [v35 uuid];
          v43 = [v42 UUIDString];
          *buf = 138543618;
          v109 = v41;
          v110 = 2112;
          v111 = v43;
          _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@We own the home %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v37);
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v44 = [v35 accessories];
        v45 = [v44 copy];

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
                  v75 = [v52 uuid];
                  v76 = [v75 UUIDString];
                  *buf = 138543618;
                  v109 = v74;
                  v110 = 2112;
                  v111 = v76;
                  _os_log_impl(&dword_2531F8000, v73, OS_LOG_TYPE_DEFAULT, "%{public}@%@ has an open pair verify session (how lucky).", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v71);
                v33 = v83;
                v65 = v80;
                [(HMDKeyTransferAgentClient *)v72 _havePairVerifiedAccessoryWithKeyUUID:v83 forDevice:v80];

                v66 = v79;
                goto LABEL_58;
              }

              if ([v52 linkSpeed] < 0)
              {
                [v84 addObject:v52];
                v53 = objc_autoreleasePoolPush();
                v61 = v38;
                v55 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
                {
                  v56 = HMFGetLogIdentifier();
                  v57 = [v50 uuid];
                  v58 = [v57 UUIDString];
                  *buf = 138543618;
                  v109 = v56;
                  v110 = 2112;
                  v111 = v58;
                  v59 = v55;
                  v60 = "%{public}@%@ is a slow accessory.";
LABEL_41:
                  _os_log_impl(&dword_2531F8000, v59, OS_LOG_TYPE_DEFAULT, v60, buf, 0x16u);
                }
              }

              else
              {
                [v85 addObject:v52];
                v53 = objc_autoreleasePoolPush();
                v54 = v38;
                v55 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
                {
                  v56 = HMFGetLogIdentifier();
                  v57 = [v50 uuid];
                  v58 = [v57 UUIDString];
                  *buf = 138543618;
                  v109 = v56;
                  v110 = 2112;
                  v111 = v58;
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

        v33 = v83;
        v32 = v79;
        v30 = v80;
        v24 = v78;
LABEL_49:
        v34 = obja + 1;
      }

      while (obja + 1 != v81);
      v81 = [v32 countByEnumeratingWithState:&v98 objects:v107 count:16];
    }

    while (v81);
  }

  [v85 addObjectsFromArray:v84];
  v91[0] = MEMORY[0x277D85DD0];
  v91[1] = 3221225472;
  v91[2] = __87__HMDKeyTransferAgentClient__haveVerifiedTwoFactorAuthenticationWithKeyUUID_forTarget___block_invoke;
  v91[3] = &unk_279734D88;
  v91[4] = v24;
  v92 = v33;
  v93 = v30;
  v65 = v30;
  [(HMDKeyTransferAgentClient *)v24 _tryPairingWithAccessories:v85 completionHandler:v91];

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

- (void)_tryPairingWithAccessories:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 firstObject];
  if (v8)
  {
    [v6 removeObject:v8];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __74__HMDKeyTransferAgentClient__tryPairingWithAccessories_completionHandler___block_invoke;
    v10[3] = &unk_279728298;
    v10[4] = self;
    v11 = v8;
    v12 = v6;
    v13 = v7;
    [v11 verifyPairingWithCompletionHandler:v10];
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:2 userInfo:0];
    (*(v7 + 2))(v7, v9);
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

- (void)_tfaVerificationCompleteForKeyUUID:(id)a3 forTarget:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(HMDKeyTransferAgentClient *)self tfaState]== 1)
  {
    v8 = [(HMDKeyTransferAgentClient *)self atHomeRetryTimer];
    [v8 suspend];

    v9 = [(HMDKeyTransferAgent *)self homeManager];
    [v9 startLocalTransport];

    [(HMDKeyTransferAgentClient *)self setResidentProvisioningStatus:[(HMDKeyTransferAgentClient *)self residentProvisioningStatus]& 0xFFFFFFFFFFFFFFFELL];
    v10 = dispatch_time(0, 20000000000);
    v11 = [(HMDKeyTransferAgent *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__HMDKeyTransferAgentClient__tfaVerificationCompleteForKeyUUID_forTarget___block_invoke;
    block[3] = &unk_279734960;
    block[4] = self;
    v15 = v6;
    v16 = v7;
    dispatch_after(v10, v11, block);
  }

  else
  {
    [(HMDKeyTransferAgentClient *)self setResidentProvisioningStatus:[(HMDKeyTransferAgentClient *)self residentProvisioningStatus]| 1];
    v12 = [(HMDKeyTransferAgentClient *)self atHomeRetryTimer];
    [v12 resume];

    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:10 userInfo:0];
    [(HMDKeyTransferAgentClient *)self _endPairingWithError:v13 suspendingTimer:0];
  }
}

- (void)_startPairingWithKeyUUID:(id)a3 forTarget:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDKeyTransferAgentClient *)self pairingWithUUID];

  if (v8)
  {
    v9 = [(HMDKeyTransferAgentClient *)self pairingWithUUID];
    v10 = [v9 isEqual:v7];

    if ((v10 & 1) == 0)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [(HMDKeyTransferAgentClient *)v12 pairingWithUUID];
        *buf = 138543874;
        v28 = v14;
        v29 = 2112;
        v30 = v15;
        v31 = 2112;
        v32 = v7;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Currently in the middle of processing a request from %@ (queueing request from %@)", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v11);
      v16 = [(HMDKeyTransferAgentClient *)v12 targetsToProcess];
      [v16 addObject:v7];
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v20;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Beginning KeyTransferAgent", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    [(HMDKeyTransferAgentClient *)v18 setPairingWithUUID:v7];
    if ([(HMDKeyTransferAgentClient *)v18 tfaState])
    {
      [(HMDKeyTransferAgentClient *)v18 _tfaVerificationCompleteForKeyUUID:v6 forTarget:v7];
    }

    else
    {
      v21 = [(HMDKeyTransferAgentClient *)v18 atHomeRetryTimer];
      [v21 suspend];

      objc_initWeak(buf, v18);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __64__HMDKeyTransferAgentClient__startPairingWithKeyUUID_forTarget___block_invoke;
      v23[3] = &unk_27972F0B8;
      objc_copyWeak(&v26, buf);
      v24 = v6;
      v25 = v7;
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

- (void)_endPairingWithError:(id)a3 suspendingTimer:(BOOL)a4
{
  v4 = a4;
  v45 = *MEMORY[0x277D85DE8];
  v35 = a3;
  if (v35)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v42 = v9;
      v43 = 2112;
      v44 = v35;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Pairing ended in failure: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v10 = [(HMDKeyTransferAgentClient *)self atHomeRetryTimer];
    [v10 reset];

    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v42 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Pairing ended successfully", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [(HMDKeyTransferAgentClient *)v12 pairingWithUUID];

    if (v15)
    {
      v16 = [(HMDKeyTransferAgentClient *)v12 bonjourKeys];
      v17 = [(HMDKeyTransferAgentClient *)v12 pairingWithUUID];
      [v16 removeObjectForKey:v17];

      v18 = [(HMDKeyTransferAgentClient *)v12 idsKeys];
      v19 = [(HMDKeyTransferAgentClient *)v12 pairingWithUUID];
      [v18 removeObjectForKey:v19];
    }

    [(HMDKeyTransferAgentClient *)v12 _saveKeyPlist];
  }

  v20 = [(HMDKeyTransferAgentClient *)self pairingWithUUID];

  if (v20)
  {
    v21 = [(HMDKeyTransferAgentClient *)self targetsToProcess];
    v22 = [(HMDKeyTransferAgentClient *)self pairingWithUUID];
    [v21 removeObject:v22];
  }

  [(HMDKeyTransferAgentClient *)self setPairingWithUUID:0];
  if (v4)
  {
    v23 = [(HMDKeyTransferAgentClient *)self atHomeRetryTimer];
    [v23 suspend];
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v24 = [(HMDKeyTransferAgentClient *)self targetsToProcess];
  v25 = [v24 countByEnumeratingWithState:&v36 objects:v40 count:16];
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
        objc_enumerationMutation(v24);
      }

      v29 = *(*(&v36 + 1) + 8 * v28);
      v30 = objc_autoreleasePoolPush();
      v31 = self;
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
      if ([(HMDKeyTransferAgentClient *)v31 _newDeviceSeen:v29])
      {
        break;
      }

      if (v26 == ++v28)
      {
        v26 = [v24 countByEnumeratingWithState:&v36 objects:v40 count:16];
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

- (void)_beginBonjourResolution:(BOOL)a3
{
  v3 = a3;
  v27 = *MEMORY[0x277D85DE8];
  if ([(HMDKeyTransferAgentClient *)self resolutionInProgress])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
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

  v12 = [(HMDKeyTransferAgentClient *)self serviceBrowser];

  if (!v12)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
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
  v14 = self;
  v15 = HMFGetOSLogHandle();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
  if (v3)
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
    v19 = [(HMDKeyTransferAgent *)v14 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__HMDKeyTransferAgentClient__beginBonjourResolution___block_invoke;
    block[3] = &unk_279735D00;
    block[4] = v14;
    dispatch_after(v18, v19, block);
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
    [(HMDKeyTransferAgentClient *)v14 _reallyBeginBonjourResolution];
  }

LABEL_13:
  v20 = *MEMORY[0x277D85DE8];
}

- (void)_reallyBeginBonjourResolution
{
  objc_initWeak(&location, self);
  v3 = [(HMDKeyTransferAgentClient *)self serviceBrowser];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__HMDKeyTransferAgentClient__reallyBeginBonjourResolution__block_invoke;
  v4[3] = &unk_2797338E8;
  v4[4] = self;
  objc_copyWeak(&v5, &location);
  [v3 startBrowsingWithCompletionHandler:v4];

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
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Ending Bonjour browser.", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDKeyTransferAgentClient *)v4 serviceBrowser];
  [v7 stopBrowsing];

  [(HMDKeyTransferAgentClient *)v4 setServiceBrowser:0];
  [(HMDKeyTransferAgentClient *)v4 setResolutionInProgress:0];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_startBrowser
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(HMDKeyTransferAgentClient *)self serviceBrowser];

  if (!v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = self;
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
    [(HMDKeyTransferAgentClient *)v5 setServiceBrowser:v8];

    v9 = [(HMDKeyTransferAgentClient *)v5 serviceBrowser];
    [v9 setDelegate:v5];

    v10 = [(HMDKeyTransferAgentClient *)v5 serviceBrowser];
    [v10 setShouldCache:1];

    [(HMDKeyTransferAgentClient *)v5 setResolutionInProgress:0];
    [(HMDKeyTransferAgentClient *)v5 _beginBonjourResolution:0];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setResidentProvisioningStatus:(unint64_t)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v8;
    v21 = 2048;
    v22 = a3;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Updating Resident Provisioning Status: %lx", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = MEMORY[0x277D0F818];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{a3, @"kProvisioningStatusKey"}];
  v18 = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v12 = [v9 entitledMessageWithName:@"kResidentProvisioningStatusChangedNotificationKey" messagePayload:v11];

  v6->_residentProvisioningStatus = a3;
  v13 = [(HMDKeyTransferAgent *)v6 homeManager];
  v14 = [v13 messageDispatcher];
  v15 = [v13 uuid];
  [v14 sendMessage:v12 target:v15];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)resetConfig
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v11 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Resetting Configuration (flushing any stored UUIDs that we have).", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDKeyTransferAgent *)v4 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__HMDKeyTransferAgentClient_resetConfig__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = v4;
  dispatch_async(v7, block);

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
  v3 = [(HMDKeyTransferAgent *)self homeManager];
  v4 = [v3 homes];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v4;
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
          v11 = [v10 accessories];
          v12 = [v11 count];

          if (v12)
          {

            v17 = [(HMDKeyTransferAgent *)self workQueue];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __46__HMDKeyTransferAgentClient_queryPlistDevices__block_invoke;
            block[3] = &unk_279735D00;
            block[4] = self;
            dispatch_async(v17, block);

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
  v14 = self;
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

- (id)_deviceWithUUID:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = +[HMDAppleAccountManager sharedManager];
  v6 = [v5 account];
  v7 = [v6 devices];
  v8 = [v7 copy];

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
      v14 = [v13 identifier];
      v15 = [v14 UUIDString];
      v16 = [v4 isEqual:v15];

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
      v23 = self;
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
      v27 = [v13 capabilities];
      v28 = [v27 supportsKeyTransferServer];

      if (v28)
      {
        v21 = v13;
LABEL_22:

        goto LABEL_23;
      }

      v29 = objc_autoreleasePoolPush();
      v30 = self;
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
  v18 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138543618;
    v40 = v20;
    v41 = 2112;
    v42 = v4;
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
  v3 = [(HMDKeyTransferAgentClient *)self idsKeys];
  v4 = [v3 writeToFile:@"/var/mobile/Library/homed/com.apple.atvpair.plist" atomically:1];

  if ((v4 & 1) == 0)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
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

  v9 = [(HMDKeyTransferAgentClient *)self idsKeys];
  v10 = [v9 count];

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

- (void)networkMonitorIsReachable:(id)a3
{
  v4 = [(HMDKeyTransferAgent *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__HMDKeyTransferAgentClient_networkMonitorIsReachable___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v4, block);
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

- (void)timerDidFire:(id)a3
{
  v4 = a3;
  v5 = [(HMDKeyTransferAgentClient *)self atHomeRetryTimer];

  if (v5 == v4)
  {
    v6 = [(HMDKeyTransferAgent *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__HMDKeyTransferAgentClient_timerDidFire___block_invoke;
    block[3] = &unk_279735D00;
    block[4] = self;
    dispatch_async(v6, block);
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
  v3 = [(HMDKeyTransferAgent *)self homeManager];
  v4 = [v3 messageDispatcher];
  [v4 deregisterReceiver:self];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = HMDKeyTransferAgentClient;
  [(HMDKeyTransferAgentClient *)&v6 dealloc];
}

- (HMDKeyTransferAgentClient)initWithHomeManager:(id)a3
{
  v57[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v51.receiver = self;
  v51.super_class = HMDKeyTransferAgentClient;
  v5 = [(HMDKeyTransferAgent *)&v51 initWithHomeManager:v4];
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
    v11 = [(HMDKeyTransferAgent *)v7 messageDestination];
    v12 = [(HMDRemoteAccountMessageFilter *)v10 initWithTarget:v11];

    v13 = [v4 msgFilterChain];
    [v13 addMessageFilter:v12];

    v14 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
    [v14 setRequiresSecureMessage:0];
    [v14 setRequiresAccountMessage:1];
    [v14 setTransportRestriction:1];
    v15 = [v14 copy];
    v16 = [v4 messageDispatcher];
    v48 = v15;
    v57[0] = v15;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:1];
    [v16 registerForMessage:@"kKeyTransferAgentKey" receiver:v7 policies:v17 selector:sel__handleKeyTransferAgentMessage_];

    v18 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
    [v18 setRequiresSecureMessage:1];
    [v18 setRequiresAccountMessage:1];
    [v18 setTransportRestriction:-1];
    v19 = [v18 copy];
    v20 = [v4 messageDispatcher];
    v56 = v19;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
    [v20 registerForMessage:@"kResidentProvisioningStatusChangedNotificationKey" receiver:v7 policies:v21 selector:sel__handleResidentProvisioningStatusChanged_];

    v22 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfFile:@"/var/mobile/Library/homed/com.apple.atvpair.plist"];
    idsKeys = v7->_idsKeys;
    v7->_idsKeys = v22;

    if (!v7->_idsKeys)
    {
      v24 = [MEMORY[0x277CBEB38] dictionary];
      v25 = v7->_idsKeys;
      v7->_idsKeys = v24;

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
      v28 = [(HMDKeyTransferAgent *)v7 workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __49__HMDKeyTransferAgentClient_initWithHomeManager___block_invoke;
      block[3] = &unk_279735D00;
      v29 = v7;
      v50 = v29;
      dispatch_async(v28, block);

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
    v32 = [MEMORY[0x277CBEB38] dictionary];
    bonjourKeys = v7->_bonjourKeys;
    v7->_bonjourKeys = v32;

    v34 = [MEMORY[0x277CBEB58] set];
    targetsToProcess = v7->_targetsToProcess;
    v7->_targetsToProcess = v34;

    v36 = [MEMORY[0x277CCAB98] defaultCenter];
    [v36 addObserver:v7 selector:sel___accessoryIsReachable_ name:@"HMDAccessoryIsReachableNotification" object:0];

    v37 = [MEMORY[0x277CCAB98] defaultCenter];
    [v37 addObserver:v7 selector:sel___deviceAddedToAccount_ name:@"HMDAccountAddedDeviceNotification" object:0];

    v38 = [MEMORY[0x277CCAB98] defaultCenter];
    [v38 addObserver:v7 selector:sel___deviceUpdated_ name:@"HMDDeviceUpdatedNotification" object:0];

    v39 = [MEMORY[0x277CCAB98] defaultCenter];
    [v39 addObserver:v7 selector:sel___deviceRemovedFromAccount_ name:@"HMDAccountRemovedDeviceNotification" object:0];

    v40 = [MEMORY[0x277CCAB98] defaultCenter];
    [v40 addObserver:v7 selector:sel___accountChanged_ name:@"HMDAppleAccountManagerAccountModifiedNotification" object:0];

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