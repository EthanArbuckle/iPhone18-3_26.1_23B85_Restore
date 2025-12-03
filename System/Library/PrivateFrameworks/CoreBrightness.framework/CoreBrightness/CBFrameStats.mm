@interface CBFrameStats
- (BOOL)shouldPop;
- (CBFrameStats)initWithQueue:(id)queue frameInfoProvider:(id)provider andWindowServerDisplay:(id)display;
- (float)getMovingAverage;
- (float)getPeakAPCECap;
- (id).cxx_construct;
- (void)dealloc;
- (void)processFrameInfo:(id *)info;
- (void)startMonitoring:(id)monitoring;
- (void)stopMonitoring;
@end

@implementation CBFrameStats

- (BOOL)shouldPop
{
  v8 = [(NSMutableArray *)self->_frameArray count];
  v10 = 0;
  if (v8)
  {
    v7 = [(NSMutableArray *)self->_frameArray objectAtIndex:0];
    v6 = [(NSMutableArray *)self->_frameArray objectAtIndex:v8 - 1];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [objc_msgSend(v7 "objectForKey:"floatValue"")];
        v5 = v2;
        [objc_msgSend(v6 objectForKey:{@"PresentationTimeInSeconds", "floatValue"}];
        if ((v3 - v5) > self->_movingAverageDuration)
        {
          return 1;
        }
      }
    }
  }

  return v10;
}

- (CBFrameStats)initWithQueue:(id)queue frameInfoProvider:(id)provider andWindowServerDisplay:(id)display
{
  v22 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v18 = a2;
  queueCopy = queue;
  providerCopy = provider;
  displayCopy = display;
  if (queue && providerCopy && displayCopy)
  {
    v14.receiver = selfCopy;
    v14.super_class = CBFrameStats;
    selfCopy = [(CBFrameStats *)&v14 init];
    if (selfCopy)
    {
      v5 = os_log_create("com.apple.CoreBrightness.FrameStats", "default");
      *(selfCopy + 16) = v5;
      *(selfCopy + 1) = queueCopy;
      dispatch_retain(*(selfCopy + 1));
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      *(selfCopy + 17) = v6;
      v7 = MEMORY[0x1E69E5928](providerCopy);
      *(selfCopy + 2) = v7;
      for (i = 0; i < [objc_msgSend(displayCopy "averagePixelConstraints")]; ++i)
      {
        std::vector<float>::push_back[abi:de200100](selfCopy + 3, ([objc_msgSend(displayCopy "averagePixelConstraints")] + 4 * i));
        std::vector<float>::push_back[abi:de200100](selfCopy + 6, ([objc_msgSend(displayCopy "averagePixelConstraints")] + 4 * i));
        if (*(selfCopy + 16))
        {
          v12 = *(selfCopy + 16);
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            inited = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            inited = init_default_corebrightness_log();
          }

          v12 = inited;
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *&v10 = *std::vector<float>::back[abi:de200100](selfCopy + 3);
          v8 = std::vector<float>::back[abi:de200100](selfCopy + 6);
          __os_log_helper_16_0_4_4_0_8_0_4_0_8_0(v21, i, v10, i, COERCE__INT64(*v8));
          _os_log_impl(&dword_1DE8E5000, v12, OS_LOG_TYPE_DEFAULT, "FrameStats RTPLC | FrameDelayedNits[%d]=%f FrameDelayedAPCE[%d]=%f", v21, 0x22u);
        }
      }

      *(selfCopy + 112) = 0;
      *(selfCopy + 30) = 0;
      *(selfCopy + 29) = 0;
      *(selfCopy + 22) = 0;
      *(selfCopy + 40) = 0;
      *(selfCopy + 18) = 0;
      *(selfCopy + 20) = 0.5;
      *(selfCopy + 21) = 2.0;
      *(selfCopy + 22) = mach_time_now_in_seconds();
      *(selfCopy + 26) = 1060320051;
      *(selfCopy + 27) = 10.0;
      *(selfCopy + 31) = -1.0;
      *(selfCopy + 148) = 0;
    }

    v20 = selfCopy;
  }

  else
  {
    v20 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v20;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  [(CBFrameStats *)self stopMonitoring];
  if (selfCopy->_queue)
  {
    dispatch_release(selfCopy->_queue);
    selfCopy->_queue = 0;
  }

  if (selfCopy->_logHandle)
  {
    MEMORY[0x1E69E5920](selfCopy->_logHandle);
    selfCopy->_logHandle = 0;
  }

  MEMORY[0x1E69E5920](selfCopy->_frameArray);
  *&v2 = MEMORY[0x1E69E5920](selfCopy->_frameInfoProvider).n128_u64[0];
  v3.receiver = selfCopy;
  v3.super_class = CBFrameStats;
  [(CBFrameStats *)&v3 dealloc];
}

- (void)startMonitoring:(id)monitoring
{
  selfCopy = self;
  v11 = a2;
  monitoringCopy = monitoring;
  self->_previousFramePresentationTime = -1.0;
  selfCopy->_rtplcCapApplied.previous = 0;
  selfCopy->_rtplcCapApplied.triggerCount = 0.0;
  selfCopy->_rtplcCapApplied.count = 0.0;
  selfCopy->_peakAPCE.recoveryTimer = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, selfCopy->_queue);
  if (selfCopy->_peakAPCE.recoveryTimer)
  {
    dispatch_source_set_timer(selfCopy->_peakAPCE.recoveryTimer, 0, (selfCopy->_peakAPCE.recoveryWindowSize * 1000000000.0), 0);
    block = MEMORY[0x1E69E9820];
    v4 = -1073741824;
    v5 = 0;
    v6 = __32__CBFrameStats_startMonitoring___block_invoke;
    v7 = &unk_1E867B480;
    v8 = selfCopy;
    v9 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, &block);
    if (v9)
    {
      dispatch_source_set_event_handler(selfCopy->_peakAPCE.recoveryTimer, v9);
      _Block_release(v9);
    }

    dispatch_resume(selfCopy->_peakAPCE.recoveryTimer);
  }

  [(CBFrameInfoProvider *)selfCopy->_frameInfoProvider registerObserver:selfCopy withCallback:monitoringCopy];
}

float __32__CBFrameStats_startMonitoring___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 120) = *(*(a1 + 32) + 120) * *(*(a1 + 32) + 104);
  v1 = *(a1 + 32);
  result = *(v1 + 116) * *(v1 + 104);
  *(v1 + 116) = result;
  return result;
}

- (void)stopMonitoring
{
  [(CBFrameInfoProvider *)self->_frameInfoProvider unregisterObserver:self, a2];
  if (self->_peakAPCE.recoveryTimer)
  {
    dispatch_source_cancel(self->_peakAPCE.recoveryTimer);
    dispatch_release(self->_peakAPCE.recoveryTimer);
    self->_peakAPCE.recoveryTimer = 0;
  }
}

- (float)getMovingAverage
{
  v26 = 0.0;
  v25 = 0.0;
  v23 = mach_time_now_in_seconds();
  v2 = v23 - self->_movingAverageDuration;
  v22 = v2;
  v21 = 0.0;
  while ([(NSMutableArray *)self->_frameArray count])
  {
    v19 = [(NSMutableArray *)self->_frameArray objectAtIndex:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [objc_msgSend(v19 objectForKey:{@"PresentationTimeInSeconds", "floatValue"}];
      v21 = v3;
      if (v3 >= v22)
      {
        break;
      }

      [objc_msgSend(v19 objectForKey:{@"APCE", "floatValue"}];
      self->_lastFrameAPCE = v4;
      [(NSMutableArray *)self->_frameArray removeObjectAtIndex:0];
    }
  }

  if (![(NSMutableArray *)self->_frameArray count])
  {
    return self->_lastFrameAPCE;
  }

  v27 = 0;
  v20 = [(NSMutableArray *)self->_frameArray objectAtIndex:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objc_msgSend(v20 objectForKey:{@"PresentationTimeInSeconds", "floatValue"}];
    v21 = v5;
  }

  if (v21 > v22)
  {
    v26 = (self->_lastFrameAPCE * (v21 - v22)) + 0.0;
    v25 = (v21 - v22) + 0.0;
  }

  while (v27 + 1 < [(NSMutableArray *)self->_frameArray count])
  {
    v18 = [(NSMutableArray *)self->_frameArray objectAtIndex:v27];
    v17 = [(NSMutableArray *)self->_frameArray objectAtIndex:v27 + 1];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [objc_msgSend(v18 "objectForKey:"floatValue"")];
        v16 = v6;
        [objc_msgSend(v17 objectForKey:{@"PresentationTimeInSeconds", "floatValue"}];
        v15 = v7;
        [objc_msgSend(v18 objectForKey:{@"APCE", "floatValue"}];
        v26 = v26 + (v8 * (v15 - v16));
        v25 = v25 + (v15 - v16);
      }
    }

    ++v27;
  }

  v14 = [(NSMutableArray *)self->_frameArray objectAtIndex:v27];
  v13 = 0.0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objc_msgSend(v14 objectForKey:{@"PresentationTimeInSeconds", "floatValue"}];
    v13 = *&v9;
  }

  *&v9 = v23;
  if (v23 > v13)
  {
    [objc_msgSend(v14 objectForKey:{@"APCE", v9), "floatValue"}];
    v26 = v26 + (v10 * (v23 - v13));
  }

  return v26 / self->_movingAverageDuration;
}

- (void)processFrameInfo:(id *)info
{
  v19 = *MEMORY[0x1E69E9840];
  if (self->_frameInfoLoggingEnabled)
  {
    if (self->_logHandle)
    {
      logHandle = self->_logHandle;
    }

    else
    {
      v10 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      logHandle = v10;
    }

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      if (info->var2)
      {
        v3 = "YES";
      }

      else
      {
        v3 = "NO";
      }

      if (info->var3)
      {
        v4 = "YES";
      }

      else
      {
        v4 = "NO";
      }

      __os_log_helper_16_2_7_4_0_8_0_8_32_8_32_8_0_8_0_8_0(v18, info->var1, info->var0, v3, v4, COERCE__INT64(info->var5), COERCE__INT64(info->var6), COERCE__INT64(info->var7));
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "FrameStats Info\n{\n\tSwap=%u\n\tPresentationTime=%llu\n\tRTPLC.Triggered=%s\n\tRTPLC.CapApplied=%s\n\tNominalBrightness=%f\n\tScaleFactor=%f\n\tAPCE=%f\n}", v18, 0x44u);
    }
  }

  v16 = mach_time_to_seconds(info->var0);
  var7 = info->var7;
  self->_scaleFactor = info->var6;
  v9 = objc_alloc(MEMORY[0x1E695DF20]);
  *&v5 = var7;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  *&v6 = v16;
  v14 = [v9 initWithObjectsAndKeys:{v8, @"APCE", objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v6), @"PresentationTimeInSeconds", 0}];
  [(NSMutableArray *)self->_frameArray addObject:v14];
  if ([(CBFrameStats *)self shouldPop])
  {
    v13 = [(NSMutableArray *)self->_frameArray objectAtIndex:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [objc_msgSend(v13 objectForKey:{@"APCE", "floatValue"}];
      self->_lastFrameAPCE = v7;
    }

    [(NSMutableArray *)self->_frameArray removeObjectAtIndex:0];
  }

  if (var7 <= self->_peakAPCE.current)
  {
    if ((mach_time_now_in_seconds() - self->_peakAPCE.windowStart) >= self->_peakAPCE.windowSize)
    {
      self->_peakAPCE.current = self->_peakAPCE.current + ((var7 - self->_peakAPCE.current) * (self->_peakAPCE.timeTaperConstant / (((self->_rtplcCapApplied.triggerCount * self->_rtplcCapApplied.count) / 5.0) + 1.0)));
    }
  }

  else
  {
    self->_peakAPCE.current = var7;
    self->_peakAPCE.windowStart = mach_time_now_in_seconds();
  }

  if (info->var3)
  {
    if (self->_previousFramePresentationTime != -1.0)
    {
      self->_rtplcCapApplied.count = self->_rtplcCapApplied.count + (60.0 * (v16 - self->_previousFramePresentationTime));
    }

    if (!self->_rtplcCapApplied.previous)
    {
      self->_rtplcCapApplied.triggerCount = self->_rtplcCapApplied.triggerCount + 1.0;
    }
  }

  if (info->var2 || info->var3)
  {
    if (!self->_tripLength)
    {
      self->_currentTripStartTime = mach_time_now_in_seconds();
      self->_tripMaxAPCE = 0.0;
    }

    self->_tripMaxAPCE = fmaxf(info->var7, self->_tripMaxAPCE);
    ++self->_tripLength;
  }

  else
  {
    self->_tripLength = 0;
  }

  self->_rtplcCapApplied.previous = info->var3;
  self->_previousFramePresentationTime = v16;
  *MEMORY[0x1E69E9840];
}

- (float)getPeakAPCECap
{
  selfCopy = self;
  v17 = a2;
  if (std::vector<float>::empty[abi:de200100](&self->_rtplcFrameDelayedNitsTable.__begin_))
  {
    if (selfCopy->_logHandle)
    {
      logHandle = selfCopy->_logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    v16 = logHandle;
    v15 = 16;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      log = v16;
      type = v15;
      __os_log_helper_16_0_0(v14);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "FrameStats PeakAPCE | PixelConstraints table is empty!", v14, 2u);
    }

    return 100000.0;
  }

  else
  {
    [(CBFrameStats *)selfCopy getPeakAPCE];
    v13 = v2;
    for (i = 0; ; ++i)
    {
      if (i >= std::vector<float>::size[abi:de200100](&selfCopy->_rtplcFrameDelayedNitsTable.__begin_))
      {
        return *std::vector<float>::back[abi:de200100](&selfCopy->_rtplcFrameDelayedNitsTable.__begin_);
      }

      if (v13 > *std::vector<float>::operator[][abi:de200100](&selfCopy->_rtplcFrameDelayedAPCETable.__begin_, i))
      {
        break;
      }
    }

    if (i)
    {
      v5 = *std::vector<float>::operator[][abi:de200100](&selfCopy->_rtplcFrameDelayedAPCETable.__begin_, i);
      v6 = *std::vector<float>::operator[][abi:de200100](&selfCopy->_rtplcFrameDelayedNitsTable.__begin_, i);
      v7 = *std::vector<float>::operator[][abi:de200100](&selfCopy->_rtplcFrameDelayedAPCETable.__begin_, i - 1);
      v3 = std::vector<float>::operator[][abi:de200100](&selfCopy->_rtplcFrameDelayedNitsTable.__begin_, i - 1);
      return linear_interpolation(v13, v5, v6, v7, *v3);
    }

    else
    {
      return *std::vector<float>::front[abi:de200100](&selfCopy->_rtplcFrameDelayedNitsTable.__begin_);
    }
  }
}

- (id).cxx_construct
{
  std::vector<float>::vector[abi:de200100](&self->_rtplcFrameDelayedNitsTable.__begin_);
  std::vector<float>::vector[abi:de200100](&self->_rtplcFrameDelayedAPCETable.__begin_);
  return self;
}

@end