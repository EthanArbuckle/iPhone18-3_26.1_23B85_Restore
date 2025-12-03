@interface HDWorkoutEventCollector
- (HDProfile)profile;
- (HDWorkoutEventCollector)initWithProfile:(id)profile delegate:(id)delegate;
- (HDWorkoutEventCollectorDelegate)delegate;
- (void)requestPendingEventsThroughDate:(id)date completion:(id)completion;
- (void)startWithSessionId:(id)id;
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
    uUIDString = [(NSUUID *)sessionId UUIDString];
    v9 = 138412546;
    selfCopy = self;
    v11 = 2112;
    v12 = uUIDString;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%@: Stopping with session ID %@", &v9, 0x16u);
  }

  v7 = self->_sessionId;
  self->_sessionId = 0;

  v8 = *MEMORY[0x277D85DE8];
}

- (HDWorkoutEventCollector)initWithProfile:(id)profile delegate:(id)delegate
{
  profileCopy = profile;
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = HDWorkoutEventCollector;
  v8 = [(HDWorkoutEventCollector *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_profile, profileCopy);
    objc_storeWeak(&v9->_delegate, delegateCopy);
  }

  return v9;
}

- (void)startWithSessionId:(id)id
{
  v14 = *MEMORY[0x277D85DE8];
  idCopy = id;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    uUIDString = [(NSUUID *)idCopy UUIDString];
    v10 = 138412546;
    selfCopy = self;
    v12 = 2112;
    v13 = uUIDString;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "%@: Starting with session ID %@", &v10, 0x16u);
  }

  sessionId = self->_sessionId;
  self->_sessionId = idCopy;

  v9 = *MEMORY[0x277D85DE8];
}

- (void)requestPendingEventsThroughDate:(id)date completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 1, 0);
  }
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end