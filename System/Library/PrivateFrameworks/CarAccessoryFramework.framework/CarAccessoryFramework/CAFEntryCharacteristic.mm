@interface CAFEntryCharacteristic
+ (void)load;
- (CAFEntry)entryValue;
- (id)formattedValue;
- (void)setEntryValue:(id)a3;
@end

@implementation CAFEntryCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFEntryCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFEntry)entryValue
{
  v3 = [CAFEntry alloc];
  v4 = [(CAFDictionaryCharacteristic *)self dictionaryValue];
  v5 = [(CAFEntry *)v3 initWithDictionary:v4];

  return v5;
}

- (void)setEntryValue:(id)a3
{
  v4 = [a3 dictionaryRepresentation];
  [(CAFDictionaryCharacteristic *)self setDictionaryValue:v4];
}

- (id)formattedValue
{
  v2 = [(CAFEntryCharacteristic *)self entryValue];
  v3 = [v2 description];

  return v3;
}

@end