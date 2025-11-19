@interface IDSGroupContextController
- (IDSGroupContextController)initWithServiceName:(id)a3 queue:(id)a4 delegate:(id)a5;
- (void)_contentWithCompletion:(id)a3;
- (void)dealloc;
- (void)didCacheGroup:(id)a3 completion:(id)a4;
- (void)didCreateGroup:(id)a3 completion:(id)a4;
- (void)didReceiveDecryptionFailureForGroup:(id)a3 completion:(id)a4;
- (void)didReceiveRegistrationIdentityUpdateWithCompletion:(id)a3;
- (void)didUpdateGroup:(id)a3 withNewGroup:(id)a4 completion:(id)a5;
- (void)groupContextWithCompletion:(id)a3;
- (void)qGroupContextWithDeviceIdentity:(id)a3 completion:(id)a4;
- (void)qSetupSeal;
- (void)scheduleTransactionLogTask:(id)a3;
- (void)taskHandler:(id)a3 accountInfoForAliases:(id)a4 completion:(id)a5;
- (void)taskHandler:(id)a3 groupsWithGroupIDs:(id)a4 completion:(id)a5;
- (void)taskHandler:(id)a3 messagesFromToken:(id)a4 completion:(id)a5;
- (void)taskHandler:(id)a3 participantsWithDestinations:(id)a4 completion:(id)a5;
- (void)taskHandler:(id)a3 persistToken:(id)a4 completion:(id)a5;
@end

@implementation IDSGroupContextController

- (void)dealloc
{
  self->_delegate = 0;
  v3 = +[IDSDaemonProtocolController sharedInstance];
  v4 = [v3 observer];
  [v4 removeDelegate:self];

  v5.receiver = self;
  v5.super_class = IDSGroupContextController;
  [(IDSGroupContextController *)&v5 dealloc];
}

- (IDSGroupContextController)initWithServiceName:(id)a3 queue:(id)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (_IDSRunningInDaemon())
  {
    v12 = [MEMORY[0x1E699BB90] groupContext];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_195B268D8(self, v12);
    }

    v13 = 0;
  }

  else
  {
    v17.receiver = self;
    v17.super_class = IDSGroupContextController;
    v14 = [(IDSGroupContextController *)&v17 init];
    v15 = v14;
    if (v14)
    {
      objc_storeStrong(&v14->_queue, a4);
      v15->_delegate = v11;
      objc_storeStrong(&v15->_serviceName, a3);
    }

    self = v15;
    v13 = self;
  }

  return v13;
}

- (void)groupContextWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A6E6C0;
  v6[3] = &unk_1E7440C08;
  v7 = v4;
  v5 = v4;
  [(IDSGroupContextController *)self _contentWithCompletion:v6];
}

- (void)scheduleTransactionLogTask:(id)a3
{
  v4 = a3;
  v5 = [(IDSGroupContextController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(IDSGroupContextController *)self queue];
  v7 = [IDSTransactionLogTaskHandler handlerWithTask:v4 delegate:self queue:v6];

  [v7 perform];
}

- (void)taskHandler:(id)a3 groupsWithGroupIDs:(id)a4 completion:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [(IDSGroupContextController *)self queue];
  dispatch_assert_queue_V2(v9);

  v10 = [MEMORY[0x1E699BB90] groupContext];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v19 = [v7 count];
    _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_INFO, "Fetching groups from groupIDs {groupIDs.count: %ld}", buf, 0xCu);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_195A6E94C;
  v14[3] = &unk_1E7440CA8;
  v15 = v7;
  v16 = self;
  v17 = v8;
  v11 = v8;
  v12 = v7;
  [(IDSGroupContextController *)self groupContextWithCompletion:v14];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)taskHandler:(id)a3 participantsWithDestinations:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(IDSGroupContextController *)self queue];
  dispatch_assert_queue_V2(v9);

  v10 = +[IDSIDQueryController sharedInstance];
  v11 = [(IDSGroupContextController *)self queue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_195A6EF64;
  v13[3] = &unk_1E7440CD0;
  v13[4] = self;
  v14 = v7;
  v12 = v7;
  [v10 participantsForDestinations:v8 service:@"com.apple.madrid" listenerID:@"kIDSGroupContextControllerListenerID" queue:v11 completionBlock:v13];
}

- (void)taskHandler:(id)a3 messagesFromToken:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(IDSGroupContextController *)self queue];
  dispatch_assert_queue_V2(v9);

  v10 = [MEMORY[0x1E699BB90] groupContext];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_INFO, "Fetching transport log messages", buf, 2u);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_195A6F100;
  v13[3] = &unk_1E7440D20;
  v14 = v7;
  v15 = v8;
  v11 = v8;
  v12 = v7;
  [(IDSGroupContextController *)self _contentWithCompletion:v13];
}

- (void)taskHandler:(id)a3 persistToken:(id)a4 completion:(id)a5
{
  v6 = MEMORY[0x1E696ACC8];
  v7 = a5;
  v9 = [v6 archivedDataWithRootObject:a4 requiringSecureCoding:0 error:0];
  v8 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v8 setObject:v9 forKey:@"kIDSGroupContextControllerPersistedToken"];

  v7[2](v7, 0);
}

- (void)taskHandler:(id)a3 accountInfoForAliases:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195A6F418;
  v11[3] = &unk_1E7440D48;
  v11[4] = self;
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  [(IDSGroupContextController *)self _contentWithCompletion:v11];
}

- (void)didCreateGroup:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IDSGroupContextController *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195A6F684;
  block[3] = &unk_1E743E9B8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)didCacheGroup:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IDSGroupContextController *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195A6F808;
  block[3] = &unk_1E743E9B8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)didUpdateGroup:(id)a3 withNewGroup:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(IDSGroupContextController *)self queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195A6F9B4;
  v15[3] = &unk_1E743F318;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)didReceiveDecryptionFailureForGroup:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IDSGroupContextController *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195A6FB50;
  block[3] = &unk_1E743E9B8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)didReceiveRegistrationIdentityUpdateWithCompletion:(id)a3
{
  v4 = [(IDSGroupContextController *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195A6FC84;
  block[3] = &unk_1E743E878;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)qSetupSeal
{
  v3 = objc_alloc(MEMORY[0x1E69956D0]);
  v5 = [(IDSGroupContextController *)self queue];
  v4 = [v3 initWithQueue:v5];
  [(IDSGroupContextController *)self setSeal:v4];
}

- (void)qGroupContextWithDeviceIdentity:(id)a3 completion:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E699BB68];
  v6 = a3;
  v7 = [v5 alloc];
  v8 = [v6 accountIdentity];
  v9 = [v7 initWithAccountKey:v8 deviceKey:v6];

  v10 = [IDSGroupContextDataSource alloc];
  v11 = [(IDSGroupContextController *)self queue];
  v12 = [(IDSGroupContextDataSource *)v10 initWithQueue:v11];

  v13 = objc_alloc(MEMORY[0x1E699BB78]);
  v14 = [(IDSGroupContextController *)self queue];
  v15 = [v13 initWithAccountIdentity:v9 dataSource:v12 queue:v14];

  v16 = [MEMORY[0x1E6995700] weakRefWithObject:self];
  v17 = objc_alloc(MEMORY[0x1E699BB80]);
  v18 = [(IDSGroupContextController *)self queue];
  v19 = [v17 initWithQueue:v18];

  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = sub_195A70054;
  v30 = &unk_1E7440D98;
  v20 = v16;
  v31 = v20;
  v32 = self;
  [v19 setOnGroupCreate:&v27];
  [v15 appendMiddleware:{v19, v27, v28, v29, v30}];
  [v15 appendMiddleware:v12];
  v21 = objc_alloc_init(IDSGroupContextControllerContent);
  [(IDSGroupContextControllerContent *)v21 setGroupContext:v15];
  [(IDSGroupContextControllerContent *)v21 setAccountIdentity:v9];
  v22 = [(IDSGroupContextController *)self seal];
  [v22 fulfillWithValue:v21];

  v23 = +[IDSDaemonProtocolController sharedInstance];
  v24 = [v23 observer];
  [v24 addDelegate:self];

  v25 = [MEMORY[0x1E699BB90] groupContext];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v34 = v15;
    _os_log_impl(&dword_1959FF000, v25, OS_LOG_TYPE_INFO, "Group Context Created %@", buf, 0xCu);
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)_contentWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IDSGroupContextController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(IDSGroupContextController *)self seal];

  if (!v6)
  {
    [(IDSGroupContextController *)self qSetupSeal];
  }

  v7 = [(IDSGroupContextController *)self seal];
  v8 = [v7 promise];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195A701D4;
  v10[3] = &unk_1E7440DC0;
  v11 = v4;
  v9 = v4;
  [v8 registerResultBlock:v10];
}

@end