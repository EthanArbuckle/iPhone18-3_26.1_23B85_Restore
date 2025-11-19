@interface HMDAggregateXPCMessageCountersLogEvent
+ (id)xpcAcceptedCountersLogEventWithPeerInformation:(id)a3 messageName:(id)a4 primaryResidentDuration:(double)a5 count:(id)a6;
+ (id)xpcSentCountersLogEventWithPeerInformation:(id)a3 messageName:(id)a4 primaryResidentDuration:(double)a5 count:(id)a6;
- (HMDAggregateXPCMessageCountersLogEvent)initWithEventName:(id)a3 peerInformation:(id)a4 messageName:(id)a5 primaryResidentDuration:(double)a6 count:(id)a7;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDAggregateXPCMessageCountersLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(HMDAggregateXPCMessageCountersLogEvent *)self peerInformation];
  [v3 setObject:v4 forKeyedSubscript:@"appIdentifier"];

  v5 = [(HMDAggregateXPCMessageCountersLogEvent *)self messageName];
  [v3 setObject:v5 forKeyedSubscript:@"messageName"];

  v6 = MEMORY[0x277CCABB0];
  [(HMDAggregateXPCMessageCountersLogEvent *)self primaryResidentDuration];
  v8 = [v6 numberWithInteger:((v7 + 59.0) / 60.0)];
  [v3 setObject:v8 forKeyedSubscript:@"primaryResidentDurationMinutes"];

  v9 = [(HMDAggregateXPCMessageCountersLogEvent *)self count];
  [v3 setObject:v9 forKeyedSubscript:@"counter"];

  v10 = [v3 copy];

  return v10;
}

- (HMDAggregateXPCMessageCountersLogEvent)initWithEventName:(id)a3 peerInformation:(id)a4 messageName:(id)a5 primaryResidentDuration:(double)a6 count:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v24.receiver = self;
  v24.super_class = HMDAggregateXPCMessageCountersLogEvent;
  v17 = [(HMMLogEvent *)&v24 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_coreAnalyticsEventName, a3);
    v19 = [v14 copy];
    peerInformation = v18->_peerInformation;
    v18->_peerInformation = v19;

    v21 = [v15 copy];
    messageName = v18->_messageName;
    v18->_messageName = v21;

    v18->_primaryResidentDuration = a6;
    objc_storeStrong(&v18->_count, a7);
  }

  return v18;
}

+ (id)xpcSentCountersLogEventWithPeerInformation:(id)a3 messageName:(id)a4 primaryResidentDuration:(double)a5 count:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [[a1 alloc] initWithEventName:@"com.apple.HomeKit.xpc.notifications.sent" peerInformation:v12 messageName:v11 primaryResidentDuration:v10 count:a5];

  return v13;
}

+ (id)xpcAcceptedCountersLogEventWithPeerInformation:(id)a3 messageName:(id)a4 primaryResidentDuration:(double)a5 count:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [[a1 alloc] initWithEventName:@"com.apple.HomeKit.xpc.requests.accepted" peerInformation:v12 messageName:v11 primaryResidentDuration:v10 count:a5];

  return v13;
}

@end