@interface HMDManagedStagedValue
- (HMDManagedStagedValue)initWithValue:(id)value commitBlock:(id)block;
- (id)value;
- (void)_commitIfStaged:(id)staged;
- (void)_handleCommitCompletionWithStagedValue:(id)value success:(BOOL)success committingValue:(id)committingValue;
- (void)_resetStagedValue;
- (void)resetAndStagePriorValue;
- (void)stageValue:(id)value;
@end

@implementation HMDManagedStagedValue

- (void)_handleCommitCompletionWithStagedValue:(id)value success:(BOOL)success committingValue:(id)committingValue
{
  successCopy = success;
  valueCopy = value;
  committingValueCopy = committingValue;
  os_unfair_lock_lock_with_options();
  stagedValue = [(HMDManagedStagedValue *)self stagedValue];

  if (stagedValue != valueCopy)
  {
    goto LABEL_2;
  }

  [(HMDManagedStagedValue *)self setState:0];
  value = [valueCopy value];
  if ([valueCopy isStaged])
  {
    v11 = HMFEqualObjects();
    v12 = v11;
    if (!successCopy)
    {
      if (v11)
      {
        committedValue = [valueCopy committedValue];
        [valueCopy commitValue:committedValue];

LABEL_13:
LABEL_2:
        os_unfair_lock_unlock(&self->_lock);
        goto LABEL_3;
      }

LABEL_14:
      isStaged = [valueCopy isStaged];

      os_unfair_lock_unlock(&self->_lock);
      if ((isStaged & 1) == 0)
      {
        goto LABEL_3;
      }

      goto LABEL_17;
    }
  }

  else
  {
    if (!successCopy)
    {
      goto LABEL_14;
    }

    v12 = 0;
  }

  [valueCopy commitValue:committingValueCopy];
  if (v12)
  {
    goto LABEL_13;
  }

  [valueCopy stageValue:value];

  os_unfair_lock_unlock(&self->_lock);
LABEL_17:
  [(HMDManagedStagedValue *)self _commitIfStaged:valueCopy];
LABEL_3:
}

- (void)_commitIfStaged:(id)staged
{
  stagedCopy = staged;
  os_unfair_lock_lock_with_options();
  stagedValue = [(HMDManagedStagedValue *)self stagedValue];

  if (stagedValue == stagedCopy && [stagedCopy isStaged] && !-[HMDManagedStagedValue state](self, "state"))
  {
    value = [stagedCopy value];
    [(HMDManagedStagedValue *)self setState:1];
    os_unfair_lock_unlock(&self->_lock);
    objc_initWeak(&location, self);
    commitBlock = [(HMDManagedStagedValue *)self commitBlock];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __41__HMDManagedStagedValue__commitIfStaged___block_invoke;
    v9[3] = &unk_278681730;
    objc_copyWeak(&v12, &location);
    v10 = stagedCopy;
    v8 = value;
    v11 = v8;
    (commitBlock)[2](commitBlock, v8, v9);

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
  initialValue = [(HMDManagedStagedValue *)self initialValue];
  v5 = [v3 initWithValue:initialValue];
  [(HMDManagedStagedValue *)self setStagedValue:v5];

  [(HMDManagedStagedValue *)self setState:0];
}

- (void)resetAndStagePriorValue
{
  os_unfair_lock_lock_with_options();
  stagedValue = [(HMDManagedStagedValue *)self stagedValue];
  value = [stagedValue value];

  [(HMDManagedStagedValue *)self _resetStagedValue];
  stagedValue2 = [(HMDManagedStagedValue *)self stagedValue];
  [stagedValue2 stageValue:value];

  os_unfair_lock_unlock(&self->_lock);
  [(HMDManagedStagedValue *)self _commitIfStaged:stagedValue2];
}

- (void)stageValue:(id)value
{
  valueCopy = value;
  os_unfair_lock_lock_with_options();
  stagedValue = [(HMDManagedStagedValue *)self stagedValue];
  [stagedValue stageValue:valueCopy];
  os_unfair_lock_unlock(&self->_lock);
  [(HMDManagedStagedValue *)self _commitIfStaged:stagedValue];
}

- (id)value
{
  stagedValue = [(HMDManagedStagedValue *)self stagedValue];
  value = [stagedValue value];

  return value;
}

- (HMDManagedStagedValue)initWithValue:(id)value commitBlock:(id)block
{
  valueCopy = value;
  blockCopy = block;
  v15.receiver = self;
  v15.super_class = HMDManagedStagedValue;
  v8 = [(HMDManagedStagedValue *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    v10 = [valueCopy copy];
    initialValue = v9->_initialValue;
    v9->_initialValue = v10;

    v12 = [blockCopy copy];
    commitBlock = v9->_commitBlock;
    v9->_commitBlock = v12;

    [(HMDManagedStagedValue *)v9 _resetStagedValue];
  }

  return v9;
}

@end