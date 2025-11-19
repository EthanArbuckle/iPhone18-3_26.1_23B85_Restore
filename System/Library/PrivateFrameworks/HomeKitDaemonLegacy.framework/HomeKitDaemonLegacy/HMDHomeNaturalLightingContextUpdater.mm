@interface HMDHomeNaturalLightingContextUpdater
+ (id)logCategory;
- (BOOL)areEncodedBrightnessLevelTransitionPointsValid:(id)a3;
- (HMDHome)home;
- (HMDHomeNaturalLightingContextUpdater)initWithHome:(id)a3 workQueue:(id)a4 demoModeEnabled:(BOOL)a5 logIdentifier:(id)a6 notificationCenter:(id)a7 dataSource:(id)a8;
- (id)colorTemperatureTransitionPointsForMaximumBrightnessWithEncodeNaturalLightingCurve:(id)a3;
- (id)colorTemperatureTransitionPointsForMinimumBrightnessWithEncodeNaturalLightingCurve:(id)a3;
- (int64_t)colorTemperatureForTransitionPoint:(id)a3;
- (int64_t)timeOfDayForMinimumBrightnessTransitionPoint:(id)a3 maximumBrighnessTransitionPoint:(id)a4;
- (void)configure;
- (void)handleResidentDeviceUpdated:(id)a3;
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
  v3 = [(HMDHomeNaturalLightingContextUpdater *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDHomeNaturalLightingContextUpdater *)self home];
  v5 = v4;
  if (!v4)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
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

  v6 = [v4 isCurrentDeviceConfirmedPrimaryResident];
  v7 = [(HMDHomeNaturalLightingContextUpdater *)self isDemoModeEnabled];
  if ((v6 & 1) == 0 && !v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
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

  v14 = [(HMDHomeNaturalLightingContextUpdater *)self curve];
  if (v14)
  {
    v15 = [HMDNaturalLightingContext alloc];
    v16 = [(HMDHomeNaturalLightingContextUpdater *)self dataSource];
    v17 = [v16 localTimeZone];
    v18 = [(HMDNaturalLightingContext *)v15 initWithCurve:v14 timeZone:v17];
  }

  else
  {
    v18 = 0;
  }

  v19 = [v5 naturalLightingContext];
  v20 = [(HMDNaturalLightingContext *)v19 isEqual:v18];
  v21 = objc_autoreleasePoolPush();
  v22 = self;
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
      v39 = v19;
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
    v28 = [v5 uuid];
    v29 = [v5 homeManager];
    v30 = [v29 uuid];
    v31 = [(HMDBackingStoreModelObject *)v27 initWithObjectChangeType:2 uuid:v28 parentUUID:v30];

    [(HMDHomeModel *)v31 setNaturalLightingContext:v18];
    v32 = [v5 backingStore];
    v33 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v34 = [v32 transaction:@"Updating natural lighting context" options:v33];

    [v34 add:v31];
    [v34 run];
  }

LABEL_21:
  v35 = *MEMORY[0x277D85DE8];
}

- (int64_t)colorTemperatureForTransitionPoint:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeNaturalLightingContextUpdater *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 hmf_numberForKey:@"ColorTemperature"];
  v7 = v6;
  if (v6 && [v6 integerValue] > 0)
  {
    v8 = +[HMDNaturalLightingCurve colorTemperatureMiredsFromKelvins:](HMDNaturalLightingCurve, "colorTemperatureMiredsFromKelvins:", [v7 integerValue]);
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543874;
      v16 = v12;
      v17 = 2112;
      v18 = v4;
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

- (int64_t)timeOfDayForMinimumBrightnessTransitionPoint:(id)a3 maximumBrighnessTransitionPoint:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeNaturalLightingContextUpdater *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(__CFString *)v6 hmf_numberForKey:@"TimeOfDay"];
  if (v9)
  {
    v10 = [(__CFString *)v7 hmf_numberForKey:@"TimeOfDay"];
    if (v10)
    {
      if ([v9 isEqualToNumber:v10])
      {
        v11 = [v9 longLongValue];
LABEL_14:

        goto LABEL_15;
      }

      v16 = objc_autoreleasePoolPush();
      v17 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v25 = 138544130;
        v26 = v19;
        v27 = 2112;
        v28 = @"TimeOfDay";
        v29 = 2112;
        v30 = v7;
        v31 = 2112;
        v32 = v6;
        v20 = "%{public}@Maximum Brightness Transition Point: %@ key value:%@ doesn't match Minimum Brightness Transition Point: %@";
        v21 = v18;
        v22 = 42;
        goto LABEL_12;
      }
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v17 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v25 = 138543874;
        v26 = v19;
        v27 = 2112;
        v28 = v7;
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
    v11 = -1;
    goto LABEL_14;
  }

  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = HMFGetLogIdentifier();
    v25 = 138543874;
    v26 = v15;
    v27 = 2112;
    v28 = v6;
    v29 = 2112;
    v30 = @"TimeOfDay";
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Minimum Brightness Transition Point: %@ is missing key: %@", &v25, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  v11 = -1;
LABEL_15:

  v23 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)colorTemperatureTransitionPointsForMinimumBrightnessWithEncodeNaturalLightingCurve:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeNaturalLightingContextUpdater *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __123__HMDHomeNaturalLightingContextUpdater_colorTemperatureTransitionPointsForMinimumBrightnessWithEncodeNaturalLightingCurve___block_invoke;
  v26[3] = &unk_279733028;
  v26[4] = self;
  v6 = [v4 na_firstObjectPassingTest:v26];
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
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Validating minimum brightness transition points dictionary", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    if ([(HMDHomeNaturalLightingContextUpdater *)v16 areEncodedBrightnessLevelTransitionPointsValid:v14])
    {
      v8 = v14;
      v13 = v8;
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = v16;
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
    v10 = self;
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

- (id)colorTemperatureTransitionPointsForMaximumBrightnessWithEncodeNaturalLightingCurve:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeNaturalLightingContextUpdater *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __123__HMDHomeNaturalLightingContextUpdater_colorTemperatureTransitionPointsForMaximumBrightnessWithEncodeNaturalLightingCurve___block_invoke;
  v26[3] = &unk_279733028;
  v26[4] = self;
  v6 = [v4 na_firstObjectPassingTest:v26];
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
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Validating maximum brightness transition points dictionary", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    if ([(HMDHomeNaturalLightingContextUpdater *)v16 areEncodedBrightnessLevelTransitionPointsValid:v14])
    {
      v8 = v14;
      v13 = v8;
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = v16;
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
    v10 = self;
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

- (BOOL)areEncodedBrightnessLevelTransitionPointsValid:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeNaturalLightingContextUpdater *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 firstObject];
  v7 = [v6 hmf_numberForKey:@"TimeOfDay"];
  if ([v7 isEqualToNumber:&unk_28662A370])
  {
    v8 = [v4 lastObject];
    v9 = [v8 hmf_numberForKey:@"TimeOfDay"];
    if ([v9 isEqualToNumber:&unk_28662A388])
    {
      v10 = [v6 hmf_numberForKey:@"ColorTemperature"];
      v11 = [v8 hmf_numberForKey:@"ColorTemperature"];
      v12 = [v10 isEqualToNumber:v11];
      if ((v12 & 1) == 0)
      {
        context = objc_autoreleasePoolPush();
        v13 = self;
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
      v20 = self;
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
    v16 = self;
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
  v3 = [(HMDHomeNaturalLightingContextUpdater *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v89 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Initializing transitions points for the curve", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [(HMDHomeNaturalLightingContextUpdater *)v5 dataSource];
  v9 = [v8 naturalLightingCurveResourceFileContent];

  v10 = [v9 hmf_arrayForKey:@"NaturalLightingCurve"];
  v11 = [v10 na_filter:&__block_literal_global_176017];

  if (!v11)
  {
    v37 = objc_autoreleasePoolPush();
    v38 = v5;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = HMFGetLogIdentifier();
      *buf = 138543874;
      v89 = v40;
      v90 = 2112;
      v91 = v9;
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
    v42 = v5;
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

  v13 = [(HMDHomeNaturalLightingContextUpdater *)v5 colorTemperatureTransitionPointsForMaximumBrightnessWithEncodeNaturalLightingCurve:v11];
  if ([v13 count])
  {
    v14 = [(HMDHomeNaturalLightingContextUpdater *)v5 colorTemperatureTransitionPointsForMinimumBrightnessWithEncodeNaturalLightingCurve:v11];
    if ([v14 count])
    {
      v15 = [v14 count];
      if (v15 == [v13 count])
      {
        v74 = v9;
        v16 = [MEMORY[0x277CBEB18] array];
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
          v77 = v16;
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
              v24 = [(HMDHomeNaturalLightingContextUpdater *)v5 timeOfDayForMinimumBrightnessTransitionPoint:v22 maximumBrighnessTransitionPoint:v23];
              v80 = v23;
              if (v24 < 0)
              {
                v58 = objc_autoreleasePoolPush();
                v59 = v5;
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

              v25 = [(HMDHomeNaturalLightingContextUpdater *)v5 colorTemperatureForTransitionPoint:v22];
              if (v25 < 0)
              {
                v58 = objc_autoreleasePoolPush();
                v67 = v5;
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
              v27 = [(HMDHomeNaturalLightingContextUpdater *)v5 colorTemperatureForTransitionPoint:v23];
              if ((v27 & 0x8000000000000000) != 0)
              {
                v58 = objc_autoreleasePoolPush();
                v68 = v5;
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
                v69 = v5;
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
                v9 = v74;
                v14 = v72;
                v16 = v77;

                objc_autoreleasePoolPop(v58);
                goto LABEL_73;
              }

              v82 = v32;
              if (!v34)
              {
                v35 = [obj firstObject];

                if (v22 != v35)
                {
                  v58 = objc_autoreleasePoolPush();
                  v70 = v5;
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

              v36 = [MEMORY[0x277CFEAA0] transitionPointWithMinimumBrightness:-[HMDHomeNaturalLightingContextUpdater curveMinimumBrightness](v5 minimumBrightnessColorTemperature:"curveMinimumBrightness") maximumBrightness:v26 maximumBrightnessColorTemperature:100 targetCompletionDuration:{v28, v34}];
              [v77 addObject:v36];
              ++v19;

              ++v20;
              v21 = v18;
              v13 = v78;
            }

            while (v75 != v20);
            v14 = v72;
            v11 = v73;
            v16 = v77;
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

        if ([v16 count])
        {
          v51 = [(HMDNaturalLightingCurve *)[HMDMutableNaturalLightingCurve alloc] initWithVersion:1 transitionPoints:v16 minimumBrightness:[(HMDHomeNaturalLightingContextUpdater *)v5 curveMinimumBrightness] maximumBrightness:[(HMDHomeNaturalLightingContextUpdater *)v5 curveMaximumBrightness] minimumColorTemperature:v82 maximumColorTemperature:v17];
          v9 = v74;
          v52 = [v74 hmf_numberForKey:@"ColorTemperatureValueUpdateInterval"];
          v53 = [v52 longLongValue];

          if (v53 >= 1)
          {
            [(HMDNaturalLightingCurve *)v51 setColorTemperatureUpdateIntervalInMilliseconds:v53];
          }

          v54 = [v74 hmf_numberForKey:@"ColorTemperatureNotifyIntervalThreshold"];
          v55 = [v54 longLongValue];

          if (v55 >= 1)
          {
            [(HMDNaturalLightingCurve *)v51 setColorTemperatureNotifyIntervalThresholdInMilliseconds:v55];
          }

          v56 = [v74 hmf_numberForKey:@"ColorTemperatureNotifyValueChangeThreshold"];
          v57 = [v56 integerValue];

          if (v57 >= 1)
          {
            [(HMDNaturalLightingCurve *)v51 setColorTemperatureNotifyValueChangeThreshold:v57];
          }

          [(HMDHomeNaturalLightingContextUpdater *)v5 setCurve:v51];
          [(HMDHomeNaturalLightingContextUpdater *)v5 updateNaturalLightingContext];

LABEL_73:
          v13 = v78;
        }

        else
        {
          v63 = objc_autoreleasePoolPush();
          v64 = v5;
          v65 = HMFGetOSLogHandle();
          v9 = v74;
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
        v46 = v5;
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

- (void)handleResidentDeviceUpdated:(id)a3
{
  v4 = [(HMDHomeNaturalLightingContextUpdater *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HMDHomeNaturalLightingContextUpdater_handleResidentDeviceUpdated___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)configure
{
  v3 = [(HMDHomeNaturalLightingContextUpdater *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDHomeNaturalLightingContextUpdater *)self notificationCenter];
  v5 = [(HMDHomeNaturalLightingContextUpdater *)self home];
  v6 = [v5 residentDeviceManager];
  [v4 addObserver:self selector:sel_handleResidentDeviceUpdated_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:v6];

  v7 = [(HMDHomeNaturalLightingContextUpdater *)self notificationCenter];
  [v7 addObserver:self selector:sel_handleResidentDeviceUpdated_ name:@"HMDResidentDeviceConfirmedStateChangedNotification" object:0];

  [(HMDHomeNaturalLightingContextUpdater *)self initalizeCurve];
}

- (HMDHomeNaturalLightingContextUpdater)initWithHome:(id)a3 workQueue:(id)a4 demoModeEnabled:(BOOL)a5 logIdentifier:(id)a6 notificationCenter:(id)a7 dataSource:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v24.receiver = self;
  v24.super_class = HMDHomeNaturalLightingContextUpdater;
  v19 = [(HMDHomeNaturalLightingContextUpdater *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeWeak(&v19->_home, v14);
    objc_storeStrong(&v20->_workQueue, a4);
    objc_storeStrong(&v20->_dataSource, a8);
    v21 = [v16 copy];
    logIdentifier = v20->_logIdentifier;
    v20->_logIdentifier = v21;

    objc_storeStrong(&v20->_notificationCenter, a7);
    v20->_demoModeEnabled = a5;
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