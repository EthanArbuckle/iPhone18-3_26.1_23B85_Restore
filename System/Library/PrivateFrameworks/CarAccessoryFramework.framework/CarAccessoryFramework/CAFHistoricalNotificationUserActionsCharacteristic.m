@interface CAFHistoricalNotificationUserActionsCharacteristic
+ (id)secondaryCharacteristicFormats;
+ (void)load;
- (CAFHistoricalNotificationUserActions)historicalNotificationUserActionsValue;
- (id)formattedValue;
- (void)setHistoricalNotificationUserActionsValue:(id)a3;
@end

@implementation CAFHistoricalNotificationUserActionsCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFHistoricalNotificationUserActionsCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFHistoricalNotificationUserActions)historicalNotificationUserActionsValue
{
  v2 = [(CAFArrayCharacteristic *)self arrayValue];
  v3 = [CAFHistoricalNotificationUserActions historicalNotificationUserActionsWithArray:v2];

  return v3;
}

- (void)setHistoricalNotificationUserActionsValue:(id)a3
{
  v4 = [a3 arrayRepresentation];
  [(CAFArrayCharacteristic *)self setArrayValue:v4];
}

- (id)formattedValue
{
  v2 = [(CAFHistoricalNotificationUserActionsCharacteristic *)self historicalNotificationUserActionsValue];
  v3 = [v2 formattedValue];

  return v3;
}

+ (id)secondaryCharacteristicFormats
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"0x0000000049000005";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end