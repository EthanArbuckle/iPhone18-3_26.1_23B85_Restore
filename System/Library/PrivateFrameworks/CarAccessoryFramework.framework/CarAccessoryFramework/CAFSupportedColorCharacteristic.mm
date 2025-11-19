@interface CAFSupportedColorCharacteristic
+ (void)load;
- (CAFSupportedColor)supportedColorValue;
- (id)formattedValue;
- (void)setSupportedColorValue:(id)a3;
@end

@implementation CAFSupportedColorCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFSupportedColorCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFSupportedColor)supportedColorValue
{
  v3 = [CAFSupportedColor alloc];
  v4 = [(CAFDictionaryCharacteristic *)self dictionaryValue];
  v5 = [(CAFSupportedColor *)v3 initWithDictionary:v4];

  return v5;
}

- (void)setSupportedColorValue:(id)a3
{
  v4 = [a3 dictionaryRepresentation];
  [(CAFDictionaryCharacteristic *)self setDictionaryValue:v4];
}

- (id)formattedValue
{
  v2 = [(CAFSupportedColorCharacteristic *)self supportedColorValue];
  v3 = [v2 description];

  return v3;
}

@end