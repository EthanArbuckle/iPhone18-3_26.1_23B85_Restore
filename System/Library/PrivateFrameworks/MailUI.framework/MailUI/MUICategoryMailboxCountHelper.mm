@interface MUICategoryMailboxCountHelper
+ (id)log;
- (MUICategoryMailboxCountHelper)initWithMailboxes:(id)mailboxes messageRepository:(id)repository;
- (id)messageCount;
- (void)_fetchCountForPrimaryOnly:(BOOL)only completion:(id)completion;
@end

@implementation MUICategoryMailboxCountHelper

+ (id)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__MUICategoryMailboxCountHelper_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_9 != -1)
  {
    dispatch_once(&log_onceToken_9, block);
  }

  v2 = log_log_9;

  return v2;
}

void __36__MUICategoryMailboxCountHelper_log__block_invoke(uint64_t a1)
{
  v4 = NSStringFromClass(*(a1 + 32));
  v1 = v4;
  v2 = os_log_create("com.apple.email", [v4 UTF8String]);
  v3 = log_log_9;
  log_log_9 = v2;
}

- (MUICategoryMailboxCountHelper)initWithMailboxes:(id)mailboxes messageRepository:(id)repository
{
  mailboxesCopy = mailboxes;
  repositoryCopy = repository;
  v12.receiver = self;
  v12.super_class = MUICategoryMailboxCountHelper;
  v9 = [(MUICategoryMailboxCountHelper *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mailboxes, mailboxes);
    objc_storeStrong(&v10->_messageRepository, repository);
  }

  return v10;
}

- (id)messageCount
{
  promise = [MEMORY[0x277D071A8] promise];
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v22[3] = -1;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v21[3] = -1;
  v4 = dispatch_group_create();
  dispatch_group_enter(v4);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __45__MUICategoryMailboxCountHelper_messageCount__block_invoke;
  v18[3] = &unk_27818A4F0;
  v20 = v22;
  v5 = v4;
  v19 = v5;
  [(MUICategoryMailboxCountHelper *)self _fetchCountForPrimaryOnly:1 completion:v18];
  dispatch_group_enter(v5);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __45__MUICategoryMailboxCountHelper_messageCount__block_invoke_2;
  v15[3] = &unk_27818A4F0;
  v17 = v21;
  v6 = v5;
  v16 = v6;
  [(MUICategoryMailboxCountHelper *)self _fetchCountForPrimaryOnly:0 completion:v15];
  v7 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__MUICategoryMailboxCountHelper_messageCount__block_invoke_3;
  block[3] = &unk_27818A518;
  v13 = v22;
  v14 = v21;
  v8 = promise;
  v12 = v8;
  dispatch_group_notify(v6, v7, block);

  future = [v8 future];

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(v22, 8);

  return future;
}

void __45__MUICategoryMailboxCountHelper_messageCount__block_invoke_3(uint64_t a1)
{
  v2 = objc_alloc_init(MUICategoryMailboxCount);
  [(MUICategoryMailboxCount *)v2 setPrimaryCount:*(*(*(a1 + 40) + 8) + 24)];
  [(MUICategoryMailboxCount *)v2 setFullCount:*(*(*(a1 + 48) + 8) + 24)];
  [*(a1 + 32) finishWithResult:v2];
}

- (void)_fetchCountForPrimaryOnly:(BOOL)only completion:(id)completion
{
  onlyCopy = only;
  completionCopy = completion;
  array = [MEMORY[0x277CBEB18] array];
  v8 = MEMORY[0x277D06E08];
  mailboxes = [(MUICategoryMailboxCountHelper *)self mailboxes];
  v10 = [v8 predicateForMessagesInMailboxes:mailboxes];
  [array addObject:v10];

  predicateForUnreadMessages = [MEMORY[0x277D06E08] predicateForUnreadMessages];
  [array addObject:predicateForUnreadMessages];

  if (onlyCopy)
  {
    predicateForPrimaryMessages = [MEMORY[0x277D06E08] predicateForPrimaryMessages];
    [array addObject:predicateForPrimaryMessages];
  }

  v13 = [MEMORY[0x277CCAC30] ef_andCompoundPredicateWithSubpredicates:array];
  v14 = objc_alloc(MEMORY[0x277D06E80]);
  v15 = objc_opt_class();
  onlyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"MUICategoryMailboxCountHelper-%d", onlyCopy];
  v17 = [v14 initWithTargetClass:v15 predicate:v13 sortDescriptors:MEMORY[0x277CBEBF8] queryOptions:0 label:onlyCopy];

  messageRepository = [(MUICategoryMailboxCountHelper *)self messageRepository];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __70__MUICategoryMailboxCountHelper__fetchCountForPrimaryOnly_completion___block_invoke;
  v20[3] = &unk_27818A540;
  v22 = onlyCopy;
  v21 = completionCopy;
  v19 = completionCopy;
  [messageRepository performCountQuery:v17 completionHandler:v20];
}

void __70__MUICategoryMailboxCountHelper__fetchCountForPrimaryOnly_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!a2 || v5)
  {
    v7 = +[MUICategoryMailboxCountHelper log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __70__MUICategoryMailboxCountHelper__fetchCountForPrimaryOnly_completion___block_invoke_cold_1(a1, v6, v7);
    }

    (*(*(a1 + 32) + 16))(*(a1 + 32), -1);
  }

  else
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), [a2 integerValue]);
  }
}

void __70__MUICategoryMailboxCountHelper__fetchCountForPrimaryOnly_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v4[0] = 67109378;
  v4[1] = v3;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_214A5E000, log, OS_LOG_TYPE_ERROR, "Failed to get category counts for primaryOnly: %{BOOL}d, error: %{public}@", v4, 0x12u);
}

@end