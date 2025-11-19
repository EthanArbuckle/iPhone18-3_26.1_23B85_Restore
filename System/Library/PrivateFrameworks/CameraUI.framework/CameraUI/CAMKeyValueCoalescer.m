@interface CAMKeyValueCoalescer
- (CAMKeyValueCoalescer)initWithInterval:(double)a3 handler:(id)a4;
- (void)_pushCoalescedValues;
- (void)coalesceValue:(id)a3 forKeyPath:(id)a4;
- (void)flush;
@end

@implementation CAMKeyValueCoalescer

- (void)_pushCoalescedValues
{
  v7 = [(CAMKeyValueCoalescer *)self _handler];
  v3 = [(CAMKeyValueCoalescer *)self _values];
  v4 = [(CAMKeyValueCoalescer *)self _previousValues];
  if (v7)
  {
    v5 = [v3 copy];
    v6 = [v4 copy];
    v7[2](v7, v5, v6);
  }

  [v4 removeAllObjects];
  [v4 addEntriesFromDictionary:v3];
  [v3 removeAllObjects];
}

- (void)flush
{
  v3 = [(CAMKeyValueCoalescer *)self _coalescingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__CAMKeyValueCoalescer_flush__block_invoke;
  block[3] = &unk_1E76F77B0;
  block[4] = self;
  dispatch_async(v3, block);
}

void __29__CAMKeyValueCoalescer_flush__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) coalescingTimer];
  if (v2)
  {
    v3 = v2;
    dispatch_source_cancel(v2);
    [*(a1 + 32) setCoalescingTimer:0];
    [*(a1 + 32) _pushCoalescedValues];
    v2 = v3;
  }
}

- (CAMKeyValueCoalescer)initWithInterval:(double)a3 handler:(id)a4
{
  v6 = a4;
  v20.receiver = self;
  v20.super_class = CAMKeyValueCoalescer;
  v7 = [(CAMKeyValueCoalescer *)&v20 init];
  v8 = v7;
  if (v7)
  {
    v7->__interval = a3;
    v9 = [v6 copy];
    handler = v8->__handler;
    v8->__handler = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    values = v8->__values;
    v8->__values = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    previousValues = v8->__previousValues;
    v8->__previousValues = v13;

    v15 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v16 = dispatch_queue_create("com.apple.camera.key-value-coalescing", v15);
    coalescingQueue = v8->__coalescingQueue;
    v8->__coalescingQueue = v16;

    v18 = v8;
  }

  return v8;
}

- (void)coalesceValue:(id)a3 forKeyPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [(CAMKeyValueCoalescer *)self _coalescingQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__CAMKeyValueCoalescer_coalesceValue_forKeyPath___block_invoke;
    block[3] = &unk_1E76F7938;
    block[4] = self;
    v11 = v6;
    v12 = v8;
    dispatch_async(v9, block);
  }
}

void __49__CAMKeyValueCoalescer_coalesceValue_forKeyPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _values];
  [v2 setObject:*(a1 + 40) forKey:*(a1 + 48)];
  v3 = [*(a1 + 32) coalescingTimer];
  if (!v3)
  {
    v4 = [*(a1 + 32) _coalescingQueue];
    v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v4);

    [*(a1 + 32) _interval];
    v7 = dispatch_time(0, (v6 * 1000000000.0));
    dispatch_source_set_timer(v5, v7, 0xFFFFFFFFFFFFFFFFLL, 0);
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __49__CAMKeyValueCoalescer_coalesceValue_forKeyPath___block_invoke_2;
    v11 = &unk_1E76F7960;
    v12 = *(a1 + 32);
    v3 = v5;
    v13 = v3;
    dispatch_source_set_event_handler(v3, &v8);
    dispatch_resume(v3);
    [*(a1 + 32) setCoalescingTimer:{v3, v8, v9, v10, v11, v12}];
  }
}

uint64_t __49__CAMKeyValueCoalescer_coalesceValue_forKeyPath___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _pushCoalescedValues];
  dispatch_source_cancel(*(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 setCoalescingTimer:0];
}

@end