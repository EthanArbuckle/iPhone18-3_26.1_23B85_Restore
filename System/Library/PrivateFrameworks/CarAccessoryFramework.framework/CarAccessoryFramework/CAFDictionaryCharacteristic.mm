@interface CAFDictionaryCharacteristic
+ (void)load;
- (NSDictionary)dictionaryValue;
- (id)formattedValue;
- (void)setDictionaryValue:(id)a3;
@end

@implementation CAFDictionaryCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFDictionaryCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (NSDictionary)dictionaryValue
{
  objc_opt_class();
  v3 = [(CAFCharacteristic *)self value];
  if (v3 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setDictionaryValue:(id)a3
{
  v4 = [a3 copy];
  [(CAFCharacteristic *)self setValue:v4];
}

- (id)formattedValue
{
  v3 = [(CAFCharacteristic *)self value];
  if (v3)
  {
    v4 = [(CAFDictionaryCharacteristic *)self dictionaryValue];
    v5 = [v4 description];
  }

  else
  {
    v5 = @"(null)";
  }

  return v5;
}

@end