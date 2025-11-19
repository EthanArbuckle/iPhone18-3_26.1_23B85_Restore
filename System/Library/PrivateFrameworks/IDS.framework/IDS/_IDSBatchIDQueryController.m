@interface _IDSBatchIDQueryController
- (BOOL)underLimit;
- (_IDSBatchIDQueryController)initWithService:(id)a3 delegate:(id)a4 queue:(id)a5 parent:(id)a6;
- (void)_calloutToDelegateWithResult:(id)a3 error:(id)a4;
- (void)_invalidateNextQueryTimer;
- (void)_nextQuery:(id)a3;
- (void)_scheduleNextQuery:(double)a3;
- (void)dealloc;
- (void)invalidate;
- (void)setDestinations:(id)a3;
@end

@implementation _IDSBatchIDQueryController

- (_IDSBatchIDQueryController)initWithService:(id)a3 delegate:(id)a4 queue:(id)a5 parent:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!_IDSRunningInDaemon())
  {
    v39.receiver = self;
    v39.super_class = _IDSBatchIDQueryController;
    self = [(_IDSBatchIDQueryController *)&v39 init];
    if (!self)
    {
      goto LABEL_24;
    }

    v17 = [v11 length];
    if (v17)
    {
      if (v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v32 = +[IDSLogging IDQuery];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *v38 = 0;
        _os_log_impl(&dword_1959FF000, v32, OS_LOG_TYPE_DEFAULT, "No service name, bailing...", v38, 2u);
      }

      if (v12)
      {
LABEL_9:
        if (v13)
        {
          if (!v17)
          {
            goto LABEL_5;
          }

          objc_storeStrong(&self->_serviceName, a3);
          v18 = [MEMORY[0x1E6995700] weakRefWithObject:v12];
          delegate = self->_delegate;
          self->_delegate = v18;

          objc_storeStrong(&self->_queue, a5);
          v20 = [MEMORY[0x1E6995700] weakRefWithObject:v14];
          parent = self->_parent;
          self->_parent = v20;

          v22 = [MEMORY[0x1E696AEC0] stringGUID];
          listenerID = self->_listenerID;
          self->_listenerID = v22;

          destinations = self->_destinations;
          self->_destinations = 0;

          destinationsToQuery = self->_destinationsToQuery;
          self->_destinationsToQuery = 0;

          self->_destinationsToQuerylock._os_unfair_lock_opaque = 0;
          nextQueryTimer = self->_nextQueryTimer;
          self->_nextQueryTimer = 0;

          timeOfDeath = self->_timeOfDeath;
          self->_timeOfDeath = 0;

          v28 = objc_alloc(MEMORY[0x1E69A53B0]);
          v29 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:1];
          v30 = [v29 objectForKey:@"batch-query-limit"];

          if (v30 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v31 = [v30 integerValue];
          }

          else
          {
            v31 = 60;
          }

          v34 = [v28 initWithLimit:v31 timeLimit:sub_195B20DDC()];
          rateLimiter = self->_rateLimiter;
          self->_rateLimiter = v34;

          self->_numberOfQueriesDone = 0;
          self->_isDead = 0;
          v36 = +[IDSIDQueryController sharedInstance];
          [v36 addDelegate:self forService:self->_serviceName listenerID:self->_listenerID queue:MEMORY[0x1E69E96A0]];

LABEL_24:
          self = self;
          v16 = self;
          goto LABEL_25;
        }

LABEL_20:
        v15 = +[IDSLogging IDQuery];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *v38 = 0;
          _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "No queue, bailing...", v38, 2u);
        }

        goto LABEL_4;
      }
    }

    v33 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *v38 = 0;
      _os_log_impl(&dword_1959FF000, v33, OS_LOG_TYPE_DEFAULT, "No delegate, bailing...", v38, 2u);
    }

    if (v13)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

  v15 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_195B268D8(self, v15);
  }

LABEL_4:

LABEL_5:
  v16 = 0;
LABEL_25:

  return v16;
}

- (void)dealloc
{
  [(_IDSBatchIDQueryController *)self _invalidateNextQueryTimer];
  v3.receiver = self;
  v3.super_class = _IDSBatchIDQueryController;
  [(_IDSBatchIDQueryController *)&v3 dealloc];
}

- (void)invalidate
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = self;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "Client request to invalidate: %@", &v6, 0xCu);
  }

  [(_IDSBatchIDQueryController *)self _invalidateNextQueryTimer];
  v4 = +[IDSIDQueryController sharedInstance];
  [v4 removeDelegate:self forService:self->_serviceName listenerID:self->_listenerID];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_scheduleNextQuery:(double)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = a3;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "Scheduling next batch in %f", &v9, 0xCu);
  }

  v6 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__nextQuery_ selector:0 userInfo:0 repeats:a3];
  nextQueryTimer = self->_nextQueryTimer;
  self->_nextQueryTimer = v6;

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setDestinations:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = v4;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "setDestinations %@", buf, 0xCu);
  }

  if (self->_isDead && sub_195B213D0())
  {
    v6 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "We're dead, bailing";
LABEL_11:
      _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 2u);
      goto LABEL_21;
    }

    goto LABEL_21;
  }

  if (self->_destinations == v4 || [(NSArray *)v4 isEqualToArray:?])
  {
    v6 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "Destinations are the same, bailing";
      goto LABEL_11;
    }

LABEL_21:

    goto LABEL_22;
  }

  v8 = [(NSArray *)v4 mutableCopy];
  destinations = self->_destinations;
  self->_destinations = v8;

  [(_IDSBatchIDQueryController *)self _invalidateNextQueryTimer];
  if ([(NSArray *)self->_destinations count])
  {
    timeOfDeath = self->_timeOfDeath;
    v11 = timeOfDeath != 0;
    if (!timeOfDeath)
    {
      v12 = objc_alloc(MEMORY[0x1E695DF00]);
      v13 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:1];
      v14 = [v13 objectForKey:@"batch-query-time-to-live"];

      if (v14)
      {
        [v14 doubleValue];
        v16 = v15;
      }

      else
      {
        v16 = 120.0;
      }

      v17 = [v12 initWithTimeIntervalSinceNow:v16];
      v18 = self->_timeOfDeath;
      self->_timeOfDeath = v17;

      v19 = +[IDSLogging IDQuery];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = self->_timeOfDeath;
        *buf = 138412290;
        v32 = v20;
        _os_log_impl(&dword_1959FF000, v19, OS_LOG_TYPE_DEFAULT, "Setting time of death to %@", buf, 0xCu);
      }
    }

    os_unfair_lock_lock(&self->_destinationsToQuerylock);
    destinationsToQuery = self->_destinationsToQuery;
    self->_destinationsToQuery = 0;

    os_unfair_lock_unlock(&self->_destinationsToQuerylock);
    v22 = [(NSArray *)v4 copy];
    v23 = +[IDSIDQueryController sharedInstance];
    serviceName = self->_serviceName;
    listenerID = self->_listenerID;
    v25 = self->_destinations;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = sub_195B21458;
    v28[3] = &unk_1E7443600;
    v28[4] = self;
    v29 = v22;
    v30 = v11;
    v6 = v22;
    [v23 currentIDStatusForDestinations:v25 service:serviceName listenerID:listenerID queue:MEMORY[0x1E69E96A0] completionBlock:v28];

    goto LABEL_21;
  }

LABEL_22:

  v27 = *MEMORY[0x1E69E9840];
}

- (void)_nextQuery:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = 0x1E743D000uLL;
  v5 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v43 = self;
    _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, " * Next query timer hit: %@", buf, 0xCu);
  }

  [(_IDSBatchIDQueryController *)self _invalidateNextQueryTimer];
  v6 = [MEMORY[0x1E695DF00] date];
  [v6 timeIntervalSinceDate:self->_timeOfDeath];
  if (v7 > 0.0 && sub_195B213D0())
  {
    v8 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v43 = self;
      _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "We're dead, not querying: %@", buf, 0xCu);
    }

    self->_isDead = 1;
    goto LABEL_43;
  }

  v9 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:1];
  v10 = [v9 objectForKey:@"batch-query-size"];

  if (v10)
  {
    v11 = [v10 intValue];
  }

  else
  {
    v11 = 15;
  }

  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  os_unfair_lock_lock(&self->_destinationsToQuerylock);
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v13 = self->_destinationsToQuery;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (!v14)
  {
    goto LABEL_30;
  }

  v15 = v14;
  v16 = 0;
  v17 = *v39;
  v36 = v6;
  v35 = v11;
  while (2)
  {
    v18 = 0;
    if (v16 <= v11)
    {
      v19 = v11;
    }

    else
    {
      v19 = v16;
    }

    v20 = (v19 - v16);
    v16 += v15;
    do
    {
      if (*v39 != v17)
      {
        objc_enumerationMutation(v13);
      }

      v21 = *(*(&v38 + 1) + 8 * v18);
      if (![(_IDSBatchIDQueryController *)self underLimit])
      {
        v4 = 0x1E743D000uLL;
        v22 = +[IDSLogging IDQuery];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v43 = self;
          v23 = "We've reached the max number of queries, not adding anymore: %@";
LABEL_28:
          _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, v23, buf, 0xCu);
        }

LABEL_29:
        v6 = v36;

        goto LABEL_30;
      }

      if (v20 == v18)
      {
        v4 = 0x1E743D000uLL;
        v22 = +[IDSLogging IDQuery];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v43 = self;
          v23 = "We've reached the max number of queries for this batch, not adding anymore: %@";
          goto LABEL_28;
        }

        goto LABEL_29;
      }

      [v12 addObject:v21];
      [self->_rateLimiter noteItem:@"TTLItem"];
      ++self->_numberOfQueriesDone;
      ++v18;
    }

    while (v15 != v18);
    v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v38 objects:v46 count:16];
    v6 = v36;
    v4 = 0x1E743D000;
    v11 = v35;
    if (v15)
    {
      continue;
    }

    break;
  }

LABEL_30:

  os_unfair_lock_unlock(&self->_destinationsToQuerylock);
  if ([v12 count])
  {
    v24 = +[IDSIDQueryController sharedInstance];
    serviceName = self->_serviceName;
    listenerID = self->_listenerID;
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = sub_195B21CE0;
    v37[3] = &unk_1E7443628;
    v37[4] = self;
    [v24 refreshIDStatusForDestinations:v12 service:serviceName listenerID:listenerID queue:MEMORY[0x1E69E96A0] errorCompletionBlock:v37];

    os_unfair_lock_lock(&self->_destinationsToQuerylock);
    [(NSMutableArray *)self->_destinationsToQuery removeObjectsInArray:v12];
    os_unfair_lock_unlock(&self->_destinationsToQuerylock);
    if ([(_IDSBatchIDQueryController *)self underLimit])
    {
      [(_IDSBatchIDQueryController *)self _scheduleNextQuery:sub_195B21750()];
    }

    else
    {
      v27 = sub_195B213D0();
      v28 = [*(v4 + 1160) IDQuery];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = @"YES";
        if (v27)
        {
          v29 = @"NO";
        }

        *buf = 138412546;
        v43 = v29;
        v44 = 2112;
        v45 = self;
        _os_log_impl(&dword_1959FF000, v28, OS_LOG_TYPE_DEFAULT, "We've reached the max number of queries, possibly deferring queries: %@ %@", buf, 0x16u);
      }

      if ((v27 & 1) == 0)
      {
        [self->_rateLimiter timeToUnderLimit:@"TTLItem"];
        v31 = v30;
        v32 = sub_195B20DDC();
        if (v31 >= v32)
        {
          v32 = v31;
        }

        [(_IDSBatchIDQueryController *)self _scheduleNextQuery:v32];
      }

      v33 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IDSIDQueryControllerErrorDomain" code:-4000 userInfo:0];
      [(_IDSBatchIDQueryController *)self _calloutToDelegateWithResult:0 error:v33];
    }
  }

LABEL_43:
  v34 = *MEMORY[0x1E69E9840];
}

- (void)_invalidateNextQueryTimer
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = self;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating next query timer: %@", &v6, 0xCu);
  }

  [(NSTimer *)self->_nextQueryTimer invalidate];
  nextQueryTimer = self->_nextQueryTimer;
  self->_nextQueryTimer = 0;

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_calloutToDelegateWithResult:(id)a3 error:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(CUTWeakReference *)self->_delegate object];
  v9 = v8;
  if (v8 && (v10 = self->_queue) != 0)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_195B22048;
    v14[3] = &unk_1E743EEE8;
    v15 = v8;
    v16 = v6;
    v17 = self;
    v18 = v7;
    dispatch_async(v10, v14);

    v11 = v15;
  }

  else
  {
    v11 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      queue = self->_queue;
      *buf = 134218240;
      v20 = v9;
      v21 = 2048;
      v22 = queue;
      _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "No delegate %p or queue %p", buf, 0x16u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)underLimit
{
  if (sub_195B213D0())
  {
    numberOfQueriesDone = self->_numberOfQueriesDone;
    v4 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:1];
    v5 = [v4 objectForKey:@"batch-query-max"];

    if (v5)
    {
      v6 = [v5 intValue];
    }

    else
    {
      v6 = 60;
    }

    return numberOfQueriesDone < v6;
  }

  else
  {
    rateLimiter = self->_rateLimiter;

    return MEMORY[0x1EEE66B58](rateLimiter, sel_underLimitForItem_);
  }
}

@end