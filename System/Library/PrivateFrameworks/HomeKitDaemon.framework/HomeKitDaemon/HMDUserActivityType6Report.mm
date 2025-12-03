@interface HMDUserActivityType6Report
- (BOOL)isEqual:(id)equal;
- (HMDUserActivityType6Report)initWithUser:(id)user state:(unint64_t)state stateEnd:(id)end withReason:(unint64_t)reason changedTimestamp:(id)timestamp lastUpdateTimestamp:(id)updateTimestamp;
- (id)attributeDescriptions;
- (id)copyReportWithChangedTimestamp:(id)timestamp;
- (id)copyReportWithLastUpdateTimestamp:(id)timestamp reason:(unint64_t)reason;
- (id)initFromMessagePayload:(id)payload withUser:(id)user;
- (id)serializedRemoteMessagePayload;
@end

@implementation HMDUserActivityType6Report

- (id)attributeDescriptions
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = HMDUserActivityType6Report;
  attributeDescriptions = [(HMDUserActivityReport *)&v16 attributeDescriptions];
  v4 = [attributeDescriptions mutableCopy];

  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v6 = HMDUserComingHomeStateAsString([(HMDUserActivityType6Report *)self state]);
  v7 = [v5 initWithName:@"State" value:v6];
  v17[0] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  stateEnd = [(HMDUserActivityType6Report *)self stateEnd];
  hmf_localTimeDescription = [stateEnd hmf_localTimeDescription];
  v11 = [v8 initWithName:@"State End" value:hmf_localTimeDescription];
  v17[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  [v4 addObjectsFromArray:v12];

  v13 = [v4 copy];
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)copyReportWithLastUpdateTimestamp:(id)timestamp reason:(unint64_t)reason
{
  timestampCopy = timestamp;
  v7 = [HMDUserActivityType6Report alloc];
  user = [(HMDUserActivityReport *)self user];
  state = [(HMDUserActivityType6Report *)self state];
  stateEnd = [(HMDUserActivityType6Report *)self stateEnd];
  changedTimestamp = [(HMDUserActivityReport *)self changedTimestamp];
  v12 = [(HMDUserActivityType6Report *)v7 initWithUser:user state:state stateEnd:stateEnd withReason:reason changedTimestamp:changedTimestamp lastUpdateTimestamp:timestampCopy];

  return v12;
}

- (id)copyReportWithChangedTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  v5 = [HMDUserActivityType6Report alloc];
  user = [(HMDUserActivityReport *)self user];
  state = [(HMDUserActivityType6Report *)self state];
  stateEnd = [(HMDUserActivityType6Report *)self stateEnd];
  reason = [(HMDUserActivityReport *)self reason];
  lastUpdateTimestamp = [(HMDUserActivityReport *)self lastUpdateTimestamp];
  v11 = [(HMDUserActivityType6Report *)v5 initWithUser:user state:state stateEnd:stateEnd withReason:reason changedTimestamp:timestampCopy lastUpdateTimestamp:lastUpdateTimestamp];

  return v11;
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
  if (v6 && (v12.receiver = self, v12.super_class = HMDUserActivityType6Report, -[HMDUserActivityReport isEqual:](&v12, sel_isEqual_, equalCopy)) && (v7 = -[HMDUserActivityType6Report state](self, "state"), v7 == [v6 state]))
  {
    stateEnd = [(HMDUserActivityType6Report *)self stateEnd];
    stateEnd2 = [v6 stateEnd];
    v10 = HMFEqualObjects();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)serializedRemoteMessagePayload
{
  v9.receiver = self;
  v9.super_class = HMDUserActivityType6Report;
  serializedRemoteMessagePayload = [(HMDUserActivityReport *)&v9 serializedRemoteMessagePayload];
  v4 = [serializedRemoteMessagePayload mutableCopy];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUserActivityType6Report state](self, "state")}];
  [v4 setObject:v5 forKeyedSubscript:@"HAS.T6.S"];

  stateEnd = [(HMDUserActivityType6Report *)self stateEnd];
  [v4 setObject:stateEnd forKeyedSubscript:@"HAS.T6.SE"];

  v7 = [v4 copy];

  return v7;
}

- (id)initFromMessagePayload:(id)payload withUser:(id)user
{
  v21 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  userCopy = user;
  v8 = [payloadCopy hmf_numberForKey:@"HAS.T6.S"];
  if (v8)
  {
    v9 = [payloadCopy hmf_dateForKey:@"HAS.T6.SE"];
    v18.receiver = self;
    v18.super_class = HMDUserActivityType6Report;
    v10 = [(HMDUserActivityReport *)&v18 initFromMessagePayload:payloadCopy withUser:userCopy];
    if (v10)
    {
      *(v10 + 5) = [v8 unsignedIntValue];
      objc_storeStrong(v10 + 6, v9);
    }

    selfCopy = v10;

    v12 = selfCopy;
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v20 = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@State not found. could not initialize the metadata from message payload.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    v12 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

- (HMDUserActivityType6Report)initWithUser:(id)user state:(unint64_t)state stateEnd:(id)end withReason:(unint64_t)reason changedTimestamp:(id)timestamp lastUpdateTimestamp:(id)updateTimestamp
{
  endCopy = end;
  v19.receiver = self;
  v19.super_class = HMDUserActivityType6Report;
  v16 = [(HMDUserActivityReport *)&v19 initWithUser:user withReason:reason changedTimestamp:timestamp lastUpdateTimestamp:updateTimestamp];
  v17 = v16;
  if (v16)
  {
    v16->_state = state;
    objc_storeStrong(&v16->_stateEnd, end);
  }

  return v17;
}

@end