@interface HMFObjectCacheHAPCharacteristicMetadata
+ (id)hap_cacheInstanceForMetadata:(id)metadata;
@end

@implementation HMFObjectCacheHAPCharacteristicMetadata

+ (id)hap_cacheInstanceForMetadata:(id)metadata
{
  v27 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  v4 = objc_autoreleasePoolPush();
  if (!metadataCopy)
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
      v22 = metadataCopy;
      v23 = 2112;
      v24 = v12;
      v25 = 2112;
      v26 = objc_opt_class();
      v14 = v26;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_INFO, "%{public}@Object %@ of class %@ mismatches cache class %@:", &v19, 0x2Au);
    }

    goto LABEL_15;
  }

  if (([metadataCopy conformsToProtocol:&unk_283EACBD0] & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v19 = 138543874;
      v20 = v15;
      v21 = 2112;
      v22 = metadataCopy;
      v23 = 2112;
      v24 = objc_opt_class();
      v16 = v24;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_INFO, "%{public}@Object %@ of class %@ does not conform to NSCopying protocol", &v19, 0x20u);
    }

LABEL_15:

    objc_autoreleasePoolPop(v9);
    v8 = metadataCopy;
    goto LABEL_16;
  }

  os_unfair_lock_lock_with_options();
  v5 = hap_cacheInstanceForMetadata__cachedInstances;
  if (!hap_cacheInstanceForMetadata__cachedInstances)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:6 capacity:0];
    v7 = hap_cacheInstanceForMetadata__cachedInstances;
    hap_cacheInstanceForMetadata__cachedInstances = v6;

    v5 = hap_cacheInstanceForMetadata__cachedInstances;
  }

  v8 = [v5 member:metadataCopy];
  if (!v8)
  {
    v8 = [metadataCopy copy];
    [hap_cacheInstanceForMetadata__cachedInstances addObject:v8];
  }

  os_unfair_lock_unlock(&hap_cacheInstanceForMetadata__lock);
LABEL_16:
  objc_autoreleasePoolPop(v4);

  v17 = *MEMORY[0x277D85DE8];

  return v8;
}

@end