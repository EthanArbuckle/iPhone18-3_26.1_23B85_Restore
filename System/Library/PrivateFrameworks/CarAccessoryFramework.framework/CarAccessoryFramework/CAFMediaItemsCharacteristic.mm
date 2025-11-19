@interface CAFMediaItemsCharacteristic
+ (id)secondaryCharacteristicFormats;
+ (void)load;
- (CAFMediaItems)mediaItemsValue;
- (id)formattedValue;
- (void)setMediaItemsValue:(id)a3;
@end

@implementation CAFMediaItemsCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFMediaItemsCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (CAFMediaItems)mediaItemsValue
{
  v2 = [(CAFArrayCharacteristic *)self arrayValue];
  v3 = [CAFMediaItems mediaItemsWithArray:v2];

  return v3;
}

- (void)setMediaItemsValue:(id)a3
{
  v4 = [a3 arrayRepresentation];
  [(CAFArrayCharacteristic *)self setArrayValue:v4];
}

- (id)formattedValue
{
  v2 = [(CAFMediaItemsCharacteristic *)self mediaItemsValue];
  v3 = [v2 formattedValue];

  return v3;
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