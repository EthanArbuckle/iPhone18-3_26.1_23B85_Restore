@interface CDPDTermsInfoBackupController
- (id)_buildSecureBackupTermsInfo:(id)a3;
- (void)fetchTermsAcceptanceForAccount:(id)a3 completion:(id)a4;
- (void)saveTermsAcceptance:(id)a3 completion:(id)a4;
@end

@implementation CDPDTermsInfoBackupController

- (void)saveTermsAcceptance:(id)a3 completion:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, "Saving terms acceptance: %@", &v11, 0xCu);
  }

  v9 = [(CDPDTermsInfoBackupController *)self _buildSecureBackupTermsInfo:v6];
  [MEMORY[0x277CFB280] saveTermsAcceptance:v9 reply:v7];

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_buildSecureBackupTermsInfo:(id)a3
{
  v3 = MEMORY[0x277CFB288];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277CEC968]];
  [v5 setVersion:v6];

  v7 = [v4 objectForKeyedSubscript:*MEMORY[0x277CEC980]];
  [v5 setIcloudVersion:v7];

  v8 = [v4 objectForKeyedSubscript:*MEMORY[0x277CEC900]];
  [v5 setCountryCode:v8];

  v9 = [v4 objectForKeyedSubscript:*MEMORY[0x277CEC940]];
  [v5 setMetadata:v9];

  v10 = [v4 objectForKeyedSubscript:*MEMORY[0x277CEC898]];

  [v5 setAltDSID:v10];

  return v5;
}

- (void)fetchTermsAcceptanceForAccount:(id)a3 completion:(id)a4
{
  v5 = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__CDPDTermsInfoBackupController_fetchTermsAcceptanceForAccount_completion___block_invoke;
  aBlock[3] = &unk_278E24408;
  v15 = v5;
  v6 = v5;
  v7 = a3;
  v8 = _Block_copy(aBlock);
  v9 = MEMORY[0x277CFB280];
  v10 = [v7 aa_altDSID];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__CDPDTermsInfoBackupController_fetchTermsAcceptanceForAccount_completion___block_invoke_2;
  v12[3] = &unk_278E24408;
  v13 = v8;
  v11 = v8;
  [v9 getAcceptedTermsForAltDSID:v10 reply:v12];
}

void __75__CDPDTermsInfoBackupController_fetchTermsAcceptanceForAccount_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  if (v15)
  {
    v5 = MEMORY[0x277CBEB38];
    v6 = a3;
    v7 = objc_alloc_init(v5);
    v8 = [v15 version];
    [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x277CEC968]];

    v9 = [v15 icloudVersion];
    [v7 setObject:v9 forKeyedSubscript:*MEMORY[0x277CEC980]];

    v10 = [v15 countryCode];
    [v7 setObject:v10 forKeyedSubscript:*MEMORY[0x277CEC900]];

    v11 = [v15 metadata];
    [v7 setObject:v11 forKeyedSubscript:*MEMORY[0x277CEC940]];

    v12 = [v15 altDSID];
    [v7 setObject:v12 forKeyedSubscript:*MEMORY[0x277CEC898]];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v13 = *(a1 + 32);
    v14 = *(v13 + 16);
    v7 = a3;
    v14(v13, 0, v7);
  }
}

void __75__CDPDTermsInfoBackupController_fetchTermsAcceptanceForAccount_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _CDPLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __75__CDPDTermsInfoBackupController_fetchTermsAcceptanceForAccount_completion___block_invoke_2_cold_1(v4, v5);
    }

    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

void __75__CDPDTermsInfoBackupController_fetchTermsAcceptanceForAccount_completion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_24510B000, a2, OS_LOG_TYPE_ERROR, "Error fetching terms acceptance %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end