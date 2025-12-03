@interface HMDUserActivityType4Report
- (BOOL)isEqual:(id)equal;
- (HMDUserActivityType4Report)initWithUser:(id)user state:(unint64_t)state withReason:(unint64_t)reason changedTimestamp:(id)timestamp lastUpdateTimestamp:(id)updateTimestamp;
- (id)attributeDescriptions;
- (id)copyReportWithChangedTimestamp:(id)timestamp;
- (id)copyReportWithLastUpdateTimestamp:(id)timestamp reason:(unint64_t)reason;
- (id)initFromMessagePayload:(id)payload withUser:(id)user;
- (id)serializedRemoteMessagePayload;
@end

@implementation HMDUserActivityType4Report

- (id)attributeDescriptions
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = HMDUserActivityType4Report;
  attributeDescriptions = [(HMDUserActivityReport *)&v12 attributeDescriptions];
  v4 = [attributeDescriptions mutableCopy];

  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v6 = HMDUserVacationStateAsString([(HMDUserActivityType4Report *)self state]);
  v7 = [v5 initWithName:@"State" value:v6];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  [v4 addObjectsFromArray:v8];

  v9 = [v4 copy];
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)copyReportWithLastUpdateTimestamp:(id)timestamp reason:(unint64_t)reason
{
  timestampCopy = timestamp;
  v7 = [HMDUserActivityType4Report alloc];
  user = [(HMDUserActivityReport *)self user];
  state = [(HMDUserActivityType4Report *)self state];
  changedTimestamp = [(HMDUserActivityReport *)self changedTimestamp];
  v11 = [(HMDUserActivityType4Report *)v7 initWithUser:user state:state withReason:reason changedTimestamp:changedTimestamp lastUpdateTimestamp:timestampCopy];

  return v11;
}

- (id)copyReportWithChangedTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  v5 = [HMDUserActivityType4Report alloc];
  user = [(HMDUserActivityReport *)self user];
  state = [(HMDUserActivityType4Report *)self state];
  reason = [(HMDUserActivityReport *)self reason];
  lastUpdateTimestamp = [(HMDUserActivityReport *)self lastUpdateTimestamp];
  v10 = [(HMDUserActivityType4Report *)v5 initWithUser:user state:state withReason:reason changedTimestamp:timestampCopy lastUpdateTimestamp:lastUpdateTimestamp];

  return v10;
}

- (id)serializedRemoteMessagePayload
{
  v8.receiver = self;
  v8.super_class = HMDUserActivityType4Report;
  serializedRemoteMessagePayload = [(HMDUserActivityReport *)&v8 serializedRemoteMessagePayload];
  v4 = [serializedRemoteMessagePayload mutableCopy];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUserActivityType4Report state](self, "state")}];
  [v4 setObject:v5 forKeyedSubscript:@"HAS.V.UV"];

  v6 = [v4 copy];

  return v6;
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
  if (v6 && (v10.receiver = self, v10.super_class = HMDUserActivityType4Report, [(HMDUserActivityReport *)&v10 isEqual:v6]))
  {
    state = [(HMDUserActivityType4Report *)self state];
    v8 = state == [v6 state];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)initFromMessagePayload:(id)payload withUser:(id)user
{
  v20 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  userCopy = user;
  v8 = [payloadCopy hmf_numberForKey:@"HAS.V.UV"];
  if (v8)
  {
    v17.receiver = self;
    v17.super_class = HMDUserActivityType4Report;
    v9 = [(HMDUserActivityReport *)&v17 initFromMessagePayload:payloadCopy withUser:userCopy];
    if (v9)
    {
      v9[5] = [v8 integerValue];
    }

    selfCopy = v9;
    v11 = selfCopy;
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v19 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@User activity state or region state not found. Could not initialize the metadata from message payload.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v11 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

- (HMDUserActivityType4Report)initWithUser:(id)user state:(unint64_t)state withReason:(unint64_t)reason changedTimestamp:(id)timestamp lastUpdateTimestamp:(id)updateTimestamp
{
  v9.receiver = self;
  v9.super_class = HMDUserActivityType4Report;
  result = [(HMDUserActivityReport *)&v9 initWithUser:user withReason:reason changedTimestamp:timestamp lastUpdateTimestamp:updateTimestamp];
  if (result)
  {
    result->_state = state;
  }

  return result;
}

@end