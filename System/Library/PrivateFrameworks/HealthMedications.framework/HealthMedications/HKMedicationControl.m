@interface HKMedicationControl
+ (id)serverInterface;
- (HKMedicationControl)init;
- (HKMedicationControl)initWithHealthStore:(id)a3;
- (void)accountDevicesInfoTriggeringUpdate:(BOOL)a3 completion:(id)a4;
- (void)allDismissedDrugInteractionsWithCompletion:(id)a3;
- (void)allDismissedPregnancyLactationInteractionsWithCompletion:(id)a3;
- (void)allDismissedRemoteScheduleUnavailableRecordsWithCompletion:(id)a3;
- (void)deleteDismissedDrugInteractionsForMedication:(id)a3 completion:(id)a4;
- (void)deleteDismissedPregnancyLactationInteractionsForMedication:(id)a3 interactionTypes:(id)a4 completion:(id)a5;
- (void)deleteDismissedRemoteScheduleUnavailableForMedication:(id)a3 completion:(id)a4;
- (void)markDrugInteractionAsDismissed:(id)a3 completion:(id)a4;
- (void)markPregnancyLactationInteractionForMedicationAsDismissed:(id)a3 interactionType:(int64_t)a4 completion:(id)a5;
- (void)markRemoteScheduleUnavailableRecordsAsDismissed:(id)a3 completion:(id)a4;
- (void)unitTest_noOpWithCompletion:(id)a3;
- (void)updateLocalDeviceValuesNowWithCompletion:(id)a3;
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

- (HKMedicationControl)initWithHealthStore:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = HKMedicationControl;
  v6 = [(HKMedicationControl *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, a3);
    v8 = objc_alloc(MEMORY[0x277CCDAA0]);
    healthStore = v7->_healthStore;
    v10 = [MEMORY[0x277CCAD78] UUID];
    v11 = [v8 initWithHealthStore:healthStore taskIdentifier:@"HKMedicationControlServerIdentifier" exportedObject:v7 taskUUID:v10];
    proxyProvider = v7->_proxyProvider;
    v7->_proxyProvider = v11;

    [(HKTaskServerProxyProvider *)v7->_proxyProvider setShouldRetryOnInterruption:0];
  }

  return v7;
}

- (void)updateLocalDeviceValuesNowWithCompletion:(id)a3
{
  v4 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a3];
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

- (void)accountDevicesInfoTriggeringUpdate:(BOOL)a3 completion:(id)a4
{
  v6 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a4];
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__HKMedicationControl_accountDevicesInfoTriggeringUpdate_completion___block_invoke;
  v11[3] = &unk_2796CACA8;
  v13 = a3;
  v12 = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__HKMedicationControl_accountDevicesInfoTriggeringUpdate_completion___block_invoke_2;
  v9[3] = &unk_2796CA298;
  v10 = v12;
  v8 = v12;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v11 errorHandler:v9];
}

- (void)markRemoteScheduleUnavailableRecordsAsDismissed:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [HKMedicationControl markRemoteScheduleUnavailableRecordsAsDismissed:completion:];
  }

  if (![v6 count])
  {
    [HKMedicationControl markRemoteScheduleUnavailableRecordsAsDismissed:completion:];
  }

  v8 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:v7];

  proxyProvider = self->_proxyProvider;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __82__HKMedicationControl_markRemoteScheduleUnavailableRecordsAsDismissed_completion___block_invoke;
  v14[3] = &unk_2796CACD0;
  v15 = v6;
  v16 = v8;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __82__HKMedicationControl_markRemoteScheduleUnavailableRecordsAsDismissed_completion___block_invoke_2;
  v12[3] = &unk_2796CA298;
  v13 = v16;
  v10 = v16;
  v11 = v6;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v14 errorHandler:v12];
}

- (void)allDismissedRemoteScheduleUnavailableRecordsWithCompletion:(id)a3
{
  v4 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a3];
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

- (void)deleteDismissedRemoteScheduleUnavailableForMedication:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:a4];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __88__HKMedicationControl_deleteDismissedRemoteScheduleUnavailableForMedication_completion___block_invoke;
  v13[3] = &unk_2796CACD0;
  v14 = v6;
  v15 = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __88__HKMedicationControl_deleteDismissedRemoteScheduleUnavailableForMedication_completion___block_invoke_2;
  v11[3] = &unk_2796CA298;
  v12 = v15;
  v9 = v15;
  v10 = v6;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (void)markDrugInteractionAsDismissed:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [HKMedicationControl markDrugInteractionAsDismissed:completion:];
  }

  v8 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:v7];

  proxyProvider = self->_proxyProvider;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__HKMedicationControl_markDrugInteractionAsDismissed_completion___block_invoke;
  v14[3] = &unk_2796CACD0;
  v15 = v6;
  v16 = v8;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__HKMedicationControl_markDrugInteractionAsDismissed_completion___block_invoke_2;
  v12[3] = &unk_2796CA298;
  v13 = v16;
  v10 = v16;
  v11 = v6;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v14 errorHandler:v12];
}

- (void)allDismissedDrugInteractionsWithCompletion:(id)a3
{
  v4 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a3];
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

- (void)deleteDismissedDrugInteractionsForMedication:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 firstConceptIdentifier];

  if (!v8)
  {
    [HKMedicationControl deleteDismissedDrugInteractionsForMedication:completion:];
  }

  v9 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:v7];

  proxyProvider = self->_proxyProvider;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __79__HKMedicationControl_deleteDismissedDrugInteractionsForMedication_completion___block_invoke;
  v15[3] = &unk_2796CACD0;
  v16 = v6;
  v17 = v9;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __79__HKMedicationControl_deleteDismissedDrugInteractionsForMedication_completion___block_invoke_2;
  v13[3] = &unk_2796CA298;
  v14 = v17;
  v11 = v17;
  v12 = v6;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v15 errorHandler:v13];
}

- (void)markPregnancyLactationInteractionForMedicationAsDismissed:(id)a3 interactionType:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 firstConceptIdentifier];

  if (!v10)
  {
    [HKMedicationControl markPregnancyLactationInteractionForMedicationAsDismissed:interactionType:completion:];
  }

  v11 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:v9];

  proxyProvider = self->_proxyProvider;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __108__HKMedicationControl_markPregnancyLactationInteractionForMedicationAsDismissed_interactionType_completion___block_invoke;
  v17[3] = &unk_2796CACF8;
  v18 = v8;
  v20 = a4;
  v19 = v11;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __108__HKMedicationControl_markPregnancyLactationInteractionForMedicationAsDismissed_interactionType_completion___block_invoke_2;
  v15[3] = &unk_2796CA298;
  v16 = v19;
  v13 = v19;
  v14 = v8;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v17 errorHandler:v15];
}

- (void)allDismissedPregnancyLactationInteractionsWithCompletion:(id)a3
{
  v4 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a3];
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

- (void)deleteDismissedPregnancyLactationInteractionsForMedication:(id)a3 interactionTypes:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 firstConceptIdentifier];

  if (!v11)
  {
    [HKMedicationControl deleteDismissedPregnancyLactationInteractionsForMedication:interactionTypes:completion:];
  }

  v12 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:v10];

  proxyProvider = self->_proxyProvider;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __110__HKMedicationControl_deleteDismissedPregnancyLactationInteractionsForMedication_interactionTypes_completion___block_invoke;
  v19[3] = &unk_2796CAD20;
  v20 = v8;
  v21 = v9;
  v22 = v12;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __110__HKMedicationControl_deleteDismissedPregnancyLactationInteractionsForMedication_interactionTypes_completion___block_invoke_2;
  v17[3] = &unk_2796CA298;
  v18 = v22;
  v14 = v22;
  v15 = v9;
  v16 = v8;
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

- (void)unitTest_noOpWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:v4];
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__HKMedicationControl_unitTest_noOpWithCompletion___block_invoke;
  v11[3] = &unk_2796CAC80;
  v12 = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__HKMedicationControl_unitTest_noOpWithCompletion___block_invoke_2;
  v9[3] = &unk_2796CA298;
  v10 = v5;
  v7 = v5;
  v8 = v4;
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