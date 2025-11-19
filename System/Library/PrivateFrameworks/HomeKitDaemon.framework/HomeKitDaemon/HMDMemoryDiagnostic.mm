@interface HMDMemoryDiagnostic
+ (id)_configureCurrentProcessLevel:(id)a3;
+ (id)_nextLevelFromPreviousLevel:(id)a3;
+ (id)_previousLevelForBuild:(id)a3;
+ (void)_recordLevel:(id)a3 forBuild:(id)a4;
+ (void)configureMemoryDiagnostic;
@end

@implementation HMDMemoryDiagnostic

+ (id)_nextLevelFromPreviousLevel:(id)a3
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__32138;
  v16 = __Block_byref_object_dispose__32139;
  v4 = a3;
  v17 = v4;
  v5 = [a1 memoryLevelsMB];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__HMDMemoryDiagnostic__nextLevelFromPreviousLevel___block_invoke;
  v9[3] = &unk_278672248;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 hmf_enumerateWithAutoreleasePoolUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __51__HMDMemoryDiagnostic__nextLevelFromPreviousLevel___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v7 = [v8 intValue];
  if (v7 > [*(a1 + 32) intValue])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

+ (id)_previousLevelForBuild:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [v5 dictionaryForKey:@"com.apple.homekit.MemoryDiagnosticLimit"];

  if (v6)
  {
    v7 = [v6 valueForKey:@"buildVersion"];
    if (v7 && [v4 isEqualToString:v7])
    {
      v8 = [v6 valueForKey:@"memoryLevelMB"];
      v9 = objc_autoreleasePoolPush();
      v10 = a1;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        v15 = 138543874;
        v16 = v12;
        v17 = 2112;
        v18 = v7;
        v19 = 2112;
        v20 = v8;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Previous diagnostic memory limit for build %@ is set to %@MB", &v15, 0x20u);
      }

      objc_autoreleasePoolPop(v9);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (void)_recordLevel:(id)a3 forBuild:(id)a4
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11[0] = @"buildVersion";
  v11[1] = @"memoryLevelMB";
  v12[0] = a4;
  v12[1] = a3;
  v5 = MEMORY[0x277CBEAC0];
  v6 = a4;
  v7 = a3;
  v8 = [v5 dictionaryWithObjects:v12 forKeys:v11 count:2];
  v9 = [MEMORY[0x277CBEBD0] standardUserDefaults];

  [v9 setObject:v8 forKey:@"com.apple.homekit.MemoryDiagnosticLimit"];
  v10 = *MEMORY[0x277D85DE8];
}

+ (id)_configureCurrentProcessLevel:(id)a3
{
  [a3 intValue];
  getpid();
  v3 = memorystatus_control();
  if (v3)
  {
    v4 = MEMORY[0x277CCA9B8];
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"memorystatus_control returned %d", v3];
    v6 = [v4 hmfErrorWithCode:15 reason:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)configureMemoryDiagnostic
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v4 = [v3 preferenceForKey:@"MemoryDiagnosticLimitOverride"];
  v5 = [v4 numberValue];

  if (v5 && [v5 intValue] >= 1)
  {
    v6 = [a1 _configureCurrentProcessLevel:v5];
    if (!v6)
    {
      goto LABEL_24;
    }

    v7 = v6;
    v8 = objc_autoreleasePoolPush();
    v9 = a1;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v33 = 138543618;
      v34 = v11;
      v35 = 2112;
      v36 = v7;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to set diagnostic memory limit from preference: %@", &v33, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = objc_autoreleasePoolPush();
  v13 = [MEMORY[0x277D0F8E8] productInfo];
  v14 = [v13 softwareVersion];
  v15 = [v14 buildVersion];

  if (v15)
  {
    v16 = [a1 _previousLevelForBuild:v15];
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = &unk_283E71DC8;
    }

    v18 = [a1 _nextLevelFromPreviousLevel:v17];
    v19 = objc_autoreleasePoolPush();
    v20 = a1;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v33 = 138543874;
      v34 = v22;
      v35 = 2112;
      v36 = v15;
      v37 = 2112;
      v38 = v18;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Setting diagnostic memory limit for build %@ to %@MB", &v33, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    v23 = [v20 _configureCurrentProcessLevel:v18];
    if (v23)
    {
      v24 = objc_autoreleasePoolPush();
      v25 = v20;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        v33 = 138543618;
        v34 = v27;
        v35 = 2112;
        v36 = v23;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to set diagnostic memory limit: %@", &v33, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
    }

    else if (([v18 isEqualToNumber:v17] & 1) == 0)
    {
      [v20 _recordLevel:v18 forBuild:v15];
    }
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    v29 = a1;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      v33 = 138543362;
      v34 = v31;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to get current build version, return", &v33, 0xCu);
    }

    objc_autoreleasePoolPop(v28);
  }

  objc_autoreleasePoolPop(v12);
LABEL_24:

  v32 = *MEMORY[0x277D85DE8];
}

@end