@interface HAPCharacteristicValueTransitionState
@end

@implementation HAPCharacteristicValueTransitionState

BOOL __114__HAPCharacteristicValueTransitionState_NaturalLighting__naturalLightingActiveTransitionContextForCharacteristic___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 controllerContext];
  if (v4)
  {
    v19 = 0;
    v5 = [MEMORY[0x277CFEAC8] parsedFromData:v4 error:&v19];
    v6 = v19;
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v5;

    if (*(*(*(a1 + 40) + 8) + 40))
    {
      v9 = [v3 HAPInstanceID];
      v10 = [v9 value];
      v11 = [*(a1 + 32) instanceID];
      if ([v10 isEqualToNumber:v11] && objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "isNaturalLightingEnabled"))
      {
        v12 = [v3 timeElapsedSinceStart];
        v13 = v12 != 0;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543874;
        v21 = v16;
        v22 = 2112;
        v23 = v4;
        v24 = 2112;
        v25 = v6;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode controller context %@:%@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v13;
}

BOOL __100__HAPCharacteristicValueTransitionState_NaturalLighting__isNaturalLightingEnabledForCharacteristic___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 controllerContext];
  if (v4)
  {
    v17 = 0;
    v5 = [MEMORY[0x277CFEAC8] parsedFromData:v4 error:&v17];
    v6 = v17;
    if (v5)
    {
      v7 = [v3 HAPInstanceID];
      v8 = [v7 value];
      v9 = [*(a1 + 32) instanceID];
      if ([v8 isEqualToNumber:v9] && objc_msgSend(v5, "isNaturalLightingEnabled"))
      {
        v10 = [v3 timeElapsedSinceStart];
        v11 = v10 != 0;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543874;
        v19 = v14;
        v20 = 2112;
        v21 = v4;
        v22 = 2112;
        v23 = v6;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode controller context %@:%@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

@end