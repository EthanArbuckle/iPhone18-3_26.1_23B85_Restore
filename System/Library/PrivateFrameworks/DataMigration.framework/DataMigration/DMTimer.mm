@interface DMTimer
- (DMTimer)initWithSecondsBeforeFirstFire:(unint64_t)a3 secondsOfLeeway:(unint64_t)a4 fireBlock:(id)a5;
- (void)cancel;
- (void)cancelSynchronously;
- (void)resume;
@end

@implementation DMTimer

- (DMTimer)initWithSecondsBeforeFirstFire:(unint64_t)a3 secondsOfLeeway:(unint64_t)a4 fireBlock:(id)a5
{
  v8 = a5;
  v12.receiver = self;
  v12.super_class = DMTimer;
  v9 = [(DMTimer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(DMTimer *)v9 setTimer:0];
    [(DMTimer *)v10 setFireBlock:v8];
    [(DMTimer *)v10 setSecondsBeforeFirstFire:a3];
    [(DMTimer *)v10 setSecondsOfLeeway:a4];
  }

  return v10;
}

- (void)resume
{
  [(DMTimer *)self timer];
  if (objc_claimAutoreleasedReturnValue())
  {
    [DMTimer resume];
  }

  v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
  [(DMTimer *)self setTimer:v3];

  v4 = [(DMTimer *)self timer];
  v5 = dispatch_time(0, 1000000000 * [(DMTimer *)self secondsBeforeFirstFire]);
  dispatch_source_set_timer(v4, v5, 0xFFFFFFFFFFFFFFFFLL, 1000000000 * [(DMTimer *)self secondsOfLeeway]);

  v6 = [(DMTimer *)self timer];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __17__DMTimer_resume__block_invoke;
  handler[3] = &unk_278855148;
  handler[4] = self;
  dispatch_source_set_event_handler(v6, handler);

  v7 = [(DMTimer *)self timer];
  dispatch_resume(v7);
}

void __17__DMTimer_resume__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fireBlock];
  v3 = v2[2](v2, *(a1 + 32));

  v4 = [*(a1 + 32) timer];
  v5 = dispatch_source_testcancel(v4);

  if (!v5)
  {
    source = [*(a1 + 32) timer];
    v6 = dispatch_time(0, 1000000000 * v3);
    dispatch_source_set_timer(source, v6, 0xFFFFFFFFFFFFFFFFLL, 1000000000 * [*(a1 + 32) secondsOfLeeway]);
  }
}

- (void)cancel
{
  v2 = [(DMTimer *)self timer];
  dispatch_source_cancel(v2);
}

- (void)cancelSynchronously
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {

    [(DMTimer *)self cancel];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __30__DMTimer_cancelSynchronously__block_invoke;
    block[3] = &unk_278855148;
    block[4] = self;
    dispatch_sync(MEMORY[0x277D85CD0], block);
  }
}

@end