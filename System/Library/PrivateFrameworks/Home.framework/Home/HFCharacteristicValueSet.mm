@interface HFCharacteristicValueSet
- (HFCharacteristicValueSet)init;
- (id)valueForCharacteristic:(id)a3;
- (void)removeValueForCharacteristic:(id)a3;
- (void)setValue:(id)a3 forCharacteristic:(id)a4;
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

    v5 = [MEMORY[0x277CBEB38] dictionary];
    valuesByCharacteristicUUID = v2->_valuesByCharacteristicUUID;
    v2->_valuesByCharacteristicUUID = v5;
  }

  return v2;
}

- (id)valueForCharacteristic:(id)a3
{
  valuesByCharacteristicUUID = self->_valuesByCharacteristicUUID;
  v4 = [a3 uniqueIdentifier];
  v5 = [(NSMutableDictionary *)valuesByCharacteristicUUID objectForKeyedSubscript:v4];

  return v5;
}

- (void)setValue:(id)a3 forCharacteristic:(id)a4
{
  allCharacteristics = self->_allCharacteristics;
  v7 = a4;
  v8 = a3;
  [(NSMutableSet *)allCharacteristics addObject:v7];
  valuesByCharacteristicUUID = self->_valuesByCharacteristicUUID;
  v10 = [v7 uniqueIdentifier];

  [(NSMutableDictionary *)valuesByCharacteristicUUID setObject:v8 forKeyedSubscript:v10];
}

- (void)removeValueForCharacteristic:(id)a3
{
  valuesByCharacteristicUUID = self->_valuesByCharacteristicUUID;
  v6 = a3;
  v5 = [v6 uniqueIdentifier];
  [(NSMutableDictionary *)valuesByCharacteristicUUID removeObjectForKey:v5];

  [(NSMutableSet *)self->_allCharacteristics removeObject:v6];
}

@end