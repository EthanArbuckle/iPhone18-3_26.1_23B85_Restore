@interface CAFMediaItemsCharacteristic
+ (id)secondaryCharacteristicFormats;
+ (void)load;
- (CAFMediaItems)mediaItemsValue;
- (id)formattedValue;
- (void)setMediaItemsValue:(id)value;
@end

@implementation CAFMediaItemsCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFMediaItemsCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFMediaItems)mediaItemsValue
{
  arrayValue = [(CAFArrayCharacteristic *)self arrayValue];
  v3 = [CAFMediaItems mediaItemsWithArray:arrayValue];

  return v3;
}

- (void)setMediaItemsValue:(id)value
{
  arrayRepresentation = [value arrayRepresentation];
  [(CAFArrayCharacteristic *)self setArrayValue:arrayRepresentation];
}

- (id)formattedValue
{
  mediaItemsValue = [(CAFMediaItemsCharacteristic *)self mediaItemsValue];
  formattedValue = [mediaItemsValue formattedValue];

  return formattedValue;
}

+ (id)secondaryCharacteristicFormats
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"0x0000000032000012";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end