@interface NSDate
@end

@implementation NSDate

uint64_t __56__NSDate_CLSNSDateExtensions__dateComponentsFromString___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = dateComponentsFromString__formatter1;
  dateComponentsFromString__formatter1 = v0;

  v2 = dateComponentsFromString__formatter1;
  v3 = [MEMORY[0x277CBEAF8] currentLocale];
  [v2 setLocale:v3];

  [dateComponentsFromString__formatter1 setDateFormat:@"yyyy-MM-dd HH:mm:ss zzz"];
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  v5 = dateComponentsFromString__formatter2;
  dateComponentsFromString__formatter2 = v4;

  v6 = dateComponentsFromString__formatter2;
  v7 = [MEMORY[0x277CBEAF8] currentLocale];
  [v6 setLocale:v7];

  [dateComponentsFromString__formatter2 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v8 = objc_alloc_init(MEMORY[0x277CCA968]);
  v9 = dateComponentsFromString__formatter3;
  dateComponentsFromString__formatter3 = v8;

  v10 = dateComponentsFromString__formatter3;
  v11 = [MEMORY[0x277CBEAF8] currentLocale];
  [v10 setLocale:v11];

  [dateComponentsFromString__formatter3 setDateFormat:@"yyyy-MM-dd"];
  v12 = objc_alloc_init(MEMORY[0x277CCA968]);
  v13 = dateComponentsFromString__formatter4;
  dateComponentsFromString__formatter4 = v12;

  v14 = dateComponentsFromString__formatter4;
  v15 = [MEMORY[0x277CBEAF8] currentLocale];
  [v14 setLocale:v15];

  [dateComponentsFromString__formatter4 setDateFormat:@"HH:mm:ss"];
  v16 = objc_alloc_init(MEMORY[0x277CCA968]);
  v17 = dateComponentsFromString__formatter5;
  dateComponentsFromString__formatter5 = v16;

  v18 = dateComponentsFromString__formatter5;
  v19 = [MEMORY[0x277CBEAF8] currentLocale];
  [v18 setLocale:v19];

  [dateComponentsFromString__formatter5 setDateFormat:@"HH:mm"];
  v20 = objc_alloc(MEMORY[0x277CBEA80]);
  dateComponentsFromString__calendar = [v20 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];

  return MEMORY[0x2821F96F8]();
}

uint64_t __46__NSDate_CLSNSDateExtensions__dateFromString___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = dateFromString__formatter1;
  dateFromString__formatter1 = v0;

  v2 = dateFromString__formatter1;
  v3 = [MEMORY[0x277CBEAF8] currentLocale];
  [v2 setLocale:v3];

  [dateFromString__formatter1 setDateFormat:@"yyyy-MM-dd HH:mm:ss zzz"];
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  v5 = dateFromString__formatter2;
  dateFromString__formatter2 = v4;

  v6 = dateFromString__formatter2;
  v7 = [MEMORY[0x277CBEAF8] currentLocale];
  [v6 setLocale:v7];

  [dateFromString__formatter2 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v8 = objc_alloc_init(MEMORY[0x277CCA968]);
  v9 = dateFromString__formatter3;
  dateFromString__formatter3 = v8;

  v10 = dateFromString__formatter3;
  v11 = [MEMORY[0x277CBEAF8] currentLocale];
  [v10 setLocale:v11];

  [dateFromString__formatter3 setDateFormat:@"yyyy-MM-dd"];
  v12 = objc_alloc_init(MEMORY[0x277CCA968]);
  v13 = dateFromString__formatter4;
  dateFromString__formatter4 = v12;

  v14 = dateFromString__formatter4;
  v15 = [MEMORY[0x277CBEAF8] currentLocale];
  [v14 setLocale:v15];

  [dateFromString__formatter4 setDateFormat:@"HH:mm:ss"];
  v16 = objc_alloc_init(MEMORY[0x277CCA968]);
  v17 = dateFromString__formatter5;
  dateFromString__formatter5 = v16;

  v18 = dateFromString__formatter5;
  v19 = [MEMORY[0x277CBEAF8] currentLocale];
  [v18 setLocale:v19];

  [dateFromString__formatter5 setDateFormat:@"HH:mm"];
  v20 = objc_alloc(MEMORY[0x277CBEA80]);
  dateFromString__calendar = [v20 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];

  return MEMORY[0x2821F96F8]();
}

@end