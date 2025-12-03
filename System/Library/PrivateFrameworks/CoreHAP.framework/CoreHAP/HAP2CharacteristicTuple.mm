@interface HAP2CharacteristicTuple
- (HAP2CharacteristicTuple)initWithAccessory:(id)accessory;
@end

@implementation HAP2CharacteristicTuple

- (HAP2CharacteristicTuple)initWithAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v11.receiver = self;
  v11.super_class = HAP2CharacteristicTuple;
  v6 = [(HAP2CharacteristicTuple *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accessory, accessory);
    array = [MEMORY[0x277CBEB18] array];
    values = v7->_values;
    v7->_values = array;
  }

  return v7;
}

@end