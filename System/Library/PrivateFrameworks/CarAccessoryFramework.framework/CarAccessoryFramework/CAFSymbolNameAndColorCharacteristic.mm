@interface CAFSymbolNameAndColorCharacteristic
+ (void)load;
- (CAFSymbolNameAndColor)symbolNameAndColorValue;
- (id)formattedValue;
- (void)setSymbolNameAndColorValue:(id)value;
@end

@implementation CAFSymbolNameAndColorCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFSymbolNameAndColorCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFSymbolNameAndColor)symbolNameAndColorValue
{
  arrayValue = [(CAFArrayCharacteristic *)self arrayValue];
  v3 = [CAFSymbolNameAndColor symbolNameAndColorWithArray:arrayValue];

  return v3;
}

- (void)setSymbolNameAndColorValue:(id)value
{
  arrayRepresentation = [value arrayRepresentation];
  [(CAFArrayCharacteristic *)self setArrayValue:arrayRepresentation];
}

- (id)formattedValue
{
  symbolNameAndColorValue = [(CAFSymbolNameAndColorCharacteristic *)self symbolNameAndColorValue];
  formattedValue = [symbolNameAndColorValue formattedValue];

  return formattedValue;
}

@end