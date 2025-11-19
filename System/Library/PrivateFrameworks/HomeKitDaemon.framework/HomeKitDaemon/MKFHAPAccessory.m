@interface MKFHAPAccessory
@end

@implementation MKFHAPAccessory

void __66___MKFHAPAccessory_maybeFixUpCharacteristicWriteActionsInContext___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 service];

  if (!v4)
  {
    v5 = +[_MKFCharacteristic fetchRequest];
    v6 = MEMORY[0x277CCAC30];
    v7 = [v3 characteristicID];
    v8 = [v6 predicateWithFormat:@"(%K == %@) AND (%K.%K == %@)", @"instanceID", v7, *(a1 + 32), @"accessory", *(a1 + 40)];
    [v5 setPredicate:v8];

    v9 = *(a1 + 48);
    v29 = 0;
    v10 = [v9 executeFetchRequest:v5 error:&v29];
    v11 = v29;
    if (v10)
    {
      v12 = [v10 firstObject];
      v13 = v12;
      if (v12)
      {
        v14 = [v12 service];
        v15 = objc_autoreleasePoolPush();
        v16 = *(a1 + 40);
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = HMFGetLogIdentifier();
          *buf = 138543874;
          v31 = v18;
          v32 = 2112;
          v33 = v14;
          v34 = 2112;
          v35 = v3;
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Assigning matching service %@ to action: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v15);
        v19 = [v13 service];
        [v3 setService:v19];
      }

      else
      {
        v24 = objc_autoreleasePoolPush();
        v25 = *(a1 + 40);
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543618;
          v31 = v27;
          v32 = 2112;
          v33 = v3;
          _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@No matching characteristic for action: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v24);
      }
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = *(a1 + 40);
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543618;
        v31 = v23;
        v32 = 2112;
        v33 = v11;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch characteristics: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

id __39___MKFHAPAccessory_hasRGCapableService__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 serviceType];
  v3 = [v2 UUIDString];

  return v3;
}

void __32___MKFHAPAccessory_homeRelation__block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"home.modelID == $HOMEMODELID"];
  v1 = homeRelation__hmf_once_v9;
  homeRelation__hmf_once_v9 = v0;
}

@end