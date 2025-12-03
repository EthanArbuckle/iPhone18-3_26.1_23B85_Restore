@interface IDSAccountController
- (IDSAccountController)initWithService:(id)service;
- (NSSet)accounts;
- (id)_initWithService:(id)service;
- (id)_internal;
- (id)accountWithLoginID:(id)d service:(id)service;
- (id)accountWithUniqueID:(id)d;
- (id)enabledAccounts;
- (id)serviceName;
- (void)_disableAccount:(id)account;
- (void)_enableAccount:(id)account;
- (void)_removeAccount:(id)account;
- (void)addAccount:(id)account;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)dealloc;
- (void)removeAccount:(id)account;
- (void)removeDelegate:(id)delegate;
- (void)setupAccountWithLoginID:(id)d aliases:(id)aliases password:(id)password completionHandler:(id)handler;
- (void)setupAccountWithLoginID:(id)d password:(id)password completionHandler:(id)handler;
- (void)setupAccountWithSetupParameters:(id)parameters aliases:(id)aliases completionHandler:(id)handler;
@end

@implementation IDSAccountController

- (id)_internal
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B2BA74();
    }
  }

  internal = self->_internal;

  return internal;
}

- (void)dealloc
{
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEBUG))
  {
    sub_195B2B984(self, registration);
  }

  registration2 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEBUG))
  {
    sub_195B2B9FC(self, registration2);
  }

  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = sub_195A00744;
  v8[4] = sub_195A03D48;
  v9 = self->_internal;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A04C1C;
  v7[3] = &unk_1E743E648;
  v7[4] = v8;
  [v5 performBlock:v7 waitUntilDone:0];

  _Block_object_dispose(v8, 8);
  v6.receiver = self;
  v6.super_class = IDSAccountController;
  [(IDSAccountController *)&v6 dealloc];
}

- (id)_initWithService:(id)service
{
  serviceCopy = service;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B2B844();
    }
  }

  v8 = [(IDSAccountController *)self _initWithService:serviceCopy onIDSQueue:1];

  return v8;
}

- (IDSAccountController)initWithService:(id)service
{
  serviceCopy = service;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsNotCurrent = [v5 assertQueueIsNotCurrent];

  if (assertQueueIsNotCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B2B8E4();
    }
  }

  v8 = [(IDSAccountController *)self _initWithService:serviceCopy onIDSQueue:0];

  return v8;
}

- (void)addDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v8 = +[IDSInternalQueueController sharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195A60F5C;
  v11[3] = &unk_1E743E620;
  v11[4] = self;
  v12 = delegateCopy;
  v13 = queueCopy;
  v9 = queueCopy;
  v10 = delegateCopy;
  [v8 performBlock:v11 waitUntilDone:1];
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A6101C;
  v6[3] = &unk_1E743F468;
  v6[4] = self;
  v6[5] = delegateCopy;
  [v5 performBlock:v6 waitUntilDone:1];
}

- (NSSet)accounts
{
  v3 = +[IDSDaemonController sharedInstance];
  [v3 blockUntilConnected];

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_195A00744;
  v12 = sub_195A03D48;
  v13 = 0;
  v4 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A6116C;
  v7[3] = &unk_1E743E670;
  v7[4] = self;
  v7[5] = &v8;
  [v4 performBlock:v7 waitUntilDone:1];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)enabledAccounts
{
  v3 = +[IDSDaemonController sharedInstance];
  [v3 blockUntilConnected];

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_195A00744;
  v12 = sub_195A03D48;
  v13 = 0;
  v4 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A61300;
  v7[3] = &unk_1E743E670;
  v7[4] = self;
  v7[5] = &v8;
  [v4 performBlock:v7 waitUntilDone:1];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)serviceName
{
  v3 = +[IDSDaemonController sharedInstance];
  [v3 blockUntilConnected];

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_195A00744;
  v12 = sub_195A03D48;
  v13 = 0;
  v4 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A61494;
  v7[3] = &unk_1E743E670;
  v7[4] = self;
  v7[5] = &v8;
  [v4 performBlock:v7 waitUntilDone:1];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)accountWithLoginID:(id)d service:(id)service
{
  dCopy = d;
  serviceCopy = service;
  v8 = +[IDSDaemonController sharedInstance];
  [v8 blockUntilConnected];

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_195A00744;
  v22 = sub_195A03D48;
  v23 = 0;
  v9 = +[IDSInternalQueueController sharedInstance];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_195A6167C;
  v14[3] = &unk_1E743F648;
  v17 = &v18;
  v14[4] = self;
  v10 = dCopy;
  v15 = v10;
  v11 = serviceCopy;
  v16 = v11;
  [v9 performBlock:v14 waitUntilDone:1];

  v12 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v12;
}

- (id)accountWithUniqueID:(id)d
{
  dCopy = d;
  v5 = +[IDSDaemonController sharedInstance];
  [v5 blockUntilConnected];

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_195A00744;
  v17 = sub_195A03D48;
  v18 = 0;
  v6 = +[IDSInternalQueueController sharedInstance];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195A6183C;
  v10[3] = &unk_1E743EA08;
  v12 = &v13;
  v10[4] = self;
  v7 = dCopy;
  v11 = v7;
  [v6 performBlock:v10 waitUntilDone:1];

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (void)setupAccountWithLoginID:(id)d aliases:(id)aliases password:(id)password completionHandler:(id)handler
{
  dCopy = d;
  aliasesCopy = aliases;
  passwordCopy = password;
  handlerCopy = handler;
  v14 = +[IDSInternalQueueController sharedInstance];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_195A619B4;
  v19[3] = &unk_1E74408C8;
  v19[4] = self;
  v20 = dCopy;
  v21 = aliasesCopy;
  v22 = passwordCopy;
  v23 = handlerCopy;
  v15 = handlerCopy;
  v16 = passwordCopy;
  v17 = aliasesCopy;
  v18 = dCopy;
  [v14 performBlock:v19];
}

- (void)setupAccountWithLoginID:(id)d password:(id)password completionHandler:(id)handler
{
  dCopy = d;
  passwordCopy = password;
  handlerCopy = handler;
  v11 = +[IDSInternalQueueController sharedInstance];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195A61AD0;
  v15[3] = &unk_1E743F318;
  v15[4] = self;
  v16 = dCopy;
  v17 = passwordCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = passwordCopy;
  v14 = dCopy;
  [v11 performBlock:v15];
}

- (void)setupAccountWithSetupParameters:(id)parameters aliases:(id)aliases completionHandler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  aliasesCopy = aliases;
  handlerCopy = handler;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = aliasesCopy;
    _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "* Request to setup account with aliases: %@ and parameters:", buf, 0xCu);
  }

  [parametersCopy enumerateKeysAndObjectsUsingBlock:&unk_1F09E6120];
  v12 = +[IDSInternalQueueController sharedInstance];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_195A61D9C;
  v17[3] = &unk_1E743F318;
  v17[4] = self;
  v18 = parametersCopy;
  v19 = aliasesCopy;
  v20 = handlerCopy;
  v13 = handlerCopy;
  v14 = aliasesCopy;
  v15 = parametersCopy;
  [v12 performBlock:v17];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)addAccount:(id)account
{
  v16 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    serviceName = [(IDSAccountController *)self serviceName];
    *buf = 138412546;
    v13 = accountCopy;
    v14 = 2112;
    v15 = serviceName;
    _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "* Request to add account: %@   service: %@", buf, 0x16u);
  }

  v7 = +[IDSInternalQueueController sharedInstance];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195A61F0C;
  v10[3] = &unk_1E743EA30;
  v10[4] = self;
  v11 = accountCopy;
  v8 = accountCopy;
  [v7 performBlock:v10];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)removeAccount:(id)account
{
  v16 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    serviceName = [(IDSAccountController *)self serviceName];
    *buf = 138412546;
    v13 = accountCopy;
    v14 = 2112;
    v15 = serviceName;
    _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "* Request to remove account: %@   service: %@", buf, 0x16u);
  }

  v7 = +[IDSInternalQueueController sharedInstance];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195A62074;
  v10[3] = &unk_1E743EA30;
  v10[4] = self;
  v11 = accountCopy;
  v8 = accountCopy;
  [v7 performBlock:v10];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_removeAccount:(id)account
{
  accountCopy = account;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A62138;
  v7[3] = &unk_1E743EA30;
  v7[4] = self;
  v8 = accountCopy;
  v6 = accountCopy;
  [v5 performBlock:v7];
}

- (void)_enableAccount:(id)account
{
  v16 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    serviceName = [(IDSAccountController *)self serviceName];
    *buf = 138412546;
    v13 = accountCopy;
    v14 = 2112;
    v15 = serviceName;
    _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "* Request to enable account: %@   service: %@", buf, 0x16u);
  }

  v7 = +[IDSInternalQueueController sharedInstance];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195A622A8;
  v10[3] = &unk_1E743EA30;
  v10[4] = self;
  v11 = accountCopy;
  v8 = accountCopy;
  [v7 performBlock:v10];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_disableAccount:(id)account
{
  v16 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    serviceName = [(IDSAccountController *)self serviceName];
    *buf = 138412546;
    v13 = accountCopy;
    v14 = 2112;
    v15 = serviceName;
    _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "* Request to disable account: %@   service: %@", buf, 0x16u);
  }

  v7 = +[IDSInternalQueueController sharedInstance];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195A62410;
  v10[3] = &unk_1E743EA30;
  v10[4] = self;
  v11 = accountCopy;
  v8 = accountCopy;
  [v7 performBlock:v10];

  v9 = *MEMORY[0x1E69E9840];
}

@end