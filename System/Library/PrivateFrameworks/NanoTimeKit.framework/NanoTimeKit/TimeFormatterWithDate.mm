@interface TimeFormatterWithDate
@end

@implementation TimeFormatterWithDate

uint64_t ___TimeFormatterWithDate_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBBBA8]);
  v1 = _TimeFormatterWithDate___formatter;
  _TimeFormatterWithDate___formatter = v0;

  [_TimeFormatterWithDate___formatter setSuppressesDesignatorWhitespace:1];
  v2 = _TimeFormatterWithDate___formatter;

  return [v2 setPaused:1 forReason:@"AlwaysPaused"];
}

@end