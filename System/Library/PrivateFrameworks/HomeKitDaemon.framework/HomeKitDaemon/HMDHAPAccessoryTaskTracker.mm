@interface HMDHAPAccessoryTaskTracker
- (HMDHAPAccessoryTaskTracker)init;
- (id)pendingRemoteTasks;
- (unint64_t)nextTaskIdentifier;
- (void)executeTask:(id)task;
- (void)removePendingTaskWithIdentifier:(id)identifier;
@end

@implementation HMDHAPAccessoryTaskTracker

- (id)pendingRemoteTasks
{
  v40 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  os_unfair_lock_lock_with_options();
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  allValues = [(NSMutableDictionary *)self->_pendingTasks allValues];
  v4 = [allValues countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v4)
  {
    v5 = *v35;
    v27 = *v35;
    v28 = allValues;
    do
    {
      v6 = 0;
      v29 = v4;
      do
      {
        if (*v35 != v5)
        {
          objc_enumerationMutation(allValues);
        }

        v7 = *(*(&v34 + 1) + 8 * v6);
        if ([v7 supportsMultiPartResponse])
        {
          remoteTask = v7;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = remoteTask;
          }

          else
          {
            v9 = 0;
          }

          v10 = v9;

          if (v10)
          {
            [array addObject:v10];
          }

          else
          {
            v11 = remoteTask;
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

            remoteTask = [v13 remoteTask];

            if (remoteTask)
            {
              [array addObject:remoteTask];
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

              remoteFallbackTasks = [v16 remoteFallbackTasks];

              remoteTask = 0;
              v18 = [remoteFallbackTasks countByEnumeratingWithState:&v30 objects:v38 count:16];
              if (v18)
              {
                v19 = *v31;
                do
                {
                  for (i = 0; i != v18; ++i)
                  {
                    if (*v31 != v19)
                    {
                      objc_enumerationMutation(remoteFallbackTasks);
                    }

                    remoteTask2 = [*(*(&v30 + 1) + 8 * i) remoteTask];
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v22 = remoteTask2;
                    }

                    else
                    {
                      v22 = 0;
                    }

                    v23 = v22;

                    remoteTask = v23;
                    if (v23)
                    {
                      [array addObject:v23];
                    }
                  }

                  v18 = [remoteFallbackTasks countByEnumeratingWithState:&v30 objects:v38 count:16];
                }

                while (v18);
              }
            }
          }

          v5 = v27;
          allValues = v28;
          v4 = v29;
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [allValues countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v4);
  }

  os_unfair_lock_unlock(&self->_lock);
  v24 = *MEMORY[0x277D85DE8];

  return array;
}

- (unint64_t)nextTaskIdentifier
{
  os_unfair_lock_lock_with_options();
  currentTaskIdentifier = self->_currentTaskIdentifier;
  self->_currentTaskIdentifier = currentTaskIdentifier + 1;
  os_unfair_lock_unlock(&self->_lock);
  return currentTaskIdentifier;
}

- (void)removePendingTaskWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  [(NSMutableDictionary *)self->_pendingTasks removeObjectForKey:identifierCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)executeTask:(id)task
{
  taskCopy = task;
  os_unfair_lock_lock_with_options();
  pendingTasks = self->_pendingTasks;
  identifier = [taskCopy identifier];
  [(NSMutableDictionary *)pendingTasks setObject:taskCopy forKey:identifier];

  os_unfair_lock_unlock(&self->_lock);
  [taskCopy execute];
}

- (HMDHAPAccessoryTaskTracker)init
{
  v6.receiver = self;
  v6.super_class = HMDHAPAccessoryTaskTracker;
  v2 = [(HMDHAPAccessoryTaskTracker *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    pendingTasks = v2->_pendingTasks;
    v2->_pendingTasks = dictionary;
  }

  return v2;
}

@end