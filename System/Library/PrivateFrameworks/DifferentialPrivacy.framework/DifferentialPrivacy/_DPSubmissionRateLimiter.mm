@interface _DPSubmissionRateLimiter
+ (id)budgetNameForKey:(id)key;
+ (id)rateLimitsFromBudgetProperties;
+ (id)sharedInstance;
- (_DPSubmissionRateLimiter)initWithLimits:(id)limits;
- (unint64_t)debit:(unint64_t)debit forKey:(id)key;
- (void)credit:(id)credit amount:(unint64_t)amount;
@end

@implementation _DPSubmissionRateLimiter

- (_DPSubmissionRateLimiter)initWithLimits:(id)limits
{
  limitsCopy = limits;
  v12.receiver = self;
  v12.super_class = _DPSubmissionRateLimiter;
  v6 = [(_DPSubmissionRateLimiter *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_limitDictionary, limits);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.DifferentialPrivacy.ratelimiter", v8);
    limiterQueue = v7->_limiterQueue;
    v7->_limiterQueue = v9;
  }

  return v7;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42___DPSubmissionRateLimiter_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_0, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

+ (id)rateLimitsFromBudgetProperties
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEC10] mutableCopy];
  +[_DPPrivacyBudgetProperties allBudgetPropertiesKeys];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v25 = 0u;
  v3 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v23;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v22 + 1) + 8 * i);
        v8 = [_DPPrivacyBudgetProperties budgetPropertiesForKey:v7];
        v9 = [MEMORY[0x277CBEC10] mutableCopy];
        [v2 setObject:v9 forKeyedSubscript:v7];
        refillInterval = [v8 refillInterval];
        [v9 setObject:refillInterval forKeyedSubscript:@"interval"];

        refillAmount = [v8 refillAmount];
        [v9 setObject:refillAmount forKeyedSubscript:@"refill_amount"];

        intervalChunksValue = [v8 intervalChunksValue];
        [v9 setObject:intervalChunksValue forKeyedSubscript:@"chunks_amount"];

        v13 = MEMORY[0x277CCABB0];
        refillAmount2 = [v8 refillAmount];
        unsignedIntegerValue = [refillAmount2 unsignedIntegerValue];
        intervalChunksValue2 = [v8 intervalChunksValue];
        v17 = [v13 numberWithUnsignedInteger:{objc_msgSend(intervalChunksValue2, "unsignedIntegerValue") * unsignedIntegerValue}];
        [v9 setObject:v17 forKeyedSubscript:@"limit"];

        date = [MEMORY[0x277CBEAA8] date];
        [v9 setObject:date forKeyedSubscript:@"checkpoint"];
      }

      v4 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v4);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v2;
}

- (unint64_t)debit:(unint64_t)debit forKey:(id)key
{
  keyCopy = key;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  limiterQueue = self->_limiterQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __41___DPSubmissionRateLimiter_debit_forKey___block_invoke;
  v11[3] = &unk_27858AE58;
  v11[4] = self;
  v12 = keyCopy;
  v13 = &v15;
  debitCopy = debit;
  v8 = keyCopy;
  dispatch_sync(limiterQueue, v11);
  v9 = v16[3];

  _Block_object_dispose(&v15, 8);
  return v9;
}

- (void)credit:(id)credit amount:(unint64_t)amount
{
  creditCopy = credit;
  limiterQueue = self->_limiterQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42___DPSubmissionRateLimiter_credit_amount___block_invoke;
  block[3] = &unk_27858AE80;
  block[4] = self;
  v10 = creditCopy;
  amountCopy = amount;
  v8 = creditCopy;
  dispatch_sync(limiterQueue, block);
}

+ (id)budgetNameForKey:(id)key
{
  v3 = [_DPKeyNames keyPropertiesForKey:key];
  budget = [v3 budget];
  name = [budget name];

  return name;
}

@end