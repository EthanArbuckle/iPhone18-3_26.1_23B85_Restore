@interface CLLocation(HMFObject)
+ (NSString)shortDescription;
+ (id)logCategory;
- (id)attributeDescriptions;
- (id)shortDescription;
- (uint64_t)isLocationSimulatedBasedOnCarPlay;
- (uint64_t)isSimulated;
@end

@implementation CLLocation(HMFObject)

- (uint64_t)isLocationSimulatedBasedOnCarPlay
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = [a1 timestamp];

  if (v2)
  {
    v3 = +[HMDLocation sharedManager];
    v4 = [v3 isCarPlayConnected];

    if (v4)
    {
      v5 = objc_autoreleasePoolPush();
      v6 = a1;
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = HMFGetLogIdentifier();
        v28 = 138543362;
        v29 = v8;
        _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@CarPlay session is connected right now. Trusting this location", &v28, 0xCu);
      }

      objc_autoreleasePoolPop(v5);
      v9 = 0;
      goto LABEL_20;
    }

    v14 = +[HMDLocation sharedManager];
    v15 = [v14 lastCarPlaySessionDisconnectionTimeStamp];

    if (v15)
    {
      v16 = [a1 timestamp];
      [v16 timeIntervalSinceDate:v15];
      v18 = fabs(v17);

      if (v18 <= 300.0 || fabs(v18 + -300.0) < 2.22044605e-16)
      {
        v9 = 0;
LABEL_19:

        goto LABEL_20;
      }

      v19 = objc_autoreleasePoolPush();
      v20 = a1;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        v23 = [v20 timestamp];
        v24 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
        v28 = 138544130;
        v29 = v22;
        v30 = 2112;
        v31 = v15;
        v32 = 2112;
        v33 = v23;
        v34 = 2112;
        v35 = v24;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@It was a while between disconnecting the CarPlay session and when this location was determined. Considering this location as simulated. Last active CarPlay session: [%@], location timestamp: [%@], timeDiff: %@", &v28, 0x2Au);

LABEL_17:
      }
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v25 = a1;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        v28 = 138543362;
        v29 = v22;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@We do not know whether there was any active car play session in the past from last homed boot. Considering this location as simulated", &v28, 0xCu);
        goto LABEL_17;
      }
    }

    objc_autoreleasePoolPop(v19);
    v9 = 1;
    goto LABEL_19;
  }

  v10 = objc_autoreleasePoolPush();
  v11 = a1;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = HMFGetLogIdentifier();
    v28 = 138543362;
    v29 = v13;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@CLLocation timestamp is nil. We don't know whether we can trust it. Considering this location as simulated", &v28, 0xCu);
  }

  objc_autoreleasePoolPop(v10);
  v9 = 1;
LABEL_20:
  v26 = *MEMORY[0x277D85DE8];
  return v9;
}

- (uint64_t)isSimulated
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [v2 preferenceForKey:@"allowLocationSimulation"];
  v4 = [v3 BOOLValue];

  if (!v4)
  {
    v10 = [a1 sourceInformation];
    v11 = objc_autoreleasePoolPush();
    if (v10)
    {
      if ([v10 isSimulatedBySoftware])
      {
        v12 = objc_autoreleasePoolPush();
        v13 = a1;
        v14 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = HMFGetLogIdentifier();
          v21 = 138543362;
          v22 = v15;
          _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@CLLocation is simulated by the software", &v21, 0xCu);
        }

        objc_autoreleasePoolPop(v12);
        v9 = 1;
        goto LABEL_15;
      }

      if ([v10 isProducedByAccessory])
      {
        v9 = [a1 isLocationSimulatedBasedOnCarPlay];
LABEL_15:
        objc_autoreleasePoolPop(v11);
LABEL_17:

        goto LABEL_18;
      }
    }

    else
    {
      v16 = a1;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v21 = 138543362;
        v22 = v18;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@CLLocation does not contain the location source information", &v21, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v11);
    v9 = 0;
    goto LABEL_17;
  }

  v5 = objc_autoreleasePoolPush();
  v6 = a1;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v21 = 138543362;
    v22 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Not checking for location simulation due to override", &v21, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = 0;
LABEL_18:
  v19 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)attributeDescriptions
{
  v25[5] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D0F8D8] defaultFormatter];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = MEMORY[0x277CCABB0];
  [a1 coordinate];
  v24 = [v4 numberWithDouble:?];
  v23 = [v3 initWithName:@"Latitude" value:v24 options:0 formatter:v2];
  v25[0] = v23;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v6 = MEMORY[0x277CCABB0];
  [a1 coordinate];
  v8 = [v6 numberWithDouble:v7];
  v9 = [v5 initWithName:@"Longitude" value:v8 options:0 formatter:v2];
  v25[1] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  v11 = MEMORY[0x277CCABB0];
  [a1 horizontalAccuracy];
  v12 = [v11 numberWithDouble:?];
  v13 = [v10 initWithName:@"Horizontal Accuracy" value:v12 options:0 formatter:v2];
  v25[2] = v13;
  v14 = objc_alloc(MEMORY[0x277D0F778]);
  v15 = [a1 timestamp];
  v16 = [v14 initWithName:@"Timestamp" value:v15 options:0 formatter:v2];
  v25[3] = v16;
  v17 = objc_alloc(MEMORY[0x277D0F778]);
  v18 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "isSimulated")}];
  v19 = [v17 initWithName:@"Simulated" value:v18 options:0 formatter:v2];
  v25[4] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:5];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)shortDescription
{
  v0 = MEMORY[0x277CCACA8];
  v1 = [objc_opt_class() shortDescription];
  v2 = [v0 stringWithFormat:@"<%@>", v1];

  return v2;
}

+ (NSString)shortDescription
{
  v0 = objc_opt_class();

  return NSStringFromClass(v0);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_276211 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_276211, &__block_literal_global_276212);
  }

  v1 = logCategory__hmf_once_v1_276213;

  return v1;
}

@end