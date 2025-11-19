@interface NSError(SecureBackup)
- (BOOL)isCoolDownError;
- (BOOL)isICSCInvalidError;
- (BOOL)isICSCRecoveryHardLimitError;
- (BOOL)isRecoveryPETHardLimitError;
- (BOOL)isRecoveryPETSoftLimitError;
- (id)errorByExtendingUserInfoWithDictionary:()SecureBackup;
- (uint64_t)indicatesRecoveryCanBeRetried;
- (uint64_t)isMissingCachedPassphraseError;
- (uint64_t)isRecordNotViableError;
@end

@implementation NSError(SecureBackup)

- (BOOL)isICSCRecoveryHardLimitError
{
  v2 = [a1 domain];
  if ([v2 isEqualToString:*MEMORY[0x277CFB2F0]])
  {
    v3 = [a1 userInfo];
    v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CFB368]];
    v5 = [v4 unsignedIntegerValue] == 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isICSCInvalidError
{
  v2 = [a1 domain];
  if ([v2 isEqualToString:*MEMORY[0x277CFB2F0]])
  {
    v3 = [a1 code] == 26;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isCoolDownError
{
  v2 = [a1 domain];
  if ([v2 isEqualToString:*MEMORY[0x277CFB2F0]])
  {
    v3 = [a1 userInfo];
    v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CFB368]];
    v5 = [v4 unsignedIntegerValue] == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isRecoveryPETHardLimitError
{
  v2 = [a1 domain];
  if ([v2 isEqualToString:*MEMORY[0x277CFB2F0]])
  {
    v3 = [a1 code] == 34;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isRecoveryPETSoftLimitError
{
  v2 = [a1 domain];
  if ([v2 isEqualToString:*MEMORY[0x277CFB2F0]])
  {
    v3 = [a1 code] == 35;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)errorByExtendingUserInfoWithDictionary:()SecureBackup
{
  v4 = a3;
  if ([v4 count])
  {
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

    v10 = v8;

    [v10 addEntriesFromDictionary:v4];
    v11 = objc_opt_class();
    v12 = [a1 domain];
    v9 = [v11 errorWithDomain:v12 code:objc_msgSend(a1 userInfo:{"code"), v10}];
  }

  else
  {
    v9 = a1;
  }

  return v9;
}

- (uint64_t)isRecordNotViableError
{
  if ([a1 code] != 58)
  {
    return 0;
  }

  v2 = [a1 domain];
  v3 = [v2 isEqualToString:*MEMORY[0x277CDBDA8]];

  return v3;
}

- (uint64_t)isMissingCachedPassphraseError
{
  if ([a1 cdp_isCDPErrorWithCode:-5501])
  {
    return 1;
  }

  v3 = [a1 domain];
  if ([v3 isEqualToString:*MEMORY[0x277CFB2F0]])
  {
    v2 = [a1 code] == 9;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)indicatesRecoveryCanBeRetried
{
  if (![MEMORY[0x277CFD560] useCDPContextSecretInsteadOfSBDSecretFeatureEnabled])
  {
    return 0;
  }

  v2 = [MEMORY[0x277CFD4F8] sharedInstance];
  v3 = [v2 hasLocalSecret];

  if (!v3)
  {
    return 0;
  }

  return [a1 isMissingCachedPassphraseError];
}

@end