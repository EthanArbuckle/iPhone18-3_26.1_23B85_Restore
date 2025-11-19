@interface HMFObjectCacheHMDCharacteristicMetadata
+ (id)cachedInstanceForCharacteristicMetadata:(id)a3;
@end

@implementation HMFObjectCacheHMDCharacteristicMetadata

+ (id)cachedInstanceForCharacteristicMetadata:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  if (!v3)
  {
    v8 = 0;
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = objc_opt_class();
      v13 = v12;
      v19 = 138544130;
      v20 = v11;
      v21 = 2112;
      v22 = v3;
      v23 = 2112;
      v24 = v12;
      v25 = 2112;
      v26 = objc_opt_class();
      v14 = v26;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Object %@ of class %@ mismatches cache class %@:", &v19, 0x2Au);
    }

    goto LABEL_15;
  }

  if (([v3 conformsToProtocol:&unk_283E864A0] & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v19 = 138543874;
      v20 = v15;
      v21 = 2112;
      v22 = v3;
      v23 = 2112;
      v24 = objc_opt_class();
      v16 = v24;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Object %@ of class %@ does not conform to NSCopying protocol", &v19, 0x20u);
    }

LABEL_15:

    objc_autoreleasePoolPop(v9);
    v8 = v3;
    goto LABEL_16;
  }

  os_unfair_lock_lock_with_options();
  v5 = cachedInstanceForCharacteristicMetadata__cachedInstances;
  if (!cachedInstanceForCharacteristicMetadata__cachedInstances)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:6 capacity:0];
    v7 = cachedInstanceForCharacteristicMetadata__cachedInstances;
    cachedInstanceForCharacteristicMetadata__cachedInstances = v6;

    v5 = cachedInstanceForCharacteristicMetadata__cachedInstances;
  }

  v8 = [v5 member:v3];
  if (!v8)
  {
    v8 = [v3 copy];
    [cachedInstanceForCharacteristicMetadata__cachedInstances addObject:v8];
  }

  os_unfair_lock_unlock(&cachedInstanceForCharacteristicMetadata__lock);
LABEL_16:
  objc_autoreleasePoolPop(v4);

  v17 = *MEMORY[0x277D85DE8];

  return v8;
}

@end