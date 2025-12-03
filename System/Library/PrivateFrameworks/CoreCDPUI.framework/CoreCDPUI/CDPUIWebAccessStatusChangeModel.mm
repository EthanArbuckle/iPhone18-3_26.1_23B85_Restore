@interface CDPUIWebAccessStatusChangeModel
- (CDPUIWebAccessStatusChangeModel)initWithTargetStatus:(unint64_t)status statusProvider:(id)provider statusUpdater:(id)updater walrusStatusProvider:(id)statusProvider;
- (NSString)cancelButtonText;
- (NSString)messageText;
- (NSString)primaryButtonText;
- (NSString)titleText;
- (void)_checkCurrentStatus:(id)status;
@end

@implementation CDPUIWebAccessStatusChangeModel

- (CDPUIWebAccessStatusChangeModel)initWithTargetStatus:(unint64_t)status statusProvider:(id)provider statusUpdater:(id)updater walrusStatusProvider:(id)statusProvider
{
  providerCopy = provider;
  updaterCopy = updater;
  statusProviderCopy = statusProvider;
  v17.receiver = self;
  v17.super_class = CDPUIWebAccessStatusChangeModel;
  v14 = [(CDPUIWebAccessStatusChangeModel *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_targetStatus = status;
    objc_storeStrong(&v14->_webAccessStatusProvider, provider);
    objc_storeStrong(&v15->_webAccessStatusUpdater, updater);
    objc_storeStrong(&v15->_walrusStatusProvider, statusProvider);
  }

  return v15;
}

- (void)_checkCurrentStatus:(id)status
{
  statusCopy = status;
  if (self->_targetStatus)
  {
    v5 = dispatch_group_create();
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x2020000000;
    v22[3] = 0;
    dispatch_group_enter(v5);
    webAccessStatusProvider = self->_webAccessStatusProvider;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __55__CDPUIWebAccessStatusChangeModel__checkCurrentStatus___block_invoke;
    v19[3] = &unk_278E2BD20;
    v21 = v22;
    v7 = v5;
    v20 = v7;
    [(CDPWebAccessStatusProvider *)webAccessStatusProvider webAccessStatusWithCompletion:v19];
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x2020000000;
    v18[3] = 0;
    dispatch_group_enter(v7);
    walrusStatusProvider = self->_walrusStatusProvider;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __55__CDPUIWebAccessStatusChangeModel__checkCurrentStatus___block_invoke_2;
    v15[3] = &unk_278E2BD20;
    v17 = v18;
    v9 = v7;
    v16 = v9;
    [(CDPWalrusStatusProvider *)walrusStatusProvider walrusStatusWithCompletion:v15];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __55__CDPUIWebAccessStatusChangeModel__checkCurrentStatus___block_invoke_3;
    v11[3] = &unk_278E2BD48;
    v11[4] = self;
    v13 = v22;
    v12 = statusCopy;
    v14 = v18;
    dispatch_group_notify(v9, MEMORY[0x277D85CD0], v11);

    _Block_object_dispose(v18, 8);
    _Block_object_dispose(v22, 8);
  }

  else
  {
    v10 = _CDPLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(CDPUIWebAccessStatusChangeModel *)self _checkCurrentStatus:v10];
    }

    (*(statusCopy + 2))(statusCopy, 0);
  }
}

void *__55__CDPUIWebAccessStatusChangeModel__checkCurrentStatus___block_invoke_3(void *result)
{
  v1 = *(result[4] + 32);
  if (v1 == *(*(result[6] + 8) + 24))
  {
    return (*(result[5] + 16))();
  }

  v2 = !v1 || v1 == 2;
  if (v2 || v1 == 1)
  {
    return (*(result[5] + 16))();
  }

  return result;
}

- (NSString)titleText
{
  if (self->_targetStatus == 1)
  {
    v2 = [MEMORY[0x277CFD508] builderForKey:@"ENABLE_WEB_ACCESS_PROMPT_TITLE" inTable:@"Localizable-Walrus"];
    localizedString = [v2 localizedString];
  }

  else
  {
    localizedString = 0;
  }

  return localizedString;
}

- (NSString)messageText
{
  if (self->_targetStatus == 1)
  {
    v2 = [MEMORY[0x277CFD508] builderForKey:@"ENABLE_WEB_ACCESS_PROMPT_MESSAGE" inTable:@"Localizable-Walrus"];
    localizedString = [v2 localizedString];
  }

  else
  {
    localizedString = 0;
  }

  return localizedString;
}

- (NSString)primaryButtonText
{
  if (self->_targetStatus == 1)
  {
    v2 = [MEMORY[0x277CFD508] builderForKey:@"ENABLE_WEB_ACCESS_PROMPT_PRIMARY_BUTTON" inTable:@"Localizable-Walrus"];
    localizedString = [v2 localizedString];
  }

  else
  {
    localizedString = 0;
  }

  return localizedString;
}

- (NSString)cancelButtonText
{
  v2 = [MEMORY[0x277CFD508] builderForKey:@"GENERIC_CANCEL_BUTTON"];
  localizedString = [v2 localizedString];

  return localizedString;
}

- (void)_checkCurrentStatus:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2451DB000, a2, OS_LOG_TYPE_ERROR, "Skipping user prompt for %@ because the target status is CDPWebAccessStatusUnknown.", &v2, 0xCu);
}

@end