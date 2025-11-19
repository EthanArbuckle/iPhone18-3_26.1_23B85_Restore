@interface MFIMAPDateStringForDate
@end

@implementation MFIMAPDateStringForDate

uint64_t ___MFIMAPDateStringForDate_block_invoke()
{
  _MFIMAPDateStringForDate_formatter = objc_alloc_init(MEMORY[0x277CCA968]);
  v0 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
  [_MFIMAPDateStringForDate_formatter setLocale:v0];

  v1 = _MFIMAPDateStringForDate_formatter;

  return [v1 setDateFormat:@"dd-MMM-yyyy HH:mm:ss ZZ"];
}

@end