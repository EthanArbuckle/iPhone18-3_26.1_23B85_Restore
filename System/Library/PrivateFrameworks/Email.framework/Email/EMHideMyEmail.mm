@interface EMHideMyEmail
+ (EMHideMyEmail)sharedInstance;
+ (OS_os_log)log;
- (ACAccount)primaryAccount;
- (BOOL)_isConfiguredForAccount:(uint64_t *)account error:;
- (BOOL)isConfigured:(id *)configured;
- (BOOL)isConfiguredForAccountWithAltDSID:(id)d error:(id *)error;
- (EMHideMyEmail)init;
- (NSNumber)isAvailable;
- (NSString)forwardingEmailForPrimaryAccount;
- (NSString)primaryAccountAltDSID;
- (id)_emailAddressFromAddress:(uint64_t)address;
- (id)addLocalizedDisplayNameForAddress:(id)address;
- (id)forwardingEmailForAccount:(id)account;
- (void)_hasCloudPlusSubscription:(void *)subscription;
- (void)_lookUpHideMyEmailAddress:(void *)address altDSID:(void *)d completion:;
- (void)_registerHideMyEmailAddress:(void *)address altDSID:(void *)d completion:;
- (void)generateHideMyEmailAddressForEmailAddress:(id)address altDSID:(id)d completion:(id)completion;
- (void)generateHideMyEmailAddressForEmailAddress:(id)address completion:(id)completion;
- (void)generateReplyToEmailForRecipient:(id)recipient hmeAddress:(id)address account:(id)account completion:(id)completion;
- (void)hideMyEmailAddressForRecipientAddress:(id)address altDSID:(id)d completion:(id)completion;
- (void)hideMyEmailAddressForRecipientAddress:(id)address completion:(id)completion;
- (void)hideMyEmailAddresses:(id)addresses;
- (void)hideMyEmailAddressesInAccountWithAltDSID:(id)d completion:(id)completion;
- (void)isAvailable:(id)available;
- (void)isHideMyEmailAddressValid:(id)valid completion:(id)completion;
- (void)isHideMyEmailAddressValid:(id)valid senderAddress:(id)address completion:(id)completion;
- (void)resetIsAvailable;
@end

@implementation EMHideMyEmail

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __20__EMHideMyEmail_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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
    null = [MEMORY[0x1E695DFB0] null];
    v9 = [v7 initWithObject:null];
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
  isAvailableLocked = [(EMHideMyEmail *)self isAvailableLocked];
  getObject = [isAvailableLocked getObject];

  if ((*(*MEMORY[0x1E699B750] + 16))())
  {
    v4 = 0;
  }

  else
  {
    v4 = getObject;
  }

  v5 = v4;

  return v4;
}

- (void)isAvailable:(id)available
{
  v24 = *MEMORY[0x1E69E9840];
  availableCopy = available;
  isAvailable = [(EMHideMyEmail *)self isAvailable];
  if (isAvailable)
  {
    v6 = +[EMHideMyEmail log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      bOOLValue = [isAvailable BOOLValue];
      v8 = @"not ";
      if (bOOLValue)
      {
        v8 = &stru_1F45FD218;
      }

      *buf = 138543362;
      v23 = v8;
      _os_log_impl(&dword_1C6655000, v6, OS_LOG_TYPE_DEFAULT, "Hide My Email subscription is %{public}@available.", buf, 0xCu);
    }

    if (availableCopy)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __29__EMHideMyEmail_isAvailable___block_invoke_79;
      v15[3] = &unk_1E826D1F0;
      v17 = availableCopy;
      v16 = isAvailable;
      v9 = v15;
      mainThreadScheduler = [MEMORY[0x1E699B978] mainThreadScheduler];
      [mainThreadScheduler performBlock:v9];
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
    v21 = availableCopy;
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

- (void)_hasCloudPlusSubscription:(void *)subscription
{
  v3 = a2;
  if (subscription)
  {
    scheduler = [subscription scheduler];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __43__EMHideMyEmail__hasCloudPlusSubscription___block_invoke;
    v5[3] = &unk_1E826D2B8;
    v6 = v3;
    [scheduler performBlock:v5];
  }
}

uint64_t __29__EMHideMyEmail_isAvailable___block_invoke_79(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) BOOLValue];
  v3 = *(v1 + 16);

  return v3(v1, v2, 0);
}

- (void)isHideMyEmailAddressValid:(id)valid completion:(id)completion
{
  validCopy = valid;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__EMHideMyEmail_isHideMyEmailAddressValid_completion___block_invoke;
  v10[3] = &unk_1E826D240;
  v11 = validCopy;
  selfCopy = self;
  v13 = completionCopy;
  v8 = completionCopy;
  v9 = validCopy;
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
  isAvailableLocked = [(EMHideMyEmail *)self isAvailableLocked];
  null = [MEMORY[0x1E695DFB0] null];
  [isAvailableLocked setObject:null];
}

- (BOOL)isConfigured:(id *)configured
{
  primaryAccount = [(EMHideMyEmail *)self primaryAccount];
  LOBYTE(configured) = [(EMHideMyEmail *)self _isConfiguredForAccount:primaryAccount error:configured];

  return configured;
}

- (BOOL)_isConfiguredForAccount:(uint64_t *)account error:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    if (v5)
    {
      v7 = [self forwardingEmailForAccount:v5];
      self = v7 != 0;

      if (!account || v7)
      {
        if (!account)
        {
          goto LABEL_14;
        }

LABEL_11:
        v9 = +[EMHideMyEmail log];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [EMHideMyEmail _isConfiguredForAccount:account error:v9];
        }

        goto LABEL_14;
      }

      v8 = @"Forwarding email address is not configured";
    }

    else
    {
      if (!account)
      {
        self = 0;
LABEL_14:
        v10 = +[EMHideMyEmail log];
        [EMHideMyEmail _isConfiguredForAccount:v10 error:self];
        goto LABEL_15;
      }

      v8 = @"Requires account to check for forwarding email";
    }

    [MEMORY[0x1E696ABC0] em_internalErrorWithReason:v8];
    *account = self = 0;
    goto LABEL_11;
  }

LABEL_15:

  return self;
}

- (BOOL)isConfiguredForAccountWithAltDSID:(id)d error:(id *)error
{
  dCopy = d;
  mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
  v8 = [mEMORY[0x1E698DC80] authKitAccountWithAltDSID:dCopy];

  LOBYTE(error) = [(EMHideMyEmail *)self _isConfiguredForAccount:v8 error:error];
  return error;
}

- (id)addLocalizedDisplayNameForAddress:(id)address
{
  addressCopy = address;
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  v5 = [mainBundle localizedStringForKey:@"MAIL_HIDE_MY_EMAIL_FRIENDLY_NAME" value:&stru_1F45FD218 table:0];

  if (addressCopy)
  {
    v6 = [objc_alloc(MEMORY[0x1E699B248]) initWithString:addressCopy];
    [v6 setDisplayName:v5];
    stringValue = [v6 stringValue];
  }

  else
  {
    stringValue = v5;
  }

  return stringValue;
}

- (NSString)forwardingEmailForPrimaryAccount
{
  primaryAccount = [(EMHideMyEmail *)self primaryAccount];
  if (primaryAccount)
  {
    v4 = [(EMHideMyEmail *)self forwardingEmailForAccount:primaryAccount];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)forwardingEmailForAccount:(id)account
{
  v30 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  if (!accountCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMHideMyEmail.m" lineNumber:213 description:{@"Invalid parameter not satisfying: %@", @"account"}];
  }

  mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
  v7 = [mEMORY[0x1E698DC80] forwardingEmailForAccount:accountCopy];

  if (v7)
  {
    username3 = v7;
  }

  else
  {
    mEMORY[0x1E698DC80]2 = [MEMORY[0x1E698DC80] sharedInstance];
    primaryAccountAltDSID = [(EMHideMyEmail *)self primaryAccountAltDSID];
    v11 = [mEMORY[0x1E698DC80]2 authKitAccountWithAltDSID:primaryAccountAltDSID];

    v12 = +[EMHideMyEmail log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      username = [v11 username];
      *buf = 67109376;
      v27 = 0;
      v28 = 1024;
      v29 = username != 0;
      _os_log_impl(&dword_1C6655000, v12, OS_LOG_TYPE_DEFAULT, "Attempt to fetch forwardingEmail address from AKAccountManager.sharedInstance forwardingEmailForAccount is %{BOOL}d whereas with altDSID address is %{BOOL}d", buf, 0xEu);
    }

    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v14 setObject:&unk_1F461CBA0 forKeyedSubscript:@"forwardingEmailForHideMyEmail"];
    v15 = [MEMORY[0x1E696AD98] numberWithInt:1];
    [v14 setObject:v15 forKeyedSubscript:@"forwardingEmailForAccountIsNil"];

    v16 = MEMORY[0x1E696AD98];
    username2 = [v11 username];
    v18 = [v16 numberWithInt:username2 == 0];
    [v14 setObject:v18 forKeyedSubscript:@"forwardingEmailWithAltDSIDIsNil"];

    v19 = [EMCoreAnalyticsEvent alloc];
    v20 = [v14 copy];
    v21 = [(EMCoreAnalyticsEvent *)v19 initWithEventName:@"com.apple.mail.forwardingEmailForHideMyEmail" collectionData:v20];

    analyticsCollector = [(EMHideMyEmail *)self analyticsCollector];
    [analyticsCollector logOneTimeEvent:v21];

    username3 = [v11 username];
  }

  v23 = *MEMORY[0x1E69E9840];

  return username3;
}

- (void)hideMyEmailAddressForRecipientAddress:(id)address completion:(id)completion
{
  addressCopy = address;
  completionCopy = completion;
  primaryAccountAltDSID = [(EMHideMyEmail *)self primaryAccountAltDSID];
  [(EMHideMyEmail *)self hideMyEmailAddressForRecipientAddress:addressCopy altDSID:primaryAccountAltDSID completion:completionCopy];
}

- (void)hideMyEmailAddressForRecipientAddress:(id)address altDSID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v10 = [(EMHideMyEmail *)self _emailAddressFromAddress:address];
  if (dCopy)
  {
    controller = [(EMHideMyEmail *)self controller];
    v12 = v14;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __74__EMHideMyEmail_hideMyEmailAddressForRecipientAddress_altDSID_completion___block_invoke;
    v14[3] = &unk_1E826D290;
    v14[4] = completionCopy;
    [controller lookupPrivateEmailForAltDSID:dCopy withKey:v10 completion:v14];
  }

  else
  {
    v12 = v13;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __74__EMHideMyEmail_hideMyEmailAddressForRecipientAddress_altDSID_completion___block_invoke_127;
    v13[3] = &unk_1E826D2B8;
    v13[4] = completionCopy;
    controller = [MEMORY[0x1E699B978] mainThreadScheduler];
    [controller performBlock:v13];
  }
}

- (id)_emailAddressFromAddress:(uint64_t)address
{
  v3 = a2;
  if (address)
  {
    v4 = [objc_alloc(MEMORY[0x1E699B248]) initWithString:v3];
    simpleAddress = [v4 simpleAddress];
  }

  else
  {
    simpleAddress = 0;
  }

  return simpleAddress;
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

- (void)hideMyEmailAddresses:(id)addresses
{
  addressesCopy = addresses;
  primaryAccountAltDSID = [(EMHideMyEmail *)self primaryAccountAltDSID];
  [(EMHideMyEmail *)self hideMyEmailAddressesInAccountWithAltDSID:primaryAccountAltDSID completion:addressesCopy];
}

- (void)hideMyEmailAddressesInAccountWithAltDSID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = completionCopy;
  if (dCopy)
  {
    controller = [(EMHideMyEmail *)self controller];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      controller2 = [(EMHideMyEmail *)self controller];
      v12 = v15;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __69__EMHideMyEmail_hideMyEmailAddressesInAccountWithAltDSID_completion___block_invoke;
      v15[3] = &unk_1E826C978;
      v15[4] = v8;
      [controller2 listAllPrivateEmailsForAltDSID:dCopy completion:v15];
    }

    else
    {
      v12 = v14;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __69__EMHideMyEmail_hideMyEmailAddressesInAccountWithAltDSID_completion___block_invoke_135;
      v14[3] = &unk_1E826D2B8;
      v14[4] = v8;
      controller2 = [MEMORY[0x1E699B978] mainThreadScheduler];
      [controller2 performBlock:v14];
    }
  }

  else
  {
    v12 = v13;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __69__EMHideMyEmail_hideMyEmailAddressesInAccountWithAltDSID_completion___block_invoke_2_139;
    v13[3] = &unk_1E826D2B8;
    v13[4] = completionCopy;
    controller2 = [MEMORY[0x1E699B978] mainThreadScheduler];
    [controller2 performBlock:v13];
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

- (void)isHideMyEmailAddressValid:(id)valid senderAddress:(id)address completion:(id)completion
{
  validCopy = valid;
  completionCopy = completion;
  controller = [(EMHideMyEmail *)self controller];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __68__EMHideMyEmail_isHideMyEmailAddressValid_senderAddress_completion___block_invoke_2;
    v13[3] = &unk_1E826D2E0;
    v14[0] = validCopy;
    v14[1] = self;
    v15 = completionCopy;
    [(EMHideMyEmail *)self hideMyEmailAddresses:v13];
    v11 = v14;
  }

  else
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __68__EMHideMyEmail_isHideMyEmailAddressValid_senderAddress_completion___block_invoke;
    v16[3] = &unk_1E826D2B8;
    v17 = completionCopy;
    mainThreadScheduler = [MEMORY[0x1E699B978] mainThreadScheduler];
    [mainThreadScheduler performBlock:v16];
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

- (void)generateHideMyEmailAddressForEmailAddress:(id)address completion:(id)completion
{
  completionCopy = completion;
  v6 = [(EMHideMyEmail *)self _emailAddressFromAddress:address];
  primaryAccountAltDSID = [(EMHideMyEmail *)self primaryAccountAltDSID];
  [(EMHideMyEmail *)self generateHideMyEmailAddressForEmailAddress:v6 altDSID:primaryAccountAltDSID completion:completionCopy];
}

- (void)generateHideMyEmailAddressForEmailAddress:(id)address altDSID:(id)d completion:(id)completion
{
  addressCopy = address;
  dCopy = d;
  completionCopy = completion;
  controller = [(EMHideMyEmail *)self controller];
  v12 = objc_opt_respondsToSelector();

  if ((v12 & 1) == 0)
  {
    v14 = v16;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __78__EMHideMyEmail_generateHideMyEmailAddressForEmailAddress_altDSID_completion___block_invoke_4;
    v16[3] = &unk_1E826D2B8;
    v16[4] = completionCopy;
    mainThreadScheduler = [MEMORY[0x1E699B978] mainThreadScheduler];
    [mainThreadScheduler performBlock:v16];
LABEL_6:
    v13 = (v14 + 4);

    goto LABEL_7;
  }

  if (!dCopy)
  {
    v14 = v17;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __78__EMHideMyEmail_generateHideMyEmailAddressForEmailAddress_altDSID_completion___block_invoke_3;
    v17[3] = &unk_1E826D2B8;
    v17[4] = completionCopy;
    mainThreadScheduler = [MEMORY[0x1E699B978] mainThreadScheduler];
    [mainThreadScheduler performBlock:v17];
    goto LABEL_6;
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __78__EMHideMyEmail_generateHideMyEmailAddressForEmailAddress_altDSID_completion___block_invoke;
  v18[3] = &unk_1E826D330;
  v21 = completionCopy;
  v18[4] = self;
  v19 = addressCopy;
  v20 = dCopy;
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

- (void)_registerHideMyEmailAddress:(void *)address altDSID:(void *)d completion:
{
  v7 = a2;
  addressCopy = address;
  dCopy = d;
  if (self)
  {
    controller = [self controller];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __64__EMHideMyEmail__registerHideMyEmailAddress_altDSID_completion___block_invoke;
    v11[3] = &unk_1E826D290;
    v12 = dCopy;
    [controller registerPrivateEmailForAltDSID:addressCopy withKey:v7 completion:v11];
  }
}

- (void)_lookUpHideMyEmailAddress:(void *)address altDSID:(void *)d completion:
{
  v7 = a2;
  addressCopy = address;
  dCopy = d;
  if (self)
  {
    controller = [self controller];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __62__EMHideMyEmail__lookUpHideMyEmailAddress_altDSID_completion___block_invoke;
    v11[3] = &unk_1E826D290;
    v12 = dCopy;
    [controller lookupPrivateEmailForAltDSID:addressCopy withKey:v7 completion:v11];
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

- (void)generateReplyToEmailForRecipient:(id)recipient hmeAddress:(id)address account:(id)account completion:(id)completion
{
  v31 = *MEMORY[0x1E69E9840];
  recipientCopy = recipient;
  addressCopy = address;
  accountCopy = account;
  completionCopy = completion;
  v14 = [EMHMERecipientCreationRequest alloc];
  v15 = [(EMHideMyEmail *)self _emailAddressFromAddress:addressCopy];
  v16 = [(EMHMERecipientCreationRequest *)v14 initWithAccount:accountCopy recipient:recipientCopy hmeAddress:v15];

  v17 = +[EMHideMyEmail log];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v20 = [(EMHMERecipientCreationRequest *)v16 debugDescription];
    v21 = [recipientCopy debugDescription];
    v22 = [addressCopy debugDescription];
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
  v18 = completionCopy;
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
  mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
  primaryAuthKitAccount = [mEMORY[0x1E698DC80] primaryAuthKitAccount];

  return primaryAuthKitAccount;
}

- (NSString)primaryAccountAltDSID
{
  primaryAccount = [(EMHideMyEmail *)self primaryAccount];
  v3 = [primaryAccount accountPropertyForKey:@"altDSID"];

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