@interface NSError(MSErrorUtilities)
+ (id)MSErrorWithDomain:()MSErrorUtilities code:description:suggestion:;
+ (id)MSErrorWithDomain:()MSErrorUtilities code:description:underlyingError:additionalUserInfo:;
- (id)MSFindPrimaryError;
- (id)MSMMCSRetryAfterDate;
- (id)MSMakePrimaryError;
- (id)_MSVerboseDescriptionRecursionCount:()MSErrorUtilities;
- (uint64_t)MSContainsErrorWithDomain:()MSErrorUtilities code:;
- (uint64_t)MSIsAuthError;
- (uint64_t)MSIsBadTokenError;
- (uint64_t)MSIsCounted;
- (uint64_t)MSIsFatal;
- (uint64_t)MSIsQuotaError;
- (uint64_t)MSIsTemporaryNetworkError;
- (uint64_t)MSNeedsBackoff;
- (void)_MSApplyBlock:()MSErrorUtilities;
@end

@implementation NSError(MSErrorUtilities)

- (id)MSMMCSRetryAfterDate
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy_;
  v8 = __Block_byref_object_dispose_;
  v9 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __49__NSError_MSErrorUtilities__MSMMCSRetryAfterDate__block_invoke;
  v3[3] = &unk_278E919A8;
  v3[4] = &v4;
  [a1 _MSApplyBlock:v3];
  v1 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v1;
}

- (uint64_t)MSIsQuotaError
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __43__NSError_MSErrorUtilities__MSIsQuotaError__block_invoke;
  v3[3] = &unk_278E919A8;
  v3[4] = &v4;
  [a1 _MSApplyBlock:v3];
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

- (uint64_t)MSContainsErrorWithDomain:()MSErrorUtilities code:
{
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__NSError_MSErrorUtilities__MSContainsErrorWithDomain_code___block_invoke;
  v10[3] = &unk_278E90618;
  v7 = v6;
  v12 = &v14;
  v13 = a4;
  v11 = v7;
  [a1 _MSApplyBlock:v10];
  v8 = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return v8;
}

- (uint64_t)MSIsBadTokenError
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __46__NSError_MSErrorUtilities__MSIsBadTokenError__block_invoke;
  v3[3] = &unk_278E919A8;
  v3[4] = &v4;
  [a1 _MSApplyBlock:v3];
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

- (uint64_t)MSIsAuthError
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __42__NSError_MSErrorUtilities__MSIsAuthError__block_invoke;
  v3[3] = &unk_278E919A8;
  v3[4] = &v4;
  [a1 _MSApplyBlock:v3];
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

- (uint64_t)MSIsFatal
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __38__NSError_MSErrorUtilities__MSIsFatal__block_invoke;
  v3[3] = &unk_278E919A8;
  v3[4] = &v4;
  [a1 _MSApplyBlock:v3];
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

- (uint64_t)MSIsCounted
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 1;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __40__NSError_MSErrorUtilities__MSIsCounted__block_invoke;
  v3[3] = &unk_278E919A8;
  v3[4] = &v4;
  [a1 _MSApplyBlock:v3];
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

- (uint64_t)MSNeedsBackoff
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __43__NSError_MSErrorUtilities__MSNeedsBackoff__block_invoke;
  v3[3] = &unk_278E919A8;
  v3[4] = &v4;
  [a1 _MSApplyBlock:v3];
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

- (uint64_t)MSIsTemporaryNetworkError
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __54__NSError_MSErrorUtilities__MSIsTemporaryNetworkError__block_invoke;
  v3[3] = &unk_278E919A8;
  v3[4] = &v4;
  [a1 _MSApplyBlock:v3];
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

- (void)_MSApplyBlock:()MSErrorUtilities
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = a1;
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *MEMORY[0x277D25478];
    v9 = *MEMORY[0x277CCA7E8];
    v23 = *MEMORY[0x277D25478];
    do
    {
      if (!v4[2](v4, v6))
      {
        v19 = v6;
        goto LABEL_22;
      }

      v10 = [v6 userInfo];
      v11 = [v10 objectForKey:v8];

      if ([v11 count])
      {
        v12 = v9;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v13 = v11;
        v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v25;
          while (2)
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v25 != v16)
              {
                objc_enumerationMutation(v13);
              }

              if ((v4[2])(v4, *(*(&v24 + 1) + 8 * i)))
              {

                v20 = v7;
                v19 = v6;
                goto LABEL_19;
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        v9 = v12;
        v8 = v23;
      }

      v18 = [v6 userInfo];
      v19 = [v18 objectForKey:v9];

      v20 = v7 + 1;
      if (!v19)
      {
        break;
      }

      v6 = v19;
    }

    while (v7++ < 0x13);
LABEL_19:
    if (v20 >= 0x14)
    {
      _logRecursiveError();
    }
  }

  else
  {
    v19 = 0;
  }

LABEL_22:

  v22 = *MEMORY[0x277D85DE8];
}

- (id)MSFindPrimaryError
{
  v1 = [a1 userInfo];
  v2 = *MEMORY[0x277CCA7E8];
  v3 = [v1 objectForKey:*MEMORY[0x277CCA7E8]];

  if (v3)
  {
    v4 = -1;
    do
    {
      v5 = [v3 userInfo];
      v6 = [v5 objectForKey:@"MSErrorIsPrimary"];

      if (v6)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v6 BOOLValue])
          {
            v8 = v3;

            v9 = v8;
            goto LABEL_12;
          }
        }
      }

      ++v4;
      v7 = [v3 userInfo];
      v8 = [v7 objectForKey:v2];

      if (!v8)
      {
        break;
      }

      v3 = v8;
    }

    while (v4 < 0x13);
    if (v4 >= 0x13)
    {
      _logRecursiveError();
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = 0;
LABEL_12:

  return v9;
}

- (id)MSMakePrimaryError
{
  v2 = [a1 userInfo];
  v3 = [v2 mutableCopy];

  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [v3 setObject:v4 forKey:@"MSErrorIsPrimary"];

  v5 = MEMORY[0x277CCA9B8];
  v6 = [a1 domain];
  v7 = [v5 errorWithDomain:v6 code:objc_msgSend(a1 userInfo:{"code"), v3}];

  return v7;
}

- (id)_MSVerboseDescriptionRecursionCount:()MSErrorUtilities
{
  if (a3 < 20)
  {
    v6 = MEMORY[0x277CCAB68];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v3 = [v6 stringWithFormat:@"%@:\n", v8];

    v9 = [a1 domain];
    [v3 appendFormat:@"Domain  : %@\nCode    : %ld\n", v9, objc_msgSend(a1, "code")];

    v10 = [a1 userInfo];
    v11 = [a1 localizedDescription];
    v12 = v11;
    if (v11)
    {
      [v3 appendFormat:@"Desc    : %@\n", v11];
    }

    v13 = [a1 localizedRecoverySuggestion];
    v14 = v13;
    if (v13)
    {
      [v3 appendFormat:@"Sugg    : %@\n", v13];
    }

    if ([v10 count])
    {
      [v3 appendFormat:@"UserInfo: %@\n", v10];
    }

    v15 = [a1 userInfo];
    v16 = [v15 objectForKey:*MEMORY[0x277CCA7E8]];

    if (v16)
    {
      v17 = [v16 _MSVerboseDescriptionRecursionCount:(a3 + 1)];
      [v3 appendFormat:@"...Underlying error:\n%@", v17];
    }
  }

  else
  {
    _logRecursiveError();
    v3 = 0;
  }

  return v3;
}

+ (id)MSErrorWithDomain:()MSErrorUtilities code:description:underlyingError:additionalUserInfo:
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = [v13 MSFindPrimaryError];
  v16 = v15;
  if (!v15)
  {
    v15 = v13;
  }

  v17 = [v15 localizedDescription];
  if (v14)
  {
    v18 = [v14 mutableCopy];
  }

  else
  {
    v18 = [MEMORY[0x277CBEB38] dictionary];
  }

  v19 = v18;
  if (v12)
  {
    [v18 setObject:v12 forKey:*MEMORY[0x277CCA450]];
  }

  if (v13)
  {
    [v19 setObject:v13 forKey:*MEMORY[0x277CCA7E8]];
  }

  if (v17)
  {
    [v19 setObject:v17 forKey:*MEMORY[0x277CCA498]];
  }

  v20 = [MEMORY[0x277CCA9B8] errorWithDomain:v11 code:a4 userInfo:v19];

  return v20;
}

+ (id)MSErrorWithDomain:()MSErrorUtilities code:description:suggestion:
{
  v9 = MEMORY[0x277CCA9B8];
  v10 = MEMORY[0x277CBEAC0];
  v11 = *MEMORY[0x277CCA450];
  v12 = *MEMORY[0x277CCA498];
  v13 = a3;
  v14 = [v10 dictionaryWithObjectsAndKeys:{a5, v11, a6, v12, 0}];
  v15 = [v9 errorWithDomain:v13 code:a4 userInfo:v14];

  return v15;
}

@end