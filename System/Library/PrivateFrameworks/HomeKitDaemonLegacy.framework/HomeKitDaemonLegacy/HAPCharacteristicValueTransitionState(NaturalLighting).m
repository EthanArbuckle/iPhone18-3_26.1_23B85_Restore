@interface HAPCharacteristicValueTransitionState(NaturalLighting)
- (HMDNaturalLightingActiveTransitionContext)naturalLightingActiveTransitionContextForCharacteristic:()NaturalLighting;
- (uint64_t)isNaturalLightingEnabledForCharacteristic:()NaturalLighting;
@end

@implementation HAPCharacteristicValueTransitionState(NaturalLighting)

- (HMDNaturalLightingActiveTransitionContext)naturalLightingActiveTransitionContextForCharacteristic:()NaturalLighting
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__18677;
  v37 = __Block_byref_object_dispose__18678;
  v38 = 0;
  v5 = [a1 activeTransitionContexts];
  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = __114__HAPCharacteristicValueTransitionState_NaturalLighting__naturalLightingActiveTransitionContextForCharacteristic___block_invoke;
  v30 = &unk_279723A08;
  v32 = &v33;
  v6 = v4;
  v31 = v6;
  v7 = [v5 na_firstObjectPassingTest:&v27];

  if (v7)
  {
    v8 = [v7 timeElapsedSinceStart];
    v9 = [v8 value];

    if (v9)
    {
      v10 = [v34[5] startTime];
      v11 = [v10 value];

      if (v11)
      {
        v12 = MEMORY[0x277CBEAA8];
        [v11 doubleValue];
        v14 = [v12 dateWithTimeIntervalSinceReferenceDate:v13 / 1000.0];
        v15 = [v34[5] transitionChecksum];
        v16 = [v15 value];

        v17 = -[HMDNaturalLightingActiveTransitionContext initWithStartDate:millisecondsElapsedSinceStartDate:transitionChecksum:]([HMDNaturalLightingActiveTransitionContext alloc], "initWithStartDate:millisecondsElapsedSinceStartDate:transitionChecksum:", v14, [v9 unsignedLongLongValue], v16);
      }

      else
      {
        v21 = objc_autoreleasePoolPush();
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = HMFGetLogIdentifier();
          v24 = v34[5];
          *buf = 138543618;
          v40 = v23;
          v41 = 2112;
          v42 = v24;
          _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Start time missing in the controller context %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v21);
        v17 = 0;
      }
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543618;
        v40 = v20;
        v41 = 2112;
        v42 = v7;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Time elapsed since start is missing in the active transition context %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  _Block_object_dispose(&v33, 8);
  v25 = *MEMORY[0x277D85DE8];

  return v17;
}

- (uint64_t)isNaturalLightingEnabledForCharacteristic:()NaturalLighting
{
  v4 = a3;
  v5 = [a1 activeTransitionContexts];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __100__HAPCharacteristicValueTransitionState_NaturalLighting__isNaturalLightingEnabledForCharacteristic___block_invoke;
  v9[3] = &unk_2797239E0;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_any:v9];

  return v7;
}

@end