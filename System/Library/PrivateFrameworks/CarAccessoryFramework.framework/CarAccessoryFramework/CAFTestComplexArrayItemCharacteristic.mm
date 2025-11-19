@interface CAFTestComplexArrayItemCharacteristic
+ (id)secondaryCharacteristicFormats;
+ (void)load;
- (CAFTestComplexArrayItem)testComplexArrayItemValue;
- (id)formattedValue;
- (void)setTestComplexArrayItemValue:(id)a3;
@end

@implementation CAFTestComplexArrayItemCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFTestComplexArrayItemCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFTestComplexArrayItem)testComplexArrayItemValue
{
  v3 = [CAFTestComplexArrayItem alloc];
  v4 = [(CAFDictionaryCharacteristic *)self dictionaryValue];
  v5 = [(CAFTestComplexArrayItem *)v3 initWithDictionary:v4];

  return v5;
}

- (void)setTestComplexArrayItemValue:(id)a3
{
  v4 = [a3 dictionaryRepresentation];
  [(CAFDictionaryCharacteristic *)self setDictionaryValue:v4];
}

- (id)formattedValue
{
  v2 = [(CAFTestComplexArrayItemCharacteristic *)self testComplexArrayItemValue];
  v3 = [v2 description];

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