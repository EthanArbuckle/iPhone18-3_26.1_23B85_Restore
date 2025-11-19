@interface CAFRouteLegCharacteristic
+ (void)load;
- (CAFRouteLeg)routeLegValue;
- (id)formattedValue;
- (void)setRouteLegValue:(id)a3;
@end

@implementation CAFRouteLegCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFRouteLegCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFRouteLeg)routeLegValue
{
  v3 = [CAFRouteLeg alloc];
  v4 = [(CAFDictionaryCharacteristic *)self dictionaryValue];
  v5 = [(CAFRouteLeg *)v3 initWithDictionary:v4];

  return v5;
}

- (void)setRouteLegValue:(id)a3
{
  v4 = [a3 dictionaryRepresentation];
  [(CAFDictionaryCharacteristic *)self setDictionaryValue:v4];
}

- (id)formattedValue
{
  v2 = [(CAFRouteLegCharacteristic *)self routeLegValue];
  v3 = [v2 description];

  return v3;
}

@end