@interface HMBShareUserID
+ (id)logCategory;
- (BOOL)isEqual:(id)equal;
- (HMBShareUserID)initWithCoder:(id)coder;
- (HMBShareUserID)initWithUserRecordID:(id)d;
- (id)attributeDescriptions;
- (id)logIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMBShareUserID

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  userRecordID = [(HMBShareUserID *)self userRecordID];
  [coderCopy encodeObject:userRecordID forKey:@"HMBShareUserID.CodingKey.UserRecordID"];
}

- (HMBShareUserID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMBShareUserID.CodingKey.UserRecordID"];

  if (v5)
  {
    self = [(HMBShareUserID *)self initWithUserRecordID:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (unint64_t)hash
{
  userRecordID = [(HMBShareUserID *)self userRecordID];
  v3 = [userRecordID hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      userRecordID = [(HMBShareUserID *)self userRecordID];
      userRecordID2 = [(HMBShareUserID *)v5 userRecordID];

      v8 = [userRecordID isEqual:userRecordID2];
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
  userRecordID = [(HMBShareUserID *)self userRecordID];
  v5 = [v3 initWithName:@"userRecordID" value:userRecordID];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)logIdentifier
{
  userRecordID = [(HMBShareUserID *)self userRecordID];
  recordName = [userRecordID recordName];

  return recordName;
}

- (HMBShareUserID)initWithUserRecordID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v6 = dCopy;
    v12.receiver = self;
    v12.super_class = HMBShareUserID;
    v7 = [(HMBShareUserID *)&v12 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_userRecordID, d);
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