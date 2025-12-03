@interface CAFSymbolImageWithColorCharacteristic
+ (id)secondaryCharacteristicFormats;
+ (void)load;
- (CAFSymbolImageWithColor)symbolImageWithColorValue;
- (id)formattedValue;
- (void)setSymbolImageWithColorValue:(id)value;
@end

@implementation CAFSymbolImageWithColorCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFSymbolImageWithColorCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFSymbolImageWithColor)symbolImageWithColorValue
{
  v3 = [CAFSymbolImageWithColor alloc];
  dictionaryValue = [(CAFDictionaryCharacteristic *)self dictionaryValue];
  v5 = [(CAFSymbolImageWithColor *)v3 initWithDictionary:dictionaryValue];

  return v5;
}

- (void)setSymbolImageWithColorValue:(id)value
{
  dictionaryRepresentation = [value dictionaryRepresentation];
  [(CAFDictionaryCharacteristic *)self setDictionaryValue:dictionaryRepresentation];
}

- (id)formattedValue
{
  symbolImageWithColorValue = [(CAFSymbolImageWithColorCharacteristic *)self symbolImageWithColorValue];
  v3 = [symbolImageWithColorValue description];

  return v3;
}

+ (id)secondaryCharacteristicFormats
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"0x0000000037000008";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end