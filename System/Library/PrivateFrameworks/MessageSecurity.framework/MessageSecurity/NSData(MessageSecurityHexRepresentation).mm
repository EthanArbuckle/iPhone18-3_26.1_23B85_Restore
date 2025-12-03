@interface NSData(MessageSecurityHexRepresentation)
- (__CFString)asMessageSecurityHexString;
@end

@implementation NSData(MessageSecurityHexRepresentation)

- (__CFString)asMessageSecurityHexString
{
  if ([self length])
  {
    v2 = 0;
    v3 = &stru_286A08A88;
    do
    {
      v4 = -[__CFString stringByAppendingFormat:](v3, "stringByAppendingFormat:", @"%02X", *([self bytes] + v2));

      ++v2;
      v3 = v4;
    }

    while (v2 < [self length]);
  }

  else
  {
    v4 = &stru_286A08A88;
  }

  return v4;
}

@end