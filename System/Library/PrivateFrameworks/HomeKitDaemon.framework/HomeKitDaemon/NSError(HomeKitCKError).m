@interface NSError(HomeKitCKError)
- (id)hmd_actualCKErrorFromCKErrorPartialFailure:()HomeKitCKError;
- (id)hmd_conciseCKError;
- (id)hmd_convertedCKError;
- (id)hmd_hmErrorFromCKError;
- (id)hmd_retryAfterCKError;
- (uint64_t)hmd_isCKError;
- (uint64_t)hmd_isNonRecoverableCKError;
- (uint64_t)hmd_isRecordConflictCKError;
- (uint64_t)hmd_isUnderlyingCKError;
@end

@implementation NSError(HomeKitCKError)

- (uint64_t)hmd_isRecordConflictCKError
{
  result = [a1 hmd_isCKError];
  if (result)
  {
    v3 = [a1 code];
    return v3 == 14 || v3 == 11;
  }

  return result;
}

- (id)hmd_retryAfterCKError
{
  v23 = *MEMORY[0x277D85DE8];
  if ([a1 hmd_isCKError] & 1) != 0 || (objc_msgSend(a1, "hmd_isUnderlyingCKError"))
  {
    if ([a1 code] == 2)
    {
      v2 = [a1 userInfo];
      v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v4 = [v3 allValues];
      v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v19;
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v19 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = [*(*(&v18 + 1) + 8 * i) hmd_retryAfterCKError];
            if (v9)
            {
              v15 = v9;

              goto LABEL_22;
            }
          }

          v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }
    }

    v10 = [a1 userInfo];
    v11 = [v10 hmf_numberForKey:*MEMORY[0x277CBBF68]];
  }

  else
  {
    v12 = [a1 userInfo];
    v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v10 = v14;

    if (!v10)
    {
      v15 = 0;
      goto LABEL_20;
    }

    v11 = [v10 hmd_retryAfterCKError];
  }

  v15 = v11;
LABEL_20:

LABEL_22:
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)hmd_convertedCKError
{
  if ([a1 hmd_isCKError])
  {
    v2 = a1;
  }

  else
  {
    v3 = [a1 userInfo];
    v4 = [v3 objectForKey:*MEMORY[0x277CCA7E8]];

    if (v4 && [v4 hmd_isCKError])
    {
      v2 = v4;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

- (uint64_t)hmd_isNonRecoverableCKError
{
  result = [a1 hmd_isCKError];
  if (result)
  {
    v3 = [a1 code];
    result = 1;
    if (v3 > 0x12 || ((1 << v3) & 0x4932A) == 0)
    {
      return v3 == 131;
    }
  }

  return result;
}

- (uint64_t)hmd_isUnderlyingCKError
{
  v1 = [a1 domain];
  v2 = [v1 isEqualToString:*MEMORY[0x277CBC120]];

  return v2;
}

- (uint64_t)hmd_isCKError
{
  v1 = [a1 domain];
  v2 = [v1 isEqualToString:*MEMORY[0x277CBBF50]];

  return v2;
}

- (id)hmd_hmErrorFromCKError
{
  if (([a1 hmd_isCKError] & 1) == 0)
  {
    v4 = a1;
    goto LABEL_10;
  }

  v2 = [a1 code];
  if ((v2 - 3) >= 2)
  {
    if (v2 == 9)
    {
      v3 = 1010;
      goto LABEL_9;
    }

    if (v2 != 23)
    {
      v3 = 52;
      goto LABEL_9;
    }
  }

  v3 = 78;
LABEL_9:
  v4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:v3 description:0 reason:0 suggestion:0 underlyingError:a1];
LABEL_10:

  return v4;
}

- (id)hmd_conciseCKError
{
  v23 = *MEMORY[0x277D85DE8];
  if ([a1 hmd_isCKError])
  {
    v2 = [a1 userInfo];
    v3 = [v2 mutableCopy];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = [a1 userInfo];
    v5 = [v4 allKeys];

    v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          if (([ckErrorUserInfoKeys containsObject:v10] & 1) == 0)
          {
            [v3 removeObjectForKey:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }

    v11 = MEMORY[0x277CCA9B8];
    v12 = [a1 domain];
    v13 = [a1 code];
    v14 = [v3 copy];
    v15 = [v11 errorWithDomain:v12 code:v13 userInfo:v14];
  }

  else
  {
    v15 = a1;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)hmd_actualCKErrorFromCKErrorPartialFailure:()HomeKitCKError
{
  v4 = a3;
  if (![a1 hmd_isCKError])
  {
    goto LABEL_4;
  }

  if ([a1 code] != 2)
  {
    goto LABEL_4;
  }

  v5 = [a1 userInfo];
  v6 = [v5 objectForKey:*MEMORY[0x277CBBFB0]];
  v7 = [v6 objectForKey:v4];

  if (!v7)
  {
LABEL_4:
    v7 = a1;
  }

  return v7;
}

@end