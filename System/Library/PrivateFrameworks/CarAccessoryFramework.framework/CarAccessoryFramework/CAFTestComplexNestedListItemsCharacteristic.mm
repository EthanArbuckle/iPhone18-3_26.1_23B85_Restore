@interface CAFTestComplexNestedListItemsCharacteristic
+ (void)load;
- (CAFTestComplexNestedListItems)testComplexNestedListItemsValue;
- (id)formattedValue;
- (void)setTestComplexNestedListItemsValue:(id)value;
@end

@implementation CAFTestComplexNestedListItemsCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFTestComplexNestedListItemsCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFTestComplexNestedListItems)testComplexNestedListItemsValue
{
  arrayValue = [(CAFArrayCharacteristic *)self arrayValue];
  v3 = [CAFTestComplexNestedListItems testComplexNestedListItemsWithArray:arrayValue];

  return v3;
}

- (void)setTestComplexNestedListItemsValue:(id)value
{
  arrayRepresentation = [value arrayRepresentation];
  [(CAFArrayCharacteristic *)self setArrayValue:arrayRepresentation];
}

- (id)formattedValue
{
  testComplexNestedListItemsValue = [(CAFTestComplexNestedListItemsCharacteristic *)self testComplexNestedListItemsValue];
  formattedValue = [testComplexNestedListItemsValue formattedValue];

  return formattedValue;
}

@end