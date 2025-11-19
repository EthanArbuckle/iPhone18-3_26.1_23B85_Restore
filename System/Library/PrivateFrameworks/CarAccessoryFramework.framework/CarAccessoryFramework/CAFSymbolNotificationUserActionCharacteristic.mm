@interface CAFSymbolNotificationUserActionCharacteristic
+ (void)load;
- (CAFSymbolNotificationUserAction)symbolNotificationUserActionValue;
- (id)formattedValue;
- (void)setSymbolNotificationUserActionValue:(id)a3;
@end

@implementation CAFSymbolNotificationUserActionCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFSymbolNotificationUserActionCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFSymbolNotificationUserAction)symbolNotificationUserActionValue
{
  v3 = [CAFSymbolNotificationUserAction alloc];
  v4 = [(CAFDictionaryCharacteristic *)self dictionaryValue];
  v5 = [(CAFSymbolNotificationUserAction *)v3 initWithDictionary:v4];

  return v5;
}

- (void)setSymbolNotificationUserActionValue:(id)a3
{
  v4 = [a3 dictionaryRepresentation];
  [(CAFDictionaryCharacteristic *)self setDictionaryValue:v4];
}

- (id)formattedValue
{
  v2 = [(CAFSymbolNotificationUserActionCharacteristic *)self symbolNotificationUserActionValue];
  v3 = [v2 description];

  return v3;
}

@end