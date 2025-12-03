@interface _MKFFloatCharacteristic
- (HMDCharacteristicMetadata)pr_hapMetadata;
- (MKFFloatCharacteristicDatabaseID)databaseID;
- (MKFHome)home;
- (void)pr_updateWithHAPMetadata:(id)metadata;
@end

@implementation _MKFFloatCharacteristic

- (MKFHome)home
{
  service = [(_MKFFloatCharacteristic *)self service];
  home = [service home];

  return home;
}

- (MKFFloatCharacteristicDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFFloatCharacteristicDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (void)pr_updateWithHAPMetadata:(id)metadata
{
  v8.receiver = self;
  v8.super_class = _MKFFloatCharacteristic;
  metadataCopy = metadata;
  [(_MKFCharacteristic *)&v8 pr_updateWithHAPMetadata:metadataCopy];
  minimumValue = [metadataCopy minimumValue];
  [(_MKFFloatCharacteristic *)self setMinimumValue:minimumValue];

  maximumValue = [metadataCopy maximumValue];
  [(_MKFFloatCharacteristic *)self setMaximumValue:maximumValue];

  stepValue = [metadataCopy stepValue];

  [(_MKFFloatCharacteristic *)self setStepValue:stepValue];
}

- (HMDCharacteristicMetadata)pr_hapMetadata
{
  v3 = [HMDCharacteristicMetadata alloc];
  minimumValue = [(_MKFFloatCharacteristic *)self minimumValue];
  maximumValue = [(_MKFFloatCharacteristic *)self maximumValue];
  stepValue = [(_MKFFloatCharacteristic *)self stepValue];
  format = [(_MKFFloatCharacteristic *)self format];
  units = [(_MKFFloatCharacteristic *)self units];
  manufacturerDescription = [(_MKFFloatCharacteristic *)self manufacturerDescription];
  v10 = [(HMDCharacteristicMetadata *)v3 initWithMinimumValue:minimumValue maximumValue:maximumValue stepValue:stepValue maxLength:0 validValues:0 format:format units:units manufacturerDescription:manufacturerDescription];

  return v10;
}

@end