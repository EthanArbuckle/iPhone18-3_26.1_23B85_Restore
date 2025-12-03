@interface HMDAccessoryNetworkAccessViolation
+ (id)noViolation;
- (BOOL)hasCurrentViolation;
- (BOOL)isEqual:(id)equal;
- (HMDAccessoryNetworkAccessViolation)initWithCoder:(id)coder;
- (HMDAccessoryNetworkAccessViolation)initWithLastViolationDate:(id)date lastViolationResetDate:(id)resetDate;
- (HMDAccessoryNetworkAccessViolation)initWithLastViolationTimeInterval:(id)interval lastViolationResetTimeInterval:(id)timeInterval;
- (id)attributeDescriptions;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDAccessoryNetworkAccessViolation

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  lastViolationDate = [(HMDAccessoryNetworkAccessViolation *)self lastViolationDate];
  v5 = [v3 initWithName:@"lastViolationDate" value:lastViolationDate];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  lastResetDate = [(HMDAccessoryNetworkAccessViolation *)self lastResetDate];
  v8 = [v6 initWithName:@"lastResetDate" value:lastResetDate];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (![coderCopy hmd_isForXPCTransport] || objc_msgSend(coderCopy, "hmd_isForXPCTransportEntitledForSPIAccess"))
  {
    lastViolationDate = [(HMDAccessoryNetworkAccessViolation *)self lastViolationDate];
    [coderCopy encodeObject:lastViolationDate forKey:*MEMORY[0x277CCEBA8]];

    lastResetDate = [(HMDAccessoryNetworkAccessViolation *)self lastResetDate];
    [coderCopy encodeObject:lastResetDate forKey:*MEMORY[0x277CCEBB0]];
  }
}

- (HMDAccessoryNetworkAccessViolation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCEBA8]];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCEBB0]];

  v7 = [(HMDAccessoryNetworkAccessViolation *)self initWithLastViolationDate:v5 lastViolationResetDate:v6];
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6 && ([(HMDAccessoryNetworkAccessViolation *)self lastViolationDate], v7 = objc_claimAutoreleasedReturnValue(), [(HMDAccessoryNetworkAccessViolation *)v6 lastViolationDate], v8 = objc_claimAutoreleasedReturnValue(), v9 = HMFEqualObjects(), v8, v7, v9))
    {
      lastResetDate = [(HMDAccessoryNetworkAccessViolation *)self lastResetDate];
      lastResetDate2 = [(HMDAccessoryNetworkAccessViolation *)v6 lastResetDate];
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
  lastViolationDate = [(HMDAccessoryNetworkAccessViolation *)self lastViolationDate];
  v4 = [lastViolationDate hash];
  lastResetDate = [(HMDAccessoryNetworkAccessViolation *)self lastResetDate];
  v6 = [lastResetDate hash];

  return v6 ^ v4;
}

- (HMDAccessoryNetworkAccessViolation)initWithLastViolationTimeInterval:(id)interval lastViolationResetTimeInterval:(id)timeInterval
{
  timeIntervalCopy = timeInterval;
  v7 = DateFromEpochInterval(interval);
  v8 = DateFromEpochInterval(timeIntervalCopy);

  v9 = [(HMDAccessoryNetworkAccessViolation *)self initWithLastViolationDate:v7 lastViolationResetDate:v8];
  return v9;
}

- (BOOL)hasCurrentViolation
{
  lastViolationDate = [(HMDAccessoryNetworkAccessViolation *)self lastViolationDate];

  if (!lastViolationDate)
  {
    return 0;
  }

  lastResetDate = [(HMDAccessoryNetworkAccessViolation *)self lastResetDate];

  if (!lastResetDate)
  {
    return 1;
  }

  lastViolationDate2 = [(HMDAccessoryNetworkAccessViolation *)self lastViolationDate];
  lastResetDate2 = [(HMDAccessoryNetworkAccessViolation *)self lastResetDate];
  v7 = [lastViolationDate2 compare:lastResetDate2] == 1;

  return v7;
}

- (HMDAccessoryNetworkAccessViolation)initWithLastViolationDate:(id)date lastViolationResetDate:(id)resetDate
{
  dateCopy = date;
  resetDateCopy = resetDate;
  v12.receiver = self;
  v12.super_class = HMDAccessoryNetworkAccessViolation;
  v9 = [(HMDAccessoryNetworkAccessViolation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_lastViolationDate, date);
    objc_storeStrong(&v10->_lastResetDate, resetDate);
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