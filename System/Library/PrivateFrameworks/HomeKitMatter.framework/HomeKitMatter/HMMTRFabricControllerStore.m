@interface HMMTRFabricControllerStore
+ (BOOL)startupParams1:(id)a3 isEquivalentTo:(id)a4;
+ (BOOL)startupParams2:(id)a3 isEquivalentTo:(id)a4;
+ (BOOL)startupParams:(id)a3 isEquivalentTo:(id)a4;
+ (id)logCategory;
- (HMMTRFabricControllerStore)initWithQueue:(id)a3 controllerFactory:(id)a4;
- (id)cachedWrapperWithTargetFabricUUID:(id)a3;
- (id)wrapperWithTargetFabricUUID:(id)a3 startupParams:(id)a4 allTargetFabricUUIDs:(id)a5 entityIdentifier:(id)a6;
- (void)_auditControllerWrappersWithAllFabricUUIDs:(id)a3;
- (void)removeAllGetters;
- (void)removeTargetFabricUUID:(id)a3;
- (void)updateAllTargetFabricUUIDs:(id)a3;
@end

@implementation HMMTRFabricControllerStore

- (void)_auditControllerWrappersWithAllFabricUUIDs:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v43 = v8;
    v44 = 2112;
    v45 = v4;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_ERROR, "%{public}@Hitting maximum number of wrappers. Removing unused and restarting factory. Currently used: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [MEMORY[0x277CBEB18] array];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v10 = [(HMMTRFabricControllerStore *)v6 controllerWrappers];
  v11 = [v10 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (!v11)
  {

    v31 = [(HMMTRFabricControllerStore *)v6 controllerWrappers];
    [v31 removeObjectsForKeys:v9];
    goto LABEL_20;
  }

  v13 = v11;
  v36 = 0;
  v14 = *v38;
  *&v12 = 138543618;
  v33 = v12;
  v34 = *v38;
  do
  {
    v15 = 0;
    v35 = v13;
    do
    {
      if (*v38 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v16 = *(*(&v37 + 1) + 8 * v15);
      if (([v4 containsObject:{v16, v33}] & 1) == 0)
      {
        v17 = v10;
        v18 = v9;
        v19 = v4;
        v20 = objc_autoreleasePoolPush();
        v21 = v6;
        v22 = v6;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = HMFGetLogIdentifier();
          *buf = v33;
          v43 = v24;
          v44 = 2112;
          v45 = v16;
          _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_INFO, "%{public}@Removing %@ from factory", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v20);
        if (v36)
        {
          v36 = 1;
        }

        else
        {
          v25 = [(HMMTRFabricControllerStore *)v22 controllerWrappers];
          v26 = [v25 objectForKeyedSubscript:v16];
          v27 = [v26 startupParams];
          v36 = [v27 usesCommonStorageDelegate];
        }

        v6 = v21;
        v28 = [(HMMTRFabricControllerStore *)v22 controllerWrappers];
        v29 = [v28 objectForKeyedSubscript:v16];
        [v29 remove];

        v9 = v18;
        [v18 addObject:v16];
        v4 = v19;
        v10 = v17;
        v14 = v34;
        v13 = v35;
      }

      ++v15;
    }

    while (v13 != v15);
    v13 = [v10 countByEnumeratingWithState:&v37 objects:v41 count:16];
  }

  while (v13);

  v30 = [(HMMTRFabricControllerStore *)v6 controllerWrappers];
  [v30 removeObjectsForKeys:v9];

  if (v36)
  {
    v31 = [(HMMTRFabricControllerStore *)v6 controllerFactory];
    [v31 restartNormalOperation];
LABEL_20:
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)removeAllGetters
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v11 = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@Removing all controller wrappers", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMMTRFabricControllerStore *)v4 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__HMMTRFabricControllerStore_removeAllGetters__block_invoke;
  block[3] = &unk_2786F0CA8;
  block[4] = v4;
  dispatch_async(v7, block);

  v8 = *MEMORY[0x277D85DE8];
}

void __46__HMMTRFabricControllerStore_removeAllGetters__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [*(a1 + 32) controllerWrappers];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        v8 = [*(a1 + 32) controllerWrappers];
        v9 = [v8 objectForKeyedSubscript:v7];
        [v9 remove];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v10 = [*(a1 + 32) controllerWrappers];
  [v10 removeAllObjects];

  v11 = *MEMORY[0x277D85DE8];
}

- (id)cachedWrapperWithTargetFabricUUID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3169;
  v16 = __Block_byref_object_dispose__3170;
  v17 = 0;
  v5 = [(HMMTRFabricControllerStore *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__HMMTRFabricControllerStore_cachedWrapperWithTargetFabricUUID___block_invoke;
  block[3] = &unk_2786F0468;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __64__HMMTRFabricControllerStore_cachedWrapperWithTargetFabricUUID___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) controllerWrappers];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)removeTargetFabricUUID:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v15 = v8;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing %@ from factory", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMMTRFabricControllerStore *)v6 workQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__HMMTRFabricControllerStore_removeTargetFabricUUID___block_invoke;
  v12[3] = &unk_2786EF328;
  v12[4] = v6;
  v13 = v4;
  v10 = v4;
  dispatch_sync(v9, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __53__HMMTRFabricControllerStore_removeTargetFabricUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) controllerWrappers];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  [v3 remove];

  v4 = [*(a1 + 32) controllerWrappers];
  [v4 removeObjectForKey:*(a1 + 40)];
}

- (void)updateAllTargetFabricUUIDs:(id)a3
{
  v4 = a3;
  v5 = [(HMMTRFabricControllerStore *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HMMTRFabricControllerStore_updateAllTargetFabricUUIDs___block_invoke;
  v7[3] = &unk_2786EF328;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __57__HMMTRFabricControllerStore_updateAllTargetFabricUUIDs___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v18 = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = [*(a1 + 32) controllerWrappers];
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v20;
    *&v4 = 138543618;
    v17 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        if (([*(a1 + 40) containsObject:{v8, v17}] & 1) == 0)
        {
          v9 = objc_autoreleasePoolPush();
          v10 = *(a1 + 32);
          v11 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = HMFGetLogIdentifier();
            *buf = v17;
            v24 = v12;
            v25 = 2112;
            v26 = v8;
            _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, "%{public}@Removing %@ from factory", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v9);
          v13 = [*(a1 + 32) controllerWrappers];
          v14 = [v13 objectForKeyedSubscript:v8];
          [v14 remove];

          [v18 addObject:v8];
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v5);
  }

  v15 = [*(a1 + 32) controllerWrappers];
  [v15 removeObjectsForKeys:v18];

  v16 = *MEMORY[0x277D85DE8];
}

- (id)wrapperWithTargetFabricUUID:(id)a3 startupParams:(id)a4 allTargetFabricUUIDs:(id)a5 entityIdentifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__3169;
  v31 = __Block_byref_object_dispose__3170;
  v32 = 0;
  v14 = [(HMMTRFabricControllerStore *)self workQueue];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __110__HMMTRFabricControllerStore_wrapperWithTargetFabricUUID_startupParams_allTargetFabricUUIDs_entityIdentifier___block_invoke;
  v21[3] = &unk_2786EDD48;
  v21[4] = self;
  v22 = v10;
  v23 = v11;
  v24 = v13;
  v25 = v12;
  v26 = &v27;
  v15 = v12;
  v16 = v13;
  v17 = v11;
  v18 = v10;
  dispatch_sync(v14, v21);

  v19 = v28[5];
  _Block_object_dispose(&v27, 8);

  return v19;
}

void __110__HMMTRFabricControllerStore_wrapperWithTargetFabricUUID_startupParams_allTargetFabricUUIDs_entityIdentifier___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) controllerWrappers];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), v3);
    v4 = [v3 startupParams];
    v5 = [HMMTRFabricControllerStore startupParams:v4 isEquivalentTo:*(a1 + 48)];

    if (v5)
    {
      if (isFeatureMatterRVCEnabled())
      {
        v6 = [*(*(*(a1 + 72) + 8) + 40) entityIdentifier];
        v7 = v6;
        if (v6 == *(a1 + 56))
        {
        }

        else
        {
          v8 = [*(*(*(a1 + 72) + 8) + 40) entityIdentifier];
          v9 = [v8 isEqual:*(a1 + 56)];

          if ((v9 & 1) == 0)
          {
            v10 = objc_autoreleasePoolPush();
            v11 = *(a1 + 32);
            v12 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              v13 = HMFGetLogIdentifier();
              *buf = 138543362;
              v37 = v13;
              _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_ERROR, "%{public}@Controller parameters are not stored correctly (rdar://122026373) - Matter Native operation will work erroneously", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v10);
          }
        }
      }

      v28 = objc_autoreleasePoolPush();
      v29 = *(a1 + 32);
      v30 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        goto LABEL_20;
      }

      v31 = HMFGetLogIdentifier();
      v34 = *(a1 + 40);
      *buf = 138543618;
      v37 = v31;
      v38 = 2112;
      v39 = v34;
      v33 = "%{public}@Startup parameter remains the same for %@. Returning the previous controller wrapper.";
    }

    else
    {
      [v3 replaceStartupParams:*(a1 + 48)];
      v28 = objc_autoreleasePoolPush();
      v29 = *(a1 + 32);
      v30 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
LABEL_20:

        objc_autoreleasePoolPop(v28);
        goto LABEL_21;
      }

      v31 = HMFGetLogIdentifier();
      v32 = *(a1 + 40);
      *buf = 138543618;
      v37 = v31;
      v38 = 2112;
      v39 = v32;
      v33 = "%{public}@Startup parameter changed for %@. Replaced controller wrapper params.";
    }

    _os_log_impl(&dword_22AEAE000, v30, OS_LOG_TYPE_INFO, v33, buf, 0x16u);

    goto LABEL_20;
  }

  v14 = [*(a1 + 32) controllerWrappers];
  v15 = [v14 count];

  if (v15 >= 8)
  {
    [*(a1 + 32) _auditControllerWrappersWithAllFabricUUIDs:*(a1 + 64)];
  }

  v16 = objc_autoreleasePoolPush();
  v17 = *(a1 + 32);
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    v20 = *(a1 + 40);
    *buf = 138543618;
    v37 = v19;
    v38 = 2112;
    v39 = v20;
    _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, "%{public}@Retrieving controller wrapper for the first time for %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  v21 = [*(a1 + 32) controllerFactory];
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"PerFabricUUID:%@", *(a1 + 40)];
  v23 = [v21 wrapperWithName:v22 startupParams:*(a1 + 48) entityIdentifier:*(a1 + 56)];
  v24 = *(*(a1 + 72) + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = v23;

  v26 = *(*(*(a1 + 72) + 8) + 40);
  v27 = [*(a1 + 32) controllerWrappers];
  [v27 setObject:v26 forKeyedSubscript:*(a1 + 40)];

LABEL_21:
  v35 = *MEMORY[0x277D85DE8];
}

- (HMMTRFabricControllerStore)initWithQueue:(id)a3 controllerFactory:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HMMTRFabricControllerStore;
  v9 = [(HMMTRFabricControllerStore *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_workQueue, a3);
    objc_storeStrong(&v10->_controllerFactory, a4);
    v11 = [MEMORY[0x277CBEB38] dictionary];
    controllerWrappers = v10->_controllerWrappers;
    v10->_controllerWrappers = v11;
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t13_3194 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t13_3194, &__block_literal_global_3195);
  }

  v3 = logCategory__hmf_once_v14_3196;

  return v3;
}

uint64_t __41__HMMTRFabricControllerStore_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v14_3196 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)startupParams2:(id)a3 isEquivalentTo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 operationalKeypair];
  if ([v8 publicKey])
  {
    v9 = [v7 operationalKeypair];
    v10 = [v9 publicKey];

    if (v10)
    {
      v11 = [v6 operationalKeypair];
      v12 = SecKeyCopyExternalRepresentation([v11 publicKey], 0);

      v13 = [v7 operationalKeypair];
      v14 = SecKeyCopyExternalRepresentation([v13 publicKey], 0);

      LOBYTE(v13) = [(__CFData *)v12 isEqual:v14];
      if ((v13 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }
  }

  else
  {
  }

  v15 = [v6 operationalKeypair];
  if (![v15 publicKey])
  {
    v17 = [v7 operationalKeypair];
    v14 = [v17 publicKey];

    if (v14)
    {
LABEL_12:
      v16 = 0;
      goto LABEL_13;
    }

LABEL_10:
    v18 = [v6 usesCommonStorageDelegate];
    if (v18 != [v7 usesCommonStorageDelegate])
    {
      goto LABEL_12;
    }

    v19 = [v6 shouldAdvertiseOperational];
    if (v19 != [v7 shouldAdvertiseOperational])
    {
      goto LABEL_12;
    }

    v15 = [v6 ipk];
    if (v15 || ([v7 ipk], (v55 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v14 = [v6 ipk];
      v4 = [v7 ipk];
      if (![v14 isEqual:v4])
      {
        v16 = 0;
LABEL_59:

LABEL_60:
        if (!v15)
        {
        }

        goto LABEL_8;
      }

      v56 = 1;
    }

    else
    {
      v55 = 0;
      v56 = 0;
    }

    v21 = MEMORY[0x277CD5230];
    v22 = [v6 rootCertificate];
    v23 = [v7 rootCertificate];
    if (![v21 isCertificate:v22 equalTo:v23])
    {
      v16 = 0;
      goto LABEL_58;
    }

    v54 = [v6 intermediateCertificate];
    if (v54 || ([v7 intermediateCertificate], (v47 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v24 = MEMORY[0x277CD5230];
      v25 = [v6 intermediateCertificate];
      v52 = [v7 intermediateCertificate];
      v53 = v25;
      if (![v24 isCertificate:v25 equalTo:?])
      {
        v16 = 0;
        v26 = v54;
LABEL_54:

LABEL_55:
        if (!v26)
        {
        }

LABEL_58:
        if (!v56)
        {
          goto LABEL_60;
        }

        goto LABEL_59;
      }

      v51 = 1;
    }

    else
    {
      v47 = 0;
      v51 = 0;
    }

    v50 = [v6 operationalCertificate];
    if (v50 || ([v7 operationalCertificate], (v42 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v27 = MEMORY[0x277CD5230];
      v28 = [v6 operationalCertificate];
      v48 = [v7 operationalCertificate];
      v49 = v28;
      if (![v27 isCertificate:v28 equalTo:?])
      {
        v16 = 0;
        v26 = v54;
        v29 = v50;
LABEL_50:

        goto LABEL_51;
      }

      v45 = 1;
    }

    else
    {
      v42 = 0;
      v45 = 0;
    }

    v46 = [v6 operationalCertificateIssuer];
    if (v46 || ([v7 operationalCertificateIssuer], (v40 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v30 = [v6 operationalCertificateIssuer];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v31 = v30;
      }

      else
      {
        v31 = 0;
      }

      v32 = v31;

      v33 = [v7 operationalCertificateIssuer];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v34 = v33;
      }

      else
      {
        v34 = 0;
      }

      v35 = v34;

      v43 = v35;
      v44 = v32;
      if (![v32 isEquivalentTo:v35])
      {
        v16 = 0;
        goto LABEL_47;
      }

      v41 = 1;
    }

    else
    {
      v40 = 0;
      v41 = 0;
    }

    v36 = [v6 vendorID];
    v37 = [v7 vendorID];
    v16 = [v36 isEqual:v37];

    if (!v41)
    {
      v26 = v54;
      v29 = v50;
      v39 = v46;
      if (!v46)
      {
        v39 = v40;
      }

      if (v45)
      {
        goto LABEL_50;
      }

      goto LABEL_51;
    }

LABEL_47:
    v26 = v54;
    v29 = v50;

    v38 = v46;
    if (!v46)
    {

      v38 = 0;
    }

    if (v45)
    {
      goto LABEL_50;
    }

LABEL_51:
    if (!v29)
    {
    }

    if (!v51)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  v16 = 0;
LABEL_8:

LABEL_13:
  return v16;
}

+ (BOOL)startupParams1:(id)a3 isEquivalentTo:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 nocSigner];
  if ([v7 publicKey])
  {
    v8 = [v6 nocSigner];
    v9 = [v8 publicKey];

    if (v9)
    {
      v10 = [v5 nocSigner];
      v11 = SecKeyCopyExternalRepresentation([v10 publicKey], 0);

      v12 = [v6 nocSigner];
      v13 = SecKeyCopyExternalRepresentation([v12 publicKey], 0);

      v14 = [v11 isEqual:v13];
      goto LABEL_8;
    }
  }

  else
  {
  }

  v11 = [v5 nocSigner];
  if ([v11 publicKey])
  {
    v14 = 0;
    goto LABEL_9;
  }

  v13 = [v6 nocSigner];
  v14 = [v13 publicKey] == 0;
LABEL_8:

LABEL_9:
  v15 = [v5 operationalKeypair];
  if ([v15 publicKey])
  {
    v16 = [v6 operationalKeypair];
    v17 = [v16 publicKey];

    if (v17)
    {
      v18 = [v5 operationalKeypair];
      v19 = SecKeyCopyExternalRepresentation([v18 publicKey], 0);

      v20 = [v6 operationalKeypair];
      v21 = SecKeyCopyExternalRepresentation([v20 publicKey], 0);

      v22 = [v19 isEqual:v21];
      goto LABEL_16;
    }
  }

  else
  {
  }

  v19 = [v5 operationalKeypair];
  if ([v19 publicKey])
  {
    v23 = 0;
LABEL_77:

    goto LABEL_78;
  }

  v21 = [v6 operationalKeypair];
  v22 = [v21 publicKey] == 0;
LABEL_16:

  if ((v14 & v22) == 1)
  {
    v19 = [v5 ipk];
    if (v19 || ([v6 ipk], (v71 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v21 = [v5 ipk];
      v22 = [v6 ipk];
      if (![v21 isEqual:v22])
      {
        v23 = 0;
LABEL_74:

LABEL_75:
        if (!v19)
        {
        }

        goto LABEL_77;
      }

      v72 = 1;
    }

    else
    {
      v71 = 0;
      v72 = 0;
    }

    v24 = 0x277CD5000uLL;
    v25 = MEMORY[0x277CD5230];
    v26 = [v5 rootCertificate];
    v27 = [v6 rootCertificate];
    if (![v25 isCertificate:v26 equalTo:v27])
    {
      v23 = 0;
      goto LABEL_73;
    }

    v28 = [v5 intermediateCertificate];
    if (v28 || ([v6 intermediateCertificate], (v64 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v14 = v21;
      v29 = v27;
      v30 = v26;
      v31 = v28;
      v32 = MEMORY[0x277CD5230];
      v33 = [v5 intermediateCertificate];
      v69 = [v6 intermediateCertificate];
      v70 = v33;
      if (![v32 isCertificate:v33 equalTo:?])
      {
        v23 = 0;
        v28 = v31;
        v26 = v30;
        v27 = v29;
        v21 = v14;
LABEL_69:

LABEL_70:
        if (!v28)
        {
        }

LABEL_73:
        if (!v72)
        {
          goto LABEL_75;
        }

        goto LABEL_74;
      }

      v68 = 1;
      v28 = v31;
      v26 = v30;
      v27 = v29;
      v21 = v14;
      v24 = 0x277CD5000;
    }

    else
    {
      v64 = 0;
      v68 = 0;
    }

    v67 = [v5 operationalCertificate];
    if (v67 || ([v6 operationalCertificate], (v66 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v34 = *(v24 + 560);
      v35 = [v5 operationalCertificate];
      v36 = [v6 operationalCertificate];
      v65 = v35;
      v37 = v35;
      v14 = v36;
      if (![v34 isCertificate:v37 equalTo:v36])
      {
        v23 = 0;
        goto LABEL_65;
      }

      v61 = 1;
      v38 = v66;
    }

    else
    {
      v38 = 0;
      v61 = 0;
    }

    [v5 caseAuthenticatedTags];
    v63 = v62 = v14;
    v66 = v38;
    if (v63 || ([v6 caseAuthenticatedTags], (v54 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v39 = [v5 caseAuthenticatedTags];
      v59 = [v6 caseAuthenticatedTags];
      v60 = v39;
      if (![v39 isEqual:?])
      {
        v23 = 0;
LABEL_61:

        goto LABEL_62;
      }

      v56 = 1;
    }

    else
    {
      v54 = 0;
      v56 = 0;
    }

    v57 = [v5 operationalCertificateIssuer];
    if (v57 || ([v6 operationalCertificateIssuer], (v51 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v40 = [v5 operationalCertificateIssuer];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v41 = v40;
      }

      else
      {
        v41 = 0;
      }

      v58 = v41;

      v42 = [v6 operationalCertificateIssuer];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v43 = v42;
      }

      else
      {
        v43 = 0;
      }

      v44 = v43;

      v55 = v44;
      if (![v58 isEquivalentTo:v44])
      {
        v23 = 0;
        goto LABEL_58;
      }

      v53 = v28;
      v52 = 1;
    }

    else
    {
      v53 = v28;
      v51 = 0;
      v52 = 0;
    }

    v45 = [v5 vendorID];
    v46 = [v6 vendorID];
    v23 = [v45 isEqual:v46];

    if (!v52)
    {
      v28 = v53;
      v14 = v62;
      v50 = v57;
      if (!v57)
      {
        v50 = v51;
      }

      if (v56)
      {
        goto LABEL_61;
      }

      goto LABEL_62;
    }

    v28 = v53;
LABEL_58:
    v14 = v62;

    v47 = v57;
    if (!v57)
    {

      v47 = 0;
    }

    if (v56)
    {
      goto LABEL_61;
    }

LABEL_62:
    v48 = v63;
    if (!v63)
    {

      v48 = 0;
    }

    if (!v61)
    {
LABEL_66:
      if (!v67)
      {
      }

      if (!v68)
      {
        goto LABEL_70;
      }

      goto LABEL_69;
    }

LABEL_65:

    goto LABEL_66;
  }

  v23 = 0;
LABEL_78:

  return v23;
}

+ (BOOL)startupParams:(id)a3 isEquivalentTo:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([v7 usesCommonStorageDelegate])
  {
    v8 = [v7 controllerParams];

    v9 = [v6 controllerParams];
    v10 = [a1 startupParams1:v8 isEquivalentTo:v9];

    v7 = v8;
  }

  else
  {
    v10 = [a1 startupParams2:v7 isEquivalentTo:v6];
  }

  return v10;
}

@end