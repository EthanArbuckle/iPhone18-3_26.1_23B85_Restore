@interface NSError(CDP)
- (BOOL)cdp_indicatesDaemonConnectionWasInterrupted;
- (uint64_t)cdp_anyDescendantErrorDownToMaxDepth:()CDP matchesPredicate:;
@end

@implementation NSError(CDP)

- (BOOL)cdp_indicatesDaemonConnectionWasInterrupted
{
  v2 = [a1 domain];
  if ([v2 isEqualToString:*MEMORY[0x1E696A250]])
  {
    v3 = [a1 code] == 4097;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)cdp_anyDescendantErrorDownToMaxDepth:()CDP matchesPredicate:
{
  v6 = a4;
  if (v6[2](v6, a1))
  {
    v7 = 1;
  }

  else
  {
    v8 = [a1 userInfo];
    v9 = *MEMORY[0x1E696AA08];
    v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

    if (v10)
    {
      v11 = a3 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      v7 = 0;
    }

    else
    {
      v12 = 2;
      v13 = v10;
      while (1)
      {
        v7 = v6[2](v6, v13);
        if (v7)
        {
          break;
        }

        v14 = [v13 userInfo];
        v10 = [v14 objectForKeyedSubscript:v9];

        if (v10)
        {
          v13 = v10;
          if (v12++ <= a3)
          {
            continue;
          }
        }

        goto LABEL_15;
      }

      v10 = v13;
    }

LABEL_15:
  }

  return v7;
}

@end