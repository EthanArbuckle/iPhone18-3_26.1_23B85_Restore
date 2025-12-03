@interface DTKPKperfAggregator
- (BOOL)_ktraceTeardown:(id *)teardown;
- (DTKPKperfAggregator)initWithConfig:(id)config;
- (id).cxx_construct;
- (id)_getKernelBufferLocked:(BOOL *)locked error:(id *)error;
- (id)_getKperfKernelBufferLocked:(BOOL *)locked error:(id *)error;
- (id)_kdebugReadWithMoreLocked:(BOOL *)locked error:(id *)error;
- (id)_kernelCallbackInit;
- (id)pause;
- (id)resume;
- (id)start;
- (id)stop;
- (int)_flushDataFromKernel:(unsigned int)kernel more:(BOOL *)more error:(id *)error;
- (unsigned)_kernelCallbackImpl;
- (void)_kernelCallbackError;
- (void)_kernelCallbackNotifyCallblock:(unsigned int)callblock;
- (void)_releaseKernelResources;
- (void)_reportCallbackStats;
- (void)_reportStats;
- (void)_reportTimeStats;
- (void)_resetStats;
@end

@implementation DTKPKperfAggregator

- (void)_reportTimeStats
{
  v17 = *MEMORY[0x277D85DE8];
  rep = self->_startTime.__d_.__rep_;
  v3 = self->_endTime.__d_.__rep_;
  if (qword_27EE84478 != -1)
  {
    sub_248030068();
  }

  v5 = qword_27EE84480;
  if (os_log_type_enabled(qword_27EE84480, OS_LOG_TYPE_INFO))
  {
    v6 = (v3 - rep) % 3600000000000;
    v7 = v6 / 60000000000;
    v8 = (v6 % 60000000000 * 0x112E0BE826D694B3) >> 64;
    id = self->_id;
    v11 = 134218496;
    v12 = id;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = (v8 >> 26) + (v8 >> 63);
    _os_log_impl(&dword_247F67000, v5, OS_LOG_TYPE_INFO, "[%llu] Lasted: %um:%us", &v11, 0x18u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_reportCallbackStats
{
  v14 = *MEMORY[0x277D85DE8];
  if (qword_27EE84478 != -1)
  {
    sub_248030068();
  }

  v3 = qword_27EE84480;
  if (os_log_type_enabled(qword_27EE84480, OS_LOG_TYPE_INFO))
  {
    id = self->_id;
    callbackCalledCount = self->_callbackCalledCount;
    callbackNotificationCount = self->_callbackNotificationCount;
    v8 = 134218496;
    v9 = id;
    v10 = 2048;
    v11 = callbackCalledCount;
    v12 = 2048;
    v13 = callbackNotificationCount;
    _os_log_impl(&dword_247F67000, v3, OS_LOG_TYPE_INFO, "[%llu] Callback: %llu calls (%llu notifications)", &v8, 0x20u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_reportStats
{
  v23 = *MEMORY[0x277D85DE8];
  dataPulledSize = self->_dataPulledSize;
  v4 = dataPulledSize;
  if (dataPulledSize)
  {
    v5 = vcvtmd_s64_f64(log2(dataPulledSize) / 10.0);
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.2f %s", v4 / exp2(v5 * 10.0), off_278EF4188[v5]];
  if (qword_27EE84478 != -1)
  {
    sub_248030068();
  }

  v7 = qword_27EE84480;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    id = self->_id;
    bufferSize = [(DTKPConfiguration *)self->_config bufferSize];
    v10 = bufferSize;
    if (bufferSize)
    {
      v11 = vcvtmd_s64_f64(log2(bufferSize) / 10.0);
    }

    else
    {
      v11 = 0;
    }

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.2f %s", v10 / exp2(v11 * 10.0), off_278EF4188[v11]];
    *buf = 134218242;
    v18 = id;
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&dword_247F67000, v7, OS_LOG_TYPE_INFO, "[%llu] Kernel: buffer size: %@", buf, 0x16u);
  }

  if (qword_27EE84478 != -1)
  {
    sub_24803007C();
  }

  v13 = qword_27EE84480;
  if (os_log_type_enabled(qword_27EE84480, OS_LOG_TYPE_INFO))
  {
    v14 = self->_id;
    numberOfPulls = self->_numberOfPulls;
    *buf = 134218498;
    v18 = v14;
    v19 = 2112;
    v20 = v6;
    v21 = 2048;
    v22 = numberOfPulls;
    _os_log_impl(&dword_247F67000, v13, OS_LOG_TYPE_INFO, "[%llu] Pulled: %@ (%llu pulls)", buf, 0x20u);
  }

  [(DTKPKperfAggregator *)self _reportTimeStats];
  [(DTKPKperfAggregator *)self _reportCallbackStats];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_resetStats
{
  self->_dataPulledSize = 0;
  self->_numberOfPulls = 0;
  self->_callbackCalledCount = 0;
  self->_callbackNotificationCount = 0;
}

- (BOOL)_ktraceTeardown:(id *)teardown
{
  v5 = kperf_logging_stop();
  v6 = v5;
  v7 = v5 == 0;
  if (teardown && v5)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"kperf_logging_stop failed with %d.", v5];
    *teardown = sub_247FEF170(v8, -6);
  }

  if ([(DTKPConfiguration *)self->_config hasEnabledCounting])
  {
    v9 = kpc_set_counting();
    v7 = (v9 | v6) == 0;
    if (v9)
    {
      if (teardown)
      {
        v10 = MEMORY[0x277CCACA8];
        v11 = __error();
        v12 = [v10 stringWithFormat:@"kpc_set_counting failed (%s).", strerror(*v11)];
        *teardown = sub_247FEF170(v12, -8);

        v7 = 0;
      }
    }
  }

  if (self->_kperfSample)
  {
    if (kperf_sample_off())
    {
      v7 = 0;
      if (teardown)
      {
        v13 = MEMORY[0x277CCACA8];
        v14 = __error();
        v15 = [v13 stringWithFormat:@"kperf_sample_on failed (%s).", strerror(*v14)];
        *teardown = sub_247FEF170(v15, -6);

        return 0;
      }
    }
  }

  return v7;
}

- (DTKPKperfAggregator)initWithConfig:(id)config
{
  configCopy = config;
  v13.receiver = self;
  v13.super_class = DTKPKperfAggregator;
  v6 = [(DTKPKperfAggregator *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, config);
    v8 = [DVTStreamManager alloc];
    v9 = objc_opt_new();
    v10 = [(DVTStreamManager *)v8 initWithStream:v9];
    manager = v7->_manager;
    v7->_manager = v10;

    v7->_usingTimer = 0;
    *&v7->_kperfSample = 0;
    v7->_id = atomic_fetch_add(&qword_27EE84488, 1uLL);
  }

  return v7;
}

- (id)start
{
  v11[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  std::recursive_mutex::lock(&self->_lock);
  _kernelCallbackInit = [(DTKPKperfAggregator *)self _kernelCallbackInit];
  if (_kernelCallbackInit)
  {
    v4 = _kernelCallbackInit;
    v5 = v4;
  }

  else
  {
    [(DTKPKperfAggregator *)self _resetStats];
    v9[0] = v9;
    v9[1] = v9;
    v9[2] = 0;
    live = kperf_buffer_create_live();
    selfCopy->_kperfBuffer = live;
    if (live)
    {
      v11[0] = &unk_285A18D70;
      v11[1] = &selfCopy;
      v11[3] = v11;
      operator new();
    }

    v5 = sub_247FF0B44(@"kperf_buffer_create_live failed.", -1);
    v4 = 0;
    sub_247FC6AC0(v9);
  }

  std::recursive_mutex::unlock(&self->_lock);
  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)pause
{
  std::recursive_mutex::lock(&self->_lock);
  v5 = 0;
  [(DTKPKperfAggregator *)self _ktraceTeardown:&v5];
  v3 = v5;
  if (self->_usingTimer)
  {
    [(DVTQueueBasedTimer *)self->_timer pause];
  }

  std::recursive_mutex::unlock(&self->_lock);

  return v3;
}

- (id)resume
{
  std::recursive_mutex::lock(&self->_lock);
  hasEnabledCountingWithManualConfiguration = [(DTKPConfiguration *)self->_config hasEnabledCountingWithManualConfiguration];
  if (hasEnabledCountingWithManualConfiguration)
  {
    [(DTKPConfiguration *)self->_config enabledKPCClasses];
    if (kpc_set_counting())
    {
      v4 = MEMORY[0x277CCACA8];
      v5 = __error();
      v6 = [v4 stringWithFormat:@"kpc_set_counting failed (%s).", strerror(*v5)];
      v7 = sub_247FF0B44(v6, -8);
LABEL_17:
      v14 = v7;
      goto LABEL_18;
    }
  }

  if (self->_kperfSample && kperf_sample_on())
  {
    if (hasEnabledCountingWithManualConfiguration)
    {
      kpc_set_counting();
    }

    v8 = MEMORY[0x277CCACA8];
    v9 = __error();
    v6 = [v8 stringWithFormat:@"kperf_sample_on failed (%s).", strerror(*v9)];
    v7 = sub_247FF0B44(v6, -6);
    goto LABEL_17;
  }

  if (kperf_logging_start())
  {
    kperf_sample_off();
    if (hasEnabledCountingWithManualConfiguration)
    {
      kpc_set_counting();
    }

    v10 = MEMORY[0x277CCACA8];
    v11 = __error();
    v6 = [v10 stringWithFormat:@"kperf_logging_start failed (%s).", strerror(*v11)];
    v7 = sub_247FF0B44(v6, -6);
    goto LABEL_17;
  }

  if (self->_usingTimer)
  {
    [(DVTQueueBasedTimer *)self->_timer resume];
  }

  v16 = 0;
  v12 = [(DTKPKperfAggregator *)self _flushDataFromKernel:1 more:0 error:&v16];
  v13 = v16;
  v6 = v13;
  if (v12)
  {
    v7 = v13;
    goto LABEL_17;
  }

  v14 = 0;
LABEL_18:

  std::recursive_mutex::unlock(&self->_lock);

  return v14;
}

- (id)stop
{
  std::recursive_mutex::lock(&self->_lock);
  v9 = 0;
  [(DTKPKperfAggregator *)self _ktraceTeardown:&v9];
  v3 = v9;
  self->_endTime.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  if (self->_usingTimer)
  {
    [(DVTQueueBasedTimer *)self->_timer stop];
  }

  v8 = 0;
  do
  {
    v7 = v3;
    v4 = [(DTKPKperfAggregator *)self _flushDataFromKernel:0 more:&v8 error:&v7];
    v5 = v7;

    if (v4)
    {
      break;
    }

    v3 = v5;
  }

  while ((v8 & 1) != 0);
  [(DTKPKperfAggregator *)self _releaseKernelResources];
  [(DTKPKperfAggregator *)self _reportStats];
  std::recursive_mutex::unlock(&self->_lock);

  return v5;
}

- (void)_kernelCallbackNotifyCallblock:(unsigned int)callblock
{
  v4 = _Block_copy(self->_callback);
  if (v4)
  {
    v5 = dispatch_get_global_queue(21, 0);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_247FF00C4;
    v6[3] = &unk_278EF4120;
    v7 = v4;
    callblockCopy = callblock;
    dispatch_async(v5, v6);
  }
}

- (void)_kernelCallbackError
{
  [(DTKPKperfAggregator *)self _kernelCallbackNotifyCallblock:1];
  v3 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247FF019C;
  block[3] = &unk_278EF3128;
  block[4] = self;
  dispatch_async(v3, block);
}

- (unsigned)_kernelCallbackImpl
{
  v18 = *MEMORY[0x277D85DE8];
  ++self->_callbackCalledCount;
  kperfBuffer = self->_kperfBuffer;
  v4 = kperf_buffer_wait();
  v5 = v4;
  if (v4 == 35 || v4 == 0)
  {
    v16 = 0;
    v15 = 0;
    [(DTKPKperfAggregator *)self _flushDataFromKernel:0 more:&v16 error:&v15];
    v7 = v15;
    if (v7)
    {
      if (qword_27EE84478 != -1)
      {
        sub_24803007C();
      }

      v8 = qword_27EE84480;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v7 localizedDescription];
        sub_248030100(localizedDescription, buf, v8);
      }

      [(DTKPKperfAggregator *)self _kernelCallbackError];
      v10 = 2;
    }

    else if (!v5 || (v16 & 1) != 0 || (v12 = [(DVTStreamManager *)self->_manager currentStreamSize], v12 >= [(DTKPConfiguration *)self->_config bufferSize]))
    {
      [(DTKPKperfAggregator *)self _kernelCallbackNotifyCallblock:2];
      v10 = 0;
      ++self->_callbackNotificationCount;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    if (qword_27EE84478 != -1)
    {
      sub_248030068();
    }

    v11 = qword_27EE84480;
    if (os_log_type_enabled(qword_27EE84480, OS_LOG_TYPE_ERROR))
    {
      sub_248030158(v5, v11);
    }

    [(DTKPKperfAggregator *)self _kernelCallbackError];
    v10 = 2;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)_kernelCallbackInit
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = *"";
  v8[3] = sub_247FF04E8;
  v8[4] = sub_247FF04F4;
  objc_initWeak(&v9, self);
  v3 = [DVTQueueBasedTimer alloc];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_247FF04FC;
  v7[3] = &unk_278EF4148;
  v7[4] = v8;
  v4 = [(DVTQueueBasedTimer *)v3 initWithInterval:25 qos:v7 block:0.2];
  timer = self->_timer;
  self->_timer = v4;

  _Block_object_dispose(v8, 8);
  objc_destroyWeak(&v9);
  return 0;
}

- (void)_releaseKernelResources
{
  if (self->_kperfBuffer)
  {
    kperf_buffer_free();
    self->_kperfBuffer = 0;
    v3 = kperf_logging_set_size();
    MEMORY[0x24C1C3750](v3);

    kperf_reset();
  }
}

- (id)_kdebugReadWithMoreLocked:(BOOL *)locked error:(id *)error
{
  v18 = *MEMORY[0x277D85DE8];
  if (locked)
  {
    *locked = 0;
  }

  bufferSize = [(DTKPConfiguration *)self->_config bufferSize];
  if (bufferSize >= 0x2000000)
  {
    v7 = 0x2000000;
  }

  else
  {
    v7 = bufferSize;
  }

  v15 = v7;
  v8 = malloc_type_malloc(v7, 0xABA0F7E1uLL);
  *v16 = xmmword_24803DAD0;
  v17 = 0;
  if (sysctl(v16, 3u, v8, &v15, 0, 0) < 0)
  {
    if (error)
    {
      v10 = MEMORY[0x277CCACA8];
      v11 = __error();
      v12 = [v10 stringWithFormat:@"trace_read failed with errno: %s", strerror(*v11)];
      *error = sub_247FEF170(v12, -1);
    }

    if (*__error())
    {
      v9 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v15 <<= 6;
  }

  v9 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v8 length:? freeWhenDone:?];
  if (locked && v7 - v15 <= 0x3FF)
  {
    *locked = 1;
  }

LABEL_15:
  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_getKperfKernelBufferLocked:(BOOL *)locked error:(id *)error
{
  kperfBuffer = self->_kperfBuffer;
  v7 = kperf_buffer_readdata_withmore();
  if (v7 <= 0)
  {
    v11 = v7;
    v12 = 0;
    if (error && v11)
    {
      v10 = @"kperf_buffer_readdata_withmore failed.";
      goto LABEL_8;
    }
  }

  else
  {
    v8 = self->_kperfBuffer;
    v9 = kperf_buffer_getbuf();
    if (error && v9)
    {
      v10 = @"kperf_buffer_getbuf failed.";
LABEL_8:
      v13 = sub_247FF0B44(v10, -6);
      v14 = v13;
      v12 = 0;
      *error = v13;
      goto LABEL_10;
    }

    v12 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:? length:? deallocator:?];
  }

LABEL_10:

  return v12;
}

- (id)_getKernelBufferLocked:(BOOL *)locked error:(id *)error
{
  if (self->_hasUsedKperf)
  {
    goto LABEL_2;
  }

  v7 = [(DTKPKperfAggregator *)self _getKperfKernelBufferLocked:locked error:error];
  if (v7)
  {
    v9 = v7;
    self->_hasUsedKperf = 1;
    [(DVTStreamManager *)self->_manager commit:v7 error:error];

LABEL_2:
    v7 = [(DTKPKperfAggregator *)self _kdebugReadWithMoreLocked:locked error:error];
  }

  return v7;
}

- (int)_flushDataFromKernel:(unsigned int)kernel more:(BOOL *)more error:(id *)error
{
  v18 = 1;
  v17 = 0;
  if (kernel)
  {
    kernelCopy = kernel;
  }

  else
  {
    kernelCopy = 0xFFFFFFFFLL;
  }

  if (more)
  {
    moreCopy = more;
    *more = 1;
  }

  else
  {
    moreCopy = &v18;
  }

  v8 = 0;
  if (error)
  {
    errorCopy = error;
  }

  else
  {
    errorCopy = &v17;
  }

  v16 = vdupq_n_s64(1uLL);
  while (1)
  {
    if (!std::recursive_mutex::try_lock(&self->_lock))
    {
      return 0;
    }

    v10 = [(DTKPKperfAggregator *)self _getKernelBufferLocked:moreCopy error:errorCopy, v16.i64[0]];
    v11 = [v10 length];
    v12.i64[1] = v16.i64[1];
    v12.i64[0] = v11;
    *&self->_dataPulledSize = vaddq_s64(*&self->_dataPulledSize, v12);
    std::recursive_mutex::unlock(&self->_lock);
    if (*errorCopy)
    {
      v14 = -6;
      goto LABEL_22;
    }

    if ([v10 length])
    {
      break;
    }

LABEL_16:

    v14 = 0;
    if (!*moreCopy || v8 >= kernelCopy)
    {
      return v14;
    }
  }

  v13 = [v10 length];
  [(DVTStreamManager *)self->_manager commit:v10 error:errorCopy];
  if (!*errorCopy)
  {
    v8 += v13;
    goto LABEL_16;
  }

  v14 = -100;
LABEL_22:

  return v14;
}

- (id).cxx_construct
{
  self->_startTime.__d_.__rep_ = 0;
  self->_endTime.__d_.__rep_ = 0;
  MEMORY[0x24C1C2890](&self->_lock, a2);
  return self;
}

@end