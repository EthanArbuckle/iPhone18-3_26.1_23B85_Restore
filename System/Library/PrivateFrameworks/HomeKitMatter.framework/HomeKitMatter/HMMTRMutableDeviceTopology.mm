@interface HMMTRMutableDeviceTopology
- (void)addDeviceAttributeValues:(id)values clusterClassName:(id)name attributeName:(id)attributeName atEndpoint:(id)endpoint;
- (void)addDeviceFeatureMapValue:(id)value clusterClassName:(id)name atEndpoint:(id)endpoint;
- (void)addHAPDisabledCharacteristic:(id)characteristic atEndpoint:(id)endpoint hapServiceType:(id)type;
- (void)setClustersInUse:(id)use atEndpoint:(id)endpoint;
- (void)setDeviceAttributeValues:(id)values atEndpoint:(id)endpoint;
- (void)setDeviceFeatureMapValues:(id)values atEndpoint:(id)endpoint;
- (void)setFixedLabels:(id)labels atEndpoint:(id)endpoint;
- (void)setHAPCategories:(id)categories atEndpoint:(id)endpoint;
- (void)setHAPDisabledCharacteristics:(id)characteristics atEndpoint:(id)endpoint;
- (void)setHAPLinkedServiceTypes:(id)types atEndpoint:(id)endpoint;
- (void)setHAPServiceTypes:(id)types atEndpoint:(id)endpoint;
- (void)setNodeLabel:(id)label atEndpoint:(id)endpoint;
- (void)setPartsList:(id)list atEndpoint:(id)endpoint;
- (void)setVersion:(id)version for:(id)for;
@end

@implementation HMMTRMutableDeviceTopology

- (void)setVersion:(id)version for:(id)for
{
  forCopy = for;
  versionCopy = version;
  versions = [(HMMTRDeviceTopology *)self versions];
  [versions setObject:versionCopy forKeyedSubscript:forCopy];
}

- (void)setFixedLabels:(id)labels atEndpoint:(id)endpoint
{
  v6 = MEMORY[0x277CBEA60];
  endpointCopy = endpoint;
  v10 = [v6 arrayWithArray:labels];
  fixedLabels = [(HMMTRDeviceTopology *)self fixedLabels];
  stringValue = [endpointCopy stringValue];

  [fixedLabels setObject:v10 forKeyedSubscript:stringValue];
}

- (void)setPartsList:(id)list atEndpoint:(id)endpoint
{
  v6 = MEMORY[0x277CBEA60];
  endpointCopy = endpoint;
  v10 = [v6 arrayWithArray:list];
  partsList = [(HMMTRDeviceTopology *)self partsList];
  stringValue = [endpointCopy stringValue];

  [partsList setObject:v10 forKeyedSubscript:stringValue];
}

- (void)setNodeLabel:(id)label atEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  labelCopy = label;
  nodeLabels = [(HMMTRDeviceTopology *)self nodeLabels];
  stringValue = [endpointCopy stringValue];

  [nodeLabels setObject:labelCopy forKeyedSubscript:stringValue];
}

- (void)addDeviceAttributeValues:(id)values clusterClassName:(id)name attributeName:(id)attributeName atEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  attributeNameCopy = attributeName;
  nameCopy = name;
  v17 = [values componentsJoinedByString:@":"];
  deviceAttributeValues = [(HMMTRDeviceTopology *)self deviceAttributeValues];
  stringValue = [endpointCopy stringValue];

  v15 = [deviceAttributeValues objectForKeyedSubscript:stringValue];
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@:%@", nameCopy, attributeNameCopy, v17];

  [v15 addObject:v16];
}

- (void)addDeviceFeatureMapValue:(id)value clusterClassName:(id)name atEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  nameCopy = name;
  valueCopy = value;
  deviceFeatureMapValues = [(HMMTRDeviceTopology *)self deviceFeatureMapValues];
  stringValue = [endpointCopy stringValue];

  v12 = [deviceFeatureMapValues objectForKeyedSubscript:stringValue];
  valueCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", nameCopy, valueCopy];

  [v12 addObject:valueCopy];
}

- (void)addHAPDisabledCharacteristic:(id)characteristic atEndpoint:(id)endpoint hapServiceType:(id)type
{
  typeCopy = type;
  endpointCopy = endpoint;
  characteristicCopy = characteristic;
  hapDisabledCharacteristics = [(HMMTRDeviceTopology *)self hapDisabledCharacteristics];
  stringValue = [endpointCopy stringValue];

  v12 = [hapDisabledCharacteristics objectForKeyedSubscript:stringValue];
  characteristicCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", typeCopy, characteristicCopy];

  [v12 addObject:characteristicCopy];
}

- (void)setDeviceAttributeValues:(id)values atEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  valuesCopy = values;
  deviceAttributeValues = [(HMMTRDeviceTopology *)self deviceAttributeValues];
  stringValue = [endpointCopy stringValue];

  [deviceAttributeValues setObject:valuesCopy forKeyedSubscript:stringValue];
}

- (void)setDeviceFeatureMapValues:(id)values atEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  valuesCopy = values;
  deviceFeatureMapValues = [(HMMTRDeviceTopology *)self deviceFeatureMapValues];
  stringValue = [endpointCopy stringValue];

  [deviceFeatureMapValues setObject:valuesCopy forKeyedSubscript:stringValue];
}

- (void)setHAPDisabledCharacteristics:(id)characteristics atEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  characteristicsCopy = characteristics;
  hapDisabledCharacteristics = [(HMMTRDeviceTopology *)self hapDisabledCharacteristics];
  stringValue = [endpointCopy stringValue];

  [hapDisabledCharacteristics setObject:characteristicsCopy forKeyedSubscript:stringValue];
}

- (void)setHAPCategories:(id)categories atEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  categoriesCopy = categories;
  hapCategories = [(HMMTRDeviceTopology *)self hapCategories];
  stringValue = [endpointCopy stringValue];

  [hapCategories setObject:categoriesCopy forKeyedSubscript:stringValue];
}

- (void)setClustersInUse:(id)use atEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  useCopy = use;
  clustersInUse = [(HMMTRDeviceTopology *)self clustersInUse];
  stringValue = [endpointCopy stringValue];

  [clustersInUse setObject:useCopy forKeyedSubscript:stringValue];
}

- (void)setHAPLinkedServiceTypes:(id)types atEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  typesCopy = types;
  hapLinkedServiceTypes = [(HMMTRDeviceTopology *)self hapLinkedServiceTypes];
  stringValue = [endpointCopy stringValue];

  [hapLinkedServiceTypes setObject:typesCopy forKeyedSubscript:stringValue];
}

- (void)setHAPServiceTypes:(id)types atEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  typesCopy = types;
  hapServiceTypes = [(HMMTRDeviceTopology *)self hapServiceTypes];
  stringValue = [endpointCopy stringValue];

  [hapServiceTypes setObject:typesCopy forKeyedSubscript:stringValue];
}

@end