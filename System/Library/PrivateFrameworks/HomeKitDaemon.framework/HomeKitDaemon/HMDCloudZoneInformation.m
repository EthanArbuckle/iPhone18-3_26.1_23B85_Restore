@interface HMDCloudZoneInformation
+ (id)cloudZoneInformationWithCloudZones:(id)a3;
+ (id)cloudZonesArrayWithCloudZones:(id)a3;
+ (id)cloudZonesWithDictionary:(id)a3;
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMDCloudZoneInformation)init;
- (HMDCloudZoneInformation)initWithCoder:(id)a3;
- (HMDCloudZoneInformation)initWithOwnerName:(id)a3 uuid:(id)a4;
- (id)descriptionWithPointer:(BOOL)a3;
- (id)emptyModelObjectWithChangeType:(unint64_t)a3 parent:(id)a4;
- (id)modelObjectWithChangeType:(unint64_t)a3 version:(int64_t)a4 parent:(id)a5;
- (id)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
- (void)updateCloudZoneInformationWithModel:(id)a3 message:(id)a4;
@end

@implementation HMDCloudZoneInformation

- (id)emptyModelObjectWithChangeType:(unint64_t)a3 parent:(id)a4
{
  v6 = a4;
  v7 = [HMDCloudZoneInformationModel alloc];
  v8 = [(HMDCloudZoneInformation *)self uuid];
  v9 = [(HMDBackingStoreModelObject *)v7 initWithObjectChangeType:a3 uuid:v8 parentUUID:v6];

  return v9;
}

- (id)modelObjectWithChangeType:(unint64_t)a3 version:(int64_t)a4 parent:(id)a5
{
  v6 = [(HMDCloudZoneInformation *)self emptyModelObjectWithChangeType:a3 parent:a5];
  v7 = [(HMDCloudZoneInformation *)self ownerName];
  [v6 setOwnerName:v7];

  return v6;
}

- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5
{
  v11 = a4;
  v7 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v11;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (v9)
  {
    [(HMDCloudZoneInformation *)self updateCloudZoneInformationWithModel:v9 message:v7];
    v10 = [v7 transactionResult];
    [v10 markChanged];
    [v7 respondWithPayload:0];
  }
}

- (void)updateCloudZoneInformationWithModel:(id)a3 message:(id)a4
{
  v8 = a3;
  [(HMDCloudZoneInformation *)self setZoneCreated:1];
  v5 = [v8 setProperties];
  v6 = [v5 containsObject:@"ownerName"];

  if (v6)
  {
    v7 = [v8 ownerName];
    [(HMDCloudZoneInformation *)self setOwnerName:v7];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(HMDCloudZoneInformation *)self uuid];
  v5 = [v4 UUIDString];
  [v7 encodeObject:v5 forKey:@"HM.zoneUUID"];

  v6 = [(HMDCloudZoneInformation *)self ownerName];
  [v7 encodeObject:v6 forKey:@"HM.zoneOwner"];

  [v7 encodeBool:-[HMDCloudZoneInformation didFetchFailed](self forKey:{"didFetchFailed"), @"HM.zoneFetchFailed"}];
  [v7 encodeBool:-[HMDCloudZoneInformation isZoneCreated](self forKey:{"isZoneCreated"), @"HM.zoneZoneCreated"}];
  [v7 encodeInteger:-[HMDCloudZoneInformation schemaVersion](self forKey:{"schemaVersion"), @"HM.zoneSchemaVersion"}];
}

- (HMDCloudZoneInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.zoneUUID"];
  v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v5];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.zoneOwner"];
  v8 = [(HMDCloudZoneInformation *)self initWithOwnerName:v7 uuid:v6];
  if (v8)
  {
    if ([v4 containsValueForKey:@"HM.zoneFetchFailed"])
    {
      v8->_fetchFailed = [v4 decodeBoolForKey:@"HM.zoneFetchFailed"];
    }

    if ([v4 containsValueForKey:@"HM.zoneZoneCreated"])
    {
      v8->_zoneCreated = [v4 decodeBoolForKey:@"HM.zoneZoneCreated"];
    }

    else
    {
      v8->_zoneCreated = 1;
    }

    if ([v4 containsValueForKey:@"HM.zoneSchemaVersion"])
    {
      v8->_schemaVersion = [v4 decodeIntegerForKey:@"HM.zoneSchemaVersion"];
    }
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(HMDCloudZoneInformation *)v4 uuid];
      v6 = [(HMDCloudZoneInformation *)self uuid];
      v7 = [v5 isEqual:v6];
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
  v2 = [(HMDCloudZoneInformation *)self uuid];
  v3 = [v2 hash];

  return v3;
}

- (id)descriptionWithPointer:(BOOL)a3
{
  v3 = a3;
  v5 = MEMORY[0x277CCACA8];
  v6 = [(HMDCloudZoneInformation *)self shortDescription];
  if (v3)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@" %p", self];
  }

  else
  {
    v7 = &stru_283CF9D50;
  }

  v8 = [(HMDCloudZoneInformation *)self ownerName];
  v9 = [v5 stringWithFormat:@"<%@%@, Owner = %@>", v6, v7, v8];

  if (v3)
  {
  }

  return v9;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [objc_opt_class() shortDescription];
  v5 = [(HMDCloudZoneInformation *)self uuid];
  v6 = [v5 UUIDString];
  v7 = [v3 stringWithFormat:@"%@ %@", v4, v6];

  return v7;
}

- (HMDCloudZoneInformation)initWithOwnerName:(id)a3 uuid:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = HMDCloudZoneInformation;
  v8 = [(HMDCloudZoneInformation *)&v16 init];
  if (v8)
  {
    v9 = [v6 copy];
    ownerName = v8->_ownerName;
    v8->_ownerName = v9;

    if (v7)
    {
      v11 = [v7 copy];
    }

    else
    {
      v11 = [MEMORY[0x277CCAD78] UUID];
    }

    v12 = v11;
    v13 = [MEMORY[0x277D0F890] hmf_cachedInstanceForNSUUID:v11];
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

+ (id)cloudZonesArrayWithCloudZones:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
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

        v10 = [*(*(&v14 + 1) + 8 * i) uuid];
        v11 = [v10 UUIDString];

        [v4 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)cloudZoneInformationWithCloudZones:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v28 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v4 = v3;
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
        v11 = [v10 uuid];
        v12 = [v11 UUIDString];

        v13 = [v10 ownerName];
        v14 = v13;
        if (v12)
        {
          v15 = v13 == 0;
        }

        else
        {
          v15 = 1;
        }

        if (v15)
        {
          v16 = v8;
          v17 = objc_autoreleasePoolPush();
          v18 = a1;
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
          v38[0] = v13;
          v38[1] = MEMORY[0x277CBEC38];
          v37[2] = @"HM.zoneSchemaVersion";
          v21 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "schemaVersion")}];
          v38[2] = v21;
          v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:3];
          [v28 setObject:v22 forKeyedSubscript:v12];
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v29 objects:v39 count:16];
    }

    while (v7);
  }

  v23 = *MEMORY[0x277D85DE8];

  return v28;
}

+ (id)cloudZonesWithDictionary:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [v3 allKeys];
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
        v10 = [v3 objectForKeyedSubscript:v9];
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
          v18 = [v16 integerValue];
        }

        else
        {
          v18 = 1;
        }

        [(HMDCloudZoneInformation *)v13 setSchemaVersion:v18];
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