@interface HDOntologyInteractionsFeatureEvaluator
- (HDOntologyInteractionsFeatureEvaluator)init;
- (HDOntologyInteractionsFeatureEvaluator)initWithDaemon:(id)a3;
- (HDOntologyInteractionsFeatureEvaluator)initWithDaemon:(id)a3 medicationCountProvider:(id)a4 interactionFactorStateProvider:(id)a5;
- (int64_t)requiresFeatureShardForProfile:(id)a3;
- (void)drugInteractionFactorStateProvider:(id)a3 didObserveChangeForProfile:(id)a4 hasDrugInteractionFactor:(int64_t)a5;
- (void)medicationCountProvider:(id)a3 didObserveChangeForProfile:(id)a4 ontologyBackedMedicationCount:(int64_t)a5;
- (void)registerRequiredObserversForProfile:(id)a3 queue:(id)a4;
@end

@implementation HDOntologyInteractionsFeatureEvaluator

- (HDOntologyInteractionsFeatureEvaluator)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDOntologyInteractionsFeatureEvaluator)initWithDaemon:(id)a3
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE660];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The -%@ method is not available on %@", v6, objc_opt_class()}];

  return 0;
}

- (HDOntologyInteractionsFeatureEvaluator)initWithDaemon:(id)a3 medicationCountProvider:(id)a4 interactionFactorStateProvider:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HDOntologyInteractionsFeatureEvaluator;
  v11 = [(HDOntologyMedicationFeatureEvaluator *)&v14 initWithDaemon:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_medicationCountProvider, a4);
    objc_storeStrong(&v12->_interactionFactorStateProvider, a5);
  }

  return v12;
}

- (void)registerRequiredObserversForProfile:(id)a3 queue:(id)a4
{
  medicationCountProvider = self->_medicationCountProvider;
  v8 = a4;
  v7 = a3;
  [(HDMedicationCountProvider *)medicationCountProvider monitorMedicationCountsInProfile:v7];
  [(HDMedicationCountProvider *)self->_medicationCountProvider addMedicationCountObserver:self queue:v8];
  [(HDDrugInteractionFactorStateProvider *)self->_interactionFactorStateProvider monitorDrugInteractionFactorsInProfile:v7];

  [(HDDrugInteractionFactorStateProvider *)self->_interactionFactorStateProvider addDrugInteractionFactorStateObserver:self queue:v8];
}

- (int64_t)requiresFeatureShardForProfile:(id)a3
{
  v4 = a3;
  v5 = 0;
  if ([(HDOntologyMedicationFeatureEvaluator *)self canRequireShardWithError:0])
  {
    v6 = [(HDMedicationCountProvider *)self->_medicationCountProvider ontologyBackedMedicationCountInProfile:v4];
    if (v6 == 2)
    {
      v5 = 1;
    }

    else if (v6 == 1)
    {
      v5 = [(HDDrugInteractionFactorStateProvider *)self->_interactionFactorStateProvider hasDrugInteractionFactorInProfile:v4];
    }

    else if (v6)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)drugInteractionFactorStateProvider:(id)a3 didObserveChangeForProfile:(id)a4 hasDrugInteractionFactor:(int64_t)a5
{
  if (a5 != 2)
  {
    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    v8 = HKStringFromOptionalBooleanResult();
    v9 = [v7 initWithFormat:@"hasDrugInteractionFactor changed to %@", v8];

    [(HDOntologyMedicationFeatureEvaluator *)self triggerShardEvaluatorWithReason:v9];
  }
}

- (void)medicationCountProvider:(id)a3 didObserveChangeForProfile:(id)a4 ontologyBackedMedicationCount:(int64_t)a5
{
  if (a5 != -1)
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"didObserve medications count change to %ld", a5];
    [(HDOntologyMedicationFeatureEvaluator *)self triggerShardEvaluatorWithReason:v7];
  }
}

@end