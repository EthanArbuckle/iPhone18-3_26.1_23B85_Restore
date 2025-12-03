@interface IDSSignInController
- (BOOL)_actionOnAccountOfType:(unint64_t)type onService:(unint64_t)service actionBlock:(id)block;
- (BOOL)_isServiceCurrentlyEnabled:(id)enabled;
- (BOOL)isFaceTimeEnabled;
- (IDSSignInController)init;
- (IDSSignInController)initWithPasswordManager:(id)manager CTAdapter:(id)adapter signInTimeout:(double)timeout signInFuzz:(double)fuzz queue:(id)queue;
- (IDSSignInController)initWithQueue:(id)queue;
- (id)_accountControllerForName:(id)name;
- (id)_accountWithUniqueID:(id)d;
- (id)_createAccountControllerForService:(id)service;
- (id)_createAccountWithDictionary:(id)dictionary accountID:(id)d serviceName:(id)name;
- (id)_serviceNameForType:(unint64_t)type;
- (id)_statusOfUsersOnService:(unint64_t)service;
- (unint64_t)_statusOfAccount:(id)account;
- (void)_cleanupStateForAccountID:(id)d;
- (void)_initializeStateMachineForAccountID:(id)d service:(id)service state:(unint64_t)state completion:(id)completion;
- (void)_scheduleValidationAfter:(double)after forAccountID:(id)d allowFuzz:(BOOL)fuzz signOut:(BOOL)out;
- (void)_validateDelegateState;
- (void)_validateStateForAccountID:(id)d timeoutMode:(unint64_t)mode;
- (void)accountController:(id)controller accountAdded:(id)added;
- (void)accountController:(id)controller accountDisabled:(id)disabled;
- (void)accountController:(id)controller accountEnabled:(id)enabled;
- (void)accountController:(id)controller accountRemoved:(id)removed;
- (void)accountController:(id)controller accountUpdated:(id)updated;
- (void)dealloc;
- (void)disableUserType:(unint64_t)type onService:(unint64_t)service completion:(id)completion;
- (void)enableUserType:(unint64_t)type onService:(unint64_t)service completion:(id)completion;
- (void)provideCredential:(id)credential forUser:(id)user onService:(unint64_t)service withCompletion:(id)completion;
- (void)refreshRegistrationForAccount:(id)account;
- (void)removeDelegateForService:(unint64_t)service;
- (void)setDelegate:(id)delegate forService:(unint64_t)service;
- (void)signInUsername:(id)username onService:(unint64_t)service waitUntilRegistered:(BOOL)registered withCompletion:(id)completion;
- (void)signInUsername:(id)username withProvidedCredential:(id)credential onService:(unint64_t)service waitUntilRegistered:(BOOL)registered completion:(id)completion;
- (void)signOutService:(unint64_t)service completion:(id)completion;
- (void)statusOfUsersOnService:(unint64_t)service withCompletion:(id)completion;
@end

@implementation IDSSignInController

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  signInController = [MEMORY[0x1E69A6138] signInController];
  if (os_log_type_enabled(signInController, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1959FF000, signInController, OS_LOG_TYPE_DEFAULT, "IDSSignInController dealloc {self: %p}", buf, 0xCu);
  }

  v4 = +[IDSDaemonController sharedInstance];
  [v4 removeListenerID:self->_listenerGUID];

  v6.receiver = self;
  v6.super_class = IDSSignInController;
  [(IDSSignInController *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (IDSSignInController)initWithPasswordManager:(id)manager CTAdapter:(id)adapter signInTimeout:(double)timeout signInFuzz:(double)fuzz queue:(id)queue
{
  v31 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  adapterCopy = adapter;
  queueCopy = queue;
  if (_IDSRunningInDaemon())
  {
    signInController = [MEMORY[0x1E69A6138] signInController];
    if (os_log_type_enabled(signInController, OS_LOG_TYPE_ERROR))
    {
      sub_195B28A4C();
    }

    selfCopy = 0;
  }

  else
  {
    v28.receiver = self;
    v28.super_class = IDSSignInController;
    v18 = [(IDSSignInController *)&v28 init];
    if (v18)
    {
      v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v20 = dispatch_queue_create_with_target_V2("com.apple.identityservices.IDSSignInController", v19, queueCopy);
      signInQueue = v18->_signInQueue;
      v18->_signInQueue = v20;

      objc_storeStrong(&v18->_passwordManager, manager);
      objc_storeStrong(&v18->_CTAdapter, adapter);
      v18->_signInTimeout = timeout;
      v18->_signInFuzz = fuzz;
      stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
      listenerGUID = v18->_listenerGUID;
      v18->_listenerGUID = stringGUID;

      v24 = +[IDSDaemonController sharedInstance];
      [v24 addListenerID:v18->_listenerGUID services:0];

      signInController2 = [MEMORY[0x1E69A6138] signInController];
      if (os_log_type_enabled(signInController2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v30 = v18;
        _os_log_impl(&dword_1959FF000, signInController2, OS_LOG_TYPE_DEFAULT, "IDSSignInController init {self: %p}", buf, 0xCu);
      }
    }

    self = v18;
    selfCopy = self;
  }

  v26 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (IDSSignInController)initWithQueue:(id)queue
{
  queueCopy = queue;
  if (_IDSRunningInDaemon())
  {
    signInController = [MEMORY[0x1E69A6138] signInController];
    if (os_log_type_enabled(signInController, OS_LOG_TYPE_ERROR))
    {
      sub_195B28A4C();
    }

    selfCopy = 0;
  }

  else
  {
    v7 = objc_alloc_init(_IDSPasswordManager);
    mEMORY[0x1E69A51E8] = [MEMORY[0x1E69A51E8] sharedInstance];
    self = [(IDSSignInController *)self initWithPasswordManager:v7 CTAdapter:mEMORY[0x1E69A51E8] signInTimeout:queueCopy signInFuzz:180.0 queue:60.0];

    selfCopy = self;
  }

  return selfCopy;
}

- (IDSSignInController)init
{
  v3 = dispatch_get_global_queue(21, 0);
  v4 = [(IDSSignInController *)self initWithQueue:v3];

  return v4;
}

- (void)setDelegate:(id)delegate forService:(unint64_t)service
{
  delegateCopy = delegate;
  signInQueue = self->_signInQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195A42A80;
  block[3] = &unk_1E743E7B0;
  v10 = delegateCopy;
  serviceCopy = service;
  block[4] = self;
  v8 = delegateCopy;
  dispatch_async(signInQueue, block);
}

- (void)removeDelegateForService:(unint64_t)service
{
  signInQueue = self->_signInQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_195A42E2C;
  v4[3] = &unk_1E743E6C0;
  v4[4] = self;
  v4[5] = service;
  dispatch_async(signInQueue, v4);
}

- (void)enableUserType:(unint64_t)type onService:(unint64_t)service completion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  signInController = [MEMORY[0x1E69A6138] signInController];
  v10 = os_log_type_enabled(signInController, OS_LOG_TYPE_DEFAULT);
  if (completionCopy)
  {
    if (v10)
    {
      v11 = @"iMessage";
      if (service != 1)
      {
        v11 = 0;
      }

      if (!service)
      {
        v11 = @"FaceTime";
      }

      v12 = v11;
      *buf = 134218242;
      typeCopy = type;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_1959FF000, signInController, OS_LOG_TYPE_DEFAULT, "Enable user on service {userType: %llu, service: %@}", buf, 0x16u);
    }

    signInQueue = self->_signInQueue;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_195A43180;
    v15[3] = &unk_1E743FA48;
    v15[4] = self;
    typeCopy2 = type;
    serviceCopy = service;
    v16 = completionCopy;
    dispatch_async(signInQueue, v15);
  }

  else
  {
    if (v10)
    {
      *buf = 136315138;
      typeCopy = "[IDSSignInController enableUserType:onService:completion:]";
      _os_log_impl(&dword_1959FF000, signInController, OS_LOG_TYPE_DEFAULT, "%s called with nil completion - returning", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)disableUserType:(unint64_t)type onService:(unint64_t)service completion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  signInController = [MEMORY[0x1E69A6138] signInController];
  v10 = os_log_type_enabled(signInController, OS_LOG_TYPE_DEFAULT);
  if (completionCopy)
  {
    if (v10)
    {
      v11 = @"iMessage";
      if (service != 1)
      {
        v11 = 0;
      }

      if (!service)
      {
        v11 = @"FaceTime";
      }

      v12 = v11;
      *buf = 134218242;
      typeCopy = type;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_1959FF000, signInController, OS_LOG_TYPE_DEFAULT, "Disable user on service {userType: %llu, service: %@}", buf, 0x16u);
    }

    signInQueue = self->_signInQueue;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_195A4368C;
    v15[3] = &unk_1E743FA48;
    v15[4] = self;
    typeCopy2 = type;
    serviceCopy = service;
    v16 = completionCopy;
    dispatch_async(signInQueue, v15);
  }

  else
  {
    if (v10)
    {
      *buf = 136315138;
      typeCopy = "[IDSSignInController disableUserType:onService:completion:]";
      _os_log_impl(&dword_1959FF000, signInController, OS_LOG_TYPE_DEFAULT, "%s called with nil completion - returning", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)_statusOfUsersOnService:(unint64_t)service
{
  v5 = [(IDSSignInController *)self _serviceNameForType:?];
  v6 = [(NSMutableDictionary *)self->_serviceNameAccountControllerMap objectForKeyedSubscript:v5];

  v7 = [(IDSSignInController *)self _accountControllerForName:v5];
  accounts = [v7 accounts];
  allObjects = [accounts allObjects];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_195A43A94;
  v13[3] = &unk_1E743FA70;
  v13[4] = self;
  v10 = [allObjects __imArrayByApplyingBlock:v13];

  v11 = [[IDSSignInServiceUserStatus alloc] initWithServiceType:service userInfos:v10];
  if (!v6)
  {
    [(NSMutableDictionary *)self->_serviceNameAccountControllerMap setObject:0 forKeyedSubscript:v5];
    [(IDSSignInController *)self _cleanupStateForAccountID:0];
  }

  return v11;
}

- (void)statusOfUsersOnService:(unint64_t)service withCompletion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  signInController = [MEMORY[0x1E69A6138] signInController];
  v8 = os_log_type_enabled(signInController, OS_LOG_TYPE_DEFAULT);
  if (completionCopy)
  {
    if (v8)
    {
      v9 = @"iMessage";
      if (service != 1)
      {
        v9 = 0;
      }

      if (!service)
      {
        v9 = @"FaceTime";
      }

      v10 = v9;
      *buf = 138412290;
      v17 = v10;
      _os_log_impl(&dword_1959FF000, signInController, OS_LOG_TYPE_DEFAULT, "Checking user statuses {service: %@}", buf, 0xCu);
    }

    signInQueue = self->_signInQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195A43CE8;
    block[3] = &unk_1E743FA98;
    block[4] = self;
    serviceCopy = service;
    v14 = completionCopy;
    dispatch_async(signInQueue, block);
  }

  else
  {
    if (v8)
    {
      *buf = 136315138;
      v17 = "[IDSSignInController statusOfUsersOnService:withCompletion:]";
      _os_log_impl(&dword_1959FF000, signInController, OS_LOG_TYPE_DEFAULT, "%s called with nil completion - returning", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)provideCredential:(id)credential forUser:(id)user onService:(unint64_t)service withCompletion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  credentialCopy = credential;
  userCopy = user;
  completionCopy = completion;
  signInController = [MEMORY[0x1E69A6138] signInController];
  v14 = os_log_type_enabled(signInController, OS_LOG_TYPE_DEFAULT);
  if (completionCopy)
  {
    if (v14)
    {
      v15 = @"FaceTime";
      v16 = @"iMessage";
      if (service != 1)
      {
        v16 = 0;
      }

      if (service)
      {
        v15 = v16;
      }

      v17 = v15;
      *buf = 134218498;
      v25 = credentialCopy;
      v26 = 2112;
      v27 = userCopy;
      v28 = 2112;
      v29 = v17;
      _os_log_impl(&dword_1959FF000, signInController, OS_LOG_TYPE_DEFAULT, "Provided credential {credential: %p, user: %@, service: %@}", buf, 0x20u);
    }

    if (service)
    {
      if (service != 1)
      {
        goto LABEL_17;
      }

      v18 = @"iMessage";
      if (!credentialCopy)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v18 = @"FaceTime";
      if (!credentialCopy)
      {
LABEL_17:
        signInController = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSSignInControllerErrorDomain" code:-4000 userInfo:0];
        signInController2 = [MEMORY[0x1E69A6138] signInController];
        if (os_log_type_enabled(signInController2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v25 = signInController;
          _os_log_impl(&dword_1959FF000, signInController2, OS_LOG_TYPE_DEFAULT, "Invalid params {error: %@}", buf, 0xCu);
        }

        completionCopy[2](completionCopy, signInController);
        goto LABEL_20;
      }
    }

    if (userCopy)
    {
      passwordManager = [(IDSSignInController *)self passwordManager];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = sub_195A440C0;
      v22[3] = &unk_1E743FAC0;
      v23 = completionCopy;
      [passwordManager setPassword:credentialCopy forUsername:userCopy onService:v18 completionBlock:v22];

      signInController = v23;
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (v14)
  {
    *buf = 136315138;
    v25 = "[IDSSignInController provideCredential:forUser:onService:withCompletion:]";
    _os_log_impl(&dword_1959FF000, signInController, OS_LOG_TYPE_DEFAULT, "%s called with nil completion - returning", buf, 0xCu);
  }

LABEL_20:

  v21 = *MEMORY[0x1E69E9840];
}

- (void)signInUsername:(id)username onService:(unint64_t)service waitUntilRegistered:(BOOL)registered withCompletion:(id)completion
{
  registeredCopy = registered;
  v32 = *MEMORY[0x1E69E9840];
  usernameCopy = username;
  completionCopy = completion;
  signInController = [MEMORY[0x1E69A6138] signInController];
  v13 = os_log_type_enabled(signInController, OS_LOG_TYPE_DEFAULT);
  if (completionCopy)
  {
    if (v13)
    {
      v14 = @"iMessage";
      if (service != 1)
      {
        v14 = 0;
      }

      if (!service)
      {
        v14 = @"FaceTime";
      }

      v15 = v14;
      v16 = v15;
      v17 = @"NO";
      *buf = 138412802;
      v27 = usernameCopy;
      v28 = 2112;
      if (registeredCopy)
      {
        v17 = @"YES";
      }

      v29 = v15;
      v30 = 2112;
      v31 = v17;
      _os_log_impl(&dword_1959FF000, signInController, OS_LOG_TYPE_DEFAULT, "Sign in user {user: %@, service: %@, shouldWait: %@}", buf, 0x20u);
    }

    signInQueue = self->_signInQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195A44450;
    block[3] = &unk_1E743FAE8;
    serviceCopy = service;
    v21 = usernameCopy;
    selfCopy = self;
    v23 = completionCopy;
    v25 = registeredCopy;
    dispatch_async(signInQueue, block);

    signInController = v21;
  }

  else if (v13)
  {
    *buf = 136315138;
    v27 = "[IDSSignInController signInUsername:onService:waitUntilRegistered:withCompletion:]";
    _os_log_impl(&dword_1959FF000, signInController, OS_LOG_TYPE_DEFAULT, "%s called with nil completion - returning", buf, 0xCu);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)signInUsername:(id)username withProvidedCredential:(id)credential onService:(unint64_t)service waitUntilRegistered:(BOOL)registered completion:(id)completion
{
  v31 = *MEMORY[0x1E69E9840];
  usernameCopy = username;
  credentialCopy = credential;
  completionCopy = completion;
  signInController = [MEMORY[0x1E69A6138] signInController];
  v16 = os_log_type_enabled(signInController, OS_LOG_TYPE_DEFAULT);
  if (completionCopy)
  {
    if (v16)
    {
      v17 = @"iMessage";
      if (service != 1)
      {
        v17 = 0;
      }

      if (!service)
      {
        v17 = @"FaceTime";
      }

      v18 = v17;
      *buf = 138412802;
      v26 = usernameCopy;
      v27 = 2048;
      v28 = credentialCopy;
      v29 = 2112;
      v30 = v18;
      _os_log_impl(&dword_1959FF000, signInController, OS_LOG_TYPE_DEFAULT, "Sign in user with provided credential {user: %@, credential: %p, service: %@}", buf, 0x20u);
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_195A4485C;
    v20[3] = &unk_1E743FB10;
    v20[4] = self;
    v21 = usernameCopy;
    serviceCopy = service;
    registeredCopy = registered;
    v22 = completionCopy;
    [(IDSSignInController *)self provideCredential:credentialCopy forUser:v21 onService:service withCompletion:v20];
  }

  else
  {
    if (v16)
    {
      *buf = 136315138;
      v26 = "[IDSSignInController signInUsername:withProvidedCredential:onService:waitUntilRegistered:completion:]";
      _os_log_impl(&dword_1959FF000, signInController, OS_LOG_TYPE_DEFAULT, "%s called with nil completion - returning", buf, 0xCu);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)signOutService:(unint64_t)service completion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  signInController = [MEMORY[0x1E69A6138] signInController];
  v8 = os_log_type_enabled(signInController, OS_LOG_TYPE_DEFAULT);
  if (completionCopy)
  {
    if (v8)
    {
      v9 = @"iMessage";
      if (service != 1)
      {
        v9 = 0;
      }

      if (!service)
      {
        v9 = @"FaceTime";
      }

      v10 = v9;
      *buf = 138412290;
      v17 = v10;
      _os_log_impl(&dword_1959FF000, signInController, OS_LOG_TYPE_DEFAULT, "Sign out service {service: %@}", buf, 0xCu);
    }

    signInQueue = self->_signInQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195A44A34;
    block[3] = &unk_1E743FA98;
    block[4] = self;
    serviceCopy = service;
    v14 = completionCopy;
    dispatch_async(signInQueue, block);
  }

  else
  {
    if (v8)
    {
      *buf = 136315138;
      v17 = "[IDSSignInController signOutService:completion:]";
      _os_log_impl(&dword_1959FF000, signInController, OS_LOG_TYPE_DEFAULT, "%s called with nil completion - returning", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_initializeStateMachineForAccountID:(id)d service:(id)service state:(unint64_t)state completion:(id)completion
{
  v40 = *MEMORY[0x1E69E9840];
  dCopy = d;
  serviceCopy = service;
  completionCopy = completion;
  v13 = objc_alloc_init(IDSSignInControllerAccountDescription);
  [(IDSSignInControllerAccountDescription *)v13 setServiceName:serviceCopy];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:state];
  [(IDSSignInControllerAccountDescription *)v13 setState:v14];

  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = sub_195A44EA0;
  v27 = &unk_1E743F138;
  v15 = completionCopy;
  selfCopy = self;
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

  [(NSMutableDictionary *)accountIDDescriptionMap setObject:v13 forKeyedSubscript:dCopy, v24, v25, v26, v27];
  signInController = [MEMORY[0x1E69A6138] signInController];
  if (os_log_type_enabled(signInController, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:state];
    v21 = MEMORY[0x19A8BBEF0](v15);
    *buf = 134219010;
    selfCopy2 = self;
    v32 = 2112;
    v33 = dCopy;
    v34 = 2112;
    v35 = serviceCopy;
    v36 = 2112;
    v37 = v20;
    v38 = 2112;
    v39 = v21;
    _os_log_impl(&dword_1959FF000, signInController, OS_LOG_TYPE_DEFAULT, "Initialized state machine {self: %p, accountID: %@, serviceName: %@, state: %@, completion: %@}", buf, 0x34u);
  }

  signInTimeout = 5.0;
  if (state != 4)
  {
    signInTimeout = self->_signInTimeout;
  }

  [(IDSSignInController *)self _scheduleValidationAfter:dCopy forAccountID:1 allowFuzz:state == 4 signOut:signInTimeout];

  v23 = *MEMORY[0x1E69E9840];
}

- (void)_scheduleValidationAfter:(double)after forAccountID:(id)d allowFuzz:(BOOL)fuzz signOut:(BOOL)out
{
  outCopy = out;
  fuzzCopy = fuzz;
  v35 = *MEMORY[0x1E69E9840];
  dCopy = d;
  signInController = [MEMORY[0x1E69A6138] signInController];
  if (os_log_type_enabled(signInController, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:after];
    v13 = v12;
    v14 = @"NO";
    *buf = 134219010;
    selfCopy = self;
    if (fuzzCopy)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    if (outCopy)
    {
      v14 = @"YES";
    }

    v27 = 2112;
    v28 = v12;
    v29 = 2112;
    v30 = dCopy;
    v31 = 2112;
    v32 = v15;
    v33 = 2112;
    v34 = v14;
    _os_log_impl(&dword_1959FF000, signInController, OS_LOG_TYPE_DEFAULT, "Schedule validation after {self: %p, delay: %@, accountID: %@, allowFuzz: %@, signOut: %@}", buf, 0x34u);
  }

  objc_initWeak(buf, self);
  v16 = dispatch_time(0, (after * 1000000000.0));
  signInQueue = [(IDSSignInController *)self signInQueue];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_195A451B8;
  v20[3] = &unk_1E743FB60;
  objc_copyWeak(v22, buf);
  v22[1] = *&after;
  v23 = fuzzCopy;
  v24 = outCopy;
  v21 = dCopy;
  v18 = dCopy;
  dispatch_after(v16, signInQueue, v20);

  objc_destroyWeak(v22);
  objc_destroyWeak(buf);
  v19 = *MEMORY[0x1E69E9840];
}

- (void)_cleanupStateForAccountID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v5 = [(NSMutableDictionary *)self->_accountIDDescriptionMap objectForKeyedSubscript:dCopy];
    [(NSMutableDictionary *)self->_accountIDDescriptionMap setObject:0 forKeyedSubscript:dCopy];
    serviceName = [v5 serviceName];
    allValues = [(NSMutableDictionary *)self->_accountIDDescriptionMap allValues];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_195A4548C;
    v17[3] = &unk_1E743FB88;
    v8 = serviceName;
    v18 = v8;
    v9 = [allValues __imArrayByFilteringWithBlock:v17];
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

- (void)_validateStateForAccountID:(id)d timeoutMode:(unint64_t)mode
{
  v53 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v6 = [(IDSSignInController *)self _accountWithUniqueID:dCopy];
  v7 = [(NSMutableDictionary *)self->_accountIDDescriptionMap objectForKeyedSubscript:dCopy];
  completion = [v7 completion];
  if (v7)
  {
    registrationStatus = [v6 registrationStatus];
    state = [v7 state];
    unsignedIntegerValue = [state unsignedIntegerValue];
    serviceName = [v7 serviceName];
    v38 = [(IDSSignInController *)self _accountControllerForName:serviceName];

    signInController = [MEMORY[0x1E69A6138] signInController];
    if (os_log_type_enabled(signInController, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = state;
      *&buf[12] = 2112;
      *&buf[14] = v6;
      _os_log_impl(&dword_1959FF000, signInController, OS_LOG_TYPE_DEFAULT, "Validating state {stateNumber: %@, account: %@}", buf, 0x16u);
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
    modeCopy = mode;
    v44 = completion;
    selfCopy = self;
    v37 = dCopy;
    v43 = v37;
    v45 = buf;
    v15 = MEMORY[0x19A8BBEF0](v40);
    v16 = v15;
    if (!v14 && unsignedIntegerValue != 4)
    {
      signInController2 = [MEMORY[0x1E69A6138] signInController];
      if (os_log_type_enabled(signInController2, OS_LOG_TYPE_DEFAULT))
      {
        *v47 = 138412546;
        v48 = v37;
        v49 = 2112;
        v50 = v7;
        _os_log_impl(&dword_1959FF000, signInController2, OS_LOG_TYPE_DEFAULT, "No account to validate {accountID: %@, description: %@}", v47, 0x16u);
      }

      v18 = -1000;
      goto LABEL_9;
    }

    if (registrationStatus == -1)
    {
      v24 = 0;
    }

    else
    {
      if (registrationStatus == 3 && !unsignedIntegerValue)
      {
        aliasesToRegister = [v14 aliasesToRegister];
        if ([aliasesToRegister count])
        {
          [v7 setState:&unk_1F0A298E8];
          if ([v14 accountType] == 1)
          {
            cTAdapter = [(IDSSignInController *)self CTAdapter];
            supportsIdentification = [cTAdapter supportsIdentification];

            if (supportsIdentification)
            {
              v22 = [aliasesToRegister arrayByAddingObject:*MEMORY[0x1E69A5630]];

              aliasesToRegister = v22;
            }
          }

          [v14 addAliases:{aliasesToRegister, aliasesToRegister}];
          [v14 registerAccount];
          signInController3 = [MEMORY[0x1E69A6138] signInController];
          if (os_log_type_enabled(signInController3, OS_LOG_TYPE_DEFAULT))
          {
            *v47 = 0;
            _os_log_impl(&dword_1959FF000, signInController3, OS_LOG_TYPE_DEFAULT, "Transitioning to registering", v47, 2u);
          }

LABEL_37:
          v26 = 1;
LABEL_48:

          goto LABEL_49;
        }

        goto LABEL_47;
      }

      if (registrationStatus == 4 && !unsignedIntegerValue)
      {
        aliasesToRegister = [v14 aliasesToRegister];
        if ([aliasesToRegister count])
        {
          [v7 setState:&unk_1F0A298E8];
          if ([v14 accountType] == 1)
          {
            cTAdapter2 = [(IDSSignInController *)self CTAdapter];
            supportsIdentification2 = [cTAdapter2 supportsIdentification];

            if (supportsIdentification2)
            {
              v29 = [aliasesToRegister arrayByAddingObject:*MEMORY[0x1E69A5630]];

              aliasesToRegister = v29;
            }
          }

          signInController4 = [MEMORY[0x1E69A6138] signInController];
          if (os_log_type_enabled(signInController4, OS_LOG_TYPE_DEFAULT))
          {
            *v47 = 0;
            _os_log_impl(&dword_1959FF000, signInController4, OS_LOG_TYPE_DEFAULT, "Readding aliases to account in case we missed the authenticated state", v47, 2u);
          }

          [v14 addAliases:aliasesToRegister];
          goto LABEL_37;
        }

LABEL_47:
        v16[2](v16, -2000, 0);
        v26 = 0;
        goto LABEL_48;
      }

      if (!registrationStatus && !unsignedIntegerValue)
      {
        signInController5 = [MEMORY[0x1E69A6138] signInController];
        if (os_log_type_enabled(signInController5, OS_LOG_TYPE_DEFAULT))
        {
          *v47 = 0;
          _os_log_impl(&dword_1959FF000, signInController5, OS_LOG_TYPE_DEFAULT, "Re-enable, looks like things didn't progress", v47, 2u);
        }

        [v38 enableAccount:v14];
        [v14 authenticateAccount];
        goto LABEL_27;
      }

      if (registrationStatus == 5 && unsignedIntegerValue == 2)
      {
        goto LABEL_46;
      }

      if (registrationStatus == 4 && unsignedIntegerValue == 2)
      {
        v26 = 1;
LABEL_49:
        if (!mode || (*(*&buf[8] + 24) & 1) != 0)
        {
          goto LABEL_10;
        }

        v32 = v26 ^ 1;
        if (mode != 2)
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

      if (unsignedIntegerValue != 2)
      {
        if (unsignedIntegerValue != 1)
        {
          if (!unsignedIntegerValue)
          {
            v24 = -402;
            v25 = -1000;
            if (registrationStatus <= 4 && ((1 << registrationStatus) & 0x16) != 0)
            {
              goto LABEL_27;
            }

            goto LABEL_26;
          }

          v34 = registrationStatus == 1;
          v35 = unsignedIntegerValue == 3;
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

          if (unsignedIntegerValue != 3)
          {
            v26 = 0;
            if (unsignedIntegerValue != 4 || registrationStatus > 1)
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

        if ((registrationStatus | 2) == 3)
        {
          signInController6 = [MEMORY[0x1E69A6138] signInController];
          if (os_log_type_enabled(signInController6, OS_LOG_TYPE_DEFAULT))
          {
            *v47 = 0;
            _os_log_impl(&dword_1959FF000, signInController6, OS_LOG_TYPE_DEFAULT, "Transitioning to registering", v47, 2u);
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

  state = [MEMORY[0x1E69A6138] signInController];
  if (os_log_type_enabled(state, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = dCopy;
    _os_log_impl(&dword_1959FF000, state, OS_LOG_TYPE_DEFAULT, "No description to validate {accountID: %@}", buf, 0xCu);
  }

LABEL_13:

  v19 = *MEMORY[0x1E69E9840];
}

- (id)_createAccountWithDictionary:(id)dictionary accountID:(id)d serviceName:(id)name
{
  nameCopy = name;
  dCopy = d;
  dictionaryCopy = dictionary;
  v10 = [[IDSAccount alloc] initWithDictionary:dictionaryCopy uniqueID:dCopy serviceName:nameCopy];

  return v10;
}

- (unint64_t)_statusOfAccount:(id)account
{
  accountCopy = account;
  isEnabled = [accountCopy isEnabled];
  if ([accountCopy registrationStatus] == 5 || objc_msgSend(accountCopy, "registrationStatus") == 4)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  if (isEnabled)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)_actionOnAccountOfType:(unint64_t)type onService:(unint64_t)service actionBlock:(id)block
{
  typeCopy = type;
  v25 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v9 = [(IDSSignInController *)self _serviceNameForType:service];
  v10 = [(IDSSignInController *)self _accountControllerForName:v9];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  accounts = [v10 accounts];
  v12 = [accounts countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(accounts);
        }

        v17 = *(*(&v20 + 1) + 8 * i);
        if ([v17 accountType] == typeCopy)
        {
          blockCopy[2](blockCopy, v17, v10);
          v14 = 1;
        }
      }

      v13 = [accounts countByEnumeratingWithState:&v20 objects:v24 count:16];
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

- (id)_createAccountControllerForService:(id)service
{
  serviceCopy = service;
  v4 = [[IDSAccountController alloc] initWithService:serviceCopy];

  return v4;
}

- (id)_accountControllerForName:(id)name
{
  nameCopy = name;
  v5 = [(NSMutableDictionary *)self->_serviceNameAccountControllerMap objectForKeyedSubscript:nameCopy];
  if (!v5)
  {
    v5 = [(IDSSignInController *)self _createAccountControllerForService:nameCopy];
    serviceNameAccountControllerMap = self->_serviceNameAccountControllerMap;
    if (!serviceNameAccountControllerMap)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v8 = self->_serviceNameAccountControllerMap;
      self->_serviceNameAccountControllerMap = v7;

      serviceNameAccountControllerMap = self->_serviceNameAccountControllerMap;
    }

    [(NSMutableDictionary *)serviceNameAccountControllerMap setObject:v5 forKeyedSubscript:nameCopy];
  }

  return v5;
}

- (id)_accountWithUniqueID:(id)d
{
  dCopy = d;
  v5 = [(NSMutableDictionary *)self->_accountIDDescriptionMap objectForKeyedSubscript:dCopy];
  serviceName = [v5 serviceName];

  if (serviceName)
  {
    v7 = [(IDSSignInController *)self _accountControllerForName:serviceName];
    v8 = [v7 accountWithUniqueID:dCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_serviceNameForType:(unint64_t)type
{
  if (!type)
  {
    v4 = IDSServiceNameFaceTime;
LABEL_5:
    v5 = *v4;

    return v5;
  }

  if (type == 1)
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
          serviceUserInfos = [v7 serviceUserInfos];
          v10 = sub_195A46578(serviceUserInfos, serviceUserInfos);

          serviceUserInfos2 = [v8 serviceUserInfos];
          v12 = sub_195A46578(serviceUserInfos2, serviceUserInfos2);

          v13 = [v10 isEqualToSet:v12];
          signInController = [MEMORY[0x1E69A6138] signInController];
          if (os_log_type_enabled(signInController, OS_LOG_TYPE_DEFAULT))
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
            _os_log_impl(&dword_1959FF000, signInController, OS_LOG_TYPE_DEFAULT, "Validating delegate state {changes: %@, current: %@, cached: %@}", buf, 0x20u);
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

- (void)refreshRegistrationForAccount:(id)account
{
  accountCopy = account;
  v4 = [(NSMutableDictionary *)self->_accountIDDescriptionMap objectForKeyedSubscript:?];

  if (v4)
  {
    [(IDSSignInController *)self _validateStateForAccountID:accountCopy timeoutMode:0];
  }

  [(IDSSignInController *)self _validateDelegateState];
}

- (void)accountController:(id)controller accountAdded:(id)added
{
  v18 = *MEMORY[0x1E69E9840];
  addedCopy = added;
  serviceName = [addedCopy serviceName];
  v7 = [(IDSSignInController *)self _serviceTypeForName:serviceName];

  accountIDDescriptionMap = self->_accountIDDescriptionMap;
  uniqueID = [addedCopy uniqueID];
  v10 = [(NSMutableDictionary *)accountIDDescriptionMap objectForKeyedSubscript:uniqueID];
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

  signInController = [MEMORY[0x1E69A6138] signInController];
  if (os_log_type_enabled(signInController, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = addedCopy;
    _os_log_impl(&dword_1959FF000, signInController, OS_LOG_TYPE_DEFAULT, "Added interesting account {account: %@}", &v16, 0xCu);
  }

  [addedCopy addRegistrationDelegate:self queue:self->_signInQueue];
LABEL_7:
  [(IDSSignInController *)self _validateDelegateState];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)accountController:(id)controller accountDisabled:(id)disabled
{
  v16 = *MEMORY[0x1E69E9840];
  disabledCopy = disabled;
  signInController = [MEMORY[0x1E69A6138] signInController];
  if (os_log_type_enabled(signInController, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = disabledCopy;
    _os_log_impl(&dword_1959FF000, signInController, OS_LOG_TYPE_DEFAULT, "Account disabled {account: %@}", &v14, 0xCu);
  }

  accountIDDescriptionMap = self->_accountIDDescriptionMap;
  uniqueID = [disabledCopy uniqueID];
  v9 = [(NSMutableDictionary *)accountIDDescriptionMap objectForKeyedSubscript:uniqueID];

  if (v9)
  {
    state = [v9 state];
    unsignedIntegerValue = [state unsignedIntegerValue];

    if (unsignedIntegerValue == 3)
    {
      uniqueID2 = [disabledCopy uniqueID];
      [(IDSSignInController *)self _validateStateForAccountID:uniqueID2 timeoutMode:0];
    }
  }

  [(IDSSignInController *)self _validateDelegateState];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)accountController:(id)controller accountRemoved:(id)removed
{
  v14 = *MEMORY[0x1E69E9840];
  removedCopy = removed;
  signInController = [MEMORY[0x1E69A6138] signInController];
  if (os_log_type_enabled(signInController, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = removedCopy;
    _os_log_impl(&dword_1959FF000, signInController, OS_LOG_TYPE_DEFAULT, "Account removed {account: %@}", &v12, 0xCu);
  }

  accountIDDescriptionMap = self->_accountIDDescriptionMap;
  uniqueID = [removedCopy uniqueID];
  v9 = [(NSMutableDictionary *)accountIDDescriptionMap objectForKeyedSubscript:uniqueID];

  if (v9)
  {
    uniqueID2 = [removedCopy uniqueID];
    [(IDSSignInController *)self _validateStateForAccountID:uniqueID2 timeoutMode:0];
  }

  [(IDSSignInController *)self _validateDelegateState];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)accountController:(id)controller accountUpdated:(id)updated
{
  v14 = *MEMORY[0x1E69E9840];
  updatedCopy = updated;
  signInController = [MEMORY[0x1E69A6138] signInController];
  if (os_log_type_enabled(signInController, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = updatedCopy;
    _os_log_impl(&dword_1959FF000, signInController, OS_LOG_TYPE_DEFAULT, "Account updated {account: %@}", &v12, 0xCu);
  }

  accountIDDescriptionMap = self->_accountIDDescriptionMap;
  uniqueID = [updatedCopy uniqueID];
  v9 = [(NSMutableDictionary *)accountIDDescriptionMap objectForKeyedSubscript:uniqueID];

  if (v9)
  {
    [updatedCopy addRegistrationDelegate:self queue:self->_signInQueue];
    uniqueID2 = [updatedCopy uniqueID];
    [(IDSSignInController *)self _validateStateForAccountID:uniqueID2 timeoutMode:0];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)accountController:(id)controller accountEnabled:(id)enabled
{
  v10 = *MEMORY[0x1E69E9840];
  enabledCopy = enabled;
  signInController = [MEMORY[0x1E69A6138] signInController];
  if (os_log_type_enabled(signInController, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = enabledCopy;
    _os_log_impl(&dword_1959FF000, signInController, OS_LOG_TYPE_DEFAULT, "Account enabled {account: %@}", &v8, 0xCu);
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

- (BOOL)_isServiceCurrentlyEnabled:(id)enabled
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(IDSSignInController *)self _createAccountControllerForService:enabled];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  accounts = [v3 accounts];
  v5 = [accounts countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(accounts);
        }

        if ([*(*(&v10 + 1) + 8 * i) isEnabled])
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [accounts countByEnumeratingWithState:&v10 objects:v14 count:16];
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