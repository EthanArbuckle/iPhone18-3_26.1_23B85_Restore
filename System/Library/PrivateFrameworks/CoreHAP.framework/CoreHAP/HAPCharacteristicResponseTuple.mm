@interface HAPCharacteristicResponseTuple
+ (id)responseTupleForCharacteristic:(id)characteristic error:(id)error;
- (id)description;
@end

@implementation HAPCharacteristicResponseTuple

- (id)description
{
  characteristic = [(HAPCharacteristicResponseTuple *)self characteristic];
  service = [characteristic service];
  accessory = [service accessory];
  uniqueIdentifier = [accessory uniqueIdentifier];

  v17 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  characteristic2 = [(HAPCharacteristicResponseTuple *)self characteristic];
  type = [characteristic2 type];
  v8 = HAPShortUUIDType(type);
  characteristic3 = [(HAPCharacteristicResponseTuple *)self characteristic];
  instanceID = [characteristic3 instanceID];
  stateNumber = [(HAPCharacteristicResponseTuple *)self stateNumber];
  value = [(HAPCharacteristicResponseTuple *)self value];
  valueUpdatedTime = [(HAPCharacteristicResponseTuple *)self valueUpdatedTime];
  error = [(HAPCharacteristicResponseTuple *)self error];
  v15 = [v17 stringWithFormat:@"%@: %@/%@/%@/%@ %@/%@/%@", v6, uniqueIdentifier, v8, instanceID, stateNumber, value, valueUpdatedTime, error];

  return v15;
}

+ (id)responseTupleForCharacteristic:(id)characteristic error:(id)error
{
  characteristicCopy = characteristic;
  errorCopy = error;
  v7 = objc_alloc_init(HAPCharacteristicResponseTuple);
  v8 = v7;
  if (v7)
  {
    [(HAPCharacteristicResponseTuple *)v7 setCharacteristic:characteristicCopy];
    value = [characteristicCopy value];
    [(HAPCharacteristicResponseTuple *)v8 setValue:value];

    valueUpdatedTime = [characteristicCopy valueUpdatedTime];
    [(HAPCharacteristicResponseTuple *)v8 setValueUpdatedTime:valueUpdatedTime];

    stateNumber = [characteristicCopy stateNumber];
    [(HAPCharacteristicResponseTuple *)v8 setStateNumber:stateNumber];

    notificationContext = [characteristicCopy notificationContext];
    [(HAPCharacteristicResponseTuple *)v8 setNotificationContext:notificationContext];

    [(HAPCharacteristicResponseTuple *)v8 setError:errorCopy];
  }

  return v8;
}

@end