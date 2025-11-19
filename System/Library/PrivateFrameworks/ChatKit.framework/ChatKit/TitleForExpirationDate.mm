@interface TitleForExpirationDate
@end

@implementation TitleForExpirationDate

uint64_t ___TitleForExpirationDate_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _TitleForExpirationDate_dateFormatter;
  _TitleForExpirationDate_dateFormatter = v0;

  [_TitleForExpirationDate_dateFormatter setTimeStyle:0];
  [_TitleForExpirationDate_dateFormatter setLocalizedDateFormatFromTemplate:@"MMMd"];
  v2 = _TitleForExpirationDate_dateFormatter;

  return [v2 setFormattingContext:5];
}

@end