@interface HMDManagedStagedValue
- (HMDManagedStagedValue)initWithValue:(id)a3 commitBlock:(id)a4;
- (id)value;
- (void)_commitIfStaged:(id)a3;
- (void)_handleCommitCompletionWithStagedValue:(id)a3 success:(BOOL)a4 committingValue:(id)a5;
- (void)_resetStagedValue;
- (void)resetAndStagePriorValue;
- (void)stageValue:(id)a3;
@end

@implementation HMDManagedStagedValue

- (void)_handleCommitCompletionWithStagedValue:(id)a3 success:(BOOL)a4 committingValue:(id)a5
{
  v6 = a4;
  v15 = a3;
  v8 = a5;
  os_unfair_lock_lock_with_options();
  v9 = [(HMDManagedStagedValue *)self stagedValue];

  if (v9 != v15)
  {
    goto LABEL_2;
  }

  [(HMDManagedStagedValue *)self setState:0];
  v10 = [v15 value];
  if ([v15 isStaged])
  {
    v11 = HMFEqualObjects();
    v12 = v11;
    if (!v6)
    {
      if (v11)
      {
        v13 = [v15 committedValue];
        [v15 commitValue:v13];

LABEL_13:
LABEL_2:
        os_unfair_lock_unlock(&self->_lock);
        goto LABEL_3;
      }

LABEL_14:
      v14 = [v15 isStaged];

      os_unfair_lock_unlock(&self->_lock);
      if ((v14 & 1) == 0)
      {
        goto LABEL_3;
      }

      goto LABEL_17;
    }
  }

  else
  {
    if (!v6)
    {
      goto LABEL_14;
    }

    v12 = 0;
  }

  [v15 commitValue:v8];
  if (v12)
  {
    goto LABEL_13;
  }

  [v15 stageValue:v10];

  os_unfair_lock_unlock(&self->_lock);
LABEL_17:
  [(HMDManagedStagedValue *)self _commitIfStaged:v15];
LABEL_3:
}

- (void)_commitIfStaged:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(HMDManagedStagedValue *)self stagedValue];

  if (v5 == v4 && [v4 isStaged] && !-[HMDManagedStagedValue state](self, "state"))
  {
    v6 = [v4 value];
    [(HMDManagedStagedValue *)self setState:1];
    os_unfair_lock_unlock(&self->_lock);
    objc_initWeak(&location, self);
    v7 = [(HMDManagedStagedValue *)self commitBlock];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __41__HMDManagedStagedValue__commitIfStaged___block_invoke;
    v9[3] = &unk_27972F0B8;
    objc_copyWeak(&v12, &location);
    v10 = v4;
    v8 = v6;
    v11 = v8;
    (v7)[2](v7, v8, v9);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }
}

void __41__HMDManagedStagedValue__commitIfStaged___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleCommitCompletionWithStagedValue:*(a1 + 32) success:a2 committingValue:*(a1 + 40)];
}

- (void)_resetStagedValue
{
  v3 = objc_alloc(MEMORY[0x277D0F900]);
  v4 = [(HMDManagedStagedValue *)self initialValue];
  v5 = [v3 initWithValue:v4];
  [(HMDManagedStagedValue *)self setStagedValue:v5];

  [(HMDManagedStagedValue *)self setState:0];
}

- (void)resetAndStagePriorValue
{
  os_unfair_lock_lock_with_options();
  v3 = [(HMDManagedStagedValue *)self stagedValue];
  v4 = [v3 value];

  [(HMDManagedStagedValue *)self _resetStagedValue];
  v5 = [(HMDManagedStagedValue *)self stagedValue];
  [v5 stageValue:v4];

  os_unfair_lock_unlock(&self->_lock);
  [(HMDManagedStagedValue *)self _commitIfStaged:v5];
}

- (void)stageValue:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [(HMDManagedStagedValue *)self stagedValue];
  [v4 stageValue:v5];
  os_unfair_lock_unlock(&self->_lock);
  [(HMDManagedStagedValue *)self _commitIfStaged:v4];
}

- (id)value
{
  v2 = [(HMDManagedStagedValue *)self stagedValue];
  v3 = [v2 value];

  return v3;
}

- (HMDManagedStagedValue)initWithValue:(id)a3 commitBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = HMDManagedStagedValue;
  v8 = [(HMDManagedStagedValue *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    v10 = [v6 copy];
    initialValue = v9->_initialValue;
    v9->_initialValue = v10;

    v12 = [v7 copy];
    commitBlock = v9->_commitBlock;
    v9->_commitBlock = v12;

    [(HMDManagedStagedValue *)v9 _resetStagedValue];
  }

  return v9;
}

@end