@interface HMDUserActivityReport
+ (id)logCategory;
- (BOOL)isEqual:(id)equal;
- (BOOL)isExpiredWithCurrentDate:(id)date validInterval:(double)interval;
- (HMDUserActivityReport)initWithUser:(id)user withReason:(unint64_t)reason changedTimestamp:(id)timestamp lastUpdateTimestamp:(id)updateTimestamp;
- (id)attributeDescriptions;
- (id)changedTimestampFromReason:(unint64_t)reason lastUpdateTimestamp:(id)timestamp;
- (id)copyReportWithChangedTimestamp:(id)timestamp;
- (id)copyReportWithLastUpdateTimestamp:(id)timestamp reason:(unint64_t)reason;
- (id)initFromMessagePayload:(id)payload withUser:(id)user;
- (id)serializedRemoteMessagePayload;
- (unint64_t)contributorType;
@end

@implementation HMDUserActivityReport

- (id)attributeDescriptions
{
  v21[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  user = [(HMDUserActivityReport *)self user];
  uuid = [user uuid];
  v4 = [v3 initWithName:@"user" value:uuid];
  v21[0] = v4;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v6 = HMDUserActivityStateDetectorUpdateReasonAsString([(HMDUserActivityReport *)self reason]);
  v7 = [v5 initWithName:@"reason" value:v6];
  v21[1] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  changedTimestamp = [(HMDUserActivityReport *)self changedTimestamp];
  hmf_localTimeDescription = [changedTimestamp hmf_localTimeDescription];
  v11 = [v8 initWithName:@"changedTimestamp" value:hmf_localTimeDescription];
  v21[2] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  lastUpdateTimestamp = [(HMDUserActivityReport *)self lastUpdateTimestamp];
  hmf_localTimeDescription2 = [lastUpdateTimestamp hmf_localTimeDescription];
  v15 = [v12 initWithName:@"lastUpdateTimestamp" value:hmf_localTimeDescription2];
  v21[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)copyReportWithLastUpdateTimestamp:(id)timestamp reason:(unint64_t)reason
{
  timestampCopy = timestamp;
  v6 = MEMORY[0x277CBEAD8];
  v7 = *MEMORY[0x277CBE658];
  v8 = MEMORY[0x277CCACA8];
  v9 = NSStringFromSelector(a2);
  v10 = [v8 stringWithFormat:@"You must override %@ in a subclass", v9];
  v11 = [v6 exceptionWithName:v7 reason:v10 userInfo:0];
  v12 = v11;

  objc_exception_throw(v11);
}

- (id)copyReportWithChangedTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (id)serializedRemoteMessagePayload
{
  v16[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB38];
  v15[0] = @"HAS.contributorType";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUserActivityReport contributorType](self, "contributorType")}];
  v15[1] = @"HAS.reason";
  v16[0] = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUserActivityReport reason](self, "reason")}];
  v16[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v7 = [v3 dictionaryWithDictionary:v6];

  changedTimestamp = [(HMDUserActivityReport *)self changedTimestamp];

  if (changedTimestamp)
  {
    changedTimestamp2 = [(HMDUserActivityReport *)self changedTimestamp];
    [v7 setObject:changedTimestamp2 forKeyedSubscript:@"HAS.changedTimestamp"];
  }

  lastUpdateTimestamp = [(HMDUserActivityReport *)self lastUpdateTimestamp];

  if (lastUpdateTimestamp)
  {
    lastUpdateTimestamp2 = [(HMDUserActivityReport *)self lastUpdateTimestamp];
    [v7 setObject:lastUpdateTimestamp2 forKeyedSubscript:@"HAS.lastUpdatedTimestamp"];
  }

  v12 = [v7 copy];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)isExpiredWithCurrentDate:(id)date validInterval:(double)interval
{
  dateCopy = date;
  lastUpdateTimestamp = [(HMDUserActivityReport *)self lastUpdateTimestamp];
  v8 = [lastUpdateTimestamp dateByAddingTimeInterval:interval];

  v9 = [v8 compare:dateCopy];
  return v9 == -1;
}

- (unint64_t)contributorType
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
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
  if (!v6)
  {
    goto LABEL_10;
  }

  contributorType = [(HMDUserActivityReport *)self contributorType];
  if (contributorType != [v6 contributorType])
  {
    goto LABEL_10;
  }

  user = [(HMDUserActivityReport *)self user];
  user2 = [v6 user];
  v10 = HMFEqualObjects();

  if (!v10)
  {
    goto LABEL_10;
  }

  reason = [(HMDUserActivityReport *)self reason];
  if (reason != [v6 reason])
  {
    goto LABEL_10;
  }

  changedTimestamp = [(HMDUserActivityReport *)self changedTimestamp];
  changedTimestamp2 = [v6 changedTimestamp];
  v14 = HMFEqualObjects();

  if (v14)
  {
    lastUpdateTimestamp = [(HMDUserActivityReport *)self lastUpdateTimestamp];
    lastUpdateTimestamp2 = [v6 lastUpdateTimestamp];
    v17 = HMFEqualObjects();
  }

  else
  {
LABEL_10:
    v17 = 0;
  }

  return v17;
}

- (id)initFromMessagePayload:(id)payload withUser:(id)user
{
  v33 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  userCopy = user;
  v8 = [payloadCopy hmf_numberForKey:@"HAS.reason"];
  v9 = v8;
  if (!v8)
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v24;
      v31 = 2112;
      v32 = payloadCopy;
      v25 = "%{public}@Cannot initialize report because reason is not set in payload: %@";
LABEL_16:
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, v25, buf, 0x16u);
    }

LABEL_17:

    objc_autoreleasePoolPop(v22);
    v21 = 0;
    goto LABEL_18;
  }

  unsignedIntegerValue = [v8 unsignedIntegerValue];
  if (!unsignedIntegerValue)
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v24;
      v31 = 2112;
      v32 = payloadCopy;
      v25 = "%{public}@Cannot initialize report because reason is set to unspecified in payload: %@";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v11 = unsignedIntegerValue;
  v12 = [payloadCopy hmf_dateForKey:@"HAS.changedTimestamp"];
  v13 = [MEMORY[0x277CBEAA8] now];
  if (v12 && [v12 compare:v13] != -1)
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v17 = v28 = v14;
      *buf = 138543618;
      v30 = v17;
      v31 = 2112;
      v32 = v12;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Changed timestamp is in the future: %@, setting it to the current time", buf, 0x16u);

      v14 = v28;
    }

    objc_autoreleasePoolPop(v14);
    v18 = v13;

    v12 = v18;
  }

  if (v12)
  {
    v19 = v12;
  }

  else
  {
    v19 = v13;
  }

  selfCopy2 = [(HMDUserActivityReport *)self initWithUser:userCopy withReason:v11 changedTimestamp:v19 lastUpdateTimestamp:v13];

  v21 = selfCopy2;
LABEL_18:

  v26 = *MEMORY[0x277D85DE8];
  return v21;
}

- (id)changedTimestampFromReason:(unint64_t)reason lastUpdateTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  v6 = timestampCopy;
  if (reason == 11 || reason == 4)
  {
    v7 = timestampCopy;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (HMDUserActivityReport)initWithUser:(id)user withReason:(unint64_t)reason changedTimestamp:(id)timestamp lastUpdateTimestamp:(id)updateTimestamp
{
  userCopy = user;
  timestampCopy = timestamp;
  updateTimestampCopy = updateTimestamp;
  v21.receiver = self;
  v21.super_class = HMDUserActivityReport;
  v14 = [(HMDUserActivityReport *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_user, user);
    v15->_reason = reason;
    v16 = updateTimestampCopy;
    if (!updateTimestampCopy)
    {
      v16 = [MEMORY[0x277CBEAA8] now];
    }

    objc_storeStrong(&v15->_lastUpdateTimestamp, v16);
    if (updateTimestampCopy)
    {
      if (timestampCopy)
      {
LABEL_6:
        v17 = timestampCopy;
        changedTimestamp = v15->_changedTimestamp;
        v15->_changedTimestamp = v17;
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {

      if (timestampCopy)
      {
        goto LABEL_6;
      }
    }

    v19 = [(HMDUserActivityReport *)v15 changedTimestampFromReason:reason lastUpdateTimestamp:v15->_lastUpdateTimestamp];
    changedTimestamp = v15->_changedTimestamp;
    v15->_changedTimestamp = v19;
    goto LABEL_9;
  }

LABEL_10:

  return v15;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_158573 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_158573, &__block_literal_global_158574);
  }

  v3 = logCategory__hmf_once_v5_158575;

  return v3;
}

void __36__HMDUserActivityReport_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v5_158575;
  logCategory__hmf_once_v5_158575 = v1;
}

@end