@interface NSDateFormatter
@end

@implementation NSDateFormatter

uint64_t __51__NSDateFormatter_MTUtilities__mtTimeOnlyFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = mtTimeOnlyFormatter__timeOnlyFormatter;
  mtTimeOnlyFormatter__timeOnlyFormatter = v0;

  v2 = mtTimeOnlyFormatter__timeOnlyFormatter;

  return [v2 setLocalizedDateFormatFromTemplate:@"Jmm"];
}

@end