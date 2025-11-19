@interface HMMTRFabricV0KeyStore
+ (id)logCategory;
- (BOOL)forceUpdateNocSigner:(id)a3 ownerSharedOperationalKeyPair:(id)a4;
- (BOOL)updateNocSigner:(id)a3 ownerSharedOperationalKeyPair:(id)a4;
- (HMMTRMatterKeypair)nocSigner;
- (HMMTRMatterKeypair)ownerSharedOperationalKeyPair;
@end

@implementation HMMTRFabricV0KeyStore

+ (id)logCategory
{
  if (logCategory__hmf_once_t13 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t13, &__block_literal_global_3103);
  }

  v3 = logCategory__hmf_once_v14;

  return v3;
}

uint64_t __36__HMMTRFabricV0KeyStore_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v14 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

- (BOOL)forceUpdateNocSigner:(id)a3 ownerSharedOperationalKeyPair:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v43 = 138543362;
    v44 = v11;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@Force updating V0 keys", &v43, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMMTRFabricV0KeyStore *)v9 nocSigner];
  if (v12)
  {
    v13 = SecKeyCopyExternalRepresentation([v6 privateKey], 0);
    v14 = [v12 updateStorageWithPrivateKeyData:v13];
    v15 = objc_autoreleasePoolPush();
    v16 = v9;
    v17 = HMFGetOSLogHandle();
    v18 = v17;
    if (v14)
    {
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        goto LABEL_11;
      }

      v19 = HMFGetLogIdentifier();
      v43 = 138543362;
      v44 = v19;
      v20 = "%{public}@Replaced NOC signer key in storage";
      goto LABEL_10;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      v43 = 138543362;
      v44 = v30;
      _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to replace current NOC signer key in storage", &v43, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
  }

  else
  {
    v13 = -[HMMTRMatterKeypair initWithV0Account:privateKey:]([HMMTRMatterKeypair alloc], "initWithV0Account:privateKey:", @"CHIPPlugin.nodeopcerts.CA:0", [v6 privateKey]);
    v15 = objc_autoreleasePoolPush();
    v16 = v9;
    v21 = HMFGetOSLogHandle();
    v18 = v21;
    if (v13)
    {
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        goto LABEL_11;
      }

      v19 = HMFGetLogIdentifier();
      v43 = 138543362;
      v44 = v19;
      v20 = "%{public}@Installed NOC signer key into storage";
LABEL_10:
      _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, v20, &v43, 0xCu);

LABEL_11:
      objc_autoreleasePoolPop(v15);

      v22 = [(HMMTRFabricV0KeyStore *)v9 ownerSharedOperationalKeyPair];
      if (v22)
      {
        v23 = SecKeyCopyExternalRepresentation([v7 privateKey], 0);
        v24 = [v22 updateStorageWithPrivateKeyData:v23];
        v25 = objc_autoreleasePoolPush();
        v26 = v9;
        v27 = HMFGetOSLogHandle();
        v28 = v27;
        if (v24)
        {
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            v29 = HMFGetLogIdentifier();
            v43 = 138543362;
            v44 = v29;
            _os_log_impl(&dword_22AEAE000, v28, OS_LOG_TYPE_INFO, "%{public}@Replaced operational key in storage", &v43, 0xCu);
          }

          objc_autoreleasePoolPop(v25);
LABEL_23:
          v37 = 1;
LABEL_35:

          goto LABEL_36;
        }

        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v38 = HMFGetLogIdentifier();
          v43 = 138543362;
          v44 = v38;
          _os_log_impl(&dword_22AEAE000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to replace current operational key in storage", &v43, 0xCu);
        }

        objc_autoreleasePoolPop(v25);
      }

      else
      {
        v31 = -[HMMTRMatterKeypair initWithV0Account:privateKey:]([HMMTRMatterKeypair alloc], "initWithV0Account:privateKey:", @"CHIPPlugin.nodeOperationalKeyPair.CA:0", [v7 privateKey]);
        v32 = objc_autoreleasePoolPush();
        v33 = v9;
        v34 = HMFGetOSLogHandle();
        v35 = v34;
        if (v31)
        {
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            v36 = HMFGetLogIdentifier();
            v43 = 138543362;
            v44 = v36;
            _os_log_impl(&dword_22AEAE000, v35, OS_LOG_TYPE_INFO, "%{public}@Installed operational key into storage", &v43, 0xCu);
          }

          objc_autoreleasePoolPop(v32);
          goto LABEL_23;
        }

        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v40 = HMFGetLogIdentifier();
          v43 = 138543362;
          v44 = v40;
          _os_log_impl(&dword_22AEAE000, v35, OS_LOG_TYPE_ERROR, "%{public}@Failed to store operational Key", &v43, 0xCu);
        }

        objc_autoreleasePoolPop(v32);
      }

      v37 = 0;
      goto LABEL_35;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v39 = HMFGetLogIdentifier();
      v43 = 138543362;
      v44 = v39;
      _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to store NOC signer", &v43, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
  }

  v37 = 0;
LABEL_36:

  v41 = *MEMORY[0x277D85DE8];
  return v37;
}

- (BOOL)updateNocSigner:(id)a3 ownerSharedOperationalKeyPair:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMMTRFabricV0KeyStore *)self nocSigner];
  v9 = [v8 serialize];
  v10 = [v6 serialize];
  v11 = [v9 isEqual:v10];

  if (v11)
  {
LABEL_2:
    v12 = [(HMMTRFabricV0KeyStore *)self ownerSharedOperationalKeyPair];
    v13 = [v12 serialize];
    v14 = [v7 serialize];
    v15 = [v13 isEqual:v14];

    if (v15)
    {
LABEL_3:
      v16 = 1;
LABEL_14:

      goto LABEL_15;
    }

    if (v12)
    {
      v22 = objc_autoreleasePoolPush();
      v23 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v31 = 138543362;
        v32 = v25;
        v26 = "%{public}@Shared operational key already exists - failed to store new shared operational key";
LABEL_12:
        _os_log_impl(&dword_22AEAE000, v24, OS_LOG_TYPE_ERROR, v26, &v31, 0xCu);
      }
    }

    else
    {
      v30 = -[HMMTRMatterKeypair initWithV0Account:privateKey:]([HMMTRMatterKeypair alloc], "initWithV0Account:privateKey:", @"CHIPPlugin.nodeOperationalKeyPair.CA:0", [v7 privateKey]);
      if (v30)
      {

        goto LABEL_3;
      }

      v22 = objc_autoreleasePoolPush();
      v23 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v31 = 138543362;
        v32 = v25;
        v26 = "%{public}@Failed to store Shared Operational Key";
        goto LABEL_12;
      }
    }

    objc_autoreleasePoolPop(v22);
    v16 = 0;
    goto LABEL_14;
  }

  if (v8)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v31 = 138543362;
      v32 = v20;
      v21 = "%{public}@NOC signer already exists - failed to store new NOC signer";
LABEL_7:
      _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_ERROR, v21, &v31, 0xCu);
    }
  }

  else
  {
    v29 = -[HMMTRMatterKeypair initWithV0Account:privateKey:]([HMMTRMatterKeypair alloc], "initWithV0Account:privateKey:", @"CHIPPlugin.nodeopcerts.CA:0", [v6 privateKey]);
    if (v29)
    {

      goto LABEL_2;
    }

    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v31 = 138543362;
      v32 = v20;
      v21 = "%{public}@Failed to store NOC signer";
      goto LABEL_7;
    }
  }

  objc_autoreleasePoolPop(v17);
  v16 = 0;
LABEL_15:

  v27 = *MEMORY[0x277D85DE8];
  return v16;
}

- (HMMTRMatterKeypair)ownerSharedOperationalKeyPair
{
  v2 = [[HMMTRMatterKeypair alloc] initWithV0Account:@"CHIPPlugin.nodeOperationalKeyPair.CA:0"];

  return v2;
}

- (HMMTRMatterKeypair)nocSigner
{
  v2 = [[HMMTRMatterKeypair alloc] initWithV0Account:@"CHIPPlugin.nodeopcerts.CA:0"];

  return v2;
}

@end