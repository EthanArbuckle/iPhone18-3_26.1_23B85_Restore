@interface HDHeartRateSummaryQueryServer
+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7;
- (void)_queue_start;
- (void)_queue_stop;
- (void)activityCacheManager:(id)a3 changedHeartRateSummary:(id)a4 isToday:(BOOL)a5;
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

+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [v13 profile];
  v16 = [v15 activityCacheInterface];

  if (v16)
  {
    v17 = [(HDQueryServer *)[HDHeartRateSummaryQueryServer alloc] initWithUUID:v11 configuration:v12 client:v13 delegate:v14];
    v18 = v17;
    if (v17)
    {
      objc_storeWeak(&v17->_activityCacheInterface, v16);
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a7 code:100 description:@"Activity cache manager is unavailable"];
    v18 = 0;
  }

  return v18;
}

- (void)activityCacheManager:(id)a3 changedHeartRateSummary:(id)a4 isToday:(BOOL)a5
{
  v5 = a5;
  v24 = *MEMORY[0x277D85DE8];
  v8 = a4;
  if (v5)
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
      *&v23[14] = v8;
      v12 = *&v23[4];
      _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "%@ received updated summary: %@", v23, 0x16u);
    }

    if (([(HKHeartRateSummary *)self->_latestSummary isEqual:v8, *v23, *&v23[16], v24]& 1) == 0)
    {
      objc_storeStrong(&self->_latestSummary, a4);
      v17 = [(HDQueryServer *)self clientProxy];
      v14 = [v17 remoteObjectProxy];

      _HKInitializeLogging();
      v18 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
      {
        v20 = v18;
        v21 = objc_opt_class();
        *v23 = 138412546;
        *&v23[4] = v21;
        *&v23[12] = 2112;
        *&v23[14] = v14;
        v22 = v21;
        _os_log_debug_impl(&dword_228986000, v20, OS_LOG_TYPE_DEBUG, "%@ notifying client: %@", v23, 0x16u);
      }

      v16 = [(HDQueryServer *)self queryUUID];
      [v14 client_deliverSummary:v8 queryUUID:v16];
      goto LABEL_10;
    }

    _HKInitializeLogging();
    v13 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
    {
      v14 = v13;
      v15 = objc_opt_class();
      *v23 = 138412290;
      *&v23[4] = v15;
      v16 = v15;
      _os_log_debug_impl(&dword_228986000, v14, OS_LOG_TYPE_DEBUG, "%@ ignoring summary because nothing changed", v23, 0xCu);
LABEL_10:
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

@end