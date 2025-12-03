@interface HMMTRHAPAccessoryInfo
- (HMMTRHAPAccessoryInfo)init;
- (HMMTRHAPAccessoryInfo)initWithType:(id)type;
- (id)accessoryInfoForEndpoint:(id)endpoint;
- (id)attributeDescriptions;
- (id)categoriesForEndpoint:(id)endpoint;
- (id)fixedLabelsForEndpoint:(id)endpoint;
- (id)nameForEndpoint:(id)endpoint;
- (id)partsListForEndpoint:(id)endpoint;
- (id)serviceDescriptionsForEndpoint:(id)endpoint;
- (void)setAccessoryInfo:(id)info forEndpoint:(id)endpoint;
@end

@implementation HMMTRHAPAccessoryInfo

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  accessoryInfoDictionary = [(HMMTRHAPAccessoryInfo *)self accessoryInfoDictionary];
  v5 = [v3 initWithName:@"AccessoryInfoDictionary" value:accessoryInfoDictionary];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)setAccessoryInfo:(id)info forEndpoint:(id)endpoint
{
  accessoryInfoDictionary = self->_accessoryInfoDictionary;
  infoCopy = info;
  stringValue = [endpoint stringValue];
  [(NSMutableDictionary *)accessoryInfoDictionary setObject:infoCopy forKey:stringValue];
}

- (id)nameForEndpoint:(id)endpoint
{
  v3 = [(HMMTRHAPAccessoryInfo *)self accessoryInfoForEndpoint:endpoint];
  getName = [v3 getName];

  return getName;
}

- (id)fixedLabelsForEndpoint:(id)endpoint
{
  v3 = [(HMMTRHAPAccessoryInfo *)self accessoryInfoForEndpoint:endpoint];
  getFixedLabels = [v3 getFixedLabels];

  return getFixedLabels;
}

- (id)partsListForEndpoint:(id)endpoint
{
  v3 = [(HMMTRHAPAccessoryInfo *)self accessoryInfoForEndpoint:endpoint];
  getPartsList = [v3 getPartsList];

  return getPartsList;
}

- (id)serviceDescriptionsForEndpoint:(id)endpoint
{
  v3 = [(HMMTRHAPAccessoryInfo *)self accessoryInfoForEndpoint:endpoint];
  getServiceDescriptions = [v3 getServiceDescriptions];

  return getServiceDescriptions;
}

- (id)categoriesForEndpoint:(id)endpoint
{
  v3 = [(HMMTRHAPAccessoryInfo *)self accessoryInfoForEndpoint:endpoint];
  getCategories = [v3 getCategories];

  return getCategories;
}

- (id)accessoryInfoForEndpoint:(id)endpoint
{
  accessoryInfoDictionary = self->_accessoryInfoDictionary;
  stringValue = [endpoint stringValue];
  v5 = [(NSMutableDictionary *)accessoryInfoDictionary objectForKey:stringValue];

  return v5;
}

- (HMMTRHAPAccessoryInfo)initWithType:(id)type
{
  typeCopy = type;
  v5 = [(HMMTRHAPAccessoryInfo *)self init];
  v6 = v5;
  if (v5)
  {
    [(NSMutableDictionary *)v5->_accessoryInfoDictionary addEntriesFromDictionary:typeCopy];
  }

  return v6;
}

- (HMMTRHAPAccessoryInfo)init
{
  v6.receiver = self;
  v6.super_class = HMMTRHAPAccessoryInfo;
  v2 = [(HMMTRHAPAccessoryInfo *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    accessoryInfoDictionary = v2->_accessoryInfoDictionary;
    v2->_accessoryInfoDictionary = v3;
  }

  return v2;
}

@end