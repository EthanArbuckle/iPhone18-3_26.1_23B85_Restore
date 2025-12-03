@interface HMDMemoryDiagnostic
+ (id)_configureCurrentProcessLevel:(id)level;
+ (id)_nextLevelFromPreviousLevel:(id)level;
+ (id)_previousLevelForBuild:(id)build;
+ (void)_recordLevel:(id)level forBuild:(id)build;
+ (void)configureMemoryDiagnostic;
@end

@implementation HMDMemoryDiagnostic

+ (id)_nextLevelFromPreviousLevel:(id)level
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__32138;
  v16 = __Block_byref_object_dispose__32139;
  levelCopy = level;
  v17 = levelCopy;
  memoryLevelsMB = [self memoryLevelsMB];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__HMDMemoryDiagnostic__nextLevelFromPreviousLevel___block_invoke;
  v9[3] = &unk_278672248;
  v6 = levelCopy;
  v10 = v6;
  v11 = &v12;
  [memoryLevelsMB hmf_enumerateWithAutoreleasePoolUsingBlock:v9];

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

+ (id)_previousLevelForBuild:(id)build
{
  v21 = *MEMORY[0x277D85DE8];
  buildCopy = build;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [standardUserDefaults dictionaryForKey:@"com.apple.homekit.MemoryDiagnosticLimit"];

  if (v6)
  {
    v7 = [v6 valueForKey:@"buildVersion"];
    if (v7 && [buildCopy isEqualToString:v7])
    {
      v8 = [v6 valueForKey:@"memoryLevelMB"];
      v9 = objc_autoreleasePoolPush();
      selfCopy = self;
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

+ (void)_recordLevel:(id)level forBuild:(id)build
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11[0] = @"buildVersion";
  v11[1] = @"memoryLevelMB";
  v12[0] = build;
  v12[1] = level;
  v5 = MEMORY[0x277CBEAC0];
  buildCopy = build;
  levelCopy = level;
  v8 = [v5 dictionaryWithObjects:v12 forKeys:v11 count:2];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];

  [standardUserDefaults setObject:v8 forKey:@"com.apple.homekit.MemoryDiagnosticLimit"];
  v10 = *MEMORY[0x277D85DE8];
}

+ (id)_configureCurrentProcessLevel:(id)level
{
  [level intValue];
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
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v4 = [mEMORY[0x277D0F8D0] preferenceForKey:@"MemoryDiagnosticLimitOverride"];
  numberValue = [v4 numberValue];

  if (numberValue && [numberValue intValue] >= 1)
  {
    v6 = [self _configureCurrentProcessLevel:numberValue];
    if (!v6)
    {
      goto LABEL_24;
    }

    v7 = v6;
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
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
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  softwareVersion = [productInfo softwareVersion];
  buildVersion = [softwareVersion buildVersion];

  if (buildVersion)
  {
    v16 = [self _previousLevelForBuild:buildVersion];
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = &unk_283E71DC8;
    }

    v18 = [self _nextLevelFromPreviousLevel:v17];
    v19 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v33 = 138543874;
      v34 = v22;
      v35 = 2112;
      v36 = buildVersion;
      v37 = 2112;
      v38 = v18;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Setting diagnostic memory limit for build %@ to %@MB", &v33, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    v23 = [selfCopy2 _configureCurrentProcessLevel:v18];
    if (v23)
    {
      v24 = objc_autoreleasePoolPush();
      v25 = selfCopy2;
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
      [selfCopy2 _recordLevel:v18 forBuild:buildVersion];
    }
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    selfCopy3 = self;
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