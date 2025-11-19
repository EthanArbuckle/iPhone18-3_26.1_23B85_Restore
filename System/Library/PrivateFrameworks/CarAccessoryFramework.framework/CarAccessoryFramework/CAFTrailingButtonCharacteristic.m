@interface CAFTrailingButtonCharacteristic
+ (id)secondaryCharacteristicFormats;
+ (void)load;
- (CAFTrailingButton)trailingButtonValue;
- (id)formattedValue;
- (void)setTrailingButtonValue:(id)a3;
@end

@implementation CAFTrailingButtonCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFTrailingButtonCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFTrailingButton)trailingButtonValue
{
  v3 = [CAFTrailingButton alloc];
  v4 = [(CAFDictionaryCharacteristic *)self dictionaryValue];
  v5 = [(CAFTrailingButton *)v3 initWithDictionary:v4];

  return v5;
}

- (void)setTrailingButtonValue:(id)a3
{
  v4 = [a3 dictionaryRepresentation];
  [(CAFDictionaryCharacteristic *)self setDictionaryValue:v4];
}

- (id)formattedValue
{
  v2 = [(CAFTrailingButtonCharacteristic *)self trailingButtonValue];
  v3 = [v2 description];

  return v3;
}

+ (id)secondaryCharacteristicFormats
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"0x000000003700000C";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end