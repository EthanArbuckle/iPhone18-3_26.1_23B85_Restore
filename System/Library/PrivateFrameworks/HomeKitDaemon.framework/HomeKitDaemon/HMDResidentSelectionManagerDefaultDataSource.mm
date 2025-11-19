@interface HMDResidentSelectionManagerDefaultDataSource
- (HMDResidentSelectionManagerDefaultDataSource)init;
- (NSBackgroundActivityScheduler)autoModeEvaluationScheduler;
- (id)createCoordinationElectionModeWithContext:(id)a3;
- (id)createResidentSelectionModeWithType:(unint64_t)a3 context:(id)a4;
- (id)idsServerBagForHome:(id)a3;
@end

@implementation HMDResidentSelectionManagerDefaultDataSource

- (id)idsServerBagForHome:(id)a3
{
  v3 = [a3 homeManager];
  v4 = [v3 idsServerBag];

  return v4;
}

- (NSBackgroundActivityScheduler)autoModeEvaluationScheduler
{
  v2 = [objc_alloc(MEMORY[0x277CCA8B8]) initWithIdentifier:@"com.apple.homed.HMDResidentSelectionManager"];

  return v2;
}

- (id)createCoordinationElectionModeWithContext:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543874;
    v13 = v8;
    v14 = 1024;
    v15 = [v4 residentCapable];
    v16 = 1024;
    v17 = [v4 isActingAsResident];
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Current Device resident capable: %d, acting as a resident: %d", &v12, 0x18u);
  }

  objc_autoreleasePoolPop(v5);
  if ([v4 residentCapable] && objc_msgSend(v4, "isActingAsResident"))
  {
    v9 = [[HMDResidentSelectionCoordinationElection alloc] initWithContext:v4];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createResidentSelectionModeWithType:(unint64_t)a3 context:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = 0;
  if (a3 > 1)
  {
    if (a3 == 3)
    {
      v9 = HMDResidentSelectionAutoMode;
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_14;
      }

      v9 = HMDResidentSelectionManualMode;
    }

    v8 = [[v9 alloc] initWithContext:v6];
    goto LABEL_13;
  }

  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_14;
    }

    v8 = [(HMDResidentSelectionManagerDefaultDataSource *)self createCoordinationElectionModeWithContext:v6];
LABEL_13:
    v7 = v8;
    goto LABEL_14;
  }

  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = HMFGetLogIdentifier();
    v14 = @"unknown";
    v17 = 138543618;
    v18 = v13;
    v19 = 2112;
    v20 = @"unknown";
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@%@ is not supported.", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v7 = 0;
LABEL_14:

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

- (HMDResidentSelectionManagerDefaultDataSource)init
{
  v3.receiver = self;
  v3.super_class = HMDResidentSelectionManagerDefaultDataSource;
  return [(HMDResidentSelectionManagerDefaultDataSource *)&v3 init];
}

@end