@interface NSError(HFAdditions)
- (BOOL)hf_isAlreadyPairedError;
- (BOOL)hf_isHFErrorWithCode:()HFAdditions;
- (BOOL)hf_isHMErrorWithCode:()HFAdditions;
- (BOOL)hf_isHMErrorWithCodePrivate:()HFAdditions;
- (BOOL)hf_isHMHomeWalletKeyErrorWithCode:()HFAdditions;
- (BOOL)hf_isPublicHMError;
- (BOOL)hf_isThreadNetworkRequiredError;
- (id)hf_errorWithAddedUserInfo:()HFAdditions;
- (uint64_t)hf_isHomeKitNamingError;
@end

@implementation NSError(HFAdditions)

- (uint64_t)hf_isHomeKitNamingError
{
  if (_MergedGlobals_330 != -1)
  {
    dispatch_once(&_MergedGlobals_330, &__block_literal_global_3_36);
  }

  v2 = qword_280E03E10;
  v3 = [a1 domain];
  if ([v3 isEqualToString:*MEMORY[0x277CCFD28]])
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "code")}];
    v5 = [v2 containsObject:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hf_isHFErrorWithCode:()HFAdditions
{
  v5 = [a1 domain];
  if ([v5 isEqualToString:@"HFErrorDomain"])
  {
    v6 = [a1 code] == a3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)hf_isHMErrorWithCode:()HFAdditions
{
  v5 = [a1 domain];
  if ([v5 isEqualToString:*MEMORY[0x277CCFD28]])
  {
    v6 = [a1 code] == a3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)hf_isHMErrorWithCodePrivate:()HFAdditions
{
  v5 = [a1 domain];
  if ([v5 isEqualToString:*MEMORY[0x277CCFD28]])
  {
    v6 = [a1 code] == a3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)hf_isHMHomeWalletKeyErrorWithCode:()HFAdditions
{
  v5 = [a1 domain];
  if ([v5 isEqualToString:*MEMORY[0x277CD06D8]])
  {
    v6 = [a1 code] == a3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)hf_isPublicHMError
{
  v2 = [a1 domain];
  if ([v2 isEqualToString:*MEMORY[0x277CCFD28]])
  {
    v3 = [a1 code] < 2001;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)hf_errorWithAddedUserInfo:()HFAdditions
{
  v4 = a3;
  v5 = [a1 userInfo];
  v6 = [v5 mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
  }

  v9 = v8;

  [v9 addEntriesFromDictionary:v4];
  v10 = MEMORY[0x277CCA9B8];
  v11 = [a1 domain];
  v12 = [v10 errorWithDomain:v11 code:objc_msgSend(a1 userInfo:{"code"), v9}];

  return v12;
}

- (BOOL)hf_isThreadNetworkRequiredError
{
  v2 = [a1 domain];
  if ([v2 isEqualToString:*MEMORY[0x277CCFD28]])
  {
    v3 = [a1 code] == 2009 || objc_msgSend(a1, "code") == 2010;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)hf_isAlreadyPairedError
{
  v2 = [a1 domain];
  if ([v2 isEqualToString:*MEMORY[0x277CCFD28]])
  {
    v3 = [a1 code] == 13 || objc_msgSend(a1, "code") == 11;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end