@interface MFIMAPDateStringForDate
@end

@implementation MFIMAPDateStringForDate

uint64_t ___MFIMAPDateStringForDate_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _MFIMAPDateStringForDate_formatter;
  _MFIMAPDateStringForDate_formatter = v0;

  v2 = [MEMORY[0x1E695DF58] ef_posixLocale];
  [_MFIMAPDateStringForDate_formatter setLocale:v2];

  v3 = _MFIMAPDateStringForDate_formatter;

  return [v3 setDateFormat:@"dd-MMM-yyyy HH:mm:ss ZZ"];
}

@end