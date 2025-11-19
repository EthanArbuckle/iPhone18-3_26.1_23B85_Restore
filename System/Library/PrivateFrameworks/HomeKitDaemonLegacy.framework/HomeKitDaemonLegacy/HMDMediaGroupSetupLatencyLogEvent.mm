@interface HMDMediaGroupSetupLatencyLogEvent
- (HMDMediaGroupSetupLatencyLogEvent)initWithRequestType:(id)a3 systemUUID:(id)a4 deviceRole:(id)a5 totalDurationMS:(unint64_t)a6 setupSessionIdentifier:(id)a7 setupRequestOption:(unint64_t)a8 totalDurationSinceAccessorySetupStartMS:(unint64_t)a9 errorStage:(id)a10;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDMediaGroupSetupLatencyLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(HMDMediaGroupSetupLatencyLogEvent *)self requestType];
  [v3 setObject:v4 forKeyedSubscript:@"requestType"];

  v5 = [(HMDMediaGroupSetupLatencyLogEvent *)self systemUUID];
  [v3 setObject:v5 forKeyedSubscript:@"systemUUID"];

  v6 = [(HMDMediaGroupSetupLatencyLogEvent *)self deviceRole];
  [v3 setObject:v6 forKeyedSubscript:@"deviceRole"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[HMDMediaGroupSetupLatencyLogEvent totalDurationMS](self, "totalDurationMS")}];
  [v3 setObject:v7 forKeyedSubscript:@"totalDurationMS"];

  v8 = [(HMDMediaGroupSetupLatencyLogEvent *)self errorStage];
  [v3 setObject:v8 forKeyedSubscript:@"errorStage"];

  v9 = [(HMDMediaGroupSetupLatencyLogEvent *)self setupSessionIdentifier];

  if (v9)
  {
    v10 = [(HMDMediaGroupSetupLatencyLogEvent *)self setupSessionIdentifier];
    [v3 setObject:v10 forKeyedSubscript:@"setupSessionIdentifier"];

    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[HMDMediaGroupSetupLatencyLogEvent totalDurationSinceAccessorySetupStartMS](self, "totalDurationSinceAccessorySetupStartMS")}];
    [v3 setObject:v11 forKeyedSubscript:@"totalDurationSinceAccessorySetupStartMS"];
  }

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDMediaGroupSetupLatencyLogEvent setupRequestOption](self, "setupRequestOption")}];
  [v3 setObject:v12 forKeyedSubscript:@"setupRequestOption"];

  v13 = [v3 copy];

  return v13;
}

- (HMDMediaGroupSetupLatencyLogEvent)initWithRequestType:(id)a3 systemUUID:(id)a4 deviceRole:(id)a5 totalDurationMS:(unint64_t)a6 setupSessionIdentifier:(id)a7 setupRequestOption:(unint64_t)a8 totalDurationSinceAccessorySetupStartMS:(unint64_t)a9 errorStage:(id)a10
{
  v16 = a3;
  v17 = a4;
  v24 = a5;
  v23 = a7;
  v18 = a10;
  v25.receiver = self;
  v25.super_class = HMDMediaGroupSetupLatencyLogEvent;
  v19 = [(HMMLogEvent *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_requestType, a3);
    objc_storeStrong(&v20->_systemUUID, a4);
    objc_storeStrong(&v20->_deviceRole, a5);
    v20->_totalDurationMS = a6;
    objc_storeStrong(&v20->_setupSessionIdentifier, a7);
    v20->_setupRequestOption = a8;
    v20->_totalDurationSinceAccessorySetupStartMS = a9;
    objc_storeStrong(&v20->_errorStage, a10);
  }

  return v20;
}

@end