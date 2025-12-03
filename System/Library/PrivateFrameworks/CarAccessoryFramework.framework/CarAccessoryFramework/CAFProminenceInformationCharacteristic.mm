@interface CAFProminenceInformationCharacteristic
+ (id)secondaryCharacteristicFormats;
+ (void)load;
- (CAFProminenceInformation)prominenceInformationValue;
- (id)formattedValue;
- (void)setProminenceInformationValue:(id)value;
@end

@implementation CAFProminenceInformationCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFProminenceInformationCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFProminenceInformation)prominenceInformationValue
{
  v3 = [CAFProminenceInformation alloc];
  dictionaryValue = [(CAFDictionaryCharacteristic *)self dictionaryValue];
  v5 = [(CAFProminenceInformation *)v3 initWithDictionary:dictionaryValue];

  return v5;
}

- (void)setProminenceInformationValue:(id)value
{
  dictionaryRepresentation = [value dictionaryRepresentation];
  [(CAFDictionaryCharacteristic *)self setDictionaryValue:dictionaryRepresentation];
}

- (id)formattedValue
{
  prominenceInformationValue = [(CAFProminenceInformationCharacteristic *)self prominenceInformationValue];
  v3 = [prominenceInformationValue description];

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