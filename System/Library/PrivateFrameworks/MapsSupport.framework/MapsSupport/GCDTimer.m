@interface GCDTimer
- (GCDTimer)initWithTimeInterval:(double)a3 queue:(id)a4 repeating:(BOOL)a5 block:(id)a6;
- (id)description;
- (void)dealloc;
- (void)invalidate;
@end

@implementation GCDTimer

- (void)dealloc
{
  [(GCDTimer *)self invalidate];
  v3.receiver = self;
  v3.super_class = GCDTimer;
  [(GCDTimer *)&v3 dealloc];
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  source = self->_source;
  if (source)
  {
    dispatch_source_cancel(source);
    v4 = self->_source;
    self->_source = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (GCDTimer)initWithTimeInterval:(double)a3 queue:(id)a4 repeating:(BOOL)a5 block:(id)a6
{
  v7 = a5;
  v10 = a4;
  v11 = a6;
  v26.receiver = self;
  v26.super_class = GCDTimer;
  v12 = [(GCDTimer *)&v26 init];
  v13 = v12;
  if (v12)
  {
    v12->_repeating = v7;
    v14 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v10);
    source = v13->_source;
    v13->_source = v14;

    v13->_lock._os_unfair_lock_opaque = 0;
    v16 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:a3];
    fireDate = v13->_fireDate;
    v13->_fireDate = v16;

    v18 = dispatch_time(0, (a3 * 1000000000.0));
    if (v7)
    {
      v19 = (a3 * 1000000000.0);
    }

    else
    {
      v19 = -1;
    }

    dispatch_source_set_timer(v13->_source, v18, v19, 0);
    objc_initWeak(&location, v13);
    v20 = v13->_source;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __55__GCDTimer_initWithTimeInterval_queue_repeating_block___block_invoke;
    v22[3] = &unk_279865E60;
    objc_copyWeak(v24, &location);
    v24[1] = *&a3;
    v23 = v11;
    dispatch_source_set_event_handler(v20, v22);

    objc_destroyWeak(v24);
    objc_destroyWeak(&location);
  }

  return v13;
}

void __55__GCDTimer_initWithTimeInterval_queue_repeating_block___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    if ([WeakRetained isRepeating])
    {
      v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:*(a1 + 48)];
      v4 = v5[3];
      v5[3] = v3;
    }

    else
    {
      [v5 invalidate];
    }

    (*(*(a1 + 32) + 16))();
    WeakRetained = v5;
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = GCDTimer;
  v4 = [(GCDTimer *)&v9 description];
  if ([(GCDTimer *)self isRepeating])
  {
    v5 = "YES";
  }

  else
  {
    v5 = "NO";
  }

  v6 = [(GCDTimer *)self fireDate];
  v7 = [v3 stringWithFormat:@"%@ <repeating: %s, next fire: %@>", v4, v5, v6];

  return v7;
}

@end