@interface NSURL(PKURLAdditions)
- (BOOL)isAppleURL;
@end

@implementation NSURL(PKURLAdditions)

- (BOOL)isAppleURL
{
  host = [self host];
  if ([host caseInsensitiveCompare:@"apple.com"])
  {
    if ([host caseInsensitiveCompare:@"applepaydemo.apple.com"])
    {
      v2 = [host rangeOfString:@".apple.com" options:13] != 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

@end