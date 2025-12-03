@interface ICPaperSearchIndexerBackgroundTask
+ (id)makeTaskRequest;
- (ICPaperSearchIndexerBackgroundTask)initWithNoteContext:(id)context;
- (void)didRegister:(BOOL)register;
- (void)handleTaskExpiration;
- (void)runTaskWithCompletion:(id)completion;
@end

@implementation ICPaperSearchIndexerBackgroundTask

+ (id)makeTaskRequest
{
  v2 = [objc_alloc(MEMORY[0x1E695A9D0]) initWithIdentifier:@"com.apple.notes.paper.indexer"];
  [v2 setRequiresExternalPower:1];

  return v2;
}

- (ICPaperSearchIndexerBackgroundTask)initWithNoteContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = ICPaperSearchIndexerBackgroundTask;
  v6 = [(ICPaperSearchIndexerBackgroundTask *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_noteContext, context);
  }

  return v7;
}

- (void)didRegister:(BOOL)register
{
  noteContext = [(ICPaperSearchIndexerBackgroundTask *)self noteContext];
  workerManagedObjectContext = [noteContext workerManagedObjectContext];

  v6 = +[ICPaperSearchIndexer shared];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__ICPaperSearchIndexerBackgroundTask_didRegister___block_invoke;
  v7[3] = &unk_1E846BC40;
  v7[4] = self;
  [v6 needsToUpdateIndexWithManagedObjectContext:workerManagedObjectContext completionHandler:v7];
}

void __50__ICPaperSearchIndexerBackgroundTask_didRegister___block_invoke(uint64_t a1, int a2)
{
  v3 = os_log_create("com.apple.notes", "SystemPaper");
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (a2)
  {
    if (v4)
    {
      __50__ICPaperSearchIndexerBackgroundTask_didRegister___block_invoke_cold_2();
    }

    v3 = [MEMORY[0x1E69B76D8] sharedScheduler];
    [v3 scheduleTask:objc_opt_class() completion:0];
  }

  else if (v4)
  {
    __50__ICPaperSearchIndexerBackgroundTask_didRegister___block_invoke_cold_1();
  }
}

- (void)runTaskWithCompletion:(id)completion
{
  completionCopy = completion;
  [MEMORY[0x1E69B7AC0] postBasicEvent:25];
  noteContext = [(ICPaperSearchIndexerBackgroundTask *)self noteContext];
  workerManagedObjectContext = [noteContext workerManagedObjectContext];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__ICPaperSearchIndexerBackgroundTask_runTaskWithCompletion___block_invoke;
  v9[3] = &unk_1E8468CF8;
  v10 = workerManagedObjectContext;
  v11 = completionCopy;
  v7 = completionCopy;
  v8 = workerManagedObjectContext;
  [v8 performBlock:v9];
}

void __60__ICPaperSearchIndexerBackgroundTask_runTaskWithCompletion___block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "SystemPaper");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __60__ICPaperSearchIndexerBackgroundTask_runTaskWithCompletion___block_invoke_cold_1();
  }

  v3 = +[ICPaperSearchIndexer shared];
  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__ICPaperSearchIndexerBackgroundTask_runTaskWithCompletion___block_invoke_16;
  v5[3] = &unk_1E8468CF8;
  v6 = v4;
  v7 = *(a1 + 40);
  [v3 updateIndexWithManagedObjectContext:v6 completionHandler:v5];
}

void __60__ICPaperSearchIndexerBackgroundTask_runTaskWithCompletion___block_invoke_16(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60__ICPaperSearchIndexerBackgroundTask_runTaskWithCompletion___block_invoke_2;
  v3[3] = &unk_1E8468CF8;
  v4 = v2;
  v5 = *(a1 + 40);
  [v4 performBlock:v3];
}

uint64_t __60__ICPaperSearchIndexerBackgroundTask_runTaskWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "SystemPaper");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __60__ICPaperSearchIndexerBackgroundTask_runTaskWithCompletion___block_invoke_2_cold_1();
  }

  [*(a1 + 32) ic_saveWithLogDescription:@"PaperKit indexer background task"];
  [MEMORY[0x1E69B7AC0] postBasicEvent:26];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)handleTaskExpiration
{
  v2 = os_log_create("com.apple.notes", "SystemPaper");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [ICPaperSearchIndexerBackgroundTask handleTaskExpiration];
  }

  v3 = +[ICPaperSearchIndexer shared];
  [v3 cancelEverythingWithCompletion:&__block_literal_global_49];

  mEMORY[0x1E69B76D8] = [MEMORY[0x1E69B76D8] sharedScheduler];
  [mEMORY[0x1E69B76D8] scheduleTask:objc_opt_class() completion:0];
}

@end