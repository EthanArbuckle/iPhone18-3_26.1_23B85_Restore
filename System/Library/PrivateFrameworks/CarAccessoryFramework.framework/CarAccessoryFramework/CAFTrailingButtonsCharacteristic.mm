@interface CAFTrailingButtonsCharacteristic
+ (void)load;
- (CAFTrailingButtons)trailingButtonsValue;
- (id)formattedValue;
- (void)setTrailingButtonsValue:(id)value;
@end

@implementation CAFTrailingButtonsCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFTrailingButtonsCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFTrailingButtons)trailingButtonsValue
{
  arrayValue = [(CAFArrayCharacteristic *)self arrayValue];
  v3 = [CAFTrailingButtons trailingButtonsWithArray:arrayValue];

  return v3;
}

- (void)setTrailingButtonsValue:(id)value
{
  arrayRepresentation = [value arrayRepresentation];
  [(CAFArrayCharacteristic *)self setArrayValue:arrayRepresentation];
}

- (id)formattedValue
{
  trailingButtonsValue = [(CAFTrailingButtonsCharacteristic *)self trailingButtonsValue];
  formattedValue = [trailingButtonsValue formattedValue];

  return formattedValue;
}

@end