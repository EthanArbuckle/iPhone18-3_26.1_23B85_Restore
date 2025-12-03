@interface HMDMediaGroupSetupLatencyLogEvent
- (HMDMediaGroupSetupLatencyLogEvent)initWithRequestType:(id)type systemUUID:(id)d deviceRole:(id)role totalDurationMS:(unint64_t)s setupSessionIdentifier:(id)identifier setupRequestOption:(unint64_t)option totalDurationSinceAccessorySetupStartMS:(unint64_t)mS errorStage:(id)self0;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDMediaGroupSetupLatencyLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  requestType = [(HMDMediaGroupSetupLatencyLogEvent *)self requestType];
  [v3 setObject:requestType forKeyedSubscript:@"requestType"];

  systemUUID = [(HMDMediaGroupSetupLatencyLogEvent *)self systemUUID];
  [v3 setObject:systemUUID forKeyedSubscript:@"systemUUID"];

  deviceRole = [(HMDMediaGroupSetupLatencyLogEvent *)self deviceRole];
  [v3 setObject:deviceRole forKeyedSubscript:@"deviceRole"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[HMDMediaGroupSetupLatencyLogEvent totalDurationMS](self, "totalDurationMS")}];
  [v3 setObject:v7 forKeyedSubscript:@"totalDurationMS"];

  errorStage = [(HMDMediaGroupSetupLatencyLogEvent *)self errorStage];
  [v3 setObject:errorStage forKeyedSubscript:@"errorStage"];

  setupSessionIdentifier = [(HMDMediaGroupSetupLatencyLogEvent *)self setupSessionIdentifier];

  if (setupSessionIdentifier)
  {
    setupSessionIdentifier2 = [(HMDMediaGroupSetupLatencyLogEvent *)self setupSessionIdentifier];
    [v3 setObject:setupSessionIdentifier2 forKeyedSubscript:@"setupSessionIdentifier"];

    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[HMDMediaGroupSetupLatencyLogEvent totalDurationSinceAccessorySetupStartMS](self, "totalDurationSinceAccessorySetupStartMS")}];
    [v3 setObject:v11 forKeyedSubscript:@"totalDurationSinceAccessorySetupStartMS"];
  }

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDMediaGroupSetupLatencyLogEvent setupRequestOption](self, "setupRequestOption")}];
  [v3 setObject:v12 forKeyedSubscript:@"setupRequestOption"];

  v13 = [v3 copy];

  return v13;
}

- (HMDMediaGroupSetupLatencyLogEvent)initWithRequestType:(id)type systemUUID:(id)d deviceRole:(id)role totalDurationMS:(unint64_t)s setupSessionIdentifier:(id)identifier setupRequestOption:(unint64_t)option totalDurationSinceAccessorySetupStartMS:(unint64_t)mS errorStage:(id)self0
{
  typeCopy = type;
  dCopy = d;
  roleCopy = role;
  identifierCopy = identifier;
  stageCopy = stage;
  v25.receiver = self;
  v25.super_class = HMDMediaGroupSetupLatencyLogEvent;
  v19 = [(HMMLogEvent *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_requestType, type);
    objc_storeStrong(&v20->_systemUUID, d);
    objc_storeStrong(&v20->_deviceRole, role);
    v20->_totalDurationMS = s;
    objc_storeStrong(&v20->_setupSessionIdentifier, identifier);
    v20->_setupRequestOption = option;
    v20->_totalDurationSinceAccessorySetupStartMS = mS;
    objc_storeStrong(&v20->_errorStage, stage);
  }

  return v20;
}

@end