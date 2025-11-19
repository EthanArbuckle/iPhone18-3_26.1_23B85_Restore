@interface NSPersonNameComponents(BRAdditions)
- (id)br_formattedNameWithNonBreakingSpaces;
- (uint64_t)br_shouldOverwriteExistingName;
@end

@implementation NSPersonNameComponents(BRAdditions)

- (id)br_formattedNameWithNonBreakingSpaces
{
  v1 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:a1 style:0 options:0];
  v2 = [v1 stringByReplacingOccurrencesOfString:@" " withString:@" "];

  return v2;
}

- (uint64_t)br_shouldOverwriteExistingName
{
  v2 = [a1 givenName];
  if ([v2 isEqualToString:@"n/a"])
  {
    v3 = 1;
  }

  else
  {
    v4 = [a1 familyName];
    v3 = [v4 isEqualToString:@"n/a"];
  }

  return v3;
}

@end