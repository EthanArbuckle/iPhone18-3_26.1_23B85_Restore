@interface CAFSymbolNotificationUserActionCharacteristic
+ (void)load;
- (CAFSymbolNotificationUserAction)symbolNotificationUserActionValue;
- (id)formattedValue;
- (void)setSymbolNotificationUserActionValue:(id)value;
@end

@implementation CAFSymbolNotificationUserActionCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFSymbolNotificationUserActionCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFSymbolNotificationUserAction)symbolNotificationUserActionValue
{
  v3 = [CAFSymbolNotificationUserAction alloc];
  dictionaryValue = [(CAFDictionaryCharacteristic *)self dictionaryValue];
  v5 = [(CAFSymbolNotificationUserAction *)v3 initWithDictionary:dictionaryValue];

  return v5;
}

- (void)setSymbolNotificationUserActionValue:(id)value
{
  dictionaryRepresentation = [value dictionaryRepresentation];
  [(CAFDictionaryCharacteristic *)self setDictionaryValue:dictionaryRepresentation];
}

- (id)formattedValue
{
  symbolNotificationUserActionValue = [(CAFSymbolNotificationUserActionCharacteristic *)self symbolNotificationUserActionValue];
  v3 = [symbolNotificationUserActionValue description];

  return v3;
}

@end