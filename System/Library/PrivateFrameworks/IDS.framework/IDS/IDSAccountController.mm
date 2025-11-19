@interface IDSAccountController
- (IDSAccountController)initWithService:(id)a3;
- (NSSet)accounts;
- (id)_initWithService:(id)a3;
- (id)_internal;
- (id)accountWithLoginID:(id)a3 service:(id)a4;
- (id)accountWithUniqueID:(id)a3;
- (id)enabledAccounts;
- (id)serviceName;
- (void)_disableAccount:(id)a3;
- (void)_enableAccount:(id)a3;
- (void)_removeAccount:(id)a3;
- (void)addAccount:(id)a3;
- (void)addDelegate:(id)a3 queue:(id)a4;
- (void)dealloc;
- (void)removeAccount:(id)a3;
- (void)removeDelegate:(id)a3;
- (void)setupAccountWithLoginID:(id)a3 aliases:(id)a4 password:(id)a5 completionHandler:(id)a6;
- (void)setupAccountWithLoginID:(id)a3 password:(id)a4 completionHandler:(id)a5;
- (void)setupAccountWithSetupParameters:(id)a3 aliases:(id)a4 completionHandler:(id)a5;
@end

@implementation IDSAccountController

- (id)_internal
{
  v3 = +[IDSInternalQueueController sharedInstance];
  v4 = [v3 assertQueueIsCurrent];

  if (v4)
  {
    v5 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_195B2BA74();
    }
  }

  internal = self->_internal;

  return internal;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_195B2B984(self, v3);
  }

  v4 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_195B2B9FC(self, v4);
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

- (id)_initWithService:(id)a3
{
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v6 = [v5 assertQueueIsCurrent];

  if (v6)
  {
    v7 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_195B2B844();
    }
  }

  v8 = [(IDSAccountController *)self _initWithService:v4 onIDSQueue:1];

  return v8;
}

- (IDSAccountController)initWithService:(id)a3
{
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v6 = [v5 assertQueueIsNotCurrent];

  if (v6)
  {
    v7 = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_195B2B8E4();
    }
  }

  v8 = [(IDSAccountController *)self _initWithService:v4 onIDSQueue:0];

  return v8;
}

- (void)addDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IDSInternalQueueController sharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195A60F5C;
  v11[3] = &unk_1E743E620;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performBlock:v11 waitUntilDone:1];
}

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A6101C;
  v6[3] = &unk_1E743F468;
  v6[4] = self;
  v6[5] = v4;
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

- (id)accountWithLoginID:(id)a3 service:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v10 = v6;
  v15 = v10;
  v11 = v7;
  v16 = v11;
  [v9 performBlock:v14 waitUntilDone:1];

  v12 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v12;
}

- (id)accountWithUniqueID:(id)a3
{
  v4 = a3;
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
  v7 = v4;
  v11 = v7;
  [v6 performBlock:v10 waitUntilDone:1];

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (void)setupAccountWithLoginID:(id)a3 aliases:(id)a4 password:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = +[IDSInternalQueueController sharedInstance];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_195A619B4;
  v19[3] = &unk_1E74408C8;
  v19[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  [v14 performBlock:v19];
}

- (void)setupAccountWithLoginID:(id)a3 password:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[IDSInternalQueueController sharedInstance];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195A61AD0;
  v15[3] = &unk_1E743F318;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [v11 performBlock:v15];
}

- (void)setupAccountWithSetupParameters:(id)a3 aliases:(id)a4 completionHandler:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v9;
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "* Request to setup account with aliases: %@ and parameters:", buf, 0xCu);
  }

  [v8 enumerateKeysAndObjectsUsingBlock:&unk_1F09E6120];
  v12 = +[IDSInternalQueueController sharedInstance];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_195A61D9C;
  v17[3] = &unk_1E743F318;
  v17[4] = self;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  [v12 performBlock:v17];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)addAccount:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(IDSAccountController *)self serviceName];
    *buf = 138412546;
    v13 = v4;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "* Request to add account: %@   service: %@", buf, 0x16u);
  }

  v7 = +[IDSInternalQueueController sharedInstance];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195A61F0C;
  v10[3] = &unk_1E743EA30;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  [v7 performBlock:v10];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)removeAccount:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(IDSAccountController *)self serviceName];
    *buf = 138412546;
    v13 = v4;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "* Request to remove account: %@   service: %@", buf, 0x16u);
  }

  v7 = +[IDSInternalQueueController sharedInstance];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195A62074;
  v10[3] = &unk_1E743EA30;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  [v7 performBlock:v10];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_removeAccount:(id)a3
{
  v4 = a3;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A62138;
  v7[3] = &unk_1E743EA30;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

- (void)_enableAccount:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(IDSAccountController *)self serviceName];
    *buf = 138412546;
    v13 = v4;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "* Request to enable account: %@   service: %@", buf, 0x16u);
  }

  v7 = +[IDSInternalQueueController sharedInstance];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195A622A8;
  v10[3] = &unk_1E743EA30;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  [v7 performBlock:v10];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_disableAccount:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(IDSAccountController *)self serviceName];
    *buf = 138412546;
    v13 = v4;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "* Request to disable account: %@   service: %@", buf, 0x16u);
  }

  v7 = +[IDSInternalQueueController sharedInstance];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195A62410;
  v10[3] = &unk_1E743EA30;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  [v7 performBlock:v10];

  v9 = *MEMORY[0x1E69E9840];
}

@end