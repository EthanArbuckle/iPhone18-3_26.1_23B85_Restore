@interface CAFTestComplexNestedItemCharacteristic
+ (id)secondaryCharacteristicFormats;
+ (void)load;
- (CAFTestComplexNestedItem)testComplexNestedItemValue;
- (id)formattedValue;
- (void)setTestComplexNestedItemValue:(id)value;
@end

@implementation CAFTestComplexNestedItemCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFTestComplexNestedItemCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFTestComplexNestedItem)testComplexNestedItemValue
{
  v3 = [CAFTestComplexNestedItem alloc];
  dictionaryValue = [(CAFDictionaryCharacteristic *)self dictionaryValue];
  v5 = [(CAFTestComplexNestedItem *)v3 initWithDictionary:dictionaryValue];

  return v5;
}

- (void)setTestComplexNestedItemValue:(id)value
{
  dictionaryRepresentation = [value dictionaryRepresentation];
  [(CAFDictionaryCharacteristic *)self setDictionaryValue:dictionaryRepresentation];
}

- (id)formattedValue
{
  testComplexNestedItemValue = [(CAFTestComplexNestedItemCharacteristic *)self testComplexNestedItemValue];
  v3 = [testComplexNestedItemValue description];

  return v3;
}

+ (id)secondaryCharacteristicFormats
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"0x00000000FF000025";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end