@interface HKMedicationControl
+ (id)serverInterface;
- (HKMedicationControl)init;
- (HKMedicationControl)initWithHealthStore:(id)store;
- (void)accountDevicesInfoTriggeringUpdate:(BOOL)update completion:(id)completion;
- (void)allDismissedDrugInteractionsWithCompletion:(id)completion;
- (void)allDismissedPregnancyLactationInteractionsWithCompletion:(id)completion;
- (void)allDismissedRemoteScheduleUnavailableRecordsWithCompletion:(id)completion;
- (void)deleteDismissedDrugInteractionsForMedication:(id)medication completion:(id)completion;
- (void)deleteDismissedPregnancyLactationInteractionsForMedication:(id)medication interactionTypes:(id)types completion:(id)completion;
- (void)deleteDismissedRemoteScheduleUnavailableForMedication:(id)medication completion:(id)completion;
- (void)markDrugInteractionAsDismissed:(id)dismissed completion:(id)completion;
- (void)markPregnancyLactationInteractionForMedicationAsDismissed:(id)dismissed interactionType:(int64_t)type completion:(id)completion;
- (void)markRemoteScheduleUnavailableRecordsAsDismissed:(id)dismissed completion:(id)completion;
- (void)unitTest_noOpWithCompletion:(id)completion;
- (void)updateLocalDeviceValuesNowWithCompletion:(id)completion;
@end

@implementation HKMedicationControl

- (HKMedicationControl)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKMedicationControl)initWithHealthStore:(id)store
{
  storeCopy = store;
  v14.receiver = self;
  v14.super_class = HKMedicationControl;
  v6 = [(HKMedicationControl *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, store);
    v8 = objc_alloc(MEMORY[0x277CCDAA0]);
    healthStore = v7->_healthStore;
    uUID = [MEMORY[0x277CCAD78] UUID];
    v11 = [v8 initWithHealthStore:healthStore taskIdentifier:@"HKMedicationControlServerIdentifier" exportedObject:v7 taskUUID:uUID];
    proxyProvider = v7->_proxyProvider;
    v7->_proxyProvider = v11;

    [(HKTaskServerProxyProvider *)v7->_proxyProvider setShouldRetryOnInterruption:0];
  }

  return v7;
}

- (void)updateLocalDeviceValuesNowWithCompletion:(id)completion
{
  v4 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__HKMedicationControl_updateLocalDeviceValuesNowWithCompletion___block_invoke;
  v9[3] = &unk_2796CAC80;
  v10 = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HKMedicationControl_updateLocalDeviceValuesNowWithCompletion___block_invoke_2;
  v7[3] = &unk_2796CA298;
  v8 = v10;
  v6 = v10;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

- (void)accountDevicesInfoTriggeringUpdate:(BOOL)update completion:(id)completion
{
  v6 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__HKMedicationControl_accountDevicesInfoTriggeringUpdate_completion___block_invoke;
  v11[3] = &unk_2796CACA8;
  updateCopy = update;
  v12 = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__HKMedicationControl_accountDevicesInfoTriggeringUpdate_completion___block_invoke_2;
  v9[3] = &unk_2796CA298;
  v10 = v12;
  v8 = v12;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v11 errorHandler:v9];
}

- (void)markRemoteScheduleUnavailableRecordsAsDismissed:(id)dismissed completion:(id)completion
{
  dismissedCopy = dismissed;
  completionCopy = completion;
  if (!dismissedCopy)
  {
    [HKMedicationControl markRemoteScheduleUnavailableRecordsAsDismissed:completion:];
  }

  if (![dismissedCopy count])
  {
    [HKMedicationControl markRemoteScheduleUnavailableRecordsAsDismissed:completion:];
  }

  v8 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completionCopy];

  proxyProvider = self->_proxyProvider;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __82__HKMedicationControl_markRemoteScheduleUnavailableRecordsAsDismissed_completion___block_invoke;
  v14[3] = &unk_2796CACD0;
  v15 = dismissedCopy;
  v16 = v8;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __82__HKMedicationControl_markRemoteScheduleUnavailableRecordsAsDismissed_completion___block_invoke_2;
  v12[3] = &unk_2796CA298;
  v13 = v16;
  v10 = v16;
  v11 = dismissedCopy;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v14 errorHandler:v12];
}

- (void)allDismissedRemoteScheduleUnavailableRecordsWithCompletion:(id)completion
{
  v4 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __82__HKMedicationControl_allDismissedRemoteScheduleUnavailableRecordsWithCompletion___block_invoke;
  v9[3] = &unk_2796CAC80;
  v10 = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __82__HKMedicationControl_allDismissedRemoteScheduleUnavailableRecordsWithCompletion___block_invoke_2;
  v7[3] = &unk_2796CA298;
  v8 = v10;
  v6 = v10;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

- (void)deleteDismissedRemoteScheduleUnavailableForMedication:(id)medication completion:(id)completion
{
  medicationCopy = medication;
  v7 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __88__HKMedicationControl_deleteDismissedRemoteScheduleUnavailableForMedication_completion___block_invoke;
  v13[3] = &unk_2796CACD0;
  v14 = medicationCopy;
  v15 = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __88__HKMedicationControl_deleteDismissedRemoteScheduleUnavailableForMedication_completion___block_invoke_2;
  v11[3] = &unk_2796CA298;
  v12 = v15;
  v9 = v15;
  v10 = medicationCopy;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (void)markDrugInteractionAsDismissed:(id)dismissed completion:(id)completion
{
  dismissedCopy = dismissed;
  completionCopy = completion;
  if (!dismissedCopy)
  {
    [HKMedicationControl markDrugInteractionAsDismissed:completion:];
  }

  v8 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completionCopy];

  proxyProvider = self->_proxyProvider;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__HKMedicationControl_markDrugInteractionAsDismissed_completion___block_invoke;
  v14[3] = &unk_2796CACD0;
  v15 = dismissedCopy;
  v16 = v8;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__HKMedicationControl_markDrugInteractionAsDismissed_completion___block_invoke_2;
  v12[3] = &unk_2796CA298;
  v13 = v16;
  v10 = v16;
  v11 = dismissedCopy;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v14 errorHandler:v12];
}

- (void)allDismissedDrugInteractionsWithCompletion:(id)completion
{
  v4 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__HKMedicationControl_allDismissedDrugInteractionsWithCompletion___block_invoke;
  v9[3] = &unk_2796CAC80;
  v10 = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__HKMedicationControl_allDismissedDrugInteractionsWithCompletion___block_invoke_2;
  v7[3] = &unk_2796CA298;
  v8 = v10;
  v6 = v10;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

- (void)deleteDismissedDrugInteractionsForMedication:(id)medication completion:(id)completion
{
  medicationCopy = medication;
  completionCopy = completion;
  firstConceptIdentifier = [medicationCopy firstConceptIdentifier];

  if (!firstConceptIdentifier)
  {
    [HKMedicationControl deleteDismissedDrugInteractionsForMedication:completion:];
  }

  v9 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completionCopy];

  proxyProvider = self->_proxyProvider;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __79__HKMedicationControl_deleteDismissedDrugInteractionsForMedication_completion___block_invoke;
  v15[3] = &unk_2796CACD0;
  v16 = medicationCopy;
  v17 = v9;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __79__HKMedicationControl_deleteDismissedDrugInteractionsForMedication_completion___block_invoke_2;
  v13[3] = &unk_2796CA298;
  v14 = v17;
  v11 = v17;
  v12 = medicationCopy;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v15 errorHandler:v13];
}

- (void)markPregnancyLactationInteractionForMedicationAsDismissed:(id)dismissed interactionType:(int64_t)type completion:(id)completion
{
  dismissedCopy = dismissed;
  completionCopy = completion;
  firstConceptIdentifier = [dismissedCopy firstConceptIdentifier];

  if (!firstConceptIdentifier)
  {
    [HKMedicationControl markPregnancyLactationInteractionForMedicationAsDismissed:interactionType:completion:];
  }

  v11 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completionCopy];

  proxyProvider = self->_proxyProvider;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __108__HKMedicationControl_markPregnancyLactationInteractionForMedicationAsDismissed_interactionType_completion___block_invoke;
  v17[3] = &unk_2796CACF8;
  v18 = dismissedCopy;
  typeCopy = type;
  v19 = v11;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __108__HKMedicationControl_markPregnancyLactationInteractionForMedicationAsDismissed_interactionType_completion___block_invoke_2;
  v15[3] = &unk_2796CA298;
  v16 = v19;
  v13 = v19;
  v14 = dismissedCopy;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v17 errorHandler:v15];
}

- (void)allDismissedPregnancyLactationInteractionsWithCompletion:(id)completion
{
  v4 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __80__HKMedicationControl_allDismissedPregnancyLactationInteractionsWithCompletion___block_invoke;
  v9[3] = &unk_2796CAC80;
  v10 = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__HKMedicationControl_allDismissedPregnancyLactationInteractionsWithCompletion___block_invoke_2;
  v7[3] = &unk_2796CA298;
  v8 = v10;
  v6 = v10;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

- (void)deleteDismissedPregnancyLactationInteractionsForMedication:(id)medication interactionTypes:(id)types completion:(id)completion
{
  medicationCopy = medication;
  typesCopy = types;
  completionCopy = completion;
  firstConceptIdentifier = [medicationCopy firstConceptIdentifier];

  if (!firstConceptIdentifier)
  {
    [HKMedicationControl deleteDismissedPregnancyLactationInteractionsForMedication:interactionTypes:completion:];
  }

  v12 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completionCopy];

  proxyProvider = self->_proxyProvider;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __110__HKMedicationControl_deleteDismissedPregnancyLactationInteractionsForMedication_interactionTypes_completion___block_invoke;
  v19[3] = &unk_2796CAD20;
  v20 = medicationCopy;
  v21 = typesCopy;
  v22 = v12;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __110__HKMedicationControl_deleteDismissedPregnancyLactationInteractionsForMedication_interactionTypes_completion___block_invoke_2;
  v17[3] = &unk_2796CA298;
  v18 = v22;
  v14 = v22;
  v15 = typesCopy;
  v16 = medicationCopy;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v19 errorHandler:v17];
}

+ (id)serverInterface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2863C8470];
  v3 = [MEMORY[0x277CBEB98] hk_typesForSetOf:objc_opt_class()];
  [v2 setClasses:v3 forSelector:sel_remote_accountDevicesInfoTriggeringUpdate_completion_ argumentIndex:0 ofReply:1];

  v4 = [v2 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_markRemoteScheduleUnavailableRecordsAsDismissed_completion_ argumentIndex:0 ofReply:0];
  v5 = [v2 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_allDismissedRemoteScheduleUnavailableRecordsWithCompletion_ argumentIndex:0 ofReply:1];
  v6 = [v2 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_allDismissedDrugInteractionsWithCompletion_ argumentIndex:0 ofReply:1];
  v7 = [v2 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_allDismissedPregnancyLactationInteractionsWithCompletion_ argumentIndex:0 ofReply:1];

  return v2;
}

- (void)unitTest_noOpWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completionCopy];
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__HKMedicationControl_unitTest_noOpWithCompletion___block_invoke;
  v11[3] = &unk_2796CAC80;
  v12 = completionCopy;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__HKMedicationControl_unitTest_noOpWithCompletion___block_invoke_2;
  v9[3] = &unk_2796CA298;
  v10 = v5;
  v7 = v5;
  v8 = completionCopy;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v11 errorHandler:v9];
}

- (void)markRemoteScheduleUnavailableRecordsAsDismissed:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"remoteRecords != nil" object:? file:? lineNumber:? description:?];
}

- (void)markRemoteScheduleUnavailableRecordsAsDismissed:completion:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"remoteRecords.count > 0" object:? file:? lineNumber:? description:?];
}

- (void)markDrugInteractionAsDismissed:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"interactionResult != nil" object:? file:? lineNumber:? description:?];
}

- (void)deleteDismissedDrugInteractionsForMedication:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"medication.firstConceptIdentifier != nil" object:? file:? lineNumber:? description:?];
}

- (void)markPregnancyLactationInteractionForMedicationAsDismissed:interactionType:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"medication.firstConceptIdentifier != nil" object:? file:? lineNumber:? description:?];
}

- (void)deleteDismissedPregnancyLactationInteractionsForMedication:interactionTypes:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"medication.firstConceptIdentifier != nil" object:? file:? lineNumber:? description:?];
}

@end