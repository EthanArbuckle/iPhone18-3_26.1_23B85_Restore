@interface HDOntologyCHRFeatureEvaluator
- (HDOntologyCHRFeatureEvaluator)init;
- (HDOntologyCHRFeatureEvaluator)initWithOntologyUpdateCoordinator:(id)coordinator;
- (HDOntologyUpdateCoordinator)updateCoordinator;
- (int64_t)requiresFeatureShardForProfile:(id)profile;
- (void)accountExistenceNotifier:(id)notifier didChangeHealthRecordAccountExistence:(BOOL)existence;
- (void)registerRequiredObserversForProfile:(id)profile queue:(id)queue;
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

- (HDOntologyCHRFeatureEvaluator)initWithOntologyUpdateCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v8.receiver = self;
  v8.super_class = HDOntologyCHRFeatureEvaluator;
  v5 = [(HDOntologyCHRFeatureEvaluator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_updateCoordinator, coordinatorCopy);
  }

  return v6;
}

- (void)registerRequiredObserversForProfile:(id)profile queue:(id)queue
{
  queueCopy = queue;
  healthRecordsAccountExistenceNotifier = [profile healthRecordsAccountExistenceNotifier];
  [healthRecordsAccountExistenceNotifier addAccountExistenceObserver:self queue:queueCopy];
}

- (int64_t)requiresFeatureShardForProfile:(id)profile
{
  healthRecordsAccountExistenceNotifier = [profile healthRecordsAccountExistenceNotifier];
  ontologyEnablingHealthRecordsAccountState = [healthRecordsAccountExistenceNotifier ontologyEnablingHealthRecordsAccountState];

  if (ontologyEnablingHealthRecordsAccountState < 3)
  {
    return qword_2514D2D58[ontologyEnablingHealthRecordsAccountState];
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HDOntologyCHRFeatureEvaluator.m" lineNumber:63 description:@"Unreachable code has been executed"];

  return 2;
}

- (void)accountExistenceNotifier:(id)notifier didChangeHealthRecordAccountExistence:(BOOL)existence
{
  WeakRetained = objc_loadWeakRetained(&self->_updateCoordinator);
  featureCoordinator = [WeakRetained featureCoordinator];
  [featureCoordinator evaluteRequiredShardsForEvalulator:self reason:@"didChangeHealthRecordAccountExistence"];
}

- (HDOntologyUpdateCoordinator)updateCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_updateCoordinator);

  return WeakRetained;
}

@end