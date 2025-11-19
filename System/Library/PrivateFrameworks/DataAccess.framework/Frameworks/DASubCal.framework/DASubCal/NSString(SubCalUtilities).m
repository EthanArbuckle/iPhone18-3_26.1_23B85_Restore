@interface NSString(SubCalUtilities)
- (BOOL)isSubCalURLString;
@end

@implementation NSString(SubCalUtilities)

- (BOOL)isSubCalURLString
{
  v1 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:a1];
  v2 = [v1 scheme];
  v3 = [v2 lowercaseString];

  if ([v3 isEqualToString:@"webcal"])
  {
    v4 = 1;
  }

  else if (([v3 isEqualToString:@"http"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"https"))
  {
    v5 = [v1 path];
    v6 = v5;
    if (v5)
    {
      v4 = [v5 rangeOfString:@".ics" options:13] != 0x7FFFFFFFFFFFFFFFLL;
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