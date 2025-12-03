@interface NSString(CalNSStringEmailAddressAdditions)
- (BOOL)resemblesEmailAddress;
- (id)stringAddingMailto;
- (id)stringRemovingMailto;
@end

@implementation NSString(CalNSStringEmailAddressAdditions)

- (BOOL)resemblesEmailAddress
{
  result = 0;
  if ([self rangeOfString:@"/"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = [self rangeOfString:@"@"];
    if (v2 != 0x7FFFFFFFFFFFFFFFLL && [self rangeOfString:@"." options:0 range:{v2 + v3, objc_msgSend(self, "length") - (v2 + v3)}] != 0x7FFFFFFFFFFFFFFFLL)
    {
      return 1;
    }
  }

  return result;
}

- (id)stringAddingMailto
{
  if ([self hasMailto])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [@"mailto:" stringByAppendingString:self];
  }

  return selfCopy;
}

- (id)stringRemovingMailto
{
  selfCopy = self;
  if ([selfCopy hasMailto])
  {
    v2 = [selfCopy substringFromIndex:7];

    selfCopy = v2;
  }

  return selfCopy;
}

@end