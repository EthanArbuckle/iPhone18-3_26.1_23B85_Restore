@interface HKDrugInteractionEngine
+ (id)serverInterface;
- (HKDrugInteractionEngine)init;
- (HKDrugInteractionEngine)initWithHealthStore:(id)store;
- (void)interactionClassForLifestyleFactor:(unint64_t)factor completion:(id)completion;
- (void)interactionClassesForConceptWithIdentifier:(id)identifier completion:(id)completion;
- (void)interactionClassesForMedication:(id)medication completion:(id)completion;
- (void)interactionResultForFirstMedication:(id)medication secondMedication:(id)secondMedication completion:(id)completion;
- (void)interactionResultForMedication:(id)medication lifestyleFactor:(unint64_t)factor completion:(id)completion;
- (void)interactionResultsForInteractionClasses:(id)classes completion:(id)completion;
- (void)interactionResultsForMedications:(id)medications lifestyleFactors:(id)factors completion:(id)completion;
- (void)numberOfInteractionsForConceptWithIdentifier:(id)identifier completion:(id)completion;
- (void)numberOfInteractionsForMedication:(id)medication completion:(id)completion;
- (void)unitTest_noOpWithCompletion:(id)completion;
@end

@implementation HKDrugInteractionEngine

- (HKDrugInteractionEngine)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKDrugInteractionEngine)initWithHealthStore:(id)store
{
  storeCopy = store;
  v14.receiver = self;
  v14.super_class = HKDrugInteractionEngine;
  v6 = [(HKDrugInteractionEngine *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, store);
    v8 = objc_alloc(MEMORY[0x277CCDAA0]);
    healthStore = v7->_healthStore;
    uUID = [MEMORY[0x277CCAD78] UUID];
    v11 = [v8 initWithHealthStore:healthStore taskIdentifier:@"HDDrugInteractionEngineServerIdentifier" exportedObject:v7 taskUUID:uUID];
    proxyProvider = v7->_proxyProvider;
    v7->_proxyProvider = v11;

    [(HKTaskServerProxyProvider *)v7->_proxyProvider setShouldRetryOnInterruption:0];
  }

  return v7;
}

- (void)interactionClassesForConceptWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  v7 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __81__HKDrugInteractionEngine_interactionClassesForConceptWithIdentifier_completion___block_invoke;
  v13[3] = &unk_2796CADB0;
  v14 = identifierCopy;
  v15 = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__HKDrugInteractionEngine_interactionClassesForConceptWithIdentifier_completion___block_invoke_2;
  v11[3] = &unk_2796CA298;
  v12 = v15;
  v9 = v15;
  v10 = identifierCopy;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (void)interactionClassesForMedication:(id)medication completion:(id)completion
{
  medicationCopy = medication;
  v7 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__HKDrugInteractionEngine_interactionClassesForMedication_completion___block_invoke;
  v13[3] = &unk_2796CADB0;
  v14 = medicationCopy;
  v15 = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__HKDrugInteractionEngine_interactionClassesForMedication_completion___block_invoke_2;
  v11[3] = &unk_2796CA298;
  v12 = v15;
  v9 = v15;
  v10 = medicationCopy;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (void)interactionClassForLifestyleFactor:(unint64_t)factor completion:(id)completion
{
  v6 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__HKDrugInteractionEngine_interactionClassForLifestyleFactor_completion___block_invoke;
  v11[3] = &unk_2796CADD8;
  factorCopy = factor;
  v12 = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__HKDrugInteractionEngine_interactionClassForLifestyleFactor_completion___block_invoke_2;
  v9[3] = &unk_2796CA298;
  v10 = v12;
  v8 = v12;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v11 errorHandler:v9];
}

- (void)numberOfInteractionsForConceptWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  v7 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __83__HKDrugInteractionEngine_numberOfInteractionsForConceptWithIdentifier_completion___block_invoke;
  v13[3] = &unk_2796CADB0;
  v14 = identifierCopy;
  v15 = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __83__HKDrugInteractionEngine_numberOfInteractionsForConceptWithIdentifier_completion___block_invoke_2;
  v11[3] = &unk_2796CA298;
  v12 = v15;
  v9 = v15;
  v10 = identifierCopy;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (void)numberOfInteractionsForMedication:(id)medication completion:(id)completion
{
  medicationCopy = medication;
  v7 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__HKDrugInteractionEngine_numberOfInteractionsForMedication_completion___block_invoke;
  v13[3] = &unk_2796CADB0;
  v14 = medicationCopy;
  v15 = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__HKDrugInteractionEngine_numberOfInteractionsForMedication_completion___block_invoke_2;
  v11[3] = &unk_2796CA298;
  v12 = v15;
  v9 = v15;
  v10 = medicationCopy;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (void)interactionResultsForInteractionClasses:(id)classes completion:(id)completion
{
  classesCopy = classes;
  v7 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__HKDrugInteractionEngine_interactionResultsForInteractionClasses_completion___block_invoke;
  v13[3] = &unk_2796CADB0;
  v14 = classesCopy;
  v15 = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__HKDrugInteractionEngine_interactionResultsForInteractionClasses_completion___block_invoke_2;
  v11[3] = &unk_2796CA298;
  v12 = v15;
  v9 = v15;
  v10 = classesCopy;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (void)interactionResultForFirstMedication:(id)medication secondMedication:(id)secondMedication completion:(id)completion
{
  medicationCopy = medication;
  secondMedicationCopy = secondMedication;
  v10 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __91__HKDrugInteractionEngine_interactionResultForFirstMedication_secondMedication_completion___block_invoke;
  v17[3] = &unk_2796CAE00;
  v18 = medicationCopy;
  v19 = secondMedicationCopy;
  v20 = v10;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __91__HKDrugInteractionEngine_interactionResultForFirstMedication_secondMedication_completion___block_invoke_2;
  v15[3] = &unk_2796CA298;
  v16 = v20;
  v12 = v20;
  v13 = secondMedicationCopy;
  v14 = medicationCopy;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v17 errorHandler:v15];
}

- (void)interactionResultForMedication:(id)medication lifestyleFactor:(unint64_t)factor completion:(id)completion
{
  medicationCopy = medication;
  v9 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __85__HKDrugInteractionEngine_interactionResultForMedication_lifestyleFactor_completion___block_invoke;
  v15[3] = &unk_2796CAE28;
  v16 = medicationCopy;
  factorCopy = factor;
  v17 = v9;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __85__HKDrugInteractionEngine_interactionResultForMedication_lifestyleFactor_completion___block_invoke_2;
  v13[3] = &unk_2796CA298;
  v14 = v17;
  v11 = v17;
  v12 = medicationCopy;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v15 errorHandler:v13];
}

- (void)interactionResultsForMedications:(id)medications lifestyleFactors:(id)factors completion:(id)completion
{
  medicationsCopy = medications;
  factorsCopy = factors;
  v10 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __88__HKDrugInteractionEngine_interactionResultsForMedications_lifestyleFactors_completion___block_invoke;
  v17[3] = &unk_2796CAE00;
  v18 = medicationsCopy;
  v19 = factorsCopy;
  v20 = v10;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __88__HKDrugInteractionEngine_interactionResultsForMedications_lifestyleFactors_completion___block_invoke_2;
  v15[3] = &unk_2796CA298;
  v16 = v20;
  v12 = v20;
  v13 = factorsCopy;
  v14 = medicationsCopy;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v17 errorHandler:v15];
}

+ (id)serverInterface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2863C84D0];
  v3 = [MEMORY[0x277CBEB98] hk_typesForSetOf:objc_opt_class()];
  [v2 setClasses:v3 forSelector:sel_remote_interactionClassesForConceptWithIdentifier_completion_ argumentIndex:0 ofReply:1];
  [v2 setClasses:v3 forSelector:sel_remote_interactionClassesForMedication_completion_ argumentIndex:0 ofReply:1];
  [v2 setClasses:v3 forSelector:sel_remote_interactionResultsForInteractionClasses_completion_ argumentIndex:0 ofReply:0];
  v4 = [v2 hk_setSetOfClass:objc_opt_class() forSelector:sel_remote_interactionResultsForInteractionClasses_completion_ argumentIndex:0 ofReply:1];
  v5 = [v2 hk_setSetOfClass:objc_opt_class() forSelector:sel_remote_interactionResultsForMedications_lifestyleFactors_completion_ argumentIndex:0 ofReply:1];
  v6 = [v2 hk_setSetOfClass:objc_opt_class() forSelector:sel_remote_interactionResultsForMedications_lifestyleFactors_completion_ argumentIndex:0 ofReply:0];

  return v2;
}

- (void)unitTest_noOpWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completionCopy];
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__HKDrugInteractionEngine_unitTest_noOpWithCompletion___block_invoke;
  v11[3] = &unk_2796CAE50;
  v12 = completionCopy;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__HKDrugInteractionEngine_unitTest_noOpWithCompletion___block_invoke_2;
  v9[3] = &unk_2796CA298;
  v10 = v5;
  v7 = v5;
  v8 = completionCopy;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v11 errorHandler:v9];
}

@end