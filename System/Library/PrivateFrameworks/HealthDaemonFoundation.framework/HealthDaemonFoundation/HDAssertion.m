@interface HDAssertion
- (BOOL)_consumeFromBudgetThroughTime:(double)a3;
- (BOOL)_lock_setBudget:(double)a3 error:(id *)a4;
- (HDAssertion)initWithAssertionIdentifier:(id)a3 ownerIdentifier:(id)a4;
- (double)_lock_remainingBudget;
- (double)remainingBudget;
- (id)_lock_cloneWithOwnerIdentifier:(id)a3;
- (id)_lock_description;
- (id)_lock_setBudgetIntervalStartTime:(double)a3;
- (id)cloneWithOwnerIdentifier:(id)a3;
- (id)description;
- (int64_t)_lock_consumeBudgetThroughTime:(double)a3 error:(id *)a4;
- (int64_t)_lock_state;
- (int64_t)_takeWithManager:(id)a3;
- (int64_t)rawState;
- (int64_t)state;
- (void)_invalidateAndRelease:(BOOL)a3;
- (void)_setBudgetIntervalStartTime:(double)a3;
- (void)dealloc;
- (void)setBudget:(double)a3;
- (void)setContextType:(int64_t)a3;
@end

@implementation HDAssertion

- (void)dealloc
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDAssertion.m" lineNumber:72 description:{@"Assertion %@ must be invalidated prior to deallocation", a2}];
}

- (int64_t)rawState
{
  os_unfair_lock_lock(&self->_lock);
  state = self->_state;
  os_unfair_lock_unlock(&self->_lock);
  return state;
}

- (int64_t)_lock_state
{
  os_unfair_lock_assert_owner(&self->_lock);
  [(HDAssertion *)self _lock_remainingBudget];
  if (v3 <= 0.0 && self->_state == 2)
  {
    return 3;
  }

  else
  {
    return self->_state;
  }
}

- (int64_t)state
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HDAssertion *)self _lock_state];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (double)_lock_remainingBudget
{
  os_unfair_lock_assert_owner(&self->_lock);
  remainingBudget = self->_remainingBudget;
  if (self->_budgetIntervalStartTime != 0.0)
  {
    HKMachAbsoluteTimeGetCurrent();
    remainingBudget = remainingBudget - (v4 - self->_budgetIntervalStartTime);
  }

  result = 0.0;
  if (remainingBudget >= 0.0)
  {
    return remainingBudget;
  }

  return result;
}

- (HDAssertion)initWithAssertionIdentifier:(id)a3 ownerIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (![v7 length])
  {
    [HDAssertion initWithAssertionIdentifier:a2 ownerIdentifier:self];
  }

  if (![v8 length])
  {
    [HDAssertion initWithAssertionIdentifier:a2 ownerIdentifier:self];
  }

  v17.receiver = self;
  v17.super_class = HDAssertion;
  v9 = [(HDAssertion *)&v17 init];
  if (v9)
  {
    v10 = [MEMORY[0x277CCAD78] UUID];
    v11 = *(v9 + 6);
    *(v9 + 6) = v10;

    v12 = [v7 copy];
    v13 = *(v9 + 7);
    *(v9 + 7) = v12;

    v14 = [v8 copy];
    v15 = *(v9 + 8);
    *(v9 + 8) = v14;

    *(v9 + 2) = 1;
    *(v9 + 9) = 0;
    *(v9 + 24) = xmmword_2515C0390;
    *(v9 + 10) = 0;
  }

  return v9;
}

- (id)description
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HDAssertion *)self _lock_description];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)cloneWithOwnerIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(HDAssertion *)self _lock_cloneWithOwnerIdentifier:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)setBudget:(double)a3
{
  os_unfair_lock_lock(&self->_lock);
  v7 = 0;
  v5 = [(HDAssertion *)self _lock_setBudget:&v7 error:a3];
  v6 = v7;
  os_unfair_lock_unlock(&self->_lock);
  if (!v5)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unable to set assertion budget: %@", v6}];
  }
}

- (void)setContextType:(int64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_contextType = a3;
  if (HDAssertionTimeForContextType_onceToken != -1)
  {
    [HDAssertion setContextType:];
  }

  v5 = HDAssertionTimeForContextType_mapping;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = HDAssertionTimeForContextType_mapping;
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v10 = [v8 objectForKeyedSubscript:v9];
  }

  else
  {
    v10 = &unk_286385C80;
  }

  [v10 doubleValue];
  v13 = 0;
  v11 = [(HDAssertion *)self _lock_setBudget:&v13 error:?];
  v12 = v13;
  os_unfair_lock_unlock(&self->_lock);
  if (!v11)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unable to set assertion budget: %@", v12}];
  }
}

- (double)remainingBudget
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_budgetIntervalStartTime == 0.0)
  {
    remainingBudget = self->_remainingBudget;
  }

  else
  {
    HKMachAbsoluteTimeGetCurrent();
    remainingBudget = v3 - self->_budgetIntervalStartTime;
  }

  if (remainingBudget >= 0.0)
  {
    v5 = remainingBudget;
  }

  else
  {
    v5 = 0.0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (int64_t)_takeWithManager:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_state == 1)
  {
    self->_state = 2;
    objc_storeWeak(&self->_manager, v4);
    _HKInitializeLogging();
    v5 = HKLogAssertions();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

    if (v6)
    {
      v7 = HKLogAssertions();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [(HDAssertion *)self _takeWithManager:v4, v7];
      }
    }
  }

  state = self->_state;
  os_unfair_lock_unlock(&self->_lock);

  return state;
}

- (void)_invalidateAndRelease:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_lock);
  _HKInitializeLogging();
  v5 = HKLogAssertions();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

  if (v6)
  {
    v7 = HKLogAssertions();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(HDAssertion *)self _invalidateAndRelease:v7];
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_manager);
  if (self->_state == 3)
  {
    self->_remainingBudget = 0.0;
    self->_budgetIntervalStartTime = 0.0;
    objc_storeWeak(&self->_manager, 0);
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_remainingBudget = 0.0;
    self->_budgetIntervalStartTime = 0.0;
    self->_state = 3;
    objc_storeWeak(&self->_manager, 0);
    os_unfair_lock_unlock(&self->_lock);
    if (v3 && WeakRetained)
    {
      [WeakRetained _releaseAssertion:self];
    }
  }
}

- (void)_setBudgetIntervalStartTime:(double)a3
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(HDAssertion *)self _lock_setBudgetIntervalStartTime:a3];
  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unable to set budget consumption interval start: %@", v5}];
  }

  MEMORY[0x2821F96F8]();
}

- (BOOL)_consumeFromBudgetThroughTime:(double)a3
{
  os_unfair_lock_lock(&self->_lock);
  v8 = 0;
  v5 = [(HDAssertion *)self _lock_consumeBudgetThroughTime:&v8 error:a3];
  v6 = v8;
  os_unfair_lock_unlock(&self->_lock);
  if (!v5)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unable to end budget consumption interval: %@", v6}];
  }

  return v5 == 1;
}

- (id)_lock_description
{
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(NSUUID *)self->_UUID UUIDString];
  assertionIdentifier = self->_assertionIdentifier;
  state = self->_state;
  v8 = @"ready";
  if (state == 2)
  {
    v8 = @"active";
  }

  if (state == 3)
  {
    v9 = @"invalidated";
  }

  else
  {
    v9 = v8;
  }

  v10 = v9;
  budget = self->_budget;
  if (budget <= 0.0)
  {
    v12 = &stru_28637B800;
  }

  else
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@" (%.3fs/%.3fs)", *&self->_remainingBudget, *&budget];
  }

  v13 = [v3 stringWithFormat:@"<%@ %@ %@ %@%@: %@>", v4, v5, assertionIdentifier, v10, v12, self->_ownerIdentifier];
  if (budget > 0.0)
  {
  }

  return v13;
}

- (id)_lock_cloneWithOwnerIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  if ([(HDAssertion *)self _lock_state]== 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [[HDAssertion alloc] initWithAssertionIdentifier:self->_assertionIdentifier ownerIdentifier:v4];
    if (self->_budget > 0.0)
    {
      [(HDAssertion *)self _lock_remainingBudget];
      v5->_budget = v6;
      v5->_remainingBudget = v6;
    }
  }

  return v5;
}

- (BOOL)_lock_setBudget:(double)a3 error:(id *)a4
{
  os_unfair_lock_assert_owner(&self->_lock);
  state = self->_state;
  if (state == 1)
  {
    if (a3 > 0.0)
    {
      self->_budget = a3;
      self->_remainingBudget = a3;
      return 1;
    }

    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:{@"Cannot give assertion a non-postive budget of %f", *&a3, v11}];
  }

  else
  {
    v9 = @"active";
    if (state != 2)
    {
      v9 = @"ready";
    }

    if (state == 3)
    {
      v10 = @"invalidated";
    }

    else
    {
      v10 = v9;
    }

    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:{@"Assertion state '%@', but expected '%@'", v10, @"ready"}];
  }

  return 0;
}

- (id)_lock_setBudgetIntervalStartTime:(double)a3
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_state != 2 || self->_budget <= 0.0)
  {
    v6 = 0;
    goto LABEL_10;
  }

  if (self->_budgetIntervalStartTime == 0.0)
  {
    if (a3 > 0.0)
    {
      v6 = 0;
      self->_budgetIntervalStartTime = a3;
      goto LABEL_10;
    }

    [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"Budget interval start (%f) must be positive", *&a3, v8}];
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"Budget interval already started with time (%f) cannot set to (%f)", *&self->_budgetIntervalStartTime, *&a3}];
  }
  v6 = ;
LABEL_10:

  return v6;
}

- (int64_t)_lock_consumeBudgetThroughTime:(double)a3 error:(id *)a4
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_state != 2 || self->_budget <= 0.0)
  {
    return 2;
  }

  budgetIntervalStartTime = self->_budgetIntervalStartTime;
  if (budgetIntervalStartTime == 0.0)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:{@"Cannot end budget time interval (%f) before starting it", *&a3, v10}];
    return 0;
  }

  if (budgetIntervalStartTime > a3)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:{@"Cannot end budget time interval (%f) before interval start (%f)", *&a3, *&budgetIntervalStartTime}];
    return 0;
  }

  self->_budgetIntervalStartTime = 0.0;
  v9 = self->_remainingBudget - (a3 - budgetIntervalStartTime);
  if (v9 < 0.0)
  {
    v9 = 0.0;
  }

  self->_remainingBudget = v9;
  if (v9 <= 0.0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)initWithAssertionIdentifier:(uint64_t)a1 ownerIdentifier:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDAssertion.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"assertionIdentifier.length > 0"}];
}

- (void)initWithAssertionIdentifier:(uint64_t)a1 ownerIdentifier:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDAssertion.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"ownerIdentifier.length > 0"}];
}

- (void)_takeWithManager:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 _lock_description];
  v7 = 138543618;
  v8 = v5;
  v9 = 2114;
  v10 = a2;
  _os_log_debug_impl(&dword_25156C000, a3, OS_LOG_TYPE_DEBUG, "%{public}@: Taken at %{public}@.", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_invalidateAndRelease:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 _lock_description];
  v5 = 138543362;
  v6 = v3;
  _os_log_debug_impl(&dword_25156C000, a2, OS_LOG_TYPE_DEBUG, "%{public}@: Invalidated.", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end