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
  v2 = [MEMORY[0x277CCA900] newlineCharacterSet];
  v3 = [a1 wf_stringByReplacingCharactersInSet:v2 withString:@" "];

  return v3;
}

- (uint64_t)wf_stringContainsNewlineCharacters
{
  v2 = [MEMORY[0x277CCA900] newlineCharacterSet];
  v3 = [a1 wf_stringContainsCharacterInSet:v2];

  return v3;
}

- (id)wf_stringByReplacingCharactersInSet:()WFTrimmingUtilities withString:
{
  v6 = a4;
  v7 = [a1 componentsSeparatedByCharactersInSet:a3];
  v8 = [v7 if_objectsPassingTest:&__block_literal_global_12721];
  v9 = [v8 componentsJoinedByString:v6];

  return v9;
}

- (id)wf_stringByTrimmingTrailingWhitespaceAndNewlineCharacters
{
  v2 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v3 = [a1 wf_stringByTrimmingTrailingCharactersInSet:v2];

  return v3;
}

- (id)wf_stringByTrimmingLeadingWhitespaceAndNewlineCharacters
{
  v2 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v3 = [a1 wf_stringByTrimmingLeadingCharactersInSet:v2];

  return v3;
}

- (__CFString)wf_stringByTrimmingTrailingCharactersInSet:()WFTrimmingUtilities
{
  v4 = [a3 invertedSet];
  v5 = [a1 rangeOfCharacterFromSet:v4 options:4];

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = &stru_282F53518;
  }

  else
  {
    v6 = [a1 substringToIndex:v5 + 1];
  }

  return v6;
}

- (__CFString)wf_stringByTrimmingLeadingCharactersInSet:()WFTrimmingUtilities
{
  v4 = [a3 invertedSet];
  v5 = [a1 rangeOfCharacterFromSet:v4];

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = &stru_282F53518;
  }

  else
  {
    v6 = [a1 substringFromIndex:v5];
  }

  return v6;
}

@end