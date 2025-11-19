@interface HAPCharacteristicValueTransitionControllerContext(NaturalLighting)
- (BOOL)isNaturalLightingEnabled;
- (HMDNaturalLightingActiveTransitionContext)activeTransitionContext;
@end

@implementation HAPCharacteristicValueTransitionControllerContext(NaturalLighting)

- (HMDNaturalLightingActiveTransitionContext)activeTransitionContext
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [a1 identifier];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAD78] hmf_UUIDWithBytesAsData:v2];
    v4 = v3;
    if (v3 && ([v3 UUIDString], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", @"C4F33DA9-63C9-4C0F-8B89-6C36A33EEF9E"), v5, v6))
    {
      v7 = [a1 startTime];
      v8 = [v7 value];

      if (v8)
      {
        v9 = MEMORY[0x277CBEAA8];
        [v8 doubleValue];
        v11 = [v9 dateWithTimeIntervalSinceReferenceDate:v10 / 1000.0];
        v12 = [a1 transitionChecksum];
        v13 = [v12 value];

        v14 = [[HMDNaturalLightingActiveTransitionContext alloc] initWithStartDate:v11 millisecondsElapsedSinceStartDate:0 transitionChecksum:v13];
      }

      else
      {
        v15 = objc_autoreleasePoolPush();
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = HMFGetLogIdentifier();
          v20 = 138543618;
          v21 = v17;
          v22 = 2112;
          v23 = a1;
          _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Start time missing in the controller context %@", &v20, 0x16u);
        }

        objc_autoreleasePoolPop(v15);
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)isNaturalLightingEnabled
{
  v1 = [a1 activeTransitionContext];
  v2 = v1 != 0;

  return v2;
}

@end