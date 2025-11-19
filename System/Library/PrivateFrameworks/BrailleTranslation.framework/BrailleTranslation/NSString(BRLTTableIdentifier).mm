@interface NSString(BRLTTableIdentifier)
- (id)brl_language;
- (id)brl_languageAndVariant;
- (id)brl_serviceIdentifier;
- (id)brl_tableIdentifier;
- (id)brl_variant;
- (uint64_t)_brl_rangeOfLastDot;
@end

@implementation NSString(BRLTTableIdentifier)

- (id)brl_serviceIdentifier
{
  v2 = [a1 _brl_rangeOfLastDot];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = [a1 substringToIndex:v2];
  }

  return v3;
}

- (id)brl_language
{
  v2 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"."];
  v3 = [a1 rangeOfCharacterFromSet:v2 options:4];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [a1 componentsSeparatedByString:@"-"];
    v5 = [v4 firstObject];
  }

  else
  {
    v4 = [a1 substringFromIndex:v3 + 1];
    v6 = [v4 componentsSeparatedByString:@"-"];
    v5 = [v6 firstObject];
  }

  return v5;
}

- (id)brl_variant
{
  v2 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"-"];
  v3 = [a1 rangeOfCharacterFromSet:v2 options:4];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = [a1 substringFromIndex:v3 + 1];
  }

  return v4;
}

- (id)brl_languageAndVariant
{
  v2 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"."];
  v3 = [a1 rangeOfCharacterFromSet:v2 options:4];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = a1;
  }

  else
  {
    v4 = [a1 substringFromIndex:v3 + 1];
  }

  v5 = v4;

  return v5;
}

- (id)brl_tableIdentifier
{
  v2 = [a1 _brl_rangeOfLastDot];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = [a1 substringFromIndex:v2 + v3];
  }

  return v4;
}

- (uint64_t)_brl_rangeOfLastDot
{
  v2 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"."];
  v3 = [a1 rangeOfCharacterFromSet:v2 options:4];

  return v3;
}

@end