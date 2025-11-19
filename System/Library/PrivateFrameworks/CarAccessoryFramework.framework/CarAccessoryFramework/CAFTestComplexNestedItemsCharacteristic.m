@interface CAFTestComplexNestedItemsCharacteristic
+ (id)secondaryCharacteristicFormats;
+ (void)load;
- (CAFTestComplexNestedItems)testComplexNestedItemsValue;
- (id)formattedValue;
- (void)setTestComplexNestedItemsValue:(id)a3;
@end

@implementation CAFTestComplexNestedItemsCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFTestComplexNestedItemsCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFTestComplexNestedItems)testComplexNestedItemsValue
{
  v2 = [(CAFArrayCharacteristic *)self arrayValue];
  v3 = [CAFTestComplexNestedItems testComplexNestedItemsWithArray:v2];

  return v3;
}

- (void)setTestComplexNestedItemsValue:(id)a3
{
  v4 = [a3 arrayRepresentation];
  [(CAFArrayCharacteristic *)self setArrayValue:v4];
}

- (id)formattedValue
{
  v2 = [(CAFTestComplexNestedItemsCharacteristic *)self testComplexNestedItemsValue];
  v3 = [v2 formattedValue];

  return v3;
}

+ (id)secondaryCharacteristicFormats
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"0x00000000FF000026";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end