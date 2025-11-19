@interface CAFUserVisibleDetailedDescriptionListCharacteristic
+ (void)load;
- (CAFUserVisibleDetailedDescriptionList)userVisibleDetailedDescriptionListValue;
- (id)formattedValue;
- (void)setUserVisibleDetailedDescriptionListValue:(id)a3;
@end

@implementation CAFUserVisibleDetailedDescriptionListCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFUserVisibleDetailedDescriptionListCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFUserVisibleDetailedDescriptionList)userVisibleDetailedDescriptionListValue
{
  v2 = [(CAFArrayCharacteristic *)self arrayValue];
  v3 = [CAFUserVisibleDetailedDescriptionList userVisibleDetailedDescriptionListWithArray:v2];

  return v3;
}

- (void)setUserVisibleDetailedDescriptionListValue:(id)a3
{
  v4 = [a3 arrayRepresentation];
  [(CAFArrayCharacteristic *)self setArrayValue:v4];
}

- (id)formattedValue
{
  v2 = [(CAFUserVisibleDetailedDescriptionListCharacteristic *)self userVisibleDetailedDescriptionListValue];
  v3 = [v2 formattedValue];

  return v3;
}

@end