@interface DMFCommunicationPolicyMonitor
+ (NSSet)communicationBundleIdentifiers;
+ (NSSet)policyTypes;
+ (unint64_t)communicationPolicyForApplicationPolicy:(id)a3 downtimeEnforced:(BOOL)a4;
- (DMFCommunicationPolicyMonitor)init;
- (DMFCommunicationPolicyMonitor)initWithPolicyChangeHandler:(id)a3;
- (id)requestPoliciesByBundleIdentifierWithError:(id *)a3;
- (void)_updatePoliciesByBundleIdentifier;
- (void)dealloc;
- (void)requestPoliciesByBundleIdentifierWithCompletionHandler:(id)a3;
@end

@implementation DMFCommunicationPolicyMonitor

+ (NSSet)communicationBundleIdentifiers
{
  if (communicationBundleIdentifiers_onceToken != -1)
  {
    +[DMFCommunicationPolicyMonitor communicationBundleIdentifiers];
  }

  v2 = [communicationBundleIdentifiers_bundleIdentifiers copy];

  return v2;
}

void __63__DMFCommunicationPolicyMonitor_communicationBundleIdentifiers__block_invoke()
{
  v5[7] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = @"com.apple.facetime";
  v5[1] = @"com.apple.FaceTime";
  v5[2] = @"com.apple.MobileSMS";
  v5[3] = @"com.apple.iChat";
  v5[4] = @"com.apple.mobilephone";
  v5[5] = @"com.apple.NanoPhone";
  v5[6] = @"com.apple.tincan";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:7];
  v2 = [v0 setWithArray:v1];
  v3 = communicationBundleIdentifiers_bundleIdentifiers;
  communicationBundleIdentifiers_bundleIdentifiers = v2;

  v4 = *MEMORY[0x1E69E9840];
}

+ (NSSet)policyTypes
{
  if (policyTypes_onceToken_1 != -1)
  {
    +[DMFCommunicationPolicyMonitor policyTypes];
  }

  v2 = [policyTypes_types_1 copy];

  return v2;
}

void __44__DMFCommunicationPolicyMonitor_policyTypes__block_invoke()
{
  v5[3] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = @"applications";
  v5[1] = @"applicationcategories";
  v5[2] = @"categories";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:3];
  v2 = [v0 setWithArray:v1];
  v3 = policyTypes_types_1;
  policyTypes_types_1 = v2;

  v4 = *MEMORY[0x1E69E9840];
}

- (DMFCommunicationPolicyMonitor)initWithPolicyChangeHandler:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = DMFCommunicationPolicyMonitor;
  v5 = [(DMFCommunicationPolicyMonitor *)&v17 init];
  if (v5)
  {
    v6 = objc_opt_new();
    identifier = v5->_identifier;
    v5->_identifier = v6;

    if (v4)
    {
      v8 = [objc_opt_class() policyTypes];
      v9 = [[DMFPolicyRegistration alloc] initWithIdentifier:@"dmf.policy.monitor.communication" policyTypes:v8 callback:v4];
      v10 = +[DMFPolicyMonitor policyMonitor];
      v11 = v5->_identifier;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __61__DMFCommunicationPolicyMonitor_initWithPolicyChangeHandler___block_invoke;
      v14[3] = &unk_1E8616088;
      v15 = v5;
      v16 = v8;
      v12 = v8;
      [v10 addRegistration:v9 forPolicyMonitorIdentifier:v11 completionHandler:v14];
    }
  }

  return v5;
}

void __61__DMFCommunicationPolicyMonitor_initWithPolicyChangeHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!a2)
  {
    v6 = DMFPolicyLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __61__DMFCommunicationPolicyMonitor_initWithPolicyChangeHandler___block_invoke_cold_1(a1, v5, v6);
    }
  }
}

- (void)dealloc
{
  v3 = +[DMFPolicyMonitor policyMonitor];
  [v3 invalidatePolicyMonitor:self->_identifier];

  v4.receiver = self;
  v4.super_class = DMFCommunicationPolicyMonitor;
  [(DMFCommunicationPolicyMonitor *)&v4 dealloc];
}

+ (unint64_t)communicationPolicyForApplicationPolicy:(id)a3 downtimeEnforced:(BOOL)a4
{
  v4 = a4;
  if ([a3 integerValue])
  {
    return 2;
  }

  else
  {
    return v4;
  }
}

- (id)requestPoliciesByBundleIdentifierWithError:(id *)a3
{
  v4 = [objc_opt_class() communicationBundleIdentifiers];
  v5 = [v4 allObjects];

  v6 = +[DMFPolicyMonitor policyMonitor];
  v7 = [v6 requestCommunicationPoliciesForBundleIdentifiers:v5 withError:a3];

  return v7;
}

- (void)requestPoliciesByBundleIdentifierWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() communicationBundleIdentifiers];
  v6 = [v4 allObjects];

  v5 = +[DMFPolicyMonitor policyMonitor];
  [v5 requestCommunicationPoliciesForBundleIdentifiers:v6 completionHandler:v3];
}

- (DMFCommunicationPolicyMonitor)init
{
  v21 = *MEMORY[0x1E69E9840];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __37__DMFCommunicationPolicyMonitor_init__block_invoke;
  v18[3] = &unk_1E86160F8;
  v19 = self;
  v2 = [(DMFCommunicationPolicyMonitor *)v19 initWithPolicyChangeHandler:v18];
  if (v2)
  {
    v3 = [objc_opt_class() communicationBundleIdentifiers];
    v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        v9 = 0;
        do
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [v4 setObject:&unk_1F57B6D48 forKeyedSubscript:{*(*(&v14 + 1) + 8 * v9++), v14}];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
      }

      while (v7);
    }

    v10 = [v4 copy];
    policiesByBundleIdentifier = v2->_policiesByBundleIdentifier;
    v2->_policiesByBundleIdentifier = v10;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)_updatePoliciesByBundleIdentifier
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1DBFFF000, a2, OS_LOG_TYPE_ERROR, "Failed to request communication policies with error: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __61__DMFCommunicationPolicyMonitor_initWithPolicyChangeHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 24);
  v6 = 138543874;
  v7 = v4;
  v8 = 2114;
  v9 = v3;
  v10 = 2114;
  v11 = a2;
  _os_log_error_impl(&dword_1DBFFF000, log, OS_LOG_TYPE_ERROR, "Failed to register communication policy monitor with identifier %{public}@ for types %{public}@ with error: %{public}@", &v6, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

@end