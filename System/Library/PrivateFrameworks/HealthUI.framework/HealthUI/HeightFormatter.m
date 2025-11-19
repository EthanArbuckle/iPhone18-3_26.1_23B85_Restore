@interface HeightFormatter
@end

@implementation HeightFormatter

uint64_t ___HeightFormatter_block_invoke()
{
  v0 = objc_alloc_init(HKHeightNumberFormatter);
  v1 = _HeightFormatter__heightFormatter;
  _HeightFormatter__heightFormatter = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end