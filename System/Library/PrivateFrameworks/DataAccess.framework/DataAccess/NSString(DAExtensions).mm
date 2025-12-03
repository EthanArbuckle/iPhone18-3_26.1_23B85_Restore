@interface NSString(DAExtensions)
+ (id)da_new64ByteGUID;
+ (id)da_newGUID;
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
  v1 = CFURLCreateStringByAddingPercentEscapes(*MEMORY[0x277CBECE8], originalString, &stru_285AA6518, @"@?/:", 0x8000100u);

  return v1;
}

- (__CFString)da_stringByRemovingPercentEscapesForUsername
{
  v1 = CFURLCreateStringByReplacingPercentEscapes(*MEMORY[0x277CBECE8], originalString, &stru_285AA6518);

  return v1;
}

- (id)da_removeSlashIfNeeded
{
  if ([self hasSuffix:@"/"])
  {
    selfCopy = [self substringToIndex:{objc_msgSend(self, "length") - 1}];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)da_appendSlashIfNeeded
{
  if ([self hasSuffix:@"/"])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [self stringByAppendingString:@"/"];
  }

  return selfCopy;
}

- (__CFString)da_stringByURLEscapingPathComponent
{
  v2 = CFURLCreateStringByAddingPercentEscapes(0, originalString, &stru_285AA6518, @"@?/", 0x8000100u);
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
  v1 = [self mutableCopy];
  CFStringTrimWhitespace(v1);
  v2 = [(__CFString *)v1 copy];

  return v2;
}

+ (id)da_newGUID
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  return uUIDString;
}

+ (id)da_new64ByteGUID
{
  da_newGUID = [MEMORY[0x277CCACA8] da_newGUID];
  v1 = [da_newGUID mutableCopy];
  [v1 replaceOccurrencesOfString:@"-" withString:&stru_285AA6518 options:0 range:{0, objc_msgSend(v1, "length")}];
  v2 = [v1 stringByAppendingFormat:@"%0.*d", 64 - objc_msgSend(v1, "length"), 0];

  return v2;
}

@end