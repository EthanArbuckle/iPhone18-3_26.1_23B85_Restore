@interface CAFMediaItemImageCharacteristic
+ (void)load;
- (CAFMediaItemImage)mediaItemImageValue;
- (id)formattedValue;
- (void)setMediaItemImageValue:(id)value;
@end

@implementation CAFMediaItemImageCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFMediaItemImageCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFMediaItemImage)mediaItemImageValue
{
  v3 = [CAFMediaItemImage alloc];
  dictionaryValue = [(CAFDictionaryCharacteristic *)self dictionaryValue];
  v5 = [(CAFMediaItemImage *)v3 initWithDictionary:dictionaryValue];

  return v5;
}

- (void)setMediaItemImageValue:(id)value
{
  dictionaryRepresentation = [value dictionaryRepresentation];
  [(CAFDictionaryCharacteristic *)self setDictionaryValue:dictionaryRepresentation];
}

- (id)formattedValue
{
  mediaItemImageValue = [(CAFMediaItemImageCharacteristic *)self mediaItemImageValue];
  v3 = [mediaItemImageValue description];

  return v3;
}

@end