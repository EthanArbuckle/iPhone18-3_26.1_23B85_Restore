@interface HMDUserActivityType6Report
- (BOOL)isEqual:(id)a3;
- (HMDUserActivityType6Report)initWithUser:(id)a3 state:(unint64_t)a4 stateEnd:(id)a5 withReason:(unint64_t)a6 changedTimestamp:(id)a7 lastUpdateTimestamp:(id)a8;
- (id)attributeDescriptions;
- (id)copyReportWithChangedTimestamp:(id)a3;
- (id)copyReportWithLastUpdateTimestamp:(id)a3 reason:(unint64_t)a4;
- (id)initFromMessagePayload:(id)a3 withUser:(id)a4;
- (id)serializedRemoteMessagePayload;
@end

@implementation HMDUserActivityType6Report

- (id)attributeDescriptions
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = HMDUserActivityType6Report;
  v3 = [(HMDUserActivityReport *)&v16 attributeDescriptions];
  v4 = [v3 mutableCopy];

  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v6 = HMDUserComingHomeStateAsString([(HMDUserActivityType6Report *)self state]);
  v7 = [v5 initWithName:@"State" value:v6];
  v17[0] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  v9 = [(HMDUserActivityType6Report *)self stateEnd];
  v10 = [v9 hmf_localTimeDescription];
  v11 = [v8 initWithName:@"State End" value:v10];
  v17[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  [v4 addObjectsFromArray:v12];

  v13 = [v4 copy];
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)copyReportWithLastUpdateTimestamp:(id)a3 reason:(unint64_t)a4
{
  v6 = a3;
  v7 = [HMDUserActivityType6Report alloc];
  v8 = [(HMDUserActivityReport *)self user];
  v9 = [(HMDUserActivityType6Report *)self state];
  v10 = [(HMDUserActivityType6Report *)self stateEnd];
  v11 = [(HMDUserActivityReport *)self changedTimestamp];
  v12 = [(HMDUserActivityType6Report *)v7 initWithUser:v8 state:v9 stateEnd:v10 withReason:a4 changedTimestamp:v11 lastUpdateTimestamp:v6];

  return v12;
}

- (id)copyReportWithChangedTimestamp:(id)a3
{
  v4 = a3;
  v5 = [HMDUserActivityType6Report alloc];
  v6 = [(HMDUserActivityReport *)self user];
  v7 = [(HMDUserActivityType6Report *)self state];
  v8 = [(HMDUserActivityType6Report *)self stateEnd];
  v9 = [(HMDUserActivityReport *)self reason];
  v10 = [(HMDUserActivityReport *)self lastUpdateTimestamp];
  v11 = [(HMDUserActivityType6Report *)v5 initWithUser:v6 state:v7 stateEnd:v8 withReason:v9 changedTimestamp:v4 lastUpdateTimestamp:v10];

  return v11;
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
  if (v6 && (v12.receiver = self, v12.super_class = HMDUserActivityType6Report, -[HMDUserActivityReport isEqual:](&v12, sel_isEqual_, v4)) && (v7 = -[HMDUserActivityType6Report state](self, "state"), v7 == [v6 state]))
  {
    v8 = [(HMDUserActivityType6Report *)self stateEnd];
    v9 = [v6 stateEnd];
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
  v3 = [(HMDUserActivityReport *)&v9 serializedRemoteMessagePayload];
  v4 = [v3 mutableCopy];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUserActivityType6Report state](self, "state")}];
  [v4 setObject:v5 forKeyedSubscript:@"HAS.T6.S"];

  v6 = [(HMDUserActivityType6Report *)self stateEnd];
  [v4 setObject:v6 forKeyedSubscript:@"HAS.T6.SE"];

  v7 = [v4 copy];

  return v7;
}

- (id)initFromMessagePayload:(id)a3 withUser:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 hmf_numberForKey:@"HAS.T6.S"];
  if (v8)
  {
    v9 = [v6 hmf_dateForKey:@"HAS.T6.SE"];
    v18.receiver = self;
    v18.super_class = HMDUserActivityType6Report;
    v10 = [(HMDUserActivityReport *)&v18 initFromMessagePayload:v6 withUser:v7];
    if (v10)
    {
      *(v10 + 5) = [v8 unsignedIntValue];
      objc_storeStrong(v10 + 6, v9);
    }

    v11 = v10;

    v12 = v11;
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v11 = self;
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

- (HMDUserActivityType6Report)initWithUser:(id)a3 state:(unint64_t)a4 stateEnd:(id)a5 withReason:(unint64_t)a6 changedTimestamp:(id)a7 lastUpdateTimestamp:(id)a8
{
  v15 = a5;
  v19.receiver = self;
  v19.super_class = HMDUserActivityType6Report;
  v16 = [(HMDUserActivityReport *)&v19 initWithUser:a3 withReason:a6 changedTimestamp:a7 lastUpdateTimestamp:a8];
  v17 = v16;
  if (v16)
  {
    v16->_state = a4;
    objc_storeStrong(&v16->_stateEnd, a5);
  }

  return v17;
}

@end