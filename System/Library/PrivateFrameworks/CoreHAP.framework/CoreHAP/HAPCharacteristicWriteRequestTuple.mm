@interface HAPCharacteristicWriteRequestTuple
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HAPCharacteristicWriteRequestTuple

- (id)copyWithZone:(_NSZone *)zone
{
  value = [(HAPCharacteristicWriteRequestTuple *)self value];
  if (([value conformsToProtocol:&unk_283EACBD0] & 1) == 0)
  {

    goto LABEL_5;
  }

  value2 = [(HAPCharacteristicWriteRequestTuple *)self value];

  if (!value2)
  {
LABEL_5:
    value2 = [(HAPCharacteristicWriteRequestTuple *)self value];
    v7 = [value2 copy];
    goto LABEL_6;
  }

  v7 = [value2 copyWithZone:zone];
LABEL_6:
  v23 = v7;

  v8 = objc_opt_class();
  characteristic = [(HAPCharacteristicWriteRequestTuple *)self characteristic];
  v9 = [characteristic copyWithZone:zone];
  authorizationData = [(HAPCharacteristicWriteRequestTuple *)self authorizationData];
  v11 = [authorizationData copyWithZone:zone];
  timedWrite = [(HAPCharacteristicWriteRequestTuple *)self timedWrite];
  includeResponseValue = [(HAPCharacteristicWriteRequestTuple *)self includeResponseValue];
  writeType = [(HAPCharacteristicWriteRequestTuple *)self writeType];
  contextData = [(HAPCharacteristicWriteRequestTuple *)self contextData];
  zoneCopy = zone;
  v16 = [contextData copyWithZone:zone];
  v17 = [v8 writeRequestTupleForCharacteristic:v9 value:v23 authorizationData:v11 timedWrite:timedWrite responseValue:includeResponseValue type:writeType contextData:v16];

  enableEvents = [(HAPCharacteristicWriteRequestTuple *)self enableEvents];
  v19 = [enableEvents copyWithZone:zoneCopy];
  [v17 setEnableEvents:v19];

  return v17;
}

- (NSString)description
{
  characteristic = [(HAPCharacteristicWriteRequestTuple *)self characteristic];
  service = [characteristic service];
  accessory = [service accessory];
  uniqueIdentifier = [accessory uniqueIdentifier];

  v6 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HAPCharacteristicWriteRequestTuple writeType](self, "writeType")}];
  characteristic2 = [(HAPCharacteristicWriteRequestTuple *)self characteristic];
  type = [characteristic2 type];
  v8 = HAPShortUUIDType(type);
  characteristic3 = [(HAPCharacteristicWriteRequestTuple *)self characteristic];
  instanceID = [characteristic3 instanceID];
  characteristic4 = [(HAPCharacteristicWriteRequestTuple *)self characteristic];
  stateNumber = [characteristic4 stateNumber];
  initialValue = [(HAPCharacteristicWriteRequestTuple *)self initialValue];
  value = [(HAPCharacteristicWriteRequestTuple *)self value];
  v15 = [v6 stringWithFormat:@"%@(%@): %@/%@/%@/%@ %@->%@", v17, v7, uniqueIdentifier, v8, instanceID, stateNumber, initialValue, value];

  return v15;
}

@end