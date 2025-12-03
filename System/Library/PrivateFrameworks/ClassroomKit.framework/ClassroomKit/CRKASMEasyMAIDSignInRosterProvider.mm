@interface CRKASMEasyMAIDSignInRosterProvider
- (BOOL)isEasyStudentSignInDisabledByServer;
- (CRKASMEasyMAIDSignInRosterProvider)initWithRosterProviderGenerator:(id)generator;
- (CRKASMRosterProviding)instructorRosterProviderWithoutKeychain;
- (void)fetchEligibilityForEasyMAIDSignInWithCompletion:(id)completion;
@end

@implementation CRKASMEasyMAIDSignInRosterProvider

- (CRKASMEasyMAIDSignInRosterProvider)initWithRosterProviderGenerator:(id)generator
{
  generatorCopy = generator;
  v11.receiver = self;
  v11.super_class = CRKASMEasyMAIDSignInRosterProvider;
  v5 = [(CRKASMEasyMAIDSignInRosterProvider *)&v11 init];
  if (v5)
  {
    v6 = MEMORY[0x245D3AAD0](generatorCopy);
    providerGenerator = v5->_providerGenerator;
    v5->_providerGenerator = v6;

    v8 = +[CRKASMRosterProviderConfiguration instructorRosterWithoutKeychainConfiguration];
    configuration = v5->_configuration;
    v5->_configuration = v8;
  }

  return v5;
}

- (CRKASMRosterProviding)instructorRosterProviderWithoutKeychain
{
  instructorRosterProviderWithoutKeychain = self->_instructorRosterProviderWithoutKeychain;
  if (!instructorRosterProviderWithoutKeychain)
  {
    providerGenerator = [(CRKASMEasyMAIDSignInRosterProvider *)self providerGenerator];
    configuration = [(CRKASMEasyMAIDSignInRosterProvider *)self configuration];
    v6 = (providerGenerator)[2](providerGenerator, configuration);
    v7 = self->_instructorRosterProviderWithoutKeychain;
    self->_instructorRosterProviderWithoutKeychain = v6;

    instructorRosterProviderWithoutKeychain = self->_instructorRosterProviderWithoutKeychain;
  }

  return instructorRosterProviderWithoutKeychain;
}

- (void)fetchEligibilityForEasyMAIDSignInWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_opt_new();
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __86__CRKASMEasyMAIDSignInRosterProvider_fetchEligibilityForEasyMAIDSignInWithCompletion___block_invoke;
  v21[3] = &unk_278DC26A0;
  v6 = completionCopy;
  v23 = v6;
  v7 = v5;
  v22 = v7;
  v8 = MEMORY[0x245D3AAD0](v21);
  isEasyStudentSignInDisabledByServer = [(CRKASMEasyMAIDSignInRosterProvider *)self isEasyStudentSignInDisabledByServer];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:isEasyStudentSignInDisabledByServer];
  [v7 setObject:v10 forKeyedSubscript:@"isEasyStudentSignInDisabledByServer"];

  if (isEasyStudentSignInDisabledByServer || (-[CRKASMEasyMAIDSignInRosterProvider configuration](self, "configuration"), v11 = objc_claimAutoreleasedReturnValue(), [v11 rosterRequirements], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "accountState"), v12, v11, objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", v13), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "setObject:forKeyedSubscript:", v14, @"accountState"), v14, v13 != 2))
  {
    v8[2](v8, 0, 0);
  }

  else
  {
    configuration = [(CRKASMEasyMAIDSignInRosterProvider *)self configuration];
    rosterRequirements = [configuration rosterRequirements];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __86__CRKASMEasyMAIDSignInRosterProvider_fetchEligibilityForEasyMAIDSignInWithCompletion___block_invoke_2;
    v17[3] = &unk_278DC2718;
    v20 = v8;
    v18 = v7;
    selfCopy = self;
    [rosterRequirements currentUserWithCompletion:v17];
  }
}

void __86__CRKASMEasyMAIDSignInRosterProvider_fetchEligibilityForEasyMAIDSignInWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a3;
  v7 = [v5 copy];
  (*(v4 + 16))(v4, a2, v7, v6);
}

void __86__CRKASMEasyMAIDSignInRosterProvider_fetchEligibilityForEasyMAIDSignInWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__CRKASMEasyMAIDSignInRosterProvider_fetchEligibilityForEasyMAIDSignInWithCompletion___block_invoke_3;
  block[3] = &unk_278DC26C8;
  v12 = v6;
  v16 = *(a1 + 48);
  v13 = v5;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v14 = v7;
  v15 = v8;
  v9 = v5;
  v10 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __86__CRKASMEasyMAIDSignInRosterProvider_fetchEligibilityForEasyMAIDSignInWithCompletion___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(*(a1 + 64) + 16);
  }

  else
  {
    v3 = [*(a1 + 40) hasEDUAccount];
    v4 = [*(a1 + 40) isStudent] ^ 1;
    v5 = [*(a1 + 40) person];
    v6 = [v5 appleID];
    [*(a1 + 48) setObject:v6 forKeyedSubscript:@"appleID"];

    v7 = [MEMORY[0x277CCABB0] numberWithBool:v3];
    [*(a1 + 48) setObject:v7 forKeyedSubscript:@"hasEDUAccount"];

    v8 = [MEMORY[0x277CCABB0] numberWithBool:v4];
    [*(a1 + 48) setObject:v8 forKeyedSubscript:@"isNonStudent"];

    if (v3 && (v4 & 1) != 0)
    {
      v9 = [*(a1 + 56) configuration];
      v10 = [v9 rosterRequirements];
      v11 = [*(a1 + 40) person];
      v12 = [v11 objectID];
      v13 = [v10 makeQueryForLocationsAllowingEasyStudentSignInForPersonID:v12];

      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __86__CRKASMEasyMAIDSignInRosterProvider_fetchEligibilityForEasyMAIDSignInWithCompletion___block_invoke_4;
      v16[3] = &unk_278DC26F0;
      v19 = *(a1 + 64);
      v17 = *(a1 + 48);
      v18 = *(a1 + 40);
      [v13 setCompletion:v16];
      v14 = [*(a1 + 56) configuration];
      v15 = [v14 rosterRequirements];
      [v15 executeQuery:v13];

      return;
    }

    v2 = *(*(a1 + 64) + 16);
  }

  v2();
}

void __86__CRKASMEasyMAIDSignInRosterProvider_fetchEligibilityForEasyMAIDSignInWithCompletion___block_invoke_4(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__CRKASMEasyMAIDSignInRosterProvider_fetchEligibilityForEasyMAIDSignInWithCompletion___block_invoke_5;
  block[3] = &unk_278DC26C8;
  v10 = v6;
  v14 = a1[6];
  v11 = v5;
  v12 = a1[4];
  v13 = a1[5];
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __86__CRKASMEasyMAIDSignInRosterProvider_fetchEligibilityForEasyMAIDSignInWithCompletion___block_invoke_5(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *(*(a1 + 64) + 16);

    return v2();
  }

  else
  {
    v4 = [*(a1 + 40) count];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
    [*(a1 + 48) setObject:v5 forKeyedSubscript:@"countOfLocationsAllowingEasyMAIDSignIn"];

    if (_CRKLogGeneral_onceToken_19 != -1)
    {
      __86__CRKASMEasyMAIDSignInRosterProvider_fetchEligibilityForEasyMAIDSignInWithCompletion___block_invoke_5_cold_1();
    }

    v6 = _CRKLogGeneral_logObj_19;
    if (os_log_type_enabled(_CRKLogGeneral_logObj_19, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 56);
      v8 = v6;
      v9 = [v7 person];
      v10 = [v9 appleID];
      v11 = 134218242;
      v12 = v4;
      v13 = 2114;
      v14 = v10;
      _os_log_impl(&dword_243550000, v8, OS_LOG_TYPE_DEFAULT, "Found %lu locations allowing EasyMAID for %{public}@", &v11, 0x16u);
    }

    return (*(*(a1 + 64) + 16))(*(a1 + 64), v4 != 0, 0);
  }
}

- (BOOL)isEasyStudentSignInDisabledByServer
{
  mEMORY[0x277CF02F0] = [MEMORY[0x277CF02F0] sharedBag];
  if (objc_opt_respondsToSelector())
  {
    easyStudentSignInDisabled = [mEMORY[0x277CF02F0] easyStudentSignInDisabled];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v4 = 0;
      goto LABEL_7;
    }

    easyStudentSignInDisabled = [mEMORY[0x277CF02F0] isEasyStudentSignInDisabled];
  }

  v4 = easyStudentSignInDisabled;
LABEL_7:

  return v4;
}

@end