@interface HAPCharacteristicEvent
+ (id)eventWithCharacteristic:(id)characteristic;
- (HAPCharacteristicEvent)initWithCharacteristic:(id)characteristic;
@end

@implementation HAPCharacteristicEvent

- (HAPCharacteristicEvent)initWithCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  v23.receiver = self;
  v23.super_class = HAPCharacteristicEvent;
  v5 = [(HAPCharacteristicEvent *)&v23 init];
  if (v5)
  {
    service = [characteristicCopy service];
    accessory = [service accessory];
    serverIdentifier = [accessory serverIdentifier];
    serverIdentifier = v5->_serverIdentifier;
    v5->_serverIdentifier = serverIdentifier;

    instanceID = [accessory instanceID];
    accessoryInstanceID = v5->_accessoryInstanceID;
    v5->_accessoryInstanceID = instanceID;

    instanceID2 = [service instanceID];
    serviceInstanceID = v5->_serviceInstanceID;
    v5->_serviceInstanceID = instanceID2;

    instanceID3 = [characteristicCopy instanceID];
    characteristicInstanceID = v5->_characteristicInstanceID;
    v5->_characteristicInstanceID = instanceID3;

    value = [characteristicCopy value];
    value = v5->_value;
    v5->_value = value;

    stateNumber = [characteristicCopy stateNumber];
    stateNumber = v5->_stateNumber;
    v5->_stateNumber = stateNumber;

    valueUpdatedTime = [characteristicCopy valueUpdatedTime];
    updateTime = v5->_updateTime;
    v5->_updateTime = valueUpdatedTime;
  }

  return v5;
}

+ (id)eventWithCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  v4 = [[HAPCharacteristicEvent alloc] initWithCharacteristic:characteristicCopy];

  return v4;
}

@end