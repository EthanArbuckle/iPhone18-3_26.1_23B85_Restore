@interface DateIntervalFormatter
@end

@implementation DateIntervalFormatter

void ___DateIntervalFormatter_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA978]);
  v1 = _DateIntervalFormatter_dateIntervalFormatter;
  _DateIntervalFormatter_dateIntervalFormatter = v0;

  v2 = [_DateIntervalFormatter_dateIntervalFormatter px_dateTemplateForGranularity:16 abbreviated:1];
  [_DateIntervalFormatter_dateIntervalFormatter setDateTemplate:v2];
}

@end