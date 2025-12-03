@interface CAFProximityAlertCharacteristic
+ (id)secondaryCharacteristicFormats;
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFProximityAlertCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFProximityAlertCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  proximityAlertValue = [(CAFProximityAlertCharacteristic *)self proximityAlertValue];

  return NSStringFromProximityAlert(proximityAlertValue);
}

+ (id)secondaryCharacteristicFormats
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"0x0000000051000003";
  v5[1] = @"0x0000000051000004";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end