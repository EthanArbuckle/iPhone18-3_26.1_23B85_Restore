@interface CAFHistoricalNotificationUserActionCharacteristic
+ (void)load;
- (CAFHistoricalNotificationUserAction)historicalNotificationUserActionValue;
- (id)formattedValue;
- (void)setHistoricalNotificationUserActionValue:(id)value;
@end

@implementation CAFHistoricalNotificationUserActionCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFHistoricalNotificationUserActionCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFHistoricalNotificationUserAction)historicalNotificationUserActionValue
{
  v3 = [CAFHistoricalNotificationUserAction alloc];
  dictionaryValue = [(CAFDictionaryCharacteristic *)self dictionaryValue];
  v5 = [(CAFHistoricalNotificationUserAction *)v3 initWithDictionary:dictionaryValue];

  return v5;
}

- (void)setHistoricalNotificationUserActionValue:(id)value
{
  dictionaryRepresentation = [value dictionaryRepresentation];
  [(CAFDictionaryCharacteristic *)self setDictionaryValue:dictionaryRepresentation];
}

- (id)formattedValue
{
  historicalNotificationUserActionValue = [(CAFHistoricalNotificationUserActionCharacteristic *)self historicalNotificationUserActionValue];
  v3 = [historicalNotificationUserActionValue description];

  return v3;
}

@end