@interface CAFTestComplexArrayItemCharacteristic
+ (id)secondaryCharacteristicFormats;
+ (void)load;
- (CAFTestComplexArrayItem)testComplexArrayItemValue;
- (id)formattedValue;
- (void)setTestComplexArrayItemValue:(id)value;
@end

@implementation CAFTestComplexArrayItemCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFTestComplexArrayItemCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFTestComplexArrayItem)testComplexArrayItemValue
{
  v3 = [CAFTestComplexArrayItem alloc];
  dictionaryValue = [(CAFDictionaryCharacteristic *)self dictionaryValue];
  v5 = [(CAFTestComplexArrayItem *)v3 initWithDictionary:dictionaryValue];

  return v5;
}

- (void)setTestComplexArrayItemValue:(id)value
{
  dictionaryRepresentation = [value dictionaryRepresentation];
  [(CAFDictionaryCharacteristic *)self setDictionaryValue:dictionaryRepresentation];
}

- (id)formattedValue
{
  testComplexArrayItemValue = [(CAFTestComplexArrayItemCharacteristic *)self testComplexArrayItemValue];
  v3 = [testComplexArrayItemValue description];

  return v3;
}

+ (id)secondaryCharacteristicFormats
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"0x00000000FF000024";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end