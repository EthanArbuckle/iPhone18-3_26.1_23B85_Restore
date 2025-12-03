@interface CAFSupportedColorCharacteristic
+ (void)load;
- (CAFSupportedColor)supportedColorValue;
- (id)formattedValue;
- (void)setSupportedColorValue:(id)value;
@end

@implementation CAFSupportedColorCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFSupportedColorCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFSupportedColor)supportedColorValue
{
  v3 = [CAFSupportedColor alloc];
  dictionaryValue = [(CAFDictionaryCharacteristic *)self dictionaryValue];
  v5 = [(CAFSupportedColor *)v3 initWithDictionary:dictionaryValue];

  return v5;
}

- (void)setSupportedColorValue:(id)value
{
  dictionaryRepresentation = [value dictionaryRepresentation];
  [(CAFDictionaryCharacteristic *)self setDictionaryValue:dictionaryRepresentation];
}

- (id)formattedValue
{
  supportedColorValue = [(CAFSupportedColorCharacteristic *)self supportedColorValue];
  v3 = [supportedColorValue description];

  return v3;
}

@end