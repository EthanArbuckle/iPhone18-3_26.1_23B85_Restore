@interface CAFNotificationUserActionCharacteristic
+ (void)load;
- (CAFNotificationUserAction)notificationUserActionValue;
- (id)formattedValue;
- (void)setNotificationUserActionValue:(id)value;
@end

@implementation CAFNotificationUserActionCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFNotificationUserActionCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFNotificationUserAction)notificationUserActionValue
{
  v3 = [CAFNotificationUserAction alloc];
  dictionaryValue = [(CAFDictionaryCharacteristic *)self dictionaryValue];
  v5 = [(CAFNotificationUserAction *)v3 initWithDictionary:dictionaryValue];

  return v5;
}

- (void)setNotificationUserActionValue:(id)value
{
  dictionaryRepresentation = [value dictionaryRepresentation];
  [(CAFDictionaryCharacteristic *)self setDictionaryValue:dictionaryRepresentation];
}

- (id)formattedValue
{
  notificationUserActionValue = [(CAFNotificationUserActionCharacteristic *)self notificationUserActionValue];
  v3 = [notificationUserActionValue description];

  return v3;
}

@end