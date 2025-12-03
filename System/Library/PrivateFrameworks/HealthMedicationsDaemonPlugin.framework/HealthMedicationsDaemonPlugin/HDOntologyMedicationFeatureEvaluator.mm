@interface HDOntologyMedicationFeatureEvaluator
- (BOOL)canRequireShardWithError:(id *)error;
- (HDDaemon)daemon;
- (HDOntologyMedicationFeatureEvaluator)init;
- (HDOntologyMedicationFeatureEvaluator)initWithDaemon:(id)daemon;
- (NSString)featureIdentifier;
- (void)triggerShardEvaluatorWithReason:(id)reason;
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

- (HDOntologyMedicationFeatureEvaluator)initWithDaemon:(id)daemon
{
  daemonCopy = daemon;
  v8.receiver = self;
  v8.super_class = HDOntologyMedicationFeatureEvaluator;
  v5 = [(HDOntologyMedicationFeatureEvaluator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_daemon, daemonCopy);
  }

  return v6;
}

- (BOOL)canRequireShardWithError:(id *)error
{
  supportsOntologyBackedMedications = [MEMORY[0x277D11538] supportsOntologyBackedMedications];
  if ((supportsOntologyBackedMedications & 1) == 0)
  {
    v6 = MEMORY[0x277CCA9B8];
    featureIdentifier = [(HDOntologyMedicationFeatureEvaluator *)self featureIdentifier];
    [v6 hk_assignError:error code:111 format:{@"Cannot require %@ shard because device configuration does not support ontology backed medications", featureIdentifier}];
  }

  return supportsOntologyBackedMedications;
}

- (void)triggerShardEvaluatorWithReason:(id)reason
{
  reasonCopy = reason;
  WeakRetained = objc_loadWeakRetained(&self->_daemon);
  ontologyUpdateCoordinator = [WeakRetained ontologyUpdateCoordinator];
  featureCoordinator = [ontologyUpdateCoordinator featureCoordinator];
  [featureCoordinator evaluteRequiredShardsForEvalulator:self reason:reasonCopy];
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