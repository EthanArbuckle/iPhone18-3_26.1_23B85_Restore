@interface HMDCameraParameterSelection
+ (id)_selectedCryptoSuiteFromCameraCryptoSuites:(id)a3;
+ (id)logCategory;
+ (id)selectedParametersFromPreferredParameters:(id)a3 deviceSupportedParameters:(id)a4 cameraSupportedParameters:(id)a5 overriddenParameters:(id)a6 parameterDescription:(id)a7;
+ (id)selectedSRTPParametersFromCryptoSuites:(id)a3;
- (HMDCameraParameterSelection)initWithSessionID:(id)a3;
- (id)logIdentifier;
@end

@implementation HMDCameraParameterSelection

- (id)logIdentifier
{
  v2 = [(HMDCameraParameterSelection *)self sessionID];
  v3 = [v2 description];

  return v3;
}

- (HMDCameraParameterSelection)initWithSessionID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDCameraParameterSelection;
  v6 = [(HMDCameraParameterSelection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sessionID, a3);
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t6_136568 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t6_136568, &__block_literal_global_136569);
  }

  v3 = logCategory__hmf_once_v7_136570;

  return v3;
}

uint64_t __42__HMDCameraParameterSelection_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v7_136570;
  logCategory__hmf_once_v7_136570 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)_selectedCryptoSuiteFromCameraCryptoSuites:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [HMDSRTPCryptoSuite arrayWithSuites:&unk_2866271C0];
  v6 = [v5 mutableCopy];

  v7 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v8 = [v7 preferenceForKey:@"enableUnencryptedSRTPStream"];
  v9 = [v8 BOOLValue];

  if (isInternalBuild() && v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = a1;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Making SRTP camera stream unencrypted", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [[HMDSRTPCryptoSuite alloc] initWithCryptoSuite:2];
    [v6 addObject:v14];
  }

  v15 = objc_opt_class();
  if (supportedSRTPAuths)
  {
    v16 = [HMDSRTPCryptoSuite arrayWithSuites:?];
  }

  else
  {
    v16 = 0;
  }

  v17 = [v15 selectedParametersFromPreferredParameters:v6 deviceSupportedParameters:v6 cameraSupportedParameters:v4 overriddenParameters:v16 parameterDescription:@"Crypto-Suite"];

  v18 = [v17 firstObject];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)selectedSRTPParametersFromCryptoSuites:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 _selectedCryptoSuiteFromCameraCryptoSuites:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 srtpCryptoSuite];
    v8 = 16;
    v9 = 14;
    if (v7)
    {
      v9 = 0;
      v8 = 0;
    }

    if (v7 == 1)
    {
      v10 = 14;
    }

    else
    {
      v10 = v9;
    }

    if (v7 == 1)
    {
      v11 = 32;
    }

    else
    {
      v11 = v8;
    }

    v12 = [MEMORY[0x277CBEB28] dataWithLength:v11];
    v13 = [MEMORY[0x277CBEB28] dataWithLength:v10];
    v14 = *MEMORY[0x277CDC540];
    if (SecRandomCopyBytes(*MEMORY[0x277CDC540], [v12 length], objc_msgSend(v12, "mutableBytes")) || SecRandomCopyBytes(v14, objc_msgSend(v13, "length"), objc_msgSend(v13, "mutableBytes")))
    {
      v15 = objc_autoreleasePoolPush();
      v16 = a1;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v26 = 138543362;
        v27 = v18;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to generate random bytes", &v26, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      v19 = 0;
    }

    else
    {
      v19 = [[HMDSRTPParameters alloc] initWithCryptoSuite:v6 masterKey:v12 masterSalt:v13];
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = a1;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v26 = 138543362;
      v27 = v23;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to select Crypto Suite", &v26, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    v19 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)selectedParametersFromPreferredParameters:(id)a3 deviceSupportedParameters:(id)a4 cameraSupportedParameters:(id)a5 overriddenParameters:(id)a6 parameterDescription:(id)a7
{
  v60 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = v16;
  if (!v15)
  {
    v41 = v16;
    v42 = v12;
    v22 = [v12 mutableCopy];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v23 = [v22 copy];
    v24 = [v23 countByEnumeratingWithState:&v43 objects:v59 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v44;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v44 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v43 + 1) + 8 * i);
          if (![v13 containsObject:v28] || (objc_msgSend(v14, "containsObject:", v28) & 1) == 0)
          {
            [v22 removeObject:v28];
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v43 objects:v59 count:16];
      }

      while (v25);
    }

    v29 = [v22 count];
    v30 = objc_autoreleasePoolPush();
    v31 = a1;
    v32 = HMFGetOSLogHandle();
    v33 = v32;
    if (v29)
    {
      v17 = v41;
      v12 = v42;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138544642;
        v48 = v34;
        v49 = 2112;
        v50 = v41;
        v51 = 2112;
        v52 = v42;
        v53 = 2112;
        v54 = v13;
        v55 = 2112;
        v56 = v14;
        v57 = 2112;
        v58 = v22;
        v35 = "%{public}@Parameter: %@, preferredParameters: %@, deviceSupportedParameters: %@, cameraSupportedParameters: %@. preferredAndSupportedList: %@";
        v36 = v33;
        v37 = OS_LOG_TYPE_DEBUG;
        v38 = 62;
LABEL_20:
        _os_log_impl(&dword_2531F8000, v36, v37, v35, buf, v38);
      }
    }

    else
    {
      v17 = v41;
      v12 = v42;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138544386;
        v48 = v34;
        v49 = 2112;
        v50 = v41;
        v51 = 2112;
        v52 = v42;
        v53 = 2112;
        v54 = v13;
        v55 = 2112;
        v56 = v14;
        v35 = "%{public}@No compatible elements for %@: preferredParameters: %@, deviceSupportedParameters: %@, cameraSupportedParameters: %@";
        v36 = v33;
        v37 = OS_LOG_TYPE_ERROR;
        v38 = 52;
        goto LABEL_20;
      }
    }

    objc_autoreleasePoolPop(v30);
    goto LABEL_22;
  }

  v18 = objc_autoreleasePoolPush();
  v19 = a1;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    *buf = 138543874;
    v48 = v21;
    v49 = 2112;
    v50 = v17;
    v51 = 2112;
    v52 = v15;
    _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Local preference is set for %@, replying the same as filtered: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v18);
  v22 = v15;
LABEL_22:

  v39 = *MEMORY[0x277D85DE8];

  return v22;
}

@end