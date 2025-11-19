@interface NSDateFormatter
@end

@implementation NSDateFormatter

uint64_t __58__NSDateFormatter_MessageUIAdditions__ef_isoDateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v1 = ef_isoDateFormatter_dateFormatter;
  ef_isoDateFormatter_dateFormatter = v0;

  v2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [v2 timeZone];
  [ef_isoDateFormatter_dateFormatter setTimeZone:v3];

  v4 = ef_isoDateFormatter_dateFormatter;

  return [v4 setFormatOptions:3955];
}

@end