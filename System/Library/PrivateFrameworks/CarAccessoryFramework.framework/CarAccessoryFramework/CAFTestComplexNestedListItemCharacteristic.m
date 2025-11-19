@interface CAFTestComplexNestedListItemCharacteristic
+ (id)secondaryCharacteristicFormats;
+ (void)load;
- (CAFTestComplexNestedListItem)testComplexNestedListItemValue;
- (id)formattedValue;
- (void)setTestComplexNestedListItemValue:(id)a3;
@end

@implementation CAFTestComplexNestedListItemCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFTestComplexNestedListItemCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFTestComplexNestedListItem)testComplexNestedListItemValue
{
  v3 = [CAFTestComplexNestedListItem alloc];
  v4 = [(CAFDictionaryCharacteristic *)self dictionaryValue];
  v5 = [(CAFTestComplexNestedListItem *)v3 initWithDictionary:v4];

  return v5;
}

- (void)setTestComplexNestedListItemValue:(id)a3
{
  v4 = [a3 dictionaryRepresentation];
  [(CAFDictionaryCharacteristic *)self setDictionaryValue:v4];
}

- (id)formattedValue
{
  v2 = [(CAFTestComplexNestedListItemCharacteristic *)self testComplexNestedListItemValue];
  v3 = [v2 description];

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