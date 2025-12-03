@interface NSError(MFAccount)
- (BOOL)mf_isInaccessibleAccountCredentialError;
- (BOOL)mf_isMissingAccountCredentialError;
@end

@implementation NSError(MFAccount)

- (BOOL)mf_isMissingAccountCredentialError
{
  domain = [self domain];
  if ([domain isEqualToString:*MEMORY[0x1E6959978]])
  {
    v3 = [self code] == 11;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)mf_isInaccessibleAccountCredentialError
{
  domain = [self domain];
  if ([domain isEqualToString:*MEMORY[0x1E6959978]])
  {
    v3 = [self code] == 10;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end