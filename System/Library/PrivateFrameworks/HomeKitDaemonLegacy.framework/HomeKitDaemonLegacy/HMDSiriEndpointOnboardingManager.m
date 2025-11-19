@interface HMDSiriEndpointOnboardingManager
- (BOOL)readyToApplyOnboardingSelectionsWithHomeUUID:(id)a3 accessoryUUID:(id)a4;
- (HMDSiriEndpointOnboardingManager)initWithDataSource:(id)a3;
- (HMDSiriEndpointOnboardingManagerDataSource)dataSource;
- (void)_applyOnboardingSelections:(id)a3 accessoryUUID:(id)a4 homeUUID:(id)a5 userUUID:(id)a6 cacheKey:(id)a7 completion:(id)a8;
- (void)_enableUserListeningHistoryForHomeUUID:(id)a3 accessoryUUID:(id)a4 userUUID:(id)a5;
- (void)_setNeedsOnboardingCompleteWitHomeUUID:(id)a3 accessoryUUID:(id)a4 completion:(id)a5;
- (void)applyCachedOnboardingSelectionsWithAccessoryUUID:(id)a3 homeUUID:(id)a4;
- (void)applyOnboardingSelections:(id)a3 accessoryUUID:(id)a4 homeUUID:(id)a5 userUUID:(id)a6 completion:(id)a7;
- (void)handleAccessoryConfigured:(id)a3;
- (void)handleCompositeSettingsControllerConfigured:(id)a3;
@end

@implementation HMDSiriEndpointOnboardingManager

- (HMDSiriEndpointOnboardingManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (BOOL)readyToApplyOnboardingSelectionsWithHomeUUID:(id)a3 accessoryUUID:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDSiriEndpointOnboardingManager *)self dataSource];
  v9 = [v8 accessoryWithHomeUUID:v6 accessoryUUID:v7];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    objc_opt_class();
    v12 = objc_opt_isKindOfClass() & 1;
    if (v12)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if (!v12)
    {
      v21 = objc_autoreleasePoolPush();
      v22 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        v31 = 138543618;
        v32 = v24;
        v33 = 2112;
        v34 = v7;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@HAP accessory is not found. accessoryUUID: %@", &v31, 0x16u);
      }

      goto LABEL_19;
    }

    if ([v11 isSecureSessionEstablished])
    {
      v15 = [v11 siriEndpointProfile];

      if (v15)
      {
        v16 = 1;
LABEL_20:

        goto LABEL_21;
      }

      v21 = objc_autoreleasePoolPush();
      v28 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        v31 = 138543618;
        v32 = v26;
        v33 = 2112;
        v34 = v11;
        v27 = "%{public}@Siri endpoint profile is not created. Accessory: %@";
        goto LABEL_18;
      }
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      v25 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        v31 = 138543618;
        v32 = v26;
        v33 = 2112;
        v34 = v11;
        v27 = "%{public}@Accessory is not configured. Accessory: %@";
LABEL_18:
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, v27, &v31, 0x16u);
      }
    }

LABEL_19:

    objc_autoreleasePoolPop(v21);
    v16 = 0;
    goto LABEL_20;
  }

  v17 = objc_autoreleasePoolPush();
  v18 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    v31 = 138543618;
    v32 = v20;
    v33 = 2112;
    v34 = v7;
    _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Accessory is not found. accessoryUUID: %@", &v31, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  v16 = 0;
LABEL_21:

  v29 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)_enableUserListeningHistoryForHomeUUID:(id)a3 accessoryUUID:(id)a4 userUUID:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(HMDSiriEndpointOnboardingManager *)self dataSource];
  [v11 enableUserListeningHistoryForHomeUUID:v10 accessoryUUID:v9 userUUID:v8];
}

- (void)_setNeedsOnboardingCompleteWitHomeUUID:(id)a3 accessoryUUID:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(HMDSiriEndpointOnboardingManager *)self dataSource];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __100__HMDSiriEndpointOnboardingManager__setNeedsOnboardingCompleteWitHomeUUID_accessoryUUID_completion___block_invoke;
  v13[3] = &unk_279733F30;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 setNeedsOnboardingCompleteWitHomeUUID:v10 accessoryUUID:v9 completion:v13];
}

void __100__HMDSiriEndpointOnboardingManager__setNeedsOnboardingCompleteWitHomeUUID_accessoryUUID_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v7;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Setting needsOnboarding complete failed with error: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_applyOnboardingSelections:(id)a3 accessoryUUID:(id)a4 homeUUID:(id)a5 userUUID:(id)a6 cacheKey:(id)a7 completion:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a3;
  v20 = [(HMDSiriEndpointOnboardingManager *)self dataSource];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __115__HMDSiriEndpointOnboardingManager__applyOnboardingSelections_accessoryUUID_homeUUID_userUUID_cacheKey_completion___block_invoke;
  v26[3] = &unk_27972D7D0;
  v26[4] = self;
  v27 = v15;
  v28 = v14;
  v29 = v17;
  v30 = v16;
  v31 = v18;
  v21 = v18;
  v22 = v16;
  v23 = v17;
  v24 = v14;
  v25 = v15;
  [v20 applyOnboardingSelections:v19 accessoryUUID:v24 homeUUID:v25 completion:v26];
}

void __115__HMDSiriEndpointOnboardingManager__applyOnboardingSelections_accessoryUUID_homeUUID_userUUID_cacheKey_completion___block_invoke(id *a1, void *a2, uint64_t a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  v7 = a1[4];
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = HMSiriEndpointOnboardingResultAsString();
    *buf = 138543874;
    v28 = v9;
    v29 = 2114;
    v30 = v10;
    v31 = 2114;
    v32 = v5;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Apply result received from controller: %{public}@ error:%{public}@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  if (v5 || a3 != 2)
  {
    v20 = a1[9];
    if (v20)
    {
      v20[2](v20, 0, a3);
    }
  }

  else
  {
    objc_initWeak(buf, a1[4]);
    v11 = a1[5];
    v12 = a1[4];
    v13 = a1[6];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __115__HMDSiriEndpointOnboardingManager__applyOnboardingSelections_accessoryUUID_homeUUID_userUUID_cacheKey_completion___block_invoke_20;
    v22[3] = &unk_27972D7A8;
    objc_copyWeak(&v26, buf);
    v14 = a1[7];
    v15 = a1[5];
    v16 = a1[6];
    v17 = a1[8];
    *&v18 = v16;
    *(&v18 + 1) = v17;
    *&v19 = v14;
    *(&v19 + 1) = v15;
    v23 = v19;
    v24 = v18;
    v25 = a1[9];
    [v12 _setNeedsOnboardingCompleteWitHomeUUID:v11 accessoryUUID:v13 completion:v22];

    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __115__HMDSiriEndpointOnboardingManager__applyOnboardingSelections_accessoryUUID_homeUUID_userUUID_cacheKey_completion___block_invoke_20(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (!v3)
  {
    os_unfair_lock_lock_with_options();
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 32);
      v12 = 138543618;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing cached onboarding selections, key: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [v6[1] removeObjectForKey:*(a1 + 32)];
    [v6[2] removeObjectForKey:*(a1 + 32)];
    [v6 _enableUserListeningHistoryForHomeUUID:*(a1 + 40) accessoryUUID:*(a1 + 48) userUUID:*(a1 + 56)];
    v10 = *(a1 + 64);
    if (v10)
    {
      (*(v10 + 16))(v10, 0, 2);
    }

    os_unfair_lock_unlock(WeakRetained + 6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)applyCachedOnboardingSelectionsWithAccessoryUUID:(id)a3 homeUUID:(id)a4
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
    *buf = 138543874;
    v40 = v11;
    v41 = 2112;
    v42 = v7;
    v43 = 2112;
    v44 = v6;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Apply cached onboarding selections: homeUUID: %@ accessoryUUID: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDSiriEndpointOnboardingManager *)v9 dataSource];
  v13 = [v12 needsOnboardingForHomeUUID:v7 accessoryUUID:v6];
  v14 = v13;
  if (v13)
  {
    if ([v13 BOOLValue])
    {
      v15 = [MEMORY[0x277CCAD78] hmf_zeroUUID];
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v7, v6];
      os_unfair_lock_lock_with_options();
      v17 = [(NSMutableDictionary *)v9->_onboardingSelections objectForKey:v16];
      v18 = v17 == 0;

      if (v18)
      {
        context = objc_autoreleasePoolPush();
        v30 = v9;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = HMFGetLogIdentifier();
          *buf = 138543618;
          v40 = v32;
          v41 = 2112;
          v42 = v16;
          _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Onboarding selections matching key not found in the cache: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(context);
        os_unfair_lock_unlock(&v9->_lock);
      }

      else
      {
        v19 = [(NSMutableDictionary *)v9->_onboardingSelections objectForKeyedSubscript:v16];
        v20 = [(NSMutableDictionary *)v9->_onboardingUserUUID objectForKey:v16];

        if (v20)
        {
          v21 = [(NSMutableDictionary *)v9->_onboardingUserUUID objectForKeyedSubscript:v16];

          v15 = v21;
        }

        os_unfair_lock_unlock(&v9->_lock);
        if ([(HMDSiriEndpointOnboardingManager *)v9 readyToApplyOnboardingSelectionsWithHomeUUID:v7 accessoryUUID:v6])
        {
          [(HMDSiriEndpointOnboardingManager *)v9 _applyOnboardingSelections:v19 accessoryUUID:v6 homeUUID:v7 userUUID:v15 cacheKey:v16 completion:0];
        }

        else
        {
          contexta = objc_autoreleasePoolPush();
          v33 = v9;
          v34 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            v35 = HMFGetLogIdentifier();
            *buf = 138543618;
            v40 = v35;
            v41 = 2112;
            v42 = v6;
            _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@It's not ready to apply onboarding. accessoryUUID: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(contexta);
        }
      }
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      v27 = v9;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543618;
        v40 = v29;
        v41 = 2112;
        v42 = v6;
        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Onboarding selections are already configured on the accessory: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v26);
      [(HMDSiriEndpointOnboardingManager *)v27 _setNeedsOnboardingCompleteWitHomeUUID:v7 accessoryUUID:v6 completion:0];
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v9;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v40 = v25;
      v41 = 2112;
      v42 = v6;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Could not determine needsOnboarding state. accessoryUUID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)applyOnboardingSelections:(id)a3 accessoryUUID:(id)a4 homeUUID:(id)a5 userUUID:(id)a6 completion:(id)a7
{
  v60 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v48 = a6;
  v15 = a7;
  if (!v12)
  {
    _HMFPreconditionFailure();
    goto LABEL_30;
  }

  if (!v13)
  {
LABEL_30:
    _HMFPreconditionFailure();
    goto LABEL_31;
  }

  if (!v14)
  {
LABEL_31:
    _HMFPreconditionFailure();
LABEL_32:
    _HMFPreconditionFailure();
  }

  v16 = v15;
  if (!v15)
  {
    goto LABEL_32;
  }

  v17 = objc_autoreleasePoolPush();
  v18 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138544130;
    v53 = v20;
    v54 = 2112;
    v55 = v12;
    v56 = 2112;
    v57 = v14;
    v58 = 2112;
    v59 = v13;
    _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Apply onboarding selections: %@ homeUUID: %@ accessoryUUID: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v17);
  v49 = [(HMDSiriEndpointOnboardingManager *)v18 dataSource];
  v21 = [v49 needsOnboardingForHomeUUID:v14 accessoryUUID:v13];
  v22 = v21;
  if (v21)
  {
    if ([v21 BOOLValue])
    {
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v14, v13];
      os_unfair_lock_lock_with_options();
      v24 = [(NSMutableDictionary *)v18->_onboardingSelections objectForKey:v23];

      context = objc_autoreleasePoolPush();
      v25 = v18;
      if (v24)
      {
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543618;
          v53 = v27;
          v54 = 2112;
          v55 = v23;
          _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Onboarding selections are already cached, key: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(context);
        v16[2](v16, 0, 1);
        os_unfair_lock_unlock(&v18->_lock);
      }

      else
      {
        v37 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          v38 = HMFGetLogIdentifier();
          *buf = 138543618;
          v53 = v38;
          v54 = 2112;
          v55 = v23;
          _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@Caching onboarding selections, key: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(context);
        [(NSMutableDictionary *)v18->_onboardingSelections setObject:v12 forKey:v23];
        contexta = objc_autoreleasePoolPush();
        v39 = v25;
        v40 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          v41 = HMFGetLogIdentifier();
          *buf = 138543618;
          v53 = v41;
          v54 = 2112;
          v55 = v48;
          _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_INFO, "%{public}@Caching onboarding user UUID %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(contexta);
        [v39[2] setObject:v48 forKey:v23];
        os_unfair_lock_unlock(&v18->_lock);
        if ([v39 readyToApplyOnboardingSelectionsWithHomeUUID:v14 accessoryUUID:v13])
        {
          [v39 _applyOnboardingSelections:v12 accessoryUUID:v13 homeUUID:v14 userUUID:v48 cacheKey:v23 completion:v16];
        }

        else
        {
          v42 = objc_autoreleasePoolPush();
          v43 = v39;
          v44 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            v45 = HMFGetLogIdentifier();
            *buf = 138543618;
            v53 = v45;
            v54 = 2112;
            v55 = v13;
            _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_INFO, "%{public}@It's not ready to apply onboarding. accessoryUUID: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v42);
          v16[2](v16, 0, 3);
        }
      }
    }

    else
    {
      v32 = objc_autoreleasePoolPush();
      v33 = v18;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = HMFGetLogIdentifier();
        *buf = 138543618;
        v53 = v35;
        v54 = 2112;
        v55 = v13;
        _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@Onboarding selections are already configured on the accessory: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v32);
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __105__HMDSiriEndpointOnboardingManager_applyOnboardingSelections_accessoryUUID_homeUUID_userUUID_completion___block_invoke;
      v50[3] = &unk_279735558;
      v51 = v16;
      [(HMDSiriEndpointOnboardingManager *)v33 _setNeedsOnboardingCompleteWitHomeUUID:v14 accessoryUUID:v13 completion:v50];
      v23 = v51;
    }
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    v29 = v18;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543618;
      v53 = v31;
      v54 = 2112;
      v55 = v13;
      _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@Could not determine needsOnboarding state. accessoryUUID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
    v23 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    (v16)[2](v16, v23, 1);
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)handleAccessoryConfigured:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [v7 home];
    if (v8)
    {
      v9 = [v7 uuid];
      v10 = [v8 uuid];
      [(HMDSiriEndpointOnboardingManager *)self applyCachedOnboardingSelectionsWithAccessoryUUID:v9 homeUUID:v10];
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v20 = 138543618;
        v21 = v18;
        v22 = 2112;
        v23 = v7;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Accessory is configured with invalid home: %@", &v20, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Invalid HAP accessory is configured", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)handleCompositeSettingsControllerConfigured:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:@"HMDHomeUUIDOwnerUUIDKey"];

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

  if (v8)
  {
    v9 = [v8 hmf_UUIDForKey:@"HMDCompositeSettingControllerOwnerUUIDNotificationKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (v11)
    {
      v12 = [v8 hmf_UUIDForKey:@"HMDCompositeSettingControllerHomeUUIDNotificationKey"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;

      if (v14)
      {
        [(HMDSiriEndpointOnboardingManager *)self applyCachedOnboardingSelectionsWithAccessoryUUID:v11 homeUUID:v14];
      }

      else
      {
        v23 = objc_autoreleasePoolPush();
        v24 = self;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = HMFGetLogIdentifier();
          v28 = 138543362;
          v29 = v26;
          _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@CompositeSettingsController is congigured with invalid homeUUID", &v28, 0xCu);
        }

        objc_autoreleasePoolPop(v23);
      }
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        v28 = 138543362;
        v29 = v22;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@CompositeSettingsController is congigured with invalid accessoryUUID", &v28, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v28 = 138543362;
      v29 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@CompositeSettingsController is congigured with invalid homeUUID and ownerUUID info", &v28, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (HMDSiriEndpointOnboardingManager)initWithDataSource:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HMDSiriEndpointOnboardingManager;
  v5 = [(HMDSiriEndpointOnboardingManager *)&v13 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    onboardingSelections = v5->_onboardingSelections;
    v5->_onboardingSelections = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    onboardingUserUUID = v5->_onboardingUserUUID;
    v5->_onboardingUserUUID = v8;

    objc_storeWeak(&v5->_dataSource, v4);
  }

  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  [v10 addObserver:v5 selector:sel_handleCompositeSettingsControllerConfigured_ name:@"HMDCompositeSettingsControllerDidConfigureNotification" object:0];

  v11 = [MEMORY[0x277CCAB98] defaultCenter];
  [v11 addObserver:v5 selector:sel_handleAccessoryConfigured_ name:@"HMDAccessoryConfiguredNotification" object:0];

  return v5;
}

@end