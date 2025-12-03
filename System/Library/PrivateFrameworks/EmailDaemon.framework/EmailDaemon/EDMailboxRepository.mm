@interface EDMailboxRepository
+ (OS_os_log)log;
- (BOOL)_performCreateMailboxChangeAction:(id)action;
- (BOOL)_performDeleteMailboxChangeAction:(id)action;
- (BOOL)_performMoveMailboxChangeAction:(id)action;
- (BOOL)_performRenameMailboxChangeAction:(id)action;
- (EDMailboxRepository)initWithMailboxPersistence:(id)persistence;
- (void)cancelObservation:(id)observation;
- (void)getAllMailboxObjectIDsWithCompletion:(id)completion;
- (void)getMailboxesWithCompletion:(id)completion;
- (void)mailboxObjectIDsForMailboxType:(int64_t)type completionHandler:(id)handler;
- (void)mailboxTypeForMailboxObjectID:(id)d completionHandler:(id)handler;
- (void)performMailboxChangeAction:(id)action completionHandler:(id)handler;
- (void)recordFrecencyEventWithMailboxesWithIDs:(id)ds;
- (void)refreshMailboxList:(int64_t)list;
- (void)startObservingMailboxChangesWithChangeObserver:(id)observer observationIdentifier:(id)identifier;
- (void)testRecordFrecencyEventsForAllMailboxes;
- (void)testResetFrecencyForAllMailboxes;
@end

@implementation EDMailboxRepository

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__EDMailboxRepository_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_53 != -1)
  {
    dispatch_once(&log_onceToken_53, block);
  }

  v2 = log_log_53;

  return v2;
}

void __26__EDMailboxRepository_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_53;
  log_log_53 = v1;
}

- (EDMailboxRepository)initWithMailboxPersistence:(id)persistence
{
  v17[1] = *MEMORY[0x1E69E9840];
  persistenceCopy = persistence;
  v16.receiver = self;
  v16.super_class = EDMailboxRepository;
  v6 = [(EDMailboxRepository *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mailboxPersistence, persistence);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_USER_INITIATED, 0);
    v10 = dispatch_queue_create("com.apple.email.EDMessageRepository.serializationQueue", v9);
    serializationQueue = v7->_serializationQueue;
    v7->_serializationQueue = v10;

    v12 = MEMORY[0x1E699AE28];
    v17[0] = *MEMORY[0x1E699AB08];
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    [v12 addValidSortDescriptorKeyPaths:v13 forTargetClass:objc_opt_class()];
  }

  v14 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)getMailboxesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[EDMailboxRepository log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_INFO, "Get All Mailboxes", buf, 2u);
  }

  v6 = objc_autoreleasePoolPush();
  mailboxPersistence = [(EDMailboxRepository *)self mailboxPersistence];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__EDMailboxRepository_getMailboxesWithCompletion___block_invoke;
  v9[3] = &unk_1E82534B0;
  v8 = completionCopy;
  v10 = v8;
  [mailboxPersistence allMailboxesWithCompletionHandler:v9];

  objc_autoreleasePoolPop(v6);
}

void __50__EDMailboxRepository_getMailboxesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[EDMailboxRepository log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 134217984;
    v7 = [v3 count];
    _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_INFO, "Number of Mailboxes %ld count", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

- (void)startObservingMailboxChangesWithChangeObserver:(id)observer observationIdentifier:(id)identifier
{
  v13 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  identifierCopy = identifier;
  v8 = +[EDMailboxRepository log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v11 = 138543362;
    v12 = identifierCopy;
    _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_INFO, "Registering For Mailbox Observation With Observer %{public}@", &v11, 0xCu);
  }

  mailboxPersistence = [(EDMailboxRepository *)self mailboxPersistence];
  [mailboxPersistence addChangeObserver:observerCopy withIdentifier:identifierCopy];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)cancelObservation:(id)observation
{
  v10 = *MEMORY[0x1E69E9840];
  observationCopy = observation;
  v5 = +[EDMailboxRepository log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138543362;
    v9 = observationCopy;
    _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_INFO, "Unregistering For Mailbox Observation With Observer %{public}@", &v8, 0xCu);
  }

  mailboxPersistence = [(EDMailboxRepository *)self mailboxPersistence];
  [mailboxPersistence removeChangeObserverWithIdentifier:observationCopy];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)performMailboxChangeAction:(id)action completionHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  handlerCopy = handler;
  v8 = +[EDMailboxRepository log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = actionCopy;
    _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "Perform Change Action:%{public}@", buf, 0xCu);
  }

  serializationQueue = [(EDMailboxRepository *)self serializationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__EDMailboxRepository_performMailboxChangeAction_completionHandler___block_invoke;
  block[3] = &unk_1E82534D8;
  block[4] = self;
  v14 = actionCopy;
  v15 = handlerCopy;
  v10 = handlerCopy;
  v11 = actionCopy;
  dispatch_async(serializationQueue, block);

  v12 = *MEMORY[0x1E69E9840];
}

void __68__EDMailboxRepository_performMailboxChangeAction_completionHandler___block_invoke(uint64_t a1)
{
  v8 = [*(a1 + 32) mailboxPersistence];
  v2 = [v8 mailboxProvider];
  [v2 beginDeferringInvalidation];

  v3 = *(a1 + 40);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) _performCreateMailboxChangeAction:*(a1 + 40)];
  }

  else
  {
    v4 = *(a1 + 40);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) _performDeleteMailboxChangeAction:*(a1 + 40)];
    }

    else
    {
      v5 = *(a1 + 40);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(a1 + 32) _performMoveMailboxChangeAction:*(a1 + 40)];
      }

      else
      {
        v6 = *(a1 + 40);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [*(a1 + 32) _performRenameMailboxChangeAction:*(a1 + 40)];
        }
      }
    }
  }

  (*(*(a1 + 48) + 16))();
  v9 = [*(a1 + 32) mailboxPersistence];
  v7 = [v9 mailboxProvider];
  [v7 endDeferringInvalidation];
}

- (void)refreshMailboxList:(int64_t)list
{
  v3 = 0xAAAAAAAAAAAAAAAALL;
  if (list == 1)
  {
    v3 = 1;
  }

  if (list)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  mailboxPersistence = [(EDMailboxRepository *)self mailboxPersistence];
  [mailboxPersistence fetchMailboxListsWithKind:v4];
}

- (void)getAllMailboxObjectIDsWithCompletion:(id)completion
{
  completionCopy = completion;
  mailboxPersistence = [(EDMailboxRepository *)self mailboxPersistence];
  allMailboxes = [mailboxPersistence allMailboxes];

  v6 = [allMailboxes ef_compactMap:&__block_literal_global_45];
  v7 = [MEMORY[0x1E695DFD8] setWithArray:v6];
  completionCopy[2](completionCopy, v7);
}

id __60__EDMailboxRepository_getAllMailboxObjectIDsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectID];

  return v2;
}

- (void)mailboxObjectIDsForMailboxType:(int64_t)type completionHandler:(id)handler
{
  handlerCopy = handler;
  mailboxPersistence = [(EDMailboxRepository *)self mailboxPersistence];
  allMailboxes = [mailboxPersistence allMailboxes];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__EDMailboxRepository_mailboxObjectIDsForMailboxType_completionHandler___block_invoke;
  v12[3] = &__block_descriptor_40_e19_B16__0__EMMailbox_8l;
  v12[4] = type;
  v9 = [allMailboxes ef_filter:v12];
  v10 = [v9 ef_compactMap:&__block_literal_global_16];

  v11 = [MEMORY[0x1E695DFD8] setWithArray:v10];
  handlerCopy[2](handlerCopy, v11);
}

id __72__EDMailboxRepository_mailboxObjectIDsForMailboxType_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 objectID];

  return v2;
}

- (void)mailboxTypeForMailboxObjectID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  mailboxPersistence = [(EDMailboxRepository *)self mailboxPersistence];
  allMailboxes = [mailboxPersistence allMailboxes];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71__EDMailboxRepository_mailboxTypeForMailboxObjectID_completionHandler___block_invoke;
  v14[3] = &unk_1E8253370;
  v10 = dCopy;
  v15 = v10;
  v11 = [allMailboxes ef_firstObjectPassingTest:v14];
  v12 = v11;
  if (v11)
  {
    type = [v11 type];
  }

  else
  {
    type = -500;
  }

  handlerCopy[2](handlerCopy, type);
}

uint64_t __71__EDMailboxRepository_mailboxTypeForMailboxObjectID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (BOOL)_performCreateMailboxChangeAction:(id)action
{
  actionCopy = action;
  mailboxPersistence = [(EDMailboxRepository *)self mailboxPersistence];
  name = [actionCopy name];
  mailboxObjectID = [actionCopy mailboxObjectID];
  v8 = [mailboxPersistence createMailbox:name parentMailboxID:mailboxObjectID];

  return v8;
}

- (BOOL)_performDeleteMailboxChangeAction:(id)action
{
  actionCopy = action;
  mailboxPersistence = [(EDMailboxRepository *)self mailboxPersistence];
  mailboxObjectID = [actionCopy mailboxObjectID];
  v7 = [mailboxPersistence deleteMailbox:mailboxObjectID];

  return v7;
}

- (BOOL)_performMoveMailboxChangeAction:(id)action
{
  actionCopy = action;
  mailboxPersistence = [(EDMailboxRepository *)self mailboxPersistence];
  mailboxObjectID = [actionCopy mailboxObjectID];
  parentMailboxID = [actionCopy parentMailboxID];
  v8 = [mailboxPersistence moveMailbox:mailboxObjectID newParentMailboxID:parentMailboxID];

  return v8;
}

- (BOOL)_performRenameMailboxChangeAction:(id)action
{
  actionCopy = action;
  mailboxPersistence = [(EDMailboxRepository *)self mailboxPersistence];
  mailboxObjectID = [actionCopy mailboxObjectID];
  name = [actionCopy name];
  v8 = [mailboxPersistence renameMailbox:mailboxObjectID newName:name];

  return v8;
}

- (void)recordFrecencyEventWithMailboxesWithIDs:(id)ds
{
  dsCopy = ds;
  mailboxPersistence = [(EDMailboxRepository *)self mailboxPersistence];
  [mailboxPersistence recordFrecencyEventWithMailboxesWithIDs:dsCopy];
}

- (void)testRecordFrecencyEventsForAllMailboxes
{
  mailboxPersistence = [(EDMailboxRepository *)self mailboxPersistence];
  [mailboxPersistence testRecordFrecencyEventsForAllMailboxes];
}

- (void)testResetFrecencyForAllMailboxes
{
  mailboxPersistence = [(EDMailboxRepository *)self mailboxPersistence];
  [mailboxPersistence testResetFrecencyForAllMailboxes];
}

@end