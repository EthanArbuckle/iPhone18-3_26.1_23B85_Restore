@interface MRGroupSessionEligibilityMonitor
- (MRGroupSessionEligibilityMonitor)init;
- (MRGroupSessionEligibilityStatus)status;
- (void)addObserver:(id)observer;
- (void)registerNotifications;
- (void)removeObserver:(id)observer;
- (void)updateStatus:(id)status;
@end

@implementation MRGroupSessionEligibilityMonitor

- (MRGroupSessionEligibilityMonitor)init
{
  v9.receiver = self;
  v9.super_class = MRGroupSessionEligibilityMonitor;
  v2 = [(MRGroupSessionEligibilityMonitor *)&v9 init];
  if (v2)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;

    v2->_lock._os_unfair_lock_opaque = 0;
    v5 = +[MRGroupSessionRequestManager sharedManager];
    eligibilityStatus = [v5 eligibilityStatus];
    status = v2->_status;
    v2->_status = eligibilityStatus;

    [(MRGroupSessionEligibilityMonitor *)v2 registerNotifications];
  }

  return v2;
}

- (void)registerNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_updateStatus_ name:@"MRGroupSessionEligibilityDidChangeNotification" object:0];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  observers = [(MRGroupSessionEligibilityMonitor *)self observers];
  [observers addObject:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  observers = [(MRGroupSessionEligibilityMonitor *)self observers];
  [observers removeObject:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (MRGroupSessionEligibilityStatus)status
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_status;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)updateStatus:(id)status
{
  v21 = *MEMORY[0x1E69E9840];
  userInfo = [status userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"MRGroupSessionEligibilityStatusUserInfoKey"];

  os_unfair_lock_lock(&self->_lock);
  v6 = self->_status;
  objc_storeStrong(&self->_status, v5);
  observers = [(MRGroupSessionEligibilityMonitor *)self observers];
  allObjects = [observers allObjects];

  os_unfair_lock_unlock(&self->_lock);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = allObjects;
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