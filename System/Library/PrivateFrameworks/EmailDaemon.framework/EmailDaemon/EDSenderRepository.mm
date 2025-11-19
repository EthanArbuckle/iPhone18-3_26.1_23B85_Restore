@interface EDSenderRepository
+ (id)log;
- (EDSenderRepository)initWithSenderPersistence:(id)a3;
- (void)simpleAddressesForRelevantSendersForSearchWithCompletionHandler:(id)a3;
@end

@implementation EDSenderRepository

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__EDSenderRepository_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_94 != -1)
  {
    dispatch_once(&log_onceToken_94, block);
  }

  v2 = log_log_94;

  return v2;
}

void __25__EDSenderRepository_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_94;
  log_log_94 = v1;
}

- (EDSenderRepository)initWithSenderPersistence:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = EDSenderRepository;
  v6 = [(EDSenderRepository *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_senderPersistence, a3);
    v8 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"EDSenderRepository.persistenceScheduler" qualityOfService:25];
    persistenceScheduler = v7->_persistenceScheduler;
    v7->_persistenceScheduler = v8;
  }

  return v7;
}

- (void)simpleAddressesForRelevantSendersForSearchWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(EDSenderRepository *)self persistenceScheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __86__EDSenderRepository_simpleAddressesForRelevantSendersForSearchWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E8250C30;
  v7[4] = self;
  v6 = v4;
  v8 = v6;
  [v5 performVoucherPreservingBlock:v7];
}

void __86__EDSenderRepository_simpleAddressesForRelevantSendersForSearchWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) senderPersistence];
  v3 = [v2 relevantSendersForSearch];

  (*(*(a1 + 40) + 16))();
}

@end