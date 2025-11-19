@interface HMBShareUserID
+ (id)logCategory;
- (BOOL)isEqual:(id)a3;
- (HMBShareUserID)initWithCoder:(id)a3;
- (HMBShareUserID)initWithUserRecordID:(id)a3;
- (id)attributeDescriptions;
- (id)logIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMBShareUserID

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMBShareUserID *)self userRecordID];
  [v4 encodeObject:v5 forKey:@"HMBShareUserID.CodingKey.UserRecordID"];
}

- (HMBShareUserID)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMBShareUserID.CodingKey.UserRecordID"];

  if (v5)
  {
    self = [(HMBShareUserID *)self initWithUserRecordID:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v2 = [(HMBShareUserID *)self userRecordID];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HMBShareUserID *)self userRecordID];
      v7 = [(HMBShareUserID *)v5 userRecordID];

      v8 = [v6 isEqual:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMBShareUserID *)self userRecordID];
  v5 = [v3 initWithName:@"userRecordID" value:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)logIdentifier
{
  v2 = [(HMBShareUserID *)self userRecordID];
  v3 = [v2 recordName];

  return v3;
}

- (HMBShareUserID)initWithUserRecordID:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v12.receiver = self;
    v12.super_class = HMBShareUserID;
    v7 = [(HMBShareUserID *)&v12 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_userRecordID, a3);
    }

    return v8;
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    return +[(HMBShareUserID *)v10];
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0, &__block_literal_global_2144);
  }

  v3 = logCategory__hmf_once_v1;

  return v3;
}

uint64_t __29__HMBShareUserID_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1;
  logCategory__hmf_once_v1 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end