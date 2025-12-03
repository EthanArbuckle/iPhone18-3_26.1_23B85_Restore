@interface CalDAVUtils
+ (id)dropBoxLocationForUID:(id)d dropBoxPath:(id)path;
+ (id)headersFromHeaders:(id)headers replacingPreconditionsWithScheduleTag:(id)tag;
+ (id)stringFromUIDWithPathSafeCharacters:(id)characters;
@end

@implementation CalDAVUtils

+ (id)dropBoxLocationForUID:(id)d dropBoxPath:(id)path
{
  pathCopy = path;
  v6 = [CalDAVUtils stringFromUIDWithPathSafeCharacters:d];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.dropbox", v6];
  v8 = [pathCopy stringByAppendingPathComponent:v7];

  appendSlashIfNeeded = [v8 appendSlashIfNeeded];

  return appendSlashIfNeeded;
}

+ (id)stringFromUIDWithPathSafeCharacters:(id)characters
{
  charactersCopy = characters;
  v4 = charactersCopy;
  if ([charactersCopy length])
  {
    v4 = charactersCopy;
    if ([charactersCopy hasPrefix:@"http://"])
    {
      v4 = [charactersCopy stringByReplacingOccurrencesOfString:@"http://" withString:&stru_285505238];
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

+ (id)headersFromHeaders:(id)headers replacingPreconditionsWithScheduleTag:(id)tag
{
  headersCopy = headers;
  tagCopy = tag;
  v7 = headersCopy;
  v8 = v7;
  if ([tagCopy length])
  {
    v8 = [v7 mutableCopy];
    [v8 removeObjectForKey:*MEMORY[0x277CFDB40]];
    [v8 removeObjectForKey:*MEMORY[0x277CFDB38]];
    [v8 setObject:tagCopy forKey:@"If-Schedule-Tag-Match"];
  }

  return v8;
}

@end