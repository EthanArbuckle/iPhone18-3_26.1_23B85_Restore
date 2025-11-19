@interface NSError(MFAccount)
- (BOOL)mf_isInaccessibleAccountCredentialError;
- (BOOL)mf_isMissingAccountCredentialError;
@end

@implementation NSError(MFAccount)

- (BOOL)mf_isMissingAccountCredentialError
{
  v2 = [a1 domain];
  if ([v2 isEqualToString:*MEMORY[0x1E6959978]])
  {
    v3 = [a1 code] == 11;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)mf_isInaccessibleAccountCredentialError
{
  v2 = [a1 domain];
  if ([v2 isEqualToString:*MEMORY[0x1E6959978]])
  {
    v3 = [a1 code] == 10;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end