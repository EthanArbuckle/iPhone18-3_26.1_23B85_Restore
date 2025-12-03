@interface CAFEntryCharacteristic
+ (void)load;
- (CAFEntry)entryValue;
- (id)formattedValue;
- (void)setEntryValue:(id)value;
@end

@implementation CAFEntryCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFEntryCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFEntry)entryValue
{
  v3 = [CAFEntry alloc];
  dictionaryValue = [(CAFDictionaryCharacteristic *)self dictionaryValue];
  v5 = [(CAFEntry *)v3 initWithDictionary:dictionaryValue];

  return v5;
}

- (void)setEntryValue:(id)value
{
  dictionaryRepresentation = [value dictionaryRepresentation];
  [(CAFDictionaryCharacteristic *)self setDictionaryValue:dictionaryRepresentation];
}

- (id)formattedValue
{
  entryValue = [(CAFEntryCharacteristic *)self entryValue];
  v3 = [entryValue description];

  return v3;
}

@end