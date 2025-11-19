@interface DPSubmissionRateLimiter
@end

@implementation DPSubmissionRateLimiter

void __42___DPSubmissionRateLimiter_sharedInstance__block_invoke(uint64_t a1)
{
  v4 = +[_DPSubmissionRateLimiter rateLimitsFromBudgetProperties];
  v2 = [objc_alloc(*(a1 + 32)) initWithLimits:v4];
  v3 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v2;
}

void __41___DPSubmissionRateLimiter_debit_forKey___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() budgetNameForKey:*(a1 + 40)];
  if (v3)
  {
    v23 = v3;
    v4 = [*(a1 + 32) limitDictionary];
    v5 = [v4 objectForKeyedSubscript:v23];

    v6 = [v5 objectForKeyedSubscript:@"interval"];
    v7 = [v6 unsignedIntegerValue];

    if (v7)
    {
      v8 = [v5 objectForKeyedSubscript:@"chunks_amount"];
      v9 = [v8 unsignedIntegerValue];

      if (v9 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9;
      }

      v11 = [v5 objectForKeyedSubscript:@"refill_amount"];
      v12 = [v11 unsignedIntegerValue];

      v13 = [v5 objectForKeyedSubscript:@"limit"];
      v14 = [v13 unsignedIntegerValue];

      v15 = [v5 objectForKeyedSubscript:@"checkpoint"];
      v16 = [MEMORY[0x277CBEAA8] date];
      [v16 timeIntervalSinceDate:v15];
      v18 = v17 / v7;

      v19 = v14 + v12 * v10 * v18;
      v20 = [v15 dateByAddingTimeInterval:(v18 * v7)];

      v21 = *(a1 + 56);
      if (v21 >= v19)
      {
        v21 = v19;
      }

      *(*(*(a1 + 48) + 8) + 24) = v21;
      [v5 setObject:v20 forKeyedSubscript:@"checkpoint"];
      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19 - *(*(*(a1 + 48) + 8) + 24)];
      [v5 setObject:v22 forKeyedSubscript:@"limit"];
    }

    v3 = v23;
  }
}

void __42___DPSubmissionRateLimiter_credit_amount___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() budgetNameForKey:*(a1 + 40)];
  if (v3)
  {
    v9 = v3;
    v4 = [*(a1 + 32) limitDictionary];
    v5 = [v4 objectForKeyedSubscript:v9];

    v6 = MEMORY[0x277CCABB0];
    v7 = [v5 objectForKeyedSubscript:@"limit"];
    v8 = [v6 numberWithUnsignedInteger:{*(a1 + 48) + objc_msgSend(v7, "unsignedIntegerValue")}];
    [v5 setObject:v8 forKeyedSubscript:@"limit"];

    v3 = v9;
  }
}

@end