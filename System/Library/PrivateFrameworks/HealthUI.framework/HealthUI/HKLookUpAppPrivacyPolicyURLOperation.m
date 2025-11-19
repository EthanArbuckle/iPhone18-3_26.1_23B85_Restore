@interface HKLookUpAppPrivacyPolicyURLOperation
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (HKLookUpAppPrivacyPolicyURLOperation)init;
- (HKLookUpAppPrivacyPolicyURLOperation)initWithBundleIdentifier:(id)a3;
- (id)debugDescription;
- (id)description;
- (void)_performLookup;
- (void)cancel;
- (void)setExecuting:(BOOL)a3;
- (void)setFinished:(BOOL)a3;
- (void)start;
@end

@implementation HKLookUpAppPrivacyPolicyURLOperation

- (HKLookUpAppPrivacyPolicyURLOperation)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKLookUpAppPrivacyPolicyURLOperation)initWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKLookUpAppPrivacyPolicyURLOperation;
  v5 = [(HKLookUpAppPrivacyPolicyURLOperation *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;
  }

  return v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = [(HKLookUpAppPrivacyPolicyURLOperation *)self bundleIdentifier];
  v6 = HKSensitiveLogItem();
  v7 = [v3 initWithFormat:@"<%@:%p bundleIdentifier: %@>", v4, self, v6];

  return v7;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = [(HKLookUpAppPrivacyPolicyURLOperation *)self bundleIdentifier];
  v6 = HKSensitiveLogItem();
  v10.receiver = self;
  v10.super_class = HKLookUpAppPrivacyPolicyURLOperation;
  v7 = [(HKLookUpAppPrivacyPolicyURLOperation *)&v10 debugDescription];
  v8 = [v3 initWithFormat:@"<%@:%p bundleIdentifier: %@, operationDescription: %@>", v4, self, v6, v7];

  return v8;
}

- (void)cancel
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  if (![(HKLookUpAppPrivacyPolicyURLOperation *)v2 isFinished])
  {
    v5.receiver = v2;
    v5.super_class = HKLookUpAppPrivacyPolicyURLOperation;
    [(HKLookUpAppPrivacyPolicyURLOperation *)&v5 cancel];
    v3 = [(HKLookUpAppPrivacyPolicyURLOperation *)v2 outstandingPromise];
    [v3 cancel];

    [(HKLookUpAppPrivacyPolicyURLOperation *)v2 setOutstandingPromise:0];
    _HKInitializeLogging();
    v4 = *MEMORY[0x1E696B948];
    if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v7 = v2;
      _os_log_impl(&dword_1C3942000, v4, OS_LOG_TYPE_INFO, "%{public}@ did cancel", buf, 0xCu);
    }

    [(HKLookUpAppPrivacyPolicyURLOperation *)v2 setExecuting:0];
    [(HKLookUpAppPrivacyPolicyURLOperation *)v2 setFinished:1];
  }

  objc_sync_exit(v2);
}

- (void)_performLookup
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E698C7D8];
  v4 = [MEMORY[0x1E698C9E0] bagSubProfile];
  v5 = [MEMORY[0x1E698C9E0] bagSubProfileVersion];
  v6 = [v3 bagForProfile:v4 profileVersion:v5];

  v7 = objc_alloc(MEMORY[0x1E698C9E0]);
  v8 = [v7 initWithType:0 clientIdentifier:*MEMORY[0x1E696C860] clientVersion:@"1" bag:v6];
  v9 = [(HKLookUpAppPrivacyPolicyURLOperation *)self bundleIdentifier];
  v13[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [v8 setBundleIdentifiers:v10];

  [v8 setAdditionalQueryParams:&unk_1F4384BA8];
  v11 = [v8 perform];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__HKLookUpAppPrivacyPolicyURLOperation__performLookup__block_invoke;
  v12[3] = &unk_1E81B85D8;
  v12[4] = self;
  [v11 addFinishBlock:v12];
  [(HKLookUpAppPrivacyPolicyURLOperation *)self setOutstandingPromise:v11];
}

void __54__HKLookUpAppPrivacyPolicyURLOperation__performLookup__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v24 = a3;
  v7 = *(a1 + 32);
  v6 = (a1 + 32);
  v8 = v7;
  objc_sync_enter(v8);
  if (([*v6 isCancelled] & 1) == 0)
  {
    if (v5)
    {
      v9 = [v5 responseDataItems];
      v10 = [v9 firstObject];
      v11 = [v10 objectForKeyedSubscript:@"attributes"];
      v12 = [v11 objectForKeyedSubscript:@"platformAttributes"];
      v13 = [v12 objectForKeyedSubscript:@"ios"];
      v14 = [v13 objectForKeyedSubscript:@"privacyPolicyUrl"];
      objc_opt_class();
      v23 = HKSafeObject();
      v15 = 0;

      v16 = MEMORY[0x1E696B948];
      if (v15)
      {
        _HKInitializeLogging();
        if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
        {
          __54__HKLookUpAppPrivacyPolicyURLOperation__performLookup__block_invoke_cold_1();
        }
      }

      if (v23)
      {
        v17 = [MEMORY[0x1E695DFF8] URLWithString:?];
        if (v17)
        {
          _HKInitializeLogging();
          v18 = *v16;
          if (os_log_type_enabled(*v16, OS_LOG_TYPE_INFO))
          {
            v19 = v18;
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              v20 = *v6;
              v21 = [*v6 privacyPolicyURL];
              v22 = HKSensitiveLogItem();
              *buf = 138543618;
              v26 = v20;
              v27 = 2112;
              v28 = v22;
              _os_log_impl(&dword_1C3942000, v19, OS_LOG_TYPE_INFO, "%{public}@ did finish with privacy policy URL: %@", buf, 0x16u);
            }
          }
        }
      }

      else
      {
        v17 = 0;
      }

      [*v6 setPrivacyPolicyURL:v17];
    }

    else
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_ERROR))
      {
        __54__HKLookUpAppPrivacyPolicyURLOperation__performLookup__block_invoke_cold_2();
      }

      v15 = [MEMORY[0x1E695DFF8] URLWithString:@"https://www.apple.com/healthcare/health-records/"];
      [*v6 setPrivacyPolicyURL:v15];
    }

    [*v6 setError:v24];
    [*v6 setExecuting:0];
    [*v6 setFinished:1];
    [*v6 setOutstandingPromise:0];
  }

  objc_sync_exit(v8);
}

- (void)start
{
  obj = self;
  objc_sync_enter(obj);
  if (([(HKLookUpAppPrivacyPolicyURLOperation *)obj isReady]& 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"-start received by operation %@", obj}];
  }

  if ([(HKLookUpAppPrivacyPolicyURLOperation *)obj isCancelled])
  {
    [(HKLookUpAppPrivacyPolicyURLOperation *)obj setFinished:1];
  }

  else
  {
    [(HKLookUpAppPrivacyPolicyURLOperation *)obj setExecuting:1];
    [(HKLookUpAppPrivacyPolicyURLOperation *)obj _performLookup];
  }

  objc_sync_exit(obj);
}

- (void)setExecuting:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  [(HKLookUpAppPrivacyPolicyURLOperation *)obj willChangeValueForKey:@"isExecuting"];
  obj->_executing = a3;
  [(HKLookUpAppPrivacyPolicyURLOperation *)obj didChangeValueForKey:@"isExecuting"];
  objc_sync_exit(obj);
}

- (BOOL)isExecuting
{
  v2 = self;
  objc_sync_enter(v2);
  executing = v2->_executing;
  objc_sync_exit(v2);

  return executing;
}

- (void)setFinished:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  [(HKLookUpAppPrivacyPolicyURLOperation *)obj willChangeValueForKey:@"isFinished"];
  obj->_finished = a3;
  [(HKLookUpAppPrivacyPolicyURLOperation *)obj didChangeValueForKey:@"isFinished"];
  objc_sync_exit(obj);
}

- (BOOL)isFinished
{
  v2 = self;
  objc_sync_enter(v2);
  finished = v2->_finished;
  objc_sync_exit(v2);

  return finished;
}

@end