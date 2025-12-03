@interface HMDCloudZoneInformation
+ (id)cloudZoneInformationWithCloudZones:(id)zones;
+ (id)cloudZonesArrayWithCloudZones:(id)zones;
+ (id)cloudZonesWithDictionary:(id)dictionary;
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMDCloudZoneInformation)init;
- (HMDCloudZoneInformation)initWithCoder:(id)coder;
- (HMDCloudZoneInformation)initWithOwnerName:(id)name uuid:(id)uuid;
- (id)descriptionWithPointer:(BOOL)pointer;
- (id)emptyModelObjectWithChangeType:(unint64_t)type parent:(id)parent;
- (id)modelObjectWithChangeType:(unint64_t)type version:(int64_t)version parent:(id)parent;
- (id)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
- (void)updateCloudZoneInformationWithModel:(id)model message:(id)message;
@end

@implementation HMDCloudZoneInformation

- (id)emptyModelObjectWithChangeType:(unint64_t)type parent:(id)parent
{
  parentCopy = parent;
  v7 = [HMDCloudZoneInformationModel alloc];
  uuid = [(HMDCloudZoneInformation *)self uuid];
  v9 = [(HMDBackingStoreModelObject *)v7 initWithObjectChangeType:type uuid:uuid parentUUID:parentCopy];

  return v9;
}

- (id)modelObjectWithChangeType:(unint64_t)type version:(int64_t)version parent:(id)parent
{
  v6 = [(HMDCloudZoneInformation *)self emptyModelObjectWithChangeType:type parent:parent];
  ownerName = [(HMDCloudZoneInformation *)self ownerName];
  [v6 setOwnerName:ownerName];

  return v6;
}

- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message
{
  valuesCopy = values;
  messageCopy = message;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = valuesCopy;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (v9)
  {
    [(HMDCloudZoneInformation *)self updateCloudZoneInformationWithModel:v9 message:messageCopy];
    transactionResult = [messageCopy transactionResult];
    [transactionResult markChanged];
    [messageCopy respondWithPayload:0];
  }
}

- (void)updateCloudZoneInformationWithModel:(id)model message:(id)message
{
  modelCopy = model;
  [(HMDCloudZoneInformation *)self setZoneCreated:1];
  setProperties = [modelCopy setProperties];
  v6 = [setProperties containsObject:@"ownerName"];

  if (v6)
  {
    ownerName = [modelCopy ownerName];
    [(HMDCloudZoneInformation *)self setOwnerName:ownerName];
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uuid = [(HMDCloudZoneInformation *)self uuid];
  uUIDString = [uuid UUIDString];
  [coderCopy encodeObject:uUIDString forKey:@"HM.zoneUUID"];

  ownerName = [(HMDCloudZoneInformation *)self ownerName];
  [coderCopy encodeObject:ownerName forKey:@"HM.zoneOwner"];

  [coderCopy encodeBool:-[HMDCloudZoneInformation didFetchFailed](self forKey:{"didFetchFailed"), @"HM.zoneFetchFailed"}];
  [coderCopy encodeBool:-[HMDCloudZoneInformation isZoneCreated](self forKey:{"isZoneCreated"), @"HM.zoneZoneCreated"}];
  [coderCopy encodeInteger:-[HMDCloudZoneInformation schemaVersion](self forKey:{"schemaVersion"), @"HM.zoneSchemaVersion"}];
}

- (HMDCloudZoneInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.zoneUUID"];
  v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v5];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.zoneOwner"];
  v8 = [(HMDCloudZoneInformation *)self initWithOwnerName:v7 uuid:v6];
  if (v8)
  {
    if ([coderCopy containsValueForKey:@"HM.zoneFetchFailed"])
    {
      v8->_fetchFailed = [coderCopy decodeBoolForKey:@"HM.zoneFetchFailed"];
    }

    if ([coderCopy containsValueForKey:@"HM.zoneZoneCreated"])
    {
      v8->_zoneCreated = [coderCopy decodeBoolForKey:@"HM.zoneZoneCreated"];
    }

    else
    {
      v8->_zoneCreated = 1;
    }

    if ([coderCopy containsValueForKey:@"HM.zoneSchemaVersion"])
    {
      v8->_schemaVersion = [coderCopy decodeIntegerForKey:@"HM.zoneSchemaVersion"];
    }
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uuid = [(HMDCloudZoneInformation *)equalCopy uuid];
      uuid2 = [(HMDCloudZoneInformation *)self uuid];
      v7 = [uuid isEqual:uuid2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  uuid = [(HMDCloudZoneInformation *)self uuid];
  v3 = [uuid hash];

  return v3;
}

- (id)descriptionWithPointer:(BOOL)pointer
{
  pointerCopy = pointer;
  v5 = MEMORY[0x277CCACA8];
  shortDescription = [(HMDCloudZoneInformation *)self shortDescription];
  if (pointerCopy)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@" %p", self];
  }

  else
  {
    v7 = &stru_283CF9D50;
  }

  ownerName = [(HMDCloudZoneInformation *)self ownerName];
  v9 = [v5 stringWithFormat:@"<%@%@, Owner = %@>", shortDescription, v7, ownerName];

  if (pointerCopy)
  {
  }

  return v9;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  uuid = [(HMDCloudZoneInformation *)self uuid];
  uUIDString = [uuid UUIDString];
  v7 = [v3 stringWithFormat:@"%@ %@", shortDescription, uUIDString];

  return v7;
}

- (HMDCloudZoneInformation)initWithOwnerName:(id)name uuid:(id)uuid
{
  nameCopy = name;
  uuidCopy = uuid;
  v16.receiver = self;
  v16.super_class = HMDCloudZoneInformation;
  v8 = [(HMDCloudZoneInformation *)&v16 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    ownerName = v8->_ownerName;
    v8->_ownerName = v9;

    if (uuidCopy)
    {
      uUID = [uuidCopy copy];
    }

    else
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
    }

    v12 = uUID;
    v13 = [MEMORY[0x277D0F890] hmf_cachedInstanceForNSUUID:uUID];
    uuid = v8->_uuid;
    v8->_uuid = v13;

    v8->_schemaVersion = 2;
    v8->_firstFetch = 1;
  }

  return v8;
}

- (HMDCloudZoneInformation)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)cloudZonesArrayWithCloudZones:(id)zones
{
  v19 = *MEMORY[0x277D85DE8];
  zonesCopy = zones;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(zonesCopy, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = zonesCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        uuid = [*(*(&v14 + 1) + 8 * i) uuid];
        uUIDString = [uuid UUIDString];

        [v4 addObject:uUIDString];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)cloudZoneInformationWithCloudZones:(id)zones
{
  v40 = *MEMORY[0x277D85DE8];
  zonesCopy = zones;
  v28 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(zonesCopy, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v4 = zonesCopy;
  v5 = [v4 countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v30;
    *&v6 = 138543618;
    v25 = v6;
    v26 = v4;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        uuid = [v10 uuid];
        uUIDString = [uuid UUIDString];

        ownerName = [v10 ownerName];
        v14 = ownerName;
        if (uUIDString)
        {
          v15 = ownerName == 0;
        }

        else
        {
          v15 = 1;
        }

        if (v15)
        {
          v16 = v8;
          v17 = objc_autoreleasePoolPush();
          selfCopy = self;
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v20 = HMFGetLogIdentifier();
            *buf = v25;
            v34 = v20;
            v35 = 2112;
            v36 = v10;
            _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Cannot convert zone information to zone information dictionary, %@", buf, 0x16u);

            v4 = v26;
          }

          objc_autoreleasePoolPop(v17);
          v8 = v16;
        }

        else
        {
          v37[0] = @"HM.zoneOwner";
          v37[1] = @"HM.zoneHandlesRecord";
          v38[0] = ownerName;
          v38[1] = MEMORY[0x277CBEC38];
          v37[2] = @"HM.zoneSchemaVersion";
          v21 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "schemaVersion")}];
          v38[2] = v21;
          v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:3];
          [v28 setObject:v22 forKeyedSubscript:uUIDString];
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v29 objects:v39 count:16];
    }

    while (v7);
  }

  v23 = *MEMORY[0x277D85DE8];

  return v28;
}

+ (id)cloudZonesWithDictionary:(id)dictionary
{
  v27 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(dictionaryCopy, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [dictionaryCopy allKeys];
  v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v10 = [dictionaryCopy objectForKeyedSubscript:v9];
        v11 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v9];
        v12 = [v10 objectForKeyedSubscript:@"HM.zoneOwner"];
        v13 = [[HMDCloudZoneInformation alloc] initWithOwnerName:v12 uuid:v11];
        v14 = [v10 objectForKeyedSubscript:@"HM.zoneFetchFailed"];

        if (v14)
        {
          [(HMDCloudZoneInformation *)v13 setFetchFailed:1];
        }

        v15 = [v10 objectForKeyedSubscript:@"HM.zoneHandlesRecord"];

        if (v15)
        {
          [(HMDCloudZoneInformation *)v13 setHandlesCloudRecord:1];
        }

        v16 = [v10 hmf_numberForKey:@"HM.zoneSchemaVersion"];
        v17 = v16;
        if (v16)
        {
          integerValue = [v16 integerValue];
        }

        else
        {
          integerValue = 1;
        }

        [(HMDCloudZoneInformation *)v13 setSchemaVersion:integerValue];
        [v4 addObject:v13];
      }

      v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v4;
}

@end