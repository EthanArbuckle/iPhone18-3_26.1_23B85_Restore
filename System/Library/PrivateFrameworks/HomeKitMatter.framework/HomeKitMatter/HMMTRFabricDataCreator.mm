@interface HMMTRFabricDataCreator
+ (id)fabricDataForRootKeyPair:(id)a3 opKeyPair:(id)a4 fabricID:(id)a5 residentNodeID:(id)a6 overridingRCAC:(id)a7 ipk:(id)a8;
+ (id)logCategory;
- (HMMTRFabricDataCreator)initWithCHIPStorageDelegate:(id)a3 keychainDelegate:(id)a4;
- (HMMTRMultiFabricDataStoreQueryCHIPStorageDelegate)chipStorageDelegate;
- (HMMTRMultiFabricDataStoreQueryKeychainDelegate)keychainDelegate;
- (id)generateIPK;
- (id)logIdentifier;
- (id)newFabricData;
@end

@implementation HMMTRFabricDataCreator

- (HMMTRMultiFabricDataStoreQueryKeychainDelegate)keychainDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_keychainDelegate);

  return WeakRetained;
}

- (HMMTRMultiFabricDataStoreQueryCHIPStorageDelegate)chipStorageDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_chipStorageDelegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMMTRFabricDataCreator *)self chipStorageDelegate];
  v3 = [v2 identifier];

  return v3;
}

- (id)generateIPK
{
  v6 = *MEMORY[0x277D85DE8];
  if (SecRandomCopyBytes(*MEMORY[0x277CDC540], 0x10uLL, bytes))
  {
    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x277CBEA90] dataWithBytes:bytes length:16];
  }

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)newFabricData
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [(HMMTRFabricDataCreator *)self keychainDelegate];
  v4 = [v3 nocSigner];

  v5 = v4;
  if (!v4)
  {
    v5 = [[HMMTRMatterKeypair alloc] initUnassociated];
  }

  v6 = [(HMMTRFabricDataCreator *)self keychainDelegate];
  v7 = [v6 ownerSharedOperationalKeyPair];

  v8 = v7;
  if (!v7)
  {
    v8 = [[HMMTRMatterKeypair alloc] initUnassociated];
  }

  v9 = [(HMMTRFabricDataCreator *)self chipStorageDelegate];
  v10 = [v9 fabricID];

  if (!v10 || [v10 isEqual:&unk_283EE7E30])
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[HMMTRUtilities randomNodeID](HMMTRUtilities, "randomNodeID")}];

    v10 = v11;
  }

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{+[HMMTRUtilities randomNodeID](HMMTRUtilities, "randomNodeID")}];
  v13 = [(HMMTRFabricDataCreator *)self generateIPK];
  if (!v13)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v31 = 138543362;
      v32 = v19;
      v20 = "%{public}@IPK generation failed";
LABEL_21:
      _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_ERROR, v20, &v31, 0xCu);
    }

LABEL_22:

    objc_autoreleasePoolPop(v16);
    v15 = 0;
    goto LABEL_23;
  }

  v14 = [objc_opt_class() fabricDataForRootKeyPair:v5 opKeyPair:v8 fabricID:v10 residentNodeID:v12 overridingRCAC:0 ipk:v13];
  if (!v14)
  {
    if (v4 | v7)
    {
      v21 = objc_autoreleasePoolPush();
      v22 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        v31 = 138543362;
        v32 = v24;
        _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_INFO, "%{public}@Cannot generate new fabric data reusing previous keys - Trying with a new set of keys", &v31, 0xCu);
      }

      objc_autoreleasePoolPop(v21);
      v25 = [[HMMTRMatterKeypair alloc] initUnassociated];

      v26 = [[HMMTRMatterKeypair alloc] initUnassociated];
      v27 = [objc_opt_class() fabricDataForRootKeyPair:v25 opKeyPair:v26 fabricID:v10 residentNodeID:v12 overridingRCAC:0 ipk:v13];
      if (v27)
      {
        v15 = v27;
        v8 = v26;
        v5 = v25;
        goto LABEL_23;
      }

      v5 = v25;
      v8 = v26;
    }

    v16 = objc_autoreleasePoolPush();
    v28 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v31 = 138543362;
      v32 = v19;
      v20 = "%{public}@Failed to generate new fabric data";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v15 = v14;
LABEL_23:

  v29 = *MEMORY[0x277D85DE8];
  return v15;
}

- (HMMTRFabricDataCreator)initWithCHIPStorageDelegate:(id)a3 keychainDelegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HMMTRFabricDataCreator;
  v8 = [(HMMTRFabricDataCreator *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_chipStorageDelegate, v6);
    objc_storeWeak(&v9->_keychainDelegate, v7);
  }

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t6 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t6, &__block_literal_global_2033);
  }

  v3 = logCategory__hmf_once_v7;

  return v3;
}

uint64_t __37__HMMTRFabricDataCreator_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v7 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

+ (id)fabricDataForRootKeyPair:(id)a3 opKeyPair:(id)a4 fabricID:(id)a5 residentNodeID:(id)a6 overridingRCAC:(id)a7 ipk:(id)a8
{
  v55 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v48 = a6;
  v17 = a7;
  v18 = a8;
  v19 = SecKeyCopyExternalRepresentation([v14 publicKey], 0);
  v20 = v19;
  if (v19)
  {
    v46 = v15;
    if (v17)
    {
      v21 = v17;
    }

    else
    {
      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[__CFData hash](v19, "hash")}];
    }

    v44 = v21;
    v45 = v18;
    v50 = 0;
    v30 = [MEMORY[0x277CD5230] createRootCertificate:v14 issuerID:v21 fabricID:v16 error:&v50];
    v31 = v50;
    if (v30)
    {
      v49 = v31;
      v29 = v48;
      v32 = [MEMORY[0x277CD5230] createOperationalCertificate:v14 signingCertificate:v30 operationalPublicKey:objc_msgSend(v46 fabricID:"publicKey") nodeID:v16 caseAuthenticatedTags:v48 error:{0, &v49}];
      v43 = v49;

      if (v32)
      {
        v28 = [[HMMTRFabricData alloc] initWithRootPublicKey:v20 fabricID:v16 ipk:v18 residentNodeID:v48 rootKeyPair:v14 rootCert:v30 residentOperationalKeyPair:v46 residentOperationalCert:v32];
      }

      else
      {
        v37 = objc_autoreleasePoolPush();
        v38 = a1;
        v39 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v40 = HMFGetLogIdentifier();
          *buf = 138543618;
          v52 = v40;
          v53 = 2112;
          v54 = v43;
          _os_log_impl(&dword_22AEAE000, v39, OS_LOG_TYPE_ERROR, "%{public}@Resident Operational Cert generation failed: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v37);
        v28 = 0;
        v29 = v48;
        v18 = v45;
      }

      v31 = v43;
    }

    else
    {
      v33 = objc_autoreleasePoolPush();
      v34 = a1;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        *buf = 138543618;
        v52 = v36;
        v53 = 2112;
        v54 = v31;
        _os_log_impl(&dword_22AEAE000, v35, OS_LOG_TYPE_ERROR, "%{public}@Root cert generation failed: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v33);
      v28 = 0;
      v29 = v48;
      v18 = v45;
    }

    v15 = v46;
  }

  else
  {
    v47 = v16;
    v22 = v17;
    v23 = v18;
    v24 = objc_autoreleasePoolPush();
    v25 = a1;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v52 = v27;
      _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_ERROR, "%{public}@Bad root key", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
    v28 = 0;
    v18 = v23;
    v17 = v22;
    v16 = v47;
    v29 = v48;
  }

  v41 = *MEMORY[0x277D85DE8];

  return v28;
}

@end