@interface FCBackgroundActivityScheduler
- (id)_makeFullIdentifierFromIdentifier:(id)a3;
- (int64_t)_makeFromFCResult:(int64_t)a3;
- (void)cancelRepeatingTaskWithIdentifier:(id)a3;
- (void)requestBackgroundAppRefreshStartingAfter:(id)a3 before:(id)a4;
- (void)scheduleBackgroundTaskRepeatingAtInterval:(double)a3 identifier:(id)a4 task:(id)a5;
@end

@implementation FCBackgroundActivityScheduler

- (void)scheduleBackgroundTaskRepeatingAtInterval:(double)a3 identifier:(id)a4 task:(id)a5
{
  v8 = a5;
  v9 = [(FCBackgroundActivityScheduler *)self _makeFullIdentifierFromIdentifier:a4];
  v10 = [objc_alloc(MEMORY[0x1E696AAD0]) initWithIdentifier:v9];
  [v10 setRepeats:1];
  [v10 setInterval:a3];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __91__FCBackgroundActivityScheduler_scheduleBackgroundTaskRepeatingAtInterval_identifier_task___block_invoke;
  v13[3] = &unk_1E7C42158;
  v14 = v10;
  v15 = self;
  v16 = v8;
  v11 = v8;
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

- (void)cancelRepeatingTaskWithIdentifier:(id)a3
{
  v4 = [(FCBackgroundActivityScheduler *)self _makeFullIdentifierFromIdentifier:a3];
  v3 = [objc_alloc(MEMORY[0x1E696AAD0]) initWithIdentifier:v4];
  [v3 invalidate];
}

- (void)requestBackgroundAppRefreshStartingAfter:(id)a3 before:(id)a4
{
  v5 = MEMORY[0x1E699A4B8];
  v6 = a4;
  v7 = a3;
  v15 = [v5 scheduler];
  v8 = MEMORY[0x1E699A488];
  v9 = [MEMORY[0x1E696AAE8] mainBundle];
  v10 = [v9 bundleIdentifier];
  v11 = *MEMORY[0x1E699A570];
  v12 = [MEMORY[0x1E696AAE8] mainBundle];
  v13 = [v12 bundleIdentifier];
  v14 = [v8 applicationLaunchActivityWithName:v10 priority:v11 forApplication:v13 withReason:*MEMORY[0x1E699A540] duration:*MEMORY[0x1E699A4F0] startingAfter:v7 startingBefore:v6];

  [v14 setRequiresNetwork:1];
  [v15 submitActivity:v14];
}

- (int64_t)_makeFromFCResult:(int64_t)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (id)_makeFullIdentifierFromIdentifier:(id)a3
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a3;
  v5 = [v3 mainBundle];
  v6 = [v5 bundleIdentifier];

  v7 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:v6];
  [v7 appendString:@"."];
  [v7 appendString:v4];

  return v7;
}

@end