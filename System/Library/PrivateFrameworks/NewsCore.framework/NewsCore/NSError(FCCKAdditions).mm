@interface NSError(FCCKAdditions)
- (id)fc_underlyingCKErrorUserInfoValueForKey:()FCCKAdditions forItemID:;
- (id)fc_zoneIDsWithIdentityLossError;
- (uint64_t)fc_hasCKErrorWithCode:()FCCKAdditions;
- (uint64_t)fc_hasCKErrorWithCodePassingTest:()FCCKAdditions;
- (uint64_t)fc_isCKErrorWithCode:()FCCKAdditions;
- (uint64_t)fc_isCKErrorWithCodePassingTest:()FCCKAdditions;
- (uint64_t)fc_isMissingZoneError;
@end

@implementation NSError(FCCKAdditions)

- (uint64_t)fc_isMissingZoneError
{
  if ([self fc_isCKErrorWithCode:26])
  {
    return 1;
  }

  return [self fc_isCKErrorWithCode:28];
}

- (uint64_t)fc_hasCKErrorWithCode:()FCCKAdditions
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__NSError_FCCKAdditions__fc_hasCKErrorWithCode___block_invoke;
  v4[3] = &__block_descriptor_40_e8_B16__0q8l;
  v4[4] = a3;
  return [self fc_hasCKErrorWithCodePassingTest:v4];
}

- (uint64_t)fc_isCKErrorWithCode:()FCCKAdditions
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__NSError_FCCKAdditions__fc_isCKErrorWithCode___block_invoke;
  v4[3] = &__block_descriptor_40_e8_B16__0q8l;
  v4[4] = a3;
  return [self fc_isCKErrorWithCodePassingTest:v4];
}

- (uint64_t)fc_isCKErrorWithCodePassingTest:()FCCKAdditions
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  domain = [self domain];
  v6 = [domain isEqualToString:*MEMORY[0x1E695B740]];

  if (v6)
  {
    if ((v4[2])(v4, [self code]))
    {
      v6 = 1;
    }

    else if ([self code] == 2)
    {
      userInfo = [self userInfo];
      v8 = [userInfo objectForKey:*MEMORY[0x1E695B798]];

      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      allValues = [v8 allValues];
      v6 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        v10 = *v15;
        while (2)
        {
          v11 = 0;
          do
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(allValues);
            }

            if (!v4[2](v4, [*(*(&v14 + 1) + 8 * v11) code]))
            {
              v6 = 0;
              goto LABEL_16;
            }

            ++v11;
          }

          while (v6 != v11);
          v6 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }

        v6 = 1;
      }

LABEL_16:
    }

    else
    {
      v6 = 0;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v6;
}

- (uint64_t)fc_hasCKErrorWithCodePassingTest:()FCCKAdditions
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  domain = [self domain];
  v6 = [domain isEqualToString:*MEMORY[0x1E695B740]];

  if (v6)
  {
    if (v4[2](v4, [self code]))
    {
      v6 = 1;
    }

    else if ([self code] == 2)
    {
      userInfo = [self userInfo];
      v8 = [userInfo objectForKey:*MEMORY[0x1E695B798]];

      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      allValues = [v8 allValues];
      v6 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        v10 = *v15;
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(allValues);
            }

            if (v4[2](v4, [*(*(&v14 + 1) + 8 * i) code]))
            {
              v6 = 1;
              goto LABEL_16;
            }
          }

          v6 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

LABEL_16:
    }

    else
    {
      v6 = 0;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)fc_underlyingCKErrorUserInfoValueForKey:()FCCKAdditions forItemID:
{
  v6 = a3;
  v7 = a4;
  domain = [self domain];
  v9 = [domain isEqualToString:*MEMORY[0x1E695B740]];

  if (!v9)
  {
    goto LABEL_5;
  }

  userInfo = [self userInfo];
  v11 = [userInfo objectForKey:v6];

  if (v11)
  {
    goto LABEL_6;
  }

  if ([self code] == 2)
  {
    userInfo2 = [self userInfo];
    v13 = [userInfo2 objectForKey:*MEMORY[0x1E695B798]];

    v14 = [v13 objectForKey:v7];
    userInfo3 = [v14 userInfo];
    v11 = [userInfo3 objectForKey:v6];
  }

  else
  {
LABEL_5:
    v11 = 0;
  }

LABEL_6:

  return v11;
}

- (id)fc_zoneIDsWithIdentityLossError
{
  domain = [self domain];
  v3 = [domain isEqualToString:*MEMORY[0x1E695B740]];

  if (v3 && [self code] == 2)
  {
    userInfo = [self userInfo];
    v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E695B798]];

    if (v5)
    {
      v6 = MEMORY[0x1E695DFA8];
      v7 = v5;
      v8 = [v6 set];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __57__NSError_FCCKAdditions__fc_zoneIDsWithIdentityLossError__block_invoke_4;
      v12[3] = &unk_1E7C389B0;
      v13 = v8;
      v9 = v8;
      [v7 enumerateKeysAndObjectsUsingBlock:v12];

      allObjects = [v9 allObjects];
    }

    else
    {
      allObjects = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    allObjects = MEMORY[0x1E695E0F0];
  }

  return allObjects;
}

@end