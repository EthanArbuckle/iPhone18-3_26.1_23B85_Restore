@interface CDPUIWalrusStatusChangeModel
- (BOOL)_hasLocalSecret;
- (CDPUIWalrusStatusChangeModel)initWithTargetStatus:(unint64_t)status statusProvider:(id)provider statusUpdater:(id)updater;
- (CDPUIWalrusStatusChangeModel)initWithTargetStatus:(unint64_t)status statusProvider:(id)provider statusUpdater:(id)updater context:(id)context;
- (NSString)cancelButtonText;
- (NSString)messageText;
- (NSString)primaryButtonText;
- (NSString)titleText;
- (void)_checkCurrentStatus:(id)status;
- (void)_reportUserChoice:(unint64_t)choice error:(id)error;
- (void)_updateUnderlyingValue:(id)value;
@end

@implementation CDPUIWalrusStatusChangeModel

- (CDPUIWalrusStatusChangeModel)initWithTargetStatus:(unint64_t)status statusProvider:(id)provider statusUpdater:(id)updater
{
  providerCopy = provider;
  updaterCopy = updater;
  v14.receiver = self;
  v14.super_class = CDPUIWalrusStatusChangeModel;
  v11 = [(CDPUIWalrusStatusChangeModel *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_targetStatus = status;
    objc_storeStrong(&v11->_walrusStatusProvider, provider);
    objc_storeStrong(&v12->_walrusStatusUpdater, updater);
  }

  return v12;
}

- (CDPUIWalrusStatusChangeModel)initWithTargetStatus:(unint64_t)status statusProvider:(id)provider statusUpdater:(id)updater context:(id)context
{
  providerCopy = provider;
  updaterCopy = updater;
  contextCopy = context;
  v17.receiver = self;
  v17.super_class = CDPUIWalrusStatusChangeModel;
  v14 = [(CDPUIWalrusStatusChangeModel *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_targetStatus = status;
    objc_storeStrong(&v14->_walrusStatusProvider, provider);
    objc_storeStrong(&v15->_walrusStatusUpdater, updater);
    objc_storeStrong(&v15->_cdpContext, context);
  }

  return v15;
}

- (void)_checkCurrentStatus:(id)status
{
  v14 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  v5 = statusCopy;
  if (self->_targetStatus)
  {
    walrusStatusProvider = self->_walrusStatusProvider;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __52__CDPUIWalrusStatusChangeModel__checkCurrentStatus___block_invoke;
    v10[3] = &unk_278E2BE08;
    v10[4] = self;
    v11 = statusCopy;
    [(CDPWalrusStatusProvider *)walrusStatusProvider combinedWalrusStatusWithCompletion:v10];
  }

  else
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138412290;
      v13 = v9;
      _os_log_impl(&dword_2451DB000, v7, OS_LOG_TYPE_DEFAULT, "%@: Skipping user prompt because the target status is CDPWalrusStatusUnknown.", buf, 0xCu);
    }

    v5[2](v5, 0);
  }
}

void __52__CDPUIWalrusStatusChangeModel__checkCurrentStatus___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__CDPUIWalrusStatusChangeModel__checkCurrentStatus___block_invoke_2;
  block[3] = &unk_278E2B050;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void *__52__CDPUIWalrusStatusChangeModel__checkCurrentStatus___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 40) + 40) == [*(a1 + 32) octagonWalrusStatus])
  {
    v2 = [*(a1 + 32) mismatchDetected];
  }

  else
  {
    v2 = 1;
  }

  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = *(*(a1 + 40) + 40);
    v7 = [*(a1 + 32) mismatchDetected];
    v12 = 138413058;
    v13 = v5;
    v14 = 2048;
    v15 = v6;
    v16 = 1024;
    v17 = v2;
    v18 = 1024;
    v19 = v7;
    _os_log_impl(&dword_2451DB000, v3, OS_LOG_TYPE_DEFAULT, "%@: target state %ld, needs change: %{BOOL}d, mismatchDetected: %{BOOL}d", &v12, 0x22u);
  }

  if (!v2)
  {
    v10 = *(*(a1 + 48) + 16);
    return v10();
  }

  if (([MEMORY[0x277CFD560] isBuddyFinished] & 1) == 0)
  {
    v11 = _CDPLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "[CDPUIWalrusStatusChangeModel _checkCurrentStatus:]_block_invoke";
      _os_log_impl(&dword_2451DB000, v11, OS_LOG_TYPE_DEFAULT, "%s Handling for Buddy Flow.", &v12, 0xCu);
    }

    v10 = *(*(a1 + 48) + 16);
    return v10();
  }

  result = *(a1 + 40);
  v9 = result[5];
  switch(v9)
  {
    case 0:
      v10 = *(*(a1 + 48) + 16);
      return v10();
    case 1:
      v10 = *(*(a1 + 48) + 16);
      return v10();
    case 2:
      [result _hasLocalSecret];
      return (*(*(a1 + 48) + 16))();
  }

  return result;
}

- (NSString)titleText
{
  targetStatus = self->_targetStatus;
  if (targetStatus == 1)
  {
    v4 = MEMORY[0x277CFD508];
    v5 = @"ADVANCED_DATA_PROTECTION_ENABLE";
  }

  else
  {
    if (targetStatus != 2)
    {
      localizedString = 0;
      goto LABEL_10;
    }

    _hasLocalSecret = [(CDPUIWalrusStatusChangeModel *)self _hasLocalSecret];
    v4 = MEMORY[0x277CFD508];
    if (!_hasLocalSecret)
    {
      v6 = [MEMORY[0x277CFD508] builderForKey:@"ADVANCED_DATA_PROTECTION_DISABLE_NO_PASSCODE_ALERT_TITLE" inTable:@"Localizable-Walrus"];
      localizedString = [v6 localizedString];
      goto LABEL_9;
    }

    v5 = @"ADVANCED_DATA_PROTECTION_DISABLE";
  }

  v6 = [v4 builderForKey:v5 inTable:@"Localizable-Walrus"];
  v7 = [v6 addSecretType:1];
  mEMORY[0x277CFD4F8] = [MEMORY[0x277CFD4F8] sharedInstance];
  deviceClass = [mEMORY[0x277CFD4F8] deviceClass];
  v10 = [v7 addDeviceClass:deviceClass];
  localizedString = [v10 localizedString];

LABEL_9:
LABEL_10:

  return localizedString;
}

- (NSString)messageText
{
  if (self->_targetStatus == 2 && ![(CDPUIWalrusStatusChangeModel *)self _hasLocalSecret])
  {
    v3 = [MEMORY[0x277CFD508] builderForKey:@"ADVANCED_DATA_PROTECTION_DISABLE_NO_PASSCODE_ALERT_MESSAGE" inTable:@"Localizable-Walrus"];
    localizedString = [v3 localizedString];
  }

  else
  {
    localizedString = 0;
  }

  return localizedString;
}

- (NSString)primaryButtonText
{
  if (self->_targetStatus == 2 && ![(CDPUIWalrusStatusChangeModel *)self _hasLocalSecret])
  {
    v3 = [MEMORY[0x277CFD508] builderForKey:@"ADVANCED_DATA_PROTECTION_DISABLE_NO_PASSCODE_ALERT_PRIMARY_BUTTON" inTable:@"Localizable-Walrus"];
    localizedString = [v3 localizedString];
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

- (void)_updateUnderlyingValue:(id)value
{
  walrusStatusUpdater = self->_walrusStatusUpdater;
  targetStatus = self->_targetStatus;
  valueCopy = value;
  authenticatedContext = [(CDPUIWalrusStatusChangeModel *)self authenticatedContext];
  [(CDPWalrusStatusUpdater *)walrusStatusUpdater updateWalrusStatus:targetStatus authenticatedContext:authenticatedContext completion:valueCopy];
}

- (BOOL)_hasLocalSecret
{
  mEMORY[0x277CFD4F8] = [MEMORY[0x277CFD4F8] sharedInstance];
  hasLocalSecret = [mEMORY[0x277CFD4F8] hasLocalSecret];

  return hasLocalSecret;
}

- (void)_reportUserChoice:(unint64_t)choice error:(id)error
{
  v5 = MEMORY[0x277CE44D8];
  cdpContext = self->_cdpContext;
  v7 = *MEMORY[0x277CFD8C8];
  v8 = *MEMORY[0x277CFD930];
  errorCopy = error;
  v10 = [v5 analyticsEventWithContext:cdpContext eventName:v7 category:v8];
  v13 = v10;
  if (choice - 1 >= 2)
  {
    v11 = MEMORY[0x277CBEC28];
  }

  else
  {
    v11 = MEMORY[0x277CBEC38];
  }

  [v10 setObject:v11 forKeyedSubscript:*MEMORY[0x277CE4590]];
  [v13 populateUnderlyingErrorsStartingWithRootError:errorCopy];

  rtcAnalyticsReporter = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  [rtcAnalyticsReporter sendEvent:v13];
}

@end