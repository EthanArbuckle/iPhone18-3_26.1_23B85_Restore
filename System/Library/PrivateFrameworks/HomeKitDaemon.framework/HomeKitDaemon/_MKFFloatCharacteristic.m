@interface _MKFFloatCharacteristic
- (HMDCharacteristicMetadata)pr_hapMetadata;
- (MKFFloatCharacteristicDatabaseID)databaseID;
- (MKFHome)home;
- (void)pr_updateWithHAPMetadata:(id)a3;
@end

@implementation _MKFFloatCharacteristic

- (MKFHome)home
{
  v2 = [(_MKFFloatCharacteristic *)self service];
  v3 = [v2 home];

  return v3;
}

- (MKFFloatCharacteristicDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFFloatCharacteristicDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (void)pr_updateWithHAPMetadata:(id)a3
{
  v8.receiver = self;
  v8.super_class = _MKFFloatCharacteristic;
  v4 = a3;
  [(_MKFCharacteristic *)&v8 pr_updateWithHAPMetadata:v4];
  v5 = [v4 minimumValue];
  [(_MKFFloatCharacteristic *)self setMinimumValue:v5];

  v6 = [v4 maximumValue];
  [(_MKFFloatCharacteristic *)self setMaximumValue:v6];

  v7 = [v4 stepValue];

  [(_MKFFloatCharacteristic *)self setStepValue:v7];
}

- (HMDCharacteristicMetadata)pr_hapMetadata
{
  v3 = [HMDCharacteristicMetadata alloc];
  v4 = [(_MKFFloatCharacteristic *)self minimumValue];
  v5 = [(_MKFFloatCharacteristic *)self maximumValue];
  v6 = [(_MKFFloatCharacteristic *)self stepValue];
  v7 = [(_MKFFloatCharacteristic *)self format];
  v8 = [(_MKFFloatCharacteristic *)self units];
  v9 = [(_MKFFloatCharacteristic *)self manufacturerDescription];
  v10 = [(HMDCharacteristicMetadata *)v3 initWithMinimumValue:v4 maximumValue:v5 stepValue:v6 maxLength:0 validValues:0 format:v7 units:v8 manufacturerDescription:v9];

  return v10;
}

@end