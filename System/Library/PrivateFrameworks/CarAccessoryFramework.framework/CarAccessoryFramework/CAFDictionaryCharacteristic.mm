@interface CAFDictionaryCharacteristic
+ (void)load;
- (NSDictionary)dictionaryValue;
- (id)formattedValue;
- (void)setDictionaryValue:(id)value;
@end

@implementation CAFDictionaryCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFDictionaryCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (NSDictionary)dictionaryValue
{
  objc_opt_class();
  value = [(CAFCharacteristic *)self value];
  if (value && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = value;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setDictionaryValue:(id)value
{
  v4 = [value copy];
  [(CAFCharacteristic *)self setValue:v4];
}

- (id)formattedValue
{
  value = [(CAFCharacteristic *)self value];
  if (value)
  {
    dictionaryValue = [(CAFDictionaryCharacteristic *)self dictionaryValue];
    v5 = [dictionaryValue description];
  }

  else
  {
    v5 = @"(null)";
  }

  return v5;
}

@end