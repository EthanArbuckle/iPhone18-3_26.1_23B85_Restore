@interface HMDEventRouterSendRemoteEventLogEvent
- (HMDEventRouterSendRemoteEventLogEvent)initWithTopic:(id)a3 sourceDeviceType:(unint64_t)a4 destinationDeviceType:(unint64_t)a5 isCachedEvent:(BOOL)a6 responseMessageType:(unint64_t)a7;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDEventRouterSendRemoteEventLogEvent

- (HMDEventRouterSendRemoteEventLogEvent)initWithTopic:(id)a3 sourceDeviceType:(unint64_t)a4 destinationDeviceType:(unint64_t)a5 isCachedEvent:(BOOL)a6 responseMessageType:(unint64_t)a7
{
  v12 = a3;
  v17.receiver = self;
  v17.super_class = HMDEventRouterSendRemoteEventLogEvent;
  v13 = [(HMMLogEvent *)&v17 init];
  if (v13)
  {
    v14 = [HMDEventRouterLogEventUtilities sanitizedTopicFromTopic:v12];
    topic = v13->_topic;
    v13->_topic = v14;

    v13->_sourceDeviceType = a4;
    v13->_destinationDeviceType = a5;
    v13->_isCachedEvent = a6;
    v13->_responseMessageType = a7;
  }

  return v13;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v12[5] = *MEMORY[0x277D85DE8];
  v11[0] = @"eventTopic";
  v3 = [(HMDEventRouterSendRemoteEventLogEvent *)self topic];
  v12[0] = v3;
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