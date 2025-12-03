@interface HDHeartRateSummaryQueryServer
+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error;
- (void)_queue_start;
- (void)_queue_stop;
- (void)activityCacheManager:(id)manager changedHeartRateSummary:(id)summary isToday:(BOOL)today;
@end

@implementation HDHeartRateSummaryQueryServer

- (void)_queue_start
{
  v4.receiver = self;
  v4.super_class = HDHeartRateSummaryQueryServer;
  [(HDQueryServer *)&v4 _queue_start];
  WeakRetained = objc_loadWeakRetained(&self->_activityCacheInterface);
  [WeakRetained addActivityCacheObserver:self];
}

- (void)_queue_stop
{
  v4.receiver = self;
  v4.super_class = HDHeartRateSummaryQueryServer;
  [(HDQueryServer *)&v4 _queue_stop];
  WeakRetained = objc_loadWeakRetained(&self->_activityCacheInterface);
  [WeakRetained removeActivityCacheObserver:self];
}

+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error
{
  dCopy = d;
  configurationCopy = configuration;
  clientCopy = client;
  delegateCopy = delegate;
  profile = [clientCopy profile];
  activityCacheInterface = [profile activityCacheInterface];

  if (activityCacheInterface)
  {
    v17 = [(HDQueryServer *)[HDHeartRateSummaryQueryServer alloc] initWithUUID:dCopy configuration:configurationCopy client:clientCopy delegate:delegateCopy];
    v18 = v17;
    if (v17)
    {
      objc_storeWeak(&v17->_activityCacheInterface, activityCacheInterface);
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:100 description:@"Activity cache manager is unavailable"];
    v18 = 0;
  }

  return v18;
}

- (void)activityCacheManager:(id)manager changedHeartRateSummary:(id)summary isToday:(BOOL)today
{
  todayCopy = today;
  v24 = *MEMORY[0x277D85DE8];
  summaryCopy = summary;
  if (todayCopy)
  {
    _HKInitializeLogging();
    v9 = MEMORY[0x277CCC2D0];
    v10 = *MEMORY[0x277CCC2D0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D0], OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      *v23 = 138412546;
      *&v23[4] = objc_opt_class();
      *&v23[12] = 2112;
      *&v23[14] = summaryCopy;
      v12 = *&v23[4];
      _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "%@ received updated summary: %@", v23, 0x16u);
    }

    if (([(HKHeartRateSummary *)self->_latestSummary isEqual:summaryCopy, *v23, *&v23[16], v24]& 1) == 0)
    {
      objc_storeStrong(&self->_latestSummary, summary);
      clientProxy = [(HDQueryServer *)self clientProxy];
      remoteObjectProxy = [clientProxy remoteObjectProxy];

      _HKInitializeLogging();
      v18 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
      {
        v20 = v18;
        v21 = objc_opt_class();
        *v23 = 138412546;
        *&v23[4] = v21;
        *&v23[12] = 2112;
        *&v23[14] = remoteObjectProxy;
        v22 = v21;
        _os_log_debug_impl(&dword_228986000, v20, OS_LOG_TYPE_DEBUG, "%@ notifying client: %@", v23, 0x16u);
      }

      queryUUID = [(HDQueryServer *)self queryUUID];
      [remoteObjectProxy client_deliverSummary:summaryCopy queryUUID:queryUUID];
      goto LABEL_10;
    }

    _HKInitializeLogging();
    v13 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
    {
      remoteObjectProxy = v13;
      v15 = objc_opt_class();
      *v23 = 138412290;
      *&v23[4] = v15;
      queryUUID = v15;
      _os_log_debug_impl(&dword_228986000, remoteObjectProxy, OS_LOG_TYPE_DEBUG, "%@ ignoring summary because nothing changed", v23, 0xCu);
LABEL_10:
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

@end