@interface IDSGroupContextController
- (IDSGroupContextController)initWithServiceName:(id)name queue:(id)queue delegate:(id)delegate;
- (void)_contentWithCompletion:(id)completion;
- (void)dealloc;
- (void)didCacheGroup:(id)group completion:(id)completion;
- (void)didCreateGroup:(id)group completion:(id)completion;
- (void)didReceiveDecryptionFailureForGroup:(id)group completion:(id)completion;
- (void)didReceiveRegistrationIdentityUpdateWithCompletion:(id)completion;
- (void)didUpdateGroup:(id)group withNewGroup:(id)newGroup completion:(id)completion;
- (void)groupContextWithCompletion:(id)completion;
- (void)qGroupContextWithDeviceIdentity:(id)identity completion:(id)completion;
- (void)qSetupSeal;
- (void)scheduleTransactionLogTask:(id)task;
- (void)taskHandler:(id)handler accountInfoForAliases:(id)aliases completion:(id)completion;
- (void)taskHandler:(id)handler groupsWithGroupIDs:(id)ds completion:(id)completion;
- (void)taskHandler:(id)handler messagesFromToken:(id)token completion:(id)completion;
- (void)taskHandler:(id)handler participantsWithDestinations:(id)destinations completion:(id)completion;
- (void)taskHandler:(id)handler persistToken:(id)token completion:(id)completion;
@end

@implementation IDSGroupContextController

- (void)dealloc
{
  self->_delegate = 0;
  v3 = +[IDSDaemonProtocolController sharedInstance];
  observer = [v3 observer];
  [observer removeDelegate:self];

  v5.receiver = self;
  v5.super_class = IDSGroupContextController;
  [(IDSGroupContextController *)&v5 dealloc];
}

- (IDSGroupContextController)initWithServiceName:(id)name queue:(id)queue delegate:(id)delegate
{
  nameCopy = name;
  queueCopy = queue;
  delegateCopy = delegate;
  if (_IDSRunningInDaemon())
  {
    groupContext = [MEMORY[0x1E699BB90] groupContext];
    if (os_log_type_enabled(groupContext, OS_LOG_TYPE_ERROR))
    {
      sub_195B268D8(self, groupContext);
    }

    selfCopy = 0;
  }

  else
  {
    v17.receiver = self;
    v17.super_class = IDSGroupContextController;
    v14 = [(IDSGroupContextController *)&v17 init];
    v15 = v14;
    if (v14)
    {
      objc_storeStrong(&v14->_queue, queue);
      v15->_delegate = delegateCopy;
      objc_storeStrong(&v15->_serviceName, name);
    }

    self = v15;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)groupContextWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A6E6C0;
  v6[3] = &unk_1E7440C08;
  v7 = completionCopy;
  v5 = completionCopy;
  [(IDSGroupContextController *)self _contentWithCompletion:v6];
}

- (void)scheduleTransactionLogTask:(id)task
{
  taskCopy = task;
  queue = [(IDSGroupContextController *)self queue];
  dispatch_assert_queue_V2(queue);

  queue2 = [(IDSGroupContextController *)self queue];
  v7 = [IDSTransactionLogTaskHandler handlerWithTask:taskCopy delegate:self queue:queue2];

  [v7 perform];
}

- (void)taskHandler:(id)handler groupsWithGroupIDs:(id)ds completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  completionCopy = completion;
  queue = [(IDSGroupContextController *)self queue];
  dispatch_assert_queue_V2(queue);

  groupContext = [MEMORY[0x1E699BB90] groupContext];
  if (os_log_type_enabled(groupContext, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v19 = [dsCopy count];
    _os_log_impl(&dword_1959FF000, groupContext, OS_LOG_TYPE_INFO, "Fetching groups from groupIDs {groupIDs.count: %ld}", buf, 0xCu);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_195A6E94C;
  v14[3] = &unk_1E7440CA8;
  v15 = dsCopy;
  selfCopy = self;
  v17 = completionCopy;
  v11 = completionCopy;
  v12 = dsCopy;
  [(IDSGroupContextController *)self groupContextWithCompletion:v14];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)taskHandler:(id)handler participantsWithDestinations:(id)destinations completion:(id)completion
{
  completionCopy = completion;
  destinationsCopy = destinations;
  queue = [(IDSGroupContextController *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = +[IDSIDQueryController sharedInstance];
  queue2 = [(IDSGroupContextController *)self queue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_195A6EF64;
  v13[3] = &unk_1E7440CD0;
  v13[4] = self;
  v14 = completionCopy;
  v12 = completionCopy;
  [v10 participantsForDestinations:destinationsCopy service:@"com.apple.madrid" listenerID:@"kIDSGroupContextControllerListenerID" queue:queue2 completionBlock:v13];
}

- (void)taskHandler:(id)handler messagesFromToken:(id)token completion:(id)completion
{
  tokenCopy = token;
  completionCopy = completion;
  queue = [(IDSGroupContextController *)self queue];
  dispatch_assert_queue_V2(queue);

  groupContext = [MEMORY[0x1E699BB90] groupContext];
  if (os_log_type_enabled(groupContext, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1959FF000, groupContext, OS_LOG_TYPE_INFO, "Fetching transport log messages", buf, 2u);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_195A6F100;
  v13[3] = &unk_1E7440D20;
  v14 = tokenCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = tokenCopy;
  [(IDSGroupContextController *)self _contentWithCompletion:v13];
}

- (void)taskHandler:(id)handler persistToken:(id)token completion:(id)completion
{
  v6 = MEMORY[0x1E696ACC8];
  completionCopy = completion;
  v9 = [v6 archivedDataWithRootObject:token requiringSecureCoding:0 error:0];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setObject:v9 forKey:@"kIDSGroupContextControllerPersistedToken"];

  completionCopy[2](completionCopy, 0);
}

- (void)taskHandler:(id)handler accountInfoForAliases:(id)aliases completion:(id)completion
{
  aliasesCopy = aliases;
  completionCopy = completion;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195A6F418;
  v11[3] = &unk_1E7440D48;
  v11[4] = self;
  v12 = aliasesCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = aliasesCopy;
  [(IDSGroupContextController *)self _contentWithCompletion:v11];
}

- (void)didCreateGroup:(id)group completion:(id)completion
{
  groupCopy = group;
  completionCopy = completion;
  queue = [(IDSGroupContextController *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195A6F684;
  block[3] = &unk_1E743E9B8;
  block[4] = self;
  v12 = groupCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = groupCopy;
  dispatch_async(queue, block);
}

- (void)didCacheGroup:(id)group completion:(id)completion
{
  groupCopy = group;
  completionCopy = completion;
  queue = [(IDSGroupContextController *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195A6F808;
  block[3] = &unk_1E743E9B8;
  block[4] = self;
  v12 = groupCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = groupCopy;
  dispatch_async(queue, block);
}

- (void)didUpdateGroup:(id)group withNewGroup:(id)newGroup completion:(id)completion
{
  groupCopy = group;
  newGroupCopy = newGroup;
  completionCopy = completion;
  queue = [(IDSGroupContextController *)self queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195A6F9B4;
  v15[3] = &unk_1E743F318;
  v15[4] = self;
  v16 = groupCopy;
  v17 = newGroupCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = newGroupCopy;
  v14 = groupCopy;
  dispatch_async(queue, v15);
}

- (void)didReceiveDecryptionFailureForGroup:(id)group completion:(id)completion
{
  groupCopy = group;
  completionCopy = completion;
  queue = [(IDSGroupContextController *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195A6FB50;
  block[3] = &unk_1E743E9B8;
  block[4] = self;
  v12 = groupCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = groupCopy;
  dispatch_async(queue, block);
}

- (void)didReceiveRegistrationIdentityUpdateWithCompletion:(id)completion
{
  queue = [(IDSGroupContextController *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195A6FC84;
  block[3] = &unk_1E743E878;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)qSetupSeal
{
  v3 = objc_alloc(MEMORY[0x1E69956D0]);
  queue = [(IDSGroupContextController *)self queue];
  v4 = [v3 initWithQueue:queue];
  [(IDSGroupContextController *)self setSeal:v4];
}

- (void)qGroupContextWithDeviceIdentity:(id)identity completion:(id)completion
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E699BB68];
  identityCopy = identity;
  v7 = [v5 alloc];
  accountIdentity = [identityCopy accountIdentity];
  v9 = [v7 initWithAccountKey:accountIdentity deviceKey:identityCopy];

  v10 = [IDSGroupContextDataSource alloc];
  queue = [(IDSGroupContextController *)self queue];
  v12 = [(IDSGroupContextDataSource *)v10 initWithQueue:queue];

  v13 = objc_alloc(MEMORY[0x1E699BB78]);
  queue2 = [(IDSGroupContextController *)self queue];
  v15 = [v13 initWithAccountIdentity:v9 dataSource:v12 queue:queue2];

  v16 = [MEMORY[0x1E6995700] weakRefWithObject:self];
  v17 = objc_alloc(MEMORY[0x1E699BB80]);
  queue3 = [(IDSGroupContextController *)self queue];
  v19 = [v17 initWithQueue:queue3];

  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = sub_195A70054;
  v30 = &unk_1E7440D98;
  v20 = v16;
  v31 = v20;
  selfCopy = self;
  [v19 setOnGroupCreate:&v27];
  [v15 appendMiddleware:{v19, v27, v28, v29, v30}];
  [v15 appendMiddleware:v12];
  v21 = objc_alloc_init(IDSGroupContextControllerContent);
  [(IDSGroupContextControllerContent *)v21 setGroupContext:v15];
  [(IDSGroupContextControllerContent *)v21 setAccountIdentity:v9];
  seal = [(IDSGroupContextController *)self seal];
  [seal fulfillWithValue:v21];

  v23 = +[IDSDaemonProtocolController sharedInstance];
  observer = [v23 observer];
  [observer addDelegate:self];

  groupContext = [MEMORY[0x1E699BB90] groupContext];
  if (os_log_type_enabled(groupContext, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v34 = v15;
    _os_log_impl(&dword_1959FF000, groupContext, OS_LOG_TYPE_INFO, "Group Context Created %@", buf, 0xCu);
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)_contentWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(IDSGroupContextController *)self queue];
  dispatch_assert_queue_V2(queue);

  seal = [(IDSGroupContextController *)self seal];

  if (!seal)
  {
    [(IDSGroupContextController *)self qSetupSeal];
  }

  seal2 = [(IDSGroupContextController *)self seal];
  promise = [seal2 promise];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195A701D4;
  v10[3] = &unk_1E7440DC0;
  v11 = completionCopy;
  v9 = completionCopy;
  [promise registerResultBlock:v10];
}

@end