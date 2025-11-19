@interface MTRPluginRemoteMessageMetric
+ (id)remoteIncomingRequestMessageMetric:(id)a3;
+ (id)remoteOutgoingRequestMessageMetric:(id)a3;
- (id)additionalCoreAnalyticsEventDictionary;
@end

@implementation MTRPluginRemoteMessageMetric

+ (id)remoteIncomingRequestMessageMetric:(id)a3
{
  v3 = a3;
  v4 = [MTRPluginRemoteMessageMetric alloc];
  v5 = [v3 homeID];
  v6 = [v5 uuid];
  v7 = [v3 messageID];
  v8 = [v7 uuid];
  v9 = [(MTRPluginMetric *)v4 initMetricWithName:@"com.apple.matter.remoteIncomingRequestMessageEvent" device:0 homeID:v6 remoteMessageID:v8];

  [v9 setMessageHeader:v3];

  return v9;
}

+ (id)remoteOutgoingRequestMessageMetric:(id)a3
{
  v3 = a3;
  v4 = [MTRPluginRemoteMessageMetric alloc];
  v5 = [v3 homeID];
  v6 = [v5 uuid];
  v7 = [v3 messageID];
  v8 = [v7 uuid];
  v9 = [(MTRPluginMetric *)v4 initMetricWithName:@"com.apple.matter.remoteOngoingRequestMessageEvent" device:0 homeID:v6 remoteMessageID:v8];

  [v9 setMessageHeader:v3];

  return v9;
}

- (id)additionalCoreAnalyticsEventDictionary
{
  v22[5] = *MEMORY[0x277D85DE8];
  v21[0] = @"version";
  v3 = MEMORY[0x277CCABB0];
  v20 = [(MTRPluginRemoteMessageMetric *)self messageHeader];
  v4 = [v3 numberWithInt:{objc_msgSend(v20, "version")}];
  v22[0] = v4;
  v21[1] = @"schema";
  v5 = MEMORY[0x277CCABB0];
  v6 = [(MTRPluginRemoteMessageMetric *)self messageHeader];
  v7 = [v5 numberWithInt:{objc_msgSend(v6, "schema")}];
  v22[1] = v7;
  v21[2] = @"protocol";
  v8 = MEMORY[0x277CCABB0];
  v9 = [(MTRPluginRemoteMessageMetric *)self messageHeader];
  v10 = [v8 numberWithInt:{objc_msgSend(v9, "protocol")}];
  v22[2] = v10;
  v21[3] = @"messageType";
  v11 = MEMORY[0x277CCABB0];
  v12 = [(MTRPluginRemoteMessageMetric *)self messageHeader];
  v13 = [v11 numberWithUnsignedInt:{objc_msgSend(v12, "messageType")}];
  v22[3] = v13;
  v21[4] = @"messageDirection";
  v14 = MEMORY[0x277CCABB0];
  v15 = [(MTRPluginRemoteMessageMetric *)self messageHeader];
  v16 = [v14 numberWithInt:{objc_msgSend(v15, "messageDirection")}];
  v22[4] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:5];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

@end