@interface FCBackgroundActivityScheduler
- (id)_makeFullIdentifierFromIdentifier:(id)identifier;
- (int64_t)_makeFromFCResult:(int64_t)result;
- (void)cancelRepeatingTaskWithIdentifier:(id)identifier;
- (void)requestBackgroundAppRefreshStartingAfter:(id)after before:(id)before;
- (void)scheduleBackgroundTaskRepeatingAtInterval:(double)interval identifier:(id)identifier task:(id)task;
@end

@implementation FCBackgroundActivityScheduler

- (void)scheduleBackgroundTaskRepeatingAtInterval:(double)interval identifier:(id)identifier task:(id)task
{
  taskCopy = task;
  v9 = [(FCBackgroundActivityScheduler *)self _makeFullIdentifierFromIdentifier:identifier];
  v10 = [objc_alloc(MEMORY[0x1E696AAD0]) initWithIdentifier:v9];
  [v10 setRepeats:1];
  [v10 setInterval:interval];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __91__FCBackgroundActivityScheduler_scheduleBackgroundTaskRepeatingAtInterval_identifier_task___block_invoke;
  v13[3] = &unk_1E7C42158;
  v14 = v10;
  selfCopy = self;
  v16 = taskCopy;
  v11 = taskCopy;
  v12 = v10;
  [v12 scheduleWithBlock:v13];
}

void __91__FCBackgroundActivityScheduler_scheduleBackgroundTaskRepeatingAtInterval_identifier_task___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __91__FCBackgroundActivityScheduler_scheduleBackgroundTaskRepeatingAtInterval_identifier_task___block_invoke_2;
  aBlock[3] = &unk_1E7C36F40;
  v10 = *(a1 + 32);
  v4 = _Block_copy(aBlock);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __91__FCBackgroundActivityScheduler_scheduleBackgroundTaskRepeatingAtInterval_identifier_task___block_invoke_3;
  v7[3] = &unk_1E7C42130;
  v7[4] = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  v6 = _Block_copy(v7);
  (*(*(a1 + 48) + 16))();
}

uint64_t __91__FCBackgroundActivityScheduler_scheduleBackgroundTaskRepeatingAtInterval_identifier_task___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) _makeFromFCResult:a2];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (void)cancelRepeatingTaskWithIdentifier:(id)identifier
{
  v4 = [(FCBackgroundActivityScheduler *)self _makeFullIdentifierFromIdentifier:identifier];
  v3 = [objc_alloc(MEMORY[0x1E696AAD0]) initWithIdentifier:v4];
  [v3 invalidate];
}

- (void)requestBackgroundAppRefreshStartingAfter:(id)after before:(id)before
{
  v5 = MEMORY[0x1E699A4B8];
  beforeCopy = before;
  afterCopy = after;
  scheduler = [v5 scheduler];
  v8 = MEMORY[0x1E699A488];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v11 = *MEMORY[0x1E699A570];
  mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier2 = [mainBundle2 bundleIdentifier];
  v14 = [v8 applicationLaunchActivityWithName:bundleIdentifier priority:v11 forApplication:bundleIdentifier2 withReason:*MEMORY[0x1E699A540] duration:*MEMORY[0x1E699A4F0] startingAfter:afterCopy startingBefore:beforeCopy];

  [v14 setRequiresNetwork:1];
  [scheduler submitActivity:v14];
}

- (int64_t)_makeFromFCResult:(int64_t)result
{
  if (result == 2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (id)_makeFullIdentifierFromIdentifier:(id)identifier
{
  v3 = MEMORY[0x1E696AAE8];
  identifierCopy = identifier;
  mainBundle = [v3 mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  v7 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:bundleIdentifier];
  [v7 appendString:@"."];
  [v7 appendString:identifierCopy];

  return v7;
}

@end