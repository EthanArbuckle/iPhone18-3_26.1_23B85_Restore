@interface CAFTestComplexItemsCharacteristic
+ (id)secondaryCharacteristicFormats;
+ (void)load;
- (CAFTestComplexItems)testComplexItemsValue;
- (id)formattedValue;
- (void)setTestComplexItemsValue:(id)a3;
@end

@implementation CAFTestComplexItemsCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFTestComplexItemsCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFTestComplexItems)testComplexItemsValue
{
  v2 = [(CAFArrayCharacteristic *)self arrayValue];
  v3 = [CAFTestComplexItems testComplexItemsWithArray:v2];

  return v3;
}

- (void)setTestComplexItemsValue:(id)a3
{
  v4 = [a3 arrayRepresentation];
  [(CAFArrayCharacteristic *)self setArrayValue:v4];
}

- (id)formattedValue
{
  v2 = [(CAFTestComplexItemsCharacteristic *)self testComplexItemsValue];
  v3 = [v2 formattedValue];

  return v3;
}

+ (id)secondaryCharacteristicFormats
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"0x00000000FF000022";
  v5[1] = @"0x00000000FF000020";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end