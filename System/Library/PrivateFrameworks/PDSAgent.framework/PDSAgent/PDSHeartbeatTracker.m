@interface PDSHeartbeatTracker
- (BOOL)isPassedTrackedHeartbeatDate;
- (NSDate)trackedHeartbeatDate;
- (PDSHeartbeatTracker)initWithDelegate:(id)a3 queue:(id)a4 kvStoreBlock:(id)a5 serverBag:(id)a6;
- (PDSHeartbeatTrackerDelegate)delegate;
- (void)_handleHeartbeatFired;
- (void)_markNextCheckpointTimeWithTTL:(double)a3;
- (void)_setupMaintenanceActivity;
- (void)noteShouldNotTrackHeartbeat;
- (void)noteShouldTrackHeartbeat;
- (void)noteUpdatedHeartbeatTTL:(double)a3;
@end

@implementation PDSHeartbeatTracker

- (PDSHeartbeatTracker)initWithDelegate:(id)a3 queue:(id)a4 kvStoreBlock:(id)a5 serverBag:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [PDSHeartbeatTracker initWithDelegate:queue:kvStoreBlock:serverBag:];
    if (v11)
    {
LABEL_3:
      if (v12)
      {
        goto LABEL_4;
      }

LABEL_10:
      [PDSHeartbeatTracker initWithDelegate:queue:kvStoreBlock:serverBag:];
      if (v13)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  [PDSHeartbeatTracker initWithDelegate:queue:kvStoreBlock:serverBag:];
  if (!v12)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (v13)
  {
    goto LABEL_5;
  }

LABEL_11:
  [PDSHeartbeatTracker initWithDelegate:queue:kvStoreBlock:serverBag:];
LABEL_5:
  v19.receiver = self;
  v19.super_class = PDSHeartbeatTracker;
  v14 = [(PDSHeartbeatTracker *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_delegate, v10);
    objc_storeStrong(&v15->_queue, a4);
    v16 = MEMORY[0x25F8A7090](v12);
    kvStoreBlock = v15->_kvStoreBlock;
    v15->_kvStoreBlock = v16;

    objc_storeStrong(&v15->_serverBag, a6);
  }

  return v15;
}

- (void)_handleHeartbeatFired
{
  v3 = [(PDSHeartbeatTracker *)self delegate];
  [v3 heartbeatFiredForTracker:self];
}

- (void)noteUpdatedHeartbeatTTL:(double)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = [(PDSHeartbeatTracker *)self serverBag];
  v6 = arc4random_uniform([v5 ttlWindowFromBag]);

  v7 = [(PDSHeartbeatTracker *)self serverBag];
  v8 = [v7 ttlGracePeriodFromBag];

  if (a3 - v8 - v6 >= 3600.0)
  {
    v9 = a3 - v8 - v6;
  }

  else
  {
    v9 = 3600.0;
  }

  v10 = pds_defaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    v13 = v9;
    _os_log_impl(&dword_25DED8000, v10, OS_LOG_TYPE_DEFAULT, "Scheduling heartbeat in: %f", &v12, 0xCu);
  }

  [(PDSHeartbeatTracker *)self _markNextCheckpointTimeWithTTL:v9];
  [(PDSHeartbeatTracker *)self noteShouldTrackHeartbeat];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)_setupMaintenanceActivity
{
  if (![(PDSHeartbeatTracker *)self scheduledActivity])
  {
    objc_initWeak(&location, self);
    v3 = *MEMORY[0x277D37AF0];
    v4 = *MEMORY[0x277D86238];
    v5 = MEMORY[0x277D85DD0];
    v6 = 3221225472;
    v7 = __48__PDSHeartbeatTracker__setupMaintenanceActivity__block_invoke;
    v8 = &unk_2799F8598;
    objc_copyWeak(&v9, &location);
    xpc_activity_register(v3, v4, &v5);
    [(PDSHeartbeatTracker *)self setScheduledActivity:1, v5, v6, v7, v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __48__PDSHeartbeatTracker__setupMaintenanceActivity__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    v6 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__PDSHeartbeatTracker__setupMaintenanceActivity__block_invoke_22;
    block[3] = &unk_2799F82F0;
    block[4] = WeakRetained;
    dispatch_async(v6, block);
LABEL_10:

    goto LABEL_11;
  }

  if (!state)
  {
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v6, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
    xpc_dictionary_set_BOOL(v6, *MEMORY[0x277D86230], 0);
    xpc_dictionary_set_int64(v6, *MEMORY[0x277D86288], *MEMORY[0x277D86298]);
    v7 = xpc_activity_copy_criteria(v3);
    v8 = v7;
    if (!v7 || !xpc_equal(v7, v6))
    {
      xpc_activity_set_criteria(v3, v6);
    }

    v9 = pds_defaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&dword_25DED8000, v9, OS_LOG_TYPE_DEFAULT, "Scheduling heartbeat XPC activity %@", buf, 0xCu);
    }

    goto LABEL_10;
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __48__PDSHeartbeatTracker__setupMaintenanceActivity__block_invoke_22(uint64_t a1)
{
  v2 = pds_defaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25DED8000, v2, OS_LOG_TYPE_DEFAULT, "Heartbeat XPC activity fired", v4, 2u);
  }

  return [*(a1 + 32) _handleHeartbeatFired];
}

- (void)noteShouldNotTrackHeartbeat
{
  xpc_activity_unregister(*MEMORY[0x277D37AF0]);
  [(PDSHeartbeatTracker *)self setScheduledActivity:0];
  v3 = [(PDSHeartbeatTracker *)self heartbeatTimer];
  [v3 invalidate];

  [(PDSHeartbeatTracker *)self setHeartbeatTimer:0];
}

- (void)noteShouldTrackHeartbeat
{
  v3 = [(PDSHeartbeatTracker *)self trackedHeartbeatDate];
  v4 = [(PDSHeartbeatTracker *)self delegate];
  v5 = [v4 shouldScheduleHeartbeatForTracker:self];

  if (v5)
  {
    [(IMDispatchTimer *)self->_heartbeatTimer invalidate];
    heartbeatTimer = self->_heartbeatTimer;
    self->_heartbeatTimer = 0;

    v7 = [MEMORY[0x277CBEAA8] now];
    [v3 timeIntervalSinceDate:v7];
    v9 = v8;

    v10 = arc4random_uniform(0x3Cu) + 21600.0;
    if (v9 < v10)
    {
      v10 = v9;
    }

    v11 = fmax(v10, 3600.0);
    v12 = objc_alloc(MEMORY[0x277D19240]);
    v13 = [(PDSHeartbeatTracker *)self queue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __47__PDSHeartbeatTracker_noteShouldTrackHeartbeat__block_invoke;
    v16[3] = &unk_2799F85C0;
    v16[4] = self;
    v14 = [v12 initWithQueue:v13 interval:v11 repeats:0 handlerBlock:v16];
    v15 = self->_heartbeatTimer;
    self->_heartbeatTimer = v14;

    [(PDSHeartbeatTracker *)self _setupMaintenanceActivity];
  }
}

void __47__PDSHeartbeatTracker_noteShouldTrackHeartbeat__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _handleHeartbeatFired];
  [*(*(a1 + 32) + 16) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;
}

- (BOOL)isPassedTrackedHeartbeatDate
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [(PDSHeartbeatTracker *)self trackedHeartbeatDate];
  v3 = pds_defaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v2;
    _os_log_impl(&dword_25DED8000, v3, OS_LOG_TYPE_DEFAULT, "Next checkpoint time %@", &v11, 0xCu);
  }

  if (v2)
  {
    [v2 timeIntervalSinceReferenceDate];
    v5 = v4 + -300.0;
    v6 = [MEMORY[0x277CBEAA8] now];
    [v6 timeIntervalSinceReferenceDate];
    v8 = v7 > v5;
  }

  else
  {
    v6 = pds_defaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_25DED8000, v6, OS_LOG_TYPE_DEFAULT, "No checkpoint time saved. Heartbeating", &v11, 2u);
    }

    v8 = 1;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (NSDate)trackedHeartbeatDate
{
  v2 = [(PDSHeartbeatTracker *)self kvStoreBlock];
  v3 = v2[2]();

  v4 = [v3 numberForKey:@"kPDSNextCheckpointTime"];
  v5 = MEMORY[0x277CBEAA8];
  [v4 doubleValue];
  v6 = [v5 dateWithTimeIntervalSince1970:?];

  return v6;
}

- (void)_markNextCheckpointTimeWithTTL:(double)a3
{
  v4 = [(PDSHeartbeatTracker *)self kvStoreBlock];
  v9 = v4[2]();

  v5 = MEMORY[0x277CCABB0];
  v6 = [MEMORY[0x277CBEAA8] now];
  v7 = [v6 dateByAddingTimeInterval:a3];
  [v7 timeIntervalSince1970];
  v8 = [v5 numberWithDouble:?];
  [v9 setNumber:v8 forKey:@"kPDSNextCheckpointTime"];
}

- (PDSHeartbeatTrackerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithDelegate:queue:kvStoreBlock:serverBag:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"delegate" object:? file:? lineNumber:? description:?];
}

- (void)initWithDelegate:queue:kvStoreBlock:serverBag:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"queue" object:? file:? lineNumber:? description:?];
}

- (void)initWithDelegate:queue:kvStoreBlock:serverBag:.cold.3()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"kvStoreBlock" object:? file:? lineNumber:? description:?];
}

- (void)initWithDelegate:queue:kvStoreBlock:serverBag:.cold.4()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"serverBag" object:? file:? lineNumber:? description:?];
}

@end