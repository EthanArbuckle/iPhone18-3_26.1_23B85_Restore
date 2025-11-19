@interface HDFeatureAvailabilityHealthDataRequirementStoreServer
+ (BOOL)validateConfiguration:(id)a3 client:(id)a4 error:(id *)a5;
+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7;
+ (id)taskIdentifier;
- (void)remote_getEvaluationOfRequirements:(id)a3 completion:(id)a4;
- (void)remote_startObservingChangesInRequirements:(id)a3 completion:(id)a4;
- (void)remote_stopObservingChanges;
@end

@implementation HDFeatureAvailabilityHealthDataRequirementStoreServer

- (void)remote_getEvaluationOfRequirements:(id)a3 completion:(id)a4
{
  manager = self->_manager;
  v9 = 0;
  v6 = a4;
  v7 = [(HDFeatureAvailabilityHealthDataRequirementEvaluationManager *)manager evaluationOfRequirements:a3 error:&v9];
  v8 = v9;
  v6[2](v6, v7, v8);
}

- (void)remote_startObservingChangesInRequirements:(id)a3 completion:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  _HKInitializeLogging();
  v8 = HKLogInfrastructure();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = self;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Registering for changes", buf, 0xCu);
  }

  manager = self->_manager;
  v13 = 0;
  v10 = [(HDFeatureAvailabilityHealthDataRequirementEvaluationManager *)manager registerObserver:self forRequirements:v7 queue:0 error:&v13];

  v11 = v13;
  v6[2](v6, v10, v11);

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
    v6 = self;
    _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Unregistering for changes", &v5, 0xCu);
  }

  [(HDFeatureAvailabilityHealthDataRequirementEvaluationManager *)self->_manager unregisterObserver:self];
  v4 = *MEMORY[0x277D85DE8];
}

+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(HDStandardTaskServer *)[HDFeatureAvailabilityHealthDataRequirementStoreServer alloc] initWithUUID:v13 configuration:v12 client:v11 delegate:v10];

  v15 = [v11 profile];

  v16 = [v15 healthDataRequirementEvaluationManager];
  manager = v14->_manager;
  v14->_manager = v16;

  return v14;
}

+ (BOOL)validateConfiguration:(id)a3 client:(id)a4 error:(id *)a5
{
  v5 = a4;
  v6 = [v5 entitlements];
  v7 = [v6 hasEntitlement:*MEMORY[0x277CCC8B0]];

  v8 = [v5 entitlements];
  v9 = [v8 hasEntitlement:*MEMORY[0x277CCBEC8]];

  v10 = [v5 entitlements];

  LOBYTE(v5) = [v10 hasEntitlement:*MEMORY[0x277CCBEB8]];
  return (v7 | v9 | v5) & 1;
}

+ (id)taskIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end