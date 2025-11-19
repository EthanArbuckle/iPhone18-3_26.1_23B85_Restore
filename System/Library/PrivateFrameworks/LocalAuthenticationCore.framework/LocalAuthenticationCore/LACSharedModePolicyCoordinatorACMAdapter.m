@interface LACSharedModePolicyCoordinatorACMAdapter
- (LACSharedModePolicyCoordinatorACMAdapter)initWithReplyQueue:(id)a3 storageRequestFactory:(id)a4 storage:(id)a5;
- (void)updatePolicyEvaluationWithTraits:(int64_t)a3 completion:(id)a4;
@end

@implementation LACSharedModePolicyCoordinatorACMAdapter

- (LACSharedModePolicyCoordinatorACMAdapter)initWithReplyQueue:(id)a3 storageRequestFactory:(id)a4 storage:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = LACSharedModePolicyCoordinatorACMAdapter;
  v12 = [(LACSharedModePolicyCoordinatorACMAdapter *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_replyQueue, a3);
    objc_storeStrong(&v13->_requestFactory, a4);
    objc_storeStrong(&v13->_storage, a5);
  }

  return v13;
}

- (void)updatePolicyEvaluationWithTraits:(int64_t)a3 completion:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = LACLogSharedMode();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromLACSharedModePolicyTraits(a3);
    *buf = 138543618;
    v17 = self;
    v18 = 2114;
    v19 = v8;
    _os_log_impl(&dword_1B0233000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ will set traits = [%{public}@]", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v9 = [(LACSharedModePolicyCoordinatorACMStorageRequestFactory *)self->_requestFactory requestWithPolicyTraits:a3];
  storage = self->_storage;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __88__LACSharedModePolicyCoordinatorACMAdapter_updatePolicyEvaluationWithTraits_completion___block_invoke;
  v13[3] = &unk_1E7A96518;
  objc_copyWeak(v15, buf);
  v15[1] = a3;
  v11 = v6;
  v14 = v11;
  [(LACSharedModePolicyCoordinatorACMStorage *)storage performRequest:v9 completion:v13];

  objc_destroyWeak(v15);
  objc_destroyWeak(buf);

  v12 = *MEMORY[0x1E69E9840];
}

void __88__LACSharedModePolicyCoordinatorACMAdapter_updatePolicyEvaluationWithTraits_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = LACLogSharedMode();
  v5 = 16 * (v3 != 0);
  if (os_log_type_enabled(v4, v5))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v7 = NSStringFromLACSharedModePolicyTraits(*(a1 + 48));
    v9 = 138543874;
    v10 = WeakRetained;
    v11 = 2114;
    v12 = v7;
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&dword_1B0233000, v4, v5, "%{public}@ did set traits = [%{public}@] err=%{public}@", &v9, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
  v8 = *MEMORY[0x1E69E9840];
}

@end