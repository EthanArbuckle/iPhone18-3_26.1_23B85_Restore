@interface _MKFIntegerCharacteristic
- (HMDCharacteristicMetadata)pr_hapMetadata;
- (MKFHome)home;
- (MKFIntegerCharacteristicDatabaseID)databaseID;
- (void)pr_updateWithHAPMetadata:(id)a3;
@end

@implementation _MKFIntegerCharacteristic

- (MKFHome)home
{
  v2 = [(_MKFIntegerCharacteristic *)self service];
  v3 = [v2 home];

  return v3;
}

- (MKFIntegerCharacteristicDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFIntegerCharacteristicDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (void)pr_updateWithHAPMetadata:(id)a3
{
  v9.receiver = self;
  v9.super_class = _MKFIntegerCharacteristic;
  v4 = a3;
  [(_MKFCharacteristic *)&v9 pr_updateWithHAPMetadata:v4];
  v5 = [v4 minimumValue];
  [(_MKFIntegerCharacteristic *)self setMinimumValue:v5];

  v6 = [v4 maximumValue];
  [(_MKFIntegerCharacteristic *)self setMaximumValue:v6];

  v7 = [v4 stepValue];
  [(_MKFIntegerCharacteristic *)self setStepValue:v7];

  v8 = [v4 validValues];

  [(_MKFIntegerCharacteristic *)self setValidValues:v8];
}

- (HMDCharacteristicMetadata)pr_hapMetadata
{
  v3 = [HMDCharacteristicMetadata alloc];
  v4 = [(_MKFIntegerCharacteristic *)self minimumValue];
  v5 = [(_MKFIntegerCharacteristic *)self maximumValue];
  v6 = [(_MKFIntegerCharacteristic *)self stepValue];
  v7 = [(_MKFIntegerCharacteristic *)self validValues];
  v8 = [(_MKFIntegerCharacteristic *)self format];
  v9 = [(_MKFIntegerCharacteristic *)self units];
  v10 = [(_MKFIntegerCharacteristic *)self manufacturerDescription];
  v11 = [(HMDCharacteristicMetadata *)v3 initWithMinimumValue:v4 maximumValue:v5 stepValue:v6 maxLength:0 validValues:v7 format:v8 units:v9 manufacturerDescription:v10];

  return v11;
}

@end