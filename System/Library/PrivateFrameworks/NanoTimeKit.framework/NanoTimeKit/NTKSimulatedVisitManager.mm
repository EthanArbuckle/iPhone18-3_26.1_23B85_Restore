@interface NTKSimulatedVisitManager
- (NTKSimulatedVisitManager)init;
- (id)startVisitUpdatesWithIdentifier:(id)a3 handler:(id)a4;
@end

@implementation NTKSimulatedVisitManager

- (NTKSimulatedVisitManager)init
{
  v6.receiver = self;
  v6.super_class = NTKSimulatedVisitManager;
  v2 = [(NTKSimulatedVisitManager *)&v6 init];
  if (v2)
  {
    v3 = _NTKLoggingObjectForDomain(12, "NTKLoggingDomainLocation");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "NTKSimulatedVisitManager initialized.", v5, 2u);
    }
  }

  return v2;
}

- (id)startVisitUpdatesWithIdentifier:(id)a3 handler:(id)a4
{
  v5 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__NTKSimulatedVisitManager_startVisitUpdatesWithIdentifier_handler___block_invoke;
  v8[3] = &unk_27877E570;
  v8[4] = self;
  v9 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v8);

  return &stru_284110E98;
}

void __68__NTKSimulatedVisitManager_startVisitUpdatesWithIdentifier_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) currentVisit];
  v3 = [*(a1 + 32) anyVisit];
  (*(v2 + 16))(v2, v4, v3, 0);
}

@end