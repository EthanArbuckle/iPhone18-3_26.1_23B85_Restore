@interface MTRPluginWriteAttributeMetric
- (id)additionalCoreAnalyticsEventDictionary;
@end

@implementation MTRPluginWriteAttributeMetric

- (id)additionalCoreAnalyticsEventDictionary
{
  v12[5] = *MEMORY[0x277D85DE8];
  v11[0] = @"endpointID";
  endpointID = [(MTRPluginWriteAttributeMetric *)self endpointID];
  v12[0] = endpointID;
  v11[1] = @"clusterID";
  clusterID = [(MTRPluginWriteAttributeMetric *)self clusterID];
  v12[1] = clusterID;
  v11[2] = @"attributeID";
  attributeID = [(MTRPluginWriteAttributeMetric *)self attributeID];
  v12[2] = attributeID;
  v11[3] = @"clientType";
  v6 = [MEMORY[0x277CCABB0] numberWithInt:{-[MTRPluginWriteAttributeMetric clientType](self, "clientType")}];
  v12[3] = v6;
  v11[4] = @"timedWrite";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[MTRPluginWriteAttributeMetric isTimedWrite](self, "isTimedWrite")}];
  v12[4] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:5];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

@end