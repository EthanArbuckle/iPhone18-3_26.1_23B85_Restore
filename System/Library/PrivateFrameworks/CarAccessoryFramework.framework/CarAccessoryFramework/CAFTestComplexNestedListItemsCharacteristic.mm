@interface CAFTestComplexNestedListItemsCharacteristic
+ (void)load;
- (CAFTestComplexNestedListItems)testComplexNestedListItemsValue;
- (id)formattedValue;
- (void)setTestComplexNestedListItemsValue:(id)a3;
@end

@implementation CAFTestComplexNestedListItemsCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFTestComplexNestedListItemsCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFTestComplexNestedListItems)testComplexNestedListItemsValue
{
  v2 = [(CAFArrayCharacteristic *)self arrayValue];
  v3 = [CAFTestComplexNestedListItems testComplexNestedListItemsWithArray:v2];

  return v3;
}

- (void)setTestComplexNestedListItemsValue:(id)a3
{
  v4 = [a3 arrayRepresentation];
  [(CAFArrayCharacteristic *)self setArrayValue:v4];
}

- (id)formattedValue
{
  v2 = [(CAFTestComplexNestedListItemsCharacteristic *)self testComplexNestedListItemsValue];
  v3 = [v2 formattedValue];

  return v3;
}

@end