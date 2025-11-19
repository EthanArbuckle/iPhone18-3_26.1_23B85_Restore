@interface CAFPointOfInterestCharacteristic
+ (id)secondaryCharacteristicFormats;
+ (void)load;
- (CAFPointOfInterest)pointOfInterestValue;
- (id)formattedValue;
- (void)setPointOfInterestValue:(id)a3;
@end

@implementation CAFPointOfInterestCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFPointOfInterestCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFPointOfInterest)pointOfInterestValue
{
  v3 = [CAFPointOfInterest alloc];
  v4 = [(CAFDictionaryCharacteristic *)self dictionaryValue];
  v5 = [(CAFPointOfInterest *)v3 initWithDictionary:v4];

  return v5;
}

- (void)setPointOfInterestValue:(id)a3
{
  v4 = [a3 dictionaryRepresentation];
  [(CAFDictionaryCharacteristic *)self setDictionaryValue:v4];
}

- (id)formattedValue
{
  v2 = [(CAFPointOfInterestCharacteristic *)self pointOfInterestValue];
  v3 = [v2 description];

  return v3;
}

+ (id)secondaryCharacteristicFormats
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"0x0000000045000108";
  v5[1] = @"0x0000000045000107";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end