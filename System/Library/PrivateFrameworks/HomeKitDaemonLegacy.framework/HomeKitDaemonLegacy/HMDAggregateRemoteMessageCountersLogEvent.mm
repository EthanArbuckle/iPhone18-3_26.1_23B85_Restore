@interface HMDAggregateRemoteMessageCountersLogEvent
- (HMDAggregateRemoteMessageCountersLogEvent)initWithMessageName:(id)a3 deviceType:(id)a4 transportType:(unsigned __int8)a5 direction:(unsigned __int8)a6 primaryResidentDuration:(double)a7 count:(id)a8;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDAggregateRemoteMessageCountersLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(HMDAggregateRemoteMessageCountersLogEvent *)self deviceType];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_286509E58;
  }

  [v3 setObject:v6 forKeyedSubscript:@"destinationDeviceType"];

  v7 = [(HMDAggregateRemoteMessageCountersLogEvent *)self messageName];
  [v3 setObject:v7 forKeyedSubscript:@"remoteMessageName"];

  [v3 setObject:HMDLogEventRemoteMessageTransportTypeString[-[HMDAggregateRemoteMessageCountersLogEvent transportType](self forKeyedSubscript:{"transportType")], @"transportType"}];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAggregateRemoteMessageCountersLogEvent transportType](self, "transportType")}];
  [v3 setObject:v8 forKeyedSubscript:@"transportTypeEnum"];

  [v3 setObject:HMDLogEventRemoteMessageDirectionString[-[HMDAggregateRemoteMessageCountersLogEvent direction](self forKeyedSubscript:{"direction")], @"remoteMessageDirection"}];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDAggregateRemoteMessageCountersLogEvent direction](self, "direction")}];
  [v3 setObject:v9 forKeyedSubscript:@"remoteMessageDirectionEnum"];

  v10 = MEMORY[0x277CCABB0];
  [(HMDAggregateRemoteMessageCountersLogEvent *)self primaryResidentDuration];
  v12 = [v10 numberWithInteger:llround((v11 + 59.0) / 60.0)];
  [v3 setObject:v12 forKeyedSubscript:@"primaryResidentDurationMinutes"];

  v13 = [(HMDAggregateRemoteMessageCountersLogEvent *)self count];
  [v3 setObject:v13 forKeyedSubscript:@"aggregateCount"];

  v14 = [v3 copy];

  return v14;
}

- (HMDAggregateRemoteMessageCountersLogEvent)initWithMessageName:(id)a3 deviceType:(id)a4 transportType:(unsigned __int8)a5 direction:(unsigned __int8)a6 primaryResidentDuration:(double)a7 count:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a8;
  v21.receiver = self;
  v21.super_class = HMDAggregateRemoteMessageCountersLogEvent;
  v18 = [(HMMLogEvent *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_messageName, a3);
    objc_storeStrong(&v19->_deviceType, a4);
    v19->_transportType = a5;
    v19->_direction = a6;
    v19->_primaryResidentDuration = a7;
    objc_storeStrong(&v19->_count, a8);
  }

  return v19;
}

@end