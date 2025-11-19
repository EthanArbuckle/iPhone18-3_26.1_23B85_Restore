@interface DTGPUAPSCounterSource
- (BOOL)request:(unint64_t)a3 vendorFeatures:(id)a4;
- (DTGPUAPSCounterSource)initWithSource:(id)a3 sourceGroup:(id)a4 selects:(id)a5 sourceIndex:(unsigned int)a6 profile:(unint64_t)a7;
- (id).cxx_construct;
- (void)dealloc;
- (void)pullAndDrainCounters;
- (void)sampleAPS:(id)a3;
- (void)sampleCounters:(unint64_t)a3 callback:(id)a4;
- (void)stop;
@end

@implementation DTGPUAPSCounterSource

- (DTGPUAPSCounterSource)initWithSource:(id)a3 sourceGroup:(id)a4 selects:(id)a5 sourceIndex:(unsigned int)a6 profile:(unint64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v21.receiver = self;
  v21.super_class = DTGPUAPSCounterSource;
  v16 = [(DTGPUAPSCounterSource *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_source, a3);
    objc_storeStrong(&v17->_sourceGroup, a4);
    objc_storeStrong(&v17->_selects, a5);
    v17->_sourceIndex = a6;
    v18 = objc_alloc_init(DTGPUAPSConfig);
    apsConfig = v17->_apsConfig;
    v17->_apsConfig = v18;

    v17->_profile = a7;
  }

  return v17;
}

- (void)dealloc
{
  [(DTGPUAPSCounterSource *)self stop];
  v3.receiver = self;
  v3.super_class = DTGPUAPSCounterSource;
  [(DTGPUAPSCounterSource *)&v3 dealloc];
}

- (BOOL)request:(unint64_t)a3 vendorFeatures:(id)a4
{
  v33[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (self->_source && self->_sourceGroup)
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithArray:self->_selects];
    v7 = [v5 objectForKeyedSubscript:@"ShaderProfiler"];
    v8 = [v7 BOOLValue];

    if (v8)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v9 = 2;
        _os_log_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Enabled Clique Tracing", buf, 2u);
      }

      else
      {
        v9 = 2;
      }
    }

    else
    {
      v9 = 0;
    }

    [(DTGPUAPSConfig *)self->_apsConfig setCliqueTraceLevel:v9];
    [(DTGPUAPSConfig *)self->_apsConfig setNRingBuffers:[(GPURawCounterSource *)self->_source ringBufferNum]];
    v11 = [v5 objectForKeyedSubscript:@"APSConfig"];
    [(DTGPUAPSConfig *)self->_apsConfig readConfig:v11];
    if (self->_profile == 14)
    {
      [(DTGPUAPSConfig *)self->_apsConfig setCountPeriod:4096];
    }

    v12 = MEMORY[0x277D0AF30];
    v13 = [(DTGPUAPSConfig *)self->_apsConfig grcTrigger];
    v14 = [v12 selectWithName:@"KickAndStateTracing" options:v13];
    v33[0] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];

    if (([(GPURawCounterSource *)self->_source requestTriggers:v15 firstErrorIndex:0]& 1) != 0 && ([(DTGPUAPSConfig *)self->_apsConfig grcOptions], v16 = objc_claimAutoreleasedReturnValue(), [(GPURawCounterSource *)self->_source setOptions:v16], v16, *buf = 0, ([(GPURawCounterSource *)self->_source requestCounters:v6 firstErrorIndex:buf]& 1) != 0) && [(GPURawCounterSource *)self->_source setEnabled:1])
    {
      sub_247FCBB10(&self->_counterBuffers.__begin_, [(GPURawCounterSource *)self->_source ringBufferNum]);
      v17 = objc_opt_new();
      pullLock = self->_pullLock;
      self->_pullLock = v17;

      objc_initWeak(&location, self);
      v19 = dispatch_queue_create("com.apple.gpu.rawcounters.pull", 0);
      pullQueue = self->_pullQueue;
      self->_pullQueue = v19;

      v21 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_pullQueue);
      pullTimer = self->_pullTimer;
      p_pullTimer = &self->_pullTimer;
      *p_pullTimer = v21;

      v24 = *p_pullTimer;
      v25 = dispatch_time(0, 50000000);
      dispatch_source_set_timer(v24, v25, 0x2FAF080uLL, 0x2FAF080uLL);
      v26 = *p_pullTimer;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = sub_247FF15E4;
      v29[3] = &unk_278EF30D8;
      objc_copyWeak(&v30, &location);
      dispatch_source_set_event_handler(v26, v29);
      objc_destroyWeak(&v30);
      objc_destroyWeak(&location);
      v10 = 1;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)stop
{
  [(NSLock *)self->_pullLock lock];
  pullTimer = self->_pullTimer;
  if (pullTimer)
  {
    dispatch_source_cancel(pullTimer);
    v4 = self->_pullTimer;
    self->_pullTimer = 0;

    pullQueue = self->_pullQueue;
    self->_pullQueue = 0;
  }

  [(NSLock *)self->_pullLock unlock];
  [(DTGPUAPSCounterSource *)self pullAndDrainCounters];
  [(GPURawCounterSource *)self->_source setEnabled:0];
  pullLock = self->_pullLock;
  self->_pullLock = 0;
}

- (void)pullAndDrainCounters
{
  if (self->_pullQueue && self->_pullTimer && [(GPURawCounterSource *)self->_source ringBufferNum])
  {
    v3 = 0;
    v4 = 0;
    do
    {
      __src = 0;
      memset(v12, 0, sizeof(v12));
      if ([(GPURawCounterSource *)self->_source ringBufferInfoAtIndex:v4 base:&__src size:&v12[2] dataOffset:&v12[1] dataSize:v12]&& 0xAAAAAAAAAAAAAAABLL * ((self->_counterBuffers.__end_ - self->_counterBuffers.__begin_) >> 3) > v4)
      {
        [(NSLock *)self->_pullLock lock];
        v5 = v12[0];
        if (v12[0])
        {
          v6 = (self->_counterBuffers.__begin_ + v3);
          v7 = v6[1] - *v6;
          if (v7 >= v7 + v12[0])
          {
            if (v7 > v7 + v12[0])
            {
              v6[1] = *v6 + v7 + v12[0];
            }
          }

          else
          {
            sub_247FCD770((self->_counterBuffers.__begin_ + v3), v12[0]);
            v5 = v12[0];
          }

          v8 = *v6;
          if (v5 + v12[1] >= v12[2])
          {
            memcpy((v8 + v7), __src + v12[1], (v12[2] - v12[1]));
            v11 = __src;
            v9 = (v12[1] - v12[2] + v12[0]);
            v10 = (*v6 + (v12[2] - v12[1]) + v7);
          }

          else
          {
            v9 = v5;
            v10 = (v8 + v7);
            v11 = __src + v12[1];
          }

          memcpy(v10, v11, v9);
        }

        [(GPURawCounterSource *)self->_source drainRingBufferAtIndex:v4 dataSize:v12[0]];
        [(NSLock *)self->_pullLock unlock];
      }

      ++v4;
      v3 += 24;
    }

    while (v4 < [(GPURawCounterSource *)self->_source ringBufferNum]);
  }
}

- (void)sampleCounters:(unint64_t)a3 callback:(id)a4
{
  v5 = a4;
  [(NSLock *)self->_pullLock lock];
  memset(v12, 0, sizeof(v12));
  sub_247FCD8A8(v12, self->_counterBuffers.__begin_, self->_counterBuffers.__end_, 0xAAAAAAAAAAAAAAABLL * ((self->_counterBuffers.__end_ - self->_counterBuffers.__begin_) >> 3));
  begin = self->_counterBuffers.__begin_;
  end = self->_counterBuffers.__end_;
  while (begin != end)
  {
    begin[1] = *begin;
    begin += 3;
  }

  [(NSLock *)self->_pullLock unlock];
  v8 = 0;
  for (i = 0; i < [(GPURawCounterSource *)self->_source ringBufferNum]; ++i)
  {
    v10 = (*(v12[0] + v8 + 8) - *(v12[0] + v8)) >> 3;
    sourceIndex = self->_sourceIndex;
    v5[2](v5);
    v8 += 24;
  }

  v13 = v12;
  sub_247FCDB30(&v13);
}

- (void)sampleAPS:(id)a3
{
  v4 = a3;
  [(NSLock *)self->_pullLock lock];
  memset(v9, 0, sizeof(v9));
  sub_247FCD8A8(v9, self->_counterBuffers.__begin_, self->_counterBuffers.__end_, 0xAAAAAAAAAAAAAAABLL * ((self->_counterBuffers.__end_ - self->_counterBuffers.__begin_) >> 3));
  begin = self->_counterBuffers.__begin_;
  end = self->_counterBuffers.__end_;
  while (begin != end)
  {
    begin[1] = *begin;
    begin += 3;
  }

  [(NSLock *)self->_pullLock unlock];
  v7 = 0;
  for (i = 0; i < [(GPURawCounterSource *)self->_source ringBufferNum]; ++i)
  {
    (*(v4 + 2))(v4, *(v9[0] + v7), *(v9[0] + v7 + 8) - *(v9[0] + v7), 2, i, self->_sourceIndex);
    v7 += 24;
  }

  v10 = v9;
  sub_247FCDB30(&v10);
}

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 6) = 0;
  return self;
}

@end