@interface CAFTestComplexArrayItemsCharacteristic
+ (void)load;
- (CAFTestComplexArrayItems)testComplexArrayItemsValue;
- (id)formattedValue;
- (void)setTestComplexArrayItemsValue:(id)a3;
@end

@implementation CAFTestComplexArrayItemsCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFTestComplexArrayItemsCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFTestComplexArrayItems)testComplexArrayItemsValue
{
  v2 = [(CAFArrayCharacteristic *)self arrayValue];
  v3 = [CAFTestComplexArrayItems testComplexArrayItemsWithArray:v2];

  return v3;
}

- (void)setTestComplexArrayItemsValue:(id)a3
{
  v4 = [a3 arrayRepresentation];
  [(CAFArrayCharacteristic *)self setArrayValue:v4];
}

- (id)formattedValue
{
  v2 = [(CAFTestComplexArrayItemsCharacteristic *)self testComplexArrayItemsValue];
  v3 = [v2 formattedValue];

  return v3;
}

@end