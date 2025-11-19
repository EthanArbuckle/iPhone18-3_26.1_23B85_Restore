@interface _MKFStringCharacteristic
- (HMDCharacteristicMetadata)pr_hapMetadata;
- (MKFHome)home;
- (MKFStringCharacteristicDatabaseID)databaseID;
- (void)pr_updateWithHAPMetadata:(id)a3;
@end

@implementation _MKFStringCharacteristic

- (MKFHome)home
{
  v2 = [(_MKFStringCharacteristic *)self service];
  v3 = [v2 home];

  return v3;
}

- (MKFStringCharacteristicDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFStringCharacteristicDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (void)pr_updateWithHAPMetadata:(id)a3
{
  v6.receiver = self;
  v6.super_class = _MKFStringCharacteristic;
  v4 = a3;
  [(_MKFCharacteristic *)&v6 pr_updateWithHAPMetadata:v4];
  v5 = [v4 maxLength];

  [(_MKFStringCharacteristic *)self setMaximumLength:v5];
}

- (HMDCharacteristicMetadata)pr_hapMetadata
{
  v3 = [HMDCharacteristicMetadata alloc];
  v4 = [(_MKFStringCharacteristic *)self maximumLength];
  v5 = [(_MKFStringCharacteristic *)self format];
  v6 = [(_MKFStringCharacteristic *)self units];
  v7 = [(_MKFStringCharacteristic *)self manufacturerDescription];
  v8 = [(HMDCharacteristicMetadata *)v3 initWithMinimumValue:0 maximumValue:0 stepValue:0 maxLength:v4 validValues:0 format:v5 units:v6 manufacturerDescription:v7];

  return v8;
}

@end