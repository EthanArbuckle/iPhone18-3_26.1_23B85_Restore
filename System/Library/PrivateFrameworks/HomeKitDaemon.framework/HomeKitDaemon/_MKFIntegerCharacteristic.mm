@interface _MKFIntegerCharacteristic
- (HMDCharacteristicMetadata)pr_hapMetadata;
- (MKFHome)home;
- (MKFIntegerCharacteristicDatabaseID)databaseID;
- (void)pr_updateWithHAPMetadata:(id)metadata;
@end

@implementation _MKFIntegerCharacteristic

- (MKFHome)home
{
  service = [(_MKFIntegerCharacteristic *)self service];
  home = [service home];

  return home;
}

- (MKFIntegerCharacteristicDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFIntegerCharacteristicDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (void)pr_updateWithHAPMetadata:(id)metadata
{
  v9.receiver = self;
  v9.super_class = _MKFIntegerCharacteristic;
  metadataCopy = metadata;
  [(_MKFCharacteristic *)&v9 pr_updateWithHAPMetadata:metadataCopy];
  minimumValue = [metadataCopy minimumValue];
  [(_MKFIntegerCharacteristic *)self setMinimumValue:minimumValue];

  maximumValue = [metadataCopy maximumValue];
  [(_MKFIntegerCharacteristic *)self setMaximumValue:maximumValue];

  stepValue = [metadataCopy stepValue];
  [(_MKFIntegerCharacteristic *)self setStepValue:stepValue];

  validValues = [metadataCopy validValues];

  [(_MKFIntegerCharacteristic *)self setValidValues:validValues];
}

- (HMDCharacteristicMetadata)pr_hapMetadata
{
  v3 = [HMDCharacteristicMetadata alloc];
  minimumValue = [(_MKFIntegerCharacteristic *)self minimumValue];
  maximumValue = [(_MKFIntegerCharacteristic *)self maximumValue];
  stepValue = [(_MKFIntegerCharacteristic *)self stepValue];
  validValues = [(_MKFIntegerCharacteristic *)self validValues];
  format = [(_MKFIntegerCharacteristic *)self format];
  units = [(_MKFIntegerCharacteristic *)self units];
  manufacturerDescription = [(_MKFIntegerCharacteristic *)self manufacturerDescription];
  v11 = [(HMDCharacteristicMetadata *)v3 initWithMinimumValue:minimumValue maximumValue:maximumValue stepValue:stepValue maxLength:0 validValues:validValues format:format units:units manufacturerDescription:manufacturerDescription];

  return v11;
}

@end