@interface BLTClientReplyTimeoutManager
- (BLTClientReplyTimeoutManager)initWithQueue:(id)a3;
- (BOOL)invalidateClientReplyTimeout:(id)a3;
- (id)addClientReplyTimeoutForBulletin:(id)a3 sectionID:(id)a4 timeout:(double)a5 handler:(id)a6;
- (void)_handleClientReplyTimeout;
- (void)_invalidateClientReplyTimer;
- (void)_sortTimeouts;
- (void)_startClientReplyTimerWithFireDate:(id)a3;
- (void)_startNextClientReplyTimer;
- (void)dealloc;
- (void)extendClientReplyTimeout:(id)a3 additionalTime:(unint64_t)a4;
@end

@implementation BLTClientReplyTimeoutManager

- (BLTClientReplyTimeoutManager)initWithQueue:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = BLTClientReplyTimeoutManager;
  v6 = [(BLTClientReplyTimeoutManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    v8 = [MEMORY[0x277CBEB18] array];
    clientReplyTimeouts = v7->_clientReplyTimeouts;
    v7->_clientReplyTimeouts = v8;

    objc_storeStrong(&v7->_queue, a3);
  }

  return v7;
}

- (void)dealloc
{
  [(BLTClientReplyTimeoutManager *)self _invalidateClientReplyTimer];
  v3.receiver = self;
  v3.super_class = BLTClientReplyTimeoutManager;
  [(BLTClientReplyTimeoutManager *)&v3 dealloc];
}

- (void)_startNextClientReplyTimer
{
  [(BLTClientReplyTimeoutManager *)self _invalidateClientReplyTimer];
  if ([(NSMutableArray *)self->_clientReplyTimeouts count])
  {
    v4 = [(NSMutableArray *)self->_clientReplyTimeouts objectAtIndexedSubscript:0];
    v3 = [v4 timeout];
    [(BLTClientReplyTimeoutManager *)self _startClientReplyTimerWithFireDate:v3];
  }
}

- (void)_startClientReplyTimerWithFireDate:(id)a3
{
  v4 = a3;
  [(BLTClientReplyTimeoutManager *)self _invalidateClientReplyTimer];
  os_unfair_lock_lock(&self->_lock);
  objc_initWeak(&location, self);
  v5 = [objc_alloc(MEMORY[0x277D6C0A8]) initWithIdentifier:@"com.apple.bulletindistributor.clientReplyTimeout"];
  [(BLTClientReplyTimeoutManager *)self setTimer:v5];

  v6 = [(BLTClientReplyTimeoutManager *)self timer];
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__BLTClientReplyTimeoutManager__startClientReplyTimerWithFireDate___block_invoke;
  v8[3] = &unk_278D321F0;
  objc_copyWeak(&v9, &location);
  [v6 scheduleForDate:v4 leewayInterval:queue queue:v8 handler:1.0];

  os_unfair_lock_unlock(&self->_lock);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __67__BLTClientReplyTimeoutManager__startClientReplyTimerWithFireDate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleClientReplyTimeout];
}

- (void)_invalidateClientReplyTimer
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(BLTClientReplyTimeoutManager *)self timer];
  [v3 invalidate];

  [(BLTClientReplyTimeoutManager *)self setTimer:0];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)invalidateClientReplyTimeout:(id)a3
{
  v4 = [(NSMutableArray *)self->_clientReplyTimeouts indexOfObject:a3];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_clientReplyTimeouts removeObjectAtIndex:v4];
    if (!v4)
    {
      [(BLTClientReplyTimeoutManager *)self _startNextClientReplyTimer];
    }
  }

  return v4 != 0x7FFFFFFFFFFFFFFFLL;
}

- (void)extendClientReplyTimeout:(id)a3 additionalTime:(unint64_t)a4
{
  v6 = a3;
  if (v6)
  {
    if (a4)
    {
      v11 = v6;
      if ([(NSMutableArray *)self->_clientReplyTimeouts indexOfObject:v6]!= 0x7FFFFFFFFFFFFFFFLL)
      {
        v7 = v11;
        v8 = [v7 timeout];
        v9 = [v8 dateByAddingTimeInterval:a4];

        [v7 setTimeout:v9];
        [(BLTClientReplyTimeoutManager *)self _sortTimeouts];
        v10 = [(NSMutableArray *)self->_clientReplyTimeouts objectAtIndexedSubscript:0];

        if (v10 == v7)
        {
          [(BLTClientReplyTimeoutManager *)self _startNextClientReplyTimer];
        }
      }
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)_handleClientReplyTimeout
{
  if ([(NSMutableArray *)self->_clientReplyTimeouts count])
  {
    v4 = [(NSMutableArray *)self->_clientReplyTimeouts objectAtIndexedSubscript:0];
    v3 = [v4 timeoutHandler];
    v3[2]();

    [(NSMutableArray *)self->_clientReplyTimeouts removeObjectAtIndex:0];
    [(BLTClientReplyTimeoutManager *)self _startNextClientReplyTimer];
  }
}

- (void)_sortTimeouts
{
  v4 = [(NSMutableArray *)self->_clientReplyTimeouts firstObject];
  [(NSMutableArray *)self->_clientReplyTimeouts sortUsingComparator:&__block_literal_global_13];
  v3 = [(NSMutableArray *)self->_clientReplyTimeouts firstObject];
  if (v4 != v3)
  {
    [(BLTClientReplyTimeoutManager *)self _startNextClientReplyTimer];
  }
}

uint64_t __45__BLTClientReplyTimeoutManager__sortTimeouts__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 timeout];
  v6 = [v4 timeout];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)addClientReplyTimeoutForBulletin:(id)a3 sectionID:(id)a4 timeout:(double)a5 handler:(id)a6
{
  v25 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = MEMORY[0x277CBEAA8];
  v13 = a6;
  v14 = [v12 dateWithTimeIntervalSinceNow:a5];
  v15 = blt_general_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v19 = 138412802;
    v20 = v14;
    v21 = 2112;
    v22 = v10;
    v23 = 2112;
    v24 = v11;
    _os_log_impl(&dword_241FB3000, v15, OS_LOG_TYPE_INFO, "Add client reply timer (%@) for bulletin %@ in section %@", &v19, 0x20u);
  }

  v16 = objc_alloc_init(BLTClientReplyTimeout);
  [(BLTClientReplyTimeout *)v16 setTimeout:v14];
  [(BLTClientReplyTimeout *)v16 setTimeoutHandler:v13];

  [(NSMutableArray *)self->_clientReplyTimeouts addObject:v16];
  if ([(NSMutableArray *)self->_clientReplyTimeouts count]== 1)
  {
    [(BLTClientReplyTimeoutManager *)self _startNextClientReplyTimer];
  }

  else
  {
    [(BLTClientReplyTimeoutManager *)self _sortTimeouts];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

@end