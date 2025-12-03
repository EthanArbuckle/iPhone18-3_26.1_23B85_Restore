@interface CAFHistoricalNotificationUserActionsCharacteristic
+ (id)secondaryCharacteristicFormats;
+ (void)load;
- (CAFHistoricalNotificationUserActions)historicalNotificationUserActionsValue;
- (id)formattedValue;
- (void)setHistoricalNotificationUserActionsValue:(id)value;
@end

@implementation CAFHistoricalNotificationUserActionsCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFHistoricalNotificationUserActionsCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFHistoricalNotificationUserActions)historicalNotificationUserActionsValue
{
  arrayValue = [(CAFArrayCharacteristic *)self arrayValue];
  v3 = [CAFHistoricalNotificationUserActions historicalNotificationUserActionsWithArray:arrayValue];

  return v3;
}

- (void)setHistoricalNotificationUserActionsValue:(id)value
{
  arrayRepresentation = [value arrayRepresentation];
  [(CAFArrayCharacteristic *)self setArrayValue:arrayRepresentation];
}

- (id)formattedValue
{
  historicalNotificationUserActionsValue = [(CAFHistoricalNotificationUserActionsCharacteristic *)self historicalNotificationUserActionsValue];
  formattedValue = [historicalNotificationUserActionsValue formattedValue];

  return formattedValue;
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