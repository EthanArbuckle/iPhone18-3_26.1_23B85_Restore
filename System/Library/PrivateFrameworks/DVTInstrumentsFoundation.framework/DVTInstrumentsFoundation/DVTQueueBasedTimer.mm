@interface DVTQueueBasedTimer
- (DVTQueueBasedTimer)initWithInterval:(double)interval qos:(unsigned int)qos block:(id)block;
- (id).cxx_construct;
- (void)_runBlock;
- (void)pause;
- (void)resume;
- (void)start;
- (void)stop;
@end

@implementation DVTQueueBasedTimer

- (DVTQueueBasedTimer)initWithInterval:(double)interval qos:(unsigned int)qos block:(id)block
{
  v19 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v17.receiver = self;
  v17.super_class = DVTQueueBasedTimer;
  v9 = [(DVTQueueBasedTimer *)&v17 init];
  if (v9)
  {
    snprintf(__str, 0x80uLL, "com.apple.instruments.kperf.timer.%llu", atomic_fetch_add(&qword_27EE84400, 1uLL));
    v10 = dispatch_queue_attr_make_with_qos_class(0, qos, 0);
    v11 = dispatch_queue_create(__str, v10);
    v12 = *(v9 + 1);
    *(v9 + 1) = v11;

    *(v9 + 3) = interval;
    v13 = _Block_copy(blockCopy);
    v14 = *(v9 + 4);
    *(v9 + 4) = v13;

    atomic_store(0, v9 + 10);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)_runBlock
{
  v2 = atomic_load(self + 10);
  if (v2 == 1)
  {
    v4 = (*(*(self + 4) + 16))();
    if (v4)
    {
      if (v4 != 2)
      {
        if (v4 != 1)
        {
          sub_24802F89C();
        }

        v5 = dispatch_time(0xFFFFFFFFFFFFFFFELL, (*(self + 3) * 1000000000.0));
        v6 = *(self + 1);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_247FD0ACC;
        block[3] = &unk_278EF3128;
        block[4] = self;
        dispatch_after(v5, v6, block);
      }
    }

    else
    {
      v7 = *(self + 1);
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = sub_247FD0AD4;
      v8[3] = &unk_278EF3128;
      v8[4] = self;
      dispatch_async(v7, v8);
    }
  }
}

- (void)start
{
  std::mutex::lock((self + 48));
  v3 = *(self + 1);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247FD0B68;
  block[3] = &unk_278EF3128;
  block[4] = self;
  dispatch_async(v3, block);
  std::mutex::unlock((self + 48));
}

- (void)stop
{
  std::mutex::lock((self + 48));
  v3 = *(self + 1);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247FD0C6C;
  block[3] = &unk_278EF3128;
  block[4] = self;
  dispatch_sync(v3, block);
  v4 = *(self + 1);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_247FD0C80;
  v5[3] = &unk_278EF3128;
  v5[4] = self;
  dispatch_sync(v4, v5);
  std::mutex::unlock((self + 48));
}

- (void)pause
{
  std::mutex::lock((self + 48));
  v3 = *(self + 1);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247FD0D2C;
  block[3] = &unk_278EF3128;
  block[4] = self;
  dispatch_sync(v3, block);
  dispatch_sync(*(self + 1), &unk_285A18C20);
  std::mutex::unlock((self + 48));
}

- (void)resume
{
  std::mutex::lock((self + 48));
  v3 = *(self + 1);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247FD0DD0;
  block[3] = &unk_278EF3128;
  block[4] = self;
  dispatch_async(v3, block);
  std::mutex::unlock((self + 48));
}

- (id).cxx_construct
{
  *(self + 10) = 0;
  *(self + 6) = 850045863;
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  *(self + 88) = 0u;
  *(self + 13) = 0;
  return self;
}

@end