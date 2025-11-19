@interface HAPCharacteristicWriteRequestTuple
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HAPCharacteristicWriteRequestTuple

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [(HAPCharacteristicWriteRequestTuple *)self value];
  if (([v5 conformsToProtocol:&unk_283EACBD0] & 1) == 0)
  {

    goto LABEL_5;
  }

  v6 = [(HAPCharacteristicWriteRequestTuple *)self value];

  if (!v6)
  {
LABEL_5:
    v6 = [(HAPCharacteristicWriteRequestTuple *)self value];
    v7 = [v6 copy];
    goto LABEL_6;
  }

  v7 = [v6 copyWithZone:a3];
LABEL_6:
  v23 = v7;

  v8 = objc_opt_class();
  v22 = [(HAPCharacteristicWriteRequestTuple *)self characteristic];
  v9 = [v22 copyWithZone:a3];
  v10 = [(HAPCharacteristicWriteRequestTuple *)self authorizationData];
  v11 = [v10 copyWithZone:a3];
  v12 = [(HAPCharacteristicWriteRequestTuple *)self timedWrite];
  v13 = [(HAPCharacteristicWriteRequestTuple *)self includeResponseValue];
  v14 = [(HAPCharacteristicWriteRequestTuple *)self writeType];
  v15 = [(HAPCharacteristicWriteRequestTuple *)self contextData];
  v21 = a3;
  v16 = [v15 copyWithZone:a3];
  v17 = [v8 writeRequestTupleForCharacteristic:v9 value:v23 authorizationData:v11 timedWrite:v12 responseValue:v13 type:v14 contextData:v16];

  v18 = [(HAPCharacteristicWriteRequestTuple *)self enableEvents];
  v19 = [v18 copyWithZone:v21];
  [v17 setEnableEvents:v19];

  return v17;
}

- (NSString)description
{
  v3 = [(HAPCharacteristicWriteRequestTuple *)self characteristic];
  v4 = [v3 service];
  v5 = [v4 accessory];
  v19 = [v5 uniqueIdentifier];

  v6 = MEMORY[0x277CCACA8];
  v17 = objc_opt_class();
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HAPCharacteristicWriteRequestTuple writeType](self, "writeType")}];
  v20 = [(HAPCharacteristicWriteRequestTuple *)self characteristic];
  v18 = [v20 type];
  v8 = HAPShortUUIDType(v18);
  v9 = [(HAPCharacteristicWriteRequestTuple *)self characteristic];
  v10 = [v9 instanceID];
  v11 = [(HAPCharacteristicWriteRequestTuple *)self characteristic];
  v12 = [v11 stateNumber];
  v13 = [(HAPCharacteristicWriteRequestTuple *)self initialValue];
  v14 = [(HAPCharacteristicWriteRequestTuple *)self value];
  v15 = [v6 stringWithFormat:@"%@(%@): %@/%@/%@/%@ %@->%@", v17, v7, v19, v8, v10, v12, v13, v14];

  return v15;
}

@end