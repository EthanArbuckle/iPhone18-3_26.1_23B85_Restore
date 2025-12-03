@interface CAFStringCharacteristic
+ (void)load;
- (NSString)stringValue;
- (id)formattedValue;
- (void)setStringValue:(id)value;
@end

@implementation CAFStringCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFStringCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (NSString)stringValue
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

  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  return v6;
}

- (void)setStringValue:(id)value
{
  v4 = [value copy];
  [(CAFCharacteristic *)self setValue:v4];
}

- (id)formattedValue
{
  value = [(CAFCharacteristic *)self value];
  if (value)
  {
    stringValue = [(CAFStringCharacteristic *)self stringValue];
  }

  else
  {
    stringValue = @"(null)";
  }

  v5 = stringValue;

  return v5;
}

@end