@interface HKDrugInteractionEngine
+ (id)serverInterface;
- (HKDrugInteractionEngine)init;
- (HKDrugInteractionEngine)initWithHealthStore:(id)a3;
- (void)interactionClassForLifestyleFactor:(unint64_t)a3 completion:(id)a4;
- (void)interactionClassesForConceptWithIdentifier:(id)a3 completion:(id)a4;
- (void)interactionClassesForMedication:(id)a3 completion:(id)a4;
- (void)interactionResultForFirstMedication:(id)a3 secondMedication:(id)a4 completion:(id)a5;
- (void)interactionResultForMedication:(id)a3 lifestyleFactor:(unint64_t)a4 completion:(id)a5;
- (void)interactionResultsForInteractionClasses:(id)a3 completion:(id)a4;
- (void)interactionResultsForMedications:(id)a3 lifestyleFactors:(id)a4 completion:(id)a5;
- (void)numberOfInteractionsForConceptWithIdentifier:(id)a3 completion:(id)a4;
- (void)numberOfInteractionsForMedication:(id)a3 completion:(id)a4;
- (void)unitTest_noOpWithCompletion:(id)a3;
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

- (HKDrugInteractionEngine)initWithHealthStore:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = HKDrugInteractionEngine;
  v6 = [(HKDrugInteractionEngine *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, a3);
    v8 = objc_alloc(MEMORY[0x277CCDAA0]);
    healthStore = v7->_healthStore;
    v10 = [MEMORY[0x277CCAD78] UUID];
    v11 = [v8 initWithHealthStore:healthStore taskIdentifier:@"HDDrugInteractionEngineServerIdentifier" exportedObject:v7 taskUUID:v10];
    proxyProvider = v7->_proxyProvider;
    v7->_proxyProvider = v11;

    [(HKTaskServerProxyProvider *)v7->_proxyProvider setShouldRetryOnInterruption:0];
  }

  return v7;
}

- (void)interactionClassesForConceptWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a4];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __81__HKDrugInteractionEngine_interactionClassesForConceptWithIdentifier_completion___block_invoke;
  v13[3] = &unk_2796CADB0;
  v14 = v6;
  v15 = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__HKDrugInteractionEngine_interactionClassesForConceptWithIdentifier_completion___block_invoke_2;
  v11[3] = &unk_2796CA298;
  v12 = v15;
  v9 = v15;
  v10 = v6;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (void)interactionClassesForMedication:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a4];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__HKDrugInteractionEngine_interactionClassesForMedication_completion___block_invoke;
  v13[3] = &unk_2796CADB0;
  v14 = v6;
  v15 = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__HKDrugInteractionEngine_interactionClassesForMedication_completion___block_invoke_2;
  v11[3] = &unk_2796CA298;
  v12 = v15;
  v9 = v15;
  v10 = v6;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (void)interactionClassForLifestyleFactor:(unint64_t)a3 completion:(id)a4
{
  v6 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a4];
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__HKDrugInteractionEngine_interactionClassForLifestyleFactor_completion___block_invoke;
  v11[3] = &unk_2796CADD8;
  v13 = a3;
  v12 = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__HKDrugInteractionEngine_interactionClassForLifestyleFactor_completion___block_invoke_2;
  v9[3] = &unk_2796CA298;
  v10 = v12;
  v8 = v12;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v11 errorHandler:v9];
}

- (void)numberOfInteractionsForConceptWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a4];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __83__HKDrugInteractionEngine_numberOfInteractionsForConceptWithIdentifier_completion___block_invoke;
  v13[3] = &unk_2796CADB0;
  v14 = v6;
  v15 = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __83__HKDrugInteractionEngine_numberOfInteractionsForConceptWithIdentifier_completion___block_invoke_2;
  v11[3] = &unk_2796CA298;
  v12 = v15;
  v9 = v15;
  v10 = v6;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (void)numberOfInteractionsForMedication:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a4];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__HKDrugInteractionEngine_numberOfInteractionsForMedication_completion___block_invoke;
  v13[3] = &unk_2796CADB0;
  v14 = v6;
  v15 = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__HKDrugInteractionEngine_numberOfInteractionsForMedication_completion___block_invoke_2;
  v11[3] = &unk_2796CA298;
  v12 = v15;
  v9 = v15;
  v10 = v6;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (void)interactionResultsForInteractionClasses:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a4];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__HKDrugInteractionEngine_interactionResultsForInteractionClasses_completion___block_invoke;
  v13[3] = &unk_2796CADB0;
  v14 = v6;
  v15 = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__HKDrugInteractionEngine_interactionResultsForInteractionClasses_completion___block_invoke_2;
  v11[3] = &unk_2796CA298;
  v12 = v15;
  v9 = v15;
  v10 = v6;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (void)interactionResultForFirstMedication:(id)a3 secondMedication:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a5];
  proxyProvider = self->_proxyProvider;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __91__HKDrugInteractionEngine_interactionResultForFirstMedication_secondMedication_completion___block_invoke;
  v17[3] = &unk_2796CAE00;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __91__HKDrugInteractionEngine_interactionResultForFirstMedication_secondMedication_completion___block_invoke_2;
  v15[3] = &unk_2796CA298;
  v16 = v20;
  v12 = v20;
  v13 = v9;
  v14 = v8;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v17 errorHandler:v15];
}

- (void)interactionResultForMedication:(id)a3 lifestyleFactor:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a5];
  proxyProvider = self->_proxyProvider;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __85__HKDrugInteractionEngine_interactionResultForMedication_lifestyleFactor_completion___block_invoke;
  v15[3] = &unk_2796CAE28;
  v16 = v8;
  v18 = a4;
  v17 = v9;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __85__HKDrugInteractionEngine_interactionResultForMedication_lifestyleFactor_completion___block_invoke_2;
  v13[3] = &unk_2796CA298;
  v14 = v17;
  v11 = v17;
  v12 = v8;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v15 errorHandler:v13];
}

- (void)interactionResultsForMedications:(id)a3 lifestyleFactors:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:a5];
  proxyProvider = self->_proxyProvider;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __88__HKDrugInteractionEngine_interactionResultsForMedications_lifestyleFactors_completion___block_invoke;
  v17[3] = &unk_2796CAE00;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __88__HKDrugInteractionEngine_interactionResultsForMedications_lifestyleFactors_completion___block_invoke_2;
  v15[3] = &unk_2796CA298;
  v16 = v20;
  v12 = v20;
  v13 = v9;
  v14 = v8;
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

- (void)unitTest_noOpWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:v4];
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__HKDrugInteractionEngine_unitTest_noOpWithCompletion___block_invoke;
  v11[3] = &unk_2796CAE50;
  v12 = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__HKDrugInteractionEngine_unitTest_noOpWithCompletion___block_invoke_2;
  v9[3] = &unk_2796CA298;
  v10 = v5;
  v7 = v5;
  v8 = v4;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v11 errorHandler:v9];
}

@end