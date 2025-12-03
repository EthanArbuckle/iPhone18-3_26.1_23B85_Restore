@interface CAFTestComplexArrayItemsCharacteristic
+ (void)load;
- (CAFTestComplexArrayItems)testComplexArrayItemsValue;
- (id)formattedValue;
- (void)setTestComplexArrayItemsValue:(id)value;
@end

@implementation CAFTestComplexArrayItemsCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFTestComplexArrayItemsCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFTestComplexArrayItems)testComplexArrayItemsValue
{
  arrayValue = [(CAFArrayCharacteristic *)self arrayValue];
  v3 = [CAFTestComplexArrayItems testComplexArrayItemsWithArray:arrayValue];

  return v3;
}

- (void)setTestComplexArrayItemsValue:(id)value
{
  arrayRepresentation = [value arrayRepresentation];
  [(CAFArrayCharacteristic *)self setArrayValue:arrayRepresentation];
}

- (id)formattedValue
{
  testComplexArrayItemsValue = [(CAFTestComplexArrayItemsCharacteristic *)self testComplexArrayItemsValue];
  formattedValue = [testComplexArrayItemsValue formattedValue];

  return formattedValue;
}

@end