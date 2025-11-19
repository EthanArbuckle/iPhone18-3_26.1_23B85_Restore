@interface NSString(DAExtensions)
+ (__CFString)da_newGUID;
+ (id)da_new64ByteGUID;
- (__CFString)da_stringByAddingPercentEscapesForUsername;
- (__CFString)da_stringByRemovingPercentEscapesForUsername;
- (__CFString)da_stringByURLEscapingPathComponent;
- (id)da_appendSlashIfNeeded;
- (id)da_removeSlashIfNeeded;
- (id)da_trimWhiteSpace;
@end

@implementation NSString(DAExtensions)

- (__CFString)da_stringByAddingPercentEscapesForUsername
{
  v1 = CFURLCreateStringByAddingPercentEscapes(*MEMORY[0x277CBECE8], originalString, &stru_2854B2770, @"@?/:", 0x8000100u);

  return v1;
}

- (__CFString)da_stringByRemovingPercentEscapesForUsername
{
  v1 = CFURLCreateStringByReplacingPercentEscapes(*MEMORY[0x277CBECE8], originalString, &stru_2854B2770);

  return v1;
}

- (id)da_removeSlashIfNeeded
{
  if ([a1 hasSuffix:@"/"])
  {
    v2 = [a1 substringToIndex:{objc_msgSend(a1, "length") - 1}];
  }

  else
  {
    v2 = a1;
  }

  return v2;
}

- (id)da_appendSlashIfNeeded
{
  if ([a1 hasSuffix:@"/"])
  {
    v2 = a1;
  }

  else
  {
    v2 = [a1 stringByAppendingString:@"/"];
  }

  return v2;
}

- (__CFString)da_stringByURLEscapingPathComponent
{
  v2 = CFURLCreateStringByAddingPercentEscapes(0, originalString, &stru_2854B2770, @"@?/", 0x8000100u);
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = originalString;
  }

  v5 = v4;

  return v5;
}

- (id)da_trimWhiteSpace
{
  v1 = [a1 mutableCopy];
  CFStringTrimWhitespace(v1);
  v2 = [(__CFString *)v1 copy];

  return v2;
}

+ (__CFString)da_newGUID
{
  v0 = CFUUIDCreate(0);
  v1 = CFUUIDCreateString(0, v0);
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

+ (id)da_new64ByteGUID
{
  v0 = [MEMORY[0x277CCACA8] da_newGUID];
  v1 = [v0 mutableCopy];
  [v1 replaceOccurrencesOfString:@"-" withString:&stru_2854B2770 options:0 range:{0, objc_msgSend(v1, "length")}];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%%0.%lud", 64 - objc_msgSend(v1, "length")];
  v3 = [v1 stringByAppendingFormat:v2, 0];

  return v3;
}

@end