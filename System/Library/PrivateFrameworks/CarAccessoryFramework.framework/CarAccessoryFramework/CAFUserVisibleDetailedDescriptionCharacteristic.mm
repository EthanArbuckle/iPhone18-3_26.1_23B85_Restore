@interface CAFUserVisibleDetailedDescriptionCharacteristic
+ (id)secondaryCharacteristicFormats;
+ (void)load;
- (CAFUserVisibleDetailedDescription)userVisibleDetailedDescriptionValue;
- (id)formattedValue;
- (void)setUserVisibleDetailedDescriptionValue:(id)value;
@end

@implementation CAFUserVisibleDetailedDescriptionCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFUserVisibleDetailedDescriptionCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFUserVisibleDetailedDescription)userVisibleDetailedDescriptionValue
{
  v3 = [CAFUserVisibleDetailedDescription alloc];
  dictionaryValue = [(CAFDictionaryCharacteristic *)self dictionaryValue];
  v5 = [(CAFUserVisibleDetailedDescription *)v3 initWithDictionary:dictionaryValue];

  return v5;
}

- (void)setUserVisibleDetailedDescriptionValue:(id)value
{
  dictionaryRepresentation = [value dictionaryRepresentation];
  [(CAFDictionaryCharacteristic *)self setDictionaryValue:dictionaryRepresentation];
}

- (id)formattedValue
{
  userVisibleDetailedDescriptionValue = [(CAFUserVisibleDetailedDescriptionCharacteristic *)self userVisibleDetailedDescriptionValue];
  v3 = [userVisibleDetailedDescriptionValue description];

  return v3;
}

+ (id)secondaryCharacteristicFormats
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"0x0000000036000029";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end