@interface EMHideMyEmail
+ (EMHideMyEmail)sharedInstance;
+ (OS_os_log)log;
- (ACAccount)primaryAccount;
- (BOOL)_isConfiguredForAccount:(uint64_t *)a3 error:;
- (BOOL)isConfigured:(id *)a3;
- (BOOL)isConfiguredForAccountWithAltDSID:(id)a3 error:(id *)a4;
- (EMHideMyEmail)init;
- (NSNumber)isAvailable;
- (NSString)forwardingEmailForPrimaryAccount;
- (NSString)primaryAccountAltDSID;
- (id)_emailAddressFromAddress:(uint64_t)a1;
- (id)addLocalizedDisplayNameForAddress:(id)a3;
- (id)forwardingEmailForAccount:(id)a3;
- (void)_hasCloudPlusSubscription:(void *)a1;
- (void)_lookUpHideMyEmailAddress:(void *)a3 altDSID:(void *)a4 completion:;
- (void)_registerHideMyEmailAddress:(void *)a3 altDSID:(void *)a4 completion:;
- (void)generateHideMyEmailAddressForEmailAddress:(id)a3 altDSID:(id)a4 completion:(id)a5;
- (void)generateHideMyEmailAddressForEmailAddress:(id)a3 completion:(id)a4;
- (void)generateReplyToEmailForRecipient:(id)a3 hmeAddress:(id)a4 account:(id)a5 completion:(id)a6;
- (void)hideMyEmailAddressForRecipientAddress:(id)a3 altDSID:(id)a4 completion:(id)a5;
- (void)hideMyEmailAddressForRecipientAddress:(id)a3 completion:(id)a4;
- (void)hideMyEmailAddresses:(id)a3;
- (void)hideMyEmailAddressesInAccountWithAltDSID:(id)a3 completion:(id)a4;
- (void)isAvailable:(id)a3;
- (void)isHideMyEmailAddressValid:(id)a3 completion:(id)a4;
- (void)isHideMyEmailAddressValid:(id)a3 senderAddress:(id)a4 completion:(id)a5;
- (void)resetIsAvailable;
@end

@implementation EMHideMyEmail

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __20__EMHideMyEmail_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_16 != -1)
  {
    dispatch_once(&log_onceToken_16, block);
  }

  v2 = log_log_16;

  return v2;
}

void __20__EMHideMyEmail_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_16;
  log_log_16 = v1;
}

+ (EMHideMyEmail)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[EMHideMyEmail sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

void __31__EMHideMyEmail_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(EMHideMyEmail);
  v1 = sharedInstance_instance;
  sharedInstance_instance = v0;
}

- (EMHideMyEmail)init
{
  v14.receiver = self;
  v14.super_class = EMHideMyEmail;
  v2 = [(EMHideMyEmail *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E698DDC0]);
    controller = v2->_controller;
    v2->_controller = v3;

    v5 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"com.apple.email.EMHideMyEmail"];
    scheduler = v2->_scheduler;
    v2->_scheduler = v5;

    v7 = objc_alloc(MEMORY[0x1E699B7F0]);
    v8 = [MEMORY[0x1E695DFB0] null];
    v9 = [v7 initWithObject:v8];
    isAvailableLocked = v2->_isAvailableLocked;
    v2->_isAvailableLocked = v9;

    v11 = objc_alloc_init(EMCoreAnalyticsCollector);
    analyticsCollector = v2->_analyticsCollector;
    v2->_analyticsCollector = v11;
  }

  return v2;
}

- (NSNumber)isAvailable
{
  v2 = [(EMHideMyEmail *)self isAvailableLocked];
  v3 = [v2 getObject];

  if ((*(*MEMORY[0x1E699B750] + 16))())
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v4;
}

- (void)isAvailable:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EMHideMyEmail *)self isAvailable];
  if (v5)
  {
    v6 = +[EMHideMyEmail log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 BOOLValue];
      v8 = @"not ";
      if (v7)
      {
        v8 = &stru_1F45FD218;
      }

      *buf = 138543362;
      v23 = v8;
      _os_log_impl(&dword_1C6655000, v6, OS_LOG_TYPE_DEFAULT, "Hide My Email subscription is %{public}@available.", buf, 0xCu);
    }

    if (v4)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __29__EMHideMyEmail_isAvailable___block_invoke_79;
      v15[3] = &unk_1E826D1F0;
      v17 = v4;
      v16 = v5;
      v9 = v15;
      v10 = [MEMORY[0x1E699B978] mainThreadScheduler];
      [v10 performBlock:v9];
    }
  }

  else
  {
    v11 = +[EMHideMyEmail log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C6655000, v11, OS_LOG_TYPE_DEFAULT, "Hide My Email feature not available for account. Checking current subscription status.", buf, 2u);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __29__EMHideMyEmail_isAvailable___block_invoke;
    aBlock[3] = &unk_1E826D178;
    aBlock[4] = self;
    v21 = v4;
    v12 = _Block_copy(aBlock);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __29__EMHideMyEmail_isAvailable___block_invoke_67;
    v18[3] = &unk_1E826D1C8;
    v19 = v12;
    v13 = v12;
    [(EMHideMyEmail *)self _hasCloudPlusSubscription:v18];
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __29__EMHideMyEmail_isAvailable___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) isAvailableLocked];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  [v6 setObject:v7];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __29__EMHideMyEmail_isAvailable___block_invoke_2;
  v10[3] = &unk_1E826D150;
  v13 = a2;
  v12 = *(a1 + 40);
  v8 = v5;
  v11 = v8;
  v9 = [MEMORY[0x1E699B978] mainThreadScheduler];
  [v9 performBlock:v10];
}

uint64_t __29__EMHideMyEmail_isAvailable___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = +[EMHideMyEmail log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = NSStringFromBOOL();
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_1C6655000, v2, OS_LOG_TYPE_DEFAULT, "Hide My Email subscription availablity check returned: %@.", &v9, 0xCu);
  }

  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  result = (*(*(a1 + 40) + 16))();
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void __29__EMHideMyEmail_isAvailable___block_invoke_67(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E6959A48] defaultStore];
  v7 = [v6 aa_primaryAppleAccount];

  if (a2 && ![EMHMERecipientCreationRequest canCreateHMEReplyToAddress:v7])
  {
    v8 = +[EMHideMyEmail log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v7 identifier];
      *buf = 138412290;
      v16 = v9;
      _os_log_impl(&dword_1C6655000, v8, OS_LOG_TYPE_DEFAULT, "AppleAccount<%@> missing PremimumMailSettings Dataclass. Renewing Credentials...", buf, 0xCu);
    }

    v10 = [MEMORY[0x1E6959A48] defaultStore];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __29__EMHideMyEmail_isAvailable___block_invoke_70;
    v12[3] = &unk_1E826D1A0;
    v13 = v7;
    v14 = *(a1 + 32);
    [v10 renewCredentialsForAccount:v13 completion:v12];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __29__EMHideMyEmail_isAvailable___block_invoke_70(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = +[EMHideMyEmail log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) identifier];
      __29__EMHideMyEmail_isAvailable___block_invoke_70_cold_1(v7, v5, &v13);
    }

LABEL_8:

    (*(*(a1 + 40) + 16))();
    goto LABEL_9;
  }

  [*(a1 + 32) reload];
  if ([EMHMERecipientCreationRequest canCreateHMEReplyToAddress:*(a1 + 32)])
  {
    v6 = +[EMHideMyEmail log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) identifier];
      v13 = 138412290;
      v14 = v8;
      _os_log_impl(&dword_1C6655000, v6, OS_LOG_TYPE_DEFAULT, "AppleAccount<%@> renewed credentials and updated Premium Mail Settings.", &v13, 0xCu);
    }

    goto LABEL_8;
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"EMHideMyEmailErrorDomain" code:1 userInfo:0];
  v11 = +[EMHideMyEmail log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = [*(a1 + 32) identifier];
    __29__EMHideMyEmail_isAvailable___block_invoke_70_cold_1(v12, v10, &v13);
  }

  (*(*(a1 + 40) + 16))();
LABEL_9:

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_hasCloudPlusSubscription:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 scheduler];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __43__EMHideMyEmail__hasCloudPlusSubscription___block_invoke;
    v5[3] = &unk_1E826D2B8;
    v6 = v3;
    [v4 performBlock:v5];
  }
}

uint64_t __29__EMHideMyEmail_isAvailable___block_invoke_79(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) BOOLValue];
  v3 = *(v1 + 16);

  return v3(v1, v2, 0);
}

- (void)isHideMyEmailAddressValid:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__EMHideMyEmail_isHideMyEmailAddressValid_completion___block_invoke;
  v10[3] = &unk_1E826D240;
  v11 = v6;
  v12 = self;
  v13 = v7;
  v8 = v7;
  v9 = v6;
  [(EMHideMyEmail *)self isAvailable:v10];
}

void __54__EMHideMyEmail_isHideMyEmailAddressValid_completion___block_invoke(id *a1, int a2, void *a3)
{
  v5 = a3;
  if (a2 && a1[4])
  {
    v6 = [a1[5] controller];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __54__EMHideMyEmail_isHideMyEmailAddressValid_completion___block_invoke_2;
      v11[3] = &unk_1E826D218;
      v8 = a1[5];
      v12 = a1[4];
      v13 = a1[6];
      [v8 hideMyEmailAddresses:v11];
    }

    else
    {
      v9 = a1[6];
      v10 = [MEMORY[0x1E696ABC0] em_internalErrorWithReason:@"SPI for hideMyEmailAddresses is missing"];
      v9[2](v9, 0, v10);
    }
  }

  else
  {
    (*(a1[6] + 2))();
  }
}

void __54__EMHideMyEmail_isHideMyEmailAddressValid_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 containsObject:*(a1 + 32)];
  v5 = +[EMHideMyEmail log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __54__EMHideMyEmail_isHideMyEmailAddressValid_completion___block_invoke_2_cold_1(v4, v5);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)resetIsAvailable
{
  v3 = [(EMHideMyEmail *)self isAvailableLocked];
  v2 = [MEMORY[0x1E695DFB0] null];
  [v3 setObject:v2];
}

- (BOOL)isConfigured:(id *)a3
{
  v5 = [(EMHideMyEmail *)self primaryAccount];
  LOBYTE(a3) = [(EMHideMyEmail *)self _isConfiguredForAccount:v5 error:a3];

  return a3;
}

- (BOOL)_isConfiguredForAccount:(uint64_t *)a3 error:
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    if (v5)
    {
      v7 = [a1 forwardingEmailForAccount:v5];
      a1 = v7 != 0;

      if (!a3 || v7)
      {
        if (!a3)
        {
          goto LABEL_14;
        }

LABEL_11:
        v9 = +[EMHideMyEmail log];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [EMHideMyEmail _isConfiguredForAccount:a3 error:v9];
        }

        goto LABEL_14;
      }

      v8 = @"Forwarding email address is not configured";
    }

    else
    {
      if (!a3)
      {
        a1 = 0;
LABEL_14:
        v10 = +[EMHideMyEmail log];
        [EMHideMyEmail _isConfiguredForAccount:v10 error:a1];
        goto LABEL_15;
      }

      v8 = @"Requires account to check for forwarding email";
    }

    [MEMORY[0x1E696ABC0] em_internalErrorWithReason:v8];
    *a3 = a1 = 0;
    goto LABEL_11;
  }

LABEL_15:

  return a1;
}

- (BOOL)isConfiguredForAccountWithAltDSID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E698DC80] sharedInstance];
  v8 = [v7 authKitAccountWithAltDSID:v6];

  LOBYTE(a4) = [(EMHideMyEmail *)self _isConfiguredForAccount:v8 error:a4];
  return a4;
}

- (id)addLocalizedDisplayNameForAddress:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AAE8] mainBundle];
  v5 = [v4 localizedStringForKey:@"MAIL_HIDE_MY_EMAIL_FRIENDLY_NAME" value:&stru_1F45FD218 table:0];

  if (v3)
  {
    v6 = [objc_alloc(MEMORY[0x1E699B248]) initWithString:v3];
    [v6 setDisplayName:v5];
    v7 = [v6 stringValue];
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (NSString)forwardingEmailForPrimaryAccount
{
  v3 = [(EMHideMyEmail *)self primaryAccount];
  if (v3)
  {
    v4 = [(EMHideMyEmail *)self forwardingEmailForAccount:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)forwardingEmailForAccount:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"EMHideMyEmail.m" lineNumber:213 description:{@"Invalid parameter not satisfying: %@", @"account"}];
  }

  v6 = [MEMORY[0x1E698DC80] sharedInstance];
  v7 = [v6 forwardingEmailForAccount:v5];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v9 = [MEMORY[0x1E698DC80] sharedInstance];
    v10 = [(EMHideMyEmail *)self primaryAccountAltDSID];
    v11 = [v9 authKitAccountWithAltDSID:v10];

    v12 = +[EMHideMyEmail log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v11 username];
      *buf = 67109376;
      v27 = 0;
      v28 = 1024;
      v29 = v13 != 0;
      _os_log_impl(&dword_1C6655000, v12, OS_LOG_TYPE_DEFAULT, "Attempt to fetch forwardingEmail address from AKAccountManager.sharedInstance forwardingEmailForAccount is %{BOOL}d whereas with altDSID address is %{BOOL}d", buf, 0xEu);
    }

    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v14 setObject:&unk_1F461CBA0 forKeyedSubscript:@"forwardingEmailForHideMyEmail"];
    v15 = [MEMORY[0x1E696AD98] numberWithInt:1];
    [v14 setObject:v15 forKeyedSubscript:@"forwardingEmailForAccountIsNil"];

    v16 = MEMORY[0x1E696AD98];
    v17 = [v11 username];
    v18 = [v16 numberWithInt:v17 == 0];
    [v14 setObject:v18 forKeyedSubscript:@"forwardingEmailWithAltDSIDIsNil"];

    v19 = [EMCoreAnalyticsEvent alloc];
    v20 = [v14 copy];
    v21 = [(EMCoreAnalyticsEvent *)v19 initWithEventName:@"com.apple.mail.forwardingEmailForHideMyEmail" collectionData:v20];

    v22 = [(EMHideMyEmail *)self analyticsCollector];
    [v22 logOneTimeEvent:v21];

    v8 = [v11 username];
  }

  v23 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)hideMyEmailAddressForRecipientAddress:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(EMHideMyEmail *)self primaryAccountAltDSID];
  [(EMHideMyEmail *)self hideMyEmailAddressForRecipientAddress:v8 altDSID:v7 completion:v6];
}

- (void)hideMyEmailAddressForRecipientAddress:(id)a3 altDSID:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(EMHideMyEmail *)self _emailAddressFromAddress:a3];
  if (v8)
  {
    v11 = [(EMHideMyEmail *)self controller];
    v12 = v14;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __74__EMHideMyEmail_hideMyEmailAddressForRecipientAddress_altDSID_completion___block_invoke;
    v14[3] = &unk_1E826D290;
    v14[4] = v9;
    [v11 lookupPrivateEmailForAltDSID:v8 withKey:v10 completion:v14];
  }

  else
  {
    v12 = v13;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __74__EMHideMyEmail_hideMyEmailAddressForRecipientAddress_altDSID_completion___block_invoke_127;
    v13[3] = &unk_1E826D2B8;
    v13[4] = v9;
    v11 = [MEMORY[0x1E699B978] mainThreadScheduler];
    [v11 performBlock:v13];
  }
}

- (id)_emailAddressFromAddress:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [objc_alloc(MEMORY[0x1E699B248]) initWithString:v3];
    v5 = [v4 simpleAddress];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __74__EMHideMyEmail_hideMyEmailAddressForRecipientAddress_altDSID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__EMHideMyEmail_hideMyEmailAddressForRecipientAddress_altDSID_completion___block_invoke_2;
  v10[3] = &unk_1E826D268;
  v7 = v5;
  v11 = v7;
  v13 = *(a1 + 32);
  v8 = v6;
  v12 = v8;
  v9 = [MEMORY[0x1E699B978] mainThreadScheduler];
  [v9 performBlock:v10];
}

void __74__EMHideMyEmail_hideMyEmailAddressForRecipientAddress_altDSID_completion___block_invoke_2(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(a1 + 48);
    v8 = [v3 privateEmailAddress];
    (*(v4 + 16))(v4);
    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    if (*(a1 + 40))
    {
      v9 = +[EMHideMyEmail log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [*(a1 + 40) ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        __74__EMHideMyEmail_hideMyEmailAddressForRecipientAddress_altDSID_completion___block_invoke_2_cold_1();
      }

      v6 = *(a1 + 40);
    }

    (*(*(a1 + 48) + 16))();
    v7 = *MEMORY[0x1E69E9840];
  }
}

void __74__EMHideMyEmail_hideMyEmailAddressForRecipientAddress_altDSID_completion___block_invoke_127(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] em_internalErrorWithReason:@"DSID required to check is address is HME"];
  (*(v1 + 16))(v1, 0);
}

- (void)hideMyEmailAddresses:(id)a3
{
  v5 = a3;
  v4 = [(EMHideMyEmail *)self primaryAccountAltDSID];
  [(EMHideMyEmail *)self hideMyEmailAddressesInAccountWithAltDSID:v4 completion:v5];
}

- (void)hideMyEmailAddressesInAccountWithAltDSID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v9 = [(EMHideMyEmail *)self controller];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(EMHideMyEmail *)self controller];
      v12 = v15;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __69__EMHideMyEmail_hideMyEmailAddressesInAccountWithAltDSID_completion___block_invoke;
      v15[3] = &unk_1E826C978;
      v15[4] = v8;
      [v11 listAllPrivateEmailsForAltDSID:v6 completion:v15];
    }

    else
    {
      v12 = v14;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __69__EMHideMyEmail_hideMyEmailAddressesInAccountWithAltDSID_completion___block_invoke_135;
      v14[3] = &unk_1E826D2B8;
      v14[4] = v8;
      v11 = [MEMORY[0x1E699B978] mainThreadScheduler];
      [v11 performBlock:v14];
    }
  }

  else
  {
    v12 = v13;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __69__EMHideMyEmail_hideMyEmailAddressesInAccountWithAltDSID_completion___block_invoke_2_139;
    v13[3] = &unk_1E826D2B8;
    v13[4] = v7;
    v11 = [MEMORY[0x1E699B978] mainThreadScheduler];
    [v11 performBlock:v13];
  }
}

void __69__EMHideMyEmail_hideMyEmailAddressesInAccountWithAltDSID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__EMHideMyEmail_hideMyEmailAddressesInAccountWithAltDSID_completion___block_invoke_2;
  v10[3] = &unk_1E826D268;
  v7 = v5;
  v11 = v7;
  v13 = *(a1 + 32);
  v8 = v6;
  v12 = v8;
  v9 = [MEMORY[0x1E699B978] mainThreadScheduler];
  [v9 performBlock:v10];
}

void __69__EMHideMyEmail_hideMyEmailAddressesInAccountWithAltDSID_completion___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 48);
    v4 = [v2 ef_mapSelector:sel_privateEmailAddress];
    v5 = *(a1 + 40);
    v9 = v4;
    (*(v3 + 16))(v3);
    v6 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v10 = +[EMHideMyEmail log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [*(a1 + 40) ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      __69__EMHideMyEmail_hideMyEmailAddressesInAccountWithAltDSID_completion___block_invoke_2_cold_1();
    }

    v7 = *(a1 + 40);
    (*(*(a1 + 48) + 16))();
    v8 = *MEMORY[0x1E69E9840];
  }
}

void __69__EMHideMyEmail_hideMyEmailAddressesInAccountWithAltDSID_completion___block_invoke_135(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] em_internalErrorWithReason:@"Missing SPI"];
  (*(v1 + 16))(v1, 0);
}

void __69__EMHideMyEmail_hideMyEmailAddressesInAccountWithAltDSID_completion___block_invoke_2_139(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] em_internalErrorWithReason:@"DSID required to fetch all HME addresses"];
  (*(v1 + 16))(v1, 0);
}

- (void)isHideMyEmailAddressValid:(id)a3 senderAddress:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(EMHideMyEmail *)self controller];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __68__EMHideMyEmail_isHideMyEmailAddressValid_senderAddress_completion___block_invoke_2;
    v13[3] = &unk_1E826D2E0;
    v14[0] = v7;
    v14[1] = self;
    v15 = v8;
    [(EMHideMyEmail *)self hideMyEmailAddresses:v13];
    v11 = v14;
  }

  else
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __68__EMHideMyEmail_isHideMyEmailAddressValid_senderAddress_completion___block_invoke;
    v16[3] = &unk_1E826D2B8;
    v17 = v8;
    v12 = [MEMORY[0x1E699B978] mainThreadScheduler];
    [v12 performBlock:v16];
    v11 = &v17;
  }
}

void __68__EMHideMyEmail_isHideMyEmailAddressValid_senderAddress_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (([v5 containsObject:*(a1 + 32)] & 1) == 0)
  {
    v7 = +[EMHideMyEmail log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [v6 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      __68__EMHideMyEmail_isHideMyEmailAddressValid_senderAddress_completion___block_invoke_2_cold_1();
    }
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "containsObject:", *(a1 + 32))}];
  [v8 setObject:v9 forKeyedSubscript:@"isHideMyEmailAddressValid"];

  v10 = [v6 domain];
  [v8 setObject:v10 forKeyedSubscript:@"errorDomain"];

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "code")}];
  [v8 setObject:v11 forKeyedSubscript:@"errorCode"];

  v12 = [EMCoreAnalyticsEvent alloc];
  v13 = [v8 copy];
  v14 = [(EMCoreAnalyticsEvent *)v12 initWithEventName:@"com.apple.mail.hideMyEmailAddressValid" collectionData:v13];

  v15 = [*(a1 + 40) analyticsCollector];
  [v15 logOneTimeEvent:v14];

  (*(*(a1 + 48) + 16))();
  v16 = *MEMORY[0x1E69E9840];
}

- (void)generateHideMyEmailAddressForEmailAddress:(id)a3 completion:(id)a4
{
  v8 = a4;
  v6 = [(EMHideMyEmail *)self _emailAddressFromAddress:a3];
  v7 = [(EMHideMyEmail *)self primaryAccountAltDSID];
  [(EMHideMyEmail *)self generateHideMyEmailAddressForEmailAddress:v6 altDSID:v7 completion:v8];
}

- (void)generateHideMyEmailAddressForEmailAddress:(id)a3 altDSID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(EMHideMyEmail *)self controller];
  v12 = objc_opt_respondsToSelector();

  if ((v12 & 1) == 0)
  {
    v14 = v16;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __78__EMHideMyEmail_generateHideMyEmailAddressForEmailAddress_altDSID_completion___block_invoke_4;
    v16[3] = &unk_1E826D2B8;
    v16[4] = v10;
    v15 = [MEMORY[0x1E699B978] mainThreadScheduler];
    [v15 performBlock:v16];
LABEL_6:
    v13 = (v14 + 4);

    goto LABEL_7;
  }

  if (!v9)
  {
    v14 = v17;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __78__EMHideMyEmail_generateHideMyEmailAddressForEmailAddress_altDSID_completion___block_invoke_3;
    v17[3] = &unk_1E826D2B8;
    v17[4] = v10;
    v15 = [MEMORY[0x1E699B978] mainThreadScheduler];
    [v15 performBlock:v17];
    goto LABEL_6;
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __78__EMHideMyEmail_generateHideMyEmailAddressForEmailAddress_altDSID_completion___block_invoke;
  v18[3] = &unk_1E826D330;
  v21 = v10;
  v18[4] = self;
  v19 = v8;
  v20 = v9;
  [(EMHideMyEmail *)self _lookUpHideMyEmailAddress:v19 altDSID:v20 completion:v18];
  v13 = &v21;

LABEL_7:
}

void __78__EMHideMyEmail_generateHideMyEmailAddressForEmailAddress_altDSID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__EMHideMyEmail_generateHideMyEmailAddressForEmailAddress_altDSID_completion___block_invoke_2;
  v10[3] = &unk_1E826D308;
  v4 = v3;
  v11 = v4;
  v5 = *(a1 + 56);
  v9 = *(a1 + 32);
  v6 = *(&v9 + 1);
  *&v7 = *(a1 + 48);
  *(&v7 + 1) = v5;
  v12 = v9;
  v13 = v7;
  v8 = [MEMORY[0x1E699B978] mainThreadScheduler];
  [v8 performBlock:v10];
}

void __78__EMHideMyEmail_generateHideMyEmailAddressForEmailAddress_altDSID_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    [(EMHideMyEmail *)*(a1 + 40) _registerHideMyEmailAddress:*(a1 + 56) altDSID:*(a1 + 64) completion:?];
  }
}

- (void)_registerHideMyEmailAddress:(void *)a3 altDSID:(void *)a4 completion:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = [a1 controller];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __64__EMHideMyEmail__registerHideMyEmailAddress_altDSID_completion___block_invoke;
    v11[3] = &unk_1E826D290;
    v12 = v9;
    [v10 registerPrivateEmailForAltDSID:v8 withKey:v7 completion:v11];
  }
}

- (void)_lookUpHideMyEmailAddress:(void *)a3 altDSID:(void *)a4 completion:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = [a1 controller];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __62__EMHideMyEmail__lookUpHideMyEmailAddress_altDSID_completion___block_invoke;
    v11[3] = &unk_1E826D290;
    v12 = v9;
    [v10 lookupPrivateEmailForAltDSID:v8 withKey:v7 completion:v11];
  }
}

void __78__EMHideMyEmail_generateHideMyEmailAddressForEmailAddress_altDSID_completion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] em_internalErrorWithReason:@"DSID required to generate new HME address"];
  (*(v1 + 16))(v1, 0);
}

void __78__EMHideMyEmail_generateHideMyEmailAddressForEmailAddress_altDSID_completion___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] em_internalErrorWithReason:@"SPI is missing"];
  (*(v1 + 16))(v1, 0);
}

void __62__EMHideMyEmail__lookUpHideMyEmailAddress_altDSID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__EMHideMyEmail__lookUpHideMyEmailAddress_altDSID_completion___block_invoke_2;
  v10[3] = &unk_1E826D268;
  v7 = v5;
  v11 = v7;
  v13 = *(a1 + 32);
  v8 = v6;
  v12 = v8;
  v9 = [MEMORY[0x1E699B978] mainThreadScheduler];
  [v9 performBlock:v10];
}

void __62__EMHideMyEmail__lookUpHideMyEmailAddress_altDSID_completion___block_invoke_2(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(a1 + 48);
    v8 = [v3 privateEmailAddress];
    (*(v4 + 16))(v4);
    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    if (*(a1 + 40))
    {
      v9 = +[EMHideMyEmail log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [*(a1 + 40) ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        __62__EMHideMyEmail__lookUpHideMyEmailAddress_altDSID_completion___block_invoke_2_cold_1();
      }

      v6 = *(a1 + 40);
    }

    (*(*(a1 + 48) + 16))();
    v7 = *MEMORY[0x1E69E9840];
  }
}

void __64__EMHideMyEmail__registerHideMyEmailAddress_altDSID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__EMHideMyEmail__registerHideMyEmailAddress_altDSID_completion___block_invoke_2;
  v10[3] = &unk_1E826D268;
  v7 = v5;
  v11 = v7;
  v13 = *(a1 + 32);
  v8 = v6;
  v12 = v8;
  v9 = [MEMORY[0x1E699B978] mainThreadScheduler];
  [v9 performBlock:v10];
}

void __64__EMHideMyEmail__registerHideMyEmailAddress_altDSID_completion___block_invoke_2(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = a1[6];
    v6 = [v2 privateEmailAddress];
    (*(v3 + 16))(v3);
  }

  else
  {
    v4 = +[EMHideMyEmail log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __64__EMHideMyEmail__registerHideMyEmailAddress_altDSID_completion___block_invoke_2_cold_1(a1, v4);
    }

    v5 = a1[5];
    (*(a1[6] + 16))();
  }
}

- (void)generateReplyToEmailForRecipient:(id)a3 hmeAddress:(id)a4 account:(id)a5 completion:(id)a6
{
  v31 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [EMHMERecipientCreationRequest alloc];
  v15 = [(EMHideMyEmail *)self _emailAddressFromAddress:v11];
  v16 = [(EMHMERecipientCreationRequest *)v14 initWithAccount:v12 recipient:v10 hmeAddress:v15];

  v17 = +[EMHideMyEmail log];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v20 = [(EMHMERecipientCreationRequest *)v16 debugDescription];
    v21 = [v10 debugDescription];
    v22 = [v11 debugDescription];
    *buf = 138412802;
    v26 = v20;
    v27 = 2112;
    v28 = v21;
    v29 = 2112;
    v30 = v22;
    _os_log_debug_impl(&dword_1C6655000, v17, OS_LOG_TYPE_DEBUG, "ReplyTo address Request %@ for recipient:%@ hmeAddress:%@", buf, 0x20u);
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __80__EMHideMyEmail_generateReplyToEmailForRecipient_hmeAddress_account_completion___block_invoke;
  v23[3] = &unk_1E826D380;
  v18 = v13;
  v24 = v18;
  [(AARequest *)v16 performRequestWithHandler:v23];

  v19 = *MEMORY[0x1E69E9840];
}

void __80__EMHideMyEmail_generateReplyToEmailForRecipient_hmeAddress_account_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80__EMHideMyEmail_generateReplyToEmailForRecipient_hmeAddress_account_completion___block_invoke_2;
  v11[3] = &unk_1E826D358;
  v8 = v6;
  v12 = v8;
  v9 = v7;
  v13 = v9;
  v14 = *(a1 + 32);
  v10 = [MEMORY[0x1E699B978] mainThreadScheduler];
  [v10 performBlock:v11];
}

void __80__EMHideMyEmail_generateReplyToEmailForRecipient_hmeAddress_account_completion___block_invoke_2(uint64_t a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [v2 replyToAddress];
  if (!v3 || *(a1 + 40))
  {
    v4 = +[EMHideMyEmail log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [*(a1 + 32) responseDictionary];
      v6 = [*(a1 + 40) localizedDescription];
      __80__EMHideMyEmail_generateReplyToEmailForRecipient_hmeAddress_account_completion___block_invoke_2_cold_1(v5, v6, v9);
    }

    v7 = *(a1 + 40);
  }

  (*(*(a1 + 48) + 16))();

  v8 = *MEMORY[0x1E69E9840];
}

- (ACAccount)primaryAccount
{
  v2 = [MEMORY[0x1E698DC80] sharedInstance];
  v3 = [v2 primaryAuthKitAccount];

  return v3;
}

- (NSString)primaryAccountAltDSID
{
  v2 = [(EMHideMyEmail *)self primaryAccount];
  v3 = [v2 accountPropertyForKey:@"altDSID"];

  return v3;
}

void __43__EMHideMyEmail__hasCloudPlusSubscription___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6994FE8];
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __43__EMHideMyEmail__hasCloudPlusSubscription___block_invoke_2;
  v2[3] = &unk_1E826D3A8;
  v3 = *(a1 + 32);
  [v1 requestFeatureWithId:@"mail.hide-my-email.create" completion:v2];
}

void __43__EMHideMyEmail__hasCloudPlusSubscription___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 32);
    v8 = [v5 status];
    v9 = 0;
    v10 = v8 == 0;
  }

  else
  {
    v11 = +[EMHideMyEmail log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [v6 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      __43__EMHideMyEmail__hasCloudPlusSubscription___block_invoke_2_cold_1();
    }

    v10 = 0;
    v7 = *(a1 + 32);
    v9 = v6;
  }

  (*(v7 + 16))(v7, v10, v9);

  v12 = *MEMORY[0x1E69E9840];
}

void __29__EMHideMyEmail_isAvailable___block_invoke_70_cold_1(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_3(a1, a2, a3, 5.778e-34);
  OUTLINED_FUNCTION_3(&dword_1C6655000, "AppleAccount %@ missing PremimumMailSettings Dataclass. Renewing Credentials Failed %@", v4, v5);
}

void __54__EMHideMyEmail_isHideMyEmailAddressValid_completion___block_invoke_2_cold_1(char a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1 & 1;
  _os_log_debug_impl(&dword_1C6655000, a2, OS_LOG_TYPE_DEBUG, "Hide My Email address is available: %{BOOL}d in the list of HME addresses", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_isConfiguredForAccount:(uint64_t *)a1 error:(NSObject *)a2 .cold.1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_1C6655000, a2, OS_LOG_TYPE_ERROR, "Hide My Email configuration error for account:%@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_isConfiguredForAccount:(NSObject *)a1 error:(char)a2 .cold.2(NSObject *a1, char a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"NO";
    if (a2)
    {
      v4 = @"YES";
    }

    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1C6655000, a1, OS_LOG_TYPE_DEFAULT, "Hide My Email configured for account:%@.", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __74__EMHideMyEmail_hideMyEmailAddressForRecipientAddress_altDSID_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_1_1(&dword_1C6655000, v3, v4, "Is HME address failed with error: %{public}@", v5);
}

void __69__EMHideMyEmail_hideMyEmailAddressesInAccountWithAltDSID_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_1_1(&dword_1C6655000, v3, v4, "Fetching HME addresses failed with error: %{public}@", v5);
}

void __68__EMHideMyEmail_isHideMyEmailAddressValid_senderAddress_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_1_1(&dword_1C6655000, v3, v4, "The checking for HME address is valid failed:%{public}@, adding telemetry for isHideMyEmailAddressValid session", v5);
}

void __62__EMHideMyEmail__lookUpHideMyEmailAddress_altDSID_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_1_1(&dword_1C6655000, v3, v4, "The _lookUpHideMyEmailAddress for HME address failed with error: %{public}@", v5);
}

void __64__EMHideMyEmail__registerHideMyEmailAddress_altDSID_completion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v4 = 138543362;
  v5 = v2;
  _os_log_error_impl(&dword_1C6655000, a2, OS_LOG_TYPE_ERROR, "Failed to generate new HME address. %{public}@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __80__EMHideMyEmail_generateReplyToEmailForRecipient_hmeAddress_account_completion___block_invoke_2_cold_1(void *a1, void *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_3(a1, a2, a3, 5.778e-34);
  OUTLINED_FUNCTION_3(&dword_1C6655000, "Invalid replyToAddress. Response dictionary:%@ error:%@", v5, v6);
}

void __43__EMHideMyEmail__hasCloudPlusSubscription___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_1_1(&dword_1C6655000, v3, v4, "Failed to check for HME feature. %{public}@", v5);
}

@end