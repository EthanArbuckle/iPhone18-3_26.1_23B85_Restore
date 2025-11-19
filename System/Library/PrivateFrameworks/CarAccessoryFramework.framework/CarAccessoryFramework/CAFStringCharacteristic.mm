@interface CAFStringCharacteristic
+ (void)load;
- (NSString)stringValue;
- (id)formattedValue;
- (void)setStringValue:(id)a3;
@end

@implementation CAFStringCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFStringCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (NSString)stringValue
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

  v5 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:v5];

  return v6;
}

- (void)setStringValue:(id)a3
{
  v4 = [a3 copy];
  [(CAFCharacteristic *)self setValue:v4];
}

- (id)formattedValue
{
  v3 = [(CAFCharacteristic *)self value];
  if (v3)
  {
    v4 = [(CAFStringCharacteristic *)self stringValue];
  }

  else
  {
    v4 = @"(null)";
  }

  v5 = v4;

  return v5;
}

@end