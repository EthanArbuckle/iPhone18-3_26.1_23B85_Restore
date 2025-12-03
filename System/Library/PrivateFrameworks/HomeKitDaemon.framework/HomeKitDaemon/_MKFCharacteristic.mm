@interface _MKFCharacteristic
+ (NSPredicate)homeRelation;
- (HMDCharacteristicMetadata)pr_hapMetadata;
- (MKFCharacteristicDatabaseID)databaseID;
- (MKFHome)home;
- (NSArray)bulletinRegistrations;
- (NSArray)notificationRegistrations;
- (NSDictionary)pr_dictionaryRepresentation;
- (void)pr_updateWithDictionary:(id)dictionary;
- (void)pr_updateWithHAPMetadata:(id)metadata;
@end

@implementation _MKFCharacteristic

+ (NSPredicate)homeRelation
{
  if (homeRelation__hmf_once_t0_122968 != -1)
  {
    dispatch_once(&homeRelation__hmf_once_t0_122968, &__block_literal_global_122969);
  }

  v3 = homeRelation__hmf_once_v1_122970;

  return v3;
}

- (NSArray)notificationRegistrations
{
  v2 = [(_MKFCharacteristic *)self valueForKey:@"notificationRegistrations_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (NSArray)bulletinRegistrations
{
  v2 = [(_MKFCharacteristic *)self valueForKey:@"bulletinRegistrations_"];
  allObjects = [v2 allObjects];

  return allObjects;
}

- (MKFHome)home
{
  service = [(_MKFCharacteristic *)self service];
  home = [service home];

  return home;
}

- (MKFCharacteristicDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFCharacteristicDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (void)pr_updateWithHAPMetadata:(id)metadata
{
  metadataCopy = metadata;
  format = [metadataCopy format];
  [(_MKFCharacteristic *)self setFormat:format];

  units = [metadataCopy units];
  [(_MKFCharacteristic *)self setUnits:units];

  manufacturerDescription = [metadataCopy manufacturerDescription];

  [(_MKFCharacteristic *)self setManufacturerDescription:manufacturerDescription];
}

- (void)pr_updateWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277CD2138]];

  if (!v4)
  {
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v5 = *MEMORY[0x277CD21A8];
  v6 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277CD21A8]];

  if (!v6)
  {
LABEL_11:
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  v7 = *MEMORY[0x277CD2190];
  v8 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277CD2190]];

  if (!v8)
  {
LABEL_12:
    v14 = _HMFPreconditionFailure();
    [(_MKFCharacteristic *)v14 pr_dictionaryRepresentation];
    return;
  }

  v9 = [dictionaryCopy hmf_UUIDForKey:v5];
  [(_MKFCharacteristic *)self setType:v9];

  v10 = [dictionaryCopy hmf_numberForKey:v7];
  [(_MKFCharacteristic *)self setProperties:v10];

  v11 = [dictionaryCopy hmf_dataForKey:*MEMORY[0x277CD2100]];
  [(_MKFCharacteristic *)self setAuthorizationData:v11];

  v12 = [dictionaryCopy hmf_dictionaryForKey:*MEMORY[0x277CD2148]];
  v13 = [HMDCharacteristicMetadata characteristicMetadataWithDictionary:v12];

  if (v13)
  {
    [(_MKFCharacteristic *)self pr_updateWithHAPMetadata:v13];
  }

  else
  {
    [(_MKFCharacteristic *)self setFormat:@"unknown"];
  }
}

- (NSDictionary)pr_dictionaryRepresentation
{
  pr_hapMetadata = [(_MKFCharacteristic *)self pr_hapMetadata];
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:5];
  instanceID = [(_MKFCharacteristic *)self instanceID];
  v6 = HAPInstanceIDFromValue();
  [v4 setObject:v6 forKeyedSubscript:*MEMORY[0x277CD2138]];

  type = [(_MKFCharacteristic *)self type];
  uUIDString = [type UUIDString];
  [v4 setObject:uUIDString forKeyedSubscript:*MEMORY[0x277CD21A8]];

  properties = [(_MKFCharacteristic *)self properties];
  [v4 setObject:properties forKeyedSubscript:*MEMORY[0x277CD2190]];

  authorizationData = [(_MKFCharacteristic *)self authorizationData];
  [v4 setObject:authorizationData forKeyedSubscript:*MEMORY[0x277CD2100]];

  dictionaryRepresentation = [pr_hapMetadata dictionaryRepresentation];
  [v4 setObject:dictionaryRepresentation forKeyedSubscript:*MEMORY[0x277CD2148]];

  v12 = [v4 copy];

  return v12;
}

- (HMDCharacteristicMetadata)pr_hapMetadata
{
  v3 = [HMDCharacteristicMetadata alloc];
  format = [(_MKFCharacteristic *)self format];
  units = [(_MKFCharacteristic *)self units];
  manufacturerDescription = [(_MKFCharacteristic *)self manufacturerDescription];
  v7 = [(HMDCharacteristicMetadata *)v3 initWithMinimumValue:0 maximumValue:0 stepValue:0 maxLength:0 validValues:0 format:format units:units manufacturerDescription:manufacturerDescription];

  return v7;
}

@end