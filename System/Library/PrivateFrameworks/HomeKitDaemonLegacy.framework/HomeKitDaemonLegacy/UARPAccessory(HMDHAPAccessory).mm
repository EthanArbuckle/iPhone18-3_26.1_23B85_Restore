@interface UARPAccessory(HMDHAPAccessory)
- (id)redactedDescription;
- (uint64_t)initWithHMDHAPAccessory:()HMDHAPAccessory;
@end

@implementation UARPAccessory(HMDHAPAccessory)

- (id)redactedDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = [a1 uuid];
  v5 = [v4 UUIDString];
  v6 = [v2 stringWithFormat:@"<%@ %@>", v3, v5];

  return v6;
}

- (uint64_t)initWithHMDHAPAccessory:()HMDHAPAccessory
{
  v63 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 identityType];
  v6 = 0;
  if (v5 <= 1)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        v7 = objc_alloc_init(MEMORY[0x277CCACA8]);
        v8 = [v4 productData];
        v54 = v7;
        [HMDAccessory splitProductDataIntoProductGroupAndProductNumber:v8 productGroup:0 productNumber:&v54];
        v9 = v54;

        v10 = objc_autoreleasePoolPush();
        v11 = a1;
        v12 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v13 = HMFGetLogIdentifier();
          *buf = 138543618;
          v56 = v13;
          v57 = 2112;
          v58 = v4;
          _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Initializing UARP ProductData accessory %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v10);
        v14 = objc_alloc(MEMORY[0x277D02600]);
        v15 = [v4 productGroup];
        v16 = [v4 uuid];
        v6 = [v14 initWithProductGroup:v15 productNumber:v9 uuid:v16];

LABEL_25:
        goto LABEL_30;
      }

      goto LABEL_30;
    }

    v28 = [v4 chipStorage];
    v29 = [v28 vendorID];

    v30 = [v4 chipStorage];
    v31 = [v30 productID];

    v32 = objc_autoreleasePoolPush();
    v33 = a1;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138544130;
      v56 = v35;
      v57 = 2112;
      v58 = v4;
      v59 = 2112;
      v60 = v29;
      v61 = 2112;
      v62 = v31;
      _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@Not a valid AFU accessory: %@ vendorID: %@ productID: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v32);
LABEL_29:
    v6 = 0;
    goto LABEL_30;
  }

  if (v5 == 3)
  {
    v36 = [v4 chipStorage];
    v9 = [v36 vendorID];

    v37 = [v4 chipStorage];
    v38 = [v37 productID];

    v39 = objc_autoreleasePoolPush();
    v40 = a1;
    v41 = HMFGetOSLogHandle();
    v42 = v41;
    if (v9 && v38)
    {
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        v43 = HMFGetLogIdentifier();
        v44 = [v9 stringValue];
        v45 = [v38 stringValue];
        *buf = 138544130;
        v56 = v43;
        v57 = 2112;
        v58 = v44;
        v59 = 2112;
        v60 = v45;
        v61 = 2112;
        v62 = v4;
        _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_DEBUG, "%{public}@Initializing UARP VendorProductID (%@/%@) accessory %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v39);
      v46 = objc_alloc(MEMORY[0x277D02600]);
      v47 = [v9 stringValue];
      v48 = [v38 stringValue];
      v49 = [v4 uuid];
      v6 = [v46 initWithProductGroup:v47 productNumber:v48 uuid:v49];
    }

    else
    {
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v50 = HMFGetLogIdentifier();
        *buf = 138544130;
        v56 = v50;
        v57 = 2112;
        v58 = v9;
        v59 = 2112;
        v60 = v38;
        v61 = 2112;
        v62 = v4;
        _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_ERROR, "%{public}@Matter Accessory has a nil vendorID(%@) or productID(%@), not a valid AFU accessory: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v39);
      v6 = 0;
    }

    goto LABEL_25;
  }

  if (v5 == 2)
  {
    v17 = MEMORY[0x277D02630];
    v18 = [v4 model];
    v19 = [v17 findByAppleModelNumber:v18];

    v20 = objc_autoreleasePoolPush();
    v21 = a1;
    v22 = HMFGetOSLogHandle();
    v23 = v22;
    if (v19)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543618;
        v56 = v24;
        v57 = 2112;
        v58 = v4;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_DEBUG, "%{public}@Initializing UARP ModelNumber accessory %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      v25 = objc_alloc(MEMORY[0x277D02600]);
      v26 = [v19 hardwareID];
      v27 = [v4 uuid];
      v6 = [v25 initWithHardwareID:v26 uuid:v27];

      goto LABEL_30;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v51 = HMFGetLogIdentifier();
      *buf = 138543618;
      v56 = v51;
      v57 = 2112;
      v58 = v4;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Not a CoreUARP suppoorted accessory: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    goto LABEL_29;
  }

LABEL_30:

  v52 = *MEMORY[0x277D85DE8];
  return v6;
}

@end