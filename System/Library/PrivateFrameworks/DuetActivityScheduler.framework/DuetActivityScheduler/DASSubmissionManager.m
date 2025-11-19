@interface DASSubmissionManager
@end

@implementation DASSubmissionManager

void __29___DASSubmissionManager_init__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activityGroupQueue];
  objc_sync_enter(v2);
  v3 = [*(a1 + 32) activityGroupQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __29___DASSubmissionManager_init__block_invoke_2;
  v4[3] = &unk_1E7C8F6B8;
  v5 = *(a1 + 32);
  [v3 enumerateKeysAndObjectsUsingBlock:v4];

  objc_sync_exit(v2);
}

void __29___DASSubmissionManager_init__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_1B6E2F000, v7, OS_LOG_TYPE_DEFAULT, "For pool %{public}@, have queued %{public}@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __56___DASSubmissionManager_submitActivities_withScheduler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  v8 = [v6 schedulingPriority];
  if (v8 > [v7 schedulingPriority])
  {
    goto LABEL_2;
  }

  v10 = [v7 schedulingPriority];
  if (v10 < [v6 schedulingPriority])
  {
LABEL_4:
    v9 = 1;
    goto LABEL_10;
  }

  if (([v6 requiresInexpensiveNetworking] & 1) != 0 || (objc_msgSend(v7, "requiresInexpensiveNetworking") & 1) == 0)
  {
    if (![v7 requiresInexpensiveNetworking] || objc_msgSend(v7, "requiresInexpensiveNetworking"))
    {
      v11 = [v6 startBefore];
      v12 = [v7 startBefore];
      v9 = [v11 compare:v12];

      goto LABEL_10;
    }

    goto LABEL_4;
  }

LABEL_2:
  v9 = -1;
LABEL_10:

  return v9;
}

@end