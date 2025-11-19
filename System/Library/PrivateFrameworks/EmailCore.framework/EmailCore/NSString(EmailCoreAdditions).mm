@interface NSString(EmailCoreAdditions)
- (id)ec_messageIDSubstring;
@end

@implementation NSString(EmailCoreAdditions)

- (id)ec_messageIDSubstring
{
  v1 = a1;
  v2 = [v1 rangeOfString:@">"];
  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [v1 rangeOfString:@"<" options:4 range:{0, v2}];
    if (v3 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = [v1 substringWithRange:{v3 + 1, v2 - (v3 + 1)}];

      v1 = v4;
    }
  }

  return v1;
}

@end