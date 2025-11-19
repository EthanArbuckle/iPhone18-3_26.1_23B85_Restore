@interface NSString(CalNSStringEmailAddressAdditions)
- (BOOL)resemblesEmailAddress;
- (id)stringAddingMailto;
- (id)stringRemovingMailto;
@end

@implementation NSString(CalNSStringEmailAddressAdditions)

- (BOOL)resemblesEmailAddress
{
  result = 0;
  if ([a1 rangeOfString:@"/"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = [a1 rangeOfString:@"@"];
    if (v2 != 0x7FFFFFFFFFFFFFFFLL && [a1 rangeOfString:@"." options:0 range:{v2 + v3, objc_msgSend(a1, "length") - (v2 + v3)}] != 0x7FFFFFFFFFFFFFFFLL)
    {
      return 1;
    }
  }

  return result;
}

- (id)stringAddingMailto
{
  if ([a1 hasMailto])
  {
    v2 = a1;
  }

  else
  {
    v2 = [@"mailto:" stringByAppendingString:a1];
  }

  return v2;
}

- (id)stringRemovingMailto
{
  v1 = a1;
  if ([v1 hasMailto])
  {
    v2 = [v1 substringFromIndex:7];

    v1 = v2;
  }

  return v1;
}

@end