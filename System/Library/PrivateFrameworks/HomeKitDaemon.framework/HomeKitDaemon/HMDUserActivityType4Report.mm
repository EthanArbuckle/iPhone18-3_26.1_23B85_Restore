@interface HMDUserActivityType4Report
- (BOOL)isEqual:(id)a3;
- (HMDUserActivityType4Report)initWithUser:(id)a3 state:(unint64_t)a4 withReason:(unint64_t)a5 changedTimestamp:(id)a6 lastUpdateTimestamp:(id)a7;
- (id)attributeDescriptions;
- (id)copyReportWithChangedTimestamp:(id)a3;
- (id)copyReportWithLastUpdateTimestamp:(id)a3 reason:(unint64_t)a4;
- (id)initFromMessagePayload:(id)a3 withUser:(id)a4;
- (id)serializedRemoteMessagePayload;
@end

@implementation HMDUserActivityType4Report

- (id)attributeDescriptions
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = HMDUserActivityType4Report;
  v3 = [(HMDUserActivityReport *)&v12 attributeDescriptions];
  v4 = [v3 mutableCopy];

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

- (id)copyReportWithLastUpdateTimestamp:(id)a3 reason:(unint64_t)a4
{
  v6 = a3;
  v7 = [HMDUserActivityType4Report alloc];
  v8 = [(HMDUserActivityReport *)self user];
  v9 = [(HMDUserActivityType4Report *)self state];
  v10 = [(HMDUserActivityReport *)self changedTimestamp];
  v11 = [(HMDUserActivityType4Report *)v7 initWithUser:v8 state:v9 withReason:a4 changedTimestamp:v10 lastUpdateTimestamp:v6];

  return v11;
}

- (id)copyReportWithChangedTimestamp:(id)a3
{
  v4 = a3;
  v5 = [HMDUserActivityType4Report alloc];
  v6 = [(HMDUserActivityReport *)self user];
  v7 = [(HMDUserActivityType4Report *)self state];
  v8 = [(HMDUserActivityReport *)self reason];
  v9 = [(HMDUserActivityReport *)self lastUpdateTimestamp];
  v10 = [(HMDUserActivityType4Report *)v5 initWithUser:v6 state:v7 withReason:v8 changedTimestamp:v4 lastUpdateTimestamp:v9];

  return v10;
}

- (id)serializedRemoteMessagePayload
{
  v8.receiver = self;
  v8.super_class = HMDUserActivityType4Report;
  v3 = [(HMDUserActivityReport *)&v8 serializedRemoteMessagePayload];
  v4 = [v3 mutableCopy];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUserActivityType4Report state](self, "state")}];
  [v4 setObject:v5 forKeyedSubscript:@"HAS.V.UV"];

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
  if (v6 && (v10.receiver = self, v10.super_class = HMDUserActivityType4Report, [(HMDUserActivityReport *)&v10 isEqual:v6]))
  {
    v7 = [(HMDUserActivityType4Report *)self state];
    v8 = v7 == [v6 state];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)initFromMessagePayload:(id)a3 withUser:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 hmf_numberForKey:@"HAS.V.UV"];
  if (v8)
  {
    v17.receiver = self;
    v17.super_class = HMDUserActivityType4Report;
    v9 = [(HMDUserActivityReport *)&v17 initFromMessagePayload:v6 withUser:v7];
    if (v9)
    {
      v9[5] = [v8 integerValue];
    }

    v10 = v9;
    v11 = v10;
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v10 = self;
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

- (HMDUserActivityType4Report)initWithUser:(id)a3 state:(unint64_t)a4 withReason:(unint64_t)a5 changedTimestamp:(id)a6 lastUpdateTimestamp:(id)a7
{
  v9.receiver = self;
  v9.super_class = HMDUserActivityType4Report;
  result = [(HMDUserActivityReport *)&v9 initWithUser:a3 withReason:a5 changedTimestamp:a6 lastUpdateTimestamp:a7];
  if (result)
  {
    result->_state = a4;
  }

  return result;
}

@end