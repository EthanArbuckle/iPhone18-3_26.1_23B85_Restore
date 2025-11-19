@interface HDWorkoutEventCollector
- (HDProfile)profile;
- (HDWorkoutEventCollector)initWithProfile:(id)a3 delegate:(id)a4;
- (HDWorkoutEventCollectorDelegate)delegate;
- (void)requestPendingEventsThroughDate:(id)a3 completion:(id)a4;
- (void)startWithSessionId:(id)a3;
- (void)stop;
@end

@implementation HDWorkoutEventCollector

- (HDWorkoutEventCollectorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)stop
{
  v13 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    sessionId = self->_sessionId;
    v5 = v3;
    v6 = [(NSUUID *)sessionId UUIDString];
    v9 = 138412546;
    v10 = self;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%@: Stopping with session ID %@", &v9, 0x16u);
  }

  v7 = self->_sessionId;
  self->_sessionId = 0;

  v8 = *MEMORY[0x277D85DE8];
}

- (HDWorkoutEventCollector)initWithProfile:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HDWorkoutEventCollector;
  v8 = [(HDWorkoutEventCollector *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_profile, v6);
    objc_storeWeak(&v9->_delegate, v7);
  }

  return v9;
}

- (void)startWithSessionId:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(NSUUID *)v4 UUIDString];
    v10 = 138412546;
    v11 = self;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "%@: Starting with session ID %@", &v10, 0x16u);
  }

  sessionId = self->_sessionId;
  self->_sessionId = v4;

  v9 = *MEMORY[0x277D85DE8];
}

- (void)requestPendingEventsThroughDate:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 1, 0);
  }
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end