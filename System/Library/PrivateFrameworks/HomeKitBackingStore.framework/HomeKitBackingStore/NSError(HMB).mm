@interface NSError(HMB)
- (BOOL)hmbIsSQLiteConstraintError;
- (BOOL)hmbIsSQLiteDatabaseCorruptedError;
- (BOOL)hmbIsSQLiteDiskFullError;
- (double)hmbCloudKitRetryDelay;
- (double)hmbDefaultCloudKitRetryDelay;
- (uint64_t)_hmbHasCKUnderlyingErrorWithCode:()HMB;
- (uint64_t)_hmbIsCKErrorOrHasPartialFailurePassingFilter:()HMB;
- (uint64_t)_hmbIsCKErrorOrHasPartialFailureWithCode:()HMB;
- (uint64_t)_hmbIsCKErrorWithCode:()HMB;
- (uint64_t)_hmbIsCKUnderlyingErrorWithCode:()HMB;
- (uint64_t)hmbIsCKZoneDisabledError;
- (uint64_t)hmbIsCloudKitError;
- (uint64_t)hmbIsCloudKitUnderlyingError;
- (void)hmbCKUnderlyingError;
@end

@implementation NSError(HMB)

- (uint64_t)_hmbHasCKUnderlyingErrorWithCode:()HMB
{
  if ([self _hmbIsCKUnderlyingErrorWithCode:?])
  {
    return 1;
  }

  hmbCKUnderlyingError = [self hmbCKUnderlyingError];
  v7 = hmbCKUnderlyingError;
  if (hmbCKUnderlyingError)
  {
    v5 = [hmbCKUnderlyingError _hmbHasCKUnderlyingErrorWithCode:a3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)_hmbIsCKErrorOrHasPartialFailurePassingFilter:()HMB
{
  v4 = a3;
  if ([self hmbIsCKPartialFailureError])
  {
    userInfo = [self userInfo];
    v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

    allValues = [v6 allValues];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __62__NSError_HMB___hmbIsCKErrorOrHasPartialFailurePassingFilter___block_invoke;
    v10[3] = &unk_2786E2240;
    v11 = v4;
    v8 = [allValues na_any:v10];
  }

  else
  {
    v8 = (*(v4 + 2))(v4, self);
  }

  return v8;
}

- (uint64_t)_hmbIsCKErrorOrHasPartialFailureWithCode:()HMB
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__NSError_HMB___hmbIsCKErrorOrHasPartialFailureWithCode___block_invoke;
  v4[3] = &__block_descriptor_40_e17_B16__0__NSError_8l;
  v4[4] = a3;
  return [self _hmbIsCKErrorOrHasPartialFailurePassingFilter:v4];
}

- (uint64_t)_hmbIsCKUnderlyingErrorWithCode:()HMB
{
  result = [self hmbIsCloudKitUnderlyingError];
  if (result)
  {
    return [self code] == a3;
  }

  return result;
}

- (uint64_t)_hmbIsCKErrorWithCode:()HMB
{
  result = [self hmbIsCloudKitError];
  if (result)
  {
    return [self code] == a3;
  }

  return result;
}

- (uint64_t)hmbIsCKZoneDisabledError
{
  if (![self _hmbIsCKErrorWithCode:15] || !objc_msgSend(self, "_hmbHasCKUnderlyingErrorWithCode:", 2000))
  {
    return 0;
  }

  userInfo = [self userInfo];
  v3 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBBF70]];
  v4 = [v3 isEqualToString:@"User modifications not allowed in disabled zone"];

  return v4;
}

- (double)hmbDefaultCloudKitRetryDelay
{
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  if ([processInfo isLowPowerModeEnabled])
  {
    v1 = 600.0;
  }

  else
  {
    v1 = 60.0;
  }

  return v1;
}

- (double)hmbCloudKitRetryDelay
{
  v28 = *MEMORY[0x277D85DE8];
  if ([self hmbIsCloudKitError])
  {
    userInfo = [self userInfo];
    v3 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBBF68]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;

    if (!v5 || ([v5 doubleValue], v7 = v6, v6 < 0.0))
    {
      if ([self hmbIsCKPartialFailureError])
      {
        userInfo2 = [self userInfo];
        v9 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v24;
LABEL_10:
          v14 = 0;
          while (1)
          {
            if (*v24 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = [v10 objectForKeyedSubscript:{*(*(&v23 + 1) + 8 * v14), v23}];
            [v15 hmbCloudKitRetryDelay];
            v17 = v16;

            v7 = -1.0;
            if (v17 == -1.0)
            {
              break;
            }

            if (v12 == ++v14)
            {
              v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
              if (v12)
              {
                goto LABEL_10;
              }

              v7 = v17;
              break;
            }
          }
        }

        else
        {
          v7 = -1.0;
        }

        goto LABEL_26;
      }

      code = [self code];
      v7 = -1.0;
      if (code <= 0x17)
      {
        if (((1 << code) & 0x9000D8) == 0)
        {
          if (code != 14 || ![self _hmbHasCKUnderlyingErrorWithCode:2037])
          {
            goto LABEL_26;
          }

          goto LABEL_23;
        }

        if (([self _hmbHasCKUnderlyingErrorWithCode:3006] & 1) == 0)
        {
LABEL_23:
          [self hmbDefaultCloudKitRetryDelay];
          v7 = v21;
        }
      }
    }

LABEL_26:

    v22 = *MEMORY[0x277D85DE8];
    return v7;
  }

  v18 = *MEMORY[0x277D85DE8];

  [self hmbDefaultCloudKitRetryDelay];
  return result;
}

- (void)hmbCKUnderlyingError
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  if ([v2 hmbIsCloudKitUnderlyingError])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (uint64_t)hmbIsCloudKitUnderlyingError
{
  domain = [self domain];
  v2 = [domain isEqualToString:*MEMORY[0x277CBC120]];

  return v2;
}

- (uint64_t)hmbIsCloudKitError
{
  domain = [self domain];
  v2 = [domain isEqualToString:*MEMORY[0x277CBBF50]];

  return v2;
}

- (BOOL)hmbIsSQLiteDiskFullError
{
  userInfo = [self userInfo];
  v2 = [userInfo hmf_numberForKey:@"extcode"];
  v3 = [v2 integerValue] == 13;

  return v3;
}

- (BOOL)hmbIsSQLiteDatabaseCorruptedError
{
  userInfo = [self userInfo];
  v3 = [userInfo hmf_numberForKey:@"extcode"];
  if ([v3 integerValue] == 26)
  {
    v4 = 1;
  }

  else
  {
    userInfo2 = [self userInfo];
    v6 = [userInfo2 hmf_numberForKey:@"extcode"];
    v4 = [v6 integerValue] == 11;
  }

  return v4;
}

- (BOOL)hmbIsSQLiteConstraintError
{
  userInfo = [self userInfo];
  v2 = [userInfo hmf_numberForKey:@"extcode"];
  v3 = [v2 integerValue] == 19;

  return v3;
}

@end