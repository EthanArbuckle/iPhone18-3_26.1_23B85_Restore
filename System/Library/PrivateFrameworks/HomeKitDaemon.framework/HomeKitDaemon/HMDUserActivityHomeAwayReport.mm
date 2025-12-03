@interface HMDUserActivityHomeAwayReport
+ (id)reportFromMKFUserActivityStatus:(id)status withUser:(id)user;
- (BOOL)isEqual:(id)equal;
- (HMDUserActivityHomeAwayReport)initWithUser:(id)user state:(unint64_t)state fromDevice:(id)device reason:(unint64_t)reason changedTimestamp:(id)timestamp lastUpdatedTimeStamp:(id)stamp;
- (id)attributeDescriptions;
- (id)copyReportWithChangedTimestamp:(id)timestamp;
- (id)copyReportWithLastUpdateTimestamp:(id)timestamp reason:(unint64_t)reason;
- (id)initFromMessagePayload:(id)payload withUser:(id)user sourceDevice:(id)device;
- (id)serializedRemoteMessagePayload;
@end

@implementation HMDUserActivityHomeAwayReport

- (id)attributeDescriptions
{
  v19[2] = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = HMDUserActivityHomeAwayReport;
  attributeDescriptions = [(HMDUserActivityReport *)&v18 attributeDescriptions];
  v4 = [attributeDescriptions mutableCopy];

  v5 = objc_alloc(MEMORY[0x277D0F778]);
  state = [(HMDUserActivityHomeAwayReport *)self state];
  if (state > 3)
  {
    v7 = @"Undefined";
  }

  else
  {
    v7 = off_278672FD8[state];
  }

  v8 = v7;
  v9 = [v5 initWithName:@"state" value:v8];
  v19[0] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  sourceDevice = [(HMDUserActivityHomeAwayReport *)self sourceDevice];
  shortDescription = [sourceDevice shortDescription];
  v13 = [v10 initWithName:@"device" value:shortDescription];
  v19[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  [v4 addObjectsFromArray:v14];

  v15 = [v4 copy];
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)copyReportWithLastUpdateTimestamp:(id)timestamp reason:(unint64_t)reason
{
  timestampCopy = timestamp;
  v7 = [HMDUserActivityHomeAwayReport alloc];
  user = [(HMDUserActivityReport *)self user];
  state = [(HMDUserActivityHomeAwayReport *)self state];
  sourceDevice = [(HMDUserActivityHomeAwayReport *)self sourceDevice];
  changedTimestamp = [(HMDUserActivityReport *)self changedTimestamp];
  v12 = [(HMDUserActivityHomeAwayReport *)v7 initWithUser:user state:state fromDevice:sourceDevice reason:reason changedTimestamp:changedTimestamp lastUpdatedTimeStamp:timestampCopy];

  return v12;
}

- (id)copyReportWithChangedTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  v5 = [HMDUserActivityHomeAwayReport alloc];
  user = [(HMDUserActivityReport *)self user];
  state = [(HMDUserActivityHomeAwayReport *)self state];
  sourceDevice = [(HMDUserActivityHomeAwayReport *)self sourceDevice];
  reason = [(HMDUserActivityReport *)self reason];
  lastUpdateTimestamp = [(HMDUserActivityReport *)self lastUpdateTimestamp];
  v11 = [(HMDUserActivityHomeAwayReport *)v5 initWithUser:user state:state fromDevice:sourceDevice reason:reason changedTimestamp:timestampCopy lastUpdatedTimeStamp:lastUpdateTimestamp];

  return v11;
}

- (id)serializedRemoteMessagePayload
{
  v8.receiver = self;
  v8.super_class = HMDUserActivityHomeAwayReport;
  serializedRemoteMessagePayload = [(HMDUserActivityReport *)&v8 serializedRemoteMessagePayload];
  v4 = [serializedRemoteMessagePayload mutableCopy];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUserActivityHomeAwayReport state](self, "state")}];
  [v4 setObject:v5 forKeyedSubscript:@"HAS.HA.S"];

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
  if (v6 && (v10.receiver = self, v10.super_class = HMDUserActivityHomeAwayReport, [(HMDUserActivityReport *)&v10 isEqual:v6]))
  {
    state = [(HMDUserActivityHomeAwayReport *)self state];
    v8 = state == [v6 state];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)initFromMessagePayload:(id)payload withUser:(id)user sourceDevice:(id)device
{
  v23 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  userCopy = user;
  deviceCopy = device;
  v11 = [payloadCopy hmf_numberForKey:@"HAS.HA.S"];
  if (v11)
  {
    v20.receiver = self;
    v20.super_class = HMDUserActivityHomeAwayReport;
    v12 = [(HMDUserActivityReport *)&v20 initFromMessagePayload:payloadCopy withUser:userCopy];
    if (v12)
    {
      *(v12 + 5) = [v11 unsignedIntValue];
      objc_storeStrong(v12 + 6, device);
    }

    selfCopy = v12;
    v14 = selfCopy;
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@State not found. could not initialize the metadata from message payload.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v14 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v14;
}

- (HMDUserActivityHomeAwayReport)initWithUser:(id)user state:(unint64_t)state fromDevice:(id)device reason:(unint64_t)reason changedTimestamp:(id)timestamp lastUpdatedTimeStamp:(id)stamp
{
  deviceCopy = device;
  v19.receiver = self;
  v19.super_class = HMDUserActivityHomeAwayReport;
  v16 = [(HMDUserActivityReport *)&v19 initWithUser:user withReason:reason changedTimestamp:timestamp lastUpdateTimestamp:stamp];
  v17 = v16;
  if (v16)
  {
    v16->_state = state;
    objc_storeStrong(&v16->_sourceDevice, device);
  }

  return v17;
}

+ (id)reportFromMKFUserActivityStatus:(id)status withUser:(id)user
{
  statusCopy = status;
  userCopy = user;
  type = [statusCopy type];
  unsignedIntValue = [type unsignedIntValue];

  if (unsignedIntValue == 1)
  {
    v9 = [HMDUserActivityHomeAwayReport alloc];
    state = [statusCopy state];
    unsignedIntegerValue = [state unsignedIntegerValue];
    statusChangeReason = [statusCopy statusChangeReason];
    unsignedIntegerValue2 = [statusChangeReason unsignedIntegerValue];
    statusChangedTimestamp = [statusCopy statusChangedTimestamp];
    lastReportTimestamp = [statusCopy lastReportTimestamp];
    v16 = [(HMDUserActivityHomeAwayReport *)v9 initWithUser:userCopy state:unsignedIntegerValue fromDevice:0 reason:unsignedIntegerValue2 changedTimestamp:statusChangedTimestamp lastUpdatedTimeStamp:lastReportTimestamp];

    return v16;
  }

  else
  {
    v18 = _HMFPreconditionFailure();
    [(MKFCKAccessory *)v18 _importOwnerSettingsIntoLocalModel:v19 context:v20];
  }

  return result;
}

@end