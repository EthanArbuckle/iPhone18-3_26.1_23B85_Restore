@interface _MKFStringCharacteristic
- (HMDCharacteristicMetadata)pr_hapMetadata;
- (MKFHome)home;
- (MKFStringCharacteristicDatabaseID)databaseID;
- (void)pr_updateWithHAPMetadata:(id)metadata;
@end

@implementation _MKFStringCharacteristic

- (MKFHome)home
{
  service = [(_MKFStringCharacteristic *)self service];
  home = [service home];

  return home;
}

- (MKFStringCharacteristicDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFStringCharacteristicDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (void)pr_updateWithHAPMetadata:(id)metadata
{
  v6.receiver = self;
  v6.super_class = _MKFStringCharacteristic;
  metadataCopy = metadata;
  [(_MKFCharacteristic *)&v6 pr_updateWithHAPMetadata:metadataCopy];
  maxLength = [metadataCopy maxLength];

  [(_MKFStringCharacteristic *)self setMaximumLength:maxLength];
}

- (HMDCharacteristicMetadata)pr_hapMetadata
{
  v3 = [HMDCharacteristicMetadata alloc];
  maximumLength = [(_MKFStringCharacteristic *)self maximumLength];
  format = [(_MKFStringCharacteristic *)self format];
  units = [(_MKFStringCharacteristic *)self units];
  manufacturerDescription = [(_MKFStringCharacteristic *)self manufacturerDescription];
  v8 = [(HMDCharacteristicMetadata *)v3 initWithMinimumValue:0 maximumValue:0 stepValue:0 maxLength:maximumLength validValues:0 format:format units:units manufacturerDescription:manufacturerDescription];

  return v8;
}

@end