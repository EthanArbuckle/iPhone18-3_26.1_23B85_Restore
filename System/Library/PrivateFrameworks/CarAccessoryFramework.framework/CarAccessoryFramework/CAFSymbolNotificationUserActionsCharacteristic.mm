@interface CAFSymbolNotificationUserActionsCharacteristic
+ (id)secondaryCharacteristicFormats;
+ (void)load;
- (CAFSymbolNotificationUserActions)symbolNotificationUserActionsValue;
- (id)formattedValue;
- (void)setSymbolNotificationUserActionsValue:(id)value;
@end

@implementation CAFSymbolNotificationUserActionsCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFSymbolNotificationUserActionsCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFSymbolNotificationUserActions)symbolNotificationUserActionsValue
{
  arrayValue = [(CAFArrayCharacteristic *)self arrayValue];
  v3 = [CAFSymbolNotificationUserActions symbolNotificationUserActionsWithArray:arrayValue];

  return v3;
}

- (void)setSymbolNotificationUserActionsValue:(id)value
{
  arrayRepresentation = [value arrayRepresentation];
  [(CAFArrayCharacteristic *)self setArrayValue:arrayRepresentation];
}

- (id)formattedValue
{
  symbolNotificationUserActionsValue = [(CAFSymbolNotificationUserActionsCharacteristic *)self symbolNotificationUserActionsValue];
  formattedValue = [symbolNotificationUserActionsValue formattedValue];

  return formattedValue;
}

+ (id)secondaryCharacteristicFormats
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"0x0000000037000011";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end