@interface HDProtectedDataOperation
- (BOOL)requestWorkWithPriority:(int64_t)a3 error:(id *)a4;
- (HDProtectedDataOperation)initWithOperationScheduler:(id)a3 debugIdentifier:(id)a4 delegate:(id)a5;
- (HDProtectedDataOperation)initWithProfile:(id)a3 debugIdentifier:(id)a4 delegate:(id)a5;
- (id)diagnosticDescription;
- (uint64_t)_performStateTransitionWithError:(void *)a3 block:;
- (void)_startWorkNow:(void *)a1;
- (void)protectedDataOperationSchedulerProtectedDataIsAvailable:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation HDProtectedDataOperation

- (HDProtectedDataOperation)initWithProfile:(id)a3 debugIdentifier:(id)a4 delegate:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 protectedDataOperationScheduler];
  v11 = [(HDProtectedDataOperation *)self initWithOperationScheduler:v10 debugIdentifier:v9 delegate:v8];

  return v11;
}

- (HDProtectedDataOperation)initWithOperationScheduler:(id)a3 debugIdentifier:(id)a4 delegate:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v10)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"HDProtectedDataOperation.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"protectedDataOperationScheduler"}];
  }

  v19.receiver = self;
  v19.super_class = HDProtectedDataOperation;
  v13 = [(HDProtectedDataOperation *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_protectedDataOperationScheduler, a3);
    v15 = [v11 copy];
    debugIdentifier = v14->_debugIdentifier;
    v14->_debugIdentifier = v15;

    objc_storeWeak(&v14->_lock_delegate, v12);
    v14->_lock._os_unfair_lock_opaque = 0;
    v14->_lock_shouldBypassMaintenanceCoordinator = 0;
    v14->_lock_state = 1;
  }

  return v14;
}

- (BOOL)requestWorkWithPriority:(int64_t)a3 error:(id *)a4
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__HDProtectedDataOperation_requestWorkWithPriority_error___block_invoke;
  v5[3] = &unk_27862E658;
  v5[4] = self;
  v5[5] = a3;
  return [(HDProtectedDataOperation *)self _performStateTransitionWithError:a4 block:v5];
}

id __58__HDProtectedDataOperation_requestWorkWithPriority_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 oldState];
  v5 = *(a1 + 40);
  v6 = [v3 oldState];
  v7 = 5;
  if (v5 != 1)
  {
    v7 = v4;
  }

  v8 = 8;
  if (v6 != 7)
  {
    v8 = v4;
  }

  if (v6 != 6)
  {
    v7 = v8;
  }

  v9 = 4;
  if ((v6 - 3) >= 2)
  {
    v9 = v4;
  }

  if ((v6 - 1) >= 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 2;
  }

  if (v6 <= 5)
  {
    v11 = v10;
  }

  else
  {
    v11 = v7;
  }

  if ([v3 oldState] != v11)
  {
    v12 = [v3 copyWithNewState:v11];

    v3 = v12;
  }

  if (v5 == 1)
  {
    *(*(a1 + 32) + 32) = 1;
  }

  return v3;
}

- (uint64_t)_performStateTransitionWithError:(void *)a3 block:
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!a1)
  {
    v30 = 0;
    goto LABEL_49;
  }

  os_unfair_lock_lock((a1 + 16));
  v6 = [_HDProtectedDataOperationTransitionContext alloc];
  if (v6)
  {
    v7 = [(_HDProtectedDataOperationTransitionContext *)v6 initWithOldState:*(a1 + 24) newState:0];
  }

  else
  {
    v7 = 0;
  }

  v37 = 0;
  v8 = v5[2](v5, v7, &v37);
  v9 = v37;
  v10 = v9;
  if (!v8)
  {
    v10 = v9;
    if (!v10)
    {
LABEL_46:

      v14 = 0;
      goto LABEL_47;
    }

    if (!a2)
    {
LABEL_45:
      _HKLogDroppedError();
      goto LABEL_46;
    }

LABEL_14:
    v13 = v10;
    *a2 = v10;
    goto LABEL_46;
  }

  if ([v8 hasNewState])
  {
    v11 = [v8 newState];
    v36 = v10;
    os_unfair_lock_assert_owner((a1 + 16));
    v12 = *(a1 + 24);
    if (v12 > 4)
    {
      if (v12 <= 6)
      {
        if (v12 == 5)
        {
          if (v11 == 7)
          {
            goto LABEL_28;
          }
        }

        else if ((v11 | 2) == 7)
        {
          goto LABEL_28;
        }

        goto LABEL_43;
      }

      if (v12 == 7)
      {
        if (v11 != 3 && v11 != 8)
        {
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v12 != 8)
      {
LABEL_43:
        v26 = MEMORY[0x277CCA9B8];
        v27 = NSStringFromHDProtectedDataOperationState(*(a1 + 24));
        v28 = NSStringFromHDProtectedDataOperationState(v11);
        [v26 hk_assignError:&v36 code:126 format:{@"Invalid attempt to change state from %@ to %@", v27, v28}];

        v29 = v36;
        v10 = v29;
        if (!v10)
        {
          goto LABEL_46;
        }

        if (!a2)
        {
          goto LABEL_45;
        }

        goto LABEL_14;
      }
    }

    else if ((v12 - 2) >= 2)
    {
      if (v12 != 1)
      {
        if (v12 != 4 || (v11 - 5) >= 2)
        {
          goto LABEL_43;
        }

LABEL_28:
        _HKInitializeLogging();
        v15 = HKLogInfrastructure();
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);

        if (v16)
        {
          v17 = HKLogInfrastructure();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = NSStringFromHDProtectedDataOperationState(v12);
            v19 = NSStringFromHDProtectedDataOperationState(v11);
            *buf = 138543874;
            v40 = a1;
            v41 = 2114;
            v42 = v18;
            v43 = 2114;
            v44 = v19;
            _os_log_impl(&dword_228986000, v17, OS_LOG_TYPE_INFO, "[%{public}@] State will change from %{public}@ to %{public}@", buf, 0x20u);
          }
        }

        *(a1 + 24) = v11;
        v10 = v10;

        os_unfair_lock_unlock((a1 + 16));
        v20 = v8;
        os_unfair_lock_lock((a1 + 16));
        WeakRetained = objc_loadWeakRetained((a1 + 40));
        os_unfair_lock_unlock((a1 + 16));
        if ([WeakRetained conformsToProtocol:&unk_283D717F8])
        {
          v22 = WeakRetained;
        }

        else
        {
          v22 = 0;
        }

        [v22 protectedDataOperation:a1 didTransitionWithContext:v20];
        v23 = [v20 newState];
        if (v23 <= 4)
        {
          if (v23 == 2)
          {
            [*(a1 + 8) registerObserver:a1];
          }

          else if (v23 == 4)
          {
            [*(a1 + 8) registerProtectedDataAvailableObserver:a1];
          }

          goto LABEL_55;
        }

        if (v23 == 5)
        {
          v33 = [v20 oldState];
          if (v33 == 6)
          {
            v34 = *(a1 + 8);
            v35 = [a1 description];
            [v34 startEnqueuedWorkWithName:v35];

            goto LABEL_55;
          }

          if (v33 == 4)
          {
            v24 = a1;
            v25 = 1;
            goto LABEL_54;
          }
        }

        else if (v23 == 6)
        {
          v24 = a1;
          v25 = 0;
LABEL_54:
          [(HDProtectedDataOperation *)v24 _startWorkNow:v25];
        }

LABEL_55:

        v14 = 1;
        goto LABEL_48;
      }

      if (v11 == 2)
      {
        goto LABEL_28;
      }

      goto LABEL_43;
    }

    if (v11 == 4)
    {
      goto LABEL_28;
    }

    goto LABEL_43;
  }

  v14 = 1;
LABEL_47:
  os_unfair_lock_unlock((a1 + 16));
LABEL_48:
  v38 = v14;

  v30 = v38;
LABEL_49:

  v31 = *MEMORY[0x277D85DE8];
  return v30;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  objc_storeWeak(&self->_lock_delegate, v4);

  os_unfair_lock_unlock(&self->_lock);
}

id __66__HDProtectedDataOperation__performTransitionToNewStateWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = a2;
  v5 = [v4 copyWithNewState:v3(v2)];

  return v5;
}

- (void)_startWorkNow:(void *)a1
{
  v4 = a1[1];
  v5 = [a1 description];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__HDProtectedDataOperation__startWorkNow___block_invoke;
  v6[3] = &unk_278625D40;
  v6[4] = a1;
  [v4 startWorkNow:a2 name:v5 asynchronousBlock:v6];
}

void __42__HDProtectedDataOperation__startWorkNow___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v6)
  {
    v19[4] = v6;
    v20 = 0;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __103__HDProtectedDataOperation__notifyDelegateToPerformWorkWithDatabase_accessibilityAssertion_completion___block_invoke;
    v19[3] = &unk_27862E6A8;
    v10 = [(HDProtectedDataOperation *)v6 _performStateTransitionWithError:v19 block:?];
    v11 = v20;
    if (v10)
    {
      *aBlock = MEMORY[0x277D85DD0];
      *&aBlock[8] = 3221225472;
      *&aBlock[16] = __103__HDProtectedDataOperation__notifyDelegateToPerformWorkWithDatabase_accessibilityAssertion_completion___block_invoke_360;
      v24 = &unk_278614E28;
      v25 = v6;
      v26 = v9;
      v12 = _Block_copy(aBlock);
      os_unfair_lock_lock((v6 + 16));
      WeakRetained = objc_loadWeakRetained((v6 + 40));
      os_unfair_lock_unlock((v6 + 16));
      _HKInitializeLogging();
      v14 = HKLogInfrastructure();
      v15 = v14;
      if (WeakRetained)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v22 = v6;
          _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Here we go! Delegate asked to perform work!", buf, 0xCu);
        }

        v16 = [v7 profile];
        [WeakRetained performWorkForOperation:v6 profile:v16 databaseAccessibilityAssertion:v8 completion:v12];
      }

      else
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v22 = v6;
          _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to perform work because delegate is nil!", buf, 0xCu);
        }

        v12[2](v12);
      }
    }

    else
    {
      _HKInitializeLogging();
      v17 = HKLogInfrastructure();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *aBlock = 138543618;
        *&aBlock[4] = v6;
        *&aBlock[12] = 2114;
        *&aBlock[14] = v11;
        _os_log_error_impl(&dword_228986000, v17, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to transition to doing work: %{public}@", aBlock, 0x16u);
      }

      v9[2](v9);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

id __103__HDProtectedDataOperation__notifyDelegateToPerformWorkWithDatabase_accessibilityAssertion_completion___block_invoke(uint64_t a1, void *a2)
{
  *(*(a1 + 32) + 32) = 0;
  v2 = [a2 copyWithNewState:7];

  return v2;
}

uint64_t __103__HDProtectedDataOperation__notifyDelegateToPerformWorkWithDatabase_accessibilityAssertion_completion___block_invoke_360(uint64_t a1)
{
  [(HDProtectedDataOperation *)*(a1 + 32) _performStateTransitionWithError:&__block_literal_global_236 block:?];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

id __103__HDProtectedDataOperation__notifyDelegateToPerformWorkWithDatabase_accessibilityAssertion_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [v4 oldState];
  if ((v5 - 1) < 6)
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = NSStringFromHDProtectedDataOperationState([v4 oldState]);
    [v6 hk_assignError:a3 code:126 format:{@"Invalid state at work complete: %@", v7}];

    a3 = 0;
    goto LABEL_8;
  }

  if (v5 == 7)
  {
    v8 = v4;
    v9 = 3;
  }

  else
  {
    if (v5 != 8)
    {
      goto LABEL_8;
    }

    v8 = v4;
    v9 = 4;
  }

  a3 = [v8 copyWithNewState:v9];
LABEL_8:

  return a3;
}

id __74__HDProtectedDataOperation_protectedDataOperationSchedulerProfileIsReady___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [v4 oldState];
  if ((v5 - 3) < 6)
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = NSStringFromHDProtectedDataOperationState([v4 oldState]);
    [v6 hk_assignError:a3 code:126 format:{@"Invalid state at profile ready: %@", v7}];

    v8 = 0;
    goto LABEL_9;
  }

  if (v5 == 2)
  {
    v9 = 4;
    goto LABEL_7;
  }

  if (v5 == 1)
  {
    v9 = 3;
LABEL_7:
    v10 = [v4 copyWithNewState:v9];

    v4 = v10;
  }

  v4 = v4;
  v8 = v4;
LABEL_9:

  return v8;
}

- (void)protectedDataOperationSchedulerProtectedDataIsAvailable:(id)a3
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __84__HDProtectedDataOperation_protectedDataOperationSchedulerProtectedDataIsAvailable___block_invoke;
  v6[3] = &unk_27862E6F0;
  v6[4] = self;
  v4 = v6;
  v5 = v4;
  if (self)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __66__HDProtectedDataOperation__performTransitionToNewStateWithBlock___block_invoke;
    v7[3] = &unk_27862E680;
    v8 = v4;
    [(HDProtectedDataOperation *)self _performStateTransitionWithError:v7 block:?];
  }
}

uint64_t __84__HDProtectedDataOperation_protectedDataOperationSchedulerProtectedDataIsAvailable___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 32))
  {
    return 5;
  }

  else
  {
    return 6;
  }
}

- (id)diagnosticDescription
{
  os_unfair_lock_lock(&self->_lock);
  lock_state = self->_lock_state;
  os_unfair_lock_unlock(&self->_lock);
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromHDProtectedDataOperationState(lock_state);
  v6 = [v4 stringWithFormat:@"<%@ %@>", self, v5];

  return v6;
}

@end