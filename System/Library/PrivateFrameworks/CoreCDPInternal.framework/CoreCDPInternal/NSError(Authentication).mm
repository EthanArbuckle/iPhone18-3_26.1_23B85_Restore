@interface NSError(Authentication)
- (BOOL)isAuthKitUnableToPromptError;
- (uint64_t)isAuthKitUnableToPromptDueToNetworkError;
- (unint64_t)isAuthenticationError;
@end

@implementation NSError(Authentication)

- (unint64_t)isAuthenticationError
{
  v2 = [a1 domain];
  v3 = [v2 isEqualToString:*MEMORY[0x277CFB2F0]];

  if (v3)
  {
    v4 = [a1 code];
    v5 = 0x400000180uLL >> v4;
    if (v4 >= 0x23)
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    v6 = [a1 domain];
    v7 = [v6 isEqualToString:*MEMORY[0x277CFB290]];

    if (v7)
    {
      v8 = [a1 code] == 305;
    }

    else
    {
      v9 = [a1 domain];
      v10 = [v9 isEqualToString:*MEMORY[0x277CFB298]];

      if (!v10)
      {
        LOBYTE(v5) = 0;
        return v5 & 1;
      }

      v11 = [a1 code];
      v8 = v11 == 99 || v11 == 102;
    }

    LOBYTE(v5) = v8;
  }

  return v5 & 1;
}

- (BOOL)isAuthKitUnableToPromptError
{
  v2 = [a1 domain];
  if ([v2 isEqualToString:*MEMORY[0x277CEFF48]])
  {
    v3 = [a1 code] == -7013;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)isAuthKitUnableToPromptDueToNetworkError
{
  if ([a1 isAuthKitUnableToPromptError])
  {
    v2 = [a1 userInfo];
    v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

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