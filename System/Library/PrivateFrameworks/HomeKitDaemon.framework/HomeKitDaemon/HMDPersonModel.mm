@interface HMDPersonModel
+ (NSUUID)sentinelParentUUID;
+ (id)hmbProperties;
- (HMDPersonModel)initWithPerson:(id)person;
- (NSSet)personLinks;
- (id)createPerson;
- (void)setPersonLinks:(id)links;
@end

@implementation HMDPersonModel

+ (NSUUID)sentinelParentUUID
{
  if (sentinelParentUUID_onceToken_156405 != -1)
  {
    dispatch_once(&sentinelParentUUID_onceToken_156405, &__block_literal_global_10_156406);
  }

  v3 = sentinelParentUUID_sentinelParentUUID_156407;

  return v3;
}

void __36__HMDPersonModel_sentinelParentUUID__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"0F42F4A3-0819-4FE2-AF6C-498767A95771"];
  v1 = sentinelParentUUID_sentinelParentUUID_156407;
  sentinelParentUUID_sentinelParentUUID_156407 = v0;
}

+ (id)hmbProperties
{
  if (hmbProperties_onceToken_156413 != -1)
  {
    dispatch_once(&hmbProperties_onceToken_156413, &__block_literal_global_156414);
  }

  v3 = hmbProperties_properties_156415;

  return v3;
}

void __31__HMDPersonModel_hmbProperties__block_invoke()
{
  v8[2] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D17100] fieldWithClass:objc_opt_class()];
  v1 = [v0 mutableCopy];

  [v1 setLoggingVisibility:1];
  v7[0] = @"name";
  v2 = [v1 copy];
  v7[1] = @"personLinksData";
  v8[0] = v2;
  v3 = [MEMORY[0x277D170B8] fieldWithClass:objc_opt_class()];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v5 = hmbProperties_properties_156415;
  hmbProperties_properties_156415 = v4;

  v6 = *MEMORY[0x277D85DE8];
}

- (id)createPerson
{
  v3 = objc_alloc(MEMORY[0x277CD1C70]);
  hmbModelID = [(HMBModel *)self hmbModelID];
  v5 = [v3 initWithUUID:hmbModelID];

  name = [(HMDPersonModel *)self name];
  [v5 setName:name];

  personLinks = [(HMDPersonModel *)self personLinks];
  [v5 setPersonLinks:personLinks];

  v8 = [v5 copy];

  return v8;
}

- (HMDPersonModel)initWithPerson:(id)person
{
  personCopy = person;
  uUID = [personCopy UUID];
  sentinelParentUUID = [objc_opt_class() sentinelParentUUID];
  v7 = [(HMBModel *)self initWithModelID:uUID parentModelID:sentinelParentUUID];

  name = [personCopy name];
  [(HMDPersonModel *)v7 setName:name];

  personLinks = [personCopy personLinks];

  [(HMDPersonModel *)v7 setPersonLinks:personLinks];
  return v7;
}

- (void)setPersonLinks:(id)links
{
  v17 = *MEMORY[0x277D85DE8];
  linksCopy = links;
  v12 = 0;
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:linksCopy requiringSecureCoding:1 error:&v12];
  v6 = v12;
  if (v5)
  {
    [(HMDPersonModel *)self setPersonLinksData:v5];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Failed to encode person links: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (NSSet)personLinks
{
  v23[2] = *MEMORY[0x277D85DE8];
  personLinksData = [(HMDPersonModel *)self personLinksData];
  if (personLinksData)
  {
    v4 = MEMORY[0x277CCAAC8];
    v5 = MEMORY[0x277CBEB98];
    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
    v7 = [v5 setWithArray:v6];
    v18 = 0;
    v8 = [v4 unarchivedObjectOfClasses:v7 fromData:personLinksData error:&v18];
    v9 = v18;

    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543618;
        v20 = v15;
        v21 = 2112;
        v22 = v9;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode person links: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      v10 = [MEMORY[0x277CBEB98] set];
    }

    v11 = v10;
  }

  else
  {
    v11 = [MEMORY[0x277CBEB98] set];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v11;
}

@end