@interface NSError(MFAccount)
- (uint64_t)mf_isInaccessibleAccountCredentialError;
- (uint64_t)mf_isMissingAccountCredentialError;
@end

@implementation NSError(MFAccount)

- (uint64_t)mf_isMissingAccountCredentialError
{
  domain = [self domain];
  result = [domain isEqualToString:*MEMORY[0x277CB8DC0]];
  if (result)
  {
    return [self code] == 11;
  }

  return result;
}

- (uint64_t)mf_isInaccessibleAccountCredentialError
{
  domain = [self domain];
  result = [domain isEqualToString:*MEMORY[0x277CB8DC0]];
  if (result)
  {
    return [self code] == 10;
  }

  return result;
}

@end