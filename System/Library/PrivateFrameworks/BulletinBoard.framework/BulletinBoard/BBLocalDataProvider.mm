@interface BBLocalDataProvider
+ (id)dataProviderWithDataProvider:(id)provider serverQueue:(id)queue;
+ (id)dataProviderWithPrincipalClass:(Class)class serverQueue:(id)queue initializationCompletion:(id)completion;
- (BBLocalDataProvider)initWithDataProvider:(id)provider serverQueue:(id)queue;
- (BBLocalDataProvider)initWithPrincipalClass:(Class)class serverQueue:(id)queue initializationCompletion:(id)completion;
- (BOOL)canPerformMigration;
- (BOOL)migrateSectionInfo:(id)info oldSectionInfo:(id)sectionInfo;
- (id)_bulletinsWithRequestParameters:(id)parameters lastCleared:(id)cleared;
- (id)_doSynchronousRemoteRequest:(id)request conditionalOn:(id)on;
- (id)_initWithDataProvider:(id)provider sectionID:(id)d serverQueue:(id)queue initializationCompletion:(id)completion;
- (id)bulletinsWithRequestParameters:(id)parameters lastCleared:(id)cleared;
- (id)clearedInfoForBulletins:(id)bulletins lastClearedInfo:(id)info;
- (void)_doAsynchronousRemoteRequest:(id)request conditionalOn:(id)on completion:(id)completion;
- (void)_ping;
- (void)bulletinsWithRequestParameters:(id)parameters lastCleared:(id)cleared completion:(id)completion;
- (void)clearedInfoForBulletins:(id)bulletins lastClearedInfo:(id)info completion:(id)completion;
- (void)clearedInfoForClearingAllBulletinsWithLastClearedInfo:(id)info completion:(id)completion;
- (void)clearedInfoForClearingBulletinsFromDate:(id)date toDate:(id)toDate lastClearedInfo:(id)info completion:(id)completion;
- (void)dataProviderDidLoad;
- (void)dealloc;
- (void)deliverMessageWithName:(id)name userInfo:(id)info;
- (void)deliverResponse:(id)response forBulletinRequest:(id)request withCompletion:(id)completion;
- (void)invalidate;
- (void)noteSectionInfoDidChange:(id)change;
- (void)reloadIdentityWithCompletion:(id)completion;
- (void)startWatchdog;
- (void)updateClearedInfoWithClearedInfo:(id)info handler:(id)handler completion:(id)completion;
- (void)updateSectionInfoWithSectionInfo:(id)info handler:(id)handler completion:(id)completion;
@end

@implementation BBLocalDataProvider

+ (id)dataProviderWithPrincipalClass:(Class)class serverQueue:(id)queue initializationCompletion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  v10 = [[self alloc] initWithPrincipalClass:class serverQueue:queueCopy initializationCompletion:completionCopy];

  return v10;
}

+ (id)dataProviderWithDataProvider:(id)provider serverQueue:(id)queue
{
  queueCopy = queue;
  providerCopy = provider;
  v8 = [[self alloc] initWithDataProvider:providerCopy serverQueue:queueCopy];

  return v8;
}

- (id)_initWithDataProvider:(id)provider sectionID:(id)d serverQueue:(id)queue initializationCompletion:(id)completion
{
  providerCopy = provider;
  dCopy = d;
  queueCopy = queue;
  completionCopy = completion;
  if (queueCopy)
  {
    if (dCopy)
    {
      goto LABEL_3;
    }

LABEL_11:
    [BBLocalDataProvider _initWithDataProvider:sectionID:serverQueue:initializationCompletion:];
    if (providerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  [BBLocalDataProvider _initWithDataProvider:sectionID:serverQueue:initializationCompletion:];
  if (!dCopy)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (providerCopy)
  {
    goto LABEL_4;
  }

LABEL_12:
  [BBLocalDataProvider _initWithDataProvider:sectionID:serverQueue:initializationCompletion:];
LABEL_4:
  v15 = [(BBLocalDataProvider *)self init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_localQueue, queue);
    objc_storeStrong(&v16->_dataProvider, provider);
    dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"BBDataProviderQueue:%@", dCopy];
    uTF8String = [dCopy UTF8String];
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create(uTF8String, v19);
    remoteQueue = v16->_remoteQueue;
    v16->_remoteQueue = v20;

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __92__BBLocalDataProvider__initWithDataProvider_sectionID_serverQueue_initializationCompletion___block_invoke;
    v31[3] = &unk_278D2A628;
    v22 = v16;
    v32 = v22;
    v33 = providerCopy;
    v23 = MEMORY[0x245D05D40](v31);
    v24 = v23;
    v25 = v16->_remoteQueue;
    if (completionCopy)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __92__BBLocalDataProvider__initWithDataProvider_sectionID_serverQueue_initializationCompletion___block_invoke_2;
      block[3] = &unk_278D2B7F8;
      v29 = v23;
      v28 = v22;
      v30 = completionCopy;
      dispatch_async(v25, block);
    }

    else
    {
      dispatch_sync(v25, v23);
    }
  }

  return v16;
}

void __92__BBLocalDataProvider__initWithDataProvider_sectionID_serverQueue_initializationCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [BBDataProviderIdentity identityForDataProvider:*(a1 + 40)];
  [v1 setIdentity:v2];
}

void __92__BBLocalDataProvider__initWithDataProvider_sectionID_serverQueue_initializationCompletion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__BBLocalDataProvider__initWithDataProvider_sectionID_serverQueue_initializationCompletion___block_invoke_3;
  block[3] = &unk_278D2A9C8;
  v4 = *(a1 + 48);
  dispatch_async(v2, block);
}

- (BBLocalDataProvider)initWithDataProvider:(id)provider serverQueue:(id)queue
{
  queueCopy = queue;
  providerCopy = provider;
  sectionIdentifier = [providerCopy sectionIdentifier];
  v9 = [(BBLocalDataProvider *)self _initWithDataProvider:providerCopy sectionID:sectionIdentifier serverQueue:queueCopy initializationCompletion:0];

  return v9;
}

- (BBLocalDataProvider)initWithPrincipalClass:(Class)class serverQueue:(id)queue initializationCompletion:(id)completion
{
  v51 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  completionCopy = completion;
  if (!queueCopy)
  {
    [BBLocalDataProvider initWithPrincipalClass:serverQueue:initializationCompletion:];
  }

  if (!class)
  {
    v16 = @"<null>";
LABEL_9:
    NSLog(&cfstr_Bbdataprovider_18.isa, v16);

    v17 = 0;
    goto LABEL_13;
  }

  if (([(objc_class *)class conformsToProtocol:&unk_2854452F8]& 1) == 0)
  {
    v16 = NSStringFromClass(class);
    goto LABEL_9;
  }

  date = [MEMORY[0x277CBEAA8] date];
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__9;
  v45 = __Block_byref_object_dispose__9;
  v46 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__9;
  v39 = __Block_byref_object_dispose__9;
  v40 = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = __Block_byref_object_copy__9;
  v33[4] = __Block_byref_object_dispose__9;
  v34 = 0;
  v11 = dispatch_semaphore_create(0);
  v12 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__BBLocalDataProvider_initWithPrincipalClass_serverQueue_initializationCompletion___block_invoke;
  block[3] = &unk_278D2B820;
  v29 = v33;
  v30 = &v35;
  v31 = &v41;
  classCopy = class;
  selfCopy = self;
  v25 = selfCopy;
  v26 = queueCopy;
  v28 = completionCopy;
  v14 = v11;
  v27 = v14;
  dispatch_async(v12, block);

  v15 = dispatch_time(0, 120000000000);
  if (dispatch_semaphore_wait(v14, v15))
  {
    BBIsInternalDevice();
  }

  v18 = BBLogGeneral;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = v36[5];
    [date timeIntervalSinceNow];
    *buf = 138543618;
    v48 = v19;
    v49 = 2048;
    v50 = -v20;
    _os_log_impl(&dword_241EFF000, v18, OS_LOG_TYPE_DEFAULT, "BBDataProvider: provider <%{public}@> loaded in %.2f sec", buf, 0x16u);
  }

  v21 = v42[5];
  v17 = v21;

  _Block_object_dispose(v33, 8);
  _Block_object_dispose(&v35, 8);

  _Block_object_dispose(&v41, 8);
LABEL_13:

  v22 = *MEMORY[0x277D85DE8];
  return v17;
}

intptr_t __83__BBLocalDataProvider_initWithPrincipalClass_serverQueue_initializationCompletion___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(*(a1 + 88));
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(*(*(a1 + 64) + 8) + 40) sectionIdentifier];
  v6 = [v5 copy];
  v7 = *(*(a1 + 72) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [*(a1 + 32) _initWithDataProvider:*(*(*(a1 + 64) + 8) + 40) sectionID:*(*(*(a1 + 72) + 8) + 40) serverQueue:*(a1 + 40) initializationCompletion:*(a1 + 56)];
  v10 = *(*(a1 + 80) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = *(a1 + 48);

  return dispatch_semaphore_signal(v12);
}

void __83__BBLocalDataProvider_initWithPrincipalClass_serverQueue_initializationCompletion___block_invoke_420(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    NSLog(&cfstr_Exiting.isa, v2, v3);
    exit(1);
  }
}

- (void)dealloc
{
  watchdogTimer = self->_watchdogTimer;
  if (watchdogTimer)
  {
    dispatch_source_cancel(watchdogTimer);
    v4 = self->_watchdogTimer;
    self->_watchdogTimer = 0;
  }

  v5.receiver = self;
  v5.super_class = BBLocalDataProvider;
  [(BBLocalDataProvider *)&v5 dealloc];
}

- (void)invalidate
{
  self->_invalidated = 1;
  watchdogTimer = self->_watchdogTimer;
  if (watchdogTimer)
  {
    dispatch_source_cancel(watchdogTimer);
    v4 = self->_watchdogTimer;
    self->_watchdogTimer = 0;
  }
}

- (void)_ping
{
  v3 = dispatch_semaphore_create(0);
  remoteQueue = self->_remoteQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__BBLocalDataProvider__ping__block_invoke;
  block[3] = &unk_278D2A628;
  v5 = v3;
  v10 = v5;
  selfCopy = self;
  dispatch_async(remoteQueue, block);
  v6 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(v5, v6))
  {
    localQueue = self->_localQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __28__BBLocalDataProvider__ping__block_invoke_3;
    v8[3] = &unk_278D2A600;
    v8[4] = self;
    dispatch_async(localQueue, v8);
  }
}

void __28__BBLocalDataProvider__ping__block_invoke(uint64_t a1)
{
  dispatch_semaphore_signal(*(a1 + 32));
  v2 = *(a1 + 40);
  v3 = *(v2 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__BBLocalDataProvider__ping__block_invoke_2;
  block[3] = &unk_278D2A600;
  block[4] = v2;
  dispatch_async(v3, block);
}

void __28__BBLocalDataProvider__ping__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 48) == 1)
  {
    *(v2 + 48) = 0;
    v3 = [*(a1 + 32) sectionIdentifier];
    NSLog(&cfstr_BbserverDataPr.isa, v3);
  }
}

uint64_t __28__BBLocalDataProvider__ping__block_invoke_3(uint64_t result)
{
  if ((*(*(result + 32) + 48) & 1) == 0)
  {
    v1 = result;
    result = BSIsBeingDebugged();
    if ((result & 1) == 0)
    {
      *(*(v1 + 32) + 48) = 1;
      v2 = *(v1 + 32);

      return [v2 _watchdogFired];
    }
  }

  return result;
}

- (void)startWatchdog
{
  if (!self->_watchdogTimer)
  {
    v3 = dispatch_get_global_queue(0, 0);
    v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v3);
    watchdogTimer = self->_watchdogTimer;
    self->_watchdogTimer = v4;

    v6 = dispatch_time(0, 60000000000);
    dispatch_source_set_timer(self->_watchdogTimer, v6, 0x45D964B800uLL, 0x3B9ACA00uLL);
    v7 = self->_watchdogTimer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __36__BBLocalDataProvider_startWatchdog__block_invoke;
    handler[3] = &unk_278D2A600;
    handler[4] = self;
    dispatch_source_set_event_handler(v7, handler);
    dispatch_resume(self->_watchdogTimer);
  }
}

uint64_t __36__BBLocalDataProvider_startWatchdog__block_invoke(uint64_t result)
{
  if ((*(*(result + 32) + 48) & 1) == 0)
  {
    v1 = result;
    result = BSIsBeingDebugged();
    if ((result & 1) == 0)
    {
      v2 = *(v1 + 32);

      return [v2 _ping];
    }
  }

  return result;
}

- (void)dataProviderDidLoad
{
  remoteQueue = self->_remoteQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__BBLocalDataProvider_dataProviderDidLoad__block_invoke;
  block[3] = &unk_278D2A600;
  block[4] = self;
  dispatch_async(remoteQueue, block);
}

void __42__BBLocalDataProvider_dataProviderDidLoad__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (objc_opt_respondsToSelector())
  {
    [*(*(a1 + 32) + 32) _setDataProviderQueue:*(*(a1 + 32) + 24)];
  }

  v3 = [*(a1 + 32) identity];
  v4 = [v3 traits];

  if ((v4 & 2) != 0)
  {
    v5 = *(*(a1 + 32) + 32);

    [v5 dataProviderDidLoad];
  }
}

- (id)_doSynchronousRemoteRequest:(id)request conditionalOn:(id)on
{
  requestCopy = request;
  onCopy = on;
  if (onCopy[2]())
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__9;
    v24 = __Block_byref_object_dispose__9;
    v25 = 0;
    v8 = dispatch_semaphore_create(0);
    remoteQueue = self->_remoteQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__BBLocalDataProvider__doSynchronousRemoteRequest_conditionalOn___block_invoke;
    block[3] = &unk_278D2B848;
    v19 = &v20;
    v18 = requestCopy;
    v10 = v8;
    v17 = v10;
    dispatch_async(remoteQueue, block);
    v11 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v10, v11))
    {
      sectionIdentifier = [(BBDataProvider *)self sectionIdentifier];
      NSLog(&cfstr_SynchronousReq.isa, sectionIdentifier, 5);

      v13 = 0;
    }

    else
    {
      v13 = v21[5];
    }

    v14 = v13;

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

intptr_t __65__BBLocalDataProvider__doSynchronousRemoteRequest_conditionalOn___block_invoke(void *a1)
{
  v2 = (*(a1[5] + 16))();
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[4];

  return dispatch_semaphore_signal(v5);
}

- (void)_doAsynchronousRemoteRequest:(id)request conditionalOn:(id)on completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v10 = (*(on + 2))(on);
  if (requestCopy && (v10 & 1) != 0)
  {
    remoteQueue = self->_remoteQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__BBLocalDataProvider__doAsynchronousRemoteRequest_conditionalOn_completion___block_invoke;
    block[3] = &unk_278D2B898;
    v13 = requestCopy;
    v14 = completionCopy;
    block[4] = self;
    dispatch_async(remoteQueue, block);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __77__BBLocalDataProvider__doAsynchronousRemoteRequest_conditionalOn_completion___block_invoke(void *a1)
{
  v2 = (*(a1[5] + 16))();
  v3 = a1[6];
  if (v3)
  {
    v4 = a1[4];
    v5 = *(v4 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__BBLocalDataProvider__doAsynchronousRemoteRequest_conditionalOn_completion___block_invoke_2;
    block[3] = &unk_278D2B870;
    block[4] = v4;
    v8 = v3;
    v7 = v2;
    dispatch_async(v5, block);
  }
}

void *__77__BBLocalDataProvider__doAsynchronousRemoteRequest_conditionalOn_completion___block_invoke_2(void *result)
{
  if ((*(result[4] + 49) & 1) == 0)
  {
    return (*(result[6] + 16))(result[6], result[5]);
  }

  return result;
}

- (id)_bulletinsWithRequestParameters:(id)parameters lastCleared:(id)cleared
{
  parametersCopy = parameters;
  clearedCopy = cleared;
  identity = [(BBDataProvider *)self identity];
  if (([identity traits] & 4) != 0)
  {
    v10 = [(BBDataProvider *)self->_dataProvider bulletinsWithRequestParameters:parametersCopy lastCleared:clearedCopy];
LABEL_5:
    v9 = v10;
    goto LABEL_6;
  }

  if (([parametersCopy publisherDestination] & 2) == 0)
  {
LABEL_3:
    v9 = 0;
    goto LABEL_6;
  }

  if (([identity traits] & 0x10) == 0)
  {
    if (([identity traits] & 8) == 0)
    {
      goto LABEL_3;
    }

    v10 = -[BBDataProvider bulletinsFilteredBy:count:lastCleared:](self->_dataProvider, "bulletinsFilteredBy:count:lastCleared:", 0, [parametersCopy maximumCount], clearedCopy);
    goto LABEL_5;
  }

  dataProvider = self->_dataProvider;
  enabledSectionIDs = [parametersCopy enabledSectionIDs];
  v9 = -[BBDataProvider bulletinsFilteredBy:enabledSectionIDs:count:lastCleared:](dataProvider, "bulletinsFilteredBy:enabledSectionIDs:count:lastCleared:", 0, enabledSectionIDs, [parametersCopy maximumCount], clearedCopy);

LABEL_6:

  return v9;
}

- (id)bulletinsWithRequestParameters:(id)parameters lastCleared:(id)cleared
{
  parametersCopy = parameters;
  clearedCopy = cleared;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__BBLocalDataProvider_bulletinsWithRequestParameters_lastCleared___block_invoke;
  v12[3] = &unk_278D2B8C0;
  v12[4] = self;
  v13 = parametersCopy;
  v14 = clearedCopy;
  v8 = clearedCopy;
  v9 = parametersCopy;
  v10 = [(BBLocalDataProvider *)self _doSynchronousRemoteRequest:v12 conditionalOn:&__block_literal_global_457];

  return v10;
}

- (void)bulletinsWithRequestParameters:(id)parameters lastCleared:(id)cleared completion:(id)completion
{
  parametersCopy = parameters;
  clearedCopy = cleared;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__BBLocalDataProvider_bulletinsWithRequestParameters_lastCleared_completion___block_invoke;
  v12[3] = &unk_278D2B8C0;
  v12[4] = self;
  v13 = parametersCopy;
  v14 = clearedCopy;
  v10 = clearedCopy;
  v11 = parametersCopy;
  [(BBLocalDataProvider *)self _doAsynchronousRemoteRequest:v12 conditionalOn:&__block_literal_global_459 completion:completion];
}

- (id)clearedInfoForBulletins:(id)bulletins lastClearedInfo:(id)info
{
  bulletinsCopy = bulletins;
  infoCopy = info;
  identity = [(BBDataProvider *)self identity];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __63__BBLocalDataProvider_clearedInfoForBulletins_lastClearedInfo___block_invoke;
  v16[3] = &unk_278D2B908;
  v17 = identity;
  selfCopy = self;
  v19 = bulletinsCopy;
  v20 = infoCopy;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__BBLocalDataProvider_clearedInfoForBulletins_lastClearedInfo___block_invoke_2;
  v14[3] = &unk_278D2B930;
  v15 = v17;
  v9 = v17;
  v10 = infoCopy;
  v11 = bulletinsCopy;
  v12 = [(BBLocalDataProvider *)self _doSynchronousRemoteRequest:v16 conditionalOn:v14];

  return v12;
}

id __63__BBLocalDataProvider_clearedInfoForBulletins_lastClearedInfo___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) traits] & 0x20) != 0)
  {
    v2 = [*(*(a1 + 40) + 32) clearedInfoForBulletins:*(a1 + 48) lastClearedInfo:*(a1 + 56)];
  }

  else if (([*(a1 + 32) traits] & 0x100) != 0)
  {
    v2 = [*(*(a1 + 40) + 32) clearedInfoForBulletins:*(a1 + 48)];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t __63__BBLocalDataProvider_clearedInfoForBulletins_lastClearedInfo___block_invoke_2(uint64_t a1)
{
  if (([*(a1 + 32) traits] & 0x20) != 0)
  {
    return 1;
  }

  else
  {
    return ([*(a1 + 32) traits] >> 8) & 1;
  }
}

- (void)clearedInfoForBulletins:(id)bulletins lastClearedInfo:(id)info completion:(id)completion
{
  bulletinsCopy = bulletins;
  infoCopy = info;
  completionCopy = completion;
  identity = [(BBDataProvider *)self identity];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __74__BBLocalDataProvider_clearedInfoForBulletins_lastClearedInfo_completion___block_invoke;
  v17[3] = &unk_278D2B908;
  v18 = identity;
  selfCopy = self;
  v20 = bulletinsCopy;
  v21 = infoCopy;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__BBLocalDataProvider_clearedInfoForBulletins_lastClearedInfo_completion___block_invoke_2;
  v15[3] = &unk_278D2B930;
  v16 = v18;
  v12 = v18;
  v13 = infoCopy;
  v14 = bulletinsCopy;
  [(BBLocalDataProvider *)self _doAsynchronousRemoteRequest:v17 conditionalOn:v15 completion:completionCopy];
}

id __74__BBLocalDataProvider_clearedInfoForBulletins_lastClearedInfo_completion___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) traits] & 0x20) != 0)
  {
    v2 = [*(*(a1 + 40) + 32) clearedInfoForBulletins:*(a1 + 48) lastClearedInfo:*(a1 + 56)];
  }

  else if (([*(a1 + 32) traits] & 0x100) != 0)
  {
    v2 = [*(*(a1 + 40) + 32) clearedInfoForBulletins:*(a1 + 48)];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t __74__BBLocalDataProvider_clearedInfoForBulletins_lastClearedInfo_completion___block_invoke_2(uint64_t a1)
{
  if (([*(a1 + 32) traits] & 0x20) != 0)
  {
    return 1;
  }

  else
  {
    return ([*(a1 + 32) traits] >> 8) & 1;
  }
}

- (void)clearedInfoForClearingAllBulletinsWithLastClearedInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  identity = [(BBDataProvider *)self identity];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __88__BBLocalDataProvider_clearedInfoForClearingAllBulletinsWithLastClearedInfo_completion___block_invoke;
  v13[3] = &unk_278D2B958;
  v13[4] = self;
  v14 = infoCopy;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __88__BBLocalDataProvider_clearedInfoForClearingAllBulletinsWithLastClearedInfo_completion___block_invoke_2;
  v11[3] = &unk_278D2B930;
  v12 = identity;
  v9 = identity;
  v10 = infoCopy;
  [(BBLocalDataProvider *)self _doAsynchronousRemoteRequest:v13 conditionalOn:v11 completion:completionCopy];
}

- (void)clearedInfoForClearingBulletinsFromDate:(id)date toDate:(id)toDate lastClearedInfo:(id)info completion:(id)completion
{
  dateCopy = date;
  toDateCopy = toDate;
  infoCopy = info;
  completionCopy = completion;
  identity = [(BBDataProvider *)self identity];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __97__BBLocalDataProvider_clearedInfoForClearingBulletinsFromDate_toDate_lastClearedInfo_completion___block_invoke;
  v21[3] = &unk_278D2B908;
  v21[4] = self;
  v22 = dateCopy;
  v23 = toDateCopy;
  v24 = infoCopy;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __97__BBLocalDataProvider_clearedInfoForClearingBulletinsFromDate_toDate_lastClearedInfo_completion___block_invoke_2;
  v19[3] = &unk_278D2B930;
  v20 = identity;
  v15 = identity;
  v16 = infoCopy;
  v17 = toDateCopy;
  v18 = dateCopy;
  [(BBLocalDataProvider *)self _doAsynchronousRemoteRequest:v21 conditionalOn:v19 completion:completionCopy];
}

- (void)updateClearedInfoWithClearedInfo:(id)info handler:(id)handler completion:(id)completion
{
  infoCopy = info;
  handlerCopy = handler;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__BBLocalDataProvider_updateClearedInfoWithClearedInfo_handler_completion___block_invoke;
  v14[3] = &unk_278D2B980;
  v15 = infoCopy;
  v16 = handlerCopy;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__BBLocalDataProvider_updateClearedInfoWithClearedInfo_handler_completion___block_invoke_2;
  v12[3] = &unk_278D2B9A8;
  v13 = v16;
  v10 = v16;
  v11 = infoCopy;
  [(BBLocalDataProvider *)self _doAsynchronousRemoteRequest:v14 conditionalOn:v12 completion:completion];
}

- (void)updateSectionInfoWithSectionInfo:(id)info handler:(id)handler completion:(id)completion
{
  infoCopy = info;
  handlerCopy = handler;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__BBLocalDataProvider_updateSectionInfoWithSectionInfo_handler_completion___block_invoke;
  v14[3] = &unk_278D2B980;
  v15 = infoCopy;
  v16 = handlerCopy;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__BBLocalDataProvider_updateSectionInfoWithSectionInfo_handler_completion___block_invoke_2;
  v12[3] = &unk_278D2B9A8;
  v13 = v16;
  v10 = v16;
  v11 = infoCopy;
  [(BBLocalDataProvider *)self _doAsynchronousRemoteRequest:v14 conditionalOn:v12 completion:completion];
}

- (void)deliverResponse:(id)response forBulletinRequest:(id)request withCompletion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  requestCopy = request;
  completionCopy = completion;
  v11 = [requestCopy actionForResponse:responseCopy];
  identity = [(BBDataProvider *)self identity];
  internalBlock = [v11 internalBlock];
  if (internalBlock || ([identity traits] & 0x100000) != 0)
  {
    v14 = 1;
  }

  else
  {
    v14 = ([identity traits] >> 21) & 1;
  }

  if (!v11 || !v14)
  {
    v16 = BBLogGeneral;
    if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_ERROR))
    {
      v20 = v16;
      *buf = 138543874;
      v30 = objc_opt_class();
      v31 = 2114;
      v32 = v11;
      v33 = 1024;
      v34 = v14;
      v21 = v30;
      _os_log_error_impl(&dword_241EFF000, v20, OS_LOG_TYPE_ERROR, "%{public}@ could not deliver response for action %{public}@\tcanDeliver=%d", buf, 0x1Cu);

      if (!completionCopy)
      {
        goto LABEL_15;
      }
    }

    else if (!completionCopy)
    {
      goto LABEL_15;
    }

    completionCopy[2](completionCopy, 0);
    goto LABEL_15;
  }

  if (([identity traits] & 0x100000) != 0 || (objc_msgSend(identity, "traits") & 0x200000) != 0)
  {
    v15 = [BBActionResponse actionResponseForResponse:responseCopy bulletinRequest:requestCopy];
  }

  else
  {
    v15 = 0;
  }

  remoteQueue = self->_remoteQueue;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __73__BBLocalDataProvider_deliverResponse_forBulletinRequest_withCompletion___block_invoke;
  v22[3] = &unk_278D2AD50;
  v23 = v11;
  v24 = responseCopy;
  v25 = v15;
  v26 = identity;
  selfCopy = self;
  v28 = completionCopy;
  v18 = v15;
  dispatch_async(remoteQueue, v22);

LABEL_15:
  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __73__BBLocalDataProvider_deliverResponse_forBulletinRequest_withCompletion___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) deliverResponse:*(a1 + 40)];
  if (v2)
  {
    goto LABEL_2;
  }

  if (*(a1 + 48))
  {
    if (([*(a1 + 56) traits] & 0x200000) != 0)
    {
      [*(*(a1 + 64) + 32) handleBulletinActionResponse:*(a1 + 48) withCompletion:*(a1 + 72)];
    }

    else if (([*(a1 + 56) traits] & 0x100000) != 0)
    {
      [*(*(a1 + 64) + 32) handleBulletinActionResponse:*(a1 + 48)];
LABEL_2:
      v3 = 1;
      goto LABEL_9;
    }
  }

  v3 = 0;
LABEL_9:
  v4 = BBLogGeneral;
  if (os_log_type_enabled(BBLogGeneral, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 64);
    v6 = v4;
    v7 = objc_opt_class();
    v8 = *(a1 + 32);
    v12 = 138544130;
    v13 = v7;
    v14 = 2114;
    v15 = v8;
    v16 = 1024;
    v17 = v3;
    v18 = 1024;
    v19 = v2;
    v9 = v7;
    _os_log_impl(&dword_241EFF000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ delivered response for action %{public}@ with success=%d; delivered=%d", &v12, 0x22u);
  }

  result = *(a1 + 72);
  if (result)
  {
    result = (*(result + 16))(result, v3);
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)canPerformMigration
{
  identity = [(BBDataProvider *)self identity];
  v3 = ([identity traits] >> 13) & 1;

  return v3;
}

- (BOOL)migrateSectionInfo:(id)info oldSectionInfo:(id)sectionInfo
{
  infoCopy = info;
  sectionInfoCopy = sectionInfo;
  identity = [(BBDataProvider *)self identity];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if (([identity traits] & 0x2000) != 0)
  {
    remoteQueue = self->_remoteQueue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __57__BBLocalDataProvider_migrateSectionInfo_oldSectionInfo___block_invoke;
    v12[3] = &unk_278D2B9D0;
    v15 = &v16;
    v12[4] = self;
    v13 = infoCopy;
    v14 = sectionInfoCopy;
    dispatch_sync(remoteQueue, v12);
  }

  v10 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);

  return v10;
}

uint64_t __57__BBLocalDataProvider_migrateSectionInfo_oldSectionInfo___block_invoke(void *a1)
{
  result = [*(a1[4] + 32) migrateSectionInfo:a1[5] oldSectionInfo:a1[6]];
  *(*(a1[7] + 8) + 24) = result;
  return result;
}

- (void)reloadIdentityWithCompletion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__BBLocalDataProvider_reloadIdentityWithCompletion___block_invoke;
  v8[3] = &unk_278D2B9F8;
  v8[4] = self;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__BBLocalDataProvider_reloadIdentityWithCompletion___block_invoke_3;
  v6[3] = &unk_278D2BA20;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  [(BBLocalDataProvider *)self _doAsynchronousRemoteRequest:v8 conditionalOn:&__block_literal_global_462 completion:v6];
}

void __52__BBLocalDataProvider_reloadIdentityWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  if (v3)
  {
    [v4 setIdentity:v3];
    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))();
    }
  }

  else
  {
    NSLog(&cfstr_Bbdataprovider_20.isa, v4);
  }
}

- (void)noteSectionInfoDidChange:(id)change
{
  changeCopy = change;
  identity = [(BBDataProvider *)self identity];
  if (([identity traits] & 0x40000) != 0)
  {
    remoteQueue = self->_remoteQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__BBLocalDataProvider_noteSectionInfoDidChange___block_invoke;
    v7[3] = &unk_278D2A628;
    v7[4] = self;
    v8 = changeCopy;
    dispatch_async(remoteQueue, v7);
  }
}

- (void)deliverMessageWithName:(id)name userInfo:(id)info
{
  nameCopy = name;
  infoCopy = info;
  identity = [(BBDataProvider *)self identity];
  if (([identity traits] & 0x20000) != 0)
  {
    remoteQueue = self->_remoteQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__BBLocalDataProvider_deliverMessageWithName_userInfo___block_invoke;
    block[3] = &unk_278D2AB58;
    block[4] = self;
    v12 = nameCopy;
    v13 = infoCopy;
    dispatch_async(remoteQueue, block);
  }

  else
  {
    sectionIdentifier = [(BBDataProvider *)self sectionIdentifier];
    NSLog(&cfstr_Bbdataprovider_21.isa, sectionIdentifier);
  }
}

- (void)_initWithDataProvider:sectionID:serverQueue:initializationCompletion:.cold.1()
{
  OUTLINED_FUNCTION_0_3();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"queue != nil" object:? file:? lineNumber:? description:?];
}

- (void)_initWithDataProvider:sectionID:serverQueue:initializationCompletion:.cold.2()
{
  OUTLINED_FUNCTION_0_3();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"sectionID != nil" object:? file:? lineNumber:? description:?];
}

- (void)_initWithDataProvider:sectionID:serverQueue:initializationCompletion:.cold.3()
{
  OUTLINED_FUNCTION_0_3();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"dataProvider != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithPrincipalClass:serverQueue:initializationCompletion:.cold.1()
{
  OUTLINED_FUNCTION_0_3();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v0 handleFailureInMethod:@"queue != nil" object:? file:? lineNumber:? description:?];
}

@end