@interface HAPCharacteristicValueTransition(NaturalLighting)
+ (BOOL)canCoalesceTransitionPoint1:()NaturalLighting transitionPoint2:ofCurve:;
+ (id)naturalLightingValueTransitionWithLightProfile:()NaturalLighting naturalLightingEnabled:startDate:dataSource:;
+ (id)transitionPointsByCoalescingTransitionPoints:()NaturalLighting ofCurve:;
+ (uint64_t)updateTransition:()NaturalLighting withCurve:brightnessCharacteristic:millisecondsElapsedSinceStartOfDay:transitionStartTimeInMilliseconds:;
- (HMDNaturalLightingActiveTransitionContext)naturalLightingActiveTransitionContextForCharacteristic:()NaturalLighting;
- (id)naturalLightingActiveTransitionContextLightProfile:()NaturalLighting;
@end

@implementation HAPCharacteristicValueTransition(NaturalLighting)

- (id)naturalLightingActiveTransitionContextLightProfile:()NaturalLighting
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 service];
  v6 = *MEMORY[0x277CCF7D8];
  v7 = [v5 findCharacteristicWithType:*MEMORY[0x277CCF7D8]];
  if (v7)
  {
    v8 = [a1 naturalLightingActiveTransitionContextForCharacteristic:v7];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = a1;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543874;
      v16 = v12;
      v17 = 2112;
      v18 = v5;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Service doesn't support Color Temperature Characteristic %@:%@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v8 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

- (HMDNaturalLightingActiveTransitionContext)naturalLightingActiveTransitionContextForCharacteristic:()NaturalLighting
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 controllerContext];
  if (v5 || ([a1 endBehavior], (v5 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(a1, "linearTransition"), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v26 = [a1 linearDerivedTransition];

    if (!v26)
    {
      goto LABEL_20;
    }
  }

  v6 = [a1 linearDerivedTransition];
  v7 = [v6 transitionPoints];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [a1 controllerContext];
    v29 = 0;
    v10 = [MEMORY[0x277CFEAC8] parsedFromData:v9 error:&v29];
    v11 = v29;
    if (!v10)
    {
      v20 = objc_autoreleasePoolPush();
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543874;
        v31 = v22;
        v32 = 2112;
        v33 = v9;
        v34 = 2112;
        v35 = v11;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode controller context %@:%@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v20);
      v19 = 0;
      goto LABEL_18;
    }

    v12 = [v10 startTime];
    v13 = [v12 value];

    if (v13)
    {
      if ([v10 isNaturalLightingEnabled])
      {
        v14 = MEMORY[0x277CBEAA8];
        [v13 doubleValue];
        v16 = [v14 dateWithTimeIntervalSinceReferenceDate:v15 / 1000.0];
        v17 = [v10 transitionChecksum];
        v18 = [v17 value];

        v19 = [[HMDNaturalLightingActiveTransitionContext alloc] initWithStartDate:v16 millisecondsElapsedSinceStartDate:0 transitionChecksum:v18];
LABEL_17:

LABEL_18:
        goto LABEL_21;
      }
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543618;
        v31 = v25;
        v32 = 2112;
        v33 = v10;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Start time missing in the controller context %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
    }

    v19 = 0;
    goto LABEL_17;
  }

LABEL_20:
  v19 = 0;
LABEL_21:

  v27 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (BOOL)canCoalesceTransitionPoint1:()NaturalLighting transitionPoint2:ofCurve:
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 colorTemperatureForBrightness:{objc_msgSend(v9, "minimumBrightness")}];
  if (v10 == [v8 colorTemperatureForBrightness:{objc_msgSend(v9, "minimumBrightness")}])
  {
    v11 = [v7 colorTemperatureForBrightness:{objc_msgSend(v9, "maximumBrightness")}];
    v12 = v11 == [v8 colorTemperatureForBrightness:{objc_msgSend(v9, "maximumBrightness")}];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (uint64_t)updateTransition:()NaturalLighting withCurve:brightnessCharacteristic:millisecondsElapsedSinceStartOfDay:transitionStartTimeInMilliseconds:
{
  v78[2] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v67 = a5;
  v13 = [objc_alloc(MEMORY[0x277CFEAD0]) initWithValue:1];
  v14 = objc_alloc(MEMORY[0x277CFEC98]);
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a7];
  v16 = [v14 initWithValue:v15];

  v78[0] = 0;
  v78[1] = 0;
  v65 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"C4F33DA9-63C9-4C0F-8B89-6C36A33EEF9E"];
  [v65 getUUIDBytes:v78];
  v17 = [MEMORY[0x277CBEA90] dataWithBytes:v78 length:16];
  v18 = objc_alloc(MEMORY[0x277CFEAC8]);
  v19 = objc_alloc(MEMORY[0x277CFEC98]);
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v12, "checksum")}];
  v21 = [v19 initWithValue:v20];
  v64 = v17;
  v66 = v16;
  v22 = [v18 initWithIdentifier:v17 startTime:v16 transitionChecksum:v21];

  v69 = 0;
  v23 = [v22 serializeWithError:&v69];
  v24 = v69;
  v25 = v24;
  if (v23)
  {
    v60 = v22;
    v61 = v24;
    [v11 setControllerContext:v23];
    v62 = v11;
    [v11 setEndBehavior:v13];
    v26 = [v12 transitionPointsWithMillisecondsElapsedSinceStartOfDay:a6];
    v27 = [v26 hmf_isEmpty];
    v28 = v13;
    if (v27)
    {
      v29 = objc_autoreleasePoolPush();
      v30 = a1;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v32 = v27;
        v34 = v33 = v28;
        *buf = 138543618;
        v71 = v34;
        v72 = 2112;
        v73 = v26;
        _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@No transition points found: %@", buf, 0x16u);

        v28 = v33;
        v27 = v32;
      }

      objc_autoreleasePoolPop(v29);
      v11 = v62;
      v35 = v67;
    }

    else
    {
      v42 = a6;
      v59 = v28;
      v43 = [objc_opt_class() transitionPointsByCoalescingTransitionPoints:v26 ofCurve:v12];

      v44 = objc_autoreleasePoolPush();
      v45 = a1;
      v46 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        v47 = HMFGetLogIdentifier();
        v48 = [v43 count];
        v49 = [v43 firstObject];
        *buf = 138544130;
        v71 = v47;
        v72 = 2048;
        v73 = v48;
        v74 = 2112;
        v75 = v49;
        v76 = 2048;
        v77 = v42;
        _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_INFO, "%{public}@Sending coalesced transition points to accessory, transition points count: %lu, start transition point: %@, time elapsed since start of the day: %llums", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v44);
      *buf = [v12 minimumBrightness];
      v50 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:4];
      v68 = [v12 maximumBrightness];
      v51 = [MEMORY[0x277CBEA90] dataWithBytes:&v68 length:4];
      v52 = [objc_alloc(MEMORY[0x277CFEAA8]) initWithLowerBound:v50 upperBound:v51];
      v53 = objc_alloc(MEMORY[0x277CFEC98]);
      v35 = v67;
      v54 = [v67 instanceID];
      v55 = [v53 initWithValue:v54];

      v56 = [objc_alloc(MEMORY[0x277CFEA98]) initWithTransitionPoints:v43 sourceHAPInstanceID:v55 sourceValueRange:v52];
      v11 = v62;
      [v62 setLinearDerivedTransition:v56];

      v26 = v43;
      v28 = v59;
      v27 = 0;
    }

    v22 = v60;
    v41 = v27 ^ 1u;

    v25 = v61;
  }

  else
  {
    v28 = v13;
    v36 = objc_autoreleasePoolPush();
    v37 = a1;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v40 = v39 = v25;
      *buf = 138543874;
      v71 = v40;
      v72 = 2112;
      v73 = v22;
      v74 = 2112;
      v75 = v39;
      _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize controller context %@:%@", buf, 0x20u);

      v25 = v39;
    }

    objc_autoreleasePoolPop(v36);
    v41 = 0;
    v35 = v67;
  }

  v57 = *MEMORY[0x277D85DE8];
  return v41;
}

+ (id)transitionPointsByCoalescingTransitionPoints:()NaturalLighting ofCurve:
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v40 = a4;
  v41 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  if ([v5 count] == 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v10 = 0;
    v8 = 0;
    v11 = 0;
    v12 = 0;
    *&v6 = 138544386;
    v38 = v6;
    v39 = v5;
    do
    {
      v9 = [v5 objectAtIndex:{v12, v38}];
      if (v10 && [a1 canCoalesceTransitionPoint1:v9 transitionPoint2:v10 ofCurve:v40])
      {
        v13 = [v9 targetCompletionDuration];
        v14 = [v13 value];
        v15 = [v14 unsignedLongLongValue];

        v16 = objc_autoreleasePoolPush();
        v17 = a1;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          HMFGetLogIdentifier();
          v20 = v19 = v8;
          *buf = v38;
          v44 = v20;
          v45 = 2112;
          v46 = v9;
          v47 = 2048;
          v48 = v12 + 1;
          v49 = 2112;
          v50 = v10;
          v51 = 2048;
          v52 = v12;
          _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Coalescing transition point: %@ at index: %lu with transition point: %@ at index: %lu", buf, 0x34u);

          v8 = v19;
          v5 = v39;
        }

        v8 += v15;

        objc_autoreleasePoolPop(v16);
        v21 = v9;

        v7 = v21;
      }

      else
      {
        v22 = v9;
        v23 = v22;
        if (v11)
        {
          v24 = [v22 copy];

          v25 = objc_alloc(MEMORY[0x277CFEC98]);
          v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v8];
          v27 = [v25 initWithValue:v26];
          [v24 setStartDelayDuration:v27];

          v8 = 0;
          v11 = v24;
        }

        else
        {
          v11 = v22;
        }

        [v41 addObject:v11];
        v28 = v23;

        v7 = 0;
      }

      ++v12;
      v10 = v9;
      v11 = v7;
    }

    while (v12 < [v5 count] - 1);
  }

  v29 = [v5 lastObject];
  v30 = v29;
  if (v7)
  {
    v31 = [v29 copy];

    v32 = objc_alloc(MEMORY[0x277CFEC98]);
    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v8];
    v34 = [v32 initWithValue:v33];
    [v31 setStartDelayDuration:v34];

    v30 = v31;
  }

  [v41 addObject:v30];
  v35 = [v41 copy];

  v36 = *MEMORY[0x277D85DE8];

  return v35;
}

+ (id)naturalLightingValueTransitionWithLightProfile:()NaturalLighting naturalLightingEnabled:startDate:dataSource:
{
  v78 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [v10 accessory];
  v14 = [v13 home];
  v15 = [v14 naturalLightingContext];

  v16 = [v15 timeZone];
  if (!v16)
  {
    v41 = objc_autoreleasePoolPush();
    v42 = a1;
    v43 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = HMFGetLogIdentifier();
      *buf = 138543618;
      v73 = v44;
      v74 = 2112;
      v75 = v15;
      v45 = "%{public}@Time zone missing in natural lighting context: %@";
LABEL_20:
      _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_ERROR, v45, buf, 0x16u);
    }

LABEL_21:

    objc_autoreleasePoolPop(v41);
    v39 = 0;
    goto LABEL_38;
  }

  [v11 timeIntervalSinceReferenceDate];
  v18 = (v17 * 1000.0);
  if (v18 <= 0)
  {
    v41 = objc_autoreleasePoolPush();
    v42 = a1;
    v43 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = HMFGetLogIdentifier();
      *buf = 138543618;
      v73 = v44;
      v74 = 2112;
      v75 = v11;
      v45 = "%{public}@Date is initialized in the past: %@";
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v19 = [v12 millisecondsElapsedSinceStartOfDayWithDate:v11 timeZone:v16];
  v71 = [v10 naturalLightingCurve];
  if (!v71)
  {
    v46 = objc_autoreleasePoolPush();
    v47 = a1;
    v48 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = HMFGetLogIdentifier();
      *buf = 138543874;
      v73 = v49;
      v74 = 2112;
      v75 = 0;
      v76 = 2112;
      v77 = v10;
      _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_ERROR, "%{public}@Natural lighting curve is not set on light profile %@:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v46);
    v39 = 0;
    v29 = 0;
    goto LABEL_37;
  }

  v69 = v11;
  v20 = [v10 service];
  v21 = *MEMORY[0x277CCF7D8];
  v70 = [v20 findCharacteristicWithType:*MEMORY[0x277CCF7D8]];
  if (!v70)
  {
    v50 = objc_autoreleasePoolPush();
    v51 = a1;
    v52 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      v53 = HMFGetLogIdentifier();
      *buf = 138543874;
      v73 = v53;
      v74 = 2112;
      v75 = v20;
      v76 = 2112;
      v77 = v21;
      _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_ERROR, "%{public}@Service doesn't support Color Temperature Characteristic %@:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v50);
    v39 = 0;
    v29 = v71;
    goto LABEL_36;
  }

  v22 = *MEMORY[0x277CCF788];
  v68 = v20;
  v23 = [v20 findCharacteristicWithType:*MEMORY[0x277CCF788]];
  v67 = v23;
  if (!v23)
  {
    v54 = objc_autoreleasePoolPush();
    v55 = a1;
    v56 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      v57 = HMFGetLogIdentifier();
      *buf = 138543874;
      v73 = v57;
      v74 = 2112;
      v75 = v20;
      v76 = 2112;
      v77 = v22;
      _os_log_impl(&dword_229538000, v56, OS_LOG_TYPE_ERROR, "%{public}@Service doesn't support brightness Characteristic %@:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v54);
    v39 = 0;
    v29 = v71;
    goto LABEL_35;
  }

  v24 = v23;
  v66 = v12;
  v25 = objc_alloc(MEMORY[0x277CFEC98]);
  v26 = [v70 instanceID];
  v27 = [v25 initWithValue:v26];

  v28 = objc_alloc_init(MEMORY[0x277CFEAB0]);
  [v28 setHAPInstanceID:v27];
  if (a4)
  {
    v65 = v28;
    v29 = v71;
    if (([objc_opt_class() updateTransition:v28 withCurve:v71 brightnessCharacteristic:v24 millisecondsElapsedSinceStartOfDay:v19 transitionStartTimeInMilliseconds:v18] & 1) == 0)
    {
      v64 = v27;
      v58 = objc_autoreleasePoolPush();
      v59 = a1;
      v60 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        v61 = HMFGetLogIdentifier();
        *buf = 138543362;
        v73 = v61;
        _os_log_impl(&dword_229538000, v60, OS_LOG_TYPE_ERROR, "%{public}@Failed to update transition with Natural Lighting Curve", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v58);
      v39 = 0;
      v40 = v65;
      v12 = v66;
      v27 = v64;
      goto LABEL_34;
    }

    if ([v71 colorTemperatureNotifyIntervalThresholdInMilliseconds])
    {
      v30 = objc_alloc(MEMORY[0x277CFEC98]);
      v31 = v27;
      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v71, "colorTemperatureNotifyIntervalThresholdInMilliseconds")}];
      v33 = [v30 initWithValue:v32];
      [v65 setNotifyTimeIntervalThreshold:v33];

      v27 = v31;
    }

    if ([v71 colorTemperatureUpdateIntervalInMilliseconds])
    {
      v34 = objc_alloc(MEMORY[0x277CFEC98]);
      v35 = v27;
      v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v71, "colorTemperatureUpdateIntervalInMilliseconds")}];
      v37 = [v34 initWithValue:v36];
      [v65 setValueUpdateTimeInterval:v37];

      v27 = v35;
    }

    *buf = [v71 colorTemperatureNotifyValueChangeThreshold];
    if (*buf >= 1)
    {
      v38 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:4];
      [v65 setNotifyValueChangeThreshold:v38];
    }

    v28 = v65;
  }

  v39 = v28;
  v40 = v28;
  v12 = v66;
  v29 = v71;
LABEL_34:

LABEL_35:
  v20 = v68;

LABEL_36:
  v11 = v69;
LABEL_37:

LABEL_38:
  v62 = *MEMORY[0x277D85DE8];

  return v39;
}

@end