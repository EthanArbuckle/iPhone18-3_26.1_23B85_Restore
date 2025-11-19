@interface IDSSignInController
- (BOOL)_actionOnAccountOfType:(unint64_t)a3 onService:(unint64_t)a4 actionBlock:(id)a5;
- (BOOL)_isServiceCurrentlyEnabled:(id)a3;
- (BOOL)isFaceTimeEnabled;
- (IDSSignInController)init;
- (IDSSignInController)initWithPasswordManager:(id)a3 CTAdapter:(id)a4 signInTimeout:(double)a5 signInFuzz:(double)a6 queue:(id)a7;
- (IDSSignInController)initWithQueue:(id)a3;
- (id)_accountControllerForName:(id)a3;
- (id)_accountWithUniqueID:(id)a3;
- (id)_createAccountControllerForService:(id)a3;
- (id)_createAccountWithDictionary:(id)a3 accountID:(id)a4 serviceName:(id)a5;
- (id)_serviceNameForType:(unint64_t)a3;
- (id)_statusOfUsersOnService:(unint64_t)a3;
- (unint64_t)_statusOfAccount:(id)a3;
- (void)_cleanupStateForAccountID:(id)a3;
- (void)_initializeStateMachineForAccountID:(id)a3 service:(id)a4 state:(unint64_t)a5 completion:(id)a6;
- (void)_scheduleValidationAfter:(double)a3 forAccountID:(id)a4 allowFuzz:(BOOL)a5 signOut:(BOOL)a6;
- (void)_validateDelegateState;
- (void)_validateStateForAccountID:(id)a3 timeoutMode:(unint64_t)a4;
- (void)accountController:(id)a3 accountAdded:(id)a4;
- (void)accountController:(id)a3 accountDisabled:(id)a4;
- (void)accountController:(id)a3 accountEnabled:(id)a4;
- (void)accountController:(id)a3 accountRemoved:(id)a4;
- (void)accountController:(id)a3 accountUpdated:(id)a4;
- (void)dealloc;
- (void)disableUserType:(unint64_t)a3 onService:(unint64_t)a4 completion:(id)a5;
- (void)enableUserType:(unint64_t)a3 onService:(unint64_t)a4 completion:(id)a5;
- (void)provideCredential:(id)a3 forUser:(id)a4 onService:(unint64_t)a5 withCompletion:(id)a6;
- (void)refreshRegistrationForAccount:(id)a3;
- (void)removeDelegateForService:(unint64_t)a3;
- (void)setDelegate:(id)a3 forService:(unint64_t)a4;
- (void)signInUsername:(id)a3 onService:(unint64_t)a4 waitUntilRegistered:(BOOL)a5 withCompletion:(id)a6;
- (void)signInUsername:(id)a3 withProvidedCredential:(id)a4 onService:(unint64_t)a5 waitUntilRegistered:(BOOL)a6 completion:(id)a7;
- (void)signOutService:(unint64_t)a3 completion:(id)a4;
- (void)statusOfUsersOnService:(unint64_t)a3 withCompletion:(id)a4;
@end

@implementation IDSSignInController

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69A6138] signInController];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v8 = self;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "IDSSignInController dealloc {self: %p}", buf, 0xCu);
  }

  v4 = +[IDSDaemonController sharedInstance];
  [v4 removeListenerID:self->_listenerGUID];

  v6.receiver = self;
  v6.super_class = IDSSignInController;
  [(IDSSignInController *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (IDSSignInController)initWithPasswordManager:(id)a3 CTAdapter:(id)a4 signInTimeout:(double)a5 signInFuzz:(double)a6 queue:(id)a7
{
  v31 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a7;
  if (_IDSRunningInDaemon())
  {
    v16 = [MEMORY[0x1E69A6138] signInController];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_195B28A4C();
    }

    v17 = 0;
  }

  else
  {
    v28.receiver = self;
    v28.super_class = IDSSignInController;
    v18 = [(IDSSignInController *)&v28 init];
    if (v18)
    {
      v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v20 = dispatch_queue_create_with_target_V2("com.apple.identityservices.IDSSignInController", v19, v15);
      signInQueue = v18->_signInQueue;
      v18->_signInQueue = v20;

      objc_storeStrong(&v18->_passwordManager, a3);
      objc_storeStrong(&v18->_CTAdapter, a4);
      v18->_signInTimeout = a5;
      v18->_signInFuzz = a6;
      v22 = [MEMORY[0x1E696AEC0] stringGUID];
      listenerGUID = v18->_listenerGUID;
      v18->_listenerGUID = v22;

      v24 = +[IDSDaemonController sharedInstance];
      [v24 addListenerID:v18->_listenerGUID services:0];

      v25 = [MEMORY[0x1E69A6138] signInController];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v30 = v18;
        _os_log_impl(&dword_1959FF000, v25, OS_LOG_TYPE_DEFAULT, "IDSSignInController init {self: %p}", buf, 0xCu);
      }
    }

    self = v18;
    v17 = self;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v17;
}

- (IDSSignInController)initWithQueue:(id)a3
{
  v4 = a3;
  if (_IDSRunningInDaemon())
  {
    v5 = [MEMORY[0x1E69A6138] signInController];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_195B28A4C();
    }

    v6 = 0;
  }

  else
  {
    v7 = objc_alloc_init(_IDSPasswordManager);
    v8 = [MEMORY[0x1E69A51E8] sharedInstance];
    self = [(IDSSignInController *)self initWithPasswordManager:v7 CTAdapter:v8 signInTimeout:v4 signInFuzz:180.0 queue:60.0];

    v6 = self;
  }

  return v6;
}

- (IDSSignInController)init
{
  v3 = dispatch_get_global_queue(21, 0);
  v4 = [(IDSSignInController *)self initWithQueue:v3];

  return v4;
}

- (void)setDelegate:(id)a3 forService:(unint64_t)a4
{
  v6 = a3;
  signInQueue = self->_signInQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195A42A80;
  block[3] = &unk_1E743E7B0;
  v10 = v6;
  v11 = a4;
  block[4] = self;
  v8 = v6;
  dispatch_async(signInQueue, block);
}

- (void)removeDelegateForService:(unint64_t)a3
{
  signInQueue = self->_signInQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195A42E2C;
  v4[3] = &unk_1E743E6C0;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(signInQueue, v4);
}

- (void)enableUserType:(unint64_t)a3 onService:(unint64_t)a4 completion:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = [MEMORY[0x1E69A6138] signInController];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      v11 = @"iMessage";
      if (a4 != 1)
      {
        v11 = 0;
      }

      if (!a4)
      {
        v11 = @"FaceTime";
      }

      v12 = v11;
      *buf = 134218242;
      v20 = a3;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "Enable user on service {userType: %llu, service: %@}", buf, 0x16u);
    }

    signInQueue = self->_signInQueue;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_195A43180;
    v15[3] = &unk_1E743FA48;
    v15[4] = self;
    v17 = a3;
    v18 = a4;
    v16 = v8;
    dispatch_async(signInQueue, v15);
  }

  else
  {
    if (v10)
    {
      *buf = 136315138;
      v20 = "[IDSSignInController enableUserType:onService:completion:]";
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "%s called with nil completion - returning", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)disableUserType:(unint64_t)a3 onService:(unint64_t)a4 completion:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = [MEMORY[0x1E69A6138] signInController];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      v11 = @"iMessage";
      if (a4 != 1)
      {
        v11 = 0;
      }

      if (!a4)
      {
        v11 = @"FaceTime";
      }

      v12 = v11;
      *buf = 134218242;
      v20 = a3;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "Disable user on service {userType: %llu, service: %@}", buf, 0x16u);
    }

    signInQueue = self->_signInQueue;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_195A4368C;
    v15[3] = &unk_1E743FA48;
    v15[4] = self;
    v17 = a3;
    v18 = a4;
    v16 = v8;
    dispatch_async(signInQueue, v15);
  }

  else
  {
    if (v10)
    {
      *buf = 136315138;
      v20 = "[IDSSignInController disableUserType:onService:completion:]";
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "%s called with nil completion - returning", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)_statusOfUsersOnService:(unint64_t)a3
{
  v5 = [(IDSSignInController *)self _serviceNameForType:?];
  v6 = [(NSMutableDictionary *)self->_serviceNameAccountControllerMap objectForKeyedSubscript:v5];

  v7 = [(IDSSignInController *)self _accountControllerForName:v5];
  v8 = [v7 accounts];
  v9 = [v8 allObjects];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_195A43A94;
  v13[3] = &unk_1E743FA70;
  v13[4] = self;
  v10 = [v9 __imArrayByApplyingBlock:v13];

  v11 = [[IDSSignInServiceUserStatus alloc] initWithServiceType:a3 userInfos:v10];
  if (!v6)
  {
    [(NSMutableDictionary *)self->_serviceNameAccountControllerMap setObject:0 forKeyedSubscript:v5];
    [(IDSSignInController *)self _cleanupStateForAccountID:0];
  }

  return v11;
}

- (void)statusOfUsersOnService:(unint64_t)a3 withCompletion:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [MEMORY[0x1E69A6138] signInController];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = @"iMessage";
      if (a3 != 1)
      {
        v9 = 0;
      }

      if (!a3)
      {
        v9 = @"FaceTime";
      }

      v10 = v9;
      *buf = 138412290;
      v17 = v10;
      _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "Checking user statuses {service: %@}", buf, 0xCu);
    }

    signInQueue = self->_signInQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195A43CE8;
    block[3] = &unk_1E743FA98;
    block[4] = self;
    v15 = a3;
    v14 = v6;
    dispatch_async(signInQueue, block);
  }

  else
  {
    if (v8)
    {
      *buf = 136315138;
      v17 = "[IDSSignInController statusOfUsersOnService:withCompletion:]";
      _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "%s called with nil completion - returning", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)provideCredential:(id)a3 forUser:(id)a4 onService:(unint64_t)a5 withCompletion:(id)a6
{
  v30 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [MEMORY[0x1E69A6138] signInController];
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      v15 = @"FaceTime";
      v16 = @"iMessage";
      if (a5 != 1)
      {
        v16 = 0;
      }

      if (a5)
      {
        v15 = v16;
      }

      v17 = v15;
      *buf = 134218498;
      v25 = v10;
      v26 = 2112;
      v27 = v11;
      v28 = 2112;
      v29 = v17;
      _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "Provided credential {credential: %p, user: %@, service: %@}", buf, 0x20u);
    }

    if (a5)
    {
      if (a5 != 1)
      {
        goto LABEL_17;
      }

      v18 = @"iMessage";
      if (!v10)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v18 = @"FaceTime";
      if (!v10)
      {
LABEL_17:
        v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSSignInControllerErrorDomain" code:-4000 userInfo:0];
        v20 = [MEMORY[0x1E69A6138] signInController];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v25 = v13;
          _os_log_impl(&dword_1959FF000, v20, OS_LOG_TYPE_DEFAULT, "Invalid params {error: %@}", buf, 0xCu);
        }

        v12[2](v12, v13);
        goto LABEL_20;
      }
    }

    if (v11)
    {
      v19 = [(IDSSignInController *)self passwordManager];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = sub_195A440C0;
      v22[3] = &unk_1E743FAC0;
      v23 = v12;
      [v19 setPassword:v10 forUsername:v11 onService:v18 completionBlock:v22];

      v13 = v23;
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (v14)
  {
    *buf = 136315138;
    v25 = "[IDSSignInController provideCredential:forUser:onService:withCompletion:]";
    _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "%s called with nil completion - returning", buf, 0xCu);
  }

LABEL_20:

  v21 = *MEMORY[0x1E69E9840];
}

- (void)signInUsername:(id)a3 onService:(unint64_t)a4 waitUntilRegistered:(BOOL)a5 withCompletion:(id)a6
{
  v7 = a5;
  v32 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  v12 = [MEMORY[0x1E69A6138] signInController];
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      v14 = @"iMessage";
      if (a4 != 1)
      {
        v14 = 0;
      }

      if (!a4)
      {
        v14 = @"FaceTime";
      }

      v15 = v14;
      v16 = v15;
      v17 = @"NO";
      *buf = 138412802;
      v27 = v10;
      v28 = 2112;
      if (v7)
      {
        v17 = @"YES";
      }

      v29 = v15;
      v30 = 2112;
      v31 = v17;
      _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "Sign in user {user: %@, service: %@, shouldWait: %@}", buf, 0x20u);
    }

    signInQueue = self->_signInQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195A44450;
    block[3] = &unk_1E743FAE8;
    v24 = a4;
    v21 = v10;
    v22 = self;
    v23 = v11;
    v25 = v7;
    dispatch_async(signInQueue, block);

    v12 = v21;
  }

  else if (v13)
  {
    *buf = 136315138;
    v27 = "[IDSSignInController signInUsername:onService:waitUntilRegistered:withCompletion:]";
    _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "%s called with nil completion - returning", buf, 0xCu);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)signInUsername:(id)a3 withProvidedCredential:(id)a4 onService:(unint64_t)a5 waitUntilRegistered:(BOOL)a6 completion:(id)a7
{
  v31 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = [MEMORY[0x1E69A6138] signInController];
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    if (v16)
    {
      v17 = @"iMessage";
      if (a5 != 1)
      {
        v17 = 0;
      }

      if (!a5)
      {
        v17 = @"FaceTime";
      }

      v18 = v17;
      *buf = 138412802;
      v26 = v12;
      v27 = 2048;
      v28 = v13;
      v29 = 2112;
      v30 = v18;
      _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "Sign in user with provided credential {user: %@, credential: %p, service: %@}", buf, 0x20u);
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_195A4485C;
    v20[3] = &unk_1E743FB10;
    v20[4] = self;
    v21 = v12;
    v23 = a5;
    v24 = a6;
    v22 = v14;
    [(IDSSignInController *)self provideCredential:v13 forUser:v21 onService:a5 withCompletion:v20];
  }

  else
  {
    if (v16)
    {
      *buf = 136315138;
      v26 = "[IDSSignInController signInUsername:withProvidedCredential:onService:waitUntilRegistered:completion:]";
      _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "%s called with nil completion - returning", buf, 0xCu);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)signOutService:(unint64_t)a3 completion:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [MEMORY[0x1E69A6138] signInController];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = @"iMessage";
      if (a3 != 1)
      {
        v9 = 0;
      }

      if (!a3)
      {
        v9 = @"FaceTime";
      }

      v10 = v9;
      *buf = 138412290;
      v17 = v10;
      _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "Sign out service {service: %@}", buf, 0xCu);
    }

    signInQueue = self->_signInQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195A44A34;
    block[3] = &unk_1E743FA98;
    block[4] = self;
    v15 = a3;
    v14 = v6;
    dispatch_async(signInQueue, block);
  }

  else
  {
    if (v8)
    {
      *buf = 136315138;
      v17 = "[IDSSignInController signOutService:completion:]";
      _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "%s called with nil completion - returning", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_initializeStateMachineForAccountID:(id)a3 service:(id)a4 state:(unint64_t)a5 completion:(id)a6
{
  v40 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = objc_alloc_init(IDSSignInControllerAccountDescription);
  [(IDSSignInControllerAccountDescription *)v13 setServiceName:v11];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
  [(IDSSignInControllerAccountDescription *)v13 setState:v14];

  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = sub_195A44EA0;
  v27 = &unk_1E743F138;
  v15 = v12;
  v28 = self;
  v29 = v15;
  [(IDSSignInControllerAccountDescription *)v13 setCompletion:&v24];
  accountIDDescriptionMap = self->_accountIDDescriptionMap;
  if (!accountIDDescriptionMap)
  {
    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v18 = self->_accountIDDescriptionMap;
    self->_accountIDDescriptionMap = v17;

    accountIDDescriptionMap = self->_accountIDDescriptionMap;
  }

  [(NSMutableDictionary *)accountIDDescriptionMap setObject:v13 forKeyedSubscript:v10, v24, v25, v26, v27];
  v19 = [MEMORY[0x1E69A6138] signInController];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
    v21 = MEMORY[0x19A8BBEF0](v15);
    *buf = 134219010;
    v31 = self;
    v32 = 2112;
    v33 = v10;
    v34 = 2112;
    v35 = v11;
    v36 = 2112;
    v37 = v20;
    v38 = 2112;
    v39 = v21;
    _os_log_impl(&dword_1959FF000, v19, OS_LOG_TYPE_DEFAULT, "Initialized state machine {self: %p, accountID: %@, serviceName: %@, state: %@, completion: %@}", buf, 0x34u);
  }

  signInTimeout = 5.0;
  if (a5 != 4)
  {
    signInTimeout = self->_signInTimeout;
  }

  [(IDSSignInController *)self _scheduleValidationAfter:v10 forAccountID:1 allowFuzz:a5 == 4 signOut:signInTimeout];

  v23 = *MEMORY[0x1E69E9840];
}

- (void)_scheduleValidationAfter:(double)a3 forAccountID:(id)a4 allowFuzz:(BOOL)a5 signOut:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v35 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = [MEMORY[0x1E69A6138] signInController];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    v13 = v12;
    v14 = @"NO";
    *buf = 134219010;
    v26 = self;
    if (v7)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    if (v6)
    {
      v14 = @"YES";
    }

    v27 = 2112;
    v28 = v12;
    v29 = 2112;
    v30 = v10;
    v31 = 2112;
    v32 = v15;
    v33 = 2112;
    v34 = v14;
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "Schedule validation after {self: %p, delay: %@, accountID: %@, allowFuzz: %@, signOut: %@}", buf, 0x34u);
  }

  objc_initWeak(buf, self);
  v16 = dispatch_time(0, (a3 * 1000000000.0));
  v17 = [(IDSSignInController *)self signInQueue];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_195A451B8;
  v20[3] = &unk_1E743FB60;
  objc_copyWeak(v22, buf);
  v22[1] = *&a3;
  v23 = v7;
  v24 = v6;
  v21 = v10;
  v18 = v10;
  dispatch_after(v16, v17, v20);

  objc_destroyWeak(v22);
  objc_destroyWeak(buf);
  v19 = *MEMORY[0x1E69E9840];
}

- (void)_cleanupStateForAccountID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_accountIDDescriptionMap objectForKeyedSubscript:v4];
    [(NSMutableDictionary *)self->_accountIDDescriptionMap setObject:0 forKeyedSubscript:v4];
    v6 = [v5 serviceName];
    v7 = [(NSMutableDictionary *)self->_accountIDDescriptionMap allValues];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_195A4548C;
    v17[3] = &unk_1E743FB88;
    v8 = v6;
    v18 = v8;
    v9 = [v7 __imArrayByFilteringWithBlock:v17];
    v10 = [v9 count];

    v11 = [(IDSSignInController *)self _serviceTypeForName:v8];
    delegateByServiceType = self->_delegateByServiceType;
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
    v14 = [(NSMapTable *)delegateByServiceType objectForKey:v13];

    if (!v10 && !v14)
    {
      [(NSMutableDictionary *)self->_serviceNameAccountControllerMap setObject:0 forKeyedSubscript:v8];
    }
  }

  if (![(NSMutableDictionary *)self->_accountIDDescriptionMap count])
  {
    accountIDDescriptionMap = self->_accountIDDescriptionMap;
    self->_accountIDDescriptionMap = 0;
  }

  if (![(NSMutableDictionary *)self->_serviceNameAccountControllerMap count])
  {
    serviceNameAccountControllerMap = self->_serviceNameAccountControllerMap;
    self->_serviceNameAccountControllerMap = 0;
  }
}

- (void)_validateStateForAccountID:(id)a3 timeoutMode:(unint64_t)a4
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(IDSSignInController *)self _accountWithUniqueID:v5];
  v7 = [(NSMutableDictionary *)self->_accountIDDescriptionMap objectForKeyedSubscript:v5];
  v8 = [v7 completion];
  if (v7)
  {
    v9 = [v6 registrationStatus];
    v10 = [v7 state];
    v11 = [v10 unsignedIntegerValue];
    v12 = [v7 serviceName];
    v38 = [(IDSSignInController *)self _accountControllerForName:v12];

    v13 = [MEMORY[0x1E69A6138] signInController];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = v10;
      *&buf[12] = 2112;
      *&buf[14] = v6;
      _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "Validating state {stateNumber: %@, account: %@}", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v52 = 0;
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = sub_195A45C60;
    v40[3] = &unk_1E743FBB0;
    v14 = v6;
    v41 = v14;
    v46 = a4;
    v44 = v8;
    v42 = self;
    v37 = v5;
    v43 = v37;
    v45 = buf;
    v15 = MEMORY[0x19A8BBEF0](v40);
    v16 = v15;
    if (!v14 && v11 != 4)
    {
      v17 = [MEMORY[0x1E69A6138] signInController];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *v47 = 138412546;
        v48 = v37;
        v49 = 2112;
        v50 = v7;
        _os_log_impl(&dword_1959FF000, v17, OS_LOG_TYPE_DEFAULT, "No account to validate {accountID: %@, description: %@}", v47, 0x16u);
      }

      v18 = -1000;
      goto LABEL_9;
    }

    if (v9 == -1)
    {
      v24 = 0;
    }

    else
    {
      if (v9 == 3 && !v11)
      {
        v36 = [v14 aliasesToRegister];
        if ([v36 count])
        {
          [v7 setState:&unk_1F0A298E8];
          if ([v14 accountType] == 1)
          {
            v20 = [(IDSSignInController *)self CTAdapter];
            v21 = [v20 supportsIdentification];

            if (v21)
            {
              v22 = [v36 arrayByAddingObject:*MEMORY[0x1E69A5630]];

              v36 = v22;
            }
          }

          [v14 addAliases:{v36, v36}];
          [v14 registerAccount];
          v23 = [MEMORY[0x1E69A6138] signInController];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *v47 = 0;
            _os_log_impl(&dword_1959FF000, v23, OS_LOG_TYPE_DEFAULT, "Transitioning to registering", v47, 2u);
          }

LABEL_37:
          v26 = 1;
LABEL_48:

          goto LABEL_49;
        }

        goto LABEL_47;
      }

      if (v9 == 4 && !v11)
      {
        v36 = [v14 aliasesToRegister];
        if ([v36 count])
        {
          [v7 setState:&unk_1F0A298E8];
          if ([v14 accountType] == 1)
          {
            v27 = [(IDSSignInController *)self CTAdapter];
            v28 = [v27 supportsIdentification];

            if (v28)
            {
              v29 = [v36 arrayByAddingObject:*MEMORY[0x1E69A5630]];

              v36 = v29;
            }
          }

          v30 = [MEMORY[0x1E69A6138] signInController];
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *v47 = 0;
            _os_log_impl(&dword_1959FF000, v30, OS_LOG_TYPE_DEFAULT, "Readding aliases to account in case we missed the authenticated state", v47, 2u);
          }

          [v14 addAliases:v36];
          goto LABEL_37;
        }

LABEL_47:
        v16[2](v16, -2000, 0);
        v26 = 0;
        goto LABEL_48;
      }

      if (!v9 && !v11)
      {
        v31 = [MEMORY[0x1E69A6138] signInController];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *v47 = 0;
          _os_log_impl(&dword_1959FF000, v31, OS_LOG_TYPE_DEFAULT, "Re-enable, looks like things didn't progress", v47, 2u);
        }

        [v38 enableAccount:v14];
        [v14 authenticateAccount];
        goto LABEL_27;
      }

      if (v9 == 5 && v11 == 2)
      {
        goto LABEL_46;
      }

      if (v9 == 4 && v11 == 2)
      {
        v26 = 1;
LABEL_49:
        if (!a4 || (*(*&buf[8] + 24) & 1) != 0)
        {
          goto LABEL_10;
        }

        v32 = v26 ^ 1;
        if (a4 != 2)
        {
          v32 = 1;
        }

        if ((v32 & 1) == 0)
        {
          [(IDSSignInController *)self _scheduleValidationAfter:v37 forAccountID:0 allowFuzz:0 signOut:self->_signInFuzz];
          goto LABEL_10;
        }

        v18 = 0;
LABEL_9:
        v16[2](v16, v18, 0);
LABEL_10:

        _Block_object_dispose(buf, 8);
        goto LABEL_13;
      }

      if (v11 != 2)
      {
        if (v11 != 1)
        {
          if (!v11)
          {
            v24 = -402;
            v25 = -1000;
            if (v9 <= 4 && ((1 << v9) & 0x16) != 0)
            {
              goto LABEL_27;
            }

            goto LABEL_26;
          }

          v34 = v9 == 1;
          v35 = v11 == 3;
          if (v34 && v35)
          {
            v25 = 0;
          }

          else
          {
            v25 = -1000;
          }

          if (v34 && v35)
          {
            v24 = 0;
          }

          else
          {
            v24 = -402;
          }

          if (v11 != 3)
          {
            v26 = 0;
            if (v11 != 4 || v9 > 1)
            {
              goto LABEL_49;
            }

LABEL_46:
            v25 = 0;
            v24 = 0;
          }

LABEL_26:
          (*(v15 + 16))(v15, v25, v24);
LABEL_27:
          v26 = 0;
          goto LABEL_49;
        }

        if ((v9 | 2) == 3)
        {
          v33 = [MEMORY[0x1E69A6138] signInController];
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *v47 = 0;
            _os_log_impl(&dword_1959FF000, v33, OS_LOG_TYPE_DEFAULT, "Transitioning to registering", v47, 2u);
          }

          [v7 setState:&unk_1F0A298E8];
          goto LABEL_27;
        }
      }

      v24 = -402;
    }

    v25 = -1000;
    goto LABEL_26;
  }

  v10 = [MEMORY[0x1E69A6138] signInController];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v5;
    _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "No description to validate {accountID: %@}", buf, 0xCu);
  }

LABEL_13:

  v19 = *MEMORY[0x1E69E9840];
}

- (id)_createAccountWithDictionary:(id)a3 accountID:(id)a4 serviceName:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[IDSAccount alloc] initWithDictionary:v9 uniqueID:v8 serviceName:v7];

  return v10;
}

- (unint64_t)_statusOfAccount:(id)a3
{
  v3 = a3;
  v4 = [v3 isEnabled];
  if ([v3 registrationStatus] == 5 || objc_msgSend(v3, "registrationStatus") == 4)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)_actionOnAccountOfType:(unint64_t)a3 onService:(unint64_t)a4 actionBlock:(id)a5
{
  v6 = a3;
  v25 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = [(IDSSignInController *)self _serviceNameForType:a4];
  v10 = [(IDSSignInController *)self _accountControllerForName:v9];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = [v10 accounts];
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v20 + 1) + 8 * i);
        if ([v17 accountType] == v6)
        {
          v8[2](v8, v17, v10);
          v14 = 1;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v14 & 1;
}

- (id)_createAccountControllerForService:(id)a3
{
  v3 = a3;
  v4 = [[IDSAccountController alloc] initWithService:v3];

  return v4;
}

- (id)_accountControllerForName:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_serviceNameAccountControllerMap objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = [(IDSSignInController *)self _createAccountControllerForService:v4];
    serviceNameAccountControllerMap = self->_serviceNameAccountControllerMap;
    if (!serviceNameAccountControllerMap)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v8 = self->_serviceNameAccountControllerMap;
      self->_serviceNameAccountControllerMap = v7;

      serviceNameAccountControllerMap = self->_serviceNameAccountControllerMap;
    }

    [(NSMutableDictionary *)serviceNameAccountControllerMap setObject:v5 forKeyedSubscript:v4];
  }

  return v5;
}

- (id)_accountWithUniqueID:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_accountIDDescriptionMap objectForKeyedSubscript:v4];
  v6 = [v5 serviceName];

  if (v6)
  {
    v7 = [(IDSSignInController *)self _accountControllerForName:v6];
    v8 = [v7 accountWithUniqueID:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_serviceNameForType:(unint64_t)a3
{
  if (!a3)
  {
    v4 = IDSServiceNameFaceTime;
LABEL_5:
    v5 = *v4;

    return v5;
  }

  if (a3 == 1)
  {
    v4 = IDSServiceNameiMessage;
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

- (void)_validateDelegateState
{
  v32 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = self->_delegateByServiceType;
  v20 = [(NSMapTable *)obj countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v20)
  {
    v19 = *v22;
    *&v3 = 138412802;
    v17 = v3;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v21 + 1) + 8 * i);
        v6 = [(NSMapTable *)self->_delegateByServiceType objectForKey:v5, v17];
        if (v6)
        {
          v7 = -[IDSSignInController _statusOfUsersOnService:](self, "_statusOfUsersOnService:", [v5 unsignedIntegerValue]);
          v8 = [(NSMutableDictionary *)self->_initialStateByService objectForKeyedSubscript:v5];
          v9 = [v7 serviceUserInfos];
          v10 = sub_195A46578(v9, v9);

          v11 = [v8 serviceUserInfos];
          v12 = sub_195A46578(v11, v11);

          v13 = [v10 isEqualToSet:v12];
          v14 = [MEMORY[0x1E69A6138] signInController];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v17;
            v15 = @"YES";
            if (v13)
            {
              v15 = @"NO";
            }

            v26 = v15;
            v27 = 2112;
            v28 = v7;
            v29 = 2112;
            v30 = v8;
            _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "Validating delegate state {changes: %@, current: %@, cached: %@}", buf, 0x20u);
          }

          if ((v13 & 1) == 0)
          {
            [v6 signInController:self service:objc_msgSend(v5 didChangeStatus:{"unsignedIntegerValue"), v7}];
            [(NSMutableDictionary *)self->_initialStateByService setObject:v7 forKeyedSubscript:v5];
          }
        }
      }

      v20 = [(NSMapTable *)obj countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v20);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)refreshRegistrationForAccount:(id)a3
{
  v5 = a3;
  v4 = [(NSMutableDictionary *)self->_accountIDDescriptionMap objectForKeyedSubscript:?];

  if (v4)
  {
    [(IDSSignInController *)self _validateStateForAccountID:v5 timeoutMode:0];
  }

  [(IDSSignInController *)self _validateDelegateState];
}

- (void)accountController:(id)a3 accountAdded:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [v5 serviceName];
  v7 = [(IDSSignInController *)self _serviceTypeForName:v6];

  accountIDDescriptionMap = self->_accountIDDescriptionMap;
  v9 = [v5 uniqueID];
  v10 = [(NSMutableDictionary *)accountIDDescriptionMap objectForKeyedSubscript:v9];
  if (v10)
  {
  }

  else
  {
    delegateByServiceType = self->_delegateByServiceType;
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
    v13 = [(NSMapTable *)delegateByServiceType objectForKey:v12];

    if (!v13)
    {
      goto LABEL_7;
    }
  }

  v14 = [MEMORY[0x1E69A6138] signInController];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v5;
    _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "Added interesting account {account: %@}", &v16, 0xCu);
  }

  [v5 addRegistrationDelegate:self queue:self->_signInQueue];
LABEL_7:
  [(IDSSignInController *)self _validateDelegateState];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)accountController:(id)a3 accountDisabled:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [MEMORY[0x1E69A6138] signInController];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v5;
    _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "Account disabled {account: %@}", &v14, 0xCu);
  }

  accountIDDescriptionMap = self->_accountIDDescriptionMap;
  v8 = [v5 uniqueID];
  v9 = [(NSMutableDictionary *)accountIDDescriptionMap objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = [v9 state];
    v11 = [v10 unsignedIntegerValue];

    if (v11 == 3)
    {
      v12 = [v5 uniqueID];
      [(IDSSignInController *)self _validateStateForAccountID:v12 timeoutMode:0];
    }
  }

  [(IDSSignInController *)self _validateDelegateState];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)accountController:(id)a3 accountRemoved:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [MEMORY[0x1E69A6138] signInController];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v5;
    _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "Account removed {account: %@}", &v12, 0xCu);
  }

  accountIDDescriptionMap = self->_accountIDDescriptionMap;
  v8 = [v5 uniqueID];
  v9 = [(NSMutableDictionary *)accountIDDescriptionMap objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = [v5 uniqueID];
    [(IDSSignInController *)self _validateStateForAccountID:v10 timeoutMode:0];
  }

  [(IDSSignInController *)self _validateDelegateState];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)accountController:(id)a3 accountUpdated:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [MEMORY[0x1E69A6138] signInController];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v5;
    _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "Account updated {account: %@}", &v12, 0xCu);
  }

  accountIDDescriptionMap = self->_accountIDDescriptionMap;
  v8 = [v5 uniqueID];
  v9 = [(NSMutableDictionary *)accountIDDescriptionMap objectForKeyedSubscript:v8];

  if (v9)
  {
    [v5 addRegistrationDelegate:self queue:self->_signInQueue];
    v10 = [v5 uniqueID];
    [(IDSSignInController *)self _validateStateForAccountID:v10 timeoutMode:0];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)accountController:(id)a3 accountEnabled:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [MEMORY[0x1E69A6138] signInController];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "Account enabled {account: %@}", &v8, 0xCu);
  }

  [(IDSSignInController *)self _validateDelegateState];
  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)isFaceTimeEnabled
{
  if ([(IDSSignInController *)self _isServiceCurrentlyEnabled:@"com.apple.private.ac"])
  {
    return 1;
  }

  return [(IDSSignInController *)self _isServiceCurrentlyEnabled:@"com.apple.ess"];
}

- (BOOL)_isServiceCurrentlyEnabled:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(IDSSignInController *)self _createAccountControllerForService:a3];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 accounts];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v10 + 1) + 8 * i) isEnabled])
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

@end