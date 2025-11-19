@interface HMMTRMultiFabricDataStoreUpdate
+ (id)logCategory;
- (BOOL)commit;
- (HMMTRMultiFabricDataStoreUpdate)initWithFabricData:(id)a3 chipStorageDelegate:(id)a4 keychainDelegate:(id)a5 v2FabricDataStoreDelegate:(id)a6;
- (HMMTRMultiFabricDataStoreUpdateCHIPStorageDelegate)chipStorageDelegate;
- (HMMTRMultiFabricDataStoreUpdateKeychainDelegate)keychainDelegate;
- (HMMTRMultiFabricDataStoreUpdateV2FabricDataStoreDelegate)v2FabricDataStoreDelegate;
- (id)chipStorageContentFromFabricData:(id)a3;
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
  v2 = [(HMMTRMultiFabricDataStoreUpdate *)self chipStorageDelegate];
  v3 = [v2 identifier];

  return v3;
}

- (id)chipStorageContentFromFabricData:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [v3 ipk];
  [v4 setObject:v5 forKeyedSubscript:@"IPK"];

  v6 = MEMORY[0x277CD5230];
  v7 = [v3 rootCert];
  v8 = [v6 convertX509Certificate:v7];
  [v4 setObject:v8 forKeyedSubscript:@"f/1/r"];

  v9 = MEMORY[0x277CD5230];
  v10 = [v3 residentOperationalCert];
  v11 = [v9 convertX509Certificate:v10];
  [v4 setObject:v11 forKeyedSubscript:@"f/1/n"];

  v39 = 0x12C1349002515;
  v40 = 24;
  v12 = [MEMORY[0x277CBEA90] dataWithBytes:&v39 length:9];
  [v4 setObject:v12 forKeyedSubscript:@"f/1/m"];

  v13 = [v3 residentOperationalKeyPair];
  v14 = [v13 serialize];
  [v4 setObject:v14 forKeyedSubscript:@"f/1/o"];

  v37 = 0x104013602002415;
  v38 = 6168;
  v15 = [MEMORY[0x277CBEA90] dataWithBytes:&v37 length:10];
  [v4 setObject:v15 forKeyedSubscript:@"g/fidx"];

  v36 = 0x1829625600002615;
  v16 = [MEMORY[0x277CBEA90] dataWithBytes:&v36 length:8];
  [v4 setObject:v16 forKeyedSubscript:@"g/lkgt"];

  v17 = [v3 residentOperationalCert];
  [v4 setObject:v17 forKeyedSubscript:@"HMD.MTRPlugin.OperationalCert"];

  v18 = [v3 rootCert];
  [v4 setObject:v18 forKeyedSubscript:@"HMD.MTRPlugin.RootCert"];

  v19 = [MEMORY[0x277CBEB38] dictionary];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v20 = v4;
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
        [v19 setObject:v27 forKeyedSubscript:v25];
      }

      v22 = [v20 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v22);
  }

  v28 = [v19 copy];
  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (BOOL)commit
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [(HMMTRMultiFabricDataStoreUpdate *)self v2FabricDataStoreDelegate];
  v4 = [(HMMTRMultiFabricDataStoreUpdate *)self fabricData];
  v5 = [v3 storeFabricData:v4];

  if ((v5 & 1) == 0)
  {
    v16 = objc_autoreleasePoolPush();
    v23 = self;
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

  v6 = [(HMMTRMultiFabricDataStoreUpdate *)self keychainDelegate];
  v7 = [(HMMTRMultiFabricDataStoreUpdate *)self fabricData];
  v8 = [v7 rootKeyPair];
  v9 = [(HMMTRMultiFabricDataStoreUpdate *)self fabricData];
  v10 = [v9 residentOperationalKeyPair];
  v11 = [v6 updateNocSigner:v8 ownerSharedOperationalKeyPair:v10];

  if (v11)
  {
    v12 = [(HMMTRMultiFabricDataStoreUpdate *)self chipStorageDelegate];
    v13 = [(HMMTRMultiFabricDataStoreUpdate *)self fabricData];
    v14 = [(HMMTRMultiFabricDataStoreUpdate *)self chipStorageContentFromFabricData:v13];
    v15 = [v12 updateKeyValueStoreWithEntries:v14];

    v16 = objc_autoreleasePoolPush();
    v17 = self;
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
  v26 = self;
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

- (HMMTRMultiFabricDataStoreUpdate)initWithFabricData:(id)a3 chipStorageDelegate:(id)a4 keychainDelegate:(id)a5 v2FabricDataStoreDelegate:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = HMMTRMultiFabricDataStoreUpdate;
  v15 = [(HMMTRMultiFabricDataStoreUpdate *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_fabricData, a3);
    objc_storeWeak(&v16->_chipStorageDelegate, v12);
    objc_storeWeak(&v16->_keychainDelegate, v13);
    objc_storeWeak(&v16->_v2FabricDataStoreDelegate, v14);
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