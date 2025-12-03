@interface HMDCHIPConnectedEcosystemsChangedBulletin
+ (id)localizedBodyForAccessoryName:(id)name;
+ (id)localizedBodyForAppleEcosystemWithAccessoryName:(id)name;
+ (id)localizedBodyForEcosystemName:(id)name accessoryName:(id)accessoryName;
- (HMDCHIPConnectedEcosystemsChangedBulletin)initWithAddedPairing:(id)pairing accessory:(id)accessory;
- (HMDCHIPConnectedEcosystemsChangedBulletin)initWithTitle:(id)title body:(id)body threadIdentifier:(id)identifier dateOfOccurrence:(id)occurrence userInfo:(id)info isTimeSensitive:(BOOL)sensitive;
- (id)attributeDescriptions;
@end

@implementation HMDCHIPConnectedEcosystemsChangedBulletin

- (id)attributeDescriptions
{
  v24[6] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  title = [(HMDCHIPConnectedEcosystemsChangedBulletin *)self title];
  v22 = [v3 initWithName:@"Title" value:title];
  v24[0] = v22;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  body = [(HMDCHIPConnectedEcosystemsChangedBulletin *)self body];
  v5 = [v4 initWithName:@"Body" value:body];
  v24[1] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  threadIdentifier = [(HMDCHIPConnectedEcosystemsChangedBulletin *)self threadIdentifier];
  v8 = [v6 initWithName:@"Thread ID" value:threadIdentifier];
  v24[2] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  dateOfOccurrence = [(HMDCHIPConnectedEcosystemsChangedBulletin *)self dateOfOccurrence];
  v11 = [v9 initWithName:@"Date" value:dateOfOccurrence];
  v24[3] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  userInfo = [(HMDCHIPConnectedEcosystemsChangedBulletin *)self userInfo];
  v14 = [v12 initWithName:@"User Info" value:userInfo];
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

- (HMDCHIPConnectedEcosystemsChangedBulletin)initWithAddedPairing:(id)pairing accessory:(id)accessory
{
  v58[1] = *MEMORY[0x277D85DE8];
  pairingCopy = pairing;
  accessoryCopy = accessory;
  if (!pairingCopy)
  {
    _HMFPreconditionFailure();
LABEL_12:
    _HMFPreconditionFailure();
  }

  v8 = accessoryCopy;
  if (!accessoryCopy)
  {
    goto LABEL_12;
  }

  localizedTitle = [objc_opt_class() localizedTitle];
  home = [pairingCopy home];
  ecosystem = [home ecosystem];
  vendor = [ecosystem vendor];
  isAppleVendor = [vendor isAppleVendor];

  v57 = pairingCopy;
  if (!isAppleVendor)
  {
    selfCopy = self;
    home2 = [pairingCopy home];
    ecosystem2 = [home2 ecosystem];
    vendor2 = [ecosystem2 vendor];
    name = [vendor2 name];
    if (name)
    {
      v20 = name;
      home3 = [pairingCopy home];
      ecosystem3 = [home3 ecosystem];
      vendor3 = [ecosystem3 vendor];
      isSystemCommissionerVendor = [vendor3 isSystemCommissionerVendor];

      if ((isSystemCommissionerVendor & 1) == 0)
      {
        v25 = objc_opt_class();
        home4 = [pairingCopy home];
        ecosystem4 = [home4 ecosystem];
        vendor4 = [ecosystem4 vendor];
        name2 = [vendor4 name];
        name3 = [v8 name];
        v55 = [v25 localizedBodyForEcosystemName:name2 accessoryName:name3];

        selfCopy2 = selfCopy;
        goto LABEL_10;
      }
    }

    else
    {
    }

    selfCopy2 = selfCopy;
    v30 = objc_opt_class();
    home4 = [v8 name];
    v55 = [v30 localizedBodyForAccessoryName:home4];
    goto LABEL_10;
  }

  v13 = objc_opt_class();
  home4 = [v8 name];
  v55 = [v13 localizedBodyForAppleEcosystemWithAccessoryName:home4];
  selfCopy2 = self;
LABEL_10:

  home5 = [v8 home];
  v32 = MEMORY[0x277CD1878];
  contextSPIUniqueIdentifier = [v8 contextSPIUniqueIdentifier];
  uUIDString = [contextSPIUniqueIdentifier UUIDString];
  v52 = [v32 tupleWithQueryType:1 uuidString:uUIDString];

  v35 = MEMORY[0x277CD1878];
  contextSPIUniqueIdentifier2 = [home5 contextSPIUniqueIdentifier];
  uUIDString2 = [contextSPIUniqueIdentifier2 UUIDString];
  v54 = [v35 tupleWithQueryType:0 uuidString:uUIDString2];

  v38 = MEMORY[0x277CBEB98];
  v58[0] = v54;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:1];
  v40 = [v38 setWithArray:v39];
  v41 = generateURLForHomeKitObject();

  accessoryBulletinContext = [v8 accessoryBulletinContext];
  v43 = [accessoryBulletinContext mutableCopy];

  absoluteString = [v41 absoluteString];
  [v43 setObject:absoluteString forKeyedSubscript:*MEMORY[0x277CD13D8]];

  contextID = [home5 contextID];
  [v43 setObject:contextID forKeyedSubscript:@"home"];

  uuid = [home5 uuid];
  uUIDString3 = [uuid UUIDString];
  date = [MEMORY[0x277CBEAA8] date];
  v49 = [(HMDCHIPConnectedEcosystemsChangedBulletin *)selfCopy2 initWithTitle:localizedTitle body:v55 threadIdentifier:uUIDString3 dateOfOccurrence:date userInfo:v43 isTimeSensitive:1];

  v50 = *MEMORY[0x277D85DE8];
  return v49;
}

- (HMDCHIPConnectedEcosystemsChangedBulletin)initWithTitle:(id)title body:(id)body threadIdentifier:(id)identifier dateOfOccurrence:(id)occurrence userInfo:(id)info isTimeSensitive:(BOOL)sensitive
{
  titleCopy = title;
  bodyCopy = body;
  identifierCopy = identifier;
  occurrenceCopy = occurrence;
  infoCopy = info;
  if (!titleCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!bodyCopy)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!identifierCopy)
  {
LABEL_11:
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!occurrenceCopy)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  v19 = infoCopy;
  if (!infoCopy)
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
    v21 = [titleCopy copy];
    title = v20->_title;
    v20->_title = v21;

    v23 = [bodyCopy copy];
    body = v20->_body;
    v20->_body = v23;

    v25 = [identifierCopy copy];
    threadIdentifier = v20->_threadIdentifier;
    v20->_threadIdentifier = v25;

    v27 = [occurrenceCopy copy];
    dateOfOccurrence = v20->_dateOfOccurrence;
    v20->_dateOfOccurrence = v27;

    v29 = [v19 copy];
    userInfo = v20->_userInfo;
    v20->_userInfo = v29;

    v20->_timeSensitive = sensitive;
  }

  return v20;
}

+ (id)localizedBodyForEcosystemName:(id)name accessoryName:(id)accessoryName
{
  v27 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  accessoryNameCopy = accessoryName;
  v7 = MEMORY[0x277CCACA8];
  v8 = HMDLocalizedStringForKey(@"BULLETIN_CONNECTED_CHIP_ECOSYSTEMS_ADDED_BODY_THIRD_PARTY");
  v18 = 0;
  nameCopy = [v7 localizedStringWithValidatedFormat:v8 validFormatSpecifiers:@"%@ %@" error:&v18, accessoryNameCopy, nameCopy];
  v10 = v18;

  v11 = nameCopy;
  if (!nameCopy)
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

+ (id)localizedBodyForAppleEcosystemWithAccessoryName:(id)name
{
  v24 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v4 = MEMORY[0x277CCACA8];
  v5 = HMDLocalizedStringForKey(@"BULLETIN_CONNECTED_CHIP_ECOSYSTEMS_ADDED_BODY_APPLE");
  v15 = 0;
  nameCopy = [v4 localizedStringWithValidatedFormat:v5 validFormatSpecifiers:@"%@" error:&v15, nameCopy];
  v7 = v15;

  v8 = nameCopy;
  if (!nameCopy)
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

+ (id)localizedBodyForAccessoryName:(id)name
{
  v24 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v4 = MEMORY[0x277CCACA8];
  v5 = HMDLocalizedStringForKey(@"BULLETIN_CONNECTED_CHIP_ECOSYSTEMS_ADDED_BODY_GENERIC");
  v15 = 0;
  nameCopy = [v4 localizedStringWithValidatedFormat:v5 validFormatSpecifiers:@"%@" error:&v15, nameCopy];
  v7 = v15;

  v8 = nameCopy;
  if (!nameCopy)
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