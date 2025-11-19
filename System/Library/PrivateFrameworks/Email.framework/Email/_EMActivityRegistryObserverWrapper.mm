@interface _EMActivityRegistryObserverWrapper
- (EMActivityObserver)observer;
- (EMActivityRegistry)registry;
- (NSArray)activities;
- (_EMActivityRegistryObserverWrapper)initWithConnection:(id)a3 registry:(id)a4 observer:(id)a5;
- (id)activityWithObjectID:(id)a3;
- (void)_resetWithCancelable:(id)a3;
- (void)_startObservingIfNecessary;
- (void)activityWithID:(id)a3 finishedWithError:(id)a4;
- (void)activityWithID:(id)a3 setCompletedCount:(id)a4 totalCount:(id)a5;
- (void)activityWithID:(id)a3 setUserInfoObject:(id)a4 forKey:(id)a5;
- (void)dealloc;
- (void)removedActivityWithID:(id)a3;
- (void)setActivities:(id)a3;
- (void)startedActivity:(id)a3;
@end

@implementation _EMActivityRegistryObserverWrapper

- (void)_startObservingIfNecessary
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_observerCancelable)
  {
    v3 = objc_alloc_init(MEMORY[0x1E699B7F8]);
    objc_storeStrong(&self->_observerCancelable, v3);
    v4 = [(EMRemoteConnection *)self->_connection remoteObjectProxy];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __64___EMActivityRegistryObserverWrapper__startObservingIfNecessary__block_invoke;
    v6[3] = &unk_1E826C208;
    v5 = v3;
    v7 = v5;
    v8 = self;
    [v4 registerActivityObserver:self completion:v6];
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

- (_EMActivityRegistryObserverWrapper)initWithConnection:(id)a3 registry:(id)a4 observer:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v24.receiver = self;
  v24.super_class = _EMActivityRegistryObserverWrapper;
  v12 = [(_EMActivityRegistryObserverWrapper *)&v24 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_connection, a3);
    objc_storeWeak(&v13->_registry, v10);
    objc_storeWeak(&v13->_observer, v11);
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

- (void)_resetWithCancelable:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  observerCancelable = self->_observerCancelable;
  if (!v6 || observerCancelable == v6)
  {
    [(EFCancelable *)observerCancelable cancel];
    v5 = self->_observerCancelable;
    self->_observerCancelable = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setActivities:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v33 = a3;
  v35 = [(_EMActivityRegistryObserverWrapper *)self registry];
  v34 = [(_EMActivityRegistryObserverWrapper *)self observer];
  if (v35 && v34)
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
    v7 = v33;
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
          v13 = [v11 objectID];
          v14 = [(NSMutableDictionary *)v12 objectForKeyedSubscript:v13];
          LODWORD(v12) = v14 == 0;

          if (v12)
          {
            v15 = self->_trackedActivities;
            v16 = [v11 objectID];
            [(NSMutableDictionary *)v15 setObject:v11 forKeyedSubscript:v16];
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
          v22 = [v21 objectID];
          v23 = [(NSMutableDictionary *)v4 objectForKeyedSubscript:v22];

          if (v23)
          {
            v24 = [v21 progress];
            v25 = [v21 error];
            if (v24)
            {
              [v23 setCompletedCount:objc_msgSend(v24 totalCount:{"completedUnitCount"), objc_msgSend(v24, "totalUnitCount")}];
            }

            v26 = [v21 finished];

            if (v26)
            {
              [v23 finishWithError:v25];
            }

            v27 = [v21 objectID];
            [(NSMutableDictionary *)v4 setObject:0 forKeyedSubscript:v27];
          }

          else
          {
            [v34 activityRegistry:v35 startedActivity:v21];
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
    v28 = [(NSMutableDictionary *)v4 allValues];
    v29 = [v28 countByEnumeratingWithState:&v36 objects:v48 count:16];
    if (v29)
    {
      v30 = *v37;
      do
      {
        for (k = 0; k != v29; ++k)
        {
          if (*v37 != v30)
          {
            objc_enumerationMutation(v28);
          }

          [*(*(&v36 + 1) + 8 * k) finishWithError:0];
        }

        v29 = [v28 countByEnumeratingWithState:&v36 objects:v48 count:16];
      }

      while (v29);
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (NSArray)activities
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_trackedActivities allValues];
  os_unfair_lock_unlock(&self->_lock);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v5 = v4;

  return v4;
}

- (id)activityWithObjectID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_trackedActivities objectForKeyedSubscript:v4];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)startedActivity:(id)a3
{
  v8 = a3;
  v4 = [(_EMActivityRegistryObserverWrapper *)self registry];
  if (v4)
  {
    os_unfair_lock_lock(&self->_lock);
    trackedActivities = self->_trackedActivities;
    v6 = [v8 objectID];
    [(NSMutableDictionary *)trackedActivities setObject:v8 forKeyedSubscript:v6];

    os_unfair_lock_unlock(&self->_lock);
    v7 = [(_EMActivityRegistryObserverWrapper *)self observer];
    [v7 activityRegistry:v4 startedActivity:v8];
  }
}

- (void)activityWithID:(id)a3 setUserInfoObject:(id)a4 forKey:(id)a5
{
  v10 = a4;
  v8 = a5;
  v9 = [(_EMActivityRegistryObserverWrapper *)self activityWithObjectID:a3];
  [v9 setUserInfoObject:v10 forKey:v8];
}

- (void)activityWithID:(id)a3 setCompletedCount:(id)a4 totalCount:(id)a5
{
  v10 = a4;
  v8 = a5;
  v9 = [(_EMActivityRegistryObserverWrapper *)self activityWithObjectID:a3];
  [v9 setCompletedCount:objc_msgSend(v10 totalCount:{"integerValue"), objc_msgSend(v8, "integerValue")}];
}

- (void)activityWithID:(id)a3 finishedWithError:(id)a4
{
  v7 = a4;
  v6 = [(_EMActivityRegistryObserverWrapper *)self activityWithObjectID:a3];
  [v6 finishWithError:v7];
}

- (void)removedActivityWithID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_trackedActivities setObject:0 forKeyedSubscript:v4];

  os_unfair_lock_unlock(&self->_lock);
}

@end