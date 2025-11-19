@interface NSError(MFAccount)
- (uint64_t)mf_isInaccessibleAccountCredentialError;
- (uint64_t)mf_isMissingAccountCredentialError;
@end

@implementation NSError(MFAccount)

- (uint64_t)mf_isMissingAccountCredentialError
{
  v2 = [a1 domain];
  result = [v2 isEqualToString:*MEMORY[0x277CB8DC0]];
  if (result)
  {
    return [a1 code] == 11;
  }

  return result;
}

- (uint64_t)mf_isInaccessibleAccountCredentialError
{
  v2 = [a1 domain];
  result = [v2 isEqualToString:*MEMORY[0x277CB8DC0]];
  if (result)
  {
    return [a1 code] == 10;
  }

  return result;
}

@end