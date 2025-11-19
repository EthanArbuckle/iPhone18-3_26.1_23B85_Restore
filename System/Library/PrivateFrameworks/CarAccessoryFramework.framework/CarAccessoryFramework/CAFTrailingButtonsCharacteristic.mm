@interface CAFTrailingButtonsCharacteristic
+ (void)load;
- (CAFTrailingButtons)trailingButtonsValue;
- (id)formattedValue;
- (void)setTrailingButtonsValue:(id)a3;
@end

@implementation CAFTrailingButtonsCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFTrailingButtonsCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFTrailingButtons)trailingButtonsValue
{
  v2 = [(CAFArrayCharacteristic *)self arrayValue];
  v3 = [CAFTrailingButtons trailingButtonsWithArray:v2];

  return v3;
}

- (void)setTrailingButtonsValue:(id)a3
{
  v4 = [a3 arrayRepresentation];
  [(CAFArrayCharacteristic *)self setArrayValue:v4];
}

- (id)formattedValue
{
  v2 = [(CAFTrailingButtonsCharacteristic *)self trailingButtonsValue];
  v3 = [v2 formattedValue];

  return v3;
}

@end