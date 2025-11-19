@interface HDOntologyCHRFeatureEvaluator
- (HDOntologyCHRFeatureEvaluator)init;
- (HDOntologyCHRFeatureEvaluator)initWithOntologyUpdateCoordinator:(id)a3;
- (HDOntologyUpdateCoordinator)updateCoordinator;
- (int64_t)requiresFeatureShardForProfile:(id)a3;
- (void)accountExistenceNotifier:(id)a3 didChangeHealthRecordAccountExistence:(BOOL)a4;
- (void)registerRequiredObserversForProfile:(id)a3 queue:(id)a4;
@end

@implementation HDOntologyCHRFeatureEvaluator

- (HDOntologyCHRFeatureEvaluator)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDOntologyCHRFeatureEvaluator)initWithOntologyUpdateCoordinator:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HDOntologyCHRFeatureEvaluator;
  v5 = [(HDOntologyCHRFeatureEvaluator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_updateCoordinator, v4);
  }

  return v6;
}

- (void)registerRequiredObserversForProfile:(id)a3 queue:(id)a4
{
  v6 = a4;
  v7 = [a3 healthRecordsAccountExistenceNotifier];
  [v7 addAccountExistenceObserver:self queue:v6];
}

- (int64_t)requiresFeatureShardForProfile:(id)a3
{
  v5 = [a3 healthRecordsAccountExistenceNotifier];
  v6 = [v5 ontologyEnablingHealthRecordsAccountState];

  if (v6 < 3)
  {
    return qword_2514D2D58[v6];
  }

  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a2 object:self file:@"HDOntologyCHRFeatureEvaluator.m" lineNumber:63 description:@"Unreachable code has been executed"];

  return 2;
}

- (void)accountExistenceNotifier:(id)a3 didChangeHealthRecordAccountExistence:(BOOL)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_updateCoordinator);
  v5 = [WeakRetained featureCoordinator];
  [v5 evaluteRequiredShardsForEvalulator:self reason:@"didChangeHealthRecordAccountExistence"];
}

- (HDOntologyUpdateCoordinator)updateCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_updateCoordinator);

  return WeakRetained;
}

@end