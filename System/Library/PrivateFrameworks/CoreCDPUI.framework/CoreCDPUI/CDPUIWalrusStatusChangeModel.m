@interface CDPUIWalrusStatusChangeModel
- (BOOL)_hasLocalSecret;
- (CDPUIWalrusStatusChangeModel)initWithTargetStatus:(unint64_t)a3 statusProvider:(id)a4 statusUpdater:(id)a5;
- (CDPUIWalrusStatusChangeModel)initWithTargetStatus:(unint64_t)a3 statusProvider:(id)a4 statusUpdater:(id)a5 context:(id)a6;
- (NSString)cancelButtonText;
- (NSString)messageText;
- (NSString)primaryButtonText;
- (NSString)titleText;
- (void)_checkCurrentStatus:(id)a3;
- (void)_reportUserChoice:(unint64_t)a3 error:(id)a4;
- (void)_updateUnderlyingValue:(id)a3;
@end

@implementation CDPUIWalrusStatusChangeModel

- (CDPUIWalrusStatusChangeModel)initWithTargetStatus:(unint64_t)a3 statusProvider:(id)a4 statusUpdater:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = CDPUIWalrusStatusChangeModel;
  v11 = [(CDPUIWalrusStatusChangeModel *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_targetStatus = a3;
    objc_storeStrong(&v11->_walrusStatusProvider, a4);
    objc_storeStrong(&v12->_walrusStatusUpdater, a5);
  }

  return v12;
}

- (CDPUIWalrusStatusChangeModel)initWithTargetStatus:(unint64_t)a3 statusProvider:(id)a4 statusUpdater:(id)a5 context:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = CDPUIWalrusStatusChangeModel;
  v14 = [(CDPUIWalrusStatusChangeModel *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_targetStatus = a3;
    objc_storeStrong(&v14->_walrusStatusProvider, a4);
    objc_storeStrong(&v15->_walrusStatusUpdater, a5);
    objc_storeStrong(&v15->_cdpContext, a6);
  }

  return v15;
}

- (void)_checkCurrentStatus:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (self->_targetStatus)
  {
    walrusStatusProvider = self->_walrusStatusProvider;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __52__CDPUIWalrusStatusChangeModel__checkCurrentStatus___block_invoke;
    v10[3] = &unk_278E2BE08;
    v10[4] = self;
    v11 = v4;
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
      v11 = 0;
      goto LABEL_10;
    }

    v3 = [(CDPUIWalrusStatusChangeModel *)self _hasLocalSecret];
    v4 = MEMORY[0x277CFD508];
    if (!v3)
    {
      v6 = [MEMORY[0x277CFD508] builderForKey:@"ADVANCED_DATA_PROTECTION_DISABLE_NO_PASSCODE_ALERT_TITLE" inTable:@"Localizable-Walrus"];
      v11 = [v6 localizedString];
      goto LABEL_9;
    }

    v5 = @"ADVANCED_DATA_PROTECTION_DISABLE";
  }

  v6 = [v4 builderForKey:v5 inTable:@"Localizable-Walrus"];
  v7 = [v6 addSecretType:1];
  v8 = [MEMORY[0x277CFD4F8] sharedInstance];
  v9 = [v8 deviceClass];
  v10 = [v7 addDeviceClass:v9];
  v11 = [v10 localizedString];

LABEL_9:
LABEL_10:

  return v11;
}

- (NSString)messageText
{
  if (self->_targetStatus == 2 && ![(CDPUIWalrusStatusChangeModel *)self _hasLocalSecret])
  {
    v3 = [MEMORY[0x277CFD508] builderForKey:@"ADVANCED_DATA_PROTECTION_DISABLE_NO_PASSCODE_ALERT_MESSAGE" inTable:@"Localizable-Walrus"];
    v2 = [v3 localizedString];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (NSString)primaryButtonText
{
  if (self->_targetStatus == 2 && ![(CDPUIWalrusStatusChangeModel *)self _hasLocalSecret])
  {
    v3 = [MEMORY[0x277CFD508] builderForKey:@"ADVANCED_DATA_PROTECTION_DISABLE_NO_PASSCODE_ALERT_PRIMARY_BUTTON" inTable:@"Localizable-Walrus"];
    v2 = [v3 localizedString];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (NSString)cancelButtonText
{
  v2 = [MEMORY[0x277CFD508] builderForKey:@"GENERIC_CANCEL_BUTTON"];
  v3 = [v2 localizedString];

  return v3;
}

- (void)_updateUnderlyingValue:(id)a3
{
  walrusStatusUpdater = self->_walrusStatusUpdater;
  targetStatus = self->_targetStatus;
  v6 = a3;
  v7 = [(CDPUIWalrusStatusChangeModel *)self authenticatedContext];
  [(CDPWalrusStatusUpdater *)walrusStatusUpdater updateWalrusStatus:targetStatus authenticatedContext:v7 completion:v6];
}

- (BOOL)_hasLocalSecret
{
  v2 = [MEMORY[0x277CFD4F8] sharedInstance];
  v3 = [v2 hasLocalSecret];

  return v3;
}

- (void)_reportUserChoice:(unint64_t)a3 error:(id)a4
{
  v5 = MEMORY[0x277CE44D8];
  cdpContext = self->_cdpContext;
  v7 = *MEMORY[0x277CFD8C8];
  v8 = *MEMORY[0x277CFD930];
  v9 = a4;
  v10 = [v5 analyticsEventWithContext:cdpContext eventName:v7 category:v8];
  v13 = v10;
  if (a3 - 1 >= 2)
  {
    v11 = MEMORY[0x277CBEC28];
  }

  else
  {
    v11 = MEMORY[0x277CBEC38];
  }

  [v10 setObject:v11 forKeyedSubscript:*MEMORY[0x277CE4590]];
  [v13 populateUnderlyingErrorsStartingWithRootError:v9];

  v12 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  [v12 sendEvent:v13];
}

@end