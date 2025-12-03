@interface DMFApplicationPolicyMonitor
+ (NSSet)policyTypes;
+ (void)createPolicyMonitorWithPolicyChangeHandler:(id)handler completionHandler:(id)completionHandler;
- (id)_initWithPolicyChangeHandler:(id)handler addingRegistration:(BOOL)registration;
- (id)requestPoliciesForBundleIdentifiers:(id)identifiers withError:(id *)error;
- (void)dealloc;
- (void)requestPoliciesForBundleIdentifiers:(id)identifiers completionHandler:(id)handler;
@end

@implementation DMFApplicationPolicyMonitor

+ (NSSet)policyTypes
{
  if (policyTypes_onceToken != -1)
  {
    +[DMFApplicationPolicyMonitor policyTypes];
  }

  v2 = [policyTypes_types copy];

  return v2;
}

void __42__DMFApplicationPolicyMonitor_policyTypes__block_invoke()
{
  v5[4] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = @"applications";
  v5[1] = @"applicationcategories";
  v5[2] = @"categories";
  v5[3] = @"websites";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  v2 = [v0 setWithArray:v1];
  v3 = policyTypes_types;
  policyTypes_types = v2;

  v4 = *MEMORY[0x1E69E9840];
}

- (id)_initWithPolicyChangeHandler:(id)handler addingRegistration:(BOOL)registration
{
  registrationCopy = registration;
  handlerCopy = handler;
  v20.receiver = self;
  v20.super_class = DMFApplicationPolicyMonitor;
  v7 = [(DMFApplicationPolicyMonitor *)&v20 init];
  if (v7)
  {
    v8 = objc_opt_new();
    identifier = v7->_identifier;
    v7->_identifier = v8;

    if (handlerCopy)
    {
      policyTypes = [objc_opt_class() policyTypes];
      v11 = [[DMFPolicyRegistration alloc] initWithIdentifier:@"dmf.policy.monitor.app" policyTypes:policyTypes callback:handlerCopy];
      registration = v7->_registration;
      v7->_registration = v11;

      if (registrationCopy)
      {
        v13 = +[DMFPolicyMonitor policyMonitor];
        v15 = v7->_identifier;
        v14 = v7->_registration;
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __79__DMFApplicationPolicyMonitor__initWithPolicyChangeHandler_addingRegistration___block_invoke;
        v17[3] = &unk_1E8616088;
        v18 = v7;
        v19 = policyTypes;
        [v13 addRegistration:v14 forPolicyMonitorIdentifier:v15 completionHandler:v17];
      }
    }
  }

  return v7;
}

void __79__DMFApplicationPolicyMonitor__initWithPolicyChangeHandler_addingRegistration___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!a2)
  {
    v6 = DMFPolicyLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __79__DMFApplicationPolicyMonitor__initWithPolicyChangeHandler_addingRegistration___block_invoke_cold_1(a1, v5, v6);
    }
  }
}

+ (void)createPolicyMonitorWithPolicyChangeHandler:(id)handler completionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  handlerCopy = handler;
  v8 = [[self alloc] _initWithPolicyChangeHandler:handlerCopy addingRegistration:0];

  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __92__DMFApplicationPolicyMonitor_createPolicyMonitorWithPolicyChangeHandler_completionHandler___block_invoke;
  v18 = &unk_1E86160D0;
  v9 = completionHandlerCopy;
  v20 = v9;
  v10 = v8;
  v19 = v10;
  v11 = MEMORY[0x1E128DE70](&v15);
  v12 = [DMFPolicyMonitor policyMonitor:v15];
  if (handlerCopy)
  {
    registration = [v10 registration];
    identifier = [v10 identifier];
    [v12 addRegistration:registration forPolicyMonitorIdentifier:identifier completionHandler:v11];
  }

  else
  {
    registration = [objc_opt_class() policyTypes];
    identifier = [registration allObjects];
    [v12 requestPoliciesForTypes:identifier completionHandler:v11];
  }
}

uint64_t __92__DMFApplicationPolicyMonitor_createPolicyMonitorWithPolicyChangeHandler_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 40);
  }

  else
  {
    [a2 count];
    v6 = *(a1 + 32);
  }

  v5 = *(*(a1 + 40) + 16);

  return v5();
}

- (void)dealloc
{
  v3 = +[DMFPolicyMonitor policyMonitor];
  [v3 invalidatePolicyMonitor:self->_identifier];

  v4.receiver = self;
  v4.super_class = DMFApplicationPolicyMonitor;
  [(DMFApplicationPolicyMonitor *)&v4 dealloc];
}

- (id)requestPoliciesForBundleIdentifiers:(id)identifiers withError:(id *)error
{
  identifiersCopy = identifiers;
  v6 = +[DMFPolicyMonitor policyMonitor];
  v7 = [v6 requestPoliciesForBundleIdentifiers:identifiersCopy withError:error];

  return v7;
}

- (void)requestPoliciesForBundleIdentifiers:(id)identifiers completionHandler:(id)handler
{
  handlerCopy = handler;
  identifiersCopy = identifiers;
  v7 = +[DMFPolicyMonitor policyMonitor];
  [v7 requestPoliciesForBundleIdentifiers:identifiersCopy completionHandler:handlerCopy];
}

void __79__DMFApplicationPolicyMonitor__initWithPolicyChangeHandler_addingRegistration___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 8);
  v6 = 138543874;
  v7 = v4;
  v8 = 2114;
  v9 = v3;
  v10 = 2114;
  v11 = a2;
  _os_log_error_impl(&dword_1DBFFF000, log, OS_LOG_TYPE_ERROR, "Failed to register application policy monitor with identifier %{public}@ for types %{public}@ with error: %{public}@", &v6, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

@end