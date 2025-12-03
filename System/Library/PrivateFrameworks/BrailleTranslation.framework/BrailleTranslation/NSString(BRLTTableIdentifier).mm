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
  _brl_rangeOfLastDot = [self _brl_rangeOfLastDot];
  if (_brl_rangeOfLastDot == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = [self substringToIndex:_brl_rangeOfLastDot];
  }

  return v3;
}

- (id)brl_language
{
  v2 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"."];
  v3 = [self rangeOfCharacterFromSet:v2 options:4];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [self componentsSeparatedByString:@"-"];
    firstObject = [v4 firstObject];
  }

  else
  {
    v4 = [self substringFromIndex:v3 + 1];
    v6 = [v4 componentsSeparatedByString:@"-"];
    firstObject = [v6 firstObject];
  }

  return firstObject;
}

- (id)brl_variant
{
  v2 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"-"];
  v3 = [self rangeOfCharacterFromSet:v2 options:4];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = [self substringFromIndex:v3 + 1];
  }

  return v4;
}

- (id)brl_languageAndVariant
{
  v2 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"."];
  v3 = [self rangeOfCharacterFromSet:v2 options:4];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [self substringFromIndex:v3 + 1];
  }

  v5 = selfCopy;

  return v5;
}

- (id)brl_tableIdentifier
{
  _brl_rangeOfLastDot = [self _brl_rangeOfLastDot];
  if (_brl_rangeOfLastDot == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = [self substringFromIndex:_brl_rangeOfLastDot + v3];
  }

  return v4;
}

- (uint64_t)_brl_rangeOfLastDot
{
  v2 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"."];
  v3 = [self rangeOfCharacterFromSet:v2 options:4];

  return v3;
}

@end