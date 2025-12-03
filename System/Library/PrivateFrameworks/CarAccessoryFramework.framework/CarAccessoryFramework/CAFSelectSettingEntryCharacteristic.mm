@interface CAFSelectSettingEntryCharacteristic
+ (void)load;
- (CAFSelectSettingEntry)selectSettingEntryValue;
- (id)formattedValue;
- (void)setSelectSettingEntryValue:(id)value;
@end

@implementation CAFSelectSettingEntryCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFSelectSettingEntryCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFSelectSettingEntry)selectSettingEntryValue
{
  v3 = [CAFSelectSettingEntry alloc];
  dictionaryValue = [(CAFDictionaryCharacteristic *)self dictionaryValue];
  v5 = [(CAFSelectSettingEntry *)v3 initWithDictionary:dictionaryValue];

  return v5;
}

- (void)setSelectSettingEntryValue:(id)value
{
  dictionaryRepresentation = [value dictionaryRepresentation];
  [(CAFDictionaryCharacteristic *)self setDictionaryValue:dictionaryRepresentation];
}

- (id)formattedValue
{
  selectSettingEntryValue = [(CAFSelectSettingEntryCharacteristic *)self selectSettingEntryValue];
  v3 = [selectSettingEntryValue description];

  return v3;
}

@end