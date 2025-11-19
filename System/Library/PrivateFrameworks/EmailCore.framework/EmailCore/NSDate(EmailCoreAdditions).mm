@interface NSDate(EmailCoreAdditions)
- (id)ec_descriptionForMimeHeaders;
- (uint64_t)ec_integerDate;
@end

@implementation NSDate(EmailCoreAdditions)

- (uint64_t)ec_integerDate
{
  v1 = MEMORY[0x277CBEAA8];
  [a1 timeIntervalSince1970];
  v3 = floor(v2);

  return [v1 dateWithTimeIntervalSince1970:v3];
}

- (id)ec_descriptionForMimeHeaders
{
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v2 setDateFormat:@"EEE, d MMM yyyy HH:mm:ss ZZ"];
  v3 = [MEMORY[0x277CBEAF8] ef_posixLocale];
  [v2 setLocale:v3];

  v4 = [v2 stringFromDate:a1];

  return v4;
}

@end