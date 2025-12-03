@interface HMDAggregateXPCMessageCountersLogEvent
+ (id)xpcAcceptedCountersLogEventWithPeerInformation:(id)information messageName:(id)name primaryResidentDuration:(double)duration count:(id)count;
+ (id)xpcSentCountersLogEventWithPeerInformation:(id)information messageName:(id)name primaryResidentDuration:(double)duration count:(id)count;
- (HMDAggregateXPCMessageCountersLogEvent)initWithEventName:(id)name peerInformation:(id)information messageName:(id)messageName primaryResidentDuration:(double)duration count:(id)count;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDAggregateXPCMessageCountersLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  peerInformation = [(HMDAggregateXPCMessageCountersLogEvent *)self peerInformation];
  [dictionary setObject:peerInformation forKeyedSubscript:@"appIdentifier"];

  messageName = [(HMDAggregateXPCMessageCountersLogEvent *)self messageName];
  [dictionary setObject:messageName forKeyedSubscript:@"messageName"];

  v6 = MEMORY[0x277CCABB0];
  [(HMDAggregateXPCMessageCountersLogEvent *)self primaryResidentDuration];
  v8 = [v6 numberWithInteger:((v7 + 59.0) / 60.0)];
  [dictionary setObject:v8 forKeyedSubscript:@"primaryResidentDurationMinutes"];

  v9 = [(HMDAggregateXPCMessageCountersLogEvent *)self count];
  [dictionary setObject:v9 forKeyedSubscript:@"counter"];

  v10 = [dictionary copy];

  return v10;
}

- (HMDAggregateXPCMessageCountersLogEvent)initWithEventName:(id)name peerInformation:(id)information messageName:(id)messageName primaryResidentDuration:(double)duration count:(id)count
{
  nameCopy = name;
  informationCopy = information;
  messageNameCopy = messageName;
  countCopy = count;
  v24.receiver = self;
  v24.super_class = HMDAggregateXPCMessageCountersLogEvent;
  v17 = [(HMMLogEvent *)&v24 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_coreAnalyticsEventName, name);
    v19 = [informationCopy copy];
    peerInformation = v18->_peerInformation;
    v18->_peerInformation = v19;

    v21 = [messageNameCopy copy];
    messageName = v18->_messageName;
    v18->_messageName = v21;

    v18->_primaryResidentDuration = duration;
    objc_storeStrong(&v18->_count, count);
  }

  return v18;
}

+ (id)xpcSentCountersLogEventWithPeerInformation:(id)information messageName:(id)name primaryResidentDuration:(double)duration count:(id)count
{
  countCopy = count;
  nameCopy = name;
  informationCopy = information;
  v13 = [[self alloc] initWithEventName:@"com.apple.HomeKit.xpc.notifications.sent" peerInformation:informationCopy messageName:nameCopy primaryResidentDuration:countCopy count:duration];

  return v13;
}

+ (id)xpcAcceptedCountersLogEventWithPeerInformation:(id)information messageName:(id)name primaryResidentDuration:(double)duration count:(id)count
{
  countCopy = count;
  nameCopy = name;
  informationCopy = information;
  v13 = [[self alloc] initWithEventName:@"com.apple.HomeKit.xpc.requests.accepted" peerInformation:informationCopy messageName:nameCopy primaryResidentDuration:countCopy count:duration];

  return v13;
}

@end