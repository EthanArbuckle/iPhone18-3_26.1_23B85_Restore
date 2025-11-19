@interface DNDSLocationTriggerConfiguration
+ (id)emptyConfiguration;
- (DNDSLocationTriggerConfiguration)init;
- (id)modeIdentifierForRegion:(id)a3;
- (id)regionIdentifiers;
- (id)regions;
- (void)addTriggerForModeWithIdentifier:(id)a3 forRegion:(id)a4;
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
    v3 = [MEMORY[0x277CBEB38] dictionary];
    modeIdentifierByRegionIdentifier = v2->_modeIdentifierByRegionIdentifier;
    v2->_modeIdentifierByRegionIdentifier = v3;

    v5 = [MEMORY[0x277CBEB38] dictionary];
    regionByRegionIdentifier = v2->_regionByRegionIdentifier;
    v2->_regionByRegionIdentifier = v5;
  }

  return v2;
}

- (id)regions
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(NSMutableDictionary *)self->_regionByRegionIdentifier allValues];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (id)regionIdentifiers
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(NSMutableDictionary *)self->_regionByRegionIdentifier allKeys];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (id)modeIdentifierForRegion:(id)a3
{
  modeIdentifierByRegionIdentifier = self->_modeIdentifierByRegionIdentifier;
  v4 = [a3 identifier];
  v5 = [(NSMutableDictionary *)modeIdentifierByRegionIdentifier objectForKeyedSubscript:v4];

  return v5;
}

- (void)addTriggerForModeWithIdentifier:(id)a3 forRegion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 identifier];
  [(NSMutableDictionary *)self->_modeIdentifierByRegionIdentifier setObject:v7 forKeyedSubscript:v8];

  [(NSMutableDictionary *)self->_regionByRegionIdentifier setObject:v6 forKeyedSubscript:v8];
}

@end