@interface CAFUserVisibleDetailedDescriptionListCharacteristic
+ (void)load;
- (CAFUserVisibleDetailedDescriptionList)userVisibleDetailedDescriptionListValue;
- (id)formattedValue;
- (void)setUserVisibleDetailedDescriptionListValue:(id)value;
@end

@implementation CAFUserVisibleDetailedDescriptionListCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFUserVisibleDetailedDescriptionListCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFUserVisibleDetailedDescriptionList)userVisibleDetailedDescriptionListValue
{
  arrayValue = [(CAFArrayCharacteristic *)self arrayValue];
  v3 = [CAFUserVisibleDetailedDescriptionList userVisibleDetailedDescriptionListWithArray:arrayValue];

  return v3;
}

- (void)setUserVisibleDetailedDescriptionListValue:(id)value
{
  arrayRepresentation = [value arrayRepresentation];
  [(CAFArrayCharacteristic *)self setArrayValue:arrayRepresentation];
}

- (id)formattedValue
{
  userVisibleDetailedDescriptionListValue = [(CAFUserVisibleDetailedDescriptionListCharacteristic *)self userVisibleDetailedDescriptionListValue];
  formattedValue = [userVisibleDetailedDescriptionListValue formattedValue];

  return formattedValue;
}

@end