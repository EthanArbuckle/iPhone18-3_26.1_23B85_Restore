@interface FormattedDate
@end

@implementation FormattedDate

uint64_t ___FormattedDate_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = _FormattedDate___formatter;
  _FormattedDate___formatter = v0;

  v2 = _FormattedDate___formatter;

  return [v2 setDateFormat:@"MMM dd-hh:mm"];
}

@end