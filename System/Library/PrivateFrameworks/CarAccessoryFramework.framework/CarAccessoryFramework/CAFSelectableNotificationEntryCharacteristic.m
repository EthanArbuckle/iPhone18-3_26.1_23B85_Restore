@interface CAFSelectableNotificationEntryCharacteristic
+ (void)load;
- (CAFSelectableNotificationEntry)selectableNotificationEntryValue;
- (id)formattedValue;
- (void)setSelectableNotificationEntryValue:(id)a3;
@end

@implementation CAFSelectableNotificationEntryCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFSelectableNotificationEntryCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFSelectableNotificationEntry)selectableNotificationEntryValue
{
  v3 = [CAFSelectableNotificationEntry alloc];
  v4 = [(CAFDictionaryCharacteristic *)self dictionaryValue];
  v5 = [(CAFSelectableNotificationEntry *)v3 initWithDictionary:v4];

  return v5;
}

- (void)setSelectableNotificationEntryValue:(id)a3
{
  v4 = [a3 dictionaryRepresentation];
  [(CAFDictionaryCharacteristic *)self setDictionaryValue:v4];
}

- (id)formattedValue
{
  v2 = [(CAFSelectableNotificationEntryCharacteristic *)self selectableNotificationEntryValue];
  v3 = [v2 description];

  return v3;
}

@end