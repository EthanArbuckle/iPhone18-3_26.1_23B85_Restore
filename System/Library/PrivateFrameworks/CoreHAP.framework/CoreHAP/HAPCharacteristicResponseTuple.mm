@interface HAPCharacteristicResponseTuple
+ (id)responseTupleForCharacteristic:(id)a3 error:(id)a4;
- (id)description;
@end

@implementation HAPCharacteristicResponseTuple

- (id)description
{
  v3 = [(HAPCharacteristicResponseTuple *)self characteristic];
  v4 = [v3 service];
  v5 = [v4 accessory];
  v18 = [v5 uniqueIdentifier];

  v17 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v19 = [(HAPCharacteristicResponseTuple *)self characteristic];
  v7 = [v19 type];
  v8 = HAPShortUUIDType(v7);
  v9 = [(HAPCharacteristicResponseTuple *)self characteristic];
  v10 = [v9 instanceID];
  v11 = [(HAPCharacteristicResponseTuple *)self stateNumber];
  v12 = [(HAPCharacteristicResponseTuple *)self value];
  v13 = [(HAPCharacteristicResponseTuple *)self valueUpdatedTime];
  v14 = [(HAPCharacteristicResponseTuple *)self error];
  v15 = [v17 stringWithFormat:@"%@: %@/%@/%@/%@ %@/%@/%@", v6, v18, v8, v10, v11, v12, v13, v14];

  return v15;
}

+ (id)responseTupleForCharacteristic:(id)a3 error:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(HAPCharacteristicResponseTuple);
  v8 = v7;
  if (v7)
  {
    [(HAPCharacteristicResponseTuple *)v7 setCharacteristic:v5];
    v9 = [v5 value];
    [(HAPCharacteristicResponseTuple *)v8 setValue:v9];

    v10 = [v5 valueUpdatedTime];
    [(HAPCharacteristicResponseTuple *)v8 setValueUpdatedTime:v10];

    v11 = [v5 stateNumber];
    [(HAPCharacteristicResponseTuple *)v8 setStateNumber:v11];

    v12 = [v5 notificationContext];
    [(HAPCharacteristicResponseTuple *)v8 setNotificationContext:v12];

    [(HAPCharacteristicResponseTuple *)v8 setError:v6];
  }

  return v8;
}

@end