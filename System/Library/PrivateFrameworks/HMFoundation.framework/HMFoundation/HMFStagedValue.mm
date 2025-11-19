@interface HMFStagedValue
+ (id)logCategory;
- (BOOL)isStaged;
- (HMFStagedValue)initWithValue:(id)a3;
- (HMFStagedValueDelegate)delegate;
- (id)committedValue;
- (id)value;
- (void)_commitValue:(id)a3;
- (void)_stageValue:(id)a3 withTimer:(id)a4;
- (void)_unstageValue;
- (void)commitValue:(id)a3;
- (void)setCommittedValue:(id)a3;
- (void)stageValue:(id)a3;
- (void)stageValue:(id)a3 withTimeout:(double)a4;
- (void)timerDidFire:(id)a3;
@end

@implementation HMFStagedValue

- (HMFStagedValue)initWithValue:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = HMFStagedValue;
  v6 = [(HMFStagedValue *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_committedValue, a3);
    v7->_isStaged = 0;
    timerFactory = v7->_timerFactory;
    v7->_timerFactory = &__block_literal_global_0;
  }

  return v7;
}

HMFTimer *__32__HMFStagedValue_initWithValue___block_invoke(double a1)
{
  v1 = [[HMFTimer alloc] initWithTimeInterval:2 options:a1];

  return v1;
}

- (void)stageValue:(id)a3 withTimeout:(double)a4
{
  v7 = a3;
  os_unfair_lock_lock_with_options();
  v6 = (*(self->_timerFactory + 2))(a4);
  [(HMFStagedValue *)self _stageValue:v7 withTimer:v6];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)stageValue:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  [(HMFStagedValue *)self _stageValue:v4 withTimer:0];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)commitValue:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  [(HMFStagedValue *)self _commitValue:v4];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)_stageValue:(id)a3 withTimer:(id)a4
{
  v9 = a3;
  v7 = a4;
  if (HMFEqualObjects(v9, self->_committedValue))
  {
    [(HMFStagedValue *)self _unstageValue];
  }

  else
  {
    self->_isStaged = 1;
    objc_storeStrong(&self->_stagedValue, a3);
    objc_storeStrong(&self->_timer, a4);
    timer = self->_timer;
    if (timer)
    {
      [(HMFTimer *)timer setDelegate:self];
      [(HMFTimer *)self->_timer resume];
    }
  }
}

- (void)_unstageValue
{
  self->_isStaged = 0;
  stagedValue = self->_stagedValue;
  self->_stagedValue = 0;

  timer = self->_timer;
  self->_timer = 0;
}

- (void)_commitValue:(id)a3
{
  objc_storeStrong(&self->_committedValue, a3);

  [(HMFStagedValue *)self _unstageValue];
}

- (id)value
{
  os_unfair_lock_lock_with_options();
  v3 = 32;
  if (self->_isStaged)
  {
    v3 = 16;
  }

  v4 = *(&self->super.isa + v3);
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (id)committedValue
{
  os_unfair_lock_lock_with_options();
  v3 = self->_committedValue;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)isStaged
{
  os_unfair_lock_lock_with_options();
  isStaged = self->_isStaged;
  os_unfair_lock_unlock(&self->_lock);
  return isStaged;
}

- (void)setCommittedValue:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  committedValue = self->_committedValue;
  self->_committedValue = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)timerDidFire:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  if (self->_isStaged && [(HMFTimer *)self->_timer isEqual:v4])
  {
    v5 = self->_committedValue;
    v6 = self->_stagedValue;
    [(HMFStagedValue *)self _unstageValue];
    os_unfair_lock_unlock(&self->_lock);
    v7 = [(HMFStagedValue *)self delegate];
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier(v9);
      v13 = 138544130;
      v14 = v11;
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v5;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_22ADEC000, v10, OS_LOG_TYPE_INFO, "%{public}@Notify of expired value: %@ committed value: %@ delegate: %@", &v13, 0x2Au);
    }

    objc_autoreleasePoolPop(v8);
    if (v7)
    {
      if (objc_opt_respondsToSelector())
      {
        [v7 stagedValue:v9 didExpireValue:v6];
      }
    }

    else
    {
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)logCategory
{
  if (_MergedGlobals_53 != -1)
  {
    dispatch_once(&_MergedGlobals_53, &__block_literal_global_5);
  }

  v3 = qword_280AFC558;

  return v3;
}

uint64_t __29__HMFStagedValue_logCategory__block_invoke()
{
  qword_280AFC558 = HMFCreateOSLogHandle(@"StagedValue", @"com.apple.HMFoundation");

  return MEMORY[0x2821F96F8]();
}

- (HMFStagedValueDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end