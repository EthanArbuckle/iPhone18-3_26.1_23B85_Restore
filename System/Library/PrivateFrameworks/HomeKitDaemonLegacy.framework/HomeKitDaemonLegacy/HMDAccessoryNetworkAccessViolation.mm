@interface HMDAccessoryNetworkAccessViolation
+ (id)noViolation;
- (BOOL)hasCurrentViolation;
- (BOOL)isEqual:(id)a3;
- (HMDAccessoryNetworkAccessViolation)initWithCoder:(id)a3;
- (HMDAccessoryNetworkAccessViolation)initWithLastViolationDate:(id)a3 lastViolationResetDate:(id)a4;
- (HMDAccessoryNetworkAccessViolation)initWithLastViolationTimeInterval:(id)a3 lastViolationResetTimeInterval:(id)a4;
- (id)attributeDescriptions;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDAccessoryNetworkAccessViolation

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDAccessoryNetworkAccessViolation *)self lastViolationDate];
  v5 = [v3 initWithName:@"lastViolationDate" value:v4];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDAccessoryNetworkAccessViolation *)self lastResetDate];
  v8 = [v6 initWithName:@"lastResetDate" value:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  if (![v6 hmd_isForXPCTransport] || objc_msgSend(v6, "hmd_isForXPCTransportEntitledForSPIAccess"))
  {
    v4 = [(HMDAccessoryNetworkAccessViolation *)self lastViolationDate];
    [v6 encodeObject:v4 forKey:*MEMORY[0x277CCEBA8]];

    v5 = [(HMDAccessoryNetworkAccessViolation *)self lastResetDate];
    [v6 encodeObject:v5 forKey:*MEMORY[0x277CCEBB0]];
  }
}

- (HMDAccessoryNetworkAccessViolation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCEBA8]];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCEBB0]];

  v7 = [(HMDAccessoryNetworkAccessViolation *)self initWithLastViolationDate:v5 lastViolationResetDate:v6];
  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6 && ([(HMDAccessoryNetworkAccessViolation *)self lastViolationDate], v7 = objc_claimAutoreleasedReturnValue(), [(HMDAccessoryNetworkAccessViolation *)v6 lastViolationDate], v8 = objc_claimAutoreleasedReturnValue(), v9 = HMFEqualObjects(), v8, v7, v9))
    {
      v10 = [(HMDAccessoryNetworkAccessViolation *)self lastResetDate];
      v11 = [(HMDAccessoryNetworkAccessViolation *)v6 lastResetDate];
      v12 = HMFEqualObjects();
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(HMDAccessoryNetworkAccessViolation *)self lastViolationDate];
  v4 = [v3 hash];
  v5 = [(HMDAccessoryNetworkAccessViolation *)self lastResetDate];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (HMDAccessoryNetworkAccessViolation)initWithLastViolationTimeInterval:(id)a3 lastViolationResetTimeInterval:(id)a4
{
  v6 = a4;
  v7 = DateFromEpochInterval(a3);
  v8 = DateFromEpochInterval(v6);

  v9 = [(HMDAccessoryNetworkAccessViolation *)self initWithLastViolationDate:v7 lastViolationResetDate:v8];
  return v9;
}

- (BOOL)hasCurrentViolation
{
  v3 = [(HMDAccessoryNetworkAccessViolation *)self lastViolationDate];

  if (!v3)
  {
    return 0;
  }

  v4 = [(HMDAccessoryNetworkAccessViolation *)self lastResetDate];

  if (!v4)
  {
    return 1;
  }

  v5 = [(HMDAccessoryNetworkAccessViolation *)self lastViolationDate];
  v6 = [(HMDAccessoryNetworkAccessViolation *)self lastResetDate];
  v7 = [v5 compare:v6] == 1;

  return v7;
}

- (HMDAccessoryNetworkAccessViolation)initWithLastViolationDate:(id)a3 lastViolationResetDate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDAccessoryNetworkAccessViolation;
  v9 = [(HMDAccessoryNetworkAccessViolation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_lastViolationDate, a3);
    objc_storeStrong(&v10->_lastResetDate, a4);
  }

  return v10;
}

+ (id)noViolation
{
  if (noViolation_onceToken != -1)
  {
    dispatch_once(&noViolation_onceToken, &__block_literal_global_70980);
  }

  v3 = noViolation_noViolation;

  return v3;
}

uint64_t __49__HMDAccessoryNetworkAccessViolation_noViolation__block_invoke()
{
  v0 = [[HMDAccessoryNetworkAccessViolation alloc] initWithLastViolationDate:0 lastViolationResetDate:0];
  v1 = noViolation_noViolation;
  noViolation_noViolation = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end