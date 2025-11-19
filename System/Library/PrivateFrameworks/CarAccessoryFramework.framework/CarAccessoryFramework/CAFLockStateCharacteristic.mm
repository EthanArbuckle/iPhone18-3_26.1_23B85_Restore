@interface CAFLockStateCharacteristic
+ (id)secondaryCharacteristicFormats;
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFLockStateCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFLockStateCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  v2 = [(CAFLockStateCharacteristic *)self lockStateValue];

  return NSStringFromLockState(v2);
}

+ (id)secondaryCharacteristicFormats
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"0x0000000060000002";
  v5[1] = @"0x0000000042000009";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end