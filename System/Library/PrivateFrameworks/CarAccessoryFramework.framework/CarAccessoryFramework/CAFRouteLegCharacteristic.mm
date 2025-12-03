@interface CAFRouteLegCharacteristic
+ (void)load;
- (CAFRouteLeg)routeLegValue;
- (id)formattedValue;
- (void)setRouteLegValue:(id)value;
@end

@implementation CAFRouteLegCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFRouteLegCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFRouteLeg)routeLegValue
{
  v3 = [CAFRouteLeg alloc];
  dictionaryValue = [(CAFDictionaryCharacteristic *)self dictionaryValue];
  v5 = [(CAFRouteLeg *)v3 initWithDictionary:dictionaryValue];

  return v5;
}

- (void)setRouteLegValue:(id)value
{
  dictionaryRepresentation = [value dictionaryRepresentation];
  [(CAFDictionaryCharacteristic *)self setDictionaryValue:dictionaryRepresentation];
}

- (id)formattedValue
{
  routeLegValue = [(CAFRouteLegCharacteristic *)self routeLegValue];
  v3 = [routeLegValue description];

  return v3;
}

@end