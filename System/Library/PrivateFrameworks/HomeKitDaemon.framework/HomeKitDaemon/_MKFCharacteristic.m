@interface _MKFCharacteristic
+ (NSPredicate)homeRelation;
- (HMDCharacteristicMetadata)pr_hapMetadata;
- (MKFCharacteristicDatabaseID)databaseID;
- (MKFHome)home;
- (NSArray)bulletinRegistrations;
- (NSArray)notificationRegistrations;
- (NSDictionary)pr_dictionaryRepresentation;
- (void)pr_updateWithDictionary:(id)a3;
- (void)pr_updateWithHAPMetadata:(id)a3;
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
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)bulletinRegistrations
{
  v2 = [(_MKFCharacteristic *)self valueForKey:@"bulletinRegistrations_"];
  v3 = [v2 allObjects];

  return v3;
}

- (MKFHome)home
{
  v2 = [(_MKFCharacteristic *)self service];
  v3 = [v2 home];

  return v3;
}

- (MKFCharacteristicDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFCharacteristicDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (void)pr_updateWithHAPMetadata:(id)a3
{
  v4 = a3;
  v5 = [v4 format];
  [(_MKFCharacteristic *)self setFormat:v5];

  v6 = [v4 units];
  [(_MKFCharacteristic *)self setUnits:v6];

  v7 = [v4 manufacturerDescription];

  [(_MKFCharacteristic *)self setManufacturerDescription:v7];
}

- (void)pr_updateWithDictionary:(id)a3
{
  v16 = a3;
  v4 = [v16 objectForKeyedSubscript:*MEMORY[0x277CD2138]];

  if (!v4)
  {
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v5 = *MEMORY[0x277CD21A8];
  v6 = [v16 objectForKeyedSubscript:*MEMORY[0x277CD21A8]];

  if (!v6)
  {
LABEL_11:
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  v7 = *MEMORY[0x277CD2190];
  v8 = [v16 objectForKeyedSubscript:*MEMORY[0x277CD2190]];

  if (!v8)
  {
LABEL_12:
    v14 = _HMFPreconditionFailure();
    [(_MKFCharacteristic *)v14 pr_dictionaryRepresentation];
    return;
  }

  v9 = [v16 hmf_UUIDForKey:v5];
  [(_MKFCharacteristic *)self setType:v9];

  v10 = [v16 hmf_numberForKey:v7];
  [(_MKFCharacteristic *)self setProperties:v10];

  v11 = [v16 hmf_dataForKey:*MEMORY[0x277CD2100]];
  [(_MKFCharacteristic *)self setAuthorizationData:v11];

  v12 = [v16 hmf_dictionaryForKey:*MEMORY[0x277CD2148]];
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
  v3 = [(_MKFCharacteristic *)self pr_hapMetadata];
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:5];
  v5 = [(_MKFCharacteristic *)self instanceID];
  v6 = HAPInstanceIDFromValue();
  [v4 setObject:v6 forKeyedSubscript:*MEMORY[0x277CD2138]];

  v7 = [(_MKFCharacteristic *)self type];
  v8 = [v7 UUIDString];
  [v4 setObject:v8 forKeyedSubscript:*MEMORY[0x277CD21A8]];

  v9 = [(_MKFCharacteristic *)self properties];
  [v4 setObject:v9 forKeyedSubscript:*MEMORY[0x277CD2190]];

  v10 = [(_MKFCharacteristic *)self authorizationData];
  [v4 setObject:v10 forKeyedSubscript:*MEMORY[0x277CD2100]];

  v11 = [v3 dictionaryRepresentation];
  [v4 setObject:v11 forKeyedSubscript:*MEMORY[0x277CD2148]];

  v12 = [v4 copy];

  return v12;
}

- (HMDCharacteristicMetadata)pr_hapMetadata
{
  v3 = [HMDCharacteristicMetadata alloc];
  v4 = [(_MKFCharacteristic *)self format];
  v5 = [(_MKFCharacteristic *)self units];
  v6 = [(_MKFCharacteristic *)self manufacturerDescription];
  v7 = [(HMDCharacteristicMetadata *)v3 initWithMinimumValue:0 maximumValue:0 stepValue:0 maxLength:0 validValues:0 format:v4 units:v5 manufacturerDescription:v6];

  return v7;
}

@end