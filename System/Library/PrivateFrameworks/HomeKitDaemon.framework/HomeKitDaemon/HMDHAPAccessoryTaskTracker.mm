@interface HMDHAPAccessoryTaskTracker
- (HMDHAPAccessoryTaskTracker)init;
- (id)pendingRemoteTasks;
- (unint64_t)nextTaskIdentifier;
- (void)executeTask:(id)a3;
- (void)removePendingTaskWithIdentifier:(id)a3;
@end

@implementation HMDHAPAccessoryTaskTracker

- (id)pendingRemoteTasks
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  os_unfair_lock_lock_with_options();
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v3 = [(NSMutableDictionary *)self->_pendingTasks allValues];
  v4 = [v3 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v4)
  {
    v5 = *v35;
    v27 = *v35;
    v28 = v3;
    do
    {
      v6 = 0;
      v29 = v4;
      do
      {
        if (*v35 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v34 + 1) + 8 * v6);
        if ([v7 supportsMultiPartResponse])
        {
          v8 = v7;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = v8;
          }

          else
          {
            v9 = 0;
          }

          v10 = v9;

          if (v10)
          {
            [v2 addObject:v10];
          }

          else
          {
            v11 = v8;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v12 = v11;
            }

            else
            {
              v12 = 0;
            }

            v13 = v12;

            v8 = [v13 remoteTask];

            if (v8)
            {
              [v2 addObject:v8];
            }

            else
            {
              v32 = 0u;
              v33 = 0u;
              v30 = 0u;
              v31 = 0u;
              v14 = v11;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v15 = v14;
              }

              else
              {
                v15 = 0;
              }

              v16 = v15;

              v17 = [v16 remoteFallbackTasks];

              v8 = 0;
              v18 = [v17 countByEnumeratingWithState:&v30 objects:v38 count:16];
              if (v18)
              {
                v19 = *v31;
                do
                {
                  for (i = 0; i != v18; ++i)
                  {
                    if (*v31 != v19)
                    {
                      objc_enumerationMutation(v17);
                    }

                    v21 = [*(*(&v30 + 1) + 8 * i) remoteTask];
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v22 = v21;
                    }

                    else
                    {
                      v22 = 0;
                    }

                    v23 = v22;

                    v8 = v23;
                    if (v23)
                    {
                      [v2 addObject:v23];
                    }
                  }

                  v18 = [v17 countByEnumeratingWithState:&v30 objects:v38 count:16];
                }

                while (v18);
              }
            }
          }

          v5 = v27;
          v3 = v28;
          v4 = v29;
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [v3 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v4);
  }

  os_unfair_lock_unlock(&self->_lock);
  v24 = *MEMORY[0x277D85DE8];

  return v2;
}

- (unint64_t)nextTaskIdentifier
{
  os_unfair_lock_lock_with_options();
  currentTaskIdentifier = self->_currentTaskIdentifier;
  self->_currentTaskIdentifier = currentTaskIdentifier + 1;
  os_unfair_lock_unlock(&self->_lock);
  return currentTaskIdentifier;
}

- (void)removePendingTaskWithIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  [(NSMutableDictionary *)self->_pendingTasks removeObjectForKey:v4];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)executeTask:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  pendingTasks = self->_pendingTasks;
  v5 = [v6 identifier];
  [(NSMutableDictionary *)pendingTasks setObject:v6 forKey:v5];

  os_unfair_lock_unlock(&self->_lock);
  [v6 execute];
}

- (HMDHAPAccessoryTaskTracker)init
{
  v6.receiver = self;
  v6.super_class = HMDHAPAccessoryTaskTracker;
  v2 = [(HMDHAPAccessoryTaskTracker *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    pendingTasks = v2->_pendingTasks;
    v2->_pendingTasks = v3;
  }

  return v2;
}

@end