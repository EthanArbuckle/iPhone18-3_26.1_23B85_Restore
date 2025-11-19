@interface CDFormattedDate
@end

@implementation CDFormattedDate

uint64_t ___CDFormattedDate_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _CDFormattedDate_formatter;
  _CDFormattedDate_formatter = v0;

  [_CDFormattedDate_formatter setTimeStyle:3];
  v2 = _CDFormattedDate_formatter;

  return [v2 setDateStyle:1];
}

@end