@interface HDOntologyMedsEducationFeatureEvaluator
- (HDOntologyMedsEducationFeatureEvaluator)init;
- (HDOntologyMedsEducationFeatureEvaluator)initWithDaemon:(id)daemon;
- (HDOntologyMedsEducationFeatureEvaluator)initWithDaemon:(id)daemon medicationCountProvider:(id)provider;
- (int64_t)requiresFeatureShardForProfile:(id)profile;
- (void)medicationCountProvider:(id)provider didObserveChangeForProfile:(id)profile ontologyBackedMedicationCount:(int64_t)count;
- (void)registerRequiredObserversForProfile:(id)profile queue:(id)queue;
@end

@implementation HDOntologyMedsEducationFeatureEvaluator

- (HDOntologyMedsEducationFeatureEvaluator)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDOntologyMedsEducationFeatureEvaluator)initWithDaemon:(id)daemon
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE660];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The -%@ method is not available on %@", v6, objc_opt_class()}];

  return 0;
}

- (HDOntologyMedsEducationFeatureEvaluator)initWithDaemon:(id)daemon medicationCountProvider:(id)provider
{
  providerCopy = provider;
  v11.receiver = self;
  v11.super_class = HDOntologyMedsEducationFeatureEvaluator;
  v8 = [(HDOntologyMedicationFeatureEvaluator *)&v11 initWithDaemon:daemon];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_medicationCountProvider, provider);
  }

  return v9;
}

- (void)registerRequiredObserversForProfile:(id)profile queue:(id)queue
{
  medicationCountProvider = self->_medicationCountProvider;
  queueCopy = queue;
  [(HDMedicationCountProvider *)medicationCountProvider monitorMedicationCountsInProfile:profile];
  [(HDMedicationCountProvider *)self->_medicationCountProvider addMedicationCountObserver:self queue:queueCopy];
}

- (int64_t)requiresFeatureShardForProfile:(id)profile
{
  profileCopy = profile;
  v5 = 0;
  if ([(HDOntologyMedicationFeatureEvaluator *)self canRequireShardWithError:0])
  {
    v6 = [(HDMedicationCountProvider *)self->_medicationCountProvider ontologyBackedMedicationCountInProfile:profileCopy];
    if (v6 > 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = qword_251879548[v6];
    }
  }

  return v5;
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