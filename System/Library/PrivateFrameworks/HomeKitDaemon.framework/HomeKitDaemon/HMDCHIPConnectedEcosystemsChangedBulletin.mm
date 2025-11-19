@interface HMDCHIPConnectedEcosystemsChangedBulletin
+ (id)localizedBodyForAccessoryName:(id)a3;
+ (id)localizedBodyForAppleEcosystemWithAccessoryName:(id)a3;
+ (id)localizedBodyForEcosystemName:(id)a3 accessoryName:(id)a4;
- (HMDCHIPConnectedEcosystemsChangedBulletin)initWithAddedPairing:(id)a3 accessory:(id)a4;
- (HMDCHIPConnectedEcosystemsChangedBulletin)initWithTitle:(id)a3 body:(id)a4 threadIdentifier:(id)a5 dateOfOccurrence:(id)a6 userInfo:(id)a7 isTimeSensitive:(BOOL)a8;
- (id)attributeDescriptions;
@end

@implementation HMDCHIPConnectedEcosystemsChangedBulletin

- (id)attributeDescriptions
{
  v24[6] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v23 = [(HMDCHIPConnectedEcosystemsChangedBulletin *)self title];
  v22 = [v3 initWithName:@"Title" value:v23];
  v24[0] = v22;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v21 = [(HMDCHIPConnectedEcosystemsChangedBulletin *)self body];
  v5 = [v4 initWithName:@"Body" value:v21];
  v24[1] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDCHIPConnectedEcosystemsChangedBulletin *)self threadIdentifier];
  v8 = [v6 initWithName:@"Thread ID" value:v7];
  v24[2] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [(HMDCHIPConnectedEcosystemsChangedBulletin *)self dateOfOccurrence];
  v11 = [v9 initWithName:@"Date" value:v10];
  v24[3] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  v13 = [(HMDCHIPConnectedEcosystemsChangedBulletin *)self userInfo];
  v14 = [v12 initWithName:@"User Info" value:v13];
  v24[4] = v14;
  v15 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDCHIPConnectedEcosystemsChangedBulletin *)self isTimeSensitive];
  v16 = HMFBooleanToString();
  v17 = [v15 initWithName:@"Time Sensitive" value:v16];
  v24[5] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:6];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (HMDCHIPConnectedEcosystemsChangedBulletin)initWithAddedPairing:(id)a3 accessory:(id)a4
{
  v58[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    _HMFPreconditionFailure();
LABEL_12:
    _HMFPreconditionFailure();
  }

  v8 = v7;
  if (!v7)
  {
    goto LABEL_12;
  }

  v56 = [objc_opt_class() localizedTitle];
  v9 = [v6 home];
  v10 = [v9 ecosystem];
  v11 = [v10 vendor];
  v12 = [v11 isAppleVendor];

  v57 = v6;
  if (!v12)
  {
    v53 = self;
    v16 = [v6 home];
    v17 = [v16 ecosystem];
    v18 = [v17 vendor];
    v19 = [v18 name];
    if (v19)
    {
      v20 = v19;
      v21 = [v6 home];
      v22 = [v21 ecosystem];
      v23 = [v22 vendor];
      v24 = [v23 isSystemCommissionerVendor];

      if ((v24 & 1) == 0)
      {
        v25 = objc_opt_class();
        v14 = [v6 home];
        v26 = [v14 ecosystem];
        v27 = [v26 vendor];
        v28 = [v27 name];
        v29 = [v8 name];
        v55 = [v25 localizedBodyForEcosystemName:v28 accessoryName:v29];

        v15 = v53;
        goto LABEL_10;
      }
    }

    else
    {
    }

    v15 = v53;
    v30 = objc_opt_class();
    v14 = [v8 name];
    v55 = [v30 localizedBodyForAccessoryName:v14];
    goto LABEL_10;
  }

  v13 = objc_opt_class();
  v14 = [v8 name];
  v55 = [v13 localizedBodyForAppleEcosystemWithAccessoryName:v14];
  v15 = self;
LABEL_10:

  v31 = [v8 home];
  v32 = MEMORY[0x277CD1878];
  v33 = [v8 contextSPIUniqueIdentifier];
  v34 = [v33 UUIDString];
  v52 = [v32 tupleWithQueryType:1 uuidString:v34];

  v35 = MEMORY[0x277CD1878];
  v36 = [v31 contextSPIUniqueIdentifier];
  v37 = [v36 UUIDString];
  v54 = [v35 tupleWithQueryType:0 uuidString:v37];

  v38 = MEMORY[0x277CBEB98];
  v58[0] = v54;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:1];
  v40 = [v38 setWithArray:v39];
  v41 = generateURLForHomeKitObject();

  v42 = [v8 accessoryBulletinContext];
  v43 = [v42 mutableCopy];

  v44 = [v41 absoluteString];
  [v43 setObject:v44 forKeyedSubscript:*MEMORY[0x277CD13D8]];

  v45 = [v31 contextID];
  [v43 setObject:v45 forKeyedSubscript:@"home"];

  v46 = [v31 uuid];
  v47 = [v46 UUIDString];
  v48 = [MEMORY[0x277CBEAA8] date];
  v49 = [(HMDCHIPConnectedEcosystemsChangedBulletin *)v15 initWithTitle:v56 body:v55 threadIdentifier:v47 dateOfOccurrence:v48 userInfo:v43 isTimeSensitive:1];

  v50 = *MEMORY[0x277D85DE8];
  return v49;
}

- (HMDCHIPConnectedEcosystemsChangedBulletin)initWithTitle:(id)a3 body:(id)a4 threadIdentifier:(id)a5 dateOfOccurrence:(id)a6 userInfo:(id)a7 isTimeSensitive:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (!v14)
  {
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!v15)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!v16)
  {
LABEL_11:
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!v17)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  v19 = v18;
  if (!v18)
  {
LABEL_13:
    v32 = _HMFPreconditionFailure();
    return [(HMDCHIPConnectedEcosystemsChangedBulletin *)v32 localizedBodyForEcosystemName:v33 accessoryName:v34, v35];
  }

  v36.receiver = self;
  v36.super_class = HMDCHIPConnectedEcosystemsChangedBulletin;
  v20 = [(HMDCHIPConnectedEcosystemsChangedBulletin *)&v36 init];
  if (v20)
  {
    v21 = [v14 copy];
    title = v20->_title;
    v20->_title = v21;

    v23 = [v15 copy];
    body = v20->_body;
    v20->_body = v23;

    v25 = [v16 copy];
    threadIdentifier = v20->_threadIdentifier;
    v20->_threadIdentifier = v25;

    v27 = [v17 copy];
    dateOfOccurrence = v20->_dateOfOccurrence;
    v20->_dateOfOccurrence = v27;

    v29 = [v19 copy];
    userInfo = v20->_userInfo;
    v20->_userInfo = v29;

    v20->_timeSensitive = a8;
  }

  return v20;
}

+ (id)localizedBodyForEcosystemName:(id)a3 accessoryName:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x277CCACA8];
  v8 = HMDLocalizedStringForKey(@"BULLETIN_CONNECTED_CHIP_ECOSYSTEMS_ADDED_BODY_THIRD_PARTY");
  v18 = 0;
  v9 = [v7 localizedStringWithValidatedFormat:v8 validFormatSpecifiers:@"%@ %@" error:&v18, v6, v5];
  v10 = v18;

  v11 = v9;
  if (!v9)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138544130;
      v20 = v14;
      v21 = 2112;
      v22 = @"BULLETIN_CONNECTED_CHIP_ECOSYSTEMS_ADDED_BODY_THIRD_PARTY";
      v23 = 2112;
      v24 = @"%@ %@";
      v25 = 2112;
      v26 = v10;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v12);
    v11 = @"BULLETIN_CONNECTED_CHIP_ECOSYSTEMS_ADDED_BODY_THIRD_PARTY";
  }

  v15 = v11;

  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (id)localizedBodyForAppleEcosystemWithAccessoryName:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = MEMORY[0x277CCACA8];
  v5 = HMDLocalizedStringForKey(@"BULLETIN_CONNECTED_CHIP_ECOSYSTEMS_ADDED_BODY_APPLE");
  v15 = 0;
  v6 = [v4 localizedStringWithValidatedFormat:v5 validFormatSpecifiers:@"%@" error:&v15, v3];
  v7 = v15;

  v8 = v6;
  if (!v6)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138544130;
      v17 = v11;
      v18 = 2112;
      v19 = @"BULLETIN_CONNECTED_CHIP_ECOSYSTEMS_ADDED_BODY_APPLE";
      v20 = 2112;
      v21 = @"%@";
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v9);
    v8 = @"BULLETIN_CONNECTED_CHIP_ECOSYSTEMS_ADDED_BODY_APPLE";
  }

  v12 = v8;

  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (id)localizedBodyForAccessoryName:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = MEMORY[0x277CCACA8];
  v5 = HMDLocalizedStringForKey(@"BULLETIN_CONNECTED_CHIP_ECOSYSTEMS_ADDED_BODY_GENERIC");
  v15 = 0;
  v6 = [v4 localizedStringWithValidatedFormat:v5 validFormatSpecifiers:@"%@" error:&v15, v3];
  v7 = v15;

  v8 = v6;
  if (!v6)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138544130;
      v17 = v11;
      v18 = 2112;
      v19 = @"BULLETIN_CONNECTED_CHIP_ECOSYSTEMS_ADDED_BODY_GENERIC";
      v20 = 2112;
      v21 = @"%@";
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v9);
    v8 = @"BULLETIN_CONNECTED_CHIP_ECOSYSTEMS_ADDED_BODY_GENERIC";
  }

  v12 = v8;

  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

@end