@interface BBLocalDataProvider
+ (id)dataProviderWithDataProvider:(id)a3 serverQueue:(id)a4;
+ (id)dataProviderWithPrincipalClass:(Class)a3 serverQueue:(id)a4 initializationCompletion:(id)a5;
- (BBLocalDataProvider)initWithDataProvider:(id)a3 serverQueue:(id)a4;
- (BBLocalDataProvider)initWithPrincipalClass:(Class)a3 serverQueue:(id)a4 initializationCompletion:(id)a5;
- (BOOL)canPerformMigration;
- (BOOL)migrateSectionInfo:(id)a3 oldSectionInfo:(id)a4;
- (id)_bulletinsWithRequestParameters:(id)a3 lastCleared:(id)a4;
- (id)_doSynchronousRemoteRequest:(id)a3 conditionalOn:(id)a4;
- (id)_initWithDataProvider:(id)a3 sectionID:(id)a4 serverQueue:(id)a5 initializationCompletion:(id)a6;
- (id)bulletinsWithRequestParameters:(id)a3 lastCleared:(id)a4;
- (id)clearedInfoForBulletins:(id)a3 lastClearedInfo:(id)a4;
- (void)_doAsynchronousRemoteRequest:(id)a3 conditionalOn:(id)a4 completion:(id)a5;
- (void)_ping;
- (void)bulletinsWithRequestParameters:(id)a3 lastCleared:(id)a4 completion:(id)a5;
- (void)clearedInfoForBulletins:(id)a3 lastClearedInfo:(id)a4 completion:(id)a5;
- (void)clearedInfoForClearingAllBulletinsWithLastClearedInfo:(id)a3 completion:(id)a4;
- (void)clearedInfoForClearingBulletinsFromDate:(id)a3 toDate:(id)a4 lastClearedInfo:(id)a5 completion:(id)a6;
- (void)dataProviderDidLoad;
- (void)dealloc;
- (void)deliverMessageWithName:(id)a3 userInfo:(id)a4;
- (void)deliverResponse:(id)a3 forBulletinRequest:(id)a4 withCompletion:(id)a5;
- (void)invalidate;
- (void)noteSectionInfoDidChange:(id)a3;
- (void)reloadIdentityWithCompletion:(id)a3;
- (void)startWatchdog;
- (void)updateClearedInfoWithClearedInfo:(id)a3 handler:(id)a4 completion:(id)a5;
- (void)updateSectionInfoWithSectionInfo:(id)a3 handler:(id)a4 completion:(id)a5;
@end

@implementation BBLocalDataProvider

+ (id)dataProviderWithPrincipalClass:(Class)a3 serverQueue:(id)a4 initializationCompletion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [[a1 alloc] initWithPrincipalClass:a3 serverQueue:v9 initializationCompletion:v8];

  return v10;
}

+ (id)dataProviderWithDataProvider:(id)a3 serverQueue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithDataProvider:v7 serverQueue:v6];

  return v8;
}

- (id)_initWithDataProvider:(id)a3 sectionID:(id)a4 serverQueue:(id)a5 initializationCompletion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v13)
  {
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_11:
    [BBLocalDataProvider _initWithDataProvider:sectionID:serverQueue:initializationCompletion:];
    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  [BBLocalDataProvider _initWithDataProvider:sectionID:serverQueue:initializationCompletion:];
  if (!v12)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v11)
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
    objc_storeStrong(&v15->_localQueue, a5);
    objc_storeStrong(&v16->_dataProvider, a3);
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"BBDataProviderQueue:%@", v12];
    v18 = [v17 UTF8String];
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create(v18, v19);
    remoteQueue = v16->_remoteQueue;
    v16->_remoteQueue = v20;

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __92__BBLocalDataProvider__initWithDataProvider_sectionID_serverQueue_initializationCompletion___block_invoke;
    v31[3] = &unk_278D2A628;
    v22 = v16;
    v32 = v22;
    v33 = v11;
    v23 = MEMORY[0x245D05D40](v31);
    v24 = v23;
    v25 = v16->_remoteQueue;
    if (v14)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __92__BBLocalDataProvider__initWithDataProvider_sectionID_serverQueue_initializationCompletion___block_invoke_2;
      block[3] = &unk_278D2B7F8;
      v29 = v23;
      v28 = v22;
      v30 = v14;
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

- (BBLocalDataProvider)initWithDataProvider:(id)a3 serverQueue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 sectionIdentifier];
  v9 = [(BBLocalDataProvider *)self _initWithDataProvider:v7 sectionID:v8 serverQueue:v6 initializationCompletion:0];

  return v9;
}

- (BBLocalDataProvider)initWithPrincipalClass:(Class)a3 serverQueue:(id)a4 initializationCompletion:(id)a5
{
  v51 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  if (!v8)
  {
    [BBLocalDataProvider initWithPrincipalClass:serverQueue:initializationCompletion:];
  }

  if (!a3)
  {
    v16 = @"<null>";
LABEL_9:
    NSLog(&cfstr_Bbdataprovider_18.isa, v16);

    v17 = 0;
    goto LABEL_13;
  }

  if (([(objc_class *)a3 conformsToProtocol:&unk_2854452F8]& 1) == 0)
  {
    v16 = NSStringFromClass(a3);
    goto LABEL_9;
  }

  v10 = [MEMORY[0x277CBEAA8] date];
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
  v32 = a3;
  v13 = self;
  v25 = v13;
  v26 = v8;
  v28 = v9;
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
    [v10 timeIntervalSinceNow];
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
  v11 = self;
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

- (id)_doSynchronousRemoteRequest:(id)a3 conditionalOn:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7[2]())
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
    v18 = v6;
    v10 = v8;
    v17 = v10;
    dispatch_async(remoteQueue, block);
    v11 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v10, v11))
    {
      v12 = [(BBDataProvider *)self sectionIdentifier];
      NSLog(&cfstr_SynchronousReq.isa, v12, 5);

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

- (void)_doAsynchronousRemoteRequest:(id)a3 conditionalOn:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = (*(a4 + 2))(a4);
  if (v8 && (v10 & 1) != 0)
  {
    remoteQueue = self->_remoteQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__BBLocalDataProvider__doAsynchronousRemoteRequest_conditionalOn_completion___block_invoke;
    block[3] = &unk_278D2B898;
    v13 = v8;
    v14 = v9;
    block[4] = self;
    dispatch_async(remoteQueue, block);
  }

  else if (v9)
  {
    (*(v9 + 2))(v9, 0);
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

- (id)_bulletinsWithRequestParameters:(id)a3 lastCleared:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BBDataProvider *)self identity];
  if (([v8 traits] & 4) != 0)
  {
    v10 = [(BBDataProvider *)self->_dataProvider bulletinsWithRequestParameters:v6 lastCleared:v7];
LABEL_5:
    v9 = v10;
    goto LABEL_6;
  }

  if (([v6 publisherDestination] & 2) == 0)
  {
LABEL_3:
    v9 = 0;
    goto LABEL_6;
  }

  if (([v8 traits] & 0x10) == 0)
  {
    if (([v8 traits] & 8) == 0)
    {
      goto LABEL_3;
    }

    v10 = -[BBDataProvider bulletinsFilteredBy:count:lastCleared:](self->_dataProvider, "bulletinsFilteredBy:count:lastCleared:", 0, [v6 maximumCount], v7);
    goto LABEL_5;
  }

  dataProvider = self->_dataProvider;
  v13 = [v6 enabledSectionIDs];
  v9 = -[BBDataProvider bulletinsFilteredBy:enabledSectionIDs:count:lastCleared:](dataProvider, "bulletinsFilteredBy:enabledSectionIDs:count:lastCleared:", 0, v13, [v6 maximumCount], v7);

LABEL_6:

  return v9;
}

- (id)bulletinsWithRequestParameters:(id)a3 lastCleared:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__BBLocalDataProvider_bulletinsWithRequestParameters_lastCleared___block_invoke;
  v12[3] = &unk_278D2B8C0;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v8 = v7;
  v9 = v6;
  v10 = [(BBLocalDataProvider *)self _doSynchronousRemoteRequest:v12 conditionalOn:&__block_literal_global_457];

  return v10;
}

- (void)bulletinsWithRequestParameters:(id)a3 lastCleared:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__BBLocalDataProvider_bulletinsWithRequestParameters_lastCleared_completion___block_invoke;
  v12[3] = &unk_278D2B8C0;
  v12[4] = self;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [(BBLocalDataProvider *)self _doAsynchronousRemoteRequest:v12 conditionalOn:&__block_literal_global_459 completion:a5];
}

- (id)clearedInfoForBulletins:(id)a3 lastClearedInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BBDataProvider *)self identity];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __63__BBLocalDataProvider_clearedInfoForBulletins_lastClearedInfo___block_invoke;
  v16[3] = &unk_278D2B908;
  v17 = v8;
  v18 = self;
  v19 = v6;
  v20 = v7;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__BBLocalDataProvider_clearedInfoForBulletins_lastClearedInfo___block_invoke_2;
  v14[3] = &unk_278D2B930;
  v15 = v17;
  v9 = v17;
  v10 = v7;
  v11 = v6;
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

- (void)clearedInfoForBulletins:(id)a3 lastClearedInfo:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(BBDataProvider *)self identity];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __74__BBLocalDataProvider_clearedInfoForBulletins_lastClearedInfo_completion___block_invoke;
  v17[3] = &unk_278D2B908;
  v18 = v11;
  v19 = self;
  v20 = v8;
  v21 = v9;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__BBLocalDataProvider_clearedInfoForBulletins_lastClearedInfo_completion___block_invoke_2;
  v15[3] = &unk_278D2B930;
  v16 = v18;
  v12 = v18;
  v13 = v9;
  v14 = v8;
  [(BBLocalDataProvider *)self _doAsynchronousRemoteRequest:v17 conditionalOn:v15 completion:v10];
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

- (void)clearedInfoForClearingAllBulletinsWithLastClearedInfo:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BBDataProvider *)self identity];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __88__BBLocalDataProvider_clearedInfoForClearingAllBulletinsWithLastClearedInfo_completion___block_invoke;
  v13[3] = &unk_278D2B958;
  v13[4] = self;
  v14 = v6;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __88__BBLocalDataProvider_clearedInfoForClearingAllBulletinsWithLastClearedInfo_completion___block_invoke_2;
  v11[3] = &unk_278D2B930;
  v12 = v8;
  v9 = v8;
  v10 = v6;
  [(BBLocalDataProvider *)self _doAsynchronousRemoteRequest:v13 conditionalOn:v11 completion:v7];
}

- (void)clearedInfoForClearingBulletinsFromDate:(id)a3 toDate:(id)a4 lastClearedInfo:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(BBDataProvider *)self identity];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __97__BBLocalDataProvider_clearedInfoForClearingBulletinsFromDate_toDate_lastClearedInfo_completion___block_invoke;
  v21[3] = &unk_278D2B908;
  v21[4] = self;
  v22 = v10;
  v23 = v11;
  v24 = v12;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __97__BBLocalDataProvider_clearedInfoForClearingBulletinsFromDate_toDate_lastClearedInfo_completion___block_invoke_2;
  v19[3] = &unk_278D2B930;
  v20 = v14;
  v15 = v14;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  [(BBLocalDataProvider *)self _doAsynchronousRemoteRequest:v21 conditionalOn:v19 completion:v13];
}

- (void)updateClearedInfoWithClearedInfo:(id)a3 handler:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__BBLocalDataProvider_updateClearedInfoWithClearedInfo_handler_completion___block_invoke;
  v14[3] = &unk_278D2B980;
  v15 = v8;
  v16 = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__BBLocalDataProvider_updateClearedInfoWithClearedInfo_handler_completion___block_invoke_2;
  v12[3] = &unk_278D2B9A8;
  v13 = v16;
  v10 = v16;
  v11 = v8;
  [(BBLocalDataProvider *)self _doAsynchronousRemoteRequest:v14 conditionalOn:v12 completion:a5];
}

- (void)updateSectionInfoWithSectionInfo:(id)a3 handler:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__BBLocalDataProvider_updateSectionInfoWithSectionInfo_handler_completion___block_invoke;
  v14[3] = &unk_278D2B980;
  v15 = v8;
  v16 = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__BBLocalDataProvider_updateSectionInfoWithSectionInfo_handler_completion___block_invoke_2;
  v12[3] = &unk_278D2B9A8;
  v13 = v16;
  v10 = v16;
  v11 = v8;
  [(BBLocalDataProvider *)self _doAsynchronousRemoteRequest:v14 conditionalOn:v12 completion:a5];
}

- (void)deliverResponse:(id)a3 forBulletinRequest:(id)a4 withCompletion:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 actionForResponse:v8];
  v12 = [(BBDataProvider *)self identity];
  v13 = [v11 internalBlock];
  if (v13 || ([v12 traits] & 0x100000) != 0)
  {
    v14 = 1;
  }

  else
  {
    v14 = ([v12 traits] >> 21) & 1;
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

      if (!v10)
      {
        goto LABEL_15;
      }
    }

    else if (!v10)
    {
      goto LABEL_15;
    }

    v10[2](v10, 0);
    goto LABEL_15;
  }

  if (([v12 traits] & 0x100000) != 0 || (objc_msgSend(v12, "traits") & 0x200000) != 0)
  {
    v15 = [BBActionResponse actionResponseForResponse:v8 bulletinRequest:v9];
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
  v24 = v8;
  v25 = v15;
  v26 = v12;
  v27 = self;
  v28 = v10;
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
  v2 = [(BBDataProvider *)self identity];
  v3 = ([v2 traits] >> 13) & 1;

  return v3;
}

- (BOOL)migrateSectionInfo:(id)a3 oldSectionInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BBDataProvider *)self identity];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if (([v8 traits] & 0x2000) != 0)
  {
    remoteQueue = self->_remoteQueue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __57__BBLocalDataProvider_migrateSectionInfo_oldSectionInfo___block_invoke;
    v12[3] = &unk_278D2B9D0;
    v15 = &v16;
    v12[4] = self;
    v13 = v6;
    v14 = v7;
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

- (void)reloadIdentityWithCompletion:(id)a3
{
  v4 = a3;
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
  v7 = v4;
  v5 = v4;
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

- (void)noteSectionInfoDidChange:(id)a3
{
  v4 = a3;
  v5 = [(BBDataProvider *)self identity];
  if (([v5 traits] & 0x40000) != 0)
  {
    remoteQueue = self->_remoteQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__BBLocalDataProvider_noteSectionInfoDidChange___block_invoke;
    v7[3] = &unk_278D2A628;
    v7[4] = self;
    v8 = v4;
    dispatch_async(remoteQueue, v7);
  }
}

- (void)deliverMessageWithName:(id)a3 userInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BBDataProvider *)self identity];
  if (([v8 traits] & 0x20000) != 0)
  {
    remoteQueue = self->_remoteQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__BBLocalDataProvider_deliverMessageWithName_userInfo___block_invoke;
    block[3] = &unk_278D2AB58;
    block[4] = self;
    v12 = v6;
    v13 = v7;
    dispatch_async(remoteQueue, block);
  }

  else
  {
    v9 = [(BBDataProvider *)self sectionIdentifier];
    NSLog(&cfstr_Bbdataprovider_21.isa, v9);
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