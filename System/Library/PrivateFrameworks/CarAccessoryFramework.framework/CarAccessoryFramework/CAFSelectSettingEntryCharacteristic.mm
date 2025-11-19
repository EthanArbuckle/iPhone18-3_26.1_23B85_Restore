@interface CAFSelectSettingEntryCharacteristic
+ (void)load;
- (CAFSelectSettingEntry)selectSettingEntryValue;
- (id)formattedValue;
- (void)setSelectSettingEntryValue:(id)a3;
@end

@implementation CAFSelectSettingEntryCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFSelectSettingEntryCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFSelectSettingEntry)selectSettingEntryValue
{
  v3 = [CAFSelectSettingEntry alloc];
  v4 = [(CAFDictionaryCharacteristic *)self dictionaryValue];
  v5 = [(CAFSelectSettingEntry *)v3 initWithDictionary:v4];

  return v5;
}

- (void)setSelectSettingEntryValue:(id)a3
{
  v4 = [a3 dictionaryRepresentation];
  [(CAFDictionaryCharacteristic *)self setDictionaryValue:v4];
}

- (id)formattedValue
{
  v2 = [(CAFSelectSettingEntryCharacteristic *)self selectSettingEntryValue];
  v3 = [v2 description];

  return v3;
}

@end