@interface HMDEventRouterSendRemoteEventLogEvent
- (HMDEventRouterSendRemoteEventLogEvent)initWithTopic:(id)topic sourceDeviceType:(unint64_t)type destinationDeviceType:(unint64_t)deviceType isCachedEvent:(BOOL)event responseMessageType:(unint64_t)messageType;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDEventRouterSendRemoteEventLogEvent

- (HMDEventRouterSendRemoteEventLogEvent)initWithTopic:(id)topic sourceDeviceType:(unint64_t)type destinationDeviceType:(unint64_t)deviceType isCachedEvent:(BOOL)event responseMessageType:(unint64_t)messageType
{
  topicCopy = topic;
  v17.receiver = self;
  v17.super_class = HMDEventRouterSendRemoteEventLogEvent;
  v13 = [(HMMLogEvent *)&v17 init];
  if (v13)
  {
    v14 = [HMDEventRouterLogEventUtilities sanitizedTopicFromTopic:topicCopy];
    topic = v13->_topic;
    v13->_topic = v14;

    v13->_sourceDeviceType = type;
    v13->_destinationDeviceType = deviceType;
    v13->_isCachedEvent = event;
    v13->_responseMessageType = messageType;
  }

  return v13;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v12[5] = *MEMORY[0x277D85DE8];
  v11[0] = @"eventTopic";
  topic = [(HMDEventRouterSendRemoteEventLogEvent *)self topic];
  v12[0] = topic;
  v11[1] = @"sourceDeviceType";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDEventRouterSendRemoteEventLogEvent sourceDeviceType](self, "sourceDeviceType")}];
  v12[1] = v4;
  v11[2] = @"destinationDeviceType";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDEventRouterSendRemoteEventLogEvent destinationDeviceType](self, "destinationDeviceType")}];
  v12[2] = v5;
  v11[3] = @"isCachedEvent";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDEventRouterSendRemoteEventLogEvent isCachedEvent](self, "isCachedEvent")}];
  v12[3] = v6;
  v11[4] = @"responseMessageType";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDEventRouterSendRemoteEventLogEvent responseMessageType](self, "responseMessageType")}];
  v12[4] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:5];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

@end