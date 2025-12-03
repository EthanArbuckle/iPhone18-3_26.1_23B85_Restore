@interface SYRetryTimer
- (BOOL)incrementBackoff;
- (SYRetryTimer)initWithInterval:(double)interval backoffFactor:(double)factor maxRetries:(int)retries queue:(id)queue callout:(id)callout;
@end

@implementation SYRetryTimer

- (SYRetryTimer)initWithInterval:(double)interval backoffFactor:(double)factor maxRetries:(int)retries queue:(id)queue callout:(id)callout
{
  queueCopy = queue;
  calloutCopy = callout;
  v27.receiver = self;
  v27.super_class = SYRetryTimer;
  v14 = [(SYRetryTimer *)&v27 init];
  v15 = v14;
  if (v14)
  {
    v14->_interval = interval;
    v14->_backoffFactor = factor;
    v14->_maxRetries = retries;
    v14->_numRetries = 0;
    v16 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, queueCopy);
    timer = v15->_timer;
    v15->_timer = v16;

    v18 = v15->_timer;
    v19 = dispatch_time(0, (interval * 1000000000.0));
    dispatch_source_set_timer(v18, v19, 0xFFFFFFFFFFFFFFFFLL, 0x12A05F200uLL);
    objc_initWeak(&location, v15);
    v20 = v15->_timer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __72__SYRetryTimer_initWithInterval_backoffFactor_maxRetries_queue_callout___block_invoke;
    handler[3] = &unk_1E86CA3B0;
    objc_copyWeak(&v25, &location);
    v24 = calloutCopy;
    dispatch_source_set_event_handler(v20, handler);
    dispatch_resume(v15->_timer);
    v21 = v15;

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v15;
}

void __72__SYRetryTimer_initWithInterval_backoffFactor_maxRetries_queue_callout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    ++WeakRetained[9];
    v3 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    WeakRetained = v3;
  }
}

- (BOOL)incrementBackoff
{
  maxRetries = self->_maxRetries;
  numRetries = self->_numRetries;
  if (numRetries < maxRetries)
  {
    v4 = self->_backoffFactor * self->_interval;
    self->_interval = v4;
    timer = self->_timer;
    v6 = dispatch_time(0, (v4 * 1000000000.0));
    dispatch_source_set_timer(timer, v6, 0xFFFFFFFFFFFFFFFFLL, 0x12A05F200uLL);
  }

  return numRetries < maxRetries;
}

@end