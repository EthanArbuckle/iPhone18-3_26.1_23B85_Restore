@interface HMDSoftwareUpdateManager
+ (BOOL)isSupported;
- (HMDAppleMediaAccessory)accessory;
- (HMDSoftwareUpdateManager)init;
- (id)messageDestination;
- (void)_handleStart:(id)a3;
- (void)_handleStop:(id)a3;
- (void)registerForMessages;
- (void)startUpdate:(id)a3 completionHandler:(id)a4;
@end

@implementation HMDSoftwareUpdateManager

- (HMDAppleMediaAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x277D0F820]);
  v4 = [(HMDSoftwareUpdateManager *)self messageTargetUUID];
  v5 = [v3 initWithTarget:v4];

  return v5;
}

- (void)startUpdate:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDSoftwareUpdateManager *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HMDSoftwareUpdateManager_startUpdate_completionHandler___block_invoke;
  block[3] = &unk_278689F98;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

void __58__HMDSoftwareUpdateManager_startUpdate_completionHandler___block_invoke(id *a1)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v2 = [a1[4] activeClients];
  v3 = [v2 anyObject];

  if (v3)
  {
    v29 = *MEMORY[0x277CD1130];
    v4 = encodeRootObjectForIncomingXPCMessage(a1[5], 0);
    v30[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];

    v6 = [MEMORY[0x277D0F848] entitledMessageWithName:*MEMORY[0x277CD1110] messagePayload:v5];
    v7 = [v6 mutableCopy];

    v8 = [a1[4] messageDestination];
    [v7 setDestination:v8];

    [v7 setTransport:v3];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v27 = 0x2020000000;
    v28 = 0;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __58__HMDSoftwareUpdateManager_startUpdate_completionHandler___block_invoke_14;
    v23[3] = &unk_278686E18;
    p_buf = &buf;
    v24 = a1[6];
    [v7 setResponseHandler:v23];
    v9 = [a1[4] messageDispatcher];
    v10 = [v7 copy];
    [v9 sendMessage:v10 completionHandler:0];

    v11 = dispatch_time(0, 30000000000);
    v12 = [a1[4] clientQueue];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __58__HMDSoftwareUpdateManager_startUpdate_completionHandler___block_invoke_2;
    v19[3] = &unk_278686E40;
    v22 = &buf;
    v19[4] = a1[4];
    v20 = v7;
    v21 = a1[6];
    v13 = v7;
    dispatch_after(v11, v12, v19);

    _Block_object_dispose(&buf, 8);
LABEL_7:

    goto LABEL_8;
  }

  v14 = objc_autoreleasePoolPush();
  v15 = a1[4];
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = HMFGetLogIdentifier();
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v17;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot handle start update, no active clients", &buf, 0xCu);
  }

  objc_autoreleasePoolPop(v14);
  if (a1[6])
  {
    v5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    (*(a1[6] + 2))();
    goto LABEL_7;
  }

LABEL_8:

  v18 = *MEMORY[0x277D85DE8];
}

void __58__HMDSoftwareUpdateManager_startUpdate_completionHandler___block_invoke_14(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = *(*(a1 + 40) + 8);
  if ((*(v6 + 24) & 1) == 0 && *(a1 + 32))
  {
    v7 = v10;
    v8 = v7;
    if (v7 && ([v7 isHMError] & 1) == 0)
    {
      v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23 description:0 reason:0 suggestion:0 underlyingError:v8];

      v8 = v9;
    }

    (*(*(a1 + 32) + 16))();

    v6 = *(*(a1 + 40) + 8);
  }

  *(v6 + 24) = 1;
}

void __58__HMDSoftwareUpdateManager_startUpdate_completionHandler___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = HMFGetLogIdentifier();
      v6 = *(a1 + 40);
      v9 = 138543618;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Client failed to respond to message: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
    if (*(a1 + 48))
    {
      v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:8];
      (*(*(a1 + 48) + 16))();
    }
  }

  *(*(*(a1 + 56) + 8) + 24) = 1;
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleStop:(id)a3
{
  v8 = a3;
  v4 = [v8 transport];
  if (v4)
  {
    v5 = [(HMDSoftwareUpdateManager *)self activeClients];
    [v5 removeObject:v4];
  }

  v6 = [v8 responseHandler];

  if (v6)
  {
    v7 = [v8 responseHandler];
    v7[2](v7, 0, 0);
  }
}

- (void)_handleStart:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 transport];
  if (v5)
  {
    v6 = [(HMDSoftwareUpdateManager *)self activeClients];
    [v6 addObject:v5];
  }

  v7 = [v4 responseHandler];

  if (v7)
  {
    v8 = [(HMDSoftwareUpdateManager *)self accessory];
    v9 = [v8 softwareUpdate];

    if (v9)
    {
      v14 = *MEMORY[0x277CD1130];
      v10 = encodeRootObjectForIncomingXPCMessage(v9, 0);
      v15[0] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    }

    else
    {
      v11 = 0;
    }

    v12 = [v4 responseHandler];
    (v12)[2](v12, 0, v11);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)registerForMessages
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = [(HMDSoftwareUpdateManager *)self messageDispatcher];
  v4 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v5 = *MEMORY[0x277CD1108];
  v11[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [v3 registerForMessage:v5 receiver:self policies:v6 selector:sel__handleStart_];

  v7 = *MEMORY[0x277CD1118];
  v10 = v4;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  [v3 registerForMessage:v7 receiver:self policies:v8 selector:sel__handleStop_];

  v9 = *MEMORY[0x277D85DE8];
}

- (HMDSoftwareUpdateManager)init
{
  v23 = *MEMORY[0x277D85DE8];
  if (+[HMDSoftwareUpdateManager isSupported])
  {
    v20.receiver = self;
    v20.super_class = HMDSoftwareUpdateManager;
    v3 = [(HMDSoftwareUpdateManager *)&v20 init];
    if (v3)
    {
      v4 = HMDispatchQueueNameString();
      v5 = [v4 UTF8String];
      v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v7 = dispatch_queue_create(v5, v6);
      clientQueue = v3->_clientQueue;
      v3->_clientQueue = v7;

      v9 = objc_alloc(MEMORY[0x277CCAD78]);
      v10 = [v9 initWithUUIDString:*MEMORY[0x277CD1120]];
      identifier = v3->_identifier;
      v3->_identifier = v10;

      v12 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      activeClients = v3->_activeClients;
      v3->_activeClients = v12;

      [(HMDSoftwareUpdateManager *)v3 registerForMessages];
    }

    self = v3;
    v14 = self;
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Software updates are not valid on this target", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v14 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (BOOL)isSupported
{
  v2 = [MEMORY[0x277D0F8E8] productInfo];
  v3 = [v2 productClass] == 6;

  return v3;
}

@end