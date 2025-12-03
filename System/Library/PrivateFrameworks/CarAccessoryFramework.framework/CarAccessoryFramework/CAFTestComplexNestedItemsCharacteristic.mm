@interface CAFTestComplexNestedItemsCharacteristic
+ (id)secondaryCharacteristicFormats;
+ (void)load;
- (CAFTestComplexNestedItems)testComplexNestedItemsValue;
- (id)formattedValue;
- (void)setTestComplexNestedItemsValue:(id)value;
@end

@implementation CAFTestComplexNestedItemsCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFTestComplexNestedItemsCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFTestComplexNestedItems)testComplexNestedItemsValue
{
  arrayValue = [(CAFArrayCharacteristic *)self arrayValue];
  v3 = [CAFTestComplexNestedItems testComplexNestedItemsWithArray:arrayValue];

  return v3;
}

- (void)setTestComplexNestedItemsValue:(id)value
{
  arrayRepresentation = [value arrayRepresentation];
  [(CAFArrayCharacteristic *)self setArrayValue:arrayRepresentation];
}

- (id)formattedValue
{
  testComplexNestedItemsValue = [(CAFTestComplexNestedItemsCharacteristic *)self testComplexNestedItemsValue];
  formattedValue = [testComplexNestedItemsValue formattedValue];

  return formattedValue;
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