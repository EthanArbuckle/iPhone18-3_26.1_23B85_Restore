@interface HUPreloadViewController
@end

@implementation HUPreloadViewController

uint64_t ___HUPreloadViewController_block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isFinished] & 1) == 0)
  {
    v2 = *(a1 + 32);
    v3 = [MEMORY[0x277CCA9B8] na_timeoutError];
    [v2 finishWithError:v3];
  }

  return 0;
}

id ___HUPreloadViewController_block_invoke_134(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = (*(*(a1 + 40) + 16))();
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  [*(a1 + 32) _endDelayingPresentation];
  v5 = *(*(*(a1 + 48) + 8) + 40);

  return v5;
}

id ___HUPreloadViewController_block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) description];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [*(a1 + 32) description];
    v7 = [*(a1 + 32) topViewController];
    v8 = [v7 description];
    v9 = [v5 stringWithFormat:@"%@ (%@)", v6, v8];

    v4 = v9;
  }

  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v14 = v4;
    v15 = 2112;
    v16 = v3;
    _os_log_error_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_ERROR, "Preload for view controller: %@ failed with error: %@", buf, 0x16u);
  }

  v11 = [MEMORY[0x277D2C900] futureWithError:v3];

  return v11;
}

@end