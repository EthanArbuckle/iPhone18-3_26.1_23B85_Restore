@interface CBRampManager
- (BOOL)hasRampRunningForIdentifier:(id)a3;
- (CBRampManager)initWithClockSource:(id)a3;
- (CBRampManager)initWithClockSource:(id)a3 andDisplayId:(unint64_t)a4;
- (CBRampManager)initWithClockSource:(id)a3 andLogSubsystem:(id)a4;
- (float)remainingLength;
- (id)copyStatusInfo;
- (id)insertNewEternalRampFrequency:(float)a3 startRamp:(BOOL)a4 identifier:(id)a5 progressCallback:(id)a6;
- (id)insertNewRampOrigin:(float)a3 target:(float)a4 length:(float)a5 frequency:(float)a6 startRamp:(BOOL)a7 identifier:(id)a8 progressCallback:(id)a9;
- (id)rampForIdentifier:(id)a3;
- (void)activate;
- (void)cancel;
- (void)dealloc;
- (void)disableClocking;
- (void)enableClocking;
- (void)generateRamp;
- (void)insertRamp:(id)a3 identifier:(id)a4 reevaluate:(BOOL)a5 eternal:(BOOL)a6;
- (void)reevaluateClocking;
- (void)removeAllRamps;
- (void)removeRampWithIdentifier:(id)a3;
- (void)scheduleWithDispatchQueue:(id)a3;
- (void)setTimer;
- (void)stopTimer;
- (void)updateRampsForTimestamp:(double)a3;
@end

@implementation CBRampManager

- (float)remainingLength
{
  v10 = self;
  v9 = a2;
  v4 = 0;
  v5 = &v4;
  v6 = 0x20000000;
  v7 = 32;
  v8 = 0;
  if ([(CBRampManager *)self hasAnyActiveRamp])
  {
    [(NSMutableDictionary *)v10->_ramps enumerateKeysAndObjectsUsingBlock:?];
  }

  v3 = v5[6];
  _Block_object_dispose(&v4, 8);
  return v3;
}

- (CBRampManager)initWithClockSource:(id)a3
{
  context = objc_autoreleasePoolPush();
  v5 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v7 = -[CBRampManager initWithClockSource:andLogSubsystem:](self, "initWithClockSource:andLogSubsystem:", a3, [v5 stringWithFormat:@"%s.%@", "com.apple.CoreBrightness", NSStringFromClass(v3)]);
  objc_autoreleasePoolPop(context);
  return v7;
}

- (CBRampManager)initWithClockSource:(id)a3 andDisplayId:(unint64_t)a4
{
  context = objc_autoreleasePoolPush();
  v6 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v8 = -[CBRampManager initWithClockSource:andLogSubsystem:](self, "initWithClockSource:andLogSubsystem:", a3, [v6 stringWithFormat:@"%s.%@.%lu", "com.apple.CoreBrightness", NSStringFromClass(v4), a4]);
  objc_autoreleasePoolPop(context);
  return v8;
}

- (CBRampManager)initWithClockSource:(id)a3 andLogSubsystem:(id)a4
{
  v16 = self;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12.receiver = self;
  v12.super_class = CBRampManager;
  v16 = [(CBRampManager *)&v12 init];
  if (v16)
  {
    v4 = os_log_create([v13 cStringUsingEncoding:1], "default");
    v16->_logHandle = v4;
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v16->_ramps = v5;
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v16->_eternalRamps = v6;
    info = 0;
    mach_timebase_info(&info);
    LODWORD(v8) = info.denom;
    LODWORD(v7) = info.numer;
    v16->_sMachTimebaseFactor = v7 / v8 * 0.000000001;
    v9 = MEMORY[0x1E69E5928](v14);
    v16->_frameLink = v9;
    if (v16->_frameLink)
    {
      v16->_enableFrameSynchronisation = 1;
    }

    else
    {
      v16->_enableFrameSynchronisation = 0;
    }

    v16->_liveUpdates = 1;
  }

  return v16;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  if (self->_logHandle)
  {
    MEMORY[0x1E69E5920](v5->_logHandle);
  }

  if (v5->_clockHandler)
  {
    _Block_release(v5->_clockHandler);
  }

  if (v5->_rampDoneCallback)
  {
    _Block_release(v5->_rampDoneCallback);
  }

  if (v5->_frameLink)
  {
    MEMORY[0x1E69E5920](v5->_frameLink);
  }

  MEMORY[0x1E69E5920](v5->_ramps);
  *&v2 = MEMORY[0x1E69E5920](v5->_eternalRamps).n128_u64[0];
  if (v5->_queue)
  {
    dispatch_release(v5->_queue);
    v5->_queue = 0;
  }

  v3.receiver = v5;
  v3.super_class = CBRampManager;
  [(CBRampManager *)&v3 dealloc];
}

- (void)activate
{
  if (self->_enableFrameSynchronisation && self->_frameLink)
  {
    [(CBClockSource *)self->_frameLink setFrameNotificationBlock:?];
    [(CBClockSource *)self->_frameLink scheduleWithDispatchQueue:self->_queue];
  }

  self->_activated = 1;
  [(CBRampManager *)self reevaluateClocking];
}

- (void)cancel
{
  [(CBRampManager *)self removeAllRamps];
  if (self->_enableFrameSynchronisation)
  {
    [(CBClockSource *)self->_frameLink invalidate];
  }

  self->_activated = 0;
}

- (void)scheduleWithDispatchQueue:(id)a3
{
  if (self->_queue)
  {
    dispatch_release(self->_queue);
    self->_queue = 0;
  }

  if (a3)
  {
    self->_queue = a3;
    dispatch_retain(self->_queue);
    [(CBClockSource *)self->_frameLink scheduleWithDispatchQueue:a3];
  }
}

- (void)reevaluateClocking
{
  v27 = *MEMORY[0x1E69E9840];
  v25 = self;
  v24 = a2;
  v19 = 0;
  v20 = &v19;
  v21 = 0x20000000;
  v22 = 32;
  v23 = 0;
  if (self->_activated)
  {
    ramps = v25->_ramps;
    v13 = MEMORY[0x1E69E9820];
    v14 = -1073741824;
    v15 = 0;
    v16 = __35__CBRampManager_reevaluateClocking__block_invoke;
    v17 = &unk_1E867C740;
    v18 = &v19;
    [(NSMutableDictionary *)ramps enumerateKeysAndObjectsUsingBlock:?];
    memset(__b, 0, sizeof(__b));
    obj = [(NSMutableDictionary *)v25->_eternalRamps allValues];
    v9 = [obj countByEnumeratingWithState:__b objects:v26 count:16];
    if (v9)
    {
      v6 = *__b[2];
      v7 = 0;
      v8 = v9;
      while (1)
      {
        v5 = v7;
        if (*__b[2] != v6)
        {
          objc_enumerationMutation(obj);
        }

        v12 = 0;
        v12 = *(__b[1] + 8 * v7);
        [v12 frequency];
        if (*&v3 > *(v20 + 6))
        {
          [v12 frequency];
          *(v20 + 6) = v4;
        }

        ++v7;
        if (v5 + 1 >= v8)
        {
          v7 = 0;
          v8 = [obj countByEnumeratingWithState:__b objects:v26 count:16];
          if (!v8)
          {
            break;
          }
        }
      }
    }

    if (*(v20 + 6) != v25->_requiredFrequency)
    {
      v25->_requiredFrequency = *(v20 + 6);
      [(CBRampManager *)v25 enableClocking];
    }
  }

  _Block_object_dispose(&v19, 8);
  *MEMORY[0x1E69E9840];
}

uint64_t __35__CBRampManager_reevaluateClocking__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  [a3 frequency];
  result = a1;
  if (v4 > *(*(*(a1 + 32) + 8) + 24))
  {
    result = [a3 frequency];
    *(*(*(a1 + 32) + 8) + 24) = v5;
  }

  return result;
}

- (void)insertRamp:(id)a3 identifier:(id)a4 reevaluate:(BOOL)a5 eternal:(BOOL)a6
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_logHandle)
  {
    logHandle = self->_logHandle;
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

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v13, a4, a3);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Insert ramp: %@ | %@", v13, 0x16u);
  }

  if ([(CBRampManager *)self hasRampRunningForIdentifier:a4])
  {
    [objc_msgSend(-[NSMutableDictionary objectForKey:](self->_ramps objectForKey:{a4), "trackedAnimation"), "stopTracking"}];
  }

  if (a6)
  {
    [(NSMutableDictionary *)self->_eternalRamps setObject:a3 forKeyedSubscript:a4];
  }

  else
  {
    [(NSMutableDictionary *)self->_ramps setObject:a3 forKeyedSubscript:a4];
  }

  if (a5)
  {
    [(CBRampManager *)self reevaluateClocking];
  }

  *MEMORY[0x1E69E9840];
}

- (id)insertNewRampOrigin:(float)a3 target:(float)a4 length:(float)a5 frequency:(float)a6 startRamp:(BOOL)a7 identifier:(id)a8 progressCallback:(id)a9
{
  v9 = [CBRamp alloc];
  *&v10 = a3;
  *&v11 = a4;
  *&v12 = a5;
  *&v13 = a6;
  v15 = [(CBRamp *)v9 initWithOrigin:a8 target:v10 length:v11 frequency:v12 identifier:v13];
  [(CBRamp *)v15 setRampProgressCallback:a9];
  [(CBRampManager *)self insertRamp:v15 identifier:a8 reevaluate:a7];
  MEMORY[0x1E69E5920](v15);
  return v15;
}

- (id)insertNewEternalRampFrequency:(float)a3 startRamp:(BOOL)a4 identifier:(id)a5 progressCallback:(id)a6
{
  v6 = [CBRamp alloc];
  *&v7 = a3;
  LODWORD(v8) = 1.0;
  LODWORD(v9) = 2139095040;
  v11 = [(CBRamp *)v6 initWithOrigin:a5 target:0.0 length:v8 frequency:v9 identifier:v7];
  [(CBRamp *)v11 setRampProgressCallback:a6];
  [(CBRampManager *)self insertRamp:v11 identifier:a5 reevaluate:a4 eternal:1];
  MEMORY[0x1E69E5920](v11);
  return v11;
}

- (void)removeRampWithIdentifier:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v17 = self;
  v16 = a2;
  v15 = a3;
  v14 = [(NSMutableDictionary *)self->_ramps objectForKey:a3];
  if (!v14)
  {
    v14 = [(NSMutableDictionary *)v17->_eternalRamps objectForKey:v15];
  }

  if (v17->_logHandle)
  {
    logHandle = v17->_logHandle;
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
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v18, v14, v15);
    _os_log_impl(&dword_1DE8E5000, v13, v12, "remove ramp: %@ | %@", v18, 0x16u);
  }

  [objc_msgSend(v14 "trackedAnimation")];
  [(NSMutableDictionary *)v17->_ramps removeObjectForKey:v15];
  [(NSMutableDictionary *)v17->_eternalRamps removeObjectForKey:v15];
  if ([(NSMutableDictionary *)v17->_ramps count]|| [(NSMutableDictionary *)v17->_eternalRamps count])
  {
    if (v17->_queue)
    {
      queue = v17->_queue;
      block = MEMORY[0x1E69E9820];
      v7 = -1073741824;
      v8 = 0;
      v9 = __42__CBRampManager_removeRampWithIdentifier___block_invoke;
      v10 = &unk_1E867B480;
      v11 = v17;
      dispatch_async(queue, &block);
    }

    else
    {
      [(CBRampManager *)v17 reevaluateClocking];
    }
  }

  else
  {
    v17->_requiredFrequency = 0.0;
    [(CBRampManager *)v17 disableClocking];
  }

  *MEMORY[0x1E69E9840];
}

- (void)removeAllRamps
{
  v28 = *MEMORY[0x1E69E9840];
  v24 = self;
  v23 = a2;
  if (self->_logHandle)
  {
    logHandle = v24->_logHandle;
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

  oslog = logHandle;
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v27, [(NSMutableDictionary *)v24->_ramps count]);
    _os_log_impl(&dword_1DE8E5000, oslog, type, "Stop all ramps (%lu ongoing)", v27, 0xCu);
  }

  memset(__b, 0, sizeof(__b));
  obj = [(NSMutableDictionary *)v24->_ramps allValues];
  v14 = [obj countByEnumeratingWithState:__b objects:v26 count:16];
  if (v14)
  {
    v10 = *__b[2];
    v11 = 0;
    v12 = v14;
    while (1)
    {
      v9 = v11;
      if (*__b[2] != v10)
      {
        objc_enumerationMutation(obj);
      }

      v20 = 0;
      v20 = *(__b[1] + 8 * v11);
      [objc_msgSend(v20 "trackedAnimation")];
      ++v11;
      if (v9 + 1 >= v12)
      {
        v11 = 0;
        v12 = [obj countByEnumeratingWithState:__b objects:v26 count:16];
        if (!v12)
        {
          break;
        }
      }
    }
  }

  memset(v17, 0, sizeof(v17));
  v7 = [(NSMutableDictionary *)v24->_eternalRamps allValues];
  v8 = [v7 countByEnumeratingWithState:v17 objects:v25 count:16];
  if (v8)
  {
    v4 = *v17[2];
    v5 = 0;
    v6 = v8;
    while (1)
    {
      v3 = v5;
      if (*v17[2] != v4)
      {
        objc_enumerationMutation(v7);
      }

      v18 = 0;
      v18 = *(v17[1] + 8 * v5);
      [objc_msgSend(v18 trackedAnimation];
      ++v5;
      v6 = v2;
      if (v3 + 1 >= v2)
      {
        v5 = 0;
        v6 = [v7 countByEnumeratingWithState:v17 objects:v25 count:16];
        if (!v6)
        {
          break;
        }
      }
    }
  }

  [(NSMutableDictionary *)v24->_ramps removeAllObjects];
  [(NSMutableDictionary *)v24->_eternalRamps removeAllObjects];
  v24->_requiredFrequency = 0.0;
  [(CBRampManager *)v24 disableClocking];
  *MEMORY[0x1E69E9840];
}

- (BOOL)hasRampRunningForIdentifier:(id)a3
{
  v4 = 1;
  if (![(NSMutableDictionary *)self->_ramps objectForKey:a3])
  {
    return [(NSMutableDictionary *)self->_eternalRamps objectForKey:a3]!= 0;
  }

  return v4;
}

- (void)enableClocking
{
  if (self->_liveUpdates)
  {
    if (self->_enableFrameSynchronisation)
    {
      *&v2 = self->_requiredFrequency;
      [(CBClockSource *)self->_frameLink setPreferredFramesPerSecond:v2];
      [(CBClockSource *)self->_frameLink resume];
    }

    else
    {
      [(CBRampManager *)self setTimer];
    }
  }

  else
  {
    [(CBRampManager *)self generateRamp];
  }
}

- (void)disableClocking
{
  if (self->_enableFrameSynchronisation)
  {
    [(CBClockSource *)self->_frameLink pause];
  }

  else
  {
    [(CBRampManager *)self stopTimer];
  }
}

- (void)setTimer
{
  v26 = *MEMORY[0x1E69E9840];
  v24 = self;
  v23 = a2;
  if (!self->_queue)
  {
    __assert_rtn("[CBRampManager setTimer]", "CBRampManager.m", 347, "_queue");
  }

  v2 = 1.0 / v24->_requiredFrequency;
  v22 = v2;
  if (v24->_clockTimer)
  {
    dispatch_source_set_timer(v24->_clockTimer, 0, (v22 * 1000000000.0), 0);
  }

  else
  {
    v24->_clockTimer = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v24->_queue);
    if (!v24->_clockTimer)
    {
      __assert_rtn("[CBRampManager setTimer]", "CBRampManager.m", 355, "_clockTimer");
    }

    clockTimer = v24->_clockTimer;
    if (v24->_logHandle)
    {
      logHandle = v24->_logHandle;
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

    v20 = logHandle;
    v19 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_2_8_0_8_0(v25, COERCE__INT64(v22), COERCE__INT64(v24->_requiredFrequency));
      _os_log_impl(&dword_1DE8E5000, v20, v19, "Setting timer with %f interval (%f Hz)", v25, 0x16u);
    }

    dispatch_source_set_timer(v24->_clockTimer, 0, (v22 * 1000000000.0), 0);
    v3 = v24->_clockTimer;
    handler = MEMORY[0x1E69E9820];
    v14 = -1073741824;
    v15 = 0;
    v16 = __25__CBRampManager_setTimer__block_invoke;
    v17 = &unk_1E867B480;
    v18 = clockTimer;
    dispatch_source_set_cancel_handler(v3, &handler);
    block = MEMORY[0x1E69E9820];
    v7 = -1073741824;
    v8 = 0;
    v9 = __25__CBRampManager_setTimer__block_invoke_2;
    v10 = &unk_1E867B480;
    v11 = v24;
    aBlock = dispatch_block_create_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0, &block);
    if (!aBlock)
    {
      __assert_rtn("[CBRampManager setTimer]", "CBRampManager.m", 371, "timerBlock");
    }

    dispatch_source_set_event_handler(v24->_clockTimer, aBlock);
    _Block_release(aBlock);
    dispatch_resume(v24->_clockTimer);
  }

  *MEMORY[0x1E69E9840];
}

- (void)stopTimer
{
  if (self->_clockTimer)
  {
    dispatch_source_cancel(self->_clockTimer);
    self->_clockTimer = 0;
  }
}

- (void)generateRamp
{
  v21 = *MEMORY[0x1E69E9840];
  v19 = self;
  v18 = a2;
  v13 = 0;
  v14 = &v13;
  v15 = 0x20000000;
  v16 = 32;
  v17 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x20000000;
  v11 = 32;
  v12 = 0;
  [(NSMutableDictionary *)self->_ramps enumerateKeysAndObjectsUsingBlock:?];
  v7 = (ceil((v14[6] * v9[6])) + 1.0);
  v6 = 1.0 / v9[6];
  if (v19->_logHandle)
  {
    logHandle = v19->_logHandle;
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

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_4_8_0_8_0_4_0_8_0(v20, COERCE__INT64(v9[6]), COERCE__INT64(v14[6]), v7, COERCE__INT64(v6));
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Frequency: %f, transition time: %f, N updates: %d, Portion: %f", v20, 0x26u);
  }

  v5 = mach_absolute_time() * v19->_sMachTimebaseFactor;
  for (i = 0; i < v7; ++i)
  {
    [(CBRampManager *)v19 updateRampsForTimestamp:v5 + (v6 * i)];
  }

  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v13, 8);
  *MEMORY[0x1E69E9840];
}

uint64_t __29__CBRampManager_generateRamp__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *(*(*(a1 + 32) + 8) + 24);
  [a3 length];
  v3 = *&v4;
  *&v4 = v12;
  if (v12 < v3)
  {
    [a3 length];
    *(*(*(a1 + 32) + 8) + 24) = v5;
  }

  v10 = *(*(*(a1 + 40) + 8) + 24);
  result = [a3 frequency];
  v7 = *&v8;
  *&v8 = v10;
  if (v10 < v7)
  {
    result = [a3 frequency];
    *(*(*(a1 + 40) + 8) + 24) = v9;
  }

  return result;
}

- (void)updateRampsForTimestamp:(double)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v28 = self;
  v27 = a2;
  v26 = a3;
  if ([(NSMutableDictionary *)self->_ramps count]|| [(NSMutableDictionary *)v28->_eternalRamps count])
  {
    ramps = v28->_ramps;
    v20 = MEMORY[0x1E69E9820];
    v21 = -1073741824;
    v22 = 0;
    v23 = __41__CBRampManager_updateRampsForTimestamp___block_invoke;
    v24 = &__block_descriptor_40_e23_v32__0_8__CBRamp_16_B24l;
    v25 = v26;
    [(NSMutableDictionary *)ramps enumerateKeysAndObjectsUsingBlock:?];
    if (v28->_logHandle)
    {
      logHandle = v28->_logHandle;
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

    oslog = logHandle;
    type = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v31, v28->_ramps);
      _os_log_debug_impl(&dword_1DE8E5000, oslog, type, "ramps clocked: %@", v31, 0xCu);
    }

    memset(__b, 0, sizeof(__b));
    obj = [(NSMutableDictionary *)v28->_eternalRamps allValues];
    v12 = [obj countByEnumeratingWithState:__b objects:v30 count:16];
    if (v12)
    {
      v8 = *__b[2];
      v9 = 0;
      v10 = v12;
      while (1)
      {
        v7 = v9;
        if (*__b[2] != v8)
        {
          objc_enumerationMutation(obj);
        }

        v17 = 0;
        v17 = *(__b[1] + 8 * v9);
        [v17 clockRamp:v26];
        ++v9;
        if (v7 + 1 >= v10)
        {
          v9 = 0;
          v10 = [obj countByEnumeratingWithState:__b objects:v30 count:16];
          if (!v10)
          {
            break;
          }
        }
      }
    }

    if (v28->_clockHandler)
    {
      (*(v28->_clockHandler + 2))();
    }

    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(NSMutableDictionary *)v28->_ramps enumerateKeysAndObjectsUsingBlock:?];
    if ([v15 count])
    {
      if (v28->_logHandle)
      {
        v6 = v28->_logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v5 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v5 = init_default_corebrightness_log();
        }

        v6 = v5;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_64(v29, v15);
        _os_log_impl(&dword_1DE8E5000, v6, OS_LOG_TYPE_DEFAULT, "Finished ramps %@", v29, 0xCu);
      }
    }

    [v15 enumerateObjectsUsingBlock:?];
    *&v4 = MEMORY[0x1E69E5920](v15).n128_u64[0];
    if (![(NSMutableDictionary *)v28->_ramps count]&& v28->_rampDoneCallback)
    {
      (*(v28->_rampDoneCallback + 2))();
    }
  }

  *MEMORY[0x1E69E9840];
}

uint64_t __41__CBRampManager_updateRampsForTimestamp___block_invoke_18(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 isFinished];
  if (result)
  {
    return [*(a1 + 32) addObject:a2];
  }

  return result;
}

float __32__CBRampManager_remainingLength__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (([a3 isFinished] & 1) == 0)
  {
    [a3 length];
    v8 = v4;
    [a3 currentTimestamp];
    v7 = v5;
    [a3 startTime];
    result = v8 - (v7 - v6);
    if (result > *(*(*(a1 + 32) + 8) + 24))
    {
      *(*(*(a1 + 32) + 8) + 24) = result;
    }
  }

  return result;
}

- (id)rampForIdentifier:(id)a3
{
  v4 = [(NSMutableDictionary *)self->_ramps objectForKeyedSubscript:a3];
  if (!v4)
  {
    return [(NSMutableDictionary *)self->_eternalRamps objectForKeyedSubscript:a3];
  }

  return v4;
}

- (id)copyStatusInfo
{
  v10[3] = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v6 = objc_alloc(MEMORY[0x1E695DF90]);
  v9[0] = @"Ramps";
  v10[0] = [(NSMutableDictionary *)self->_ramps description];
  v9[1] = @"Eternal Ramps";
  v10[1] = [(NSMutableDictionary *)self->_eternalRamps description];
  v9[2] = @"Frequency";
  *&v2 = self->_requiredFrequency;
  v10[2] = [MEMORY[0x1E696AD98] numberWithFloat:v2];
  v7 = [v6 initWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v10, v9, 3)}];
  if (self->_enableFrameSynchronisation)
  {
    frameLink = self->_frameLink;
    if (objc_opt_respondsToSelector())
    {
      [v7 setObject:-[CBClockSource copyStatusInfo](self->_frameLink forKey:{"copyStatusInfo"), @"DisplayLink"}];
    }
  }

  objc_autoreleasePoolPop(context);
  *MEMORY[0x1E69E9840];
  return v7;
}

@end