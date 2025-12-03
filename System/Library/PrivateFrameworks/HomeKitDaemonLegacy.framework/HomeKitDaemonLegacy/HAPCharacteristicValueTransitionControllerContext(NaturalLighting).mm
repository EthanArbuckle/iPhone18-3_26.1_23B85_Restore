@interface HAPCharacteristicValueTransitionControllerContext(NaturalLighting)
- (BOOL)isNaturalLightingEnabled;
- (HMDNaturalLightingActiveTransitionContext)activeTransitionContext;
@end

@implementation HAPCharacteristicValueTransitionControllerContext(NaturalLighting)

- (HMDNaturalLightingActiveTransitionContext)activeTransitionContext
{
  v24 = *MEMORY[0x277D85DE8];
  identifier = [self identifier];
  if (identifier)
  {
    v3 = [MEMORY[0x277CCAD78] hmf_UUIDWithBytesAsData:identifier];
    v4 = v3;
    if (v3 && ([v3 UUIDString], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", @"C4F33DA9-63C9-4C0F-8B89-6C36A33EEF9E"), v5, v6))
    {
      startTime = [self startTime];
      value = [startTime value];

      if (value)
      {
        v9 = MEMORY[0x277CBEAA8];
        [value doubleValue];
        v11 = [v9 dateWithTimeIntervalSinceReferenceDate:v10 / 1000.0];
        transitionChecksum = [self transitionChecksum];
        value2 = [transitionChecksum value];

        v14 = [[HMDNaturalLightingActiveTransitionContext alloc] initWithStartDate:v11 millisecondsElapsedSinceStartDate:0 transitionChecksum:value2];
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
          selfCopy = self;
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
  activeTransitionContext = [self activeTransitionContext];
  v2 = activeTransitionContext != 0;

  return v2;
}

@end