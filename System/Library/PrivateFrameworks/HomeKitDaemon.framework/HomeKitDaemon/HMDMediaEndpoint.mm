@interface HMDMediaEndpoint
+ (id)logCategory;
- (BOOL)doesContainAnyAccessory:(id)accessory;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToEndpoint:(id)endpoint;
- (HMDMediaBrowser)browser;
- (HMDMediaEndpoint)initWithEndpoint:(id)endpoint;
- (MRAVEndpoint)retainedEndpoint;
- (MRExternalDevice)externalDevice;
- (NSArray)advertisements;
- (NSSet)outputDeviceIdentifiers;
- (NSString)description;
- (id)copyOrigin;
- (unsigned)connectionState;
- (void)_connectWithCompletionHandler:(id)handler;
- (void)_getPlaybackStateWithCompletionHandler:(id)handler;
- (void)_notifyPendingBlocksOfError:(id)error;
- (void)_setPlaybackState:(unsigned int)state completionHandler:(id)handler;
- (void)_updateOutputDeviceIdentifiers;
- (void)_updateOutputDevicesAndConnectWithCompletionHandler:(id)handler;
- (void)dealloc;
- (void)disconnectFromEndpoint:(id)endpoint;
- (void)disconnectWithCompletionHandler:(id)handler;
- (void)getPlaybackStateWithCompletionHandler:(id)handler;
- (void)setConnectionState:(unsigned int)state;
- (void)setOutputDeviceIdentifiers:(id)identifiers;
- (void)setPlaybackState:(unsigned int)state completionHandler:(id)handler;
- (void)setRetainedEndpoint:(id)endpoint;
- (void)updateOutputDevicesAndConnectWithCompletionHandler:(id)handler;
- (void)updateWithEndpoint:(id)endpoint;
@end

@implementation HMDMediaEndpoint

- (HMDMediaBrowser)browser
{
  WeakRetained = objc_loadWeakRetained(&self->_browser);

  return WeakRetained;
}

- (NSString)description
{
  retainedEndpoint = [(HMDMediaEndpoint *)self retainedEndpoint];
  v4 = MEMORY[0x277CCACA8];
  localizedName = [(HMDMediaEndpoint *)self localizedName];
  sessionIdentifier = [(HMDMediaEndpoint *)self sessionIdentifier];
  advertisements = [(HMDMediaEndpoint *)self advertisements];
  v8 = [v4 stringWithFormat:@"Endpoint(%@/%@) - sessionIdentifier %@  advertisements:\n%@", retainedEndpoint, localizedName, sessionIdentifier, advertisements];

  return v8;
}

- (void)_setPlaybackState:(unsigned int)state completionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__HMDMediaEndpoint__setPlaybackState_completionHandler___block_invoke;
  v8[3] = &unk_278679DC0;
  objc_copyWeak(&v10, &location);
  v7 = handlerCopy;
  v9 = v7;
  stateCopy = state;
  [(HMDMediaEndpoint *)self _connectWithCompletionHandler:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __56__HMDMediaEndpoint__setPlaybackState_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (!v3)
  {
    v10 = [WeakRetained copyOrigin];
    v11 = objc_autoreleasePoolPush();
    v12 = v5;
    v13 = HMFGetOSLogHandle();
    v14 = v13;
    if (v10)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543362;
        v31 = v15;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Attempting to locally set the playback state command with mediaRemote", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      v16 = *(a1 + 48);
      v17 = [v12 workQueue];
      v29 = *(a1 + 32);
      LODWORD(v16) = MRMediaRemoteSendCommandForOriginWithReply();

      if (!v16)
      {
        v18 = [v12 retainedEndpoint];
        v19 = objc_autoreleasePoolPush();
        v20 = v12;
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = HMFGetLogIdentifier();
          *buf = 138543618;
          v31 = v22;
          v32 = 2112;
          v33 = v18;
          _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Sending the command to mediaremote failed for media endpoint %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v19);
        v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2005];
        v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:74 description:@"Media remote command send failure " reason:@"Media remote command send failure" suggestion:0 underlyingError:v23];
        (*(*(a1 + 32) + 16))();
      }

      v25 = v29;
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543362;
        v31 = v26;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot look up origin for mediaSession to set playback state after connection", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      if (!*(a1 + 32))
      {
        goto LABEL_18;
      }

      v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2005];
      v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4 description:@"Cannot lookup origin" reason:@"Cannot lookup origin" suggestion:0 underlyingError:v25];
      (*(*(a1 + 32) + 16))();
    }

LABEL_18:
    goto LABEL_19;
  }

  v6 = objc_autoreleasePoolPush();
  v7 = v5;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v31 = v9;
    v32 = 2112;
    v33 = v3;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Attempt to connect to the endpoint to set the playback state failed with error %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  (*(*(a1 + 32) + 16))();
LABEL_19:

  v28 = *MEMORY[0x277D85DE8];
}

- (void)setPlaybackState:(unsigned int)state completionHandler:(id)handler
{
  handlerCopy = handler;
  workQueue = [(HMDMediaEndpoint *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__HMDMediaEndpoint_setPlaybackState_completionHandler___block_invoke;
  block[3] = &unk_27867A1C0;
  stateCopy = state;
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(workQueue, block);
}

- (void)_getPlaybackStateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__HMDMediaEndpoint__getPlaybackStateWithCompletionHandler___block_invoke;
  v6[3] = &unk_278686D60;
  objc_copyWeak(&v8, &location);
  v5 = handlerCopy;
  v7 = v5;
  [(HMDMediaEndpoint *)self _connectWithCompletionHandler:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __59__HMDMediaEndpoint__getPlaybackStateWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (v3)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v5;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v9;
      v25 = 2112;
      v26 = v3;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Attempt to connect to the endpoint to get the playback state failed with error %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = [WeakRetained copyOrigin];
    v11 = objc_autoreleasePoolPush();
    v12 = v5;
    v13 = HMFGetOSLogHandle();
    v14 = v13;
    if (v10)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543362;
        v24 = v15;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Endpoint Attempting to locally read the playback state from media remote", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      v16 = [v12 workQueue];
      objc_copyWeak(&v22, (a1 + 40));
      v21 = *(a1 + 32);
      MRMediaRemoteGetNowPlayingApplicationPlaybackStateForOrigin();

      objc_destroyWeak(&v22);
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543362;
        v24 = v17;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot look up origin for mediaSession to get playback state after connection", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      if (*(a1 + 32))
      {
        v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2005];
        v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4 description:@"Cannot lookup origin" reason:@"Cannot lookup origin" suggestion:0 underlyingError:v18];
        (*(*(a1 + 32) + 16))();
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __59__HMDMediaEndpoint__getPlaybackStateWithCompletionHandler___block_invoke_24(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    if (a2 > 5)
    {
      v8 = 3;
    }

    else
    {
      v8 = qword_22A587F30[a2];
    }

    v9 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v9;
    v14 = 2048;
    v15 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Locally read the playback state as: %tu", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, 0, a2);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)getPlaybackStateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  workQueue = [(HMDMediaEndpoint *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__HMDMediaEndpoint_getPlaybackStateWithCompletionHandler___block_invoke;
  v7[3] = &unk_27868A7A0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(workQueue, v7);
}

- (void)_notifyPendingBlocksOfError:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  pendingBlocks = [(HMDMediaEndpoint *)self pendingBlocks];
  v6 = [pendingBlocks countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(pendingBlocks);
        }

        (*(*(*(&v12 + 1) + 8 * v9++) + 16))();
      }

      while (v7 != v9);
      v7 = [pendingBlocks countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  pendingBlocks2 = [(HMDMediaEndpoint *)self pendingBlocks];
  [pendingBlocks2 removeAllObjects];

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)doesContainAnyAccessory:(id)accessory
{
  outputDeviceIdentifiers = self->_outputDeviceIdentifiers;
  accessoryCopy = accessory;
  v5 = [(NSSet *)outputDeviceIdentifiers mutableCopy];
  v6 = [MEMORY[0x277CBEB98] setWithArray:accessoryCopy];

  [v5 intersectSet:v6];
  LOBYTE(accessoryCopy) = [v5 count] != 0;

  return accessoryCopy;
}

- (NSArray)advertisements
{
  retainedEndpoint = [(HMDMediaEndpoint *)self retainedEndpoint];
  v3 = retainedEndpoint;
  if (retainedEndpoint)
  {
    outputDevices = [retainedEndpoint outputDevices];
    if (outputDevices)
    {
      v5 = [HMDMediaBrowser advertisementsFromOutputDevices:outputDevices];
      allObjects = [v5 allObjects];
    }

    else
    {
      allObjects = 0;
    }

    v7 = allObjects;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_connectWithCompletionHandler:(id)handler
{
  v28 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (handlerCopy)
  {
    pendingBlocks = [(HMDMediaEndpoint *)self pendingBlocks];
    v6 = _Block_copy(handlerCopy);
    [pendingBlocks addObject:v6];
  }

  externalDevice = [(HMDMediaEndpoint *)self externalDevice];
  v8 = externalDevice;
  if (externalDevice)
  {
    connectionState = [externalDevice connectionState];
    [(HMDMediaEndpoint *)self setConnectionState:connectionState];
    if (connectionState == 1)
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543362;
        v27 = v14;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Already in the process of connecting to the external device...", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
    }

    else if (connectionState == 2)
    {
      [(HMDMediaEndpoint *)self _notifyPendingBlocksOfError:0];
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543362;
        v27 = v18;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@No connection to external device - setting up connection state callback and attempting to connect...", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      [(HMDMediaEndpoint *)selfCopy2 setConnectionState:1];
      sessionIdentifier = [(HMDMediaEndpoint *)selfCopy2 sessionIdentifier];
      objc_initWeak(buf, selfCopy2);
      v23 = MEMORY[0x277D85DD0];
      objc_copyWeak(&v25, buf);
      v20 = sessionIdentifier;
      v24 = v20;
      v21 = [(HMDMediaEndpoint *)selfCopy2 workQueue:v23];
      [v8 setConnectionStateCallback:&v23 withQueue:v21];

      [v8 connectWithOptions:0];
      objc_destroyWeak(&v25);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54];
    [(HMDMediaEndpoint *)self _notifyPendingBlocksOfError:v10];
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __50__HMDMediaEndpoint__connectWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained connectionState];
    [v7 setConnectionState:a2];
    if (a2 != 1 && v8 != a2)
    {
      v9 = [v7 retainedEndpoint];
      v10 = objc_autoreleasePoolPush();
      v11 = v7;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v24 = 138544386;
        v25 = v13;
        v26 = 1024;
        *v27 = a2;
        *&v27[4] = 1024;
        *&v27[6] = v8;
        v28 = 2112;
        v29 = v9;
        v30 = 2112;
        v31 = a3;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Connection state changed to %u (from %u) for endpoint %@ with error %@", &v24, 0x2Cu);
      }

      objc_autoreleasePoolPop(v10);
      v14 = a3;
      if (a2 == 3 && v8 == 2)
      {
        v15 = objc_autoreleasePoolPush();
        v16 = v11;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = HMFGetLogIdentifier();
          v19 = *(a1 + 32);
          v24 = 138543618;
          v25 = v18;
          v26 = 2112;
          *v27 = v19;
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Attempting to refresh the session for the accessories on endpoint (%@) disconnect", &v24, 0x16u);
        }

        objc_autoreleasePoolPop(v15);
        v20 = [v16 browser];
        v21 = [v16 outputDeviceIdentifiers];
        v22 = [v21 allObjects];
        [v20 updateSessionsForAccessories:v22];

        if (!v14)
        {
          v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
        }
      }

      [v11 _notifyPendingBlocksOfError:v14];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)updateOutputDevicesAndConnectWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  workQueue = [(HMDMediaEndpoint *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__HMDMediaEndpoint_updateOutputDevicesAndConnectWithCompletionHandler___block_invoke;
  v7[3] = &unk_27868A7A0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(workQueue, v7);
}

- (void)_updateOutputDevicesAndConnectWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(HMDMediaEndpoint *)self _updateOutputDeviceIdentifiers];
  [(HMDMediaEndpoint *)self _connectWithCompletionHandler:handlerCopy];
}

- (void)disconnectWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  workQueue = [(HMDMediaEndpoint *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HMDMediaEndpoint_disconnectWithCompletionHandler___block_invoke;
  v7[3] = &unk_27868A7A0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(workQueue, v7);
}

void __52__HMDMediaEndpoint_disconnectWithCompletionHandler___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) retainedEndpoint];
  if (v5)
  {
    __disconnectFromEndpoint(v5);
  }

  [*(a1 + 32) setConnectionState:3];
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, 0);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
  [v3 _notifyPendingBlocksOfError:v4];
}

- (void)disconnectFromEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  workQueue = [(HMDMediaEndpoint *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__HMDMediaEndpoint_disconnectFromEndpoint___block_invoke;
  block[3] = &unk_27868A728;
  v8 = endpointCopy;
  v6 = endpointCopy;
  dispatch_async(workQueue, block);
}

- (id)copyOrigin
{
  v14 = *MEMORY[0x277D85DE8];
  externalDevice = [(HMDMediaEndpoint *)self externalDevice];
  v4 = externalDevice;
  if (!externalDevice)
  {
LABEL_6:
    customOrigin = 0;
    goto LABEL_7;
  }

  customOrigin = [externalDevice customOrigin];
  if (!customOrigin)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Cannot look up origin from external device", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    goto LABEL_6;
  }

LABEL_7:

  v10 = *MEMORY[0x277D85DE8];
  return customOrigin;
}

- (MRExternalDevice)externalDevice
{
  v20 = *MEMORY[0x277D85DE8];
  retainedEndpoint = [(HMDMediaEndpoint *)self retainedEndpoint];
  v4 = retainedEndpoint;
  if (retainedEndpoint)
  {
    externalDevice = [retainedEndpoint externalDevice];
    if (externalDevice)
    {
      goto LABEL_9;
    }

    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v9;
      v18 = 2112;
      v19 = v4;
      v10 = "%{public}@Cannot look up the external device for endpoint %@";
      v11 = v8;
      v12 = 22;
LABEL_7:
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, v10, &v16, v12);
    }
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v9;
      v10 = "%{public}@No endpoint to look up origin";
      v11 = v8;
      v12 = 12;
      goto LABEL_7;
    }
  }

  objc_autoreleasePoolPop(v6);
  externalDevice = 0;
LABEL_9:

  v14 = *MEMORY[0x277D85DE8];

  return externalDevice;
}

- (void)setOutputDeviceIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  os_unfair_lock_lock_with_options();
  outputDeviceIdentifiers = self->_outputDeviceIdentifiers;
  self->_outputDeviceIdentifiers = identifiersCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSSet)outputDeviceIdentifiers
{
  os_unfair_lock_lock_with_options();
  v3 = self->_outputDeviceIdentifiers;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setConnectionState:(unsigned int)state
{
  os_unfair_lock_lock_with_options();
  self->_connectionState = state;

  os_unfair_lock_unlock(&self->_lock);
}

- (unsigned)connectionState
{
  os_unfair_lock_lock_with_options();
  connectionState = self->_connectionState;
  os_unfair_lock_unlock(&self->_lock);
  return connectionState;
}

- (void)updateWithEndpoint:(id)endpoint
{
  v5 = *(endpoint + 2);
  endpointCopy = endpoint;
  workQueue = [(HMDMediaEndpoint *)self workQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __39__HMDMediaEndpoint_updateWithEndpoint___block_invoke;
  v9[3] = &unk_27868A750;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  dispatch_async(workQueue, v9);
}

void __39__HMDMediaEndpoint_updateWithEndpoint___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) retainedEndpoint];
  if (v2 != *(a1 + 40))
  {
    [*(a1 + 32) setRetainedEndpoint:?];
    if (v2)
    {
      __disconnectFromEndpoint(v2);
    }

    [*(a1 + 32) setConnectionState:0];
    if (*(a1 + 40))
    {
      objc_initWeak(&location, *(a1 + 32));
      v3 = *(a1 + 32);
      v4[0] = MEMORY[0x277D85DD0];
      v4[1] = 3221225472;
      v4[2] = __39__HMDMediaEndpoint_updateWithEndpoint___block_invoke_2;
      v4[3] = &unk_278687540;
      objc_copyWeak(&v6, &location);
      v5 = *(a1 + 40);
      [v3 _updateOutputDevicesAndConnectWithCompletionHandler:v4];

      objc_destroyWeak(&v6);
      objc_destroyWeak(&location);
    }
  }
}

void __39__HMDMediaEndpoint_updateWithEndpoint___block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v8)
    {
      v9 = HMFGetLogIdentifier();
      v10 = *(a1 + 32);
      v16 = 138543874;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      v20 = 2112;
      v21 = v3;
      v11 = "%{public}@Updating connection to endpoint %@ failed with error %@";
      v12 = v7;
      v13 = 32;
LABEL_6:
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, v11, &v16, v13);
    }
  }

  else if (v8)
  {
    v9 = HMFGetLogIdentifier();
    v14 = *(a1 + 32);
    v16 = 138543618;
    v17 = v9;
    v18 = 2112;
    v19 = v14;
    v11 = "%{public}@Updated connection to endpoint %@";
    v12 = v7;
    v13 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v5);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)_updateOutputDeviceIdentifiers
{
  v20 = *MEMORY[0x277D85DE8];
  retainedEndpoint = [(HMDMediaEndpoint *)self retainedEndpoint];
  v4 = retainedEndpoint;
  if (retainedEndpoint)
  {
    outputDevices = [retainedEndpoint outputDevices];
    v6 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(outputDevices, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = outputDevices;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v15 + 1) + 8 * v11) uid];
          if (v12)
          {
            [v6 addObject:v12];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    v13 = [v6 copy];
    [(HMDMediaEndpoint *)self setOutputDeviceIdentifiers:v13];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)setRetainedEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  os_unfair_lock_lock_with_options();
  if (self->_retainedEndpoint != endpointCopy)
  {
    objc_storeStrong(&self->_retainedEndpoint, endpoint);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (MRAVEndpoint)retainedEndpoint
{
  os_unfair_lock_lock_with_options();
  v3 = self->_retainedEndpoint;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)isEqualToEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  os_unfair_lock_lock_with_options();
  v5 = self->_retainedEndpoint == endpointCopy;

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6 && (-[HMDMediaEndpoint sessionIdentifier](self, "sessionIdentifier"), v7 = objc_claimAutoreleasedReturnValue(), -[HMDMediaEndpoint sessionIdentifier](v6, "sessionIdentifier"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 isEqual:v8], v8, v7, v9))
    {
      retainedEndpoint = [(HMDMediaEndpoint *)v6 retainedEndpoint];
      v11 = [(HMDMediaEndpoint *)self isEqualToEndpoint:retainedEndpoint];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (void)dealloc
{
  retainedEndpoint = self->_retainedEndpoint;
  if (retainedEndpoint)
  {
    self->_retainedEndpoint = 0;
  }

  v4.receiver = self;
  v4.super_class = HMDMediaEndpoint;
  [(HMDMediaEndpoint *)&v4 dealloc];
}

- (HMDMediaEndpoint)initWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v28.receiver = self;
  v28.super_class = HMDMediaEndpoint;
  v6 = [(HMDMediaEndpoint *)&v28 init];
  v7 = v6;
  if (v6)
  {
    if (!endpointCopy)
    {
      v26 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v6->_retainedEndpoint, endpoint);
    v8 = HMDispatchQueueNameString();
    uTF8String = [v8 UTF8String];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create(uTF8String, v10);
    workQueue = v7->_workQueue;
    v7->_workQueue = v11;

    uniqueIdentifier = [endpointCopy uniqueIdentifier];
    v14 = [uniqueIdentifier copy];
    sessionIdentifier = v7->_sessionIdentifier;
    v7->_sessionIdentifier = v14;

    localizedName = [endpointCopy localizedName];
    v17 = [localizedName copy];
    localizedName = v7->_localizedName;
    v7->_localizedName = v17;

    v19 = MEMORY[0x277CCACA8];
    localizedName2 = [(HMDMediaEndpoint *)v7 localizedName];
    sessionIdentifier = [(HMDMediaEndpoint *)v7 sessionIdentifier];
    v22 = [v19 stringWithFormat:@"Endpoint(%@/%@)", localizedName2, sessionIdentifier];
    logID = v7->_logID;
    v7->_logID = v22;

    v7->_connectionState = 0;
    array = [MEMORY[0x277CBEB18] array];
    pendingBlocks = v7->_pendingBlocks;
    v7->_pendingBlocks = array;

    [(HMDMediaEndpoint *)v7 updateOutputDevicesAndConnectWithCompletionHandler:0];
  }

  v26 = v7;
LABEL_6:

  return v26;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t28_128737 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t28_128737, &__block_literal_global_128738);
  }

  v3 = logCategory__hmf_once_v29_128739;

  return v3;
}

void __31__HMDMediaEndpoint_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v29_128739;
  logCategory__hmf_once_v29_128739 = v1;
}

@end