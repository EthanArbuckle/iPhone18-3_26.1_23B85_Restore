@interface MKHTTPContentDate
- (MKHTTPContentDate)initWithHeaderValue:(id)a3;
@end

@implementation MKHTTPContentDate

- (MKHTTPContentDate)initWithHeaderValue:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MKHTTPContentDate;
  v5 = [(MKHTTPContentDate *)&v12 init];
  if (v5)
  {
    if (!v4)
    {
      v10 = 0;
      goto LABEL_6;
    }

    v6 = objc_alloc_init(MEMORY[0x277CCA968]);
    v7 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
    v8 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
    [v6 setLocale:v7];
    [v6 setTimeZone:v8];
    [v6 setDateFormat:@"EEE', ' dd MMM yyyy HH':'mm':'ss z"];
    v9 = [v6 dateFromString:v4];
    [(MKHTTPContentDate *)v5 setDate:v9];
  }

  v10 = v5;
LABEL_6:

  return v10;
}

@end