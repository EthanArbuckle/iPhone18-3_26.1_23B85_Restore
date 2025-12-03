@interface NSPersonNameComponents(BRAdditions)
- (id)br_formattedNameWithNonBreakingSpaces;
- (uint64_t)br_shouldOverwriteExistingName;
@end

@implementation NSPersonNameComponents(BRAdditions)

- (id)br_formattedNameWithNonBreakingSpaces
{
  v1 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:self style:0 options:0];
  v2 = [v1 stringByReplacingOccurrencesOfString:@" " withString:@" "];

  return v2;
}

- (uint64_t)br_shouldOverwriteExistingName
{
  givenName = [self givenName];
  if ([givenName isEqualToString:@"n/a"])
  {
    v3 = 1;
  }

  else
  {
    familyName = [self familyName];
    v3 = [familyName isEqualToString:@"n/a"];
  }

  return v3;
}

@end