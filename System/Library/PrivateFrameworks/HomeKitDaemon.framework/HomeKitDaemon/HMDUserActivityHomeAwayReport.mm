@interface HMDUserActivityHomeAwayReport
+ (id)reportFromMKFUserActivityStatus:(id)a3 withUser:(id)a4;
- (BOOL)isEqual:(id)a3;
- (HMDUserActivityHomeAwayReport)initWithUser:(id)a3 state:(unint64_t)a4 fromDevice:(id)a5 reason:(unint64_t)a6 changedTimestamp:(id)a7 lastUpdatedTimeStamp:(id)a8;
- (id)attributeDescriptions;
- (id)copyReportWithChangedTimestamp:(id)a3;
- (id)copyReportWithLastUpdateTimestamp:(id)a3 reason:(unint64_t)a4;
- (id)initFromMessagePayload:(id)a3 withUser:(id)a4 sourceDevice:(id)a5;
- (id)serializedRemoteMessagePayload;
@end

@implementation HMDUserActivityHomeAwayReport

- (id)attributeDescriptions
{
  v19[2] = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = HMDUserActivityHomeAwayReport;
  v3 = [(HMDUserActivityReport *)&v18 attributeDescriptions];
  v4 = [v3 mutableCopy];

  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v6 = [(HMDUserActivityHomeAwayReport *)self state];
  if (v6 > 3)
  {
    v7 = @"Undefined";
  }

  else
  {
    v7 = off_278672FD8[v6];
  }

  v8 = v7;
  v9 = [v5 initWithName:@"state" value:v8];
  v19[0] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  v11 = [(HMDUserActivityHomeAwayReport *)self sourceDevice];
  v12 = [v11 shortDescription];
  v13 = [v10 initWithName:@"device" value:v12];
  v19[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  [v4 addObjectsFromArray:v14];

  v15 = [v4 copy];
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)copyReportWithLastUpdateTimestamp:(id)a3 reason:(unint64_t)a4
{
  v6 = a3;
  v7 = [HMDUserActivityHomeAwayReport alloc];
  v8 = [(HMDUserActivityReport *)self user];
  v9 = [(HMDUserActivityHomeAwayReport *)self state];
  v10 = [(HMDUserActivityHomeAwayReport *)self sourceDevice];
  v11 = [(HMDUserActivityReport *)self changedTimestamp];
  v12 = [(HMDUserActivityHomeAwayReport *)v7 initWithUser:v8 state:v9 fromDevice:v10 reason:a4 changedTimestamp:v11 lastUpdatedTimeStamp:v6];

  return v12;
}

- (id)copyReportWithChangedTimestamp:(id)a3
{
  v4 = a3;
  v5 = [HMDUserActivityHomeAwayReport alloc];
  v6 = [(HMDUserActivityReport *)self user];
  v7 = [(HMDUserActivityHomeAwayReport *)self state];
  v8 = [(HMDUserActivityHomeAwayReport *)self sourceDevice];
  v9 = [(HMDUserActivityReport *)self reason];
  v10 = [(HMDUserActivityReport *)self lastUpdateTimestamp];
  v11 = [(HMDUserActivityHomeAwayReport *)v5 initWithUser:v6 state:v7 fromDevice:v8 reason:v9 changedTimestamp:v4 lastUpdatedTimeStamp:v10];

  return v11;
}

- (id)serializedRemoteMessagePayload
{
  v8.receiver = self;
  v8.super_class = HMDUserActivityHomeAwayReport;
  v3 = [(HMDUserActivityReport *)&v8 serializedRemoteMessagePayload];
  v4 = [v3 mutableCopy];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUserActivityHomeAwayReport state](self, "state")}];
  [v4 setObject:v5 forKeyedSubscript:@"HAS.HA.S"];

  v6 = [v4 copy];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
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
  if (v6 && (v10.receiver = self, v10.super_class = HMDUserActivityHomeAwayReport, [(HMDUserActivityReport *)&v10 isEqual:v6]))
  {
    v7 = [(HMDUserActivityHomeAwayReport *)self state];
    v8 = v7 == [v6 state];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)initFromMessagePayload:(id)a3 withUser:(id)a4 sourceDevice:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 hmf_numberForKey:@"HAS.HA.S"];
  if (v11)
  {
    v20.receiver = self;
    v20.super_class = HMDUserActivityHomeAwayReport;
    v12 = [(HMDUserActivityReport *)&v20 initFromMessagePayload:v8 withUser:v9];
    if (v12)
    {
      *(v12 + 5) = [v11 unsignedIntValue];
      objc_storeStrong(v12 + 6, a5);
    }

    v13 = v12;
    v14 = v13;
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v13 = self;
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

- (HMDUserActivityHomeAwayReport)initWithUser:(id)a3 state:(unint64_t)a4 fromDevice:(id)a5 reason:(unint64_t)a6 changedTimestamp:(id)a7 lastUpdatedTimeStamp:(id)a8
{
  v15 = a5;
  v19.receiver = self;
  v19.super_class = HMDUserActivityHomeAwayReport;
  v16 = [(HMDUserActivityReport *)&v19 initWithUser:a3 withReason:a6 changedTimestamp:a7 lastUpdateTimestamp:a8];
  v17 = v16;
  if (v16)
  {
    v16->_state = a4;
    objc_storeStrong(&v16->_sourceDevice, a5);
  }

  return v17;
}

+ (id)reportFromMKFUserActivityStatus:(id)a3 withUser:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 type];
  v8 = [v7 unsignedIntValue];

  if (v8 == 1)
  {
    v9 = [HMDUserActivityHomeAwayReport alloc];
    v10 = [v5 state];
    v11 = [v10 unsignedIntegerValue];
    v12 = [v5 statusChangeReason];
    v13 = [v12 unsignedIntegerValue];
    v14 = [v5 statusChangedTimestamp];
    v15 = [v5 lastReportTimestamp];
    v16 = [(HMDUserActivityHomeAwayReport *)v9 initWithUser:v6 state:v11 fromDevice:0 reason:v13 changedTimestamp:v14 lastUpdatedTimeStamp:v15];

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