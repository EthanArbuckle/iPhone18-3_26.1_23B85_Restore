@interface NSString(Base64)
- (id)en_base64PaddedString;
@end

@implementation NSString(Base64)

- (id)en_base64PaddedString
{
  if (([a1 length] & 3) != 0)
  {
    v2 = [MEMORY[0x277CCA908] whitespaceAndNewlineCharacterSet];
    v3 = [a1 stringByTrimmingCharactersInSet:v2];
    v4 = [v3 mutableCopy];

    v5 = [v4 length] | 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      [v4 appendString:@"="];
    }

    while (!__CFADD__(v5++, 1));
  }

  else
  {
    v4 = a1;
  }

  return v4;
}

@end