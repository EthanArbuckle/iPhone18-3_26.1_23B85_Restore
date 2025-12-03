@interface NSString(HealthRecordsPlugin)
- (id)hk_base64PaddedString;
@end

@implementation NSString(HealthRecordsPlugin)

- (id)hk_base64PaddedString
{
  if (([self length] & 3) != 0)
  {
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v3 = [self stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
    selfCopy = [v3 mutableCopy];

    v5 = [selfCopy length] | 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      [selfCopy appendString:@"="];
    }

    while (!__CFADD__(v5++, 1));
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end