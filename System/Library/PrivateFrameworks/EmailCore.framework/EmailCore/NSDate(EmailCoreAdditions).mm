@interface NSDate(EmailCoreAdditions)
- (id)ec_descriptionForMimeHeaders;
- (uint64_t)ec_integerDate;
@end

@implementation NSDate(EmailCoreAdditions)

- (uint64_t)ec_integerDate
{
  v1 = MEMORY[0x277CBEAA8];
  [self timeIntervalSince1970];
  v3 = floor(v2);

  return [v1 dateWithTimeIntervalSince1970:v3];
}

- (id)ec_descriptionForMimeHeaders
{
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v2 setDateFormat:@"EEE, d MMM yyyy HH:mm:ss ZZ"];
  ef_posixLocale = [MEMORY[0x277CBEAF8] ef_posixLocale];
  [v2 setLocale:ef_posixLocale];

  v4 = [v2 stringFromDate:self];

  return v4;
}

@end