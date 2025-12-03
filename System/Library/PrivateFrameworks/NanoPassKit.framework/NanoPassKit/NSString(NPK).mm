@interface NSString(NPK)
- (BOOL)npkHasContent;
- (uint64_t)isAllCaps;
@end

@implementation NSString(NPK)

- (BOOL)npkHasContent
{
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v3 = [self stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
  v4 = [v3 length] != 0;

  return v4;
}

- (uint64_t)isAllCaps
{
  if ([self isEqualToString:&stru_286C934F8])
  {
    return 0;
  }

  uppercaseString = [self uppercaseString];
  v4 = [uppercaseString isEqualToString:self];

  return v4;
}

@end