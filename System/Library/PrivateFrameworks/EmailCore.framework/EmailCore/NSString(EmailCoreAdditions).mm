@interface NSString(EmailCoreAdditions)
- (id)ec_messageIDSubstring;
@end

@implementation NSString(EmailCoreAdditions)

- (id)ec_messageIDSubstring
{
  selfCopy = self;
  v2 = [selfCopy rangeOfString:@">"];
  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [selfCopy rangeOfString:@"<" options:4 range:{0, v2}];
    if (v3 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = [selfCopy substringWithRange:{v3 + 1, v2 - (v3 + 1)}];

      selfCopy = v4;
    }
  }

  return selfCopy;
}

@end