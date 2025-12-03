@interface NSError(Authentication)
- (BOOL)isAuthKitUnableToPromptError;
- (uint64_t)isAuthKitUnableToPromptDueToNetworkError;
- (unint64_t)isAuthenticationError;
@end

@implementation NSError(Authentication)

- (unint64_t)isAuthenticationError
{
  domain = [self domain];
  v3 = [domain isEqualToString:*MEMORY[0x277CFB2F0]];

  if (v3)
  {
    code = [self code];
    v5 = 0x400000180uLL >> code;
    if (code >= 0x23)
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    domain2 = [self domain];
    v7 = [domain2 isEqualToString:*MEMORY[0x277CFB290]];

    if (v7)
    {
      v8 = [self code] == 305;
    }

    else
    {
      domain3 = [self domain];
      v10 = [domain3 isEqualToString:*MEMORY[0x277CFB298]];

      if (!v10)
      {
        LOBYTE(v5) = 0;
        return v5 & 1;
      }

      code2 = [self code];
      v8 = code2 == 99 || code2 == 102;
    }

    LOBYTE(v5) = v8;
  }

  return v5 & 1;
}

- (BOOL)isAuthKitUnableToPromptError
{
  domain = [self domain];
  if ([domain isEqualToString:*MEMORY[0x277CEFF48]])
  {
    v3 = [self code] == -7013;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)isAuthKitUnableToPromptDueToNetworkError
{
  if ([self isAuthKitUnableToPromptError])
  {
    userInfo = [self userInfo];
    v3 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

    if (v3)
    {
      if ([v3 code] == -7005)
      {
        v4 = -1;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

@end