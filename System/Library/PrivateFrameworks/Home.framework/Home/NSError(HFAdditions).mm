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
  domain = [self domain];
  if ([domain isEqualToString:*MEMORY[0x277CCFD28]])
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(self, "code")}];
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
  domain = [self domain];
  if ([domain isEqualToString:@"HFErrorDomain"])
  {
    v6 = [self code] == a3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)hf_isHMErrorWithCode:()HFAdditions
{
  domain = [self domain];
  if ([domain isEqualToString:*MEMORY[0x277CCFD28]])
  {
    v6 = [self code] == a3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)hf_isHMErrorWithCodePrivate:()HFAdditions
{
  domain = [self domain];
  if ([domain isEqualToString:*MEMORY[0x277CCFD28]])
  {
    v6 = [self code] == a3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)hf_isHMHomeWalletKeyErrorWithCode:()HFAdditions
{
  domain = [self domain];
  if ([domain isEqualToString:*MEMORY[0x277CD06D8]])
  {
    v6 = [self code] == a3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)hf_isPublicHMError
{
  domain = [self domain];
  if ([domain isEqualToString:*MEMORY[0x277CCFD28]])
  {
    v3 = [self code] < 2001;
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
  userInfo = [self userInfo];
  v6 = [userInfo mutableCopy];
  v7 = v6;
  if (v6)
  {
    dictionary = v6;
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v9 = dictionary;

  [v9 addEntriesFromDictionary:v4];
  v10 = MEMORY[0x277CCA9B8];
  domain = [self domain];
  v12 = [v10 errorWithDomain:domain code:objc_msgSend(self userInfo:{"code"), v9}];

  return v12;
}

- (BOOL)hf_isThreadNetworkRequiredError
{
  domain = [self domain];
  if ([domain isEqualToString:*MEMORY[0x277CCFD28]])
  {
    v3 = [self code] == 2009 || objc_msgSend(self, "code") == 2010;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)hf_isAlreadyPairedError
{
  domain = [self domain];
  if ([domain isEqualToString:*MEMORY[0x277CCFD28]])
  {
    v3 = [self code] == 13 || objc_msgSend(self, "code") == 11;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end