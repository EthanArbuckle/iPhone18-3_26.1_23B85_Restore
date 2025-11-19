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
  v59 = *MEMORY[0x277D85DE8];
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
        v50 = v7;
        [HMDAccessory splitProductDataIntoProductGroupAndProductNumber:v8 productGroup:0 productNumber:&v50];
        v9 = v50;

        v10 = objc_autoreleasePoolPush();
        v11 = a1;
        v12 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v13 = HMFGetLogIdentifier();
          *buf = 138543618;
          v52 = v13;
          v53 = 2112;
          v54 = v4;
          _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Initializing UARP ProductData accessory %@", buf, 0x16u);
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

    v28 = [v4 matterVendorID];
    v29 = [v4 matterProductID];
    v30 = objc_autoreleasePoolPush();
    v31 = a1;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138544130;
      v52 = v33;
      v53 = 2112;
      v54 = v4;
      v55 = 2112;
      v56 = v28;
      v57 = 2112;
      v58 = v29;
      _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Not a valid AFU accessory: %@ vendorID: %@ productID: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v30);
LABEL_29:
    v6 = 0;
    goto LABEL_30;
  }

  if (v5 == 3)
  {
    v9 = [v4 matterVendorID];
    v34 = [v4 matterProductID];
    v35 = objc_autoreleasePoolPush();
    v36 = a1;
    v37 = HMFGetOSLogHandle();
    v38 = v37;
    if (v9 && v34)
    {
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        v39 = HMFGetLogIdentifier();
        v40 = [v9 stringValue];
        v41 = [v34 stringValue];
        *buf = 138544130;
        v52 = v39;
        v53 = 2112;
        v54 = v40;
        v55 = 2112;
        v56 = v41;
        v57 = 2112;
        v58 = v4;
        _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_DEBUG, "%{public}@Initializing UARP VendorProductID (%@/%@) accessory %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v35);
      v42 = objc_alloc(MEMORY[0x277D02600]);
      v43 = [v9 stringValue];
      v44 = [v34 stringValue];
      v45 = [v4 uuid];
      v6 = [v42 initWithProductGroup:v43 productNumber:v44 uuid:v45];
    }

    else
    {
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v46 = HMFGetLogIdentifier();
        *buf = 138544130;
        v52 = v46;
        v53 = 2112;
        v54 = v9;
        v55 = 2112;
        v56 = v34;
        v57 = 2112;
        v58 = v4;
        _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@Matter Accessory has a nil vendorID(%@) or productID(%@), not a valid AFU accessory: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v35);
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
        v52 = v24;
        v53 = 2112;
        v54 = v4;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_DEBUG, "%{public}@Initializing UARP ModelNumber accessory %@", buf, 0x16u);
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
      v47 = HMFGetLogIdentifier();
      *buf = 138543618;
      v52 = v47;
      v53 = 2112;
      v54 = v4;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Not a CoreUARP suppoorted accessory: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    goto LABEL_29;
  }

LABEL_30:

  v48 = *MEMORY[0x277D85DE8];
  return v6;
}

@end