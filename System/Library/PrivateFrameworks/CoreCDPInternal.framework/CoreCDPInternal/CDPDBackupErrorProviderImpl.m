@interface CDPDBackupErrorProviderImpl
- (CDPDBackupErrorProviderImpl)initWithContext:(id)a3 uiProvider:(id)a4;
- (id)cooldownErrorWithUnderlyingError:(id)a3;
- (id)verficationFailedErrorwithUnderlyingError:(id)a3;
@end

@implementation CDPDBackupErrorProviderImpl

- (CDPDBackupErrorProviderImpl)initWithContext:(id)a3 uiProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CDPDBackupErrorProviderImpl;
  v9 = [(CDPDBackupErrorProviderImpl *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, a3);
    objc_storeStrong(&v10->_uiProvider, a4);
  }

  return v10;
}

- (id)cooldownErrorWithUnderlyingError:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEC10] mutableCopy];
  v5 = v4;
  if (v3)
  {
    [v4 setObject:v3 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  v6 = _CDPStateError();

  return v6;
}

- (id)verficationFailedErrorwithUnderlyingError:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEC10] mutableCopy];
  v5 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_RECOVERY_ERROR_TITLE"];
  v6 = [v5 localizedString];
  [v4 setObject:v6 forKeyedSubscript:*MEMORY[0x277CCA450]];

  v7 = [MEMORY[0x277CFD508] builderForKey:@"GENERIC_ERROR_ICLOUD_CONNECTION_MESSAGE"];
  v8 = [v7 localizedString];
  [v4 setObject:v8 forKeyedSubscript:*MEMORY[0x277CCA470]];

  v9 = [MEMORY[0x277CFD508] builderForKey:@"GENERIC_ERROR_DEFAULT_BUTTON"];
  v10 = [v9 localizedString];
  [v4 setObject:v10 forKeyedSubscript:*MEMORY[0x277CCA498]];

  if (v3)
  {
    [v4 setObject:v3 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  v11 = [MEMORY[0x277CFD508] builderForKey:@"GENERIC_ERROR_DEFAULT_BUTTON"];
  v12 = [v11 localizedString];
  v17[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  [v4 setObject:v13 forKeyedSubscript:*MEMORY[0x277CCA480]];

  v14 = _CDPStateError();

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end