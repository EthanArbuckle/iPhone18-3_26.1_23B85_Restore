@interface NSString
- (id)__stringByStrippingAttachmentAndControlCharacters;
- (id)__stringByStrippingControlCharacters;
- (id)bd_stringByRemovingURLEscapes;
- (id)stringByRemovingCharactersFromSet:(id)set;
- (id)trimmedString;
- (unsigned)unsignedIntValue;
@end

@implementation NSString

- (unsigned)unsignedIntValue
{
  trimmedString = [(NSString *)self trimmedString];
  longLongValue = [trimmedString longLongValue];

  return longLongValue;
}

- (id)trimmedString
{
  v2 = [(NSString *)self mutableCopy];
  CFStringTrimWhitespace(v2);
  v3 = [(__CFString *)v2 copy];

  return v3;
}

- (id)__stringByStrippingControlCharacters
{
  v3 = sub_100009BE8();
  v4 = [(NSString *)self stringByRemovingCharactersFromSet:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_1000F64A0;
  }

  v7 = v6;

  return v6;
}

- (id)__stringByStrippingAttachmentAndControlCharacters
{
  if (qword_1000FE0D8 != -1)
  {
    sub_1000C0EE4();
  }

  v3 = [(NSString *)self stringByRemovingCharactersFromSet:qword_1000FE0D0];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_1000F64A0;
  }

  v6 = v5;

  return v5;
}

- (id)stringByRemovingCharactersFromSet:(id)set
{
  setCopy = set;
  v5 = [(NSString *)self length];
  if (v5 << 32 && (v12.length = v5, v12.location = 0, CFStringFindCharacterFromSet(self, setCopy, v12, 0, 0)))
  {
    v6 = objc_alloc_init(NSMutableString);
    if ([(NSString *)self length])
    {
      v7 = 0;
      do
      {
        v8 = [(NSString *)self characterAtIndex:v7];
        if (([setCopy characterIsMember:v8] & 1) == 0)
        {
          [v6 appendFormat:@"%C", v8];
        }

        ++v7;
      }

      while (v7 < [(NSString *)self length]);
    }

    selfCopy = [v6 copy];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)bd_stringByRemovingURLEscapes
{
  v2 = CFURLCreateStringByReplacingPercentEscapes(0, self, &stru_1000F64A0);

  return v2;
}

@end