@interface CDPDBackupIDMSErrorProvider
- (id)cooldownErrorWithUnderlyingError:(id)a3;
- (id)globalHardLimitError;
- (id)globalHardLimitErrorWithRecord:(id)a3;
- (id)hardLimitErrorForRecord:(id)a3;
- (id)recordNotFoundErrorWithUnderlyingError:(id)a3;
- (void)handleHardLimitError:(id)a3 completion:(id)a4;
- (void)handleSoftLimitError:(id)a3 completion:(id)a4;
@end

@implementation CDPDBackupIDMSErrorProvider

- (id)cooldownErrorWithUnderlyingError:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEC10] mutableCopy];
  v6 = [MEMORY[0x277CFD508] builderForKey:@"ACCOUNT_RECOVERY_SOFT_LIMIT_REACHED_TITLE"];
  v7 = [v6 localizedString];
  [v5 setObject:v7 forKeyedSubscript:*MEMORY[0x277CCA450]];

  v8 = [MEMORY[0x277CFD508] builderForKey:@"ACCOUNT_RECOVERY_SOFT_LIMIT_REACHED_MESSAGE"];
  v9 = [v8 addSecretType:self->super._prevailingSecret];
  v10 = [v9 localizedString];
  [v5 setObject:v10 forKeyedSubscript:*MEMORY[0x277CCA470]];

  v11 = [MEMORY[0x277CFD508] builderForKey:@"GENERIC_ERROR_DEFAULT_BUTTON"];
  v12 = [v11 localizedString];
  [v5 setObject:v12 forKeyedSubscript:*MEMORY[0x277CCA498]];

  if (v4)
  {
    [v5 setObject:v4 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  v13 = [MEMORY[0x277CFD508] builderForKey:@"GENERIC_ERROR_DEFAULT_BUTTON"];
  v14 = [v13 localizedString];
  v19[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  [v5 setObject:v15 forKeyedSubscript:*MEMORY[0x277CCA480]];

  v16 = _CDPStateError();

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)globalHardLimitError
{
  v19[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEC10] mutableCopy];
  v4 = [MEMORY[0x277CFD508] builderForKey:@"ACCOUNT_RECOVERY_HARD_LIMIT_REACHED_TITLE"];
  v5 = [v4 localizedString];
  [v3 setObject:v5 forKeyedSubscript:*MEMORY[0x277CCA450]];

  v6 = [MEMORY[0x277CFD508] builderForKey:@"ACCOUNT_RECOVERY_HARD_LIMIT_REACHED_MESSAGE_GLOBAL_REBRAND"];
  v7 = [v6 addSecretType:self->super._prevailingSecret];
  v8 = [v7 localizedString];
  [v3 setObject:v8 forKeyedSubscript:*MEMORY[0x277CCA470]];

  v9 = [MEMORY[0x277CFD508] builderForKey:@"START_ACCOUNT_RECOVERY_BUTTON"];
  v10 = [v9 localizedString];
  [v3 setObject:v10 forKeyedSubscript:*MEMORY[0x277CCA498]];

  v11 = [MEMORY[0x277CFD508] builderForKey:@"START_ACCOUNT_RECOVERY_BUTTON"];
  v12 = [v11 localizedString];
  v19[0] = v12;
  v13 = [MEMORY[0x277CFD508] builderForKey:@"GENERIC_CANCEL_BUTTON"];
  v14 = [v13 localizedString];
  v19[1] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  [v3 setObject:v15 forKeyedSubscript:*MEMORY[0x277CCA480]];

  v16 = _CDPStateError();

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)globalHardLimitErrorWithRecord:(id)a3
{
  v23[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEC10] mutableCopy];
  v5 = [MEMORY[0x277CFD508] builderForKey:@"ACCOUNT_RECOVERY_HARD_LIMIT_REACHED_TITLE"];
  v6 = [v5 localizedString];
  [v4 setObject:v6 forKeyedSubscript:*MEMORY[0x277CCA450]];

  v7 = MEMORY[0x277CCACA8];
  v8 = [MEMORY[0x277CFD508] builderForKey:@"ACCOUNT_RECOVERY_HARD_LIMIT_REACHED_MESSAGE_SINGLE_REBRAND"];
  v9 = [v8 addSecretType:{objc_msgSend(v3, "localSecretType")}];
  v10 = [v9 localizedString];
  v11 = [v3 localizedName];

  v12 = [v7 stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@" error:0, v11];
  [v4 setObject:v12 forKeyedSubscript:*MEMORY[0x277CCA470]];

  v13 = [MEMORY[0x277CFD508] builderForKey:@"START_ACCOUNT_RECOVERY_BUTTON"];
  v14 = [v13 localizedString];
  [v4 setObject:v14 forKeyedSubscript:*MEMORY[0x277CCA498]];

  v15 = [MEMORY[0x277CFD508] builderForKey:@"START_ACCOUNT_RECOVERY_BUTTON"];
  v16 = [v15 localizedString];
  v23[0] = v16;
  v17 = [MEMORY[0x277CFD508] builderForKey:@"GENERIC_CANCEL_BUTTON"];
  v18 = [v17 localizedString];
  v23[1] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  [v4 setObject:v19 forKeyedSubscript:*MEMORY[0x277CCA480]];

  v20 = _CDPStateError();

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)hardLimitErrorForRecord:(id)a3
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEC10] mutableCopy];
  v6 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_MULTIPLE_INCORRECT_TITLE"];
  v7 = [v6 addSecretType:{objc_msgSend(v4, "localSecretType")}];
  v8 = [v7 localizedString];
  [v5 setObject:v8 forKeyedSubscript:*MEMORY[0x277CCA450]];

  v9 = MEMORY[0x277CCACA8];
  v10 = [MEMORY[0x277CFD508] builderForKey:@"ACCOUNT_RECOVERY_HARD_LIMIT_REACHED_MESSAGE_MULTI"];
  v11 = [v10 addSecretType:{objc_msgSend(v4, "localSecretType")}];
  v12 = [v11 addSecretType:self->super._prevailingSecret];
  v13 = [v12 localizedString];
  v14 = [v4 localizedName];

  v15 = [v9 stringWithValidatedFormat:v13 validFormatSpecifiers:@"%@" error:0, v14];
  [v5 setObject:v15 forKeyedSubscript:*MEMORY[0x277CCA470]];

  v16 = [MEMORY[0x277CFD508] builderForKey:@"GENERIC_ERROR_DEFAULT_BUTTON"];
  v17 = [v16 localizedString];
  [v5 setObject:v17 forKeyedSubscript:*MEMORY[0x277CCA498]];

  v18 = [MEMORY[0x277CFD508] builderForKey:@"GENERIC_ERROR_DEFAULT_BUTTON"];
  v19 = [v18 localizedString];
  v24[0] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  [v5 setObject:v20 forKeyedSubscript:*MEMORY[0x277CCA480]];

  v21 = _CDPStateError();

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)recordNotFoundErrorWithUnderlyingError:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = *MEMORY[0x277CCA7E8];
  v3 = _CDPStateError();
  v9[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = _CDPStateError();

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)handleHardLimitError:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  uiProvider = self->super._uiProvider;
  context = self->super._context;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__CDPDBackupIDMSErrorProvider_handleHardLimitError_completion___block_invoke;
  v12[3] = &unk_278E24EF0;
  v13 = v6;
  v14 = v7;
  v10 = v6;
  v11 = v7;
  [(CDPStateUIProviderInternal *)uiProvider cdpContext:context showError:v10 withCompletion:v12];
}

void __63__CDPDBackupIDMSErrorProvider_handleHardLimitError_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *MEMORY[0x277CCA7E8];
  if (a2)
  {
    v7 = *MEMORY[0x277CCA7E8];
    v8 = *(a1 + 32);
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  }

  else
  {
    v9 = *MEMORY[0x277CCA7E8];
    v10[0] = *(a1 + 32);
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  v5 = _CDPStateError();
  (*(v2 + 16))(v2, v5);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleSoftLimitError:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  uiProvider = self->super._uiProvider;
  context = self->super._context;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__CDPDBackupIDMSErrorProvider_handleSoftLimitError_completion___block_invoke;
  v12[3] = &unk_278E24EF0;
  v13 = v6;
  v14 = v7;
  v10 = v6;
  v11 = v7;
  [(CDPStateUIProviderInternal *)uiProvider cdpContext:context showError:v10 withCompletion:v12];
}

void __63__CDPDBackupIDMSErrorProvider_handleSoftLimitError_completion___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6 = *MEMORY[0x277CCA7E8];
  v7[0] = v1;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = _CDPStateError();
  (*(v2 + 16))(v2, v4);

  v5 = *MEMORY[0x277D85DE8];
}

@end