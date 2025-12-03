@interface NPKLeakyBucket
+ (id)throttleWithEventsTimeInterval:(double)interval description:(id)description;
- (BOOL)addEvent:(id)event;
- (NPKLeakyBucket)initWithEventsTimeInterval:(double)interval maxBucketSize:(unint64_t)size description:(id)description;
- (void)_insideLock_scheduleNextEventLeakFromReferenceDate:(id)date;
- (void)dealloc;
- (void)flush;
@end

@implementation NPKLeakyBucket

- (NPKLeakyBucket)initWithEventsTimeInterval:(double)interval maxBucketSize:(unint64_t)size description:(id)description
{
  descriptionCopy = description;
  v15.receiver = self;
  v15.super_class = NPKLeakyBucket;
  v9 = [(NPKLeakyBucket *)&v15 init];
  if (v9)
  {
    if (interval <= 0.0)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"drop time interval must be longer than 0.0"];
    }

    v9->_lock._os_unfair_lock_opaque = 0;
    v9->_eventsTimeInterval = interval;
    v9->_maxBucketSize = size;
    v10 = [descriptionCopy copy];
    description = v9->_description;
    v9->_description = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    events = v9->_events;
    v9->_events = v12;
  }

  return v9;
}

+ (id)throttleWithEventsTimeInterval:(double)interval description:(id)description
{
  descriptionCopy = description;
  v6 = [objc_alloc(objc_opt_class()) initWithEventsTimeInterval:0 maxBucketSize:descriptionCopy description:interval];

  return v6;
}

- (void)dealloc
{
  [(NSTimer *)self->_eventTimer invalidate];
  v3.receiver = self;
  v3.super_class = NPKLeakyBucket;
  [(NPKLeakyBucket *)&v3 dealloc];
}

- (BOOL)addEvent:(id)event
{
  eventCopy = event;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v9 = __27__NPKLeakyBucket_addEvent___block_invoke;
  v10 = &unk_2799475E8;
  selfCopy = self;
  v5 = eventCopy;
  v12 = v5;
  v13 = &v14;
  v6 = v8;
  os_unfair_lock_lock(&self->_lock);
  v9(v6);

  os_unfair_lock_unlock(&self->_lock);
  LOBYTE(self) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return self;
}

void __27__NPKLeakyBucket_addEvent___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 8) count];
  v3 = *(a1 + 32);
  if (v2 || (v10 = *(v3 + 24)) != 0 && ([v10 timeIntervalSinceNow], v3 = *(a1 + 32), *(v3 + 48) >= -v11))
  {
    if ([*(v3 + 8) count] >= *(*(a1 + 32) + 56))
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
      v19 = pk_General_log();
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

      if (v20)
      {
        v21 = pk_General_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = *(a1 + 32);
          v23 = *(v22 + 56);
          v24 = *(v22 + 16);
          v26 = 134218242;
          v27 = v23;
          v28 = 2112;
          v29 = v24;
          _os_log_impl(&dword_25B300000, v21, OS_LOG_TYPE_DEFAULT, "Notice: Reach size limit of:%lu, dropping income event, bucket:%@", &v26, 0x16u);
        }
      }
    }

    else
    {
      v4 = pk_General_log();
      v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

      if (v5)
      {
        v6 = pk_General_log();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = *(*(a1 + 32) + 16);
          v26 = 138412290;
          v27 = v7;
          _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Added event to bucket: %@", &v26, 0xCu);
        }
      }

      v8 = *(*(a1 + 32) + 8);
      v9 = _Block_copy(*(a1 + 40));
      [v8 addObject:v9];

      if ([*(*(a1 + 32) + 8) count] == 1)
      {
        [*(a1 + 32) _insideLock_scheduleNextEventLeakFromReferenceDate:*(*(a1 + 32) + 24)];
      }
    }
  }

  else
  {
    v12 = pk_General_log();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      v14 = pk_General_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(*(a1 + 32) + 16);
        v26 = 138412290;
        v27 = v15;
        _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: Dropping event immediately bucket: %@", &v26, 0xCu);
      }
    }

    v16 = [MEMORY[0x277CBEAA8] now];
    v17 = *(a1 + 32);
    v18 = *(v17 + 24);
    *(v17 + 24) = v16;

    (*(*(a1 + 40) + 16))();
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)flush
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __23__NPKLeakyBucket_flush__block_invoke;
  v3[3] = &unk_279944F98;
  v3[4] = self;
  os_unfair_lock_lock(&self->_lock);
  __23__NPKLeakyBucket_flush__block_invoke(v3);
  os_unfair_lock_unlock(&self->_lock);
}

uint64_t __23__NPKLeakyBucket_flush__block_invoke(uint64_t result)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(*(result + 32) + 24))
  {
    v1 = result;
    v2 = pk_General_log();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

    if (v3)
    {
      v4 = pk_General_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(*(v1 + 32) + 16);
        v11 = 138412290;
        v12 = v5;
        _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: Flush bucket:%@", &v11, 0xCu);
      }
    }

    v6 = *(v1 + 32);
    v7 = *(v6 + 24);
    *(v6 + 24) = 0;

    [*(*(v1 + 32) + 32) invalidate];
    v8 = *(v1 + 32);
    v9 = *(v8 + 32);
    *(v8 + 32) = 0;

    result = [*(*(v1 + 32) + 8) removeAllObjects];
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_insideLock_scheduleNextEventLeakFromReferenceDate:(id)date
{
  v26 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v5 = self->_eventTimer == 0;
  v6 = pk_General_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    if (v7)
    {
      v10 = pk_General_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [(NSMutableArray *)self->_events count];
        description = self->_description;
        *buf = 134218242;
        v23 = v11;
        v24 = 2112;
        v25 = description;
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Scheduling event, pending events:%lu at bucket: %@", buf, 0x16u);
      }
    }

    objc_initWeak(buf, self);
    v13 = [dateCopy dateByAddingTimeInterval:self->_eventsTimeInterval];
    [v13 timeIntervalSinceNow];
    v15 = v14;
    v16 = MEMORY[0x277CBEBB8];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __69__NPKLeakyBucket__insideLock_scheduleNextEventLeakFromReferenceDate___block_invoke;
    v20[3] = &unk_279948E48;
    objc_copyWeak(&v21, buf);
    v20[4] = self;
    v17 = [v16 scheduledTimerWithTimeInterval:0 repeats:v20 block:v15];
    eventTimer = self->_eventTimer;
    self->_eventTimer = v17;

    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }

  else if (v7)
  {
    v8 = pk_General_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->_description;
      *buf = 138412290;
      v23 = v9;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Warning: events timer exist, we will not schedule a new one at bucket:%@", buf, 0xCu);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __69__NPKLeakyBucket__insideLock_scheduleNextEventLeakFromReferenceDate___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *&WeakRetained[8]._os_unfair_lock_opaque;
    *&WeakRetained[8]._os_unfair_lock_opaque = 0;

    v5 = pk_General_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = pk_General_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [*(*(a1 + 32) + 8) count];
        v9 = *(*(a1 + 32) + 16);
        *buf = 134218242;
        v13 = v8;
        v14 = 2112;
        v15 = v9;
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Scheduled eventfire, pending events:%lu at bucket: %@", buf, 0x16u);
      }
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __69__NPKLeakyBucket__insideLock_scheduleNextEventLeakFromReferenceDate___block_invoke_7;
    v11[3] = &unk_279944F98;
    v11[4] = v3;
    os_unfair_lock_lock(v3 + 10);
    __69__NPKLeakyBucket__insideLock_scheduleNextEventLeakFromReferenceDate___block_invoke_7(v11);
    os_unfair_lock_unlock(v3 + 10);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __69__NPKLeakyBucket__insideLock_scheduleNextEventLeakFromReferenceDate___block_invoke_7(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 8) firstObject];
  if (v5)
  {
    v2 = [MEMORY[0x277CBEAA8] now];
    v3 = *(a1 + 32);
    v4 = *(v3 + 24);
    *(v3 + 24) = v2;

    [*(*(a1 + 32) + 8) removeObjectAtIndex:0];
    v5[2](v5);
  }

  if ([*(*(a1 + 32) + 8) count])
  {
    [*(a1 + 32) _insideLock_scheduleNextEventLeakFromReferenceDate:*(*(a1 + 32) + 24)];
  }
}

@end