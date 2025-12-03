@interface HDFeatureAvailabilityHealthDataRequirementStoreServer
+ (BOOL)validateConfiguration:(id)configuration client:(id)client error:(id *)error;
+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error;
+ (id)taskIdentifier;
- (void)remote_getEvaluationOfRequirements:(id)requirements completion:(id)completion;
- (void)remote_startObservingChangesInRequirements:(id)requirements completion:(id)completion;
- (void)remote_stopObservingChanges;
@end

@implementation HDFeatureAvailabilityHealthDataRequirementStoreServer

- (void)remote_getEvaluationOfRequirements:(id)requirements completion:(id)completion
{
  manager = self->_manager;
  v9 = 0;
  completionCopy = completion;
  v7 = [(HDFeatureAvailabilityHealthDataRequirementEvaluationManager *)manager evaluationOfRequirements:requirements error:&v9];
  v8 = v9;
  completionCopy[2](completionCopy, v7, v8);
}

- (void)remote_startObservingChangesInRequirements:(id)requirements completion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  requirementsCopy = requirements;
  _HKInitializeLogging();
  v8 = HKLogInfrastructure();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Registering for changes", buf, 0xCu);
  }

  manager = self->_manager;
  v13 = 0;
  v10 = [(HDFeatureAvailabilityHealthDataRequirementEvaluationManager *)manager registerObserver:self forRequirements:requirementsCopy queue:0 error:&v13];

  v11 = v13;
  completionCopy[2](completionCopy, v10, v11);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)remote_stopObservingChanges
{
  v7 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = HKLogInfrastructure();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Unregistering for changes", &v5, 0xCu);
  }

  [(HDFeatureAvailabilityHealthDataRequirementEvaluationManager *)self->_manager unregisterObserver:self];
  v4 = *MEMORY[0x277D85DE8];
}

+ (id)createTaskServerWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate error:(id *)error
{
  delegateCopy = delegate;
  clientCopy = client;
  configurationCopy = configuration;
  dCopy = d;
  v14 = [(HDStandardTaskServer *)[HDFeatureAvailabilityHealthDataRequirementStoreServer alloc] initWithUUID:dCopy configuration:configurationCopy client:clientCopy delegate:delegateCopy];

  profile = [clientCopy profile];

  healthDataRequirementEvaluationManager = [profile healthDataRequirementEvaluationManager];
  manager = v14->_manager;
  v14->_manager = healthDataRequirementEvaluationManager;

  return v14;
}

+ (BOOL)validateConfiguration:(id)configuration client:(id)client error:(id *)error
{
  clientCopy = client;
  entitlements = [clientCopy entitlements];
  v7 = [entitlements hasEntitlement:*MEMORY[0x277CCC8B0]];

  entitlements2 = [clientCopy entitlements];
  v9 = [entitlements2 hasEntitlement:*MEMORY[0x277CCBEC8]];

  entitlements3 = [clientCopy entitlements];

  LOBYTE(clientCopy) = [entitlements3 hasEntitlement:*MEMORY[0x277CCBEB8]];
  return (v7 | v9 | clientCopy) & 1;
}

+ (id)taskIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end