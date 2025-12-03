@interface HMMTRMultiFabricDataStoreUpdate
+ (id)logCategory;
- (BOOL)commit;
- (HMMTRMultiFabricDataStoreUpdate)initWithFabricData:(id)data chipStorageDelegate:(id)delegate keychainDelegate:(id)keychainDelegate v2FabricDataStoreDelegate:(id)storeDelegate;
- (HMMTRMultiFabricDataStoreUpdateCHIPStorageDelegate)chipStorageDelegate;
- (HMMTRMultiFabricDataStoreUpdateKeychainDelegate)keychainDelegate;
- (HMMTRMultiFabricDataStoreUpdateV2FabricDataStoreDelegate)v2FabricDataStoreDelegate;
- (id)chipStorageContentFromFabricData:(id)data;
- (id)logIdentifier;
@end

@implementation HMMTRMultiFabricDataStoreUpdate

- (HMMTRMultiFabricDataStoreUpdateV2FabricDataStoreDelegate)v2FabricDataStoreDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_v2FabricDataStoreDelegate);

  return WeakRetained;
}

- (HMMTRMultiFabricDataStoreUpdateKeychainDelegate)keychainDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_keychainDelegate);

  return WeakRetained;
}

- (HMMTRMultiFabricDataStoreUpdateCHIPStorageDelegate)chipStorageDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_chipStorageDelegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  chipStorageDelegate = [(HMMTRMultiFabricDataStoreUpdate *)self chipStorageDelegate];
  identifier = [chipStorageDelegate identifier];

  return identifier;
}

- (id)chipStorageContentFromFabricData:(id)data
{
  v41 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v5 = [dataCopy ipk];
  [dictionary setObject:v5 forKeyedSubscript:@"IPK"];

  v6 = MEMORY[0x277CD5230];
  rootCert = [dataCopy rootCert];
  v8 = [v6 convertX509Certificate:rootCert];
  [dictionary setObject:v8 forKeyedSubscript:@"f/1/r"];

  v9 = MEMORY[0x277CD5230];
  residentOperationalCert = [dataCopy residentOperationalCert];
  v11 = [v9 convertX509Certificate:residentOperationalCert];
  [dictionary setObject:v11 forKeyedSubscript:@"f/1/n"];

  v39 = 0x12C1349002515;
  v40 = 24;
  v12 = [MEMORY[0x277CBEA90] dataWithBytes:&v39 length:9];
  [dictionary setObject:v12 forKeyedSubscript:@"f/1/m"];

  residentOperationalKeyPair = [dataCopy residentOperationalKeyPair];
  serialize = [residentOperationalKeyPair serialize];
  [dictionary setObject:serialize forKeyedSubscript:@"f/1/o"];

  v37 = 0x104013602002415;
  v38 = 6168;
  v15 = [MEMORY[0x277CBEA90] dataWithBytes:&v37 length:10];
  [dictionary setObject:v15 forKeyedSubscript:@"g/fidx"];

  v36 = 0x1829625600002615;
  v16 = [MEMORY[0x277CBEA90] dataWithBytes:&v36 length:8];
  [dictionary setObject:v16 forKeyedSubscript:@"g/lkgt"];

  residentOperationalCert2 = [dataCopy residentOperationalCert];
  [dictionary setObject:residentOperationalCert2 forKeyedSubscript:@"HMD.MTRPlugin.OperationalCert"];

  rootCert2 = [dataCopy rootCert];
  [dictionary setObject:rootCert2 forKeyedSubscript:@"HMD.MTRPlugin.RootCert"];

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v20 = dictionary;
  v21 = [v20 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v32;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v31 + 1) + 8 * i);
        v26 = [v20 objectForKeyedSubscript:{v25, v31}];
        v27 = [v26 base64EncodedStringWithOptions:0];
        [dictionary2 setObject:v27 forKeyedSubscript:v25];
      }

      v22 = [v20 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v22);
  }

  v28 = [dictionary2 copy];
  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (BOOL)commit
{
  v31 = *MEMORY[0x277D85DE8];
  v2FabricDataStoreDelegate = [(HMMTRMultiFabricDataStoreUpdate *)self v2FabricDataStoreDelegate];
  fabricData = [(HMMTRMultiFabricDataStoreUpdate *)self fabricData];
  v5 = [v2FabricDataStoreDelegate storeFabricData:fabricData];

  if ((v5 & 1) == 0)
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v29 = 138543362;
      v30 = v24;
      v25 = "%{public}@Failed to store fabric data into combined data store";
LABEL_8:
      _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_ERROR, v25, &v29, 0xCu);
    }

LABEL_9:
    v20 = 0;
    goto LABEL_13;
  }

  keychainDelegate = [(HMMTRMultiFabricDataStoreUpdate *)self keychainDelegate];
  fabricData2 = [(HMMTRMultiFabricDataStoreUpdate *)self fabricData];
  rootKeyPair = [fabricData2 rootKeyPair];
  fabricData3 = [(HMMTRMultiFabricDataStoreUpdate *)self fabricData];
  residentOperationalKeyPair = [fabricData3 residentOperationalKeyPair];
  v11 = [keychainDelegate updateNocSigner:rootKeyPair ownerSharedOperationalKeyPair:residentOperationalKeyPair];

  if (v11)
  {
    chipStorageDelegate = [(HMMTRMultiFabricDataStoreUpdate *)self chipStorageDelegate];
    fabricData4 = [(HMMTRMultiFabricDataStoreUpdate *)self fabricData];
    v14 = [(HMMTRMultiFabricDataStoreUpdate *)self chipStorageContentFromFabricData:fabricData4];
    v15 = [chipStorageDelegate updateKeyValueStoreWithEntries:v14];

    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    v19 = v18;
    if (v15)
    {
      v20 = 1;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        v29 = 138543362;
        v30 = v21;
        v22 = "%{public}@Successfully stored new fabric data";
LABEL_12:
        _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_INFO, v22, &v29, 0xCu);

        goto LABEL_13;
      }

      goto LABEL_13;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v29 = 138543362;
      v30 = v24;
      v25 = "%{public}@Failed to store fabric parameters to CHIP storage";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v16 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v19 = HMFGetOSLogHandle();
  v20 = 1;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    v29 = 138543362;
    v30 = v21;
    v22 = "%{public}@Failed to store fabric keys to common key store - it is expected in some cases. Not updating CHIP storage";
    goto LABEL_12;
  }

LABEL_13:

  objc_autoreleasePoolPop(v16);
  v27 = *MEMORY[0x277D85DE8];
  return v20;
}

- (HMMTRMultiFabricDataStoreUpdate)initWithFabricData:(id)data chipStorageDelegate:(id)delegate keychainDelegate:(id)keychainDelegate v2FabricDataStoreDelegate:(id)storeDelegate
{
  dataCopy = data;
  delegateCopy = delegate;
  keychainDelegateCopy = keychainDelegate;
  storeDelegateCopy = storeDelegate;
  v18.receiver = self;
  v18.super_class = HMMTRMultiFabricDataStoreUpdate;
  v15 = [(HMMTRMultiFabricDataStoreUpdate *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_fabricData, data);
    objc_storeWeak(&v16->_chipStorageDelegate, delegateCopy);
    objc_storeWeak(&v16->_keychainDelegate, keychainDelegateCopy);
    objc_storeWeak(&v16->_v2FabricDataStoreDelegate, storeDelegateCopy);
  }

  return v16;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4, &__block_literal_global_1933);
  }

  v3 = logCategory__hmf_once_v5;

  return v3;
}

uint64_t __46__HMMTRMultiFabricDataStoreUpdate_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v5 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end