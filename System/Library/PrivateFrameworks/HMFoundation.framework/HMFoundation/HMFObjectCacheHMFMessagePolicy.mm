@interface HMFObjectCacheHMFMessagePolicy
+ (id)cachedInstanceForMessagePolicy:(id)policy;
@end

@implementation HMFObjectCacheHMFMessagePolicy

+ (id)cachedInstanceForMessagePolicy:(id)policy
{
  v27 = *MEMORY[0x277D85DE8];
  policyCopy = policy;
  v4 = objc_autoreleasePoolPush();
  if (!policyCopy)
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
      v11 = HMFGetLogIdentifier(0);
      v12 = objc_opt_class();
      v13 = v12;
      v19 = 138544130;
      v20 = v11;
      v21 = 2112;
      v22 = policyCopy;
      v23 = 2112;
      v24 = v12;
      v25 = 2112;
      v26 = objc_opt_class();
      v14 = v26;
      _os_log_impl(&dword_22ADEC000, v10, OS_LOG_TYPE_INFO, "%{public}@Object %@ of class %@ mismatches cache class %@:", &v19, 0x2Au);
    }

    goto LABEL_15;
  }

  if (([policyCopy conformsToProtocol:&unk_283ED34A0] & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier(0);
      v19 = 138543874;
      v20 = v15;
      v21 = 2112;
      v22 = policyCopy;
      v23 = 2112;
      v24 = objc_opt_class();
      v16 = v24;
      _os_log_impl(&dword_22ADEC000, v10, OS_LOG_TYPE_INFO, "%{public}@Object %@ of class %@ does not conform to NSCopying protocol", &v19, 0x20u);
    }

LABEL_15:

    objc_autoreleasePoolPop(v9);
    v8 = policyCopy;
    goto LABEL_16;
  }

  os_unfair_lock_lock_with_options();
  v5 = qword_280AFC248;
  if (!qword_280AFC248)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:6 capacity:0];
    v7 = qword_280AFC248;
    qword_280AFC248 = v6;

    v5 = qword_280AFC248;
  }

  v8 = [v5 member:policyCopy];
  if (!v8)
  {
    v8 = [policyCopy copy];
    [qword_280AFC248 addObject:v8];
  }

  os_unfair_lock_unlock(&_MergedGlobals_11);
LABEL_16:
  objc_autoreleasePoolPop(v4);

  v17 = *MEMORY[0x277D85DE8];

  return v8;
}

@end