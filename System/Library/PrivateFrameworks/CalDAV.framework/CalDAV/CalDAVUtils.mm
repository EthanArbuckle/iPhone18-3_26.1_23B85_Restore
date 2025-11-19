@interface CalDAVUtils
+ (id)dropBoxLocationForUID:(id)a3 dropBoxPath:(id)a4;
+ (id)headersFromHeaders:(id)a3 replacingPreconditionsWithScheduleTag:(id)a4;
+ (id)stringFromUIDWithPathSafeCharacters:(id)a3;
@end

@implementation CalDAVUtils

+ (id)dropBoxLocationForUID:(id)a3 dropBoxPath:(id)a4
{
  v5 = a4;
  v6 = [CalDAVUtils stringFromUIDWithPathSafeCharacters:a3];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.dropbox", v6];
  v8 = [v5 stringByAppendingPathComponent:v7];

  v9 = [v8 appendSlashIfNeeded];

  return v9;
}

+ (id)stringFromUIDWithPathSafeCharacters:(id)a3
{
  v3 = a3;
  v4 = v3;
  if ([v3 length])
  {
    v4 = v3;
    if ([v3 hasPrefix:@"http://"])
    {
      v4 = [v3 stringByReplacingOccurrencesOfString:@"http://" withString:&stru_285505238];
    }

    if ([v4 hasPrefix:@"https://"])
    {
      v5 = [v4 stringByReplacingOccurrencesOfString:@"https://" withString:&stru_285505238];

      v4 = v5;
    }

    [v4 rangeOfString:@":"];
    if (v6)
    {
      v7 = [v4 stringByReplacingOccurrencesOfString:@":" withString:&stru_285505238];

      v4 = v7;
    }

    [v4 rangeOfString:@"/"];
    if (v8)
    {
      v9 = [v4 stringByReplacingOccurrencesOfString:@"/" withString:@"-"];

      v4 = v9;
    }

    [v4 rangeOfString:@"."];
    if (v10)
    {
      v11 = [v4 stringByReplacingOccurrencesOfString:@"." withString:&stru_285505238];

      v4 = v11;
    }
  }

  if ([v4 length])
  {
    v12 = v4;
  }

  else
  {
    v12 = @"attachment-directory-for-events-with-malformed-uri";
  }

  return v12;
}

+ (id)headersFromHeaders:(id)a3 replacingPreconditionsWithScheduleTag:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v5;
  v8 = v7;
  if ([v6 length])
  {
    v8 = [v7 mutableCopy];
    [v8 removeObjectForKey:*MEMORY[0x277CFDB40]];
    [v8 removeObjectForKey:*MEMORY[0x277CFDB38]];
    [v8 setObject:v6 forKey:@"If-Schedule-Tag-Match"];
  }

  return v8;
}

@end