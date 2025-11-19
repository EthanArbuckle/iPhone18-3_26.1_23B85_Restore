@interface CUIKNotificationConflictCache
+ (id)sharedInstance;
- (BOOL)_updateNotification:(id)a3 withCacheObject:(id)a4;
- (CUIKNotificationConflictCache)init;
- (id)_eventForNotification:(id)a3;
- (id)conflictsForNotification:(id)a3;
- (void)updateConflictsForNotification:(id)a3 synchronously:(BOOL)a4 withCompletion:(id)a5;
@end

@implementation CUIKNotificationConflictCache

- (CUIKNotificationConflictCache)init
{
  v11.receiver = self;
  v11.super_class = CUIKNotificationConflictCache;
  v2 = [(CUIKNotificationConflictCache *)&v11 init];
  if (v2)
  {
    v3 = objc_opt_new();
    cache = v2->_cache;
    v2->_cache = v3;

    [(NSCache *)v2->_cache setCountLimit:1000];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("ConflictScanningQueue", v5);
    fetchQueue = v2->_fetchQueue;
    v2->_fetchQueue = v6;

    v8 = [objc_alloc(MEMORY[0x1E6966A18]) initWithEKOptions:130 path:0 changeTrackingClientId:0 enablePropertyModificationLogging:0 allowDelegateSources:1];
    store = v2->_store;
    v2->_store = v8;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[CUIKNotificationConflictCache sharedInstance];
  }

  v3 = sharedInstance__sharedInstance;

  return v3;
}

uint64_t __47__CUIKNotificationConflictCache_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance__sharedInstance;
  sharedInstance__sharedInstance = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)_eventForNotification:(id)a3
{
  store = self->_store;
  v4 = [a3 event];
  v5 = [v4 recurrenceIdentifier];
  v6 = [(EKEventStore *)store eventWithRecurrenceIdentifier:v5];

  return v6;
}

- (BOOL)_updateNotification:(id)a3 withCacheObject:(id)a4
{
  v6 = a4;
  v7 = [(CUIKNotificationConflictCache *)self _eventForNotification:a3];
  v8 = [v7 scanForConflicts];

  v9 = [v6 conflictInfo];
  if (!v9 || v8)
  {
    v11 = [v6 conflictInfo];
    if (v11 || !v8)
    {
      v12 = [v6 conflictInfo];
      v13 = [v12 totalOccurrencesInSeries];
      if (v13 == [v8 totalOccurrencesInSeries])
      {
        v14 = [v6 conflictInfo];
        v15 = [v14 totalConflictsInSeries];
        if (v15 == [v8 totalConflictsInSeries])
        {
          v16 = [v6 conflictInfo];
          v17 = [v16 totalConflictingEvents];
          if (v17 == [v8 totalConflictingEvents])
          {
            v18 = [v6 conflictInfo];
            v19 = [v18 totalNeedsActionEvents];
            v10 = v19 != [v8 totalNeedsActionEvents];
          }

          else
          {
            v10 = 1;
          }
        }

        else
        {
          v10 = 1;
        }
      }

      else
      {
        v10 = 1;
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 1;
  }

  [v6 setConflictInfo:v8];
  [v6 setState:2];

  return v10;
}

- (void)updateConflictsForNotification:(id)a3 synchronously:(BOOL)a4 withCompletion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [CUIKNotificationConflictCacheObject keyForNotification:v8];
  v11 = self;
  objc_sync_enter(v11);
  v12 = [(NSCache *)v11->_cache objectForKey:v10];
  if (!v12)
  {
    v12 = objc_opt_new();
    [(NSCache *)v11->_cache setObject:v12 forKey:v10];
  }

  if (v6)
  {
    [(CUIKNotificationConflictCache *)v11 _updateNotification:v8 withCacheObject:v12];
  }

  else if ([v12 state] != 1)
  {
    [v12 setState:1];
    fetchQueue = v11->_fetchQueue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __93__CUIKNotificationConflictCache_updateConflictsForNotification_synchronously_withCompletion___block_invoke;
    v14[3] = &unk_1E839AFF0;
    v14[4] = v11;
    v15 = v8;
    v16 = v12;
    v17 = v9;
    dispatch_async(fetchQueue, v14);
  }

  objc_sync_exit(v11);
}

uint64_t __93__CUIKNotificationConflictCache_updateConflictsForNotification_synchronously_withCompletion___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _updateNotification:*(a1 + 40) withCacheObject:*(a1 + 48)];
  if (result)
  {
    result = *(a1 + 56);
    if (result)
    {
      v3 = *(result + 16);

      return v3();
    }
  }

  return result;
}

- (id)conflictsForNotification:(id)a3
{
  v4 = a3;
  v5 = [CUIKNotificationConflictCacheObject keyForNotification:v4];
  v6 = self;
  objc_sync_enter(v6);
  v7 = [(NSCache *)v6->_cache objectForKey:v5];
  v8 = [v7 conflictInfo];

  objc_sync_exit(v6);

  return v8;
}

@end