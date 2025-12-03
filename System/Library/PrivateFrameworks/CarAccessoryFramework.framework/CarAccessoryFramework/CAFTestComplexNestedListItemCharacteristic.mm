@interface CAFTestComplexNestedListItemCharacteristic
+ (id)secondaryCharacteristicFormats;
+ (void)load;
- (CAFTestComplexNestedListItem)testComplexNestedListItemValue;
- (id)formattedValue;
- (void)setTestComplexNestedListItemValue:(id)value;
@end

@implementation CAFTestComplexNestedListItemCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFTestComplexNestedListItemCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFTestComplexNestedListItem)testComplexNestedListItemValue
{
  v3 = [CAFTestComplexNestedListItem alloc];
  dictionaryValue = [(CAFDictionaryCharacteristic *)self dictionaryValue];
  v5 = [(CAFTestComplexNestedListItem *)v3 initWithDictionary:dictionaryValue];

  return v5;
}

- (void)setTestComplexNestedListItemValue:(id)value
{
  dictionaryRepresentation = [value dictionaryRepresentation];
  [(CAFDictionaryCharacteristic *)self setDictionaryValue:dictionaryRepresentation];
}

- (id)formattedValue
{
  testComplexNestedListItemValue = [(CAFTestComplexNestedListItemCharacteristic *)self testComplexNestedListItemValue];
  v3 = [testComplexNestedListItemValue description];

  return v3;
}

+ (id)secondaryCharacteristicFormats
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"0x00000000FF000027";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end