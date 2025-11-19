@interface NSError(MMCSKit)
+ (id)MMCSErrorWithDomain:()MMCSKit code:description:;
- (id)MMCSRetryAfterDate;
- (uint64_t)MMCSErrorType;
- (uint64_t)MMCSIsAuthorizationError;
- (uint64_t)MMCSIsCancelError;
- (uint64_t)MMCSIsFatalError;
- (uint64_t)MMCSIsNetworkConditionsError;
- (void)_MMCSApplyBlock:()MMCSKit;
@end

@implementation NSError(MMCSKit)

- (id)MMCSRetryAfterDate
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__5674;
  v8 = __Block_byref_object_dispose__5675;
  v9 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __38__NSError_MMCSKit__MMCSRetryAfterDate__block_invoke;
  v3[3] = &unk_278E919A8;
  v3[4] = &v4;
  [a1 _MMCSApplyBlock:v3];
  v1 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v1;
}

- (uint64_t)MMCSIsFatalError
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __36__NSError_MMCSKit__MMCSIsFatalError__block_invoke;
  v3[3] = &unk_278E919A8;
  v3[4] = &v4;
  [a1 _MMCSApplyBlock:v3];
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

- (uint64_t)MMCSIsAuthorizationError
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__NSError_MMCSKit__MMCSIsAuthorizationError__block_invoke;
  v3[3] = &unk_278E919A8;
  v3[4] = &v4;
  [a1 _MMCSApplyBlock:v3];
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

- (uint64_t)MMCSIsNetworkConditionsError
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __48__NSError_MMCSKit__MMCSIsNetworkConditionsError__block_invoke;
  v3[3] = &unk_278E919A8;
  v3[4] = &v4;
  [a1 _MMCSApplyBlock:v3];
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

- (uint64_t)MMCSIsCancelError
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __37__NSError_MMCSKit__MMCSIsCancelError__block_invoke;
  v3[3] = &unk_278E919A8;
  v3[4] = &v4;
  [a1 _MMCSApplyBlock:v3];
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

- (void)_MMCSApplyBlock:()MMCSKit
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
      NSLog(&cfstr_NotFollowingAn.isa);
    }
  }

  else
  {
    v19 = 0;
  }

LABEL_22:

  v22 = *MEMORY[0x277D85DE8];
}

- (uint64_t)MMCSErrorType
{
  if ([a1 MMCSIsNetworkConditionsError])
  {
    return 0;
  }

  if ([a1 MMCSIsAuthorizationError])
  {
    return 1;
  }

  if ([a1 MMCSIsFatalError])
  {
    return 2;
  }

  return 3;
}

+ (id)MMCSErrorWithDomain:()MMCSKit code:description:
{
  v11 = MMCSErrorWithDomain_code_description__onceToken;
  v12 = a5;
  v13 = a3;
  if (v11 != -1)
  {
    dispatch_once(&MMCSErrorWithDomain_code_description__onceToken, &__block_literal_global_5684);
  }

  v14 = [MMCSErrorWithDomain_code_description__MMCSKitBundle localizedStringForKey:v12 value:v12 table:@"MMCSKit"];

  v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v14 arguments:&a9];
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v15, *MEMORY[0x277CCA450], 0}];
  v17 = [MEMORY[0x277CCA9B8] errorWithDomain:v13 code:a4 userInfo:v16];

  return v17;
}

@end