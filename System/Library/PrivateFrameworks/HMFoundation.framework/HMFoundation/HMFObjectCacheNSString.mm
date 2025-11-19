@interface HMFObjectCacheNSString
+ (id)hmf_cachedInstanceForString:(id)a3;
+ (id)hmf_setOfCachedInstancesForStrings:(id)a3;
@end

@implementation HMFObjectCacheNSString

+ (id)hmf_cachedInstanceForString:(id)a3
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
      v11 = HMFGetLogIdentifier(0);
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
      _os_log_impl(&dword_22ADEC000, v10, OS_LOG_TYPE_INFO, "%{public}@Object %@ of class %@ mismatches cache class %@:", &v19, 0x2Au);
    }

    goto LABEL_15;
  }

  if (([v3 conformsToProtocol:&unk_283ED34A0] & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier(0);
      v19 = 138543874;
      v20 = v15;
      v21 = 2112;
      v22 = v3;
      v23 = 2112;
      v24 = objc_opt_class();
      v16 = v24;
      _os_log_impl(&dword_22ADEC000, v10, OS_LOG_TYPE_INFO, "%{public}@Object %@ of class %@ does not conform to NSCopying protocol", &v19, 0x20u);
    }

LABEL_15:

    objc_autoreleasePoolPop(v9);
    v8 = v3;
    goto LABEL_16;
  }

  os_unfair_lock_lock_with_options();
  v5 = qword_280AFC668;
  if (!qword_280AFC668)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:6 capacity:0];
    v7 = qword_280AFC668;
    qword_280AFC668 = v6;

    v5 = qword_280AFC668;
  }

  v8 = [v5 member:v3];
  if (!v8)
  {
    v8 = [v3 copy];
    [qword_280AFC668 addObject:v8];
  }

  os_unfair_lock_unlock(&_MergedGlobals_68);
LABEL_16:
  objc_autoreleasePoolPop(v4);

  v17 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)hmf_setOfCachedInstancesForStrings:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x277CBEB58];
    v4 = a3;
    v5 = [v3 setWithCapacity:{objc_msgSend(v4, "count")}];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __80__HMFObjectCacheNSString_CollectionSupport__hmf_setOfCachedInstancesForStrings___block_invoke;
    v9[3] = &unk_2786E7DD8;
    v10 = v5;
    v6 = v5;
    [v4 enumerateObjectsUsingBlock:v9];

    v7 = [v6 copy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __80__HMFObjectCacheNSString_CollectionSupport__hmf_setOfCachedInstancesForStrings___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [HMFObjectCacheNSString hmf_cachedInstanceForString:a2];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = [*(a1 + 32) addObject:v3];
    v4 = v6;
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

@end