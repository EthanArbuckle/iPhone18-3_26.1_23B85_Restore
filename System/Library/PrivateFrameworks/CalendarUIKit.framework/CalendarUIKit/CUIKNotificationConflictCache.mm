@interface CUIKNotificationConflictCache
+ (id)sharedInstance;
- (BOOL)_updateNotification:(id)notification withCacheObject:(id)object;
- (CUIKNotificationConflictCache)init;
- (id)_eventForNotification:(id)notification;
- (id)conflictsForNotification:(id)notification;
- (void)updateConflictsForNotification:(id)notification synchronously:(BOOL)synchronously withCompletion:(id)completion;
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

- (id)_eventForNotification:(id)notification
{
  store = self->_store;
  event = [notification event];
  recurrenceIdentifier = [event recurrenceIdentifier];
  v6 = [(EKEventStore *)store eventWithRecurrenceIdentifier:recurrenceIdentifier];

  return v6;
}

- (BOOL)_updateNotification:(id)notification withCacheObject:(id)object
{
  objectCopy = object;
  v7 = [(CUIKNotificationConflictCache *)self _eventForNotification:notification];
  scanForConflicts = [v7 scanForConflicts];

  conflictInfo = [objectCopy conflictInfo];
  if (!conflictInfo || scanForConflicts)
  {
    conflictInfo2 = [objectCopy conflictInfo];
    if (conflictInfo2 || !scanForConflicts)
    {
      conflictInfo3 = [objectCopy conflictInfo];
      totalOccurrencesInSeries = [conflictInfo3 totalOccurrencesInSeries];
      if (totalOccurrencesInSeries == [scanForConflicts totalOccurrencesInSeries])
      {
        conflictInfo4 = [objectCopy conflictInfo];
        totalConflictsInSeries = [conflictInfo4 totalConflictsInSeries];
        if (totalConflictsInSeries == [scanForConflicts totalConflictsInSeries])
        {
          conflictInfo5 = [objectCopy conflictInfo];
          totalConflictingEvents = [conflictInfo5 totalConflictingEvents];
          if (totalConflictingEvents == [scanForConflicts totalConflictingEvents])
          {
            conflictInfo6 = [objectCopy conflictInfo];
            totalNeedsActionEvents = [conflictInfo6 totalNeedsActionEvents];
            v10 = totalNeedsActionEvents != [scanForConflicts totalNeedsActionEvents];
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

  [objectCopy setConflictInfo:scanForConflicts];
  [objectCopy setState:2];

  return v10;
}

- (void)updateConflictsForNotification:(id)notification synchronously:(BOOL)synchronously withCompletion:(id)completion
{
  synchronouslyCopy = synchronously;
  notificationCopy = notification;
  completionCopy = completion;
  v10 = [CUIKNotificationConflictCacheObject keyForNotification:notificationCopy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = [(NSCache *)selfCopy->_cache objectForKey:v10];
  if (!v12)
  {
    v12 = objc_opt_new();
    [(NSCache *)selfCopy->_cache setObject:v12 forKey:v10];
  }

  if (synchronouslyCopy)
  {
    [(CUIKNotificationConflictCache *)selfCopy _updateNotification:notificationCopy withCacheObject:v12];
  }

  else if ([v12 state] != 1)
  {
    [v12 setState:1];
    fetchQueue = selfCopy->_fetchQueue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __93__CUIKNotificationConflictCache_updateConflictsForNotification_synchronously_withCompletion___block_invoke;
    v14[3] = &unk_1E839AFF0;
    v14[4] = selfCopy;
    v15 = notificationCopy;
    v16 = v12;
    v17 = completionCopy;
    dispatch_async(fetchQueue, v14);
  }

  objc_sync_exit(selfCopy);
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

- (id)conflictsForNotification:(id)notification
{
  notificationCopy = notification;
  v5 = [CUIKNotificationConflictCacheObject keyForNotification:notificationCopy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = [(NSCache *)selfCopy->_cache objectForKey:v5];
  conflictInfo = [v7 conflictInfo];

  objc_sync_exit(selfCopy);

  return conflictInfo;
}

@end