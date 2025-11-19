@interface MSVTimer
- (MSVTimer)initWithInterval:(double)a3 repeats:(BOOL)a4 queue:(id)a5 block:(id)a6;
- (void)dealloc;
- (void)invalidate;
@end

@implementation MSVTimer

- (void)dealloc
{
  [(MSVTimer *)self invalidate];
  v3.receiver = self;
  v3.super_class = MSVTimer;
  [(MSVTimer *)&v3 dealloc];
}

- (void)invalidate
{
  obj = self;
  objc_sync_enter(obj);
  timerSource = obj->_timerSource;
  if (timerSource)
  {
    dispatch_source_cancel(timerSource);
    v3 = obj->_timerSource;
    obj->_timerSource = 0;
  }

  objc_sync_exit(obj);
}

- (MSVTimer)initWithInterval:(double)a3 repeats:(BOOL)a4 queue:(id)a5 block:(id)a6
{
  v10 = a5;
  v11 = a6;
  v24.receiver = self;
  v24.super_class = MSVTimer;
  v12 = [(MSVTimer *)&v24 init];
  if (v12)
  {
    v13 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v10);
    v14 = *(v12 + 1);
    *(v12 + 1) = v13;

    v15 = a3 * 1000000000.0;
    v16 = dispatch_time(0, v15);
    dispatch_source_set_timer(*(v12 + 1), v16, v15, 0x989680uLL);
    objc_initWeak(&location, v12);
    v17 = *(v12 + 1);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __49__MSVTimer_initWithInterval_repeats_queue_block___block_invoke;
    v19[3] = &unk_1E79817F0;
    v20 = v11;
    v22 = a4;
    objc_copyWeak(&v21, &location);
    dispatch_source_set_event_handler(v17, v19);
    dispatch_resume(*(v12 + 1));
    objc_destroyWeak(&v21);

    objc_destroyWeak(&location);
  }

  return v12;
}

void __49__MSVTimer_initWithInterval_repeats_queue_block___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  if ((*(a1 + 48) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained invalidate];
  }
}

@end