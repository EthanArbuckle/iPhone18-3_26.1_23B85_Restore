@interface HMDDataStreamHAPSetupOperation
- (HMDDataStreamHAPSetupOperation)initWithAccessory:(id)accessory queue:(id)queue logIdentifier:(id)identifier transferManagementService:(id)service maxControllerTransportMTU:(unint64_t)u setupOperationReadRequired:(BOOL)required;
- (void)_readRequiredTransportCharacteristics;
- (void)processTransportSetupResponse:(id)response;
- (void)setMaxControllerTransportMTU:(unint64_t)u;
- (void)startSetup;
@end

@implementation HMDDataStreamHAPSetupOperation

- (void)processTransportSetupResponse:(id)response
{
  v34 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  parameters = [responseCopy parameters];
  sessionIdentifier = [parameters sessionIdentifier];

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (sessionIdentifier)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v11 = HMFGetLogIdentifier();
      parameters2 = [responseCopy parameters];
      sessionIdentifier2 = [parameters2 sessionIdentifier];
      v30 = 138543618;
      v31 = v11;
      v32 = 2112;
      v33 = sessionIdentifier2;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@[Start Stream] The setup transfer succeeded; will use session identifier %@", &v30, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    parameters3 = [responseCopy parameters];
    sessionIdentifier3 = [parameters3 sessionIdentifier];
    value = [sessionIdentifier3 value];
    -[HMDDataStreamHAPSetupOperation setSessionIdentifier:](selfCopy, "setSessionIdentifier:", [value integerValue]);

    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v30 = 138543362;
      v31 = v20;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@[Start Stream] DataStream configuration valid; starting stream", &v30, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [HMDDataStreamHAPTransport alloc];
    accessory = [(HMDDataStreamSetupOperation *)v18 accessory];
    sessionIdentifier4 = [(HMDDataStreamHAPSetupOperation *)v18 sessionIdentifier];
    maxControllerTransportMTU = [(HMDDataStreamHAPSetupOperation *)v18 maxControllerTransportMTU];
    queue = [(HMDDataStreamSetupOperation *)v18 queue];
    logIdentifier = [(HMDDataStreamSetupOperation *)v18 logIdentifier];
    v27 = [(HMDDataStreamHAPTransport *)v21 initWithAccessory:accessory sessionIdentifier:sessionIdentifier4 maxControllerTransportMTU:maxControllerTransportMTU workQueue:queue logIdentifier:logIdentifier];

    [(HMDDataStreamSetupOperation *)v18 postDidSucceedWithTransport:v27 sessionEncryption:0];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      v30 = 138543362;
      v31 = v28;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@[Start Stream] The setup transfer write reply did not contain a session identifier", &v30, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:50];
    [(HMDDataStreamSetupOperation *)selfCopy postDidFailWithError:v27];
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)startSetup
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v28 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Creating new DataStream using HAP", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [objc_alloc(MEMORY[0x277CFEB08]) initWithValue:0];
  v8 = [objc_alloc(MEMORY[0x277CFEB18]) initWithValue:1];
  v9 = [objc_alloc(MEMORY[0x277CFEB20]) initWithCommand:v7 transportType:v8 controllerKeySalt:0];

  v25 = 0;
  v10 = [v9 serializeWithError:&v25];
  v11 = v25;
  if (v10)
  {
    transferManagementService = [(HMDDataStreamSetupOperation *)selfCopy transferManagementService];
    v13 = [transferManagementService findCharacteristicWithType:@"00000131-0000-1000-8000-0026BB765291"];

    v14 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v13 value:v10 authorizationData:0 identifier:0 type:0 includeResponseValue:1];
    objc_initWeak(buf, selfCopy);
    accessory = [(HMDDataStreamSetupOperation *)selfCopy accessory];
    v26 = v14;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
    queue = [(HMDDataStreamSetupOperation *)selfCopy queue];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __44__HMDDataStreamHAPSetupOperation_startSetup__block_invoke;
    v23[3] = &unk_2786895F0;
    objc_copyWeak(&v24, buf);
    [accessory writeCharacteristicValues:v16 source:1090 queue:queue completionHandler:v23];

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v21;
      v29 = 2112;
      v30 = v11;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to create new DataStream; cannot serialize request (%@)", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    [(HMDDataStreamSetupOperation *)v19 postDidFailWithError:v11];
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __44__HMDDataStreamHAPSetupOperation_startSetup__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained continueStreamSetupWithResponse:v5];
  }
}

- (void)_readRequiredTransportCharacteristics
{
  v40 = *MEMORY[0x277D85DE8];
  transferManagementService = [(HMDDataStreamSetupOperation *)self transferManagementService];
  v4 = [transferManagementService findCharacteristicWithType:*MEMORY[0x277CCFB98]];

  transferManagementService2 = [(HMDDataStreamSetupOperation *)self transferManagementService];
  v6 = [transferManagementService2 findCharacteristicWithType:@"00000130-0000-1000-8000-0026BB765291"];

  if (v4)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    context = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      accessory = [(HMDDataStreamSetupOperation *)selfCopy accessory];
      name = [accessory name];
      accessory2 = [(HMDDataStreamSetupOperation *)selfCopy accessory];
      uuid = [accessory2 uuid];
      uUIDString = [uuid UUIDString];
      *buf = 138543874;
      v35 = v10;
      v36 = 2112;
      v37 = name;
      v38 = 2112;
      v39 = uUIDString;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@HDS characteristic(s) not found configuration/version (%@/%@)", buf, 0x20u);
    }

    objc_autoreleasePoolPop(context);
    queue = [(HMDDataStreamSetupOperation *)selfCopy queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__HMDDataStreamHAPSetupOperation__readRequiredTransportCharacteristics__block_invoke;
    block[3] = &unk_27868A728;
    block[4] = selfCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v17 = [HMDCharacteristicRequest requestWithCharacteristic:v4];
    v33[0] = v17;
    v18 = [HMDCharacteristicRequest requestWithCharacteristic:v6];
    v33[1] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];

    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      v25 = [v19 count];
      *buf = 138543618;
      v35 = v24;
      v36 = 2048;
      v37 = v25;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Read required transport characteristics, requests size %lu", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    objc_initWeak(buf, selfCopy2);
    accessory3 = [(HMDDataStreamSetupOperation *)selfCopy2 accessory];
    queue2 = [(HMDDataStreamSetupOperation *)selfCopy2 queue];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __71__HMDDataStreamHAPSetupOperation__readRequiredTransportCharacteristics__block_invoke_184;
    v30[3] = &unk_2786895F0;
    objc_copyWeak(&v31, buf);
    [accessory3 readCharacteristicValues:v19 source:1090 queue:queue2 completionHandler:v30];

    objc_destroyWeak(&v31);
    objc_destroyWeak(buf);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __71__HMDDataStreamHAPSetupOperation__readRequiredTransportCharacteristics__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  if ([v4 conformsToProtocol:&unk_283EFE298])
  {
    v2 = [*(a1 + 32) delegate];

    if (!v2)
    {
      return;
    }

    [v2 dataStreamInitializationSetupOperation:*(a1 + 32) didCompleteSupportReadWithStatus:0];
    v3 = v2;
  }

  else
  {
    v3 = v4;
  }
}

void __71__HMDDataStreamHAPSetupOperation__readRequiredTransportCharacteristics__block_invoke_184(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v5 = [WeakRetained delegate];
    if ([v5 conformsToProtocol:&unk_283EFE298])
    {
      v6 = [v7 delegate];

      v4 = v7;
      if (!v6)
      {
        goto LABEL_6;
      }

      [v6 dataStreamInitializationSetupOperation:v7 didCompleteSupportReadWithStatus:a2 != 0];
      v5 = v6;
    }

    v4 = v7;
  }

LABEL_6:
}

- (void)setMaxControllerTransportMTU:(unint64_t)u
{
  if (!self->_maxControllerTransportMTU)
  {
    self->_maxControllerTransportMTU = u;
  }
}

- (HMDDataStreamHAPSetupOperation)initWithAccessory:(id)accessory queue:(id)queue logIdentifier:(id)identifier transferManagementService:(id)service maxControllerTransportMTU:(unint64_t)u setupOperationReadRequired:(BOOL)required
{
  requiredCopy = required;
  v13.receiver = self;
  v13.super_class = HMDDataStreamHAPSetupOperation;
  v10 = [(HMDDataStreamSetupOperation *)&v13 initWithAccessory:accessory queue:queue logIdentifier:identifier transferManagementService:service];
  v11 = v10;
  if (v10)
  {
    v10->_maxControllerTransportMTU = u;
    if (requiredCopy)
    {
      [(HMDDataStreamHAPSetupOperation *)v10 _readRequiredTransportCharacteristics];
    }
  }

  return v11;
}

@end