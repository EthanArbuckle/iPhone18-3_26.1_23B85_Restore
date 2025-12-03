@interface UARPAccessory(HMDHAPAccessory)
- (id)redactedDescription;
- (uint64_t)initWithHMDHAPAccessory:()HMDHAPAccessory;
@end

@implementation UARPAccessory(HMDHAPAccessory)

- (id)redactedDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  uuid = [self uuid];
  uUIDString = [uuid UUIDString];
  v6 = [v2 stringWithFormat:@"<%@ %@>", v3, uUIDString];

  return v6;
}

- (uint64_t)initWithHMDHAPAccessory:()HMDHAPAccessory
{
  v59 = *MEMORY[0x277D85DE8];
  v4 = a3;
  identityType = [v4 identityType];
  v6 = 0;
  if (identityType <= 1)
  {
    if (identityType)
    {
      if (identityType == 1)
      {
        v7 = objc_alloc_init(MEMORY[0x277CCACA8]);
        productData = [v4 productData];
        v50 = v7;
        [HMDAccessory splitProductDataIntoProductGroupAndProductNumber:productData productGroup:0 productNumber:&v50];
        matterVendorID2 = v50;

        v10 = objc_autoreleasePoolPush();
        selfCopy = self;
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
        productGroup = [v4 productGroup];
        uuid = [v4 uuid];
        v6 = [v14 initWithProductGroup:productGroup productNumber:matterVendorID2 uuid:uuid];

LABEL_25:
        goto LABEL_30;
      }

      goto LABEL_30;
    }

    matterVendorID = [v4 matterVendorID];
    matterProductID = [v4 matterProductID];
    v30 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138544130;
      v52 = v33;
      v53 = 2112;
      v54 = v4;
      v55 = 2112;
      v56 = matterVendorID;
      v57 = 2112;
      v58 = matterProductID;
      _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Not a valid AFU accessory: %@ vendorID: %@ productID: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v30);
LABEL_29:
    v6 = 0;
    goto LABEL_30;
  }

  if (identityType == 3)
  {
    matterVendorID2 = [v4 matterVendorID];
    matterProductID2 = [v4 matterProductID];
    v35 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v37 = HMFGetOSLogHandle();
    v38 = v37;
    if (matterVendorID2 && matterProductID2)
    {
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        v39 = HMFGetLogIdentifier();
        stringValue = [matterVendorID2 stringValue];
        stringValue2 = [matterProductID2 stringValue];
        *buf = 138544130;
        v52 = v39;
        v53 = 2112;
        v54 = stringValue;
        v55 = 2112;
        v56 = stringValue2;
        v57 = 2112;
        v58 = v4;
        _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_DEBUG, "%{public}@Initializing UARP VendorProductID (%@/%@) accessory %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v35);
      v42 = objc_alloc(MEMORY[0x277D02600]);
      stringValue3 = [matterVendorID2 stringValue];
      stringValue4 = [matterProductID2 stringValue];
      uuid2 = [v4 uuid];
      v6 = [v42 initWithProductGroup:stringValue3 productNumber:stringValue4 uuid:uuid2];
    }

    else
    {
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v46 = HMFGetLogIdentifier();
        *buf = 138544130;
        v52 = v46;
        v53 = 2112;
        v54 = matterVendorID2;
        v55 = 2112;
        v56 = matterProductID2;
        v57 = 2112;
        v58 = v4;
        _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@Matter Accessory has a nil vendorID(%@) or productID(%@), not a valid AFU accessory: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v35);
      v6 = 0;
    }

    goto LABEL_25;
  }

  if (identityType == 2)
  {
    v17 = MEMORY[0x277D02630];
    model = [v4 model];
    v19 = [v17 findByAppleModelNumber:model];

    v20 = objc_autoreleasePoolPush();
    selfCopy4 = self;
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
      hardwareID = [v19 hardwareID];
      uuid3 = [v4 uuid];
      v6 = [v25 initWithHardwareID:hardwareID uuid:uuid3];

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