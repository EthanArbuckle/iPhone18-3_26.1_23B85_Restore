@interface CDPDBackupErrorProviderImpl
- (CDPDBackupErrorProviderImpl)initWithContext:(id)context uiProvider:(id)provider;
- (id)cooldownErrorWithUnderlyingError:(id)error;
- (id)verficationFailedErrorwithUnderlyingError:(id)error;
@end

@implementation CDPDBackupErrorProviderImpl

- (CDPDBackupErrorProviderImpl)initWithContext:(id)context uiProvider:(id)provider
{
  contextCopy = context;
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = CDPDBackupErrorProviderImpl;
  v9 = [(CDPDBackupErrorProviderImpl *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, context);
    objc_storeStrong(&v10->_uiProvider, provider);
  }

  return v10;
}

- (id)cooldownErrorWithUnderlyingError:(id)error
{
  errorCopy = error;
  v4 = [MEMORY[0x277CBEC10] mutableCopy];
  v5 = v4;
  if (errorCopy)
  {
    [v4 setObject:errorCopy forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  v6 = _CDPStateError();

  return v6;
}

- (id)verficationFailedErrorwithUnderlyingError:(id)error
{
  v17[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v4 = [MEMORY[0x277CBEC10] mutableCopy];
  v5 = [MEMORY[0x277CFD508] builderForKey:@"REMOTE_SECRET_ENTRY_RECOVERY_ERROR_TITLE"];
  localizedString = [v5 localizedString];
  [v4 setObject:localizedString forKeyedSubscript:*MEMORY[0x277CCA450]];

  v7 = [MEMORY[0x277CFD508] builderForKey:@"GENERIC_ERROR_ICLOUD_CONNECTION_MESSAGE"];
  localizedString2 = [v7 localizedString];
  [v4 setObject:localizedString2 forKeyedSubscript:*MEMORY[0x277CCA470]];

  v9 = [MEMORY[0x277CFD508] builderForKey:@"GENERIC_ERROR_DEFAULT_BUTTON"];
  localizedString3 = [v9 localizedString];
  [v4 setObject:localizedString3 forKeyedSubscript:*MEMORY[0x277CCA498]];

  if (errorCopy)
  {
    [v4 setObject:errorCopy forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  v11 = [MEMORY[0x277CFD508] builderForKey:@"GENERIC_ERROR_DEFAULT_BUTTON"];
  localizedString4 = [v11 localizedString];
  v17[0] = localizedString4;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  [v4 setObject:v13 forKeyedSubscript:*MEMORY[0x277CCA480]];

  v14 = _CDPStateError();

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end