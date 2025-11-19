@interface NSString(HAPAdditions)
- (id)hap_validatedAndNormalizedUUIDString;
@end

@implementation NSString(HAPAdditions)

- (id)hap_validatedAndNormalizedUUIDString
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:a1];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-1000-8000-0026BB765291"];
    v4 = [v2 isEqual:v3];

    if (v4)
    {
      v5 = objc_autoreleasePoolPush();
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v7;
        *&buf[12] = 2112;
        *&buf[14] = a1;
        v8 = "%{public}@### UUID type %@ is using the HAP Base UUID";
LABEL_8:
        _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_ERROR, v8, buf, 0x16u);

        goto LABEL_9;
      }

      goto LABEL_9;
    }

    v9 = [v2 UUIDString];
  }

  else
  {
    if ([a1 characterAtIndex:0] == 48)
    {
      v5 = objc_autoreleasePoolPush();
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v7;
        *&buf[12] = 2112;
        *&buf[14] = a1;
        v8 = "%{public}@### UUID type %@ starts with a '0'";
        goto LABEL_8;
      }

LABEL_9:

LABEL_10:
      objc_autoreleasePoolPop(v5);
      v9 = 0;
      goto LABEL_12;
    }

    memset(v31, 0, sizeof(v31));
    [a1 UTF8String];
    v12 = NormalizeUUIDString();
    if (v12)
    {
      v13 = v12;
      v30 = 0;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      memset(buf, 0, sizeof(buf));
      DebugGetErrorString();
      v5 = objc_autoreleasePoolPush();
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        v17 = 138544130;
        v18 = v15;
        v19 = 1024;
        v20 = v13;
        v21 = 2080;
        v22 = buf;
        v23 = 2112;
        v24 = a1;
        _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, "%{public}@### Error: %d(%s) creating UUID string from type: %@.", &v17, 0x26u);
      }

      goto LABEL_10;
    }

    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:v31];
    v9 = [v16 uppercaseString];
  }

LABEL_12:

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end