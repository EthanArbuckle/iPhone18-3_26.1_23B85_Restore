@interface EDActivityPersistence
- (BOOL)donateSignalForActivityIfNeeded:(id)a3 previousActivity:(id)a4 error:(id)a5;
- (EDActivityPersistence)initWithHookResponder:(id)a3;
- (id)convertToUserInfo:(id)a3;
- (id)currentActivities;
- (id)startActivityOfType:(int64_t)a3 userInfo:(id)a4;
- (void)activityWithID:(id)a3 finishedWithError:(id)a4;
- (void)activityWithID:(id)a3 setCompletedCount:(int64_t)a4 totalCount:(int64_t)a5;
- (void)activityWithID:(id)a3 setUserInfoObject:(id)a4 forKey:(id)a5;
- (void)donateSignalForActivity:(id)a3 error:(id)a4;
@end

@implementation EDActivityPersistence

- (id)currentActivities
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_currentActivities allValues];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)donateSignalForActivityIfNeeded:(id)a3 previousActivity:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8 || [v8 activityType] != 1 && objc_msgSend(v8, "activityType") != 2)
  {
    goto LABEL_9;
  }

  if (!v9)
  {
    goto LABEL_8;
  }

  v11 = [v9 activityType];
  if (v11 != [v8 activityType])
  {
    goto LABEL_8;
  }

  v12 = [v8 finished];
  v13 = [v9 finished];
  [v12 timeIntervalSinceDate:v13];
  v15 = v14;

  if (v15 > *&signalDonationInterval)
  {
    goto LABEL_8;
  }

  v16 = [v9 error];

  v17 = [v8 error];
  v18 = v17 != 0;

  if ((v16 != 0) == v18)
  {
LABEL_9:
    v19 = 0;
  }

  else
  {
LABEL_8:
    [(EDActivityPersistence *)self donateSignalForActivity:v8 error:v10];
    v19 = 1;
  }

  return v19;
}

- (void)donateSignalForActivity:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 userInfo];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E699A6B8]];

  if (v9)
  {
    v10 = @"error";
    if (!v7)
    {
      v10 = @"working";
    }

    v11 = v10;
    v12 = [v6 activityType];
    v13 = @"send";
    if (v12 == 1)
    {
      v13 = @"fetch";
    }

    v14 = v13;
    v15 = [(EDActivityPersistence *)self convertToUserInfo:v9];
    v16 = objc_alloc(MEMORY[0x1E698EBC0]);
    v17 = [@"com.apple.mail.account-status." stringByAppendingString:v11];
    v18 = [v16 initWithContentIdentifier:v17 context:v14 osBuild:0 userInfo:v15];

    v19 = BiomeLibrary();
    v20 = [v19 Discoverability];
    v21 = [v20 Signals];

    v22 = dispatch_get_global_queue(17, 0);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __62__EDActivityPersistence_Biome__donateSignalForActivity_error___block_invoke;
    v25[3] = &unk_1E8250128;
    v26 = v21;
    v27 = v18;
    v23 = v18;
    v24 = v21;
    dispatch_async(v22, v25);
  }
}

void __62__EDActivityPersistence_Biome__donateSignalForActivity_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) source];
  [v2 sendEvent:*(a1 + 40)];
}

- (id)convertToUserInfo:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = MEMORY[0x1E696ACB0];
  v11 = @"mailboxID";
  v5 = [v3 stringHash];
  v6 = [v5 stringValue];
  v12[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v4 dataWithJSONObject:v7 options:0 error:0];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (EDActivityPersistence)initWithHookResponder:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = EDActivityPersistence;
  v6 = [(EDActivityPersistence *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_activityHookResponder, a3);
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    currentActivities = v7->_currentActivities;
    v7->_currentActivities = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    donatedActivities = v7->_donatedActivities;
    v7->_donatedActivities = v10;
  }

  return v7;
}

- (id)startActivityOfType:(int64_t)a3 userInfo:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a4;
  os_unfair_lock_lock(&self->_lock);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [(NSMutableDictionary *)self->_currentActivities allValues];
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = *v23;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        if ([v11 isEqualToActivityWithType:a3 userInfo:v6])
        {
          v12 = v11;
          currentActivities = self->_currentActivities;
          v14 = [v12 objectID];
          [(NSMutableDictionary *)currentActivities setObject:0 forKeyedSubscript:v14];

          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  v15 = [objc_alloc(MEMORY[0x1E699AC00]) initWithActivityType:a3 userInfo:v6];
  v16 = self->_currentActivities;
  v17 = [v15 objectID];
  [(NSMutableDictionary *)v16 setObject:v15 forKeyedSubscript:v17];

  os_unfair_lock_unlock(&self->_lock);
  if (v12)
  {
    activityHookResponder = self->_activityHookResponder;
    v19 = [v12 objectID];
    [(EDActivityHookResponder *)activityHookResponder removedActivityWithID:v19];
  }

  [(EDActivityHookResponder *)self->_activityHookResponder startedActivity:v15];

  v20 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)activityWithID:(id)a3 finishedWithError:(id)a4
{
  v13 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(NSMutableDictionary *)self->_currentActivities objectForKeyedSubscript:v13];
  v8 = v7;
  if (v7 && ([v7 finished], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    [v8 finishWithError:v6];
    if (([v8 needsPersistentHistory] & 1) == 0)
    {
      [(NSMutableDictionary *)self->_currentActivities setObject:0 forKeyedSubscript:v13];
    }

    os_unfair_lock_unlock(&self->_lock);
    [(EDActivityHookResponder *)self->_activityHookResponder activityWithID:v13 finishedWithError:v6];
    v10 = [v8 userInfo];
    v11 = [v10 objectForKeyedSubscript:*MEMORY[0x1E699A6B8]];

    if (v11)
    {
      os_unfair_lock_lock(&self->_donationLock);
      v12 = [(NSMutableDictionary *)self->_donatedActivities objectForKeyedSubscript:v11];
      if ([(EDActivityPersistence *)self donateSignalForActivityIfNeeded:v8 previousActivity:v12 error:v6])
      {
        [(NSMutableDictionary *)self->_donatedActivities setObject:v8 forKeyedSubscript:v11];
      }

      os_unfair_lock_unlock(&self->_donationLock);
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)activityWithID:(id)a3 setUserInfoObject:(id)a4 forKey:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  os_unfair_lock_lock(&self->_lock);
  v10 = [(NSMutableDictionary *)self->_currentActivities objectForKeyedSubscript:v11];
  [v10 setUserInfoObject:v8 forKey:v9];

  os_unfair_lock_unlock(&self->_lock);
  [(EDActivityHookResponder *)self->_activityHookResponder activityWithID:v11 setUserInfoObject:v8 forKey:v9];
}

- (void)activityWithID:(id)a3 setCompletedCount:(int64_t)a4 totalCount:(int64_t)a5
{
  v9 = a3;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSMutableDictionary *)self->_currentActivities objectForKeyedSubscript:v9];
  [v8 setCompletedCount:a4 totalCount:a5];

  os_unfair_lock_unlock(&self->_lock);
  [(EDActivityHookResponder *)self->_activityHookResponder activityWithID:v9 setCompletedCount:a4 totalCount:a5];
}

@end