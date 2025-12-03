@interface CAFMediaItemCharacteristic
+ (void)load;
- (CAFMediaItem)mediaItemValue;
- (id)formattedValue;
- (void)setMediaItemValue:(id)value;
@end

@implementation CAFMediaItemCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFMediaItemCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFMediaItem)mediaItemValue
{
  v3 = [CAFMediaItem alloc];
  dictionaryValue = [(CAFDictionaryCharacteristic *)self dictionaryValue];
  v5 = [(CAFMediaItem *)v3 initWithDictionary:dictionaryValue];

  return v5;
}

- (void)setMediaItemValue:(id)value
{
  dictionaryRepresentation = [value dictionaryRepresentation];
  [(CAFDictionaryCharacteristic *)self setDictionaryValue:dictionaryRepresentation];
}

- (id)formattedValue
{
  mediaItemValue = [(CAFMediaItemCharacteristic *)self mediaItemValue];
  v3 = [mediaItemValue description];

  return v3;
}

@end