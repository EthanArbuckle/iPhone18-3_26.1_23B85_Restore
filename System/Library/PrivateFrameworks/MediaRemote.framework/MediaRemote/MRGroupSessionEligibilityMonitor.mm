@interface MRGroupSessionEligibilityMonitor
- (MRGroupSessionEligibilityMonitor)init;
- (MRGroupSessionEligibilityStatus)status;
- (void)addObserver:(id)a3;
- (void)registerNotifications;
- (void)removeObserver:(id)a3;
- (void)updateStatus:(id)a3;
@end

@implementation MRGroupSessionEligibilityMonitor

- (MRGroupSessionEligibilityMonitor)init
{
  v9.receiver = self;
  v9.super_class = MRGroupSessionEligibilityMonitor;
  v2 = [(MRGroupSessionEligibilityMonitor *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
    v5 = +[MRGroupSessionRequestManager sharedManager];
    v6 = [v5 eligibilityStatus];
    status = v2->_status;
    v2->_status = v6;

    [(MRGroupSessionEligibilityMonitor *)v2 registerNotifications];
  }

  return v2;
}

- (void)registerNotifications
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel_updateStatus_ name:@"MRGroupSessionEligibilityDidChangeNotification" object:0];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(MRGroupSessionEligibilityMonitor *)self observers];
  [v5 addObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(MRGroupSessionEligibilityMonitor *)self observers];
  [v5 removeObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (MRGroupSessionEligibilityStatus)status
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_status;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)updateStatus:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"MRGroupSessionEligibilityStatusUserInfoKey"];

  os_unfair_lock_lock(&self->_lock);
  v6 = self->_status;
  objc_storeStrong(&self->_status, v5);
  v7 = [(MRGroupSessionEligibilityMonitor *)self observers];
  v8 = [v7 allObjects];

  os_unfair_lock_unlock(&self->_lock);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          [v14 groupSessionMonitor:self statusDidChangeFrom:v6 to:v5];
        }

        else if (objc_opt_respondsToSelector())
        {
          [v14 groupSessionMonitor:self statusDidChange:{v5, v16}];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x1E69E9840];
}

@end