@interface GenerateDateFormatterTodayHourMinute
@end

@implementation GenerateDateFormatterTodayHourMinute

uint64_t ___GenerateDateFormatterTodayHourMinute_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _GenerateDateFormatterTodayHourMinute___dateFormatter;
  _GenerateDateFormatterTodayHourMinute___dateFormatter = v0;

  [_GenerateDateFormatterTodayHourMinute___dateFormatter setDateStyle:2];
  [_GenerateDateFormatterTodayHourMinute___dateFormatter setTimeStyle:1];
  v2 = _GenerateDateFormatterTodayHourMinute___dateFormatter;

  return [v2 setDoesRelativeDateFormatting:1];
}

@end