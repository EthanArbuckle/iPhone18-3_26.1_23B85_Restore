@interface LACDTOKVStoreMigrationController
- (LACDTOKVStoreMigrationController)initWithKVStore:(id)a3 defaults:(id)a4 workQueue:(id)a5;
- (void)_migrateStrictModeKeyIfNeededWithCompletion:(id)a3;
@end

@implementation LACDTOKVStoreMigrationController

- (LACDTOKVStoreMigrationController)initWithKVStore:(id)a3 defaults:(id)a4 workQueue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = LACDTOKVStoreMigrationController;
  v12 = [(LACDTOKVStoreMigrationController *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_store, a3);
    objc_storeStrong(&v13->_defaults, a4);
    objc_storeStrong(&v13->_workQueue, a5);
  }

  return v13;
}

void __60__LACDTOKVStoreMigrationController_performMigrationIfNeeded__block_invoke(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (a2)
  {
    v6 = LACLogDTOStorage();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = NSStringFromLACDTOKVStoreKey(0);
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_1B0233000, v6, OS_LOG_TYPE_DEFAULT, "Migration of key: %{public}@ did finish successfully", &v9, 0xCu);
    }

LABEL_7:

    goto LABEL_8;
  }

  if (v4)
  {
    v6 = LACLogDTOStorage();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __60__LACDTOKVStoreMigrationController_performMigrationIfNeeded__block_invoke_cold_1(v5, v6);
    }

    goto LABEL_7;
  }

LABEL_8:

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_migrateStrictModeKeyIfNeededWithCompletion:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(LACGlobalDomainDTO *)self->_defaults isDTOStrictModeEnabled];
  if (v5)
  {
    v6 = LACLogDTOStorage();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = NSStringFromLACDTOKVStoreKey(0);
      *buf = 138543362;
      v14 = v7;
      _os_log_impl(&dword_1B0233000, v6, OS_LOG_TYPE_DEFAULT, "Migration of key: '%{public}@' will start", buf, 0xCu);
    }

    if ([v5 BOOLValue])
    {
      objc_initWeak(buf, self);
      store = self->_store;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __80__LACDTOKVStoreMigrationController__migrateStrictModeKeyIfNeededWithCompletion___block_invoke;
      v10[3] = &unk_1E7A959C0;
      objc_copyWeak(&v12, buf);
      v11 = v4;
      [(LACDTOKVStore *)store valueForKey:0 completion:v10];

      objc_destroyWeak(&v12);
      objc_destroyWeak(buf);
    }

    else
    {
      [(LACGlobalDomainDTO *)self->_defaults setIsDTOStrictModeEnabled:0];
      (*(v4 + 2))(v4, 1, 0);
    }
  }

  else
  {
    (*(v4 + 2))(v4, 0, 0);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __80__LACDTOKVStoreMigrationController__migrateStrictModeKeyIfNeededWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = NSStringFromLACDTOKVStoreKey(0);
      v10 = [v8 stringWithFormat:@"Could not migrate value for key: '%@'", v9];

      v11 = *(a1 + 32);
      v12 = [LACError errorWithCode:-1000 underlyingError:v6 debugDescription:v10];
      (*(v11 + 16))(v11, 0, v12);
    }

    else if ([v5 BOOLValue])
    {
      v13 = *(WeakRetained + 1);
      v14 = __80__LACDTOKVStoreMigrationController__migrateStrictModeKeyIfNeededWithCompletion___block_invoke_2();
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __80__LACDTOKVStoreMigrationController__migrateStrictModeKeyIfNeededWithCompletion___block_invoke_3;
      v16[3] = &unk_1E7A95998;
      v15 = *(a1 + 32);
      v16[4] = WeakRetained;
      v17 = v15;
      [v13 processWriteRequest:v14 completion:v16];
    }

    else
    {
      [*(WeakRetained + 2) setIsDTOStrictModeEnabled:0];
      (*(*(a1 + 32) + 16))();
    }
  }
}

LACDTOMutableKVStoreWriteRequest *__80__LACDTOKVStoreMigrationController__migrateStrictModeKeyIfNeededWithCompletion___block_invoke_2()
{
  v0 = [[LACDTOKVStoreValue alloc] initWithBoolValue:1];
  v1 = [[LACDTOMutableKVStoreWriteRequest alloc] initWithKey:4 value:v0];
  [(LACDTOMutableKVStoreWriteRequest *)v1 setBypassEntitlements:1];

  return v1;
}

void __80__LACDTOKVStoreMigrationController__migrateStrictModeKeyIfNeededWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v8 = a2;
  if (v8)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = NSStringFromLACDTOKVStoreKey(0);
    v5 = [v3 stringWithFormat:@"Could not migrate value for key: '%@'", v4];

    v6 = *(a1 + 40);
    v7 = [LACError errorWithCode:-1000 underlyingError:v8 debugDescription:v5];
    (*(v6 + 16))(v6, 0, v7);
  }

  else
  {
    [*(*(a1 + 32) + 16) setIsDTOStrictModeEnabled:0];
    (*(*(a1 + 40) + 16))();
  }
}

void __60__LACDTOKVStoreMigrationController_performMigrationIfNeeded__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = NSStringFromLACDTOKVStoreKey(0);
  v6 = 138543618;
  v7 = v4;
  v8 = 2114;
  v9 = a1;
  _os_log_error_impl(&dword_1B0233000, a2, OS_LOG_TYPE_ERROR, "Migration of key: %{public}@ did fail (error=%{public}@)", &v6, 0x16u);

  v5 = *MEMORY[0x1E69E9840];
}

@end