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
  domain = [self domain];
  if ([domain isEqualToString:*MEMORY[0x277CFB2F0]])
  {
    userInfo = [self userInfo];
    v4 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CFB368]];
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
  domain = [self domain];
  if ([domain isEqualToString:*MEMORY[0x277CFB2F0]])
  {
    v3 = [self code] == 26;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isCoolDownError
{
  domain = [self domain];
  if ([domain isEqualToString:*MEMORY[0x277CFB2F0]])
  {
    userInfo = [self userInfo];
    v4 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CFB368]];
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
  domain = [self domain];
  if ([domain isEqualToString:*MEMORY[0x277CFB2F0]])
  {
    v3 = [self code] == 34;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isRecoveryPETSoftLimitError
{
  domain = [self domain];
  if ([domain isEqualToString:*MEMORY[0x277CFB2F0]])
  {
    v3 = [self code] == 35;
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

    v10 = dictionary;

    [v10 addEntriesFromDictionary:v4];
    v11 = objc_opt_class();
    domain = [self domain];
    selfCopy = [v11 errorWithDomain:domain code:objc_msgSend(self userInfo:{"code"), v10}];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (uint64_t)isRecordNotViableError
{
  if ([self code] != 58)
  {
    return 0;
  }

  domain = [self domain];
  v3 = [domain isEqualToString:*MEMORY[0x277CDBDA8]];

  return v3;
}

- (uint64_t)isMissingCachedPassphraseError
{
  if ([self cdp_isCDPErrorWithCode:-5501])
  {
    return 1;
  }

  domain = [self domain];
  if ([domain isEqualToString:*MEMORY[0x277CFB2F0]])
  {
    v2 = [self code] == 9;
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

  mEMORY[0x277CFD4F8] = [MEMORY[0x277CFD4F8] sharedInstance];
  hasLocalSecret = [mEMORY[0x277CFD4F8] hasLocalSecret];

  if (!hasLocalSecret)
  {
    return 0;
  }

  return [self isMissingCachedPassphraseError];
}

@end