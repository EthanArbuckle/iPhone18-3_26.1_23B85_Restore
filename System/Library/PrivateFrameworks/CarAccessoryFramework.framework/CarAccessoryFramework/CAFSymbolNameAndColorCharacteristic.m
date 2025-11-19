@interface CAFSymbolNameAndColorCharacteristic
+ (void)load;
- (CAFSymbolNameAndColor)symbolNameAndColorValue;
- (id)formattedValue;
- (void)setSymbolNameAndColorValue:(id)a3;
@end

@implementation CAFSymbolNameAndColorCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFSymbolNameAndColorCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFSymbolNameAndColor)symbolNameAndColorValue
{
  v2 = [(CAFArrayCharacteristic *)self arrayValue];
  v3 = [CAFSymbolNameAndColor symbolNameAndColorWithArray:v2];

  return v3;
}

- (void)setSymbolNameAndColorValue:(id)a3
{
  v4 = [a3 arrayRepresentation];
  [(CAFArrayCharacteristic *)self setArrayValue:v4];
}

- (id)formattedValue
{
  v2 = [(CAFSymbolNameAndColorCharacteristic *)self symbolNameAndColorValue];
  v3 = [v2 formattedValue];

  return v3;
}

@end