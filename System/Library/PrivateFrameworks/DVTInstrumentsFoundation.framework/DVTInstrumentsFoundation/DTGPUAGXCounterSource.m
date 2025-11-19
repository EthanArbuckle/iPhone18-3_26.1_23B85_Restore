@interface DTGPUAGXCounterSource
- (BOOL)request:(unint64_t)a3 vendorFeatures:(id)a4;
- (DTGPUAGXCounterSource)initWithSource:(id)a3 sourceGroup:(id)a4 selects:(id)a5 sourceIndex:(unsigned int)a6;
- (id).cxx_construct;
- (void)dealloc;
- (void)pullAndDrainCounters;
- (void)sampleAPS:(id)a3;
- (void)sampleCounters:(unint64_t)a3 callback:(id)a4;
- (void)stop;
@end

@implementation DTGPUAGXCounterSource

- (DTGPUAGXCounterSource)initWithSource:(id)a3 sourceGroup:(id)a4 selects:(id)a5 sourceIndex:(unsigned int)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v19.receiver = self;
  v19.super_class = DTGPUAGXCounterSource;
  v14 = [(DTGPUAGXCounterSource *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_source, a3);
    objc_storeStrong(&v15->_sourceGroup, a4);
    objc_storeStrong(&v15->_selects, a5);
    v15->_sourceIndex = a6;
    pullTimer = v15->_pullTimer;
    v15->_pullTimer = 0;

    pullQueue = v15->_pullQueue;
    v15->_pullQueue = 0;
  }

  return v15;
}

- (void)dealloc
{
  [(DTGPUAGXCounterSource *)self stop];
  v3.receiver = self;
  v3.super_class = DTGPUAGXCounterSource;
  [(DTGPUAGXCounterSource *)&v3 dealloc];
}

- (BOOL)request:(unint64_t)a3 vendorFeatures:(id)a4
{
  v70 = *MEMORY[0x277D85DE8];
  v49 = a4;
  if (self->_source && self->_sourceGroup)
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithArray:self->_selects];
    v46 = a3;
    v47 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:&unk_285A37038];
    v7 = [(GPURawCounterSource *)self->_source name];
    val = self;
    if ([v7 hasPrefix:@"RDE"])
    {
      v8 = [v49 objectForKeyedSubscript:@"ShaderProfiler"];
      v9 = [v8 unsignedIntegerValue];

      if (v9)
      {
        v10 = objc_opt_new();
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v11 = [(GPURawCounterSource *)self->_source availableCounters];
        v12 = [v11 countByEnumeratingWithState:&v59 objects:v69 count:16];
        if (v12)
        {
          v13 = *v60;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v60 != v13)
              {
                objc_enumerationMutation(v11);
              }

              v15 = *(*(&v59 + 1) + 8 * i);
              v16 = [v15 name];
              v17 = [v16 rangeOfString:@"GRC_SHADER_PROFILER_DATA_"] == 0;

              if (v17)
              {
                v18 = [v15 name];
                [v10 addObject:v18];
              }
            }

            v12 = [v11 countByEnumeratingWithState:&v59 objects:v69 count:16];
          }

          while (v12);
        }

        if ([v10 count])
        {
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v19 = v10;
          v20 = [v19 countByEnumeratingWithState:&v55 objects:v68 count:16];
          if (v20)
          {
            v21 = *v56;
            do
            {
              for (j = 0; j != v20; ++j)
              {
                if (*v56 != v21)
                {
                  objc_enumerationMutation(v19);
                }

                v23 = [MEMORY[0x277D0AF28] selectWithName:*(*(&v55 + 1) + 8 * j) options:&unk_285A37060];
                [v6 addObject:v23];
              }

              v20 = [v19 countByEnumeratingWithState:&v55 objects:v68 count:16];
            }

            while (v20);
          }
        }

        else
        {
          [v47 setObject:&unk_285A36C60 forKeyedSubscript:@"ShaderProfiler"];
        }

        self = val;
      }
    }

    else
    {
    }

    [(GPURawCounterSource *)self->_source setOptions:v47];
    v25 = [(GPURawCounterSource *)self->_source name];
    v26 = [v25 containsString:@"BMPR"];

    if (v26)
    {
      v27 = MEMORY[0x277D0AF30];
      v66 = @"Period";
      v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:(v46 / 125.0 * 3.0)];
      v67 = v28;
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
      [v27 selectWithName:@"TimerNClock" options:v29];
    }

    else
    {
      v30 = MEMORY[0x277D0AF30];
      v64 = @"Period";
      v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v46];
      v65 = v28;
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
      [v30 selectWithName:@"TimerFixed" options:v29];
    }
    v31 = ;

    source = val->_source;
    v63 = v31;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v63 count:1];
    LOBYTE(source) = [(GPURawCounterSource *)source requestTriggers:v33 firstErrorIndex:0];

    if ((source & 1) != 0 && (v54 = 0, ([(GPURawCounterSource *)val->_source requestCounters:v6 firstErrorIndex:&v54]& 1) != 0) && [(GPURawCounterSource *)val->_source setEnabled:1])
    {
      sub_247FCBB10(&val->_counterBuffers.__begin_, [(GPURawCounterSource *)val->_source ringBufferNum]);
      v34 = objc_opt_new();
      pullLock = val->_pullLock;
      val->_pullLock = v34;

      sub_247FCD6AC(location, 0x2000000);
      begin = val->_tmpOutBuffer.__begin_;
      if (begin)
      {
        val->_tmpOutBuffer.__end_ = begin;
        operator delete(begin);
        val->_tmpOutBuffer.__begin_ = 0;
        val->_tmpOutBuffer.__end_ = 0;
        val->_tmpOutBuffer.__cap_ = 0;
      }

      *&val->_tmpOutBuffer.__begin_ = *location;
      val->_tmpOutBuffer.__cap_ = v53;
      objc_initWeak(location, val);
      v37 = dispatch_queue_create("com.apple.gpu.rawcounters.pull", 0);
      pullQueue = val->_pullQueue;
      val->_pullQueue = v37;

      v39 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, val->_pullQueue);
      pullTimer = val->_pullTimer;
      val->_pullTimer = v39;

      v41 = val->_pullTimer;
      v42 = dispatch_time(0, 100000000);
      dispatch_source_set_timer(v41, v42, 0x5F5E100uLL, 0x5F5E100uLL);
      v43 = val->_pullTimer;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = sub_247FCBBB8;
      handler[3] = &unk_278EF30D8;
      objc_copyWeak(&v51, location);
      dispatch_source_set_event_handler(v43, handler);
      objc_destroyWeak(&v51);
      objc_destroyWeak(location);
      v24 = 1;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  v44 = *MEMORY[0x277D85DE8];
  return v24;
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
  [(GPURawCounterSource *)self->_source setEnabled:0];
  pullLock = self->_pullLock;
  self->_pullLock = 0;
}

- (void)pullAndDrainCounters
{
  if ([(GPURawCounterSource *)self->_source ringBufferNum])
  {
    v3 = 0;
    v4 = 0;
    do
    {
      __src = 0;
      memset(v13, 0, sizeof(v13));
      if ([(GPURawCounterSource *)self->_source ringBufferInfoAtIndex:v4 base:&__src size:&v13[2] dataOffset:&v13[1] dataSize:v13]&& 0xAAAAAAAAAAAAAAABLL * ((self->_counterBuffers.__end_ - self->_counterBuffers.__begin_) >> 3) > v4)
      {
        [(NSLock *)self->_pullLock lock];
        v5 = v13[0];
        if (v13[0])
        {
          v6 = (self->_counterBuffers.__begin_ + v3);
          v7 = v6[1] - *v6;
          v8 = v7 + v13[0];
          if (!(v8 >> 27))
          {
            if (v7 >= v8)
            {
              if (v7 > v8)
              {
                v6[1] = *v6 + v8;
              }
            }

            else
            {
              sub_247FCD770((self->_counterBuffers.__begin_ + v3), v13[0]);
              v5 = v13[0];
            }

            v9 = *v6;
            if (v5 + v13[1] >= v13[2])
            {
              memcpy((v9 + v7), __src + v13[1], (v13[2] - v13[1]));
              v12 = __src;
              v10 = (v13[1] - v13[2] + v13[0]);
              v11 = (*v6 + (v13[2] - v13[1]) + v7);
            }

            else
            {
              v10 = v5;
              v11 = (v9 + v7);
              v12 = __src + v13[1];
            }

            memcpy(v11, v12, v10);
          }
        }

        [(GPURawCounterSource *)self->_source drainRingBufferAtIndex:v4 dataSize:v13[0]];
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
  memset(v36, 0, sizeof(v36));
  sub_247FCD8A8(v36, self->_counterBuffers.__begin_, self->_counterBuffers.__end_, 0xAAAAAAAAAAAAAAABLL * ((self->_counterBuffers.__end_ - self->_counterBuffers.__begin_) >> 3));
  begin = self->_counterBuffers.__begin_;
  end = self->_counterBuffers.__end_;
  while (begin != end)
  {
    begin[1] = *begin;
    begin += 3;
  }

  [(NSLock *)self->_pullLock unlock];
  for (i = 0; i < [(GPURawCounterSource *)self->_source ringBufferNum]; ++i)
  {
    v9 = v36[0] + 24 * i;
    __p = 0;
    v34 = 0;
    v35 = 0;
    sub_247F951C8(&__p, 2 * (*(v9 + 8) - *v9));
    __n = 0;
    v32 = 0;
    v11 = *v9;
    v10 = *(v9 + 8);
    [(GPURawCounterSource *)self->_source resetRawDataPostProcessor];
    v12 = *v9;
    if (*(v9 + 8) == *v9)
    {
LABEL_37:
      v22 = __p;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = v10 - v11;
      while (1)
      {
        LOBYTE(v30) = 0;
        [(GPURawCounterSource *)self->_source postProcessRawDataWithSource:v12 + v14 sourceSize:v16 + v13 sourceRead:&v32 output:self->_tmpOutBuffer.__begin_ outputSize:self->_tmpOutBuffer.__end_ - self->_tmpOutBuffer.__begin_ outputWritten:&__n isLast:v30];
        v17 = v32;
        if (!v32)
        {
          break;
        }

        if (__n && __n + v15 < v35 - __p)
        {
          memcpy(__p + v15, self->_tmpOutBuffer.__begin_, __n);
          v15 += __n;
        }

        v14 += v17;
        v13 = -v14;
        v12 = *v9;
        v18 = *(v9 + 8);
        if (v14 >= v18 - *v9)
        {
          goto LABEL_15;
        }
      }

      v12 = *v9;
      v18 = *(v9 + 8);
LABEL_15:
      v19 = v18 - v12;
      v20 = v18 - v12 >= v14;
      v21 = v18 - v12 - v14;
      if (v20)
      {
        if (v19 > v21)
        {
          *(v9 + 8) = v12 + v21;
        }
      }

      else
      {
        sub_247FCD770(v9, v13);
      }

      v22 = __p;
      if (v15 >= 1)
      {
        v23 = __p + v15;
        while (1)
        {
          v24 = *v22;
          if (v24 == [(GPURawCounterSourceGroup *)self->_sourceGroup sampleMarker])
          {
            break;
          }

          v22 += 8;
          v25 = v22;
          if (v22 >= v23)
          {
LABEL_24:
            if (v25 + 8 >= v23)
            {
              goto LABEL_37;
            }

            v26 = -40;
            v22 = v25 + 8;
            while (1)
            {
              v27 = *v22;
              if (v27 == [(GPURawCounterSourceGroup *)self->_sourceGroup sampleMarker])
              {
                break;
              }

              v22 += 8;
              v26 += 8;
              if (v22 >= v23)
              {
                goto LABEL_37;
              }
            }

            v28 = (v26 + 40) >> 3;
            if (v28 >= 5)
            {
              v29 = *(v25 + 5);
              if (v29 > 6)
              {
                if (v29 == 7)
                {
                  (*(v5 + 2))(v5, v25 + 6, v26 >> 3, *(v25 + 1), 1, i, self->_sourceIndex);
                }
              }

              else if (v28 == [(NSArray *)self->_selects count])
              {
                (*(v5 + 2))(v5, v25 + 1, [(NSArray *)self->_selects count], *(v25 + 1), 0, i, self->_sourceIndex);
              }
            }

            if (v22 >= v23)
            {
              goto LABEL_37;
            }
          }
        }

        v25 = v22;
        goto LABEL_24;
      }
    }

    if (v22)
    {
      v34 = v22;
      operator delete(v22);
    }
  }

  __p = v36;
  sub_247FCDB30(&__p);
}

- (void)sampleAPS:(id)a3
{
  v4 = a3;
  [(NSLock *)self->_pullLock lock];
  memset(v39, 0, sizeof(v39));
  sub_247FCD8A8(v39, self->_counterBuffers.__begin_, self->_counterBuffers.__end_, 0xAAAAAAAAAAAAAAABLL * ((self->_counterBuffers.__end_ - self->_counterBuffers.__begin_) >> 3));
  begin = self->_counterBuffers.__begin_;
  end = self->_counterBuffers.__end_;
  while (begin != end)
  {
    begin[1] = *begin;
    begin += 3;
  }

  [(NSLock *)self->_pullLock unlock];
  for (i = 0; i < [(GPURawCounterSource *)self->_source ringBufferNum]; ++i)
  {
    v8 = v39[0] + 24 * i;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    sub_247F951C8(&v36, 2 * (*(v8 + 8) - *v8));
    __n = 0;
    v35 = 0;
    v10 = *v8;
    v9 = *(v8 + 8);
    [(GPURawCounterSource *)self->_source resetRawDataPostProcessor];
    v11 = v9 - v10;
    v12 = *v8;
    if (*(v8 + 8) == *v8)
    {
      v14 = 0;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      while (1)
      {
        LOBYTE(v30) = 0;
        [(GPURawCounterSource *)self->_source postProcessRawDataWithSource:v12 + v13 sourceSize:v11 - v13 sourceRead:&v35 output:self->_tmpOutBuffer.__begin_ outputSize:self->_tmpOutBuffer.__end_ - self->_tmpOutBuffer.__begin_ outputWritten:&__n isLast:v30];
        v15 = v35;
        if (!v35)
        {
          break;
        }

        if (__n && __n + v14 < v38 - v36)
        {
          memcpy(v36 + v14, self->_tmpOutBuffer.__begin_, __n);
          v14 += __n;
        }

        v13 += v15;
        v12 = *v8;
        v16 = *(v8 + 8);
        if (v13 >= v16 - *v8)
        {
          goto LABEL_16;
        }
      }

      v12 = *v8;
      v16 = *(v8 + 8);
LABEL_16:
      v17 = v16 - v12;
      v18 = v16 - v12 >= v13;
      v19 = v16 - v12 - v13;
      if (v18)
      {
        if (v17 > v19)
        {
          *(v8 + 8) = v12 + v19;
        }
      }

      else
      {
        sub_247FCD770(v8, -v13);
      }
    }

    __p = 0;
    v32 = 0;
    v33 = 0;
    sub_247FBEBFC(&__p, v11 >> 3);
    if (v14 >= 1)
    {
      v20 = v36;
      v21 = v36 + v14;
      while (1)
      {
        v22 = *v20;
        if (v22 == [(GPURawCounterSourceGroup *)self->_sourceGroup sampleMarker])
        {
          break;
        }

        v20 += 8;
        v23 = v20;
        if (v20 >= v21)
        {
LABEL_25:
          v24 = v23 + 8;
          if (v23 + 8 >= v21)
          {
            goto LABEL_35;
          }

          v25 = 0;
          v20 = v23 + 8;
          while (1)
          {
            v26 = *v20;
            if (v26 == [(GPURawCounterSourceGroup *)self->_sourceGroup sampleMarker])
            {
              break;
            }

            v20 += 8;
            v25 += 8;
            if (v20 >= v21)
            {
              goto LABEL_35;
            }
          }

          v27 = v25 >> 3;
          if (v27 >= 5 && *(v23 + 5) <= 6uLL && v27 == [(NSArray *)self->_selects count])
          {
            v28 = v32;
            v29 = [(NSArray *)self->_selects count];
            sub_247FCDBDC(&__p, v28, v24, &v24[8 * v29], v29);
          }

          if (v20 >= v21)
          {
            goto LABEL_35;
          }
        }
      }

      v23 = v20;
      goto LABEL_25;
    }

LABEL_35:
    v4[2](v4, __p, v32 - __p, 3, i, self->_sourceIndex);
    if (__p)
    {
      v32 = __p;
      operator delete(__p);
    }

    if (v36)
    {
      v37 = v36;
      operator delete(v36);
    }
  }

  v36 = v39;
  sub_247FCDB30(&v36);
}

- (id).cxx_construct
{
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 2) = 0u;
  return self;
}

@end