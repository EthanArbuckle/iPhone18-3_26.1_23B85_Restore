@interface EMSenderRepository
+ (id)log;
- (id)performQuery:(id)query withObserver:(id)observer;
- (void)refreshQueryWithObserver:(id)observer;
- (void)simpleAddressesForRelevantSendersWithCompletion:(id)completion;
@end

@implementation EMSenderRepository

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__EMSenderRepository_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_38 != -1)
  {
    dispatch_once(&log_onceToken_38, block);
  }

  v2 = log_log_38;

  return v2;
}

void __25__EMSenderRepository_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_38;
  log_log_38 = v1;
}

- (id)performQuery:(id)query withObserver:(id)observer
{
  queryCopy = query;
  observerCopy = observer;
  [(EMSenderRepository *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EMSenderRepository performQuery:withObserver:]", "EMSenderRepository.m", 26, "0");
}

- (void)refreshQueryWithObserver:(id)observer
{
  observerCopy = observer;
  [(EMSenderRepository *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[EMSenderRepository refreshQueryWithObserver:]", "EMSenderRepository.m", 30, "0");
}

- (void)simpleAddressesForRelevantSendersWithCompletion:(id)completion
{
  completionCopy = completion;
  connection = [(EMRepository *)self connection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__EMSenderRepository_simpleAddressesForRelevantSendersWithCompletion___block_invoke;
  v11[3] = &unk_1E826EAC0;
  v11[4] = self;
  v6 = completionCopy;
  v12 = v6;
  v7 = [connection remoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__EMSenderRepository_simpleAddressesForRelevantSendersWithCompletion___block_invoke_3;
  v9[3] = &unk_1E826D218;
  v9[4] = self;
  v8 = v6;
  v10 = v8;
  [v7 simpleAddressesForRelevantSendersForSearchWithCompletionHandler:v9];
}

void __70__EMSenderRepository_simpleAddressesForRelevantSendersWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) observerScheduler];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__EMSenderRepository_simpleAddressesForRelevantSendersWithCompletion___block_invoke_2;
  v6[3] = &unk_1E826D1F0;
  v8 = *(a1 + 40);
  v5 = v3;
  v7 = v5;
  [v4 performBlock:v6];
}

void __70__EMSenderRepository_simpleAddressesForRelevantSendersWithCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) observerScheduler];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__EMSenderRepository_simpleAddressesForRelevantSendersWithCompletion___block_invoke_4;
  v10[3] = &unk_1E826E7C0;
  v13 = *(a1 + 40);
  v8 = v5;
  v11 = v8;
  v9 = v6;
  v12 = v9;
  [v7 performBlock:v10];
}

@end