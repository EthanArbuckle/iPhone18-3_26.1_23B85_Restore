@interface _EMActivityRegistryObserverWrapper
- (EMActivityObserver)observer;
- (EMActivityRegistry)registry;
- (NSArray)activities;
- (_EMActivityRegistryObserverWrapper)initWithConnection:(id)connection registry:(id)registry observer:(id)observer;
- (id)activityWithObjectID:(id)d;
- (void)_resetWithCancelable:(id)cancelable;
- (void)_startObservingIfNecessary;
- (void)activityWithID:(id)d finishedWithError:(id)error;
- (void)activityWithID:(id)d setCompletedCount:(id)count totalCount:(id)totalCount;
- (void)activityWithID:(id)d setUserInfoObject:(id)object forKey:(id)key;
- (void)dealloc;
- (void)removedActivityWithID:(id)d;
- (void)setActivities:(id)activities;
- (void)startedActivity:(id)activity;
@end

@implementation _EMActivityRegistryObserverWrapper

- (void)_startObservingIfNecessary
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_observerCancelable)
  {
    v3 = objc_alloc_init(MEMORY[0x1E699B7F8]);
    objc_storeStrong(&self->_observerCancelable, v3);
    remoteObjectProxy = [(EMRemoteConnection *)self->_connection remoteObjectProxy];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __64___EMActivityRegistryObserverWrapper__startObservingIfNecessary__block_invoke;
    v6[3] = &unk_1E826C208;
    v5 = v3;
    v7 = v5;
    selfCopy = self;
    [remoteObjectProxy registerActivityObserver:self completion:v6];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (EMActivityRegistry)registry
{
  WeakRetained = objc_loadWeakRetained(&self->_registry);

  return WeakRetained;
}

- (EMActivityObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (void)dealloc
{
  [(EFCancelable *)self->_observerCancelable cancel];
  v3.receiver = self;
  v3.super_class = _EMActivityRegistryObserverWrapper;
  [(_EMActivityRegistryObserverWrapper *)&v3 dealloc];
}

- (_EMActivityRegistryObserverWrapper)initWithConnection:(id)connection registry:(id)registry observer:(id)observer
{
  connectionCopy = connection;
  registryCopy = registry;
  observerCopy = observer;
  v24.receiver = self;
  v24.super_class = _EMActivityRegistryObserverWrapper;
  v12 = [(_EMActivityRegistryObserverWrapper *)&v24 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_connection, connection);
    objc_storeWeak(&v13->_registry, registryCopy);
    objc_storeWeak(&v13->_observer, observerCopy);
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    trackedActivities = v13->_trackedActivities;
    v13->_trackedActivities = v14;

    v13->_lock._os_unfair_lock_opaque = 0;
    objc_initWeak(&location, v13);
    connection = v13->_connection;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __75___EMActivityRegistryObserverWrapper_initWithConnection_registry_observer___block_invoke;
    v21[3] = &unk_1E826C070;
    objc_copyWeak(&v22, &location);
    [(EMRemoteConnection *)connection addResetHandler:v21];
    v17 = v13->_connection;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __75___EMActivityRegistryObserverWrapper_initWithConnection_registry_observer___block_invoke_2;
    v19[3] = &unk_1E826C070;
    objc_copyWeak(&v20, &location);
    [(EMRemoteConnection *)v17 addRecoveryHandler:v19];
    objc_destroyWeak(&v20);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v13;
}

- (void)_resetWithCancelable:(id)cancelable
{
  cancelableCopy = cancelable;
  os_unfair_lock_lock(&self->_lock);
  observerCancelable = self->_observerCancelable;
  if (!cancelableCopy || observerCancelable == cancelableCopy)
  {
    [(EFCancelable *)observerCancelable cancel];
    v5 = self->_observerCancelable;
    self->_observerCancelable = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setActivities:(id)activities
{
  v51 = *MEMORY[0x1E69E9840];
  activitiesCopy = activities;
  registry = [(_EMActivityRegistryObserverWrapper *)self registry];
  observer = [(_EMActivityRegistryObserverWrapper *)self observer];
  if (registry && observer)
  {
    os_unfair_lock_lock(&self->_lock);
    v4 = self->_trackedActivities;
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    trackedActivities = self->_trackedActivities;
    self->_trackedActivities = v5;

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v7 = activitiesCopy;
    v8 = [v7 countByEnumeratingWithState:&v44 objects:v50 count:16];
    if (v8)
    {
      v9 = *v45;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v45 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v44 + 1) + 8 * i);
          v12 = self->_trackedActivities;
          objectID = [v11 objectID];
          v14 = [(NSMutableDictionary *)v12 objectForKeyedSubscript:objectID];
          LODWORD(v12) = v14 == 0;

          if (v12)
          {
            v15 = self->_trackedActivities;
            objectID2 = [v11 objectID];
            [(NSMutableDictionary *)v15 setObject:v11 forKeyedSubscript:objectID2];
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v44 objects:v50 count:16];
      }

      while (v8);
    }

    os_unfair_lock_unlock(&self->_lock);
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v17 = v7;
    v18 = [v17 countByEnumeratingWithState:&v40 objects:v49 count:16];
    if (v18)
    {
      v19 = *v41;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v41 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v40 + 1) + 8 * j);
          objectID3 = [v21 objectID];
          v23 = [(NSMutableDictionary *)v4 objectForKeyedSubscript:objectID3];

          if (v23)
          {
            progress = [v21 progress];
            error = [v21 error];
            if (progress)
            {
              [v23 setCompletedCount:objc_msgSend(progress totalCount:{"completedUnitCount"), objc_msgSend(progress, "totalUnitCount")}];
            }

            finished = [v21 finished];

            if (finished)
            {
              [v23 finishWithError:error];
            }

            objectID4 = [v21 objectID];
            [(NSMutableDictionary *)v4 setObject:0 forKeyedSubscript:objectID4];
          }

          else
          {
            [observer activityRegistry:registry startedActivity:v21];
          }
        }

        v18 = [v17 countByEnumeratingWithState:&v40 objects:v49 count:16];
      }

      while (v18);
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    allValues = [(NSMutableDictionary *)v4 allValues];
    v29 = [allValues countByEnumeratingWithState:&v36 objects:v48 count:16];
    if (v29)
    {
      v30 = *v37;
      do
      {
        for (k = 0; k != v29; ++k)
        {
          if (*v37 != v30)
          {
            objc_enumerationMutation(allValues);
          }

          [*(*(&v36 + 1) + 8 * k) finishWithError:0];
        }

        v29 = [allValues countByEnumeratingWithState:&v36 objects:v48 count:16];
      }

      while (v29);
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (NSArray)activities
{
  os_unfair_lock_lock(&self->_lock);
  allValues = [(NSMutableDictionary *)self->_trackedActivities allValues];
  os_unfair_lock_unlock(&self->_lock);
  if (allValues)
  {
    v4 = allValues;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v5 = v4;

  return v4;
}

- (id)activityWithObjectID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_trackedActivities objectForKeyedSubscript:dCopy];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)startedActivity:(id)activity
{
  activityCopy = activity;
  registry = [(_EMActivityRegistryObserverWrapper *)self registry];
  if (registry)
  {
    os_unfair_lock_lock(&self->_lock);
    trackedActivities = self->_trackedActivities;
    objectID = [activityCopy objectID];
    [(NSMutableDictionary *)trackedActivities setObject:activityCopy forKeyedSubscript:objectID];

    os_unfair_lock_unlock(&self->_lock);
    observer = [(_EMActivityRegistryObserverWrapper *)self observer];
    [observer activityRegistry:registry startedActivity:activityCopy];
  }
}

- (void)activityWithID:(id)d setUserInfoObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  v9 = [(_EMActivityRegistryObserverWrapper *)self activityWithObjectID:d];
  [v9 setUserInfoObject:objectCopy forKey:keyCopy];
}

- (void)activityWithID:(id)d setCompletedCount:(id)count totalCount:(id)totalCount
{
  countCopy = count;
  totalCountCopy = totalCount;
  v9 = [(_EMActivityRegistryObserverWrapper *)self activityWithObjectID:d];
  [v9 setCompletedCount:objc_msgSend(countCopy totalCount:{"integerValue"), objc_msgSend(totalCountCopy, "integerValue")}];
}

- (void)activityWithID:(id)d finishedWithError:(id)error
{
  errorCopy = error;
  v6 = [(_EMActivityRegistryObserverWrapper *)self activityWithObjectID:d];
  [v6 finishWithError:errorCopy];
}

- (void)removedActivityWithID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_trackedActivities setObject:0 forKeyedSubscript:dCopy];

  os_unfair_lock_unlock(&self->_lock);
}

@end