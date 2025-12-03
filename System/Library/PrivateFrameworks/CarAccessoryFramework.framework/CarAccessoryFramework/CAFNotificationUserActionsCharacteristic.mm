@interface CAFNotificationUserActionsCharacteristic
+ (id)secondaryCharacteristicFormats;
+ (void)load;
- (CAFNotificationUserActions)notificationUserActionsValue;
- (id)formattedValue;
- (void)setNotificationUserActionsValue:(id)value;
@end

@implementation CAFNotificationUserActionsCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFNotificationUserActionsCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFNotificationUserActions)notificationUserActionsValue
{
  arrayValue = [(CAFArrayCharacteristic *)self arrayValue];
  v3 = [CAFNotificationUserActions notificationUserActionsWithArray:arrayValue];

  return v3;
}

- (void)setNotificationUserActionsValue:(id)value
{
  arrayRepresentation = [value arrayRepresentation];
  [(CAFArrayCharacteristic *)self setArrayValue:arrayRepresentation];
}

- (id)formattedValue
{
  notificationUserActionsValue = [(CAFNotificationUserActionsCharacteristic *)self notificationUserActionsValue];
  formattedValue = [notificationUserActionsValue formattedValue];

  return formattedValue;
}

+ (id)secondaryCharacteristicFormats
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"0x0000000037000002";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end