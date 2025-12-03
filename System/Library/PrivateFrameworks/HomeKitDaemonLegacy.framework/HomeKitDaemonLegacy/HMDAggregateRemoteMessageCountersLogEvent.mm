@interface HMDAggregateRemoteMessageCountersLogEvent
- (HMDAggregateRemoteMessageCountersLogEvent)initWithMessageName:(id)name deviceType:(id)type transportType:(unsigned __int8)transportType direction:(unsigned __int8)direction primaryResidentDuration:(double)duration count:(id)count;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDAggregateRemoteMessageCountersLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  deviceType = [(HMDAggregateRemoteMessageCountersLogEvent *)self deviceType];
  v5 = deviceType;
  if (deviceType)
  {
    v6 = deviceType;
  }

  else
  {
    v6 = &stru_286509E58;
  }

  [dictionary setObject:v6 forKeyedSubscript:@"destinationDeviceType"];

  messageName = [(HMDAggregateRemoteMessageCountersLogEvent *)self messageName];
  [dictionary setObject:messageName forKeyedSubscript:@"remoteMessageName"];

  [dictionary setObject:HMDLogEventRemoteMessageTransportTypeString[-[HMDAggregateRemoteMessageCountersLogEvent transportType](self forKeyedSubscript:{"transportType")], @"transportType"}];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAggregateRemoteMessageCountersLogEvent transportType](self, "transportType")}];
  [dictionary setObject:v8 forKeyedSubscript:@"transportTypeEnum"];

  [dictionary setObject:HMDLogEventRemoteMessageDirectionString[-[HMDAggregateRemoteMessageCountersLogEvent direction](self forKeyedSubscript:{"direction")], @"remoteMessageDirection"}];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAggregateRemoteMessageCountersLogEvent direction](self, "direction")}];
  [dictionary setObject:v9 forKeyedSubscript:@"remoteMessageDirectionEnum"];

  v10 = MEMORY[0x277CCABB0];
  [(HMDAggregateRemoteMessageCountersLogEvent *)self primaryResidentDuration];
  v12 = [v10 numberWithInteger:llround((v11 + 59.0) / 60.0)];
  [dictionary setObject:v12 forKeyedSubscript:@"primaryResidentDurationMinutes"];

  v13 = [(HMDAggregateRemoteMessageCountersLogEvent *)self count];
  [dictionary setObject:v13 forKeyedSubscript:@"aggregateCount"];

  v14 = [dictionary copy];

  return v14;
}

- (HMDAggregateRemoteMessageCountersLogEvent)initWithMessageName:(id)name deviceType:(id)type transportType:(unsigned __int8)transportType direction:(unsigned __int8)direction primaryResidentDuration:(double)duration count:(id)count
{
  nameCopy = name;
  typeCopy = type;
  countCopy = count;
  v21.receiver = self;
  v21.super_class = HMDAggregateRemoteMessageCountersLogEvent;
  v18 = [(HMMLogEvent *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_messageName, name);
    objc_storeStrong(&v19->_deviceType, type);
    v19->_transportType = transportType;
    v19->_direction = direction;
    v19->_primaryResidentDuration = duration;
    objc_storeStrong(&v19->_count, count);
  }

  return v19;
}

@end