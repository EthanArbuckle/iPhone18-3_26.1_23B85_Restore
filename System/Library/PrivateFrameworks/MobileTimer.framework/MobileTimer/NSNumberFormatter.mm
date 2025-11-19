@interface NSNumberFormatter
@end

@implementation NSNumberFormatter

uint64_t __63__NSNumberFormatter_MTUtilities__mtDecimalStyleNumberFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = mtDecimalStyleNumberFormatter__decimalStyleumberFormatter;
  mtDecimalStyleNumberFormatter__decimalStyleumberFormatter = v0;

  v2 = mtDecimalStyleNumberFormatter__decimalStyleumberFormatter;

  return [v2 setNumberStyle:1];
}

@end