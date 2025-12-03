@interface CAFTestComplexItemCharacteristic
+ (id)secondaryCharacteristicFormats;
+ (void)load;
- (CAFTestComplexItem)testComplexItemValue;
- (id)formattedValue;
- (void)setTestComplexItemValue:(id)value;
@end

@implementation CAFTestComplexItemCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFTestComplexItemCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFTestComplexItem)testComplexItemValue
{
  v3 = [CAFTestComplexItem alloc];
  dictionaryValue = [(CAFDictionaryCharacteristic *)self dictionaryValue];
  v5 = [(CAFTestComplexItem *)v3 initWithDictionary:dictionaryValue];

  return v5;
}

- (void)setTestComplexItemValue:(id)value
{
  dictionaryRepresentation = [value dictionaryRepresentation];
  [(CAFDictionaryCharacteristic *)self setDictionaryValue:dictionaryRepresentation];
}

- (id)formattedValue
{
  testComplexItemValue = [(CAFTestComplexItemCharacteristic *)self testComplexItemValue];
  v3 = [testComplexItemValue description];

  return v3;
}

+ (id)secondaryCharacteristicFormats
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"0x00000000FF000010";
  v5[1] = @"0x00000000FF000021";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end