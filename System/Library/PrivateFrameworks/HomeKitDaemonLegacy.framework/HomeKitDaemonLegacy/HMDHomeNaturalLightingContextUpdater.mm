@interface HMDHomeNaturalLightingContextUpdater
+ (id)logCategory;
- (BOOL)areEncodedBrightnessLevelTransitionPointsValid:(id)valid;
- (HMDHome)home;
- (HMDHomeNaturalLightingContextUpdater)initWithHome:(id)home workQueue:(id)queue demoModeEnabled:(BOOL)enabled logIdentifier:(id)identifier notificationCenter:(id)center dataSource:(id)source;
- (id)colorTemperatureTransitionPointsForMaximumBrightnessWithEncodeNaturalLightingCurve:(id)curve;
- (id)colorTemperatureTransitionPointsForMinimumBrightnessWithEncodeNaturalLightingCurve:(id)curve;
- (int64_t)colorTemperatureForTransitionPoint:(id)point;
- (int64_t)timeOfDayForMinimumBrightnessTransitionPoint:(id)point maximumBrighnessTransitionPoint:(id)transitionPoint;
- (void)configure;
- (void)handleResidentDeviceUpdated:(id)updated;
- (void)initalizeCurve;
- (void)updateNaturalLightingContext;
@end

@implementation HMDHomeNaturalLightingContextUpdater

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (void)updateNaturalLightingContext
{
  v42 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDHomeNaturalLightingContextUpdater *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  home = [(HMDHomeNaturalLightingContextUpdater *)self home];
  v5 = home;
  if (!home)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v36 = 138543362;
      v37 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Skipping updating natural lighting context, home is not set", &v36, 0xCu);
      goto LABEL_8;
    }

LABEL_9:

    objc_autoreleasePoolPop(v8);
    goto LABEL_21;
  }

  isCurrentDeviceConfirmedPrimaryResident = [home isCurrentDeviceConfirmedPrimaryResident];
  isDemoModeEnabled = [(HMDHomeNaturalLightingContextUpdater *)self isDemoModeEnabled];
  if ((isCurrentDeviceConfirmedPrimaryResident & 1) == 0 && !isDemoModeEnabled)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = HMFBooleanToString();
      v13 = HMFBooleanToString();
      v36 = 138543874;
      v37 = v11;
      v38 = 2112;
      v39 = v12;
      v40 = 2112;
      v41 = v13;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Skipping updating natural lighting context, device is primary resident: %@ and demo mode is enabled: %@", &v36, 0x20u);

LABEL_8:
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  curve = [(HMDHomeNaturalLightingContextUpdater *)self curve];
  if (curve)
  {
    v15 = [HMDNaturalLightingContext alloc];
    dataSource = [(HMDHomeNaturalLightingContextUpdater *)self dataSource];
    localTimeZone = [dataSource localTimeZone];
    v18 = [(HMDNaturalLightingContext *)v15 initWithCurve:curve timeZone:localTimeZone];
  }

  else
  {
    v18 = 0;
  }

  naturalLightingContext = [v5 naturalLightingContext];
  v20 = [(HMDNaturalLightingContext *)naturalLightingContext isEqual:v18];
  v21 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v23 = HMFGetOSLogHandle();
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_INFO);
  if (v20)
  {
    if (v24)
    {
      v25 = HMFGetLogIdentifier();
      v36 = 138543618;
      v37 = v25;
      v38 = 2112;
      v39 = naturalLightingContext;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Skipping updating natural lighting context, since it is already set: %@", &v36, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
  }

  else
  {
    if (v24)
    {
      v26 = HMFGetLogIdentifier();
      v36 = 138543618;
      v37 = v26;
      v38 = 2112;
      v39 = v18;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Updating natural lighting context to %@", &v36, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v27 = [HMDHomeModel alloc];
    uuid = [v5 uuid];
    homeManager = [v5 homeManager];
    uuid2 = [homeManager uuid];
    v31 = [(HMDBackingStoreModelObject *)v27 initWithObjectChangeType:2 uuid:uuid parentUUID:uuid2];

    [(HMDHomeModel *)v31 setNaturalLightingContext:v18];
    backingStore = [v5 backingStore];
    v33 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v34 = [backingStore transaction:@"Updating natural lighting context" options:v33];

    [v34 add:v31];
    [v34 run];
  }

LABEL_21:
  v35 = *MEMORY[0x277D85DE8];
}

- (int64_t)colorTemperatureForTransitionPoint:(id)point
{
  v21 = *MEMORY[0x277D85DE8];
  pointCopy = point;
  workQueue = [(HMDHomeNaturalLightingContextUpdater *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [pointCopy hmf_numberForKey:@"ColorTemperature"];
  v7 = v6;
  if (v6 && [v6 integerValue] > 0)
  {
    v8 = +[HMDNaturalLightingCurve colorTemperatureMiredsFromKelvins:](HMDNaturalLightingCurve, "colorTemperatureMiredsFromKelvins:", [v7 integerValue]);
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543874;
      v16 = v12;
      v17 = 2112;
      v18 = pointCopy;
      v19 = 2112;
      v20 = @"ColorTemperature";
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Minimum Brightness Transition Point: %@ is missing key: %@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v8 = -1;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

- (int64_t)timeOfDayForMinimumBrightnessTransitionPoint:(id)point maximumBrighnessTransitionPoint:(id)transitionPoint
{
  v33 = *MEMORY[0x277D85DE8];
  pointCopy = point;
  transitionPointCopy = transitionPoint;
  workQueue = [(HMDHomeNaturalLightingContextUpdater *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = [(__CFString *)pointCopy hmf_numberForKey:@"TimeOfDay"];
  if (v9)
  {
    v10 = [(__CFString *)transitionPointCopy hmf_numberForKey:@"TimeOfDay"];
    if (v10)
    {
      if ([v9 isEqualToNumber:v10])
      {
        longLongValue = [v9 longLongValue];
LABEL_14:

        goto LABEL_15;
      }

      v16 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v25 = 138544130;
        v26 = v19;
        v27 = 2112;
        v28 = @"TimeOfDay";
        v29 = 2112;
        v30 = transitionPointCopy;
        v31 = 2112;
        v32 = pointCopy;
        v20 = "%{public}@Maximum Brightness Transition Point: %@ key value:%@ doesn't match Minimum Brightness Transition Point: %@";
        v21 = v18;
        v22 = 42;
        goto LABEL_12;
      }
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v25 = 138543874;
        v26 = v19;
        v27 = 2112;
        v28 = transitionPointCopy;
        v29 = 2112;
        v30 = @"TimeOfDay";
        v20 = "%{public}@Maximum Brightness Transition Point: %@ is missing key: %@";
        v21 = v18;
        v22 = 32;
LABEL_12:
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, v20, &v25, v22);
      }
    }

    objc_autoreleasePoolPop(v16);
    longLongValue = -1;
    goto LABEL_14;
  }

  v12 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = HMFGetLogIdentifier();
    v25 = 138543874;
    v26 = v15;
    v27 = 2112;
    v28 = pointCopy;
    v29 = 2112;
    v30 = @"TimeOfDay";
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Minimum Brightness Transition Point: %@ is missing key: %@", &v25, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  longLongValue = -1;
LABEL_15:

  v23 = *MEMORY[0x277D85DE8];
  return longLongValue;
}

- (id)colorTemperatureTransitionPointsForMinimumBrightnessWithEncodeNaturalLightingCurve:(id)curve
{
  v33 = *MEMORY[0x277D85DE8];
  curveCopy = curve;
  workQueue = [(HMDHomeNaturalLightingContextUpdater *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __123__HMDHomeNaturalLightingContextUpdater_colorTemperatureTransitionPointsForMinimumBrightnessWithEncodeNaturalLightingCurve___block_invoke;
  v26[3] = &unk_279733028;
  v26[4] = self;
  v6 = [curveCopy na_firstObjectPassingTest:v26];
  v7 = [v6 hmf_arrayForKey:@"ColorTemperatureTransitionPoints"];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __123__HMDHomeNaturalLightingContextUpdater_colorTemperatureTransitionPointsForMinimumBrightnessWithEncodeNaturalLightingCurve___block_invoke_40;
  v25[3] = &unk_2797333B0;
  v25[4] = self;
  v8 = [v7 na_filter:v25];

  if ([v8 count] > 2)
  {
    v14 = [v8 sortedArrayUsingComparator:&__block_literal_global_43_175994];

    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Validating minimum brightness transition points dictionary", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    if ([(HMDHomeNaturalLightingContextUpdater *)selfCopy areEncodedBrightnessLevelTransitionPointsValid:v14])
    {
      v8 = v14;
      v13 = v8;
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = selfCopy;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v28 = v22;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to validate minimum brightness transitions points dictionary", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      v13 = 0;
      v8 = v14;
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543874;
      v28 = v12;
      v29 = 2112;
      v30 = v8;
      v31 = 2048;
      v32 = 3;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Color Temperature Transition Points specified for minimum Brightness: %@ are less than %ld", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v13;
}

uint64_t __123__HMDHomeNaturalLightingContextUpdater_colorTemperatureTransitionPointsForMinimumBrightnessWithEncodeNaturalLightingCurve___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 hmf_numberForKey:@"Brightness"];
  v5 = v4;
  if (!v4)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543874;
      v15 = v11;
      v16 = 2112;
      v17 = @"Brightness";
      v18 = 2112;
      v19 = v3;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Missing %@ key in %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    goto LABEL_8;
  }

  v6 = [v4 integerValue];
  if (v6 >= [*(a1 + 32) curveMaximumBrightness] || objc_msgSend(v5, "integerValue") < 1)
  {
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  [*(a1 + 32) setCurveMinimumBrightness:{objc_msgSend(v5, "integerValue")}];
  v7 = 1;
LABEL_9:

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t __123__HMDHomeNaturalLightingContextUpdater_colorTemperatureTransitionPointsForMinimumBrightnessWithEncodeNaturalLightingCurve___block_invoke_40(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = isKindOfClass & (v3 != 0);
  if ((v5 & 1) == 0)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543874;
      v13 = v9;
      v14 = 2112;
      v15 = v3;
      v16 = 2112;
      v17 = @"ColorTemperatureTransitionPoints";
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Minimum Brightness, Object: %@ for key: %@ is not of type: NSDictionary", &v12, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t __123__HMDHomeNaturalLightingContextUpdater_colorTemperatureTransitionPointsForMinimumBrightnessWithEncodeNaturalLightingCurve___block_invoke_41(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 hmf_numberForKey:@"TimeOfDay"];
  v6 = [v4 hmf_numberForKey:@"TimeOfDay"];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)colorTemperatureTransitionPointsForMaximumBrightnessWithEncodeNaturalLightingCurve:(id)curve
{
  v33 = *MEMORY[0x277D85DE8];
  curveCopy = curve;
  workQueue = [(HMDHomeNaturalLightingContextUpdater *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __123__HMDHomeNaturalLightingContextUpdater_colorTemperatureTransitionPointsForMaximumBrightnessWithEncodeNaturalLightingCurve___block_invoke;
  v26[3] = &unk_279733028;
  v26[4] = self;
  v6 = [curveCopy na_firstObjectPassingTest:v26];
  v7 = [v6 hmf_arrayForKey:@"ColorTemperatureTransitionPoints"];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __123__HMDHomeNaturalLightingContextUpdater_colorTemperatureTransitionPointsForMaximumBrightnessWithEncodeNaturalLightingCurve___block_invoke_35;
  v25[3] = &unk_2797333B0;
  v25[4] = self;
  v8 = [v7 na_filter:v25];

  if ([v8 count] > 2)
  {
    v14 = [v8 sortedArrayUsingComparator:&__block_literal_global_39_176002];

    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Validating maximum brightness transition points dictionary", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    if ([(HMDHomeNaturalLightingContextUpdater *)selfCopy areEncodedBrightnessLevelTransitionPointsValid:v14])
    {
      v8 = v14;
      v13 = v8;
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = selfCopy;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v28 = v22;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to validate maximum brightness transitions points dictionary", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      v13 = 0;
      v8 = v14;
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543874;
      v28 = v12;
      v29 = 2112;
      v30 = v8;
      v31 = 2048;
      v32 = 3;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Color Temperature Transition Points specified for maximum Brightness: %@ are less than %ld", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v13;
}

uint64_t __123__HMDHomeNaturalLightingContextUpdater_colorTemperatureTransitionPointsForMaximumBrightnessWithEncodeNaturalLightingCurve___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 hmf_numberForKey:@"Brightness"];
  v5 = v4;
  if (!v4)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543874;
      v14 = v10;
      v15 = 2112;
      v16 = @"Brightness";
      v17 = 2112;
      v18 = v3;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Missing %@ key in Natural Lighting Curve entry: %@", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    goto LABEL_7;
  }

  if ([v4 integerValue] != 100)
  {
LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  [*(a1 + 32) setCurveMaximumBrightness:{objc_msgSend(v5, "integerValue")}];
  v6 = 1;
LABEL_8:

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t __123__HMDHomeNaturalLightingContextUpdater_colorTemperatureTransitionPointsForMaximumBrightnessWithEncodeNaturalLightingCurve___block_invoke_35(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = isKindOfClass & (v3 != 0);
  if ((v5 & 1) == 0)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543874;
      v13 = v9;
      v14 = 2112;
      v15 = v3;
      v16 = 2112;
      v17 = @"ColorTemperatureTransitionPoints";
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Maximum Brightness, Object: %@ for key: %@ is not of type: NSDictionary", &v12, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t __123__HMDHomeNaturalLightingContextUpdater_colorTemperatureTransitionPointsForMaximumBrightnessWithEncodeNaturalLightingCurve___block_invoke_36(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 hmf_numberForKey:@"TimeOfDay"];
  v6 = [v4 hmf_numberForKey:@"TimeOfDay"];

  v7 = [v5 compare:v6];
  return v7;
}

- (BOOL)areEncodedBrightnessLevelTransitionPointsValid:(id)valid
{
  v33 = *MEMORY[0x277D85DE8];
  validCopy = valid;
  workQueue = [(HMDHomeNaturalLightingContextUpdater *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  firstObject = [validCopy firstObject];
  v7 = [firstObject hmf_numberForKey:@"TimeOfDay"];
  if ([v7 isEqualToNumber:&unk_28662A370])
  {
    lastObject = [validCopy lastObject];
    v9 = [lastObject hmf_numberForKey:@"TimeOfDay"];
    if ([v9 isEqualToNumber:&unk_28662A388])
    {
      v10 = [firstObject hmf_numberForKey:@"ColorTemperature"];
      v11 = [lastObject hmf_numberForKey:@"ColorTemperature"];
      v12 = [v10 isEqualToNumber:v11];
      if ((v12 & 1) == 0)
      {
        context = objc_autoreleasePoolPush();
        selfCopy = self;
        v14 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v25 = HMFGetLogIdentifier();
          *buf = 138543874;
          v28 = v25;
          v29 = 2112;
          v30 = v10;
          v31 = 2112;
          v32 = v11;
          _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@First transition point color temperature:%@ doesn't match last transition point color temperature: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(context);
      }
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543618;
        v28 = v22;
        v29 = 2048;
        v30 = 86400000;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Last transition point time of day doesn't end at %llums", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      v12 = 0;
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v18;
      v29 = 2048;
      v30 = 0;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@First transition point doesn't begin at %llums", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v12 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)initalizeCurve
{
  v94 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDHomeNaturalLightingContextUpdater *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v89 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Initializing transitions points for the curve", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  dataSource = [(HMDHomeNaturalLightingContextUpdater *)selfCopy dataSource];
  naturalLightingCurveResourceFileContent = [dataSource naturalLightingCurveResourceFileContent];

  v10 = [naturalLightingCurveResourceFileContent hmf_arrayForKey:@"NaturalLightingCurve"];
  v11 = [v10 na_filter:&__block_literal_global_176017];

  if (!v11)
  {
    v37 = objc_autoreleasePoolPush();
    v38 = selfCopy;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = HMFGetLogIdentifier();
      *buf = 138543874;
      v89 = v40;
      v90 = 2112;
      v91 = naturalLightingCurveResourceFileContent;
      v92 = 2112;
      v93 = @"NaturalLightingCurve";
      _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_ERROR, "%{public}@Missing natural lighting curve key in resource file content %@:%@", buf, 0x20u);
    }

    goto LABEL_45;
  }

  v12 = [v11 count];
  if (v12 != 2)
  {
    v41 = v12;
    v37 = objc_autoreleasePoolPush();
    v42 = selfCopy;
    v43 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = HMFGetLogIdentifier();
      *buf = 138543874;
      v89 = v44;
      v90 = 2048;
      v91 = v41;
      v92 = 2048;
      v93 = 2;
      _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_ERROR, "%{public}@Natural Lighting Curve Brightness Level count: %lu is not equal to supported brightness level count: %lu", buf, 0x20u);
    }

LABEL_45:
    objc_autoreleasePoolPop(v37);
    goto LABEL_77;
  }

  v13 = [(HMDHomeNaturalLightingContextUpdater *)selfCopy colorTemperatureTransitionPointsForMaximumBrightnessWithEncodeNaturalLightingCurve:v11];
  if ([v13 count])
  {
    v14 = [(HMDHomeNaturalLightingContextUpdater *)selfCopy colorTemperatureTransitionPointsForMinimumBrightnessWithEncodeNaturalLightingCurve:v11];
    if ([v14 count])
    {
      v15 = [v14 count];
      if (v15 == [v13 count])
      {
        v74 = naturalLightingCurveResourceFileContent;
        array = [MEMORY[0x277CBEB18] array];
        v83 = 0u;
        v84 = 0u;
        v85 = 0u;
        v86 = 0u;
        obj = v14;
        v78 = v13;
        v75 = [obj countByEnumeratingWithState:&v83 objects:v87 count:16];
        v17 = 0;
        if (v75)
        {
          v82 = 0;
          v18 = 0;
          v19 = 0;
          v76 = *v84;
          v77 = array;
          v72 = v14;
          v73 = v11;
          while (2)
          {
            v81 = v17;
            v20 = 0;
            v21 = v18;
            do
            {
              if (*v84 != v76)
              {
                objc_enumerationMutation(obj);
              }

              v22 = *(*(&v83 + 1) + 8 * v20);
              v23 = [v13 objectAtIndex:v19];
              v24 = [(HMDHomeNaturalLightingContextUpdater *)selfCopy timeOfDayForMinimumBrightnessTransitionPoint:v22 maximumBrighnessTransitionPoint:v23];
              v80 = v23;
              if (v24 < 0)
              {
                v58 = objc_autoreleasePoolPush();
                v59 = selfCopy;
                v60 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                {
                  v61 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v89 = v61;
                  v90 = 2048;
                  v91 = v24;
                  v62 = "%{public}@Invalid time of day for transition point: %lld";
                  goto LABEL_71;
                }

                goto LABEL_72;
              }

              v25 = [(HMDHomeNaturalLightingContextUpdater *)selfCopy colorTemperatureForTransitionPoint:v22];
              if (v25 < 0)
              {
                v58 = objc_autoreleasePoolPush();
                v67 = selfCopy;
                v60 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                {
                  v61 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v89 = v61;
                  v90 = 2048;
                  v91 = v24;
                  v62 = "%{public}@Invalid minimum brightness color temperature value: %lld";
                  goto LABEL_71;
                }

                goto LABEL_72;
              }

              v26 = v25;
              v27 = [(HMDHomeNaturalLightingContextUpdater *)selfCopy colorTemperatureForTransitionPoint:v23];
              if ((v27 & 0x8000000000000000) != 0)
              {
                v58 = objc_autoreleasePoolPush();
                v68 = selfCopy;
                v60 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                {
                  v61 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v89 = v61;
                  v90 = 2048;
                  v91 = v24;
                  v62 = "%{public}@Invalid maximum brightness color temperature value: %lld";
                  goto LABEL_71;
                }

                goto LABEL_72;
              }

              v28 = v27;
              if (v26 >= v27)
              {
                v29 = v27;
              }

              else
              {
                v29 = v26;
              }

              if (v26 <= v27)
              {
                v30 = v27;
              }

              else
              {
                v30 = v26;
              }

              if (v82 >= v29)
              {
                v31 = v29;
              }

              else
              {
                v31 = v82;
              }

              if (v82)
              {
                v32 = v31;
              }

              else
              {
                v32 = v29;
              }

              if (v81 <= v30)
              {
                v33 = v30;
              }

              else
              {
                v33 = v81;
              }

              if (!v81)
              {
                v33 = v30;
              }

              v81 = v33;
              v18 = v24;
              v34 = v24 - v21;
              if (v34 < 0)
              {
                v58 = objc_autoreleasePoolPush();
                v69 = selfCopy;
                v60 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                {
                  v61 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v89 = v61;
                  v90 = 2048;
                  v91 = v18;
                  v62 = "%{public}@Target completion duration for transition point at %lld is invalid";
                  goto LABEL_71;
                }

LABEL_72:
                v11 = v73;
                naturalLightingCurveResourceFileContent = v74;
                v14 = v72;
                array = v77;

                objc_autoreleasePoolPop(v58);
                goto LABEL_73;
              }

              v82 = v32;
              if (!v34)
              {
                firstObject = [obj firstObject];

                if (v22 != firstObject)
                {
                  v58 = objc_autoreleasePoolPush();
                  v70 = selfCopy;
                  v60 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                  {
                    v61 = HMFGetLogIdentifier();
                    *buf = 138543618;
                    v89 = v61;
                    v90 = 2048;
                    v91 = v21;
                    v62 = "%{public}@Target completion duration for non-first transition point at %lld is zero.";
LABEL_71:
                    _os_log_impl(&dword_2531F8000, v60, OS_LOG_TYPE_ERROR, v62, buf, 0x16u);
                  }

                  goto LABEL_72;
                }
              }

              v36 = [MEMORY[0x277CFEAA0] transitionPointWithMinimumBrightness:-[HMDHomeNaturalLightingContextUpdater curveMinimumBrightness](selfCopy minimumBrightnessColorTemperature:"curveMinimumBrightness") maximumBrightness:v26 maximumBrightnessColorTemperature:100 targetCompletionDuration:{v28, v34}];
              [v77 addObject:v36];
              ++v19;

              ++v20;
              v21 = v18;
              v13 = v78;
            }

            while (v75 != v20);
            v14 = v72;
            v11 = v73;
            array = v77;
            v17 = v81;
            v75 = [obj countByEnumeratingWithState:&v83 objects:v87 count:16];
            if (v75)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v82 = 0;
        }

        if ([array count])
        {
          v51 = [(HMDNaturalLightingCurve *)[HMDMutableNaturalLightingCurve alloc] initWithVersion:1 transitionPoints:array minimumBrightness:[(HMDHomeNaturalLightingContextUpdater *)selfCopy curveMinimumBrightness] maximumBrightness:[(HMDHomeNaturalLightingContextUpdater *)selfCopy curveMaximumBrightness] minimumColorTemperature:v82 maximumColorTemperature:v17];
          naturalLightingCurveResourceFileContent = v74;
          v52 = [v74 hmf_numberForKey:@"ColorTemperatureValueUpdateInterval"];
          longLongValue = [v52 longLongValue];

          if (longLongValue >= 1)
          {
            [(HMDNaturalLightingCurve *)v51 setColorTemperatureUpdateIntervalInMilliseconds:longLongValue];
          }

          v54 = [v74 hmf_numberForKey:@"ColorTemperatureNotifyIntervalThreshold"];
          longLongValue2 = [v54 longLongValue];

          if (longLongValue2 >= 1)
          {
            [(HMDNaturalLightingCurve *)v51 setColorTemperatureNotifyIntervalThresholdInMilliseconds:longLongValue2];
          }

          v56 = [v74 hmf_numberForKey:@"ColorTemperatureNotifyValueChangeThreshold"];
          integerValue = [v56 integerValue];

          if (integerValue >= 1)
          {
            [(HMDNaturalLightingCurve *)v51 setColorTemperatureNotifyValueChangeThreshold:integerValue];
          }

          [(HMDHomeNaturalLightingContextUpdater *)selfCopy setCurve:v51];
          [(HMDHomeNaturalLightingContextUpdater *)selfCopy updateNaturalLightingContext];

LABEL_73:
          v13 = v78;
        }

        else
        {
          v63 = objc_autoreleasePoolPush();
          v64 = selfCopy;
          v65 = HMFGetOSLogHandle();
          naturalLightingCurveResourceFileContent = v74;
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            v66 = HMFGetLogIdentifier();
            *buf = 138543362;
            v89 = v66;
            _os_log_impl(&dword_2531F8000, v65, OS_LOG_TYPE_ERROR, "%{public}@No transition points found", buf, 0xCu);

            v13 = v78;
          }

          objc_autoreleasePoolPop(v63);
        }
      }

      else
      {
        v45 = objc_autoreleasePoolPush();
        v46 = selfCopy;
        v47 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v48 = HMFGetLogIdentifier();
          v49 = [v14 count];
          v50 = [v13 count];
          *buf = 138543874;
          v89 = v48;
          v90 = 2048;
          v91 = v49;
          v92 = 2048;
          v93 = v50;
          _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_ERROR, "%{public}@Minimum Brightness Transition Points: %lu don't match maximum Brightness Transition Points: %lu", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v45);
      }
    }
  }

LABEL_77:
  v71 = *MEMORY[0x277D85DE8];
}

uint64_t __54__HMDHomeNaturalLightingContextUpdater_initalizeCurve__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & (v2 != 0);
}

- (void)handleResidentDeviceUpdated:(id)updated
{
  workQueue = [(HMDHomeNaturalLightingContextUpdater *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HMDHomeNaturalLightingContextUpdater_handleResidentDeviceUpdated___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)configure
{
  workQueue = [(HMDHomeNaturalLightingContextUpdater *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  notificationCenter = [(HMDHomeNaturalLightingContextUpdater *)self notificationCenter];
  home = [(HMDHomeNaturalLightingContextUpdater *)self home];
  residentDeviceManager = [home residentDeviceManager];
  [notificationCenter addObserver:self selector:sel_handleResidentDeviceUpdated_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:residentDeviceManager];

  notificationCenter2 = [(HMDHomeNaturalLightingContextUpdater *)self notificationCenter];
  [notificationCenter2 addObserver:self selector:sel_handleResidentDeviceUpdated_ name:@"HMDResidentDeviceConfirmedStateChangedNotification" object:0];

  [(HMDHomeNaturalLightingContextUpdater *)self initalizeCurve];
}

- (HMDHomeNaturalLightingContextUpdater)initWithHome:(id)home workQueue:(id)queue demoModeEnabled:(BOOL)enabled logIdentifier:(id)identifier notificationCenter:(id)center dataSource:(id)source
{
  homeCopy = home;
  queueCopy = queue;
  identifierCopy = identifier;
  centerCopy = center;
  sourceCopy = source;
  v24.receiver = self;
  v24.super_class = HMDHomeNaturalLightingContextUpdater;
  v19 = [(HMDHomeNaturalLightingContextUpdater *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeWeak(&v19->_home, homeCopy);
    objc_storeStrong(&v20->_workQueue, queue);
    objc_storeStrong(&v20->_dataSource, source);
    v21 = [identifierCopy copy];
    logIdentifier = v20->_logIdentifier;
    v20->_logIdentifier = v21;

    objc_storeStrong(&v20->_notificationCenter, center);
    v20->_demoModeEnabled = enabled;
  }

  return v20;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t36_176040 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t36_176040, &__block_literal_global_52_176041);
  }

  v3 = logCategory__hmf_once_v37_176042;

  return v3;
}

uint64_t __51__HMDHomeNaturalLightingContextUpdater_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v37_176042;
  logCategory__hmf_once_v37_176042 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end