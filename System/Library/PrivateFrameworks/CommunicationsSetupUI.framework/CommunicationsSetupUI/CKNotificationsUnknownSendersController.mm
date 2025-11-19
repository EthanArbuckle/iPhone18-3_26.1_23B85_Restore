@interface CKNotificationsUnknownSendersController
- (CKNotificationsUnknownSendersController)init;
- (id)specifiers;
- (void)applicationDidResume;
- (void)setPersonalEnabled:(id)a3 specifier:(id)a4;
- (void)setPromotionsEnabled:(id)a3 specifier:(id)a4;
- (void)setTimeSensitiveEnabled:(id)a3 specifier:(id)a4;
- (void)setTransactionsEnabled:(id)a3 specifier:(id)a4;
- (void)setVerificationCodesEnabled:(id)a3 specifier:(id)a4;
- (void)updateDataSource;
@end

@implementation CKNotificationsUnknownSendersController

- (CKNotificationsUnknownSendersController)init
{
  v5.receiver = self;
  v5.super_class = CKNotificationsUnknownSendersController;
  v2 = [(CKNotificationsUnknownSendersController *)&v5 init];
  if (v2)
  {
    v3 = MessagesSettingsLocalizedString(@"NOTIFICATIONS_UNKNOWN_SENDERS_LABEL");
    [(CKNotificationsUnknownSendersController *)v2 setTitle:v3];

    [(CKNotificationsUnknownSendersController *)v2 updateDataSource];
  }

  return v2;
}

- (void)applicationDidResume
{
  v3.receiver = self;
  v3.super_class = CKNotificationsUnknownSendersController;
  [(CKNotificationsUnknownSendersController *)&v3 applicationDidResume];
  [(CKNotificationsUnknownSendersController *)self updateDataSource];
}

- (void)updateDataSource
{
  v3 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__CKNotificationsUnknownSendersController_updateDataSource__block_invoke;
  block[3] = &unk_278DE7E08;
  block[4] = self;
  dispatch_async(v3, block);
}

void __59__CKNotificationsUnknownSendersController_updateDataSource__block_invoke(uint64_t a1)
{
  v2 = +[CKSettingsMessagesController syncedSettingsManager];
  v3 = [v2 settingValueForKey:5];
  v4 = [v3 BOOLValue];

  v5 = +[CKSettingsMessagesController syncedSettingsManager];
  v6 = [v5 settingValueForKey:6];
  LOBYTE(v2) = [v6 BOOLValue];

  v7 = +[CKSettingsMessagesController syncedSettingsManager];
  v8 = [v7 settingValueForKey:7];
  LOBYTE(v5) = [v8 BOOLValue];

  v9 = +[CKSettingsMessagesController syncedSettingsManager];
  v10 = [v9 settingValueForKey:8];
  LOBYTE(v7) = [v10 BOOLValue];

  v11 = +[CKSettingsMessagesController syncedSettingsManager];
  v12 = [v11 settingValueForKey:11];
  v13 = [v12 BOOLValue];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __59__CKNotificationsUnknownSendersController_updateDataSource__block_invoke_2;
  v14[3] = &unk_278DE8B60;
  v14[4] = *(a1 + 32);
  v15 = v4;
  v16 = v13;
  v17 = v2;
  v18 = v5;
  v19 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v14);
}

uint64_t __59__CKNotificationsUnknownSendersController_updateDataSource__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setTimeSensitiveEnabled:*(a1 + 40)];
  [*(a1 + 32) setVerificationCodesEnabled:*(a1 + 41)];
  [*(a1 + 32) setPersonalEnabled:*(a1 + 42)];
  [*(a1 + 32) setTransactionsEnabled:*(a1 + 43)];
  [*(a1 + 32) setPromotionsEnabled:*(a1 + 44)];
  v2 = *(a1 + 32);

  return [v2 reloadSpecifiers];
}

- (id)specifiers
{
  v3 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v39 = *MEMORY[0x277D3FC48];
    v40 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v41 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"NOTIFICATIONS_UNKNOWN_SENDERS_GROUP"];
    [v40 addObject:?];
    v4 = MEMORY[0x277D3FAD8];
    v5 = MessagesSettingsLocalizedString(@"TIME_SENSITIVE_LABEL");
    v6 = [v4 preferenceSpecifierNamed:v5 target:self set:sel_setTimeSensitiveEnabled_specifier_ get:sel_timeSensitiveEnabled_ detail:0 cell:6 edit:0];

    v7 = MessagesSettingsLocalizedString(@"TIME_SENSITIVE_DESCRIPTION");
    v8 = *MEMORY[0x277D40160];
    [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x277D40160]];

    v9 = objc_opt_class();
    v10 = *MEMORY[0x277D3FE58];
    [v6 setProperty:v9 forKey:*MEMORY[0x277D3FE58]];
    v11 = MEMORY[0x277D3FAD8];
    v12 = MessagesSettingsLocalizedString(@"VERIFICATION_CODES_LABEL");
    v42 = [v11 preferenceSpecifierNamed:v12 target:self set:sel_setVerificationCodesEnabled_specifier_ get:sel_verificationCodesEnabled_ detail:0 cell:6 edit:0];

    [v42 setProperty:objc_opt_class() forKey:v10];
    v13 = MEMORY[0x277D3FAD8];
    v14 = MessagesSettingsLocalizedString(@"PERSONAL_LABEL");
    v15 = [v13 preferenceSpecifierNamed:v14 target:self set:sel_setPersonalEnabled_specifier_ get:sel_personalEnabled_ detail:0 cell:6 edit:0];

    v16 = MessagesSettingsLocalizedString(@"PERSONAL_DESCRIPTION");
    [v15 setObject:v16 forKeyedSubscript:v8];

    [v15 setProperty:objc_opt_class() forKey:v10];
    v17 = MEMORY[0x277D3FAD8];
    v18 = MessagesSettingsLocalizedString(@"OTHER_NOTIFICATIONS_LABEL");
    v19 = [v17 preferenceSpecifierNamed:v18 target:self set:sel_setPersonalEnabled_specifier_ get:sel_personalEnabled_ detail:0 cell:6 edit:0];

    [v19 setProperty:objc_opt_class() forKey:v10];
    v20 = MEMORY[0x277D3FAD8];
    v21 = MessagesSettingsLocalizedString(@"TRANSACTIONS_LABEL");
    v22 = [v20 preferenceSpecifierNamed:v21 target:self set:sel_setTransactionsEnabled_specifier_ get:sel_transactionsEnabled_ detail:0 cell:6 edit:0];

    v23 = MessagesSettingsLocalizedString(@"TRANSACTIONS_DESCRIPTION");
    [v22 setObject:v23 forKeyedSubscript:v8];

    [v22 setProperty:objc_opt_class() forKey:v10];
    v24 = MEMORY[0x277D3FAD8];
    v25 = MessagesSettingsLocalizedString(@"PROMOTIONS_LABEL");
    v26 = [v24 preferenceSpecifierNamed:v25 target:self set:sel_setPromotionsEnabled_specifier_ get:sel_promotionsEnabled_ detail:0 cell:6 edit:0];

    v27 = MessagesSettingsLocalizedString(@"PROMOTIONS_DESCRIPTION");
    [v26 setObject:v27 forKeyedSubscript:v8];

    v28 = objc_opt_class();
    v29 = v10;
    v30 = v6;
    [v26 setProperty:v28 forKey:v29];
    if (+[CKSettingsMessagesController supportsTimeSensitiveNotifications])
    {
      v31 = v6;
    }

    else
    {
      v31 = v42;
    }

    [v40 addObject:v31];
    v32 = v19;
    if (+[CKSettingsMessagesController supportsUnknownTransactionsPromotions])
    {
      [v40 addObject:v15];
      [v40 addObject:v22];
      v19 = v26;
    }

    [v40 addObject:v19];
    v33 = MEMORY[0x277CCACA8];
    v34 = MessagesSettingsLocalizedString(@"NOTIFICATIONS_FOOTER");
    IMSharedHelperMessagePriorityTimeout();
    v36 = [v33 localizedStringWithFormat:v34, (v35 / 3600.0)];

    [v41 setProperty:v36 forKey:*MEMORY[0x277D3FF88]];
    v37 = *(&self->super.super.super.super.super.isa + v39);
    *(&self->super.super.super.super.super.isa + v39) = v40;

    v3 = *(&self->super.super.super.super.super.isa + v39);
  }

  return v3;
}

- (void)setTimeSensitiveEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  self->_timeSensitiveEnabled = [v5 BOOLValue];
  v6 = +[CKSettingsMessagesController syncedSettingsManager];
  [v6 setSettingValue:v5 forKey:5];
}

- (void)setVerificationCodesEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  self->_verificationCodesEnabled = [v5 BOOLValue];
  v6 = +[CKSettingsMessagesController syncedSettingsManager];
  [v6 setSettingValue:v5 forKey:11];
}

- (void)setPersonalEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  self->_personalEnabled = [v5 BOOLValue];
  v6 = +[CKSettingsMessagesController syncedSettingsManager];
  [v6 setSettingValue:v5 forKey:6];
}

- (void)setTransactionsEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  self->_transactionsEnabled = [v5 BOOLValue];
  v6 = +[CKSettingsMessagesController syncedSettingsManager];
  [v6 setSettingValue:v5 forKey:7];
}

- (void)setPromotionsEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  self->_promotionsEnabled = [v5 BOOLValue];
  v6 = +[CKSettingsMessagesController syncedSettingsManager];
  [v6 setSettingValue:v5 forKey:8];
}

@end