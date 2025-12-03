@interface DMCProcessAssertion
- (DMCProcessAssertion)initWithReason:(id)reason;
- (void)_createAssertion;
- (void)_releaseAssertion;
- (void)dealloc;
@end

@implementation DMCProcessAssertion

- (DMCProcessAssertion)initWithReason:(id)reason
{
  reasonCopy = reason;
  v9.receiver = self;
  v9.super_class = DMCProcessAssertion;
  v6 = [(DMCProcessAssertion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reason, reason);
    [(DMCProcessAssertion *)v7 _createAssertion];
  }

  return v7;
}

- (void)dealloc
{
  [(DMCProcessAssertion *)self _releaseAssertion];
  v3.receiver = self;
  v3.super_class = DMCProcessAssertion;
  [(DMCProcessAssertion *)&v3 dealloc];
}

- (void)_createAssertion
{
  v3 = _assertionQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__DMCProcessAssertion__createAssertion__block_invoke;
  block[3] = &unk_1E7ADC760;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __39__DMCProcessAssertion__createAssertion__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = DMCLogObjects()[2];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 16);
    v9 = 138543362;
    v10 = v3;
    _os_log_impl(&dword_1B1630000, v2, OS_LOG_TYPE_INFO, "Creating process assertion with reason: %{public}@", &v9, 0xCu);
  }

  v4 = [@"com.apple.ManagedConfiguration." stringByAppendingString:*(*(a1 + 32) + 16)];
  [v4 UTF8String];
  v5 = os_transaction_create();
  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  *(v6 + 8) = v5;

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_releaseAssertion
{
  v3 = _assertionQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__DMCProcessAssertion__releaseAssertion__block_invoke;
  block[3] = &unk_1E7ADC760;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __40__DMCProcessAssertion__releaseAssertion__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = DMCLogObjects()[2];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 16);
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_1B1630000, v2, OS_LOG_TYPE_INFO, "Releasing process assertion with reason: %{public}@", &v7, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  *(v4 + 8) = 0;

  v6 = *MEMORY[0x1E69E9840];
}

@end