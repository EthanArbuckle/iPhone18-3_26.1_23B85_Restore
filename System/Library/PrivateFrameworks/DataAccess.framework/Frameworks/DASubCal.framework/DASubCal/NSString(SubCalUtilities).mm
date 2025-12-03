@interface NSString(SubCalUtilities)
- (BOOL)isSubCalURLString;
@end

@implementation NSString(SubCalUtilities)

- (BOOL)isSubCalURLString
{
  v1 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:self];
  scheme = [v1 scheme];
  lowercaseString = [scheme lowercaseString];

  if ([lowercaseString isEqualToString:@"webcal"])
  {
    v4 = 1;
  }

  else if (([lowercaseString isEqualToString:@"http"] & 1) != 0 || objc_msgSend(lowercaseString, "isEqualToString:", @"https"))
  {
    path = [v1 path];
    v6 = path;
    if (path)
    {
      v4 = [path rangeOfString:@".ics" options:13] != 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end