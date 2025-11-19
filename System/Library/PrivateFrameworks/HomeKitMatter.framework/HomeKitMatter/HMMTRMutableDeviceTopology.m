@interface HMMTRMutableDeviceTopology
- (void)addDeviceAttributeValues:(id)a3 clusterClassName:(id)a4 attributeName:(id)a5 atEndpoint:(id)a6;
- (void)addDeviceFeatureMapValue:(id)a3 clusterClassName:(id)a4 atEndpoint:(id)a5;
- (void)addHAPDisabledCharacteristic:(id)a3 atEndpoint:(id)a4 hapServiceType:(id)a5;
- (void)setClustersInUse:(id)a3 atEndpoint:(id)a4;
- (void)setDeviceAttributeValues:(id)a3 atEndpoint:(id)a4;
- (void)setDeviceFeatureMapValues:(id)a3 atEndpoint:(id)a4;
- (void)setFixedLabels:(id)a3 atEndpoint:(id)a4;
- (void)setHAPCategories:(id)a3 atEndpoint:(id)a4;
- (void)setHAPDisabledCharacteristics:(id)a3 atEndpoint:(id)a4;
- (void)setHAPLinkedServiceTypes:(id)a3 atEndpoint:(id)a4;
- (void)setHAPServiceTypes:(id)a3 atEndpoint:(id)a4;
- (void)setNodeLabel:(id)a3 atEndpoint:(id)a4;
- (void)setPartsList:(id)a3 atEndpoint:(id)a4;
- (void)setVersion:(id)a3 for:(id)a4;
@end

@implementation HMMTRMutableDeviceTopology

- (void)setVersion:(id)a3 for:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMMTRDeviceTopology *)self versions];
  [v8 setObject:v7 forKeyedSubscript:v6];
}

- (void)setFixedLabels:(id)a3 atEndpoint:(id)a4
{
  v6 = MEMORY[0x277CBEA60];
  v7 = a4;
  v10 = [v6 arrayWithArray:a3];
  v8 = [(HMMTRDeviceTopology *)self fixedLabels];
  v9 = [v7 stringValue];

  [v8 setObject:v10 forKeyedSubscript:v9];
}

- (void)setPartsList:(id)a3 atEndpoint:(id)a4
{
  v6 = MEMORY[0x277CBEA60];
  v7 = a4;
  v10 = [v6 arrayWithArray:a3];
  v8 = [(HMMTRDeviceTopology *)self partsList];
  v9 = [v7 stringValue];

  [v8 setObject:v10 forKeyedSubscript:v9];
}

- (void)setNodeLabel:(id)a3 atEndpoint:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(HMMTRDeviceTopology *)self nodeLabels];
  v8 = [v6 stringValue];

  [v9 setObject:v7 forKeyedSubscript:v8];
}

- (void)addDeviceAttributeValues:(id)a3 clusterClassName:(id)a4 attributeName:(id)a5 atEndpoint:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v17 = [a3 componentsJoinedByString:@":"];
  v13 = [(HMMTRDeviceTopology *)self deviceAttributeValues];
  v14 = [v10 stringValue];

  v15 = [v13 objectForKeyedSubscript:v14];
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@:%@", v12, v11, v17];

  [v15 addObject:v16];
}

- (void)addDeviceFeatureMapValue:(id)a3 clusterClassName:(id)a4 atEndpoint:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v14 = [(HMMTRDeviceTopology *)self deviceFeatureMapValues];
  v11 = [v8 stringValue];

  v12 = [v14 objectForKeyedSubscript:v11];
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v9, v10];

  [v12 addObject:v13];
}

- (void)addHAPDisabledCharacteristic:(id)a3 atEndpoint:(id)a4 hapServiceType:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v14 = [(HMMTRDeviceTopology *)self hapDisabledCharacteristics];
  v11 = [v9 stringValue];

  v12 = [v14 objectForKeyedSubscript:v11];
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v8, v10];

  [v12 addObject:v13];
}

- (void)setDeviceAttributeValues:(id)a3 atEndpoint:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(HMMTRDeviceTopology *)self deviceAttributeValues];
  v8 = [v6 stringValue];

  [v9 setObject:v7 forKeyedSubscript:v8];
}

- (void)setDeviceFeatureMapValues:(id)a3 atEndpoint:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(HMMTRDeviceTopology *)self deviceFeatureMapValues];
  v8 = [v6 stringValue];

  [v9 setObject:v7 forKeyedSubscript:v8];
}

- (void)setHAPDisabledCharacteristics:(id)a3 atEndpoint:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(HMMTRDeviceTopology *)self hapDisabledCharacteristics];
  v8 = [v6 stringValue];

  [v9 setObject:v7 forKeyedSubscript:v8];
}

- (void)setHAPCategories:(id)a3 atEndpoint:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(HMMTRDeviceTopology *)self hapCategories];
  v8 = [v6 stringValue];

  [v9 setObject:v7 forKeyedSubscript:v8];
}

- (void)setClustersInUse:(id)a3 atEndpoint:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(HMMTRDeviceTopology *)self clustersInUse];
  v8 = [v6 stringValue];

  [v9 setObject:v7 forKeyedSubscript:v8];
}

- (void)setHAPLinkedServiceTypes:(id)a3 atEndpoint:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(HMMTRDeviceTopology *)self hapLinkedServiceTypes];
  v8 = [v6 stringValue];

  [v9 setObject:v7 forKeyedSubscript:v8];
}

- (void)setHAPServiceTypes:(id)a3 atEndpoint:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(HMMTRDeviceTopology *)self hapServiceTypes];
  v8 = [v6 stringValue];

  [v9 setObject:v7 forKeyedSubscript:v8];
}

@end