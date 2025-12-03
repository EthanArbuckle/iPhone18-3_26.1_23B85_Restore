@interface HDOntologyInteractionsFeatureEvaluator
- (HDOntologyInteractionsFeatureEvaluator)init;
- (HDOntologyInteractionsFeatureEvaluator)initWithDaemon:(id)daemon;
- (HDOntologyInteractionsFeatureEvaluator)initWithDaemon:(id)daemon medicationCountProvider:(id)provider interactionFactorStateProvider:(id)stateProvider;
- (int64_t)requiresFeatureShardForProfile:(id)profile;
- (void)drugInteractionFactorStateProvider:(id)provider didObserveChangeForProfile:(id)profile hasDrugInteractionFactor:(int64_t)factor;
- (void)medicationCountProvider:(id)provider didObserveChangeForProfile:(id)profile ontologyBackedMedicationCount:(int64_t)count;
- (void)registerRequiredObserversForProfile:(id)profile queue:(id)queue;
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

- (HDOntologyInteractionsFeatureEvaluator)initWithDaemon:(id)daemon
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE660];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The -%@ method is not available on %@", v6, objc_opt_class()}];

  return 0;
}

- (HDOntologyInteractionsFeatureEvaluator)initWithDaemon:(id)daemon medicationCountProvider:(id)provider interactionFactorStateProvider:(id)stateProvider
{
  providerCopy = provider;
  stateProviderCopy = stateProvider;
  v14.receiver = self;
  v14.super_class = HDOntologyInteractionsFeatureEvaluator;
  v11 = [(HDOntologyMedicationFeatureEvaluator *)&v14 initWithDaemon:daemon];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_medicationCountProvider, provider);
    objc_storeStrong(&v12->_interactionFactorStateProvider, stateProvider);
  }

  return v12;
}

- (void)registerRequiredObserversForProfile:(id)profile queue:(id)queue
{
  medicationCountProvider = self->_medicationCountProvider;
  queueCopy = queue;
  profileCopy = profile;
  [(HDMedicationCountProvider *)medicationCountProvider monitorMedicationCountsInProfile:profileCopy];
  [(HDMedicationCountProvider *)self->_medicationCountProvider addMedicationCountObserver:self queue:queueCopy];
  [(HDDrugInteractionFactorStateProvider *)self->_interactionFactorStateProvider monitorDrugInteractionFactorsInProfile:profileCopy];

  [(HDDrugInteractionFactorStateProvider *)self->_interactionFactorStateProvider addDrugInteractionFactorStateObserver:self queue:queueCopy];
}

- (int64_t)requiresFeatureShardForProfile:(id)profile
{
  profileCopy = profile;
  v5 = 0;
  if ([(HDOntologyMedicationFeatureEvaluator *)self canRequireShardWithError:0])
  {
    v6 = [(HDMedicationCountProvider *)self->_medicationCountProvider ontologyBackedMedicationCountInProfile:profileCopy];
    if (v6 == 2)
    {
      v5 = 1;
    }

    else if (v6 == 1)
    {
      v5 = [(HDDrugInteractionFactorStateProvider *)self->_interactionFactorStateProvider hasDrugInteractionFactorInProfile:profileCopy];
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

- (void)drugInteractionFactorStateProvider:(id)provider didObserveChangeForProfile:(id)profile hasDrugInteractionFactor:(int64_t)factor
{
  if (factor != 2)
  {
    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    v8 = HKStringFromOptionalBooleanResult();
    v9 = [v7 initWithFormat:@"hasDrugInteractionFactor changed to %@", v8];

    [(HDOntologyMedicationFeatureEvaluator *)self triggerShardEvaluatorWithReason:v9];
  }
}

- (void)medicationCountProvider:(id)provider didObserveChangeForProfile:(id)profile ontologyBackedMedicationCount:(int64_t)count
{
  if (count != -1)
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"didObserve medications count change to %ld", count];
    [(HDOntologyMedicationFeatureEvaluator *)self triggerShardEvaluatorWithReason:v7];
  }
}

@end