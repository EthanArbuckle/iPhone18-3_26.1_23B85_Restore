@interface HKMedicationExposableDoseEventControl
+ (id)serverInterface;
- (HKMedicationExposableDoseEventControl)init;
- (HKMedicationExposableDoseEventControl)initWithHealthStore:(id)store;
- (void)deleteDoseEventWithPersistentUUID:(id)d completion:(id)completion;
- (void)doseEventsForDateInterval:(id)interval medicationIdentifier:(id)identifier completion:(id)completion;
- (void)unitTest_noOpWithCompletion:(id)completion;
- (void)writeDoseEvents:(id)events completion:(id)completion;
@end

@implementation HKMedicationExposableDoseEventControl

- (HKMedicationExposableDoseEventControl)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKMedicationExposableDoseEventControl)initWithHealthStore:(id)store
{
  storeCopy = store;
  v14.receiver = self;
  v14.super_class = HKMedicationExposableDoseEventControl;
  v6 = [(HKMedicationExposableDoseEventControl *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, store);
    v8 = objc_alloc(MEMORY[0x277CCDAA0]);
    healthStore = v7->_healthStore;
    uUID = [MEMORY[0x277CCAD78] UUID];
    v11 = [v8 initWithHealthStore:healthStore taskIdentifier:@"HKMedicationExposableDoseEventControlServerIdentifier" exportedObject:v7 taskUUID:uUID];
    proxyProvider = v7->_proxyProvider;
    v7->_proxyProvider = v11;

    [(HKTaskServerProxyProvider *)v7->_proxyProvider setShouldRetryOnInterruption:0];
  }

  return v7;
}

- (void)doseEventsForDateInterval:(id)interval medicationIdentifier:(id)identifier completion:(id)completion
{
  intervalCopy = interval;
  identifierCopy = identifier;
  completionCopy = completion;
  if (!intervalCopy)
  {
    [HKMedicationExposableDoseEventControl doseEventsForDateInterval:a2 medicationIdentifier:self completion:?];
  }

  v12 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completionCopy];

  proxyProvider = self->_proxyProvider;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __99__HKMedicationExposableDoseEventControl_doseEventsForDateInterval_medicationIdentifier_completion___block_invoke;
  v19[3] = &unk_2796CA490;
  v20 = intervalCopy;
  v21 = identifierCopy;
  v22 = v12;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __99__HKMedicationExposableDoseEventControl_doseEventsForDateInterval_medicationIdentifier_completion___block_invoke_2;
  v17[3] = &unk_2796CA298;
  v18 = v22;
  v14 = v22;
  v15 = identifierCopy;
  v16 = intervalCopy;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v19 errorHandler:v17];
}

- (void)writeDoseEvents:(id)events completion:(id)completion
{
  eventsCopy = events;
  completionCopy = completion;
  if (!eventsCopy)
  {
    [HKMedicationExposableDoseEventControl writeDoseEvents:a2 completion:self];
  }

  v9 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completionCopy];

  proxyProvider = self->_proxyProvider;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __68__HKMedicationExposableDoseEventControl_writeDoseEvents_completion___block_invoke;
  v15[3] = &unk_2796CA4B8;
  v16 = eventsCopy;
  v17 = v9;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__HKMedicationExposableDoseEventControl_writeDoseEvents_completion___block_invoke_2;
  v13[3] = &unk_2796CA298;
  v14 = v17;
  v11 = v17;
  v12 = eventsCopy;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v15 errorHandler:v13];
}

- (void)deleteDoseEventWithPersistentUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if (!dCopy)
  {
    [HKMedicationExposableDoseEventControl deleteDoseEventWithPersistentUUID:a2 completion:self];
  }

  v9 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completionCopy];

  proxyProvider = self->_proxyProvider;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __86__HKMedicationExposableDoseEventControl_deleteDoseEventWithPersistentUUID_completion___block_invoke;
  v15[3] = &unk_2796CA4B8;
  v16 = dCopy;
  v17 = v9;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __86__HKMedicationExposableDoseEventControl_deleteDoseEventWithPersistentUUID_completion___block_invoke_2;
  v13[3] = &unk_2796CA298;
  v14 = v17;
  v11 = v17;
  v12 = dCopy;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v15 errorHandler:v13];
}

+ (id)serverInterface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2863C8410];
  v3 = [v2 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_doseEventsForDateInterval_medicationIdentifier_completion_ argumentIndex:0 ofReply:1];
  v4 = [v2 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_writeDoseEvents_completion_ argumentIndex:0 ofReply:0];

  return v2;
}

- (void)unitTest_noOpWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completionCopy];
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__HKMedicationExposableDoseEventControl_unitTest_noOpWithCompletion___block_invoke;
  v11[3] = &unk_2796CA4E0;
  v12 = completionCopy;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__HKMedicationExposableDoseEventControl_unitTest_noOpWithCompletion___block_invoke_2;
  v9[3] = &unk_2796CA298;
  v10 = v5;
  v7 = v5;
  v8 = completionCopy;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v11 errorHandler:v9];
}

- (void)doseEventsForDateInterval:(uint64_t)a1 medicationIdentifier:(uint64_t)a2 completion:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKMedicationExposableDoseEventControl.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"dateInterval != nil"}];
}

- (void)writeDoseEvents:(uint64_t)a1 completion:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKMedicationExposableDoseEventControl.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"doseEvents != nil"}];
}

- (void)deleteDoseEventWithPersistentUUID:(uint64_t)a1 completion:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKMedicationExposableDoseEventControl.m" lineNumber:72 description:{@"Invalid parameter not satisfying: %@", @"persistentUUID != nil"}];
}

@end