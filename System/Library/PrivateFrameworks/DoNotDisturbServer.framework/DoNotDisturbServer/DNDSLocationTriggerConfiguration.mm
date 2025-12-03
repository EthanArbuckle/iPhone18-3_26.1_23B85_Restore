@interface DNDSLocationTriggerConfiguration
+ (id)emptyConfiguration;
- (DNDSLocationTriggerConfiguration)init;
- (id)modeIdentifierForRegion:(id)region;
- (id)regionIdentifiers;
- (id)regions;
- (void)addTriggerForModeWithIdentifier:(id)identifier forRegion:(id)region;
@end

@implementation DNDSLocationTriggerConfiguration

+ (id)emptyConfiguration
{
  v2 = objc_alloc_init(DNDSLocationTriggerConfiguration);

  return v2;
}

- (DNDSLocationTriggerConfiguration)init
{
  v8.receiver = self;
  v8.super_class = DNDSLocationTriggerConfiguration;
  v2 = [(DNDSLocationTriggerConfiguration *)&v8 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    modeIdentifierByRegionIdentifier = v2->_modeIdentifierByRegionIdentifier;
    v2->_modeIdentifierByRegionIdentifier = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    regionByRegionIdentifier = v2->_regionByRegionIdentifier;
    v2->_regionByRegionIdentifier = dictionary2;
  }

  return v2;
}

- (id)regions
{
  v2 = MEMORY[0x277CBEB98];
  allValues = [(NSMutableDictionary *)self->_regionByRegionIdentifier allValues];
  v4 = [v2 setWithArray:allValues];

  return v4;
}

- (id)regionIdentifiers
{
  v2 = MEMORY[0x277CBEB98];
  allKeys = [(NSMutableDictionary *)self->_regionByRegionIdentifier allKeys];
  v4 = [v2 setWithArray:allKeys];

  return v4;
}

- (id)modeIdentifierForRegion:(id)region
{
  modeIdentifierByRegionIdentifier = self->_modeIdentifierByRegionIdentifier;
  identifier = [region identifier];
  v5 = [(NSMutableDictionary *)modeIdentifierByRegionIdentifier objectForKeyedSubscript:identifier];

  return v5;
}

- (void)addTriggerForModeWithIdentifier:(id)identifier forRegion:(id)region
{
  regionCopy = region;
  identifierCopy = identifier;
  identifier = [regionCopy identifier];
  [(NSMutableDictionary *)self->_modeIdentifierByRegionIdentifier setObject:identifierCopy forKeyedSubscript:identifier];

  [(NSMutableDictionary *)self->_regionByRegionIdentifier setObject:regionCopy forKeyedSubscript:identifier];
}

@end