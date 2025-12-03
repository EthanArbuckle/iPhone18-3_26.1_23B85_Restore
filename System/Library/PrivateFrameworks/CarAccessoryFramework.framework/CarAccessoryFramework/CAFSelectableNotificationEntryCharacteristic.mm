@interface CAFSelectableNotificationEntryCharacteristic
+ (void)load;
- (CAFSelectableNotificationEntry)selectableNotificationEntryValue;
- (id)formattedValue;
- (void)setSelectableNotificationEntryValue:(id)value;
@end

@implementation CAFSelectableNotificationEntryCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFSelectableNotificationEntryCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFSelectableNotificationEntry)selectableNotificationEntryValue
{
  v3 = [CAFSelectableNotificationEntry alloc];
  dictionaryValue = [(CAFDictionaryCharacteristic *)self dictionaryValue];
  v5 = [(CAFSelectableNotificationEntry *)v3 initWithDictionary:dictionaryValue];

  return v5;
}

- (void)setSelectableNotificationEntryValue:(id)value
{
  dictionaryRepresentation = [value dictionaryRepresentation];
  [(CAFDictionaryCharacteristic *)self setDictionaryValue:dictionaryRepresentation];
}

- (id)formattedValue
{
  selectableNotificationEntryValue = [(CAFSelectableNotificationEntryCharacteristic *)self selectableNotificationEntryValue];
  v3 = [selectableNotificationEntryValue description];

  return v3;
}

@end