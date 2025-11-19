@interface HMDPersonModel
+ (NSUUID)sentinelParentUUID;
+ (id)hmbProperties;
- (HMDPersonModel)initWithPerson:(id)a3;
- (NSSet)personLinks;
- (id)createPerson;
- (void)setPersonLinks:(id)a3;
@end

@implementation HMDPersonModel

+ (NSUUID)sentinelParentUUID
{
  if (sentinelParentUUID_onceToken_104418 != -1)
  {
    dispatch_once(&sentinelParentUUID_onceToken_104418, &__block_literal_global_10);
  }

  v3 = sentinelParentUUID_sentinelParentUUID_104419;

  return v3;
}

uint64_t __36__HMDPersonModel_sentinelParentUUID__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"0F42F4A3-0819-4FE2-AF6C-498767A95771"];
  v1 = sentinelParentUUID_sentinelParentUUID_104419;
  sentinelParentUUID_sentinelParentUUID_104419 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)hmbProperties
{
  if (hmbProperties_onceToken_104424 != -1)
  {
    dispatch_once(&hmbProperties_onceToken_104424, &__block_literal_global_104425);
  }

  v3 = hmbProperties_properties_104426;

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
  v5 = hmbProperties_properties_104426;
  hmbProperties_properties_104426 = v4;

  v6 = *MEMORY[0x277D85DE8];
}

- (id)createPerson
{
  v3 = objc_alloc(MEMORY[0x277CD1C70]);
  v4 = [(HMBModel *)self hmbModelID];
  v5 = [v3 initWithUUID:v4];

  v6 = [(HMDPersonModel *)self name];
  [v5 setName:v6];

  v7 = [(HMDPersonModel *)self personLinks];
  [v5 setPersonLinks:v7];

  v8 = [v5 copy];

  return v8;
}

- (HMDPersonModel)initWithPerson:(id)a3
{
  v4 = a3;
  v5 = [v4 UUID];
  v6 = [objc_opt_class() sentinelParentUUID];
  v7 = [(HMBModel *)self initWithModelID:v5 parentModelID:v6];

  v8 = [v4 name];
  [(HMDPersonModel *)v7 setName:v8];

  v9 = [v4 personLinks];

  [(HMDPersonModel *)v7 setPersonLinks:v9];
  return v7;
}

- (void)setPersonLinks:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0;
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v12];
  v6 = v12;
  if (v5)
  {
    [(HMDPersonModel *)self setPersonLinksData:v5];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Failed to encode person links: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (NSSet)personLinks
{
  v23[2] = *MEMORY[0x277D85DE8];
  v3 = [(HMDPersonModel *)self personLinksData];
  if (v3)
  {
    v4 = MEMORY[0x277CCAAC8];
    v5 = MEMORY[0x277CBEB98];
    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
    v7 = [v5 setWithArray:v6];
    v18 = 0;
    v8 = [v4 unarchivedObjectOfClasses:v7 fromData:v3 error:&v18];
    v9 = v18;

    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543618;
        v20 = v15;
        v21 = 2112;
        v22 = v9;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode person links: %@", buf, 0x16u);
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