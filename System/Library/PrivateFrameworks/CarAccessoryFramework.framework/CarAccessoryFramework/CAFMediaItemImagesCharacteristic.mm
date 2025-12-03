@interface CAFMediaItemImagesCharacteristic
+ (id)secondaryCharacteristicFormats;
+ (void)load;
- (CAFMediaItemImages)mediaItemImagesValue;
- (id)formattedValue;
- (void)setMediaItemImagesValue:(id)value;
@end

@implementation CAFMediaItemImagesCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFMediaItemImagesCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFMediaItemImages)mediaItemImagesValue
{
  arrayValue = [(CAFArrayCharacteristic *)self arrayValue];
  v3 = [CAFMediaItemImages mediaItemImagesWithArray:arrayValue];

  return v3;
}

- (void)setMediaItemImagesValue:(id)value
{
  arrayRepresentation = [value arrayRepresentation];
  [(CAFArrayCharacteristic *)self setArrayValue:arrayRepresentation];
}

- (id)formattedValue
{
  mediaItemImagesValue = [(CAFMediaItemImagesCharacteristic *)self mediaItemImagesValue];
  formattedValue = [mediaItemImagesValue formattedValue];

  return formattedValue;
}

+ (id)secondaryCharacteristicFormats
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"0x0000000032000031";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end