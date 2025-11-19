@interface CAFHistoricalNotificationUserActionCharacteristic
+ (void)load;
- (CAFHistoricalNotificationUserAction)historicalNotificationUserActionValue;
- (id)formattedValue;
- (void)setHistoricalNotificationUserActionValue:(id)a3;
@end

@implementation CAFHistoricalNotificationUserActionCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFHistoricalNotificationUserActionCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFHistoricalNotificationUserAction)historicalNotificationUserActionValue
{
  v3 = [CAFHistoricalNotificationUserAction alloc];
  v4 = [(CAFDictionaryCharacteristic *)self dictionaryValue];
  v5 = [(CAFHistoricalNotificationUserAction *)v3 initWithDictionary:v4];

  return v5;
}

- (void)setHistoricalNotificationUserActionValue:(id)a3
{
  v4 = [a3 dictionaryRepresentation];
  [(CAFDictionaryCharacteristic *)self setDictionaryValue:v4];
}

- (id)formattedValue
{
  v2 = [(CAFHistoricalNotificationUserActionCharacteristic *)self historicalNotificationUserActionValue];
  v3 = [v2 description];

  return v3;
}

@end