@interface HDOntologyMedicationFeatureEvaluator
- (BOOL)canRequireShardWithError:(id *)a3;
- (HDDaemon)daemon;
- (HDOntologyMedicationFeatureEvaluator)init;
- (HDOntologyMedicationFeatureEvaluator)initWithDaemon:(id)a3;
- (NSString)featureIdentifier;
- (void)triggerShardEvaluatorWithReason:(id)a3;
@end

@implementation HDOntologyMedicationFeatureEvaluator

- (HDOntologyMedicationFeatureEvaluator)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDOntologyMedicationFeatureEvaluator)initWithDaemon:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HDOntologyMedicationFeatureEvaluator;
  v5 = [(HDOntologyMedicationFeatureEvaluator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_daemon, v4);
  }

  return v6;
}

- (BOOL)canRequireShardWithError:(id *)a3
{
  v5 = [MEMORY[0x277D11538] supportsOntologyBackedMedications];
  if ((v5 & 1) == 0)
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = [(HDOntologyMedicationFeatureEvaluator *)self featureIdentifier];
    [v6 hk_assignError:a3 code:111 format:{@"Cannot require %@ shard because device configuration does not support ontology backed medications", v7}];
  }

  return v5;
}

- (void)triggerShardEvaluatorWithReason:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  v5 = [WeakRetained ontologyUpdateCoordinator];
  v6 = [v5 featureCoordinator];
  [v6 evaluteRequiredShardsForEvalulator:self reason:v4];
}

- (HDDaemon)daemon
{
  WeakRetained = objc_loadWeakRetained(&self->_daemon);

  return WeakRetained;
}

- (NSString)featureIdentifier
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end