@interface EDActivityPersistence
- (BOOL)donateSignalForActivityIfNeeded:(id)needed previousActivity:(id)activity error:(id)error;
- (EDActivityPersistence)initWithHookResponder:(id)responder;
- (id)convertToUserInfo:(id)info;
- (id)currentActivities;
- (id)startActivityOfType:(int64_t)type userInfo:(id)info;
- (void)activityWithID:(id)d finishedWithError:(id)error;
- (void)activityWithID:(id)d setCompletedCount:(int64_t)count totalCount:(int64_t)totalCount;
- (void)activityWithID:(id)d setUserInfoObject:(id)object forKey:(id)key;
- (void)donateSignalForActivity:(id)activity error:(id)error;
@end

@implementation EDActivityPersistence

- (id)currentActivities
{
  os_unfair_lock_lock(&self->_lock);
  allValues = [(NSMutableDictionary *)self->_currentActivities allValues];
  os_unfair_lock_unlock(&self->_lock);

  return allValues;
}

- (BOOL)donateSignalForActivityIfNeeded:(id)needed previousActivity:(id)activity error:(id)error
{
  neededCopy = needed;
  activityCopy = activity;
  errorCopy = error;
  if (!neededCopy || [neededCopy activityType] != 1 && objc_msgSend(neededCopy, "activityType") != 2)
  {
    goto LABEL_9;
  }

  if (!activityCopy)
  {
    goto LABEL_8;
  }

  activityType = [activityCopy activityType];
  if (activityType != [neededCopy activityType])
  {
    goto LABEL_8;
  }

  finished = [neededCopy finished];
  finished2 = [activityCopy finished];
  [finished timeIntervalSinceDate:finished2];
  v15 = v14;

  if (v15 > *&signalDonationInterval)
  {
    goto LABEL_8;
  }

  error = [activityCopy error];

  error2 = [neededCopy error];
  v18 = error2 != 0;

  if ((error != 0) == v18)
  {
LABEL_9:
    v19 = 0;
  }

  else
  {
LABEL_8:
    [(EDActivityPersistence *)self donateSignalForActivity:neededCopy error:errorCopy];
    v19 = 1;
  }

  return v19;
}

- (void)donateSignalForActivity:(id)activity error:(id)error
{
  activityCopy = activity;
  errorCopy = error;
  userInfo = [activityCopy userInfo];
  v9 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E699A6B8]];

  if (v9)
  {
    v10 = @"error";
    if (!errorCopy)
    {
      v10 = @"working";
    }

    v11 = v10;
    activityType = [activityCopy activityType];
    v13 = @"send";
    if (activityType == 1)
    {
      v13 = @"fetch";
    }

    v14 = v13;
    v15 = [(EDActivityPersistence *)self convertToUserInfo:v9];
    v16 = objc_alloc(MEMORY[0x1E698EBC0]);
    v17 = [@"com.apple.mail.account-status." stringByAppendingString:v11];
    v18 = [v16 initWithContentIdentifier:v17 context:v14 osBuild:0 userInfo:v15];

    v19 = BiomeLibrary();
    discoverability = [v19 Discoverability];
    signals = [discoverability Signals];

    v22 = dispatch_get_global_queue(17, 0);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __62__EDActivityPersistence_Biome__donateSignalForActivity_error___block_invoke;
    v25[3] = &unk_1E8250128;
    v26 = signals;
    v27 = v18;
    v23 = v18;
    v24 = signals;
    dispatch_async(v22, v25);
  }
}

void __62__EDActivityPersistence_Biome__donateSignalForActivity_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) source];
  [v2 sendEvent:*(a1 + 40)];
}

- (id)convertToUserInfo:(id)info
{
  v12[1] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v4 = MEMORY[0x1E696ACB0];
  v11 = @"mailboxID";
  stringHash = [infoCopy stringHash];
  stringValue = [stringHash stringValue];
  v12[0] = stringValue;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v4 dataWithJSONObject:v7 options:0 error:0];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (EDActivityPersistence)initWithHookResponder:(id)responder
{
  responderCopy = responder;
  v13.receiver = self;
  v13.super_class = EDActivityPersistence;
  v6 = [(EDActivityPersistence *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_activityHookResponder, responder);
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    currentActivities = v7->_currentActivities;
    v7->_currentActivities = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    donatedActivities = v7->_donatedActivities;
    v7->_donatedActivities = v10;
  }

  return v7;
}

- (id)startActivityOfType:(int64_t)type userInfo:(id)info
{
  v27 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  os_unfair_lock_lock(&self->_lock);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  allValues = [(NSMutableDictionary *)self->_currentActivities allValues];
  v8 = [allValues countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = *v23;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        if ([v11 isEqualToActivityWithType:type userInfo:infoCopy])
        {
          v12 = v11;
          currentActivities = self->_currentActivities;
          objectID = [v12 objectID];
          [(NSMutableDictionary *)currentActivities setObject:0 forKeyedSubscript:objectID];

          goto LABEL_11;
        }
      }

      v8 = [allValues countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  v15 = [objc_alloc(MEMORY[0x1E699AC00]) initWithActivityType:type userInfo:infoCopy];
  v16 = self->_currentActivities;
  objectID2 = [v15 objectID];
  [(NSMutableDictionary *)v16 setObject:v15 forKeyedSubscript:objectID2];

  os_unfair_lock_unlock(&self->_lock);
  if (v12)
  {
    activityHookResponder = self->_activityHookResponder;
    objectID3 = [v12 objectID];
    [(EDActivityHookResponder *)activityHookResponder removedActivityWithID:objectID3];
  }

  [(EDActivityHookResponder *)self->_activityHookResponder startedActivity:v15];

  v20 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)activityWithID:(id)d finishedWithError:(id)error
{
  dCopy = d;
  errorCopy = error;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(NSMutableDictionary *)self->_currentActivities objectForKeyedSubscript:dCopy];
  v8 = v7;
  if (v7 && ([v7 finished], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    [v8 finishWithError:errorCopy];
    if (([v8 needsPersistentHistory] & 1) == 0)
    {
      [(NSMutableDictionary *)self->_currentActivities setObject:0 forKeyedSubscript:dCopy];
    }

    os_unfair_lock_unlock(&self->_lock);
    [(EDActivityHookResponder *)self->_activityHookResponder activityWithID:dCopy finishedWithError:errorCopy];
    userInfo = [v8 userInfo];
    v11 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E699A6B8]];

    if (v11)
    {
      os_unfair_lock_lock(&self->_donationLock);
      v12 = [(NSMutableDictionary *)self->_donatedActivities objectForKeyedSubscript:v11];
      if ([(EDActivityPersistence *)self donateSignalForActivityIfNeeded:v8 previousActivity:v12 error:errorCopy])
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

- (void)activityWithID:(id)d setUserInfoObject:(id)object forKey:(id)key
{
  dCopy = d;
  objectCopy = object;
  keyCopy = key;
  os_unfair_lock_lock(&self->_lock);
  v10 = [(NSMutableDictionary *)self->_currentActivities objectForKeyedSubscript:dCopy];
  [v10 setUserInfoObject:objectCopy forKey:keyCopy];

  os_unfair_lock_unlock(&self->_lock);
  [(EDActivityHookResponder *)self->_activityHookResponder activityWithID:dCopy setUserInfoObject:objectCopy forKey:keyCopy];
}

- (void)activityWithID:(id)d setCompletedCount:(int64_t)count totalCount:(int64_t)totalCount
{
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSMutableDictionary *)self->_currentActivities objectForKeyedSubscript:dCopy];
  [v8 setCompletedCount:count totalCount:totalCount];

  os_unfair_lock_unlock(&self->_lock);
  [(EDActivityHookResponder *)self->_activityHookResponder activityWithID:dCopy setCompletedCount:count totalCount:totalCount];
}

@end