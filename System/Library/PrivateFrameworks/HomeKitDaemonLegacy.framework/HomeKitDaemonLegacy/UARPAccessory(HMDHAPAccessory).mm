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
  v63 = *MEMORY[0x277D85DE8];
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
        v54 = v7;
        [HMDAccessory splitProductDataIntoProductGroupAndProductNumber:productData productGroup:0 productNumber:&v54];
        vendorID2 = v54;

        v10 = objc_autoreleasePoolPush();
        selfCopy = self;
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
        productGroup = [v4 productGroup];
        uuid = [v4 uuid];
        v6 = [v14 initWithProductGroup:productGroup productNumber:vendorID2 uuid:uuid];

LABEL_25:
        goto LABEL_30;
      }

      goto LABEL_30;
    }

    chipStorage = [v4 chipStorage];
    vendorID = [chipStorage vendorID];

    chipStorage2 = [v4 chipStorage];
    productID = [chipStorage2 productID];

    v32 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138544130;
      v56 = v35;
      v57 = 2112;
      v58 = v4;
      v59 = 2112;
      v60 = vendorID;
      v61 = 2112;
      v62 = productID;
      _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@Not a valid AFU accessory: %@ vendorID: %@ productID: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v32);
LABEL_29:
    v6 = 0;
    goto LABEL_30;
  }

  if (identityType == 3)
  {
    chipStorage3 = [v4 chipStorage];
    vendorID2 = [chipStorage3 vendorID];

    chipStorage4 = [v4 chipStorage];
    productID2 = [chipStorage4 productID];

    v39 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v41 = HMFGetOSLogHandle();
    v42 = v41;
    if (vendorID2 && productID2)
    {
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        v43 = HMFGetLogIdentifier();
        stringValue = [vendorID2 stringValue];
        stringValue2 = [productID2 stringValue];
        *buf = 138544130;
        v56 = v43;
        v57 = 2112;
        v58 = stringValue;
        v59 = 2112;
        v60 = stringValue2;
        v61 = 2112;
        v62 = v4;
        _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_DEBUG, "%{public}@Initializing UARP VendorProductID (%@/%@) accessory %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v39);
      v46 = objc_alloc(MEMORY[0x277D02600]);
      stringValue3 = [vendorID2 stringValue];
      stringValue4 = [productID2 stringValue];
      uuid2 = [v4 uuid];
      v6 = [v46 initWithProductGroup:stringValue3 productNumber:stringValue4 uuid:uuid2];
    }

    else
    {
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v50 = HMFGetLogIdentifier();
        *buf = 138544130;
        v56 = v50;
        v57 = 2112;
        v58 = vendorID2;
        v59 = 2112;
        v60 = productID2;
        v61 = 2112;
        v62 = v4;
        _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_ERROR, "%{public}@Matter Accessory has a nil vendorID(%@) or productID(%@), not a valid AFU accessory: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v39);
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
        v56 = v24;
        v57 = 2112;
        v58 = v4;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_DEBUG, "%{public}@Initializing UARP ModelNumber accessory %@", buf, 0x16u);
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