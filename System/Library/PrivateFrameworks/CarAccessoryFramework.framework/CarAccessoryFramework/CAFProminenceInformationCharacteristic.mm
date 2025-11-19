@interface CAFProminenceInformationCharacteristic
+ (id)secondaryCharacteristicFormats;
+ (void)load;
- (CAFProminenceInformation)prominenceInformationValue;
- (id)formattedValue;
- (void)setProminenceInformationValue:(id)a3;
@end

@implementation CAFProminenceInformationCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFProminenceInformationCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFProminenceInformation)prominenceInformationValue
{
  v3 = [CAFProminenceInformation alloc];
  v4 = [(CAFDictionaryCharacteristic *)self dictionaryValue];
  v5 = [(CAFProminenceInformation *)v3 initWithDictionary:v4];

  return v5;
}

- (void)setProminenceInformationValue:(id)a3
{
  v4 = [a3 dictionaryRepresentation];
  [(CAFDictionaryCharacteristic *)self setDictionaryValue:v4];
}

- (id)formattedValue
{
  v2 = [(CAFProminenceInformationCharacteristic *)self prominenceInformationValue];
  v3 = [v2 description];

  return v3;
}

+ (id)secondaryCharacteristicFormats
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"0x0000000036000020";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end