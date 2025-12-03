@interface CBIndicatorAnalyticsModule
- (BOOL)setProperty:(id)property forKey:(id)key;
- (CBIndicatorAnalyticsModule)initWithQueue:(id)queue andIndicatorModule:(id)module;
- (CBIndicatorAnalyticsModule)initWithQueue:(id)queue andIndicatorModule:(id)module andDDFactorMapping:(id)mapping andLuxMapping:(id)luxMapping andNitsMapping:(id)nitsMapping andDDFactorEdges:(id)edges andLuxEdges:(id)luxEdges andNitsEdges:(id)self0 andTimerIntervalMs:(double)self1;
- (void)dealloc;
- (void)handleNotificationForKey:(id)key withProperty:(id)property;
- (void)indicatorStatsTimerCallback;
- (void)startTimer;
- (void)stopTimer;
- (void)submit;
@end

@implementation CBIndicatorAnalyticsModule

- (CBIndicatorAnalyticsModule)initWithQueue:(id)queue andIndicatorModule:(id)module
{
  context = objc_autoreleasePoolPush();
  v6 = [(CBIndicatorAnalyticsModule *)self initWithQueue:queue andIndicatorModule:module andDDFactorMapping:&unk_1F59C98D0 andLuxMapping:&unk_1F59C98F8 andNitsMapping:&unk_1F59C9920 andDDFactorEdges:&unk_1F59C9630 andLuxEdges:16.6666667 andNitsEdges:&unk_1F59C9648 andTimerIntervalMs:&unk_1F59C9660];
  objc_autoreleasePoolPop(context);
  return v6;
}

- (CBIndicatorAnalyticsModule)initWithQueue:(id)queue andIndicatorModule:(id)module andDDFactorMapping:(id)mapping andLuxMapping:(id)luxMapping andNitsMapping:(id)nitsMapping andDDFactorEdges:(id)edges andLuxEdges:(id)luxEdges andNitsEdges:(id)self0 andTimerIntervalMs:(double)self1
{
  selfCopy = self;
  v43 = a2;
  queueCopy = queue;
  moduleCopy = module;
  mappingCopy = mapping;
  luxMappingCopy = luxMapping;
  nitsMappingCopy = nitsMapping;
  edgesCopy = edges;
  luxEdgesCopy = luxEdges;
  nitsEdgesCopy = nitsEdges;
  msCopy = ms;
  v33.receiver = self;
  v33.super_class = CBIndicatorAnalyticsModule;
  selfCopy = [(CBModule *)&v33 initWithQueue:queue];
  if (!selfCopy)
  {
    return selfCopy;
  }

  if (moduleCopy)
  {
    v11 = MEMORY[0x1E69E5928](moduleCopy);
    *(selfCopy + 5) = v11;
    v12 = MEMORY[0x1E69E5928](mappingCopy);
    *(selfCopy + 7) = v12;
    v13 = MEMORY[0x1E69E5928](luxMappingCopy);
    *(selfCopy + 8) = v13;
    v14 = MEMORY[0x1E69E5928](nitsMappingCopy);
    *(selfCopy + 9) = v14;
    v15 = [CBHistogramBuilder3D alloc];
    v16 = [(CBHistogramBuilder3D *)v15 initWithFirstDim:luxEdgesCopy andSecondDim:nitsEdgesCopy andThirdDim:edgesCopy];
    *(selfCopy + 4) = v16;
    if (*(selfCopy + 4))
    {
      v17 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(selfCopy + 3));
      *(selfCopy + 6) = v17;
      if (*(selfCopy + 6))
      {
        *(selfCopy + 11) = msCopy;
        dispatch_source_set_timer(*(selfCopy + 6), 0, (*(selfCopy + 11) * 1000000.0), 0);
        v18 = *(selfCopy + 6);
        handler = MEMORY[0x1E69E9820];
        v28 = -1073741824;
        v29 = 0;
        v30 = __172__CBIndicatorAnalyticsModule_initWithQueue_andIndicatorModule_andDDFactorMapping_andLuxMapping_andNitsMapping_andDDFactorEdges_andLuxEdges_andNitsEdges_andTimerIntervalMs___block_invoke;
        v31 = &unk_1E867B480;
        v32 = selfCopy;
        dispatch_source_set_event_handler(v18, &handler);
        *(selfCopy + 80) = 1;
        *(selfCopy + 25) = 0;
        *(selfCopy + 24) = 0;
        *(selfCopy + 26) = 2143289344;
        return selfCopy;
      }
    }
  }

  if (*(selfCopy + 2))
  {
    v23 = *(selfCopy + 2);
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

    v23 = inited;
  }

  oslog = v23;
  type = OS_LOG_TYPE_ERROR;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    log = oslog;
    v21 = type;
    __os_log_helper_16_0_0(v24);
    _os_log_error_impl(&dword_1DE8E5000, log, v21, "Failed to create CBIndicatorAnalyticsModule", v24, 2u);
  }

  MEMORY[0x1E69E5920](selfCopy);
  selfCopy = 0;
  return 0;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  if (self->_ddFactorEdgeMapping)
  {
    MEMORY[0x1E69E5920](selfCopy->_ddFactorEdgeMapping);
  }

  if (selfCopy->_luxEdgeMapping)
  {
    MEMORY[0x1E69E5920](selfCopy->_luxEdgeMapping);
  }

  if (selfCopy->_nitsEdgeMapping)
  {
    MEMORY[0x1E69E5920](selfCopy->_nitsEdgeMapping);
  }

  if (selfCopy->_indicatorModule)
  {
    MEMORY[0x1E69E5920](selfCopy->_indicatorModule);
  }

  if (selfCopy->_stats)
  {
    MEMORY[0x1E69E5920](selfCopy->_stats);
  }

  dispatch_source_cancel(selfCopy->_timer);
  if (selfCopy->_timerIsSuspended)
  {
    dispatch_resume(selfCopy->_timer);
  }

  dispatch_release(selfCopy->_timer);
  v2.receiver = selfCopy;
  v2.super_class = CBIndicatorAnalyticsModule;
  [(CBModule *)&v2 dealloc];
}

- (void)indicatorStatsTimerCallback
{
  [(CBIndicatorBrightnessModule *)self->_indicatorModule currentDigitalDimmingFactor];
  v6 = v2;
  [(CBIndicatorBrightnessModule *)self->_indicatorModule currentUIBrightness];
  *&v3 = self->_trustedLux;
  HIDWORD(v5) = HIDWORD(v4);
  *&v5 = v4;
  [(CBHistogramBuilder3D *)self->_stats pushNumberWeighted:v6 withWeight:self->_timerIntervalMs forFirstDimValue:v3 andSecondDimValue:v5];
}

- (void)startTimer
{
  if (self->_timerIsSuspended)
  {
    self->_sessionStart = mach_time_now_in_milliseconds();
    dispatch_resume(self->_timer);
    self->_timerIsSuspended = 0;
  }
}

- (void)stopTimer
{
  if (!self->_timerIsSuspended)
  {
    dispatch_suspend(self->_timer);
    self->_timerIsSuspended = 1;
    self->_lastSessionDuration = mach_time_now_in_milliseconds() - self->_sessionStart;
    [(CBIndicatorAnalyticsModule *)self submit];
  }
}

- (void)submit
{
  selfCopy = self;
  v12 = a2;
  context = objc_autoreleasePoolPush();
  v11 = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
  stats = selfCopy->_stats;
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __36__CBIndicatorAnalyticsModule_submit__block_invoke;
  v8 = &unk_1E867CD58;
  v9 = selfCopy;
  v10 = v11;
  [(CBHistogramBuilder3D *)stats enumerateBinsUsingBlock:?];
  [(CBHistogramBuilder3D *)selfCopy->_stats reset];
  objc_autoreleasePoolPop(context);
}

uint64_t __36__CBIndicatorAnalyticsModule_submit__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a1;
  v27 = a2;
  v26 = a3;
  v25 = a4;
  v24 = a5;
  v23 = a6;
  v22 = a7;
  v21 = a8;
  v20 = a1;
  v9 = MEMORY[0x1E69E9820];
  v10 = -1073741824;
  v11 = 0;
  v12 = __36__CBIndicatorAnalyticsModule_submit__block_invoke_2;
  v13 = &unk_1E867CD30;
  v14 = *(a1 + 32);
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = *(a1 + 40);
  return [CBAnalytics send:@".MIB" withBlock:?];
}

uint64_t __36__CBIndicatorAnalyticsModule_submit__block_invoke_2(void *a1)
{
  v6[6] = *MEMORY[0x1E69E9840];
  v5[0] = @"luxEdge";
  v6[0] = [*(a1[4] + 64) valueForKey:a1[5]];
  v5[1] = @"nitsEdge";
  v6[1] = [*(a1[4] + 72) valueForKey:a1[6]];
  v5[2] = @"ddEdge";
  v6[2] = [*(a1[4] + 56) valueForKey:a1[7]];
  v5[3] = @"value";
  v6[3] = a1[8];
  v5[4] = @"sessionTime";
  LODWORD(v1) = *(a1[4] + 100);
  v6[4] = [MEMORY[0x1E696AD98] numberWithFloat:v1];
  v5[5] = @"sessionID";
  v6[5] = a1[9];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:6];
  *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)setProperty:(id)property forKey:(id)key
{
  if ([key isEqualToString:@"SecureIndicatorState"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntegerValue = [property unsignedIntegerValue];
      if (unsignedIntegerValue == 1)
      {
        [(CBIndicatorAnalyticsModule *)self startTimer];
      }

      else if (unsignedIntegerValue == 4)
      {
        [(CBIndicatorAnalyticsModule *)self stopTimer];
      }
    }
  }

  return 1;
}

- (void)handleNotificationForKey:(id)key withProperty:(id)property
{
  if ([key isEqualToString:@"TrustedLux"])
  {
    [property floatValue];
    self->_trustedLux = v4;
  }
}

@end