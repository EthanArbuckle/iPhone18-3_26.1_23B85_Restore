@interface CBGrimaldiModule
- (BOOL)jasperCoex;
- (BOOL)setProperty:(id)a3 forKey:(id)a4;
- (BOOL)strobeCoex;
- (CBGrimaldiModule)initWithQueue:(id)a3 andEventSource:(id)a4 andSamplingStrategy:(id)a5;
- (id)copyGainChanged;
- (id)copyJasperCoex;
- (id)copyParam:(id)a3;
- (id)copyPropertyForKey:(id)a3;
- (id)copyRearLux;
- (id)copyReliableLux;
- (id)copyStrobeCoex;
- (void)CBAPDSGetCoex;
- (void)clearOutput;
- (void)dealloc;
- (void)grimaldiLuxReceived:(ApplePhotonDetectorServicesLuxInfo *)a3;
- (void)registerNotificationBlock:(id)a3;
- (void)sendNotificationForKey:(id)a3 withValue:(id)a4;
- (void)setGrimaldiLux;
- (void)startWithFrequency:(float)a3 singleSample:(BOOL)a4;
- (void)stop;
- (void)timerCallback;
- (void)unregisterNotificationBlock;
@end

@implementation CBGrimaldiModule

- (id)copyRearLux
{
  if (self->_overriding)
  {
    return [-[NSMutableDictionary objectForKeyedSubscript:](self->_overriddenInput objectForKeyedSubscript:{@"lux", "copy"}];
  }

  else
  {
    return [(CBGrimaldiModule *)self copyReliableLux];
  }
}

- (id)copyReliableLux
{
  lastLux = self->_lastLux;
  if (!self->_coexJasper && !self->_coexStrobe)
  {
    v5 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_currentRLuxOutputDict objectForKeyedSubscript:{@"absolutetime", "longValue"}];
    v4 = mach_absolute_time();
    if (convertMachToNanoSeconds(v4 - v5) / 0xF4240uLL >= 0x1388)
    {
      v3 = 0;
    }

    else
    {
      v3 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_currentRLuxOutputDict objectForKeyedSubscript:{@"lux", "copy"}];
    }

    lastLux = v3;
    MEMORY[0x1E69E5920](self->_lastLux);
    self->_lastLux = v3;
  }

  MEMORY[0x1E69E5928](lastLux);
  return lastLux;
}

- (void)timerCallback
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = self;
  v14 = a2;
  dispatch_assert_queue_V2(self->super._queue);
  if (v15->_provideLux)
  {
    [(CBGrimaldiModule *)v15 setGrimaldiLux];
  }

  if (!v15->_provideLux && v15->_provideCoex)
  {
    [(CBGrimaldiModule *)v15 CBAPDSGetCoex];
  }

  if (v15->_sampleOnce)
  {
    v15->_sampleOnce = 0;
  }

  if (v15->_sampleMultiple)
  {
    if (v15->_started)
    {
      if (v15->_samplingTime == -1)
      {
        if (v15->super._logHandle)
        {
          logHandle = v15->super._logHandle;
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

        v13 = logHandle;
        v12 = OS_LOG_TYPE_FAULT;
        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_FAULT))
        {
          __os_log_helper_16_0_2_4_0_4_0(v16, v15->_sampleOnce, v15->_sampleMultiple);
          _os_log_fault_impl(&dword_1DE8E5000, v13, v12, "Timer callback fired after Grimaldi stopped. sampleOnce: %d, sampleMultiple: %d", v16, 0xEu);
        }
      }

      else
      {
        v2 = dispatch_time(0, v15->_samplingTime);
        queue = v15->super._queue;
        block = MEMORY[0x1E69E9820];
        v7 = -1073741824;
        v8 = 0;
        v9 = __33__CBGrimaldiModule_timerCallback__block_invoke;
        v10 = &unk_1E867B480;
        v11 = v15;
        dispatch_after(v2, queue, &block);
      }
    }

    else
    {
      [(CBGrimaldiModule *)v15 clearOutput];
    }
  }

  else
  {
    [(CBGrimaldiModule *)v15 stop];
  }

  *MEMORY[0x1E69E9840];
}

- (void)setGrimaldiLux
{
  v25 = *MEMORY[0x1E69E9840];
  v23 = self;
  v22 = a2;
  dispatch_assert_queue_V2(self->super._queue);
  v21 = 0;
  v20 = os_signpost_id_generate(v23->super._logHandle);
  if (v23->super._logHandle)
  {
    logHandle = v23->super._logHandle;
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

  v19 = logHandle;
  v18 = 1;
  v17 = v20;
  if (v20 && v17 != -1 && os_signpost_enabled(v19))
  {
    log = v19;
    type = v18;
    spid = v17;
    __os_log_helper_16_0_0(v16);
    _os_signpost_emit_with_name_impl(&dword_1DE8E5000, log, type, spid, "Grimaldi APDSCallback", &unk_1DEAD656F, v16, 2u);
  }

  if (v23->super._logHandle)
  {
    v7 = v23->super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v6 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v6 = init_default_corebrightness_log();
    }

    v7 = v6;
  }

  v15 = v7;
  v14 = 2;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v4 = v15;
    v5 = v14;
    __os_log_helper_16_0_0(v13);
    _os_log_debug_impl(&dword_1DE8E5000, v4, v5, "Requesting lux from APDS", v13, 2u);
  }

  v21 = [(CBGrimaldiEventSource *)v23->_eventSource requestEventOn:v23->super._queue withNsamples:v23->_currentNumSamples withCallback:?];
  if (v21)
  {
    if (v23->super._logHandle)
    {
      v3 = v23->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v2 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v2 = init_default_corebrightness_log();
      }

      v3 = v2;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_0_1_4_0(v24, v21);
      _os_log_error_impl(&dword_1DE8E5000, v3, OS_LOG_TYPE_ERROR, "eventSource::requestEventOn returned %d", v24, 8u);
    }
  }

  *MEMORY[0x1E69E9840];
}

- (id)copyGainChanged
{
  if (self->_overriding)
  {
    return [-[NSMutableDictionary objectForKeyedSubscript:](self->_overriddenInput objectForKeyedSubscript:{@"GainChanged", "copy"}];
  }

  else
  {
    return [-[NSMutableDictionary objectForKeyedSubscript:](self->_currentRLuxOutputDict objectForKeyedSubscript:{@"GainChanged", "copy"}];
  }
}

- (void)stop
{
  if (!self->_sampleOnce)
  {
    self->_started = 0;
  }

  self->_sampleMultiple = 0;
  self->_samplingTime = -1;
}

void __34__CBGrimaldiModule_setGrimaldiLux__block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v13 = a2;
  v12 = a1;
  [*(a1 + 32) grimaldiLuxReceived:a2];
  if (*(*(a1 + 32) + 16))
  {
    v6 = *(*(a1 + 32) + 16);
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

    v6 = inited;
  }

  v11 = v6;
  v10 = 2;
  v9 = *(a1 + 40);
  if (v9 && v9 != -1 && os_signpost_enabled(v11))
  {
    log = v11;
    type = v10;
    spid = v9;
    __os_log_helper_16_0_0(v8);
    _os_signpost_emit_with_name_impl(&dword_1DE8E5000, log, type, spid, "Grimaldi APDSCallback", &unk_1DEAD656F, v8, 2u);
  }
}

- (CBGrimaldiModule)initWithQueue:(id)a3 andEventSource:(id)a4 andSamplingStrategy:(id)a5
{
  v69 = *MEMORY[0x1E69E9840];
  v66 = self;
  v65 = a2;
  v64 = a3;
  v63 = a4;
  v62 = a5;
  v61.receiver = self;
  v61.super_class = CBGrimaldiModule;
  v66 = [(CBModule *)&v61 initWithQueue:a3];
  if (v66)
  {
    v5 = os_log_create(CBGrimaldiModuleName, "default");
    v66->super._logHandle = v5;
    if (!v66->super._logHandle)
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      v60 = inited;
      v59 = 16;
      if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
      {
        log = v60;
        *type = v59;
        buf = v58;
        __os_log_helper_16_0_0(v58);
        _os_log_error_impl(&dword_1DE8E5000, log, type[0], "failed to create log handle", v58, 2u);
      }

      goto LABEL_50;
    }

    if ((CBU_DeviceHasGrimaldi() & 1) == 0)
    {
LABEL_50:
      MEMORY[0x1E69E5920](v66);
      v67 = 0;
      goto LABEL_51;
    }

    v6 = dispatch_queue_create(CBGrimaldiModuleName, 0);
    v66->_workQueue = v6;
    if (!v66->_workQueue)
    {
      if (v66->super._logHandle)
      {
        logHandle = v66->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v35 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v35 = init_default_corebrightness_log();
        }

        logHandle = v35;
      }

      v57 = logHandle;
      v56 = 16;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
      {
        v32 = v57;
        *v33 = v56;
        v34 = v55;
        __os_log_helper_16_0_0(v55);
        _os_log_error_impl(&dword_1DE8E5000, v32, v33[0], "Failed to create dispatch queue", v55, 2u);
      }

      goto LABEL_50;
    }

    v66->_correctionFactor = 1.0;
    if (!v63)
    {
      if (v66->super._logHandle)
      {
        v31 = v66->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v30 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v30 = init_default_corebrightness_log();
        }

        v31 = v30;
      }

      v54 = v31;
      v53 = 0;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v54;
        *v28 = v53;
        v29 = v52;
        __os_log_helper_16_0_0(v52);
        _os_log_impl(&dword_1DE8E5000, v27, v28[0], "Event Source is nil", v52, 2u);
      }

      goto LABEL_50;
    }

    v7 = MEMORY[0x1E69E5928](v63);
    v66->_eventSource = v7;
    if (!v62)
    {
      if (v66->super._logHandle)
      {
        v26 = v66->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v25 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v25 = init_default_corebrightness_log();
        }

        v26 = v25;
      }

      v51 = v26;
      v50 = 0;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v51;
        *v23 = v50;
        v24 = v49;
        __os_log_helper_16_0_0(v49);
        _os_log_impl(&dword_1DE8E5000, v22, v23[0], "Sampling Strategy is nil", v49, 2u);
      }

      goto LABEL_50;
    }

    v8 = MEMORY[0x1E69E5928](v62);
    v66->_samplingStrategy = v8;
    if (v66->super._logHandle)
    {
      v21 = v66->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v20 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v20 = init_default_corebrightness_log();
      }

      v21 = v20;
    }

    v48 = v21;
    v47 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v48;
      *v18 = v47;
      samplingStrategy = v66->_samplingStrategy;
      eventSource = v66->_eventSource;
      v19 = v68;
      __os_log_helper_16_2_2_8_64_8_64(v68, samplingStrategy, eventSource);
      _os_log_impl(&dword_1DE8E5000, v48, v47, "Grimaldi init: %@, %@", v68, 0x16u);
    }

    workQueue = v66->_workQueue;
    block = MEMORY[0x1E69E9820];
    v42 = -1073741824;
    v43 = 0;
    v44 = __69__CBGrimaldiModule_initWithQueue_andEventSource_andSamplingStrategy___block_invoke;
    v45 = &unk_1E867B480;
    v46 = v66;
    dispatch_async(workQueue, &block);
    v66->_samplingTime = -1;
    v66->_provideLux = 1;
    v66->_provideCoex = 0;
    v12 = [v62 getInitialNumberOfSamples];
    v66->_currentNumSamples = v12;
    v66->_coexStrobe = 0;
    v66->_coexJasper = 0;
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v66->_currentRLuxOutputDict = v13;
    v14 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"lux", @"gain", @"absoluteTime", @"numSamples", @"StrobeCoex", @"JasperCoex", 0}];
    v66->_validKeys = v14;
  }

  v67 = v66;
LABEL_51:
  v16 = v67;
  *MEMORY[0x1E69E9840];
  return v67;
}

void __69__CBGrimaldiModule_initWithQueue_andEventSource_andSamplingStrategy___block_invoke(uint64_t a1)
{
  v12[2] = a1;
  v12[1] = a1;
  v12[0] = 0;
  v11 = [*(*(a1 + 32) + 104) getGlobalCorrectionFactor:v12];
  v1 = *(*(a1 + 32) + 24);
  block = MEMORY[0x1E69E9820];
  v4 = -1073741824;
  v5 = 0;
  v6 = __69__CBGrimaldiModule_initWithQueue_andEventSource_andSamplingStrategy___block_invoke_2;
  v7 = &unk_1E867BF80;
  v10 = v11;
  v9 = v12[0];
  v8 = *(a1 + 32);
  dispatch_sync(v1, &block);
}

void __69__CBGrimaldiModule_initWithQueue_andEventSource_andSamplingStrategy___block_invoke_2(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 48) && *(a1 + 40) > 0.5)
  {
    *(*(a1 + 32) + 80) = *(a1 + 40);
  }

  if (*(*(a1 + 32) + 16))
  {
    v2 = *(*(a1 + 32) + 16);
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

    v2 = inited;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_2_8_0_8_0(v4, *(*(a1 + 32) + 80), *(a1 + 40));
    _os_log_impl(&dword_1DE8E5000, v2, OS_LOG_TYPE_DEFAULT, "Grimaldi init: correction factor = %f (found %f)", v4, 0x16u);
  }

  *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  MEMORY[0x1E69E5920](self->_eventSource);
  if (v5->super._logHandle)
  {
    MEMORY[0x1E69E5920](v5->super._logHandle);
    v5->super._logHandle = 0;
  }

  MEMORY[0x1E69E5920](v5->_workQueue);
  MEMORY[0x1E69E5920](v5->_currentRLuxOutputDict);
  MEMORY[0x1E69E5920](v5->_lastRLuxOutputDict);
  MEMORY[0x1E69E5920](v5->_overriddenInput);
  *&v2 = MEMORY[0x1E69E5920](v5->_validKeys).n128_u64[0];
  v3.receiver = v5;
  v3.super_class = CBGrimaldiModule;
  [(CBModule *)&v3 dealloc];
}

- (void)startWithFrequency:(float)a3 singleSample:(BOOL)a4
{
  v4 = a3;
  if (a4)
  {
    self->_sampleOnce = 1;
  }

  else
  {
    self->_sampleMultiple = 1;
  }

  if (!self->_started)
  {
    if (a3 <= 0.0)
    {
      v4 = 1.0;
    }

    self->_samplingTime = (1000000000.0 / v4);
    self->_started = 1;
    [(CBGrimaldiModule *)self timerCallback];
  }
}

- (void)clearOutput
{
  v10 = self;
  v9 = a2;
  [(NSMutableDictionary *)self->_currentRLuxOutputDict removeAllObjects];
  if (v10->super._logHandle)
  {
    logHandle = v10->super._logHandle;
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

  v8 = logHandle;
  v7 = 2;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    log = v8;
    type = v7;
    __os_log_helper_16_0_0(v6);
    _os_log_debug_impl(&dword_1DE8E5000, log, type, "Grimaldi: cleared output", v6, 2u);
  }

  MEMORY[0x1E69E5920](v10->_lastLux);
  v10->_lastLux = 0;
}

- (id)copyPropertyForKey:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->super._logHandle)
  {
    logHandle = self->super._logHandle;
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

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v15, a3);
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "copyPropertyForKey called with key: %@", v15, 0xCu);
  }

  v10 = 0;
  if ([a3 isEqualToString:@"RLuxOutput"])
  {
    if (self->super._logHandle)
    {
      v7 = self->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v6 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v6 = init_default_corebrightness_log();
      }

      v7 = v6;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v14, self->_currentRLuxOutputDict);
      _os_log_debug_impl(&dword_1DE8E5000, v7, OS_LOG_TYPE_DEBUG, "copyPropertyForKey returning value: %@", v14, 0xCu);
    }

    v10 = [(NSMutableDictionary *)self->_currentRLuxOutputDict copy];
  }

  else if (([a3 isEqualToString:@"RLuxOverride"] & 1) != 0 && self->_overriding)
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:self->_overriddenInput copyItems:1];
    if (self->super._logHandle)
    {
      v5 = self->super._logHandle;
    }

    else
    {
      v4 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      v5 = v4;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v13, self->_overriddenInput);
      _os_log_debug_impl(&dword_1DE8E5000, v5, OS_LOG_TYPE_DEBUG, "copyPropertyForKey returning value: %@", v13, 0xCu);
    }
  }

  *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)setProperty:(id)a3 forKey:(id)a4
{
  v55 = *MEMORY[0x1E69E9840];
  v50 = self;
  v49 = a2;
  v48 = a3;
  v47 = a4;
  if ([a4 isEqualToString:@"RLuxOverride"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v50->_overriding = 1;
      context = objc_autoreleasePoolPush();
      [objc_msgSend(v48 objectForKeyedSubscript:{@"lux", "floatValue"}];
      v46 = v4;
      [objc_msgSend(v48 objectForKeyedSubscript:{@"gain", "floatValue"}];
      v45 = v5;
      v44 = [objc_msgSend(v48 objectForKeyedSubscript:{@"numsamples", "integerValue"}];
      v43 = [objc_msgSend(v48 objectForKeyedSubscript:{@"absolutetime", "longValue"}];
      v42 = [objc_msgSend(v48 objectForKeyedSubscript:{@"coexflags", "integerValue"}];
      v41 = (v42 & 1) != 0;
      v40 = (v42 & 2) != 0;
      v39 = (v42 & 4) != 0;
      if (v50->super._logHandle)
      {
        logHandle = v50->super._logHandle;
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

      v38 = logHandle;
      v37 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_7_8_0_8_0_4_0_8_0_4_0_4_0_4_0(v54, COERCE__INT64(v46), COERCE__INT64(v45), v44, v43, v41, v40, v39);
        _os_log_debug_impl(&dword_1DE8E5000, v38, v37, "rLux: %f, gain: %f, numSamples: %d, rLuxAbsoluteTime: %llu, StrobeOn? %d JasperOn? %d GainChange? %d", v54, 0x38u);
      }

      MEMORY[0x1E69E5920](v50->_overriddenInput);
      v50->_overriddenInput = objc_alloc_init(MEMORY[0x1E695DF90]);
      *&v6 = v46;
      -[NSMutableDictionary setValue:forKey:](v50->_overriddenInput, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithFloat:v6], @"lux");
      *&v7 = v45;
      -[NSMutableDictionary setValue:forKey:](v50->_overriddenInput, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithFloat:v7], @"gain");
      -[NSMutableDictionary setValue:forKey:](v50->_overriddenInput, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithInteger:v44], @"numsamples");
      -[NSMutableDictionary setValue:forKey:](v50->_overriddenInput, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithLong:v43], @"absolutetime");
      -[NSMutableDictionary setValue:forKey:](v50->_overriddenInput, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithBool:v41], @"StrobeCoex");
      -[NSMutableDictionary setValue:forKey:](v50->_overriddenInput, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithBool:v40], @"JasperCoex");
      -[NSMutableDictionary setValue:forKey:](v50->_overriddenInput, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithBool:v39], @"GainChanged");
      -[NSMutableDictionary setValue:forKey:](v50->_overriddenInput, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithInt:0], @"status");
      if (v50->super._logHandle)
      {
        v19 = v50->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v18 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v18 = init_default_corebrightness_log();
        }

        v19 = v18;
      }

      v36 = v19;
      v35 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_64(v53, v50->_overriddenInput);
        _os_log_impl(&dword_1DE8E5000, v36, v35, "Overridden input dict: %@", v53, 0xCu);
      }

      objc_autoreleasePoolPop(context);
    }
  }

  else if ([v47 isEqualToString:@"RLuxOverrideEnabled"])
  {
    v50->_overriding = [v48 BOOLValue];
    if (v50->super._logHandle)
    {
      v17 = v50->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v16 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v16 = init_default_corebrightness_log();
      }

      v17 = v16;
    }

    v34 = v17;
    v33 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_4_0(v52, v50->_overriding);
      _os_log_impl(&dword_1DE8E5000, v34, v33, "Setting rLuxOverride to %d", v52, 8u);
    }
  }

  else if ([v47 isEqualToString:@"RLuxSampleWithMaxAge"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v48 floatValue];
      v32 = v8;
      if (v50->super._logHandle)
      {
        v15 = v50->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v14 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v14 = init_default_corebrightness_log();
        }

        v15 = v14;
      }

      v31 = v15;
      v30 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_1_8_0(v51, COERCE__INT64(v32));
        _os_log_impl(&dword_1DE8E5000, v31, v30, "Requesting Sample with age < %f", v51, 0xCu);
      }

      v29 = 0;
      if ([(NSDictionary *)v50->_lastRLuxOutputDict objectForKeyedSubscript:@"absolutetime"])
      {
        v28 = [-[NSDictionary objectForKeyedSubscript:](v50->_lastRLuxOutputDict objectForKeyedSubscript:{@"absolutetime", "longValue"}];
        v27 = mach_absolute_time();
        v26 = convertMachToNanoSeconds(v27 - v28) / 0xF4240uLL;
        v29 = v26 < (v32 * 1000.0);
      }

      if (v29)
      {
        [(CBGrimaldiModule *)v50 sendNotificationForKey:@"RLuxOutput" withValue:v50->_lastRLuxOutputDict];
      }

      else
      {
        if (v50->super._logHandle)
        {
          v13 = v50->super._logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v12 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v12 = init_default_corebrightness_log();
          }

          v13 = v12;
        }

        oslog = v13;
        v24 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v10 = oslog;
          v11 = v24;
          __os_log_helper_16_0_0(v23);
          _os_log_impl(&dword_1DE8E5000, v10, v11, "Grimaldi: no sample. Sarting single sampling", v23, 2u);
        }

        [(CBGrimaldiModule *)v50 startSingleSample];
      }
    }
  }

  *MEMORY[0x1E69E9840];
  return 0;
}

- (void)registerNotificationBlock:(id)a3
{
  [(CBGrimaldiModule *)self unregisterNotificationBlock];
  if (a3)
  {
    self->super._notificationBlock = _Block_copy(a3);
  }
}

- (void)unregisterNotificationBlock
{
  if (self->super._notificationBlock)
  {
    _Block_release(self->super._notificationBlock);
    self->super._notificationBlock = 0;
  }
}

- (void)sendNotificationForKey:(id)a3 withValue:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  if ([a3 isEqualToString:@"RLuxOutput"])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && a4 != self->_lastRLuxOutputDict)
    {
      MEMORY[0x1E69E5920](self->_lastRLuxOutputDict);
      self->_lastRLuxOutputDict = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:a4];
      if (self->super._logHandle)
      {
        logHandle = self->super._logHandle;
      }

      else
      {
        v4 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
        logHandle = v4;
      }

      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_1_8_64(v8, a4);
        _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "RearLuxOutput %@", v8, 0xCu);
      }
    }
  }

  if (self->super._notificationBlock)
  {
    (*(self->super._notificationBlock + 2))();
  }

  *MEMORY[0x1E69E9840];
}

- (void)grimaldiLuxReceived:(ApplePhotonDetectorServicesLuxInfo *)a3
{
  v56 = *MEMORY[0x1E69E9840];
  v52 = self;
  v51 = a2;
  v50 = a3;
  dispatch_assert_queue_V2(self->super._queue);
  if (v50->var4)
  {
    if (v52->super._logHandle)
    {
      logHandle = v52->super._logHandle;
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

    v49 = logHandle;
    v48 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      v3 = mach_error_string(v50->var4);
      __os_log_helper_16_2_1_8_32(v55, v3);
      _os_log_error_impl(&dword_1DE8E5000, v49, v48, "Could not get rLuxSamples: %s", v55, 0xCu);
    }

    context = objc_autoreleasePoolPush();
    [(NSMutableDictionary *)v52->_currentRLuxOutputDict removeAllObjects];
    -[NSMutableDictionary setValue:forKey:](v52->_currentRLuxOutputDict, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithInt:v50->var4], @"status");
    v47 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v52->_currentRLuxOutputDict];
    [(CBGrimaldiModule *)v52 sendNotificationForKey:@"RLuxOutput" withValue:v47];
    MEMORY[0x1E69E5920](v47);
    objc_autoreleasePoolPop(context);
    goto LABEL_61;
  }

  if (v52->_overriding)
  {
    [(CBGrimaldiModule *)v52 sendNotificationForKey:@"RLuxOutput" withValue:v52->_overriddenInput];
    [(CBGrimaldiModule *)v52 sendNotificationForKey:@"RLuxOverride" withValue:v52->_overriddenInput];
    if (v52->super._logHandle)
    {
      v28 = v52->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v27 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v27 = init_default_corebrightness_log();
      }

      v28 = v27;
    }

    v46 = v28;
    v45 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      [-[NSMutableDictionary objectForKeyedSubscript:](v52->_overriddenInput objectForKeyedSubscript:{@"lux", "floatValue"}];
      *&v26 = v4;
      [-[NSMutableDictionary objectForKeyedSubscript:](v52->_overriddenInput objectForKeyedSubscript:{@"gain", "floatValue"}];
      __os_log_helper_16_0_7_8_0_8_0_4_0_8_0_4_0_4_0_4_0(v54, v26, COERCE__INT64(v5), [-[NSMutableDictionary objectForKeyedSubscript:](v52->_overriddenInput objectForKeyedSubscript:{@"numsamples", "intValue"}], objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](v52->_overriddenInput, "objectForKeyedSubscript:", @"absolutetime"), "longValue"), objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](v52->_overriddenInput, "objectForKeyedSubscript:", @"StrobeCoex"), "BOOLValue"), objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](v52->_overriddenInput, "objectForKeyedSubscript:", @"JasperCoex"), "BOOLValue"), objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](v52->_overriddenInput, "objectForKeyedSubscript:", @"GainChanged"), "BOOLValue"));
      _os_log_debug_impl(&dword_1DE8E5000, v46, v45, "[Overriding] Rear Lux Dictionary: lux = %f, gain = %f, numSamples= %d, absoluteTime = %ld, StrobeCoex = %d, JasperCoex = %d, GainChanged = %d", v54, 0x38u);
    }

    goto LABEL_61;
  }

  if (v50->var5)
  {
    v21 = objc_autoreleasePoolPush();
    if (!v50->var5)
    {
      __assert_rtn("[CBGrimaldiModule grimaldiLuxReceived:]", "CBGrimaldiModule.m", 717, "luxInfo->numSamples > 0");
    }

    v41 = v50->var5 - 1;
    v40 = v50->var3[v41];
    v52->_coexStrobe = (v40 & 1) != 0;
    v52->_coexJasper = (v40 & 2) != 0;
    v39 = (v50->var3[v50->var5 - 1] & 4) != 0;
    while (1)
    {
      v20 = 0;
      if (((v41 - 1) & 0x80000000) == 0)
      {
        v20 = (v50->var3[v41] & 4) != 0;
      }

      if (!v20)
      {
        break;
      }

      --v41;
    }

    v6 = v50->var0[v41] * v52->_correctionFactor;
    v38 = v6;
    v37 = v50->var3[v41];
    v36 = (v37 & 4) != 0;
    if ((v37 & 4) != 0)
    {
      v35 = [(CBGrimaldiModule *)v52 copyReliableLux];
      if (!v35)
      {
        if (v52->super._logHandle)
        {
          v19 = v52->super._logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v18 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v18 = init_default_corebrightness_log();
          }

          v19 = v18;
        }

        v34 = v19;
        v33 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v16 = v34;
          v17 = v33;
          __os_log_helper_16_0_0(v32);
          _os_log_error_impl(&dword_1DE8E5000, v16, v17, "First sample received with gainChange=1 and no reliable lux is available", v32, 2u);
        }

        goto LABEL_60;
      }

      [v35 floatValue];
      v38 = v7;
    }

    -[NSMutableDictionary setValue:forKey:](v52->_currentRLuxOutputDict, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithBool:v52->_coexStrobe], @"StrobeCoex");
    -[NSMutableDictionary setValue:forKey:](v52->_currentRLuxOutputDict, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithBool:v52->_coexJasper], @"JasperCoex");
    -[NSMutableDictionary setValue:forKey:](v52->_currentRLuxOutputDict, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithInt:v50->var4], @"status");
    -[NSMutableDictionary setValue:forKey:](v52->_currentRLuxOutputDict, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithUnsignedChar:v50->var5], @"numsamples");
    -[NSMutableDictionary setValue:forKey:](v52->_currentRLuxOutputDict, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v50->var2[v41]], @"absolutetime");
    *&v8 = v38;
    -[NSMutableDictionary setValue:forKey:](v52->_currentRLuxOutputDict, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithFloat:v8], @"lux");
    *&v9 = v50->var1[v41];
    -[NSMutableDictionary setValue:forKey:](v52->_currentRLuxOutputDict, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithFloat:v9], @"gain");
    -[NSMutableDictionary setValue:forKey:](v52->_currentRLuxOutputDict, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithBool:v39], @"GainChanged");
    -[CBGrimaldiModule sendNotificationForKey:withValue:](v52, "sendNotificationForKey:withValue:", @"RLuxOutput", [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v52->_currentRLuxOutputDict]);
    if (v52->super._logHandle)
    {
      v15 = v52->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v14 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v14 = init_default_corebrightness_log();
      }

      v15 = v14;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [-[NSMutableDictionary objectForKeyedSubscript:](v52->_currentRLuxOutputDict objectForKeyedSubscript:{@"lux", "floatValue"}];
      *&v13 = v11;
      [-[NSMutableDictionary objectForKeyedSubscript:](v52->_currentRLuxOutputDict objectForKeyedSubscript:{@"gain", "floatValue"}];
      __os_log_helper_16_0_9_8_0_8_0_4_0_8_0_4_0_4_0_4_0_4_0_4_0(v53, v13, COERCE__INT64(v12), [-[NSMutableDictionary objectForKeyedSubscript:](v52->_currentRLuxOutputDict objectForKeyedSubscript:{@"numsamples", "intValue"}], objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](v52->_currentRLuxOutputDict, "objectForKeyedSubscript:", @"absolutetime"), "longValue"), objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](v52->_currentRLuxOutputDict, "objectForKeyedSubscript:", @"StrobeCoex"), "BOOLValue"), objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](v52->_currentRLuxOutputDict, "objectForKeyedSubscript:", @"JasperCoex"), "BOOLValue"), objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](v52->_currentRLuxOutputDict, "objectForKeyedSubscript:", @"GainChanged"), "BOOLValue"), v41 + 1, v50->var5);
      _os_log_debug_impl(&dword_1DE8E5000, v15, OS_LOG_TYPE_DEBUG, "Rear Lux Dictionary: lux = %f, gain = %f, numSamples= %d, absoluteTime = %ld, StrobeCoex = %d, JasperCoex = %d, GainChanged = %d (sample %d/%d)", v53, 0x44u);
    }

    *&v10 = v38;
    v52->_currentNumSamples = [(CBGrimaldiSamplingStrategy *)v52->_samplingStrategy getNextNumberOfSamplesFromNewLux:v52->_lastLux withLastLux:v10];
LABEL_60:
    objc_autoreleasePoolPop(v21);
    goto LABEL_61;
  }

  if (v52->super._logHandle)
  {
    v25 = v52->super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v24 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v24 = init_default_corebrightness_log();
    }

    v25 = v24;
  }

  oslog = v25;
  v43 = OS_LOG_TYPE_FAULT;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
  {
    v22 = oslog;
    v23 = v43;
    __os_log_helper_16_0_0(v42);
    _os_log_fault_impl(&dword_1DE8E5000, v22, v23, "APDS framework didn't provide the requested sample", v42, 2u);
  }

LABEL_61:
  *MEMORY[0x1E69E9840];
}

- (void)CBAPDSGetCoex
{
  v46 = *MEMORY[0x1E69E9840];
  v43 = self;
  v42 = a2;
  v41 = 0;
  v40 = os_signpost_id_generate(self->super._logHandle);
  if (v43->super._logHandle)
  {
    logHandle = v43->super._logHandle;
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

  v39 = logHandle;
  v38 = 1;
  v37 = v40;
  if (v40 && v37 != -1 && os_signpost_enabled(v39))
  {
    log = v39;
    type = v38;
    spid = v37;
    __os_log_helper_16_0_0(v36);
    _os_signpost_emit_with_name_impl(&dword_1DE8E5000, log, type, spid, "Grimaldi GetCoexFlags", &unk_1DEAD656F, v36, 2u);
  }

  v35 = [(CBGrimaldiEventSource *)v43->_eventSource getCoexFlags:&v41];
  if (v43->super._logHandle)
  {
    v18 = v43->super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v17 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v17 = init_default_corebrightness_log();
    }

    v18 = v17;
  }

  v34 = v18;
  v33 = 2;
  v32 = v40;
  if (v40 && v32 != -1 && os_signpost_enabled(v34))
  {
    v14 = v34;
    v15 = v33;
    v16 = v32;
    __os_log_helper_16_0_0(v31);
    _os_signpost_emit_with_name_impl(&dword_1DE8E5000, v14, v15, v16, "Grimaldi GetCoexFlags", &unk_1DEAD656F, v31, 2u);
  }

  if (v35)
  {
    if (v43->super._logHandle)
    {
      v9 = v43->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v8 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v8 = init_default_corebrightness_log();
      }

      v9 = v8;
    }

    v26 = v9;
    v25 = 16;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v6 = v26;
      v7 = v25;
      __os_log_helper_16_0_0(v24);
      _os_log_error_impl(&dword_1DE8E5000, v6, v7, "Failed to get coex flags using APDSGetCoexFunction.", v24, 2u);
    }
  }

  else
  {
    if (v43->_coexStrobe != (v41 & 1))
    {
      v43->_coexStrobe = (v41 & 1) != 0;
      if (v43->super._logHandle)
      {
        v13 = v43->super._logHandle;
      }

      else
      {
        v12 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
        v13 = v12;
      }

      v30 = v13;
      v29 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        if (v41)
        {
          v2 = "ON";
        }

        else
        {
          v2 = "OFF";
        }

        if ((v41 & 2) != 0)
        {
          v3 = "ON";
        }

        else
        {
          v3 = "OFF";
        }

        __os_log_helper_16_2_2_8_32_8_32(v45, v2, v3);
        _os_log_impl(&dword_1DE8E5000, v30, v29, "APDSGetCoex: Strobe %s, Lidar %s", v45, 0x16u);
      }
    }

    if (v43->_coexJasper != (v41 & 2))
    {
      v43->_coexJasper = (v41 & 2) != 0;
      if (v43->super._logHandle)
      {
        v11 = v43->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v10 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v10 = init_default_corebrightness_log();
        }

        v11 = v10;
      }

      v28 = v11;
      v27 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        if (v41)
        {
          v4 = "ON";
        }

        else
        {
          v4 = "OFF";
        }

        if ((v41 & 2) != 0)
        {
          v5 = "ON";
        }

        else
        {
          v5 = "OFF";
        }

        __os_log_helper_16_2_2_8_32_8_32(v44, v4, v5);
        _os_log_impl(&dword_1DE8E5000, v28, v27, "APDSGetCoex: Strobe %s, Lidar %s", v44, 0x16u);
      }
    }
  }

  *MEMORY[0x1E69E9840];
}

- (id)copyParam:(id)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  if ([a3 isEqualToString:@"lux"])
  {
    return [(CBGrimaldiModule *)v13 copyRearLux];
  }

  if ([v11 isEqualToString:@"GainChanged"])
  {
    return [(CBGrimaldiModule *)v13 copyGainChanged];
  }

  if ([v11 isEqualToString:@"StrobeCoex"])
  {
    return [(CBGrimaldiModule *)v13 copyStrobeCoex];
  }

  if ([v11 isEqualToString:@"JasperCoex"])
  {
    return [(CBGrimaldiModule *)v13 copyJasperCoex];
  }

  if (v13->super._logHandle)
  {
    logHandle = v13->super._logHandle;
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

  v10 = logHandle;
  v9 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    log = v10;
    type = v9;
    __os_log_helper_16_0_0(v8);
    _os_log_impl(&dword_1DE8E5000, log, type, "Unsupported key! Exiting...", v8, 2u);
  }

  return 0;
}

- (id)copyStrobeCoex
{
  if (self->_overriding)
  {
    return [-[NSMutableDictionary objectForKeyedSubscript:](self->_overriddenInput objectForKeyedSubscript:{@"StrobeCoex", "copy"}];
  }

  else
  {
    return [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:self->_coexStrobe];
  }
}

- (id)copyJasperCoex
{
  if (self->_overriding)
  {
    return [-[NSMutableDictionary objectForKeyedSubscript:](self->_overriddenInput objectForKeyedSubscript:{@"JasperCoex", "copy"}];
  }

  else
  {
    return [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:self->_coexJasper];
  }
}

- (BOOL)strobeCoex
{
  if (self->_overriding)
  {
    coexStrobe = [-[NSMutableDictionary objectForKeyedSubscript:](self->_overriddenInput objectForKeyedSubscript:{@"StrobeCoex", "BOOLValue"}];
  }

  else
  {
    coexStrobe = self->_coexStrobe;
  }

  return coexStrobe != 0;
}

- (BOOL)jasperCoex
{
  if (self->_overriding)
  {
    coexJasper = [-[NSMutableDictionary objectForKeyedSubscript:](self->_overriddenInput objectForKeyedSubscript:{@"JasperCoex", "BOOLValue"}];
  }

  else
  {
    coexJasper = self->_coexJasper;
  }

  return coexJasper != 0;
}

@end