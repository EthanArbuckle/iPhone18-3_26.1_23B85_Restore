@interface NSString(WFTrimmingUtilities)
- (__CFString)wf_stringByTrimmingLeadingCharactersInSet:()WFTrimmingUtilities;
- (__CFString)wf_stringByTrimmingTrailingCharactersInSet:()WFTrimmingUtilities;
- (id)wf_stringByReplacingCharactersInSet:()WFTrimmingUtilities withString:;
- (id)wf_stringByReplacingNewlinesWithSpaces;
- (id)wf_stringByTrimmingLeadingWhitespaceAndNewlineCharacters;
- (id)wf_stringByTrimmingTrailingWhitespaceAndNewlineCharacters;
- (uint64_t)wf_stringContainsNewlineCharacters;
@end

@implementation NSString(WFTrimmingUtilities)

- (id)wf_stringByReplacingNewlinesWithSpaces
{
  newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
  v3 = [self wf_stringByReplacingCharactersInSet:newlineCharacterSet withString:@" "];

  return v3;
}

- (uint64_t)wf_stringContainsNewlineCharacters
{
  newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
  v3 = [self wf_stringContainsCharacterInSet:newlineCharacterSet];

  return v3;
}

- (id)wf_stringByReplacingCharactersInSet:()WFTrimmingUtilities withString:
{
  v6 = a4;
  v7 = [self componentsSeparatedByCharactersInSet:a3];
  v8 = [v7 if_objectsPassingTest:&__block_literal_global_12721];
  v9 = [v8 componentsJoinedByString:v6];

  return v9;
}

- (id)wf_stringByTrimmingTrailingWhitespaceAndNewlineCharacters
{
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v3 = [self wf_stringByTrimmingTrailingCharactersInSet:whitespaceAndNewlineCharacterSet];

  return v3;
}

- (id)wf_stringByTrimmingLeadingWhitespaceAndNewlineCharacters
{
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v3 = [self wf_stringByTrimmingLeadingCharactersInSet:whitespaceAndNewlineCharacterSet];

  return v3;
}

- (__CFString)wf_stringByTrimmingTrailingCharactersInSet:()WFTrimmingUtilities
{
  invertedSet = [a3 invertedSet];
  v5 = [self rangeOfCharacterFromSet:invertedSet options:4];

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = &stru_282F53518;
  }

  else
  {
    v6 = [self substringToIndex:v5 + 1];
  }

  return v6;
}

- (__CFString)wf_stringByTrimmingLeadingCharactersInSet:()WFTrimmingUtilities
{
  invertedSet = [a3 invertedSet];
  v5 = [self rangeOfCharacterFromSet:invertedSet];

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = &stru_282F53518;
  }

  else
  {
    v6 = [self substringFromIndex:v5];
  }

  return v6;
}

@end