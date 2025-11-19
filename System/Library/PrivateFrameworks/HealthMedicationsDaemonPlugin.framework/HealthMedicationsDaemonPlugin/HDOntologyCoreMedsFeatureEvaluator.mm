@interface HDOntologyCoreMedsFeatureEvaluator
- (HDOntologyCoreMedsFeatureEvaluator)init;
- (HDOntologyCoreMedsFeatureEvaluator)initWithDaemon:(id)a3;
- (HDOntologyCoreMedsFeatureEvaluator)initWithDaemon:(id)a3 medicationCountProvider:(id)a4;
- (int64_t)requiresFeatureShardForProfile:(id)a3;
- (void)medicationCountProvider:(id)a3 didObserveChangeForProfile:(id)a4 ontologyBackedMedicationCount:(int64_t)a5;
- (void)registerRequiredObserversForProfile:(id)a3 queue:(id)a4;
@end

@implementation HDOntologyCoreMedsFeatureEvaluator

- (HDOntologyCoreMedsFeatureEvaluator)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDOntologyCoreMedsFeatureEvaluator)initWithDaemon:(id)a3
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE660];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The -%@ method is not available on %@", v6, objc_opt_class()}];

  return 0;
}

- (HDOntologyCoreMedsFeatureEvaluator)initWithDaemon:(id)a3 medicationCountProvider:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HDOntologyCoreMedsFeatureEvaluator;
  v8 = [(HDOntologyMedicationFeatureEvaluator *)&v11 initWithDaemon:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_medicationCountProvider, a4);
  }

  return v9;
}

- (void)registerRequiredObserversForProfile:(id)a3 queue:(id)a4
{
  medicationCountProvider = self->_medicationCountProvider;
  v7 = a4;
  [(HDMedicationCountProvider *)medicationCountProvider monitorMedicationCountsInProfile:a3];
  [(HDMedicationCountProvider *)self->_medicationCountProvider addMedicationCountObserver:self queue:v7];
}

- (int64_t)requiresFeatureShardForProfile:(id)a3
{
  v4 = a3;
  v5 = 0;
  if ([(HDOntologyMedicationFeatureEvaluator *)self canRequireShardWithError:0])
  {
    v6 = [(HDMedicationCountProvider *)self->_medicationCountProvider ontologyBackedMedicationCountInProfile:v4];
    if (v6 > 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = qword_251879560[v6];
    }
  }

  return v5;
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