@interface HFCharacteristicValueSet
- (HFCharacteristicValueSet)init;
- (id)valueForCharacteristic:(id)characteristic;
- (void)removeValueForCharacteristic:(id)characteristic;
- (void)setValue:(id)value forCharacteristic:(id)characteristic;
@end

@implementation HFCharacteristicValueSet

- (HFCharacteristicValueSet)init
{
  v8.receiver = self;
  v8.super_class = HFCharacteristicValueSet;
  v2 = [(HFCharacteristicValueSet *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB58] set];
    allCharacteristics = v2->_allCharacteristics;
    v2->_allCharacteristics = v3;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    valuesByCharacteristicUUID = v2->_valuesByCharacteristicUUID;
    v2->_valuesByCharacteristicUUID = dictionary;
  }

  return v2;
}

- (id)valueForCharacteristic:(id)characteristic
{
  valuesByCharacteristicUUID = self->_valuesByCharacteristicUUID;
  uniqueIdentifier = [characteristic uniqueIdentifier];
  v5 = [(NSMutableDictionary *)valuesByCharacteristicUUID objectForKeyedSubscript:uniqueIdentifier];

  return v5;
}

- (void)setValue:(id)value forCharacteristic:(id)characteristic
{
  allCharacteristics = self->_allCharacteristics;
  characteristicCopy = characteristic;
  valueCopy = value;
  [(NSMutableSet *)allCharacteristics addObject:characteristicCopy];
  valuesByCharacteristicUUID = self->_valuesByCharacteristicUUID;
  uniqueIdentifier = [characteristicCopy uniqueIdentifier];

  [(NSMutableDictionary *)valuesByCharacteristicUUID setObject:valueCopy forKeyedSubscript:uniqueIdentifier];
}

- (void)removeValueForCharacteristic:(id)characteristic
{
  valuesByCharacteristicUUID = self->_valuesByCharacteristicUUID;
  characteristicCopy = characteristic;
  uniqueIdentifier = [characteristicCopy uniqueIdentifier];
  [(NSMutableDictionary *)valuesByCharacteristicUUID removeObjectForKey:uniqueIdentifier];

  [(NSMutableSet *)self->_allCharacteristics removeObject:characteristicCopy];
}

@end