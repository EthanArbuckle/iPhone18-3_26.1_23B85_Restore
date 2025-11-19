@interface NSDate
@end

@implementation NSDate

uint64_t __58__NSDate_GKExtensions___gkFormattedDateForStyle_relative___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = _gkFormattedDateForStyle_relative__sDateFormatter;
  _gkFormattedDateForStyle_relative__sDateFormatter = v0;

  v2 = _gkFormattedDateForStyle_relative__sDateFormatter;

  return [v2 setTimeStyle:0];
}

@end