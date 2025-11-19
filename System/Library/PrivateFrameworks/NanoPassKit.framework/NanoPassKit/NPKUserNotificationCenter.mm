@interface NPKUserNotificationCenter
+ (id)sharedInstance;
- (NPKUserNotificationCenter)initWithNotificationBundleIdentifier:(id)a3;
- (void)_requestNotificationAuthorizationWithOptions:(unint64_t)a3 completion:(id)a4;
- (void)_requestNotificationAuthorizationWithPreconditionCheck:(id)a3 completion:(id)a4;
- (void)addNotification:(id)a3 completion:(id)a4;
- (void)fetchAuthorizationStatusWithCompletion:(id)a3;
- (void)requestAuthorizationIfNecessaryForPassesManager:(id)a3 withCompletion:(id)a4;
- (void)setNotificationCategoryWithIdentifier:(id)a3 intentIdentifier:(id)a4 actions:(id)a5 options:(unint64_t)a6;
- (void)userNotificationCenter:(id)a3 didChangeSettings:(id)a4;
@end

@implementation NPKUserNotificationCenter

- (NPKUserNotificationCenter)initWithNotificationBundleIdentifier:(id)a3
{
  v4 = a3;
  if (![v4 length])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"bundle identifier is missing"];
  }

  v11.receiver = self;
  v11.super_class = NPKUserNotificationCenter;
  v5 = [(NPKUserNotificationCenter *)&v11 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:v4];
    notificationCenter = v5->_notificationCenter;
    v5->_notificationCenter = v6;

    [(UNUserNotificationCenter *)v5->_notificationCenter setPrivateDelegate:v5];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __66__NPKUserNotificationCenter_initWithNotificationBundleIdentifier___block_invoke;
    v9[3] = &unk_27994A960;
    v10 = v5;
    [(NPKUserNotificationCenter *)v10 fetchAuthorizationStatusWithCompletion:v9];
  }

  return v5;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_6 != -1)
  {
    +[NPKUserNotificationCenter sharedInstance];
  }

  v3 = sharedInstance_notificationCenter;

  return v3;
}

void __43__NPKUserNotificationCenter_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(NPKUserNotificationCenter);
  v1 = sharedInstance_notificationCenter;
  sharedInstance_notificationCenter = v0;
}

- (void)requestAuthorizationIfNecessaryForPassesManager:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __92__NPKUserNotificationCenter_requestAuthorizationIfNecessaryForPassesManager_withCompletion___block_invoke;
  v8[3] = &unk_27994A988;
  v9 = v6;
  v7 = v6;
  [(NPKUserNotificationCenter *)self _requestNotificationAuthorizationWithPreconditionCheck:v8 completion:a4];
}

uint64_t __92__NPKUserNotificationCenter_requestAuthorizationIfNecessaryForPassesManager_withCompletion___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) passes];
  v2 = [v1 count];
  if (v2 == 1)
  {
    v3 = [v1 firstObject];
    v4 = [v3 secureElementPass];

    v5 = [v4 isPeerPaymentPass];
    if ([v4 contactlessActivationState] == 4)
    {
      v6 = v5 ^ 1u;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = v2 != 0;
  }

  return v6;
}

- (void)fetchAuthorizationStatusWithCompletion:(id)a3
{
  v4 = a3;
  notificationCenter = self->_notificationCenter;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__NPKUserNotificationCenter_fetchAuthorizationStatusWithCompletion___block_invoke;
  v7[3] = &unk_27994A9D0;
  v8 = v4;
  v6 = v4;
  [(UNUserNotificationCenter *)notificationCenter getNotificationSettingsWithCompletionHandler:v7];
}

uint64_t __68__NPKUserNotificationCenter_fetchAuthorizationStatusWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [a2 authorizationStatus];
  v4 = pk_General_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_General_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = UNAuthorizationStatusString();
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Notification Authorization Status is: %@", &v10, 0xCu);
    }
  }

  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))(result, v3);
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setNotificationCategoryWithIdentifier:(id)a3 intentIdentifier:(id)a4 actions:(id)a5 options:(unint64_t)a6
{
  v18 = a3;
  v10 = a4;
  v11 = a5;
  v12 = MEMORY[0x277CE1F98];
  v13 = v11;
  if (v11)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = [MEMORY[0x277CBEA60] array];
    if (v10)
    {
LABEL_3:
      v14 = [v12 categoryWithIdentifier:v18 actions:v13 intentIdentifiers:v10 options:a6];
      if (v11)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v17 = [MEMORY[0x277CBEA60] array];
  v14 = [v12 categoryWithIdentifier:v18 actions:v13 intentIdentifiers:v17 options:a6];

  if (!v11)
  {
LABEL_4:
  }

LABEL_5:
  notificationCenter = self->_notificationCenter;
  v16 = [MEMORY[0x277CBEB98] setWithObject:v14];
  [(UNUserNotificationCenter *)notificationCenter setNotificationCategories:v16];
}

- (void)addNotification:(id)a3 completion:(id)a4
{
  v20[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v9 = [v6 identifier];
    v10 = [v6 title];
    v11 = [v6 body];
    v12 = [v6 notificationCategoryIdentifier];
    v13 = [v6 userInfo];
    v14 = [v6 wantsBadgedIcon];
    LOBYTE(v18) = [v6 isSuppressed];
    [(NPKUserNotificationCenter *)self _addNotificationWithNotificationIdentifier:v9 title:v10 body:v11 categoryIdentifier:v12 userInfo:v13 wantsBadgedIcon:v14 suppressed:v18 completion:v8];

LABEL_5:
    goto LABEL_6;
  }

  if (v7)
  {
    v15 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CCA450];
    v20[0] = @"Notification type not supported";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v9 = [v15 errorWithDomain:@"NPKUserNotificationsErrorDomain" code:-2001 userInfo:v16];

    (v8)[2](v8, v9);
    goto LABEL_5;
  }

LABEL_6:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)userNotificationCenter:(id)a3 didChangeSettings:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  self->_authorizationStatus = [a4 authorizationStatus];
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      authorizationStatus = self->_authorizationStatus;
      v9 = UNAuthorizationStatusString();
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Notification Authorization Status did change: %@", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __149__NPKUserNotificationCenter__addNotificationWithNotificationIdentifier_title_body_categoryIdentifier_userInfo_wantsBadgedIcon_suppressed_completion___block_invoke(void *a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_General_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_General_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      v8 = a1[5];
      v9 = a1[6];
      v10 = a1[7];
      v13 = 136316418;
      v14 = "[NPKUserNotificationCenter _addNotificationWithNotificationIdentifier:title:body:categoryIdentifier:userInfo:wantsBadgedIcon:suppressed:completion:]_block_invoke";
      v15 = 2112;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      v21 = 2112;
      v22 = v10;
      v23 = 2112;
      v24 = v3;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: %s Scheduled notification with notification ID: %@, title: %@, body: %@, userInfo: %@. Error: %@", &v13, 0x3Eu);
    }
  }

  v11 = a1[8];
  if (v11)
  {
    (*(v11 + 16))(v11, v3);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_requestNotificationAuthorizationWithPreconditionCheck:(id)a3 completion:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  authorizationStatus = self->_authorizationStatus;
  if (authorizationStatus > 2)
  {
    if ((authorizationStatus - 3) > 1)
    {
      goto LABEL_28;
    }
  }

  else if (authorizationStatus)
  {
    if (authorizationStatus != 1)
    {
      if (authorizationStatus == 2)
      {
        v9 = pk_General_log();
        v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

        if (v10)
        {
          v11 = pk_General_log();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v23) = 0;
            _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: Notification Authorization already authorized", &v23, 2u);
          }
        }

        if (v7)
        {
          v7[2](v7, 1, 0);
        }
      }

      goto LABEL_28;
    }

    v20 = pk_General_log();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

    if (!v21)
    {
      goto LABEL_26;
    }

    v18 = pk_General_log();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    LOWORD(v23) = 0;
    v19 = "Notice: Notification Authorization already denied";
    goto LABEL_24;
  }

  v12 = v6[2](v6);
  v13 = pk_General_log();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

  if (!v12)
  {
    if (!v14)
    {
      goto LABEL_26;
    }

    v18 = pk_General_log();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
LABEL_25:

LABEL_26:
      if (v7)
      {
        v7[2](v7, 0, 0);
      }

      goto LABEL_28;
    }

    LOWORD(v23) = 0;
    v19 = "Notice: Notification Authorization not required; precondition not satisfied.";
LABEL_24:
    _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_DEFAULT, v19, &v23, 2u);
    goto LABEL_25;
  }

  if (v14)
  {
    v15 = pk_General_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = self->_authorizationStatus;
      v17 = UNAuthorizationStatusString();
      v23 = 138412290;
      v24 = v17;
      _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Notice: Notification Authorization status was: %@ Full Authorization being requested", &v23, 0xCu);
    }
  }

  [(NPKUserNotificationCenter *)self _requestNotificationAuthorizationWithOptions:7 completion:v7];
LABEL_28:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_requestNotificationAuthorizationWithOptions:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  notificationCenter = self->_notificationCenter;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __85__NPKUserNotificationCenter__requestNotificationAuthorizationWithOptions_completion___block_invoke;
  v9[3] = &unk_27994AA20;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [(UNUserNotificationCenter *)notificationCenter requestAuthorizationWithOptions:a3 completionHandler:v9];
}

void __85__NPKUserNotificationCenter__requestNotificationAuthorizationWithOptions_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    *(*(a1 + 32) + 16) = 2;
  }

  v6 = pk_General_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_General_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"NO";
      if (a2)
      {
        v9 = @"YES";
      }

      v17 = 138412546;
      v18 = v9;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Notification Authorization was granted: %@ error: %@", &v17, 0x16u);
    }
  }

  v10 = pk_General_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = pk_General_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(*(a1 + 32) + 16);
      v14 = UNAuthorizationStatusString();
      v17 = 138412290;
      v18 = v14;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Notification Authorization Status is: %@", &v17, 0xCu);
    }
  }

  v15 = *(a1 + 40);
  if (v15)
  {
    (*(v15 + 16))(v15, a2, v5);
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end