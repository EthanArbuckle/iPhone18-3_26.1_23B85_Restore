@interface DaemonFetchController
+ (OS_os_log)log;
- (DaemonFetchController)initWithAccountsProvider:(id)provider favoritesPersistence:(id)persistence hookRegistry:(id)registry;
- (id)diagnosticInformation;
- (id)visibleMailboxes;
- (void)_autoFetchProcessFinished:(id)finished;
- (void)accountsAdded:(id)added;
- (void)downloadMessageBodiesWithCompletion:(id)completion;
- (void)fetchSchedulerDidTrigger:(id)trigger;
- (void)performFetchForOTC;
- (void)resetPushStateWithCompletion:(id)completion;
- (void)setSuppressedContexts:(id)contexts;
@end

@implementation DaemonFetchController

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000126D4;
  block[3] = &unk_1001562E8;
  block[4] = self;
  if (qword_100185518 != -1)
  {
    dispatch_once(&qword_100185518, block);
  }

  v2 = qword_100185510;

  return v2;
}

- (id)visibleMailboxes
{
  v2 = +[EDClientState sharedInstance];
  visibleMailboxObjectIDs = [v2 visibleMailboxObjectIDs];

  v4 = [visibleMailboxObjectIDs ef_compactMap:&stru_100156B48];

  return v4;
}

- (DaemonFetchController)initWithAccountsProvider:(id)provider favoritesPersistence:(id)persistence hookRegistry:(id)registry
{
  providerCopy = provider;
  persistenceCopy = persistence;
  registryCopy = registry;
  v28.receiver = self;
  v28.super_class = DaemonFetchController;
  v11 = [(DaemonFetchController *)&v28 initWithAccountsProvider:providerCopy];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_favoritesPersistence, persistence);
    v13 = [[FetchXPCActivityScheduler alloc] initWithType:3 interval:v12 delegate:86400.0];
    compactScheduler = v12->_compactScheduler;
    v12->_compactScheduler = v13;

    v15 = [[MFBackFillMessageBodyScheduler alloc] initWithAccountsProvider:providerCopy];
    backFillScheduler = v12->_backFillScheduler;
    v12->_backFillScheduler = v15;

    v17 = [EFScheduler serialDispatchQueueSchedulerWithName:@"com.apple.email.DaemonFetchController.pendingFetchOTCScheduler"];
    pendingFetchOTCScheduler = v12->_pendingFetchOTCScheduler;
    v12->_pendingFetchOTCScheduler = v17;

    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_attr_make_with_qos_class(v19, QOS_CLASS_UTILITY, 0);
    v21 = dispatch_queue_create("com.apple.email.DaemonFetchController", v20);
    queue = v12->_queue;
    v12->_queue = v21;

    v23 = v12->_queue;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100012988;
    v25[3] = &unk_1001563D8;
    v26 = v12;
    v27 = registryCopy;
    dispatch_async(v23, v25);
  }

  return v12;
}

- (void)fetchSchedulerDidTrigger:(id)trigger
{
  triggerCopy = trigger;
  -[DaemonFetchController performFetchOfType:](self, "performFetchOfType:", sub_100012D0C(self, [triggerCopy schedulerType]));
}

- (void)accountsAdded:(id)added
{
  addedCopy = added;
  v5 = [addedCopy ef_filter:&stru_100156A38];
  v6 = +[DaemonFetchController log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [addedCopy count]);
    sub_1000D1198(v7, buf, v6);
  }

  v8 = dispatch_time(0, 1000000000);
  if (self)
  {
    self = self->_queue;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013828;
  block[3] = &unk_100156400;
  v11 = v5;
  v9 = v5;
  dispatch_after(v8, self, block);
}

- (void)downloadMessageBodiesWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[MFMessageBodyProcessor powernapProcessor];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100013F38;
  v6[3] = &unk_100156B28;
  v5 = completionCopy;
  v7 = v5;
  [v4 runWithCompletion:v6];
}

- (void)resetPushStateWithCompletion:(id)completion
{
  completionCopy = completion;
  v3 = +[AutoFetchController sharedController];
  [v3 resetPushStateWithCompletion:completionCopy];
}

- (void)setSuppressedContexts:(id)contexts
{
  contextsCopy = contexts;
  v3 = +[AutoFetchController sharedController];
  [v3 setSuppressedContexts:contextsCopy];
}

- (id)diagnosticInformation
{
  v2 = +[AutoFetchController sharedController];
  diagnosticInformation = [v2 diagnosticInformation];

  return diagnosticInformation;
}

- (void)_autoFetchProcessFinished:(id)finished
{
  v4 = +[DaemonFetchController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Auto fetch finished.", buf, 2u);
  }

  if (self)
  {
    compactScheduler = self->_compactScheduler;
  }

  else
  {
    compactScheduler = 0;
  }

  v6 = [NSMutableArray arrayWithObject:compactScheduler];
  os_unfair_lock_lock(&self->_fetchSchedulerLock);
  if (self && self->_powerNapScheduler)
  {
    [v6 addObject:self->_powerNapScheduler];
  }

  if (self && self->_periodicScheduler)
  {
    [v6 addObject:self->_periodicScheduler];
  }

  os_unfair_lock_unlock(&self->_fetchSchedulerLock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v8)
  {
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v11 + 1) + 8 * i) markAsDone];
      }

      v8 = [v7 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)performFetchForOTC
{
  v3 = sub_10001390C(self);
  v4 = +[DaemonFetchController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Fetching for One Time Code has been delayed for %f seconds", &v7, 0xCu);
  }

  if (self)
  {
    pendingFetchOTCScheduler = self->_pendingFetchOTCScheduler;
  }

  else
  {
    pendingFetchOTCScheduler = 0;
  }

  v6 = [(EFScheduler *)pendingFetchOTCScheduler afterDelay:&stru_100156A58 performBlock:v3];
}

@end