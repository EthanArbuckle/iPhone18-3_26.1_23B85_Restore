@interface CBAnalyticsExtDisplayManager
+ (id)sharedInstance;
- (BOOL)handleColorSampleInternal:(id)a3;
- (BOOL)isFirstEventToday:(id)a3;
- (BOOL)isSameDay:(id)a3 asDay:(id)a4;
- (CBAnalyticsExtDisplayManager)init;
- (id)stringForType:(unint64_t)a3;
- (void)dealloc;
- (void)logAllColorSamples;
- (void)logColorSample:(id)a3 withType:(id)a4;
- (void)sendEventLazy:(id)a3 andDict:(id)a4;
- (void)sendEventOnceADayLazyInternal:(id)a3 andDict:(id)a4;
- (void)setUserActive:(BOOL)a3;
- (void)startReporting;
- (void)stopReportingInternal:(unint64_t)a3;
@end

@implementation CBAnalyticsExtDisplayManager

+ (id)sharedInstance
{
  v11 = a1;
  v10 = a2;
  objc_sync_enter(a1);
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __46__CBAnalyticsExtDisplayManager_sharedInstance__block_invoke;
  v8 = &unk_1E867B480;
  v9 = v11;
  v13 = &sharedInstance_onceToken_4;
  v12 = &v4;
  if (sharedInstance_onceToken_4 != -1)
  {
    dispatch_once(v13, v12);
  }

  objc_sync_exit(a1);
  return sharedInstance__sharedObject_3;
}

uint64_t __46__CBAnalyticsExtDisplayManager_sharedInstance__block_invoke(uint64_t a1)
{
  v4 = a1;
  v3 = a1;
  v2.receiver = *(a1 + 32);
  v2.super_class = &OBJC_METACLASS___CBAnalyticsExtDisplayManager;
  result = [objc_msgSendSuper2(&v2 alloc)];
  sharedInstance__sharedObject_3 = result;
  return result;
}

- (CBAnalyticsExtDisplayManager)init
{
  v28 = *MEMORY[0x1E69E9840];
  v25 = self;
  v24 = a2;
  v23.receiver = self;
  v23.super_class = CBAnalyticsExtDisplayManager;
  v25 = [(CBAnalyticsExtDisplayManager *)&v23 init];
  if (!v25)
  {
LABEL_29:
    v26 = v25;
    goto LABEL_30;
  }

  v2 = os_log_create("com.apple.CoreBrightness.CBAnalyticsExtDisplayManager", "default");
  *(v25 + 1) = v2;
  if (!*(v25 + 1))
  {
    v15 = (_COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log());
    v22 = v15;
    v21 = 16;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      log = v22;
      type = v21;
      __os_log_helper_16_0_0(v20);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "Failed to create log handle", v20, 2u);
    }
  }

  v3 = dispatch_queue_create("com.apple.CoreBrightness.CBAnalyticsExtDisplayManager", 0);
  *(v25 + 2) = v3;
  if (*(v25 + 2))
  {
    v16 = [CBPreferencesHandler copyPreferenceForAllUsersForKey:@"CoreAnalyticsTimestamps"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v16];
    }

    else
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    *(v25 + 4) = v4;
    MEMORY[0x1E69E5920](v16);
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(v25 + 5) = v5;
    *(v25 + 48) = 1;
    if (*(v25 + 1))
    {
      v8 = *(v25 + 1);
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

      v8 = inited;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v27, *(v25 + 4));
      _os_log_debug_impl(&dword_1DE8E5000, v8, OS_LOG_TYPE_DEBUG, "Init with timestamps {{%@}}", v27, 0xCu);
    }

    goto LABEL_29;
  }

  if (*(v25 + 1))
  {
    v12 = *(v25 + 1);
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v11 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v11 = init_default_corebrightness_log();
    }

    v12 = v11;
  }

  v19 = v12;
  v18 = 16;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v9 = v19;
    v10 = v18;
    __os_log_helper_16_0_0(v17);
    _os_log_error_impl(&dword_1DE8E5000, v9, v10, "failed to create dispatch queue", v17, 2u);
  }

  MEMORY[0x1E69E5920](v25);
  v25 = 0;
  v26 = 0;
LABEL_30:
  *MEMORY[0x1E69E9840];
  return v26;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  if (self->_logHandle)
  {
    MEMORY[0x1E69E5920](v5->_logHandle);
    v5->_logHandle = 0;
  }

  if (v5->_queue)
  {
    dispatch_release(v5->_queue);
    v5->_queue = 0;
  }

  if (v5->_reportTimer)
  {
    dispatch_source_cancel(v5->_reportTimer);
    dispatch_release(v5->_reportTimer);
    v5->_reportTimer = 0;
  }

  MEMORY[0x1E69E5920](v5->_timestamps);
  *&v2 = MEMORY[0x1E69E5920](v5->samples).n128_u64[0];
  v3.receiver = v5;
  v3.super_class = CBAnalyticsExtDisplayManager;
  [(CBAnalyticsExtDisplayManager *)&v3 dealloc];
}

- (BOOL)handleColorSampleInternal:(id)a3
{
  v21 = self;
  v20 = a2;
  v19 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x20000000;
  v17 = 32;
  v18 = 0;
  queue = self->_queue;
  block = MEMORY[0x1E69E9820];
  v7 = -1073741824;
  v8 = 0;
  v9 = __58__CBAnalyticsExtDisplayManager_handleColorSampleInternal___block_invoke;
  v10 = &unk_1E867B7A0;
  v11 = a3;
  v12 = v21;
  v13 = &v14;
  dispatch_sync(queue, &block);
  v5 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return v5 & 1;
}

uint64_t __58__CBAnalyticsExtDisplayManager_handleColorSampleInternal___block_invoke(uint64_t result)
{
  v1 = result;
  if (*(result + 32))
  {
    result = [*(*(result + 40) + 40) setObject:*(result + 32) forKey:{objc_msgSend(*(result + 40), "stringForType:", objc_msgSend(*(result + 32), "type"))}];
    if (!*(*(v1 + 40) + 24))
    {
      result = [*(v1 + 40) startReporting];
    }

    *(*(*(v1 + 48) + 8) + 24) = 1;
  }

  return result;
}

- (void)logAllColorSamples
{
  v20 = *MEMORY[0x1E69E9840];
  v17 = self;
  v16 = a2;
  if (self->_logHandle)
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

  oslog = logHandle;
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v19, v17->samples);
    _os_log_debug_impl(&dword_1DE8E5000, oslog, type, "Send ALS color samples %@", v19, 0xCu);
  }

  memset(__b, 0, sizeof(__b));
  obj = [(NSMutableDictionary *)v17->samples allKeys];
  v9 = [obj countByEnumeratingWithState:__b objects:v18 count:16];
  if (v9)
  {
    v5 = *__b[2];
    v6 = 0;
    v7 = v9;
    while (1)
    {
      v4 = v6;
      if (*__b[2] != v5)
      {
        objc_enumerationMutation(obj);
      }

      v13 = 0;
      v13 = *(__b[1] + 8 * v6);
      v2 = [(NSMutableDictionary *)v17->samples objectForKey:v13, v17];
      [v3 logColorSample:v2 withType:v13];
      ++v6;
      if (v4 + 1 >= v7)
      {
        v6 = 0;
        v7 = [obj countByEnumeratingWithState:__b objects:v18 count:16];
        if (!v7)
        {
          break;
        }
      }
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)logColorSample:(id)a3 withType:(id)a4
{
  v19[10] = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v14 = 0;
  if ([a4 isEqualToString:@"Front"])
  {
    v14 = [(NSMutableDictionary *)self->samples objectForKey:@"Rear"];
  }

  else if ([a4 isEqualToString:@"Rear"] & 1) != 0 || (objc_msgSend(a4, "isEqualToString:", @"Merged"))
  {
    v14 = [(NSMutableDictionary *)self->samples objectForKey:@"Front"];
  }

  v18[0] = @"Location";
  v19[0] = a4;
  v18[1] = @"Lux";
  v6 = MEMORY[0x1E696AD98];
  [a3 lux];
  v19[1] = [v6 numberWithDouble:?];
  v18[2] = @"CCT";
  v7 = MEMORY[0x1E696AD98];
  [a3 CCT];
  v19[2] = [v7 numberWithDouble:?];
  v18[3] = @"x";
  v8 = MEMORY[0x1E696AD98];
  [a3 xy];
  v19[3] = [v8 numberWithDouble:v4];
  v18[4] = @"y";
  v9 = MEMORY[0x1E696AD98];
  [a3 xy];
  v19[4] = [v9 numberWithDouble:v5];
  v18[5] = @"ColorBin";
  v19[5] = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a3, "colorBin")}];
  v18[6] = @"ColorDeltaE";
  v10 = MEMORY[0x1E696AD98];
  [a3 colorDeltaEWith:v14];
  v19[6] = [v10 numberWithDouble:?];
  v18[7] = @"CCTDifference";
  v11 = MEMORY[0x1E696AD98];
  [a3 CCTDifferenceWith:v14];
  v19[7] = [v11 numberWithDouble:?];
  v18[8] = @"LuxDifference";
  v12 = MEMORY[0x1E696AD98];
  [a3 LuxDifferenceWith:v14];
  v19[8] = [v12 numberWithDouble:?];
  v18[9] = @"Mode";
  v19[9] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a3, "mode")}];
  -[CBAnalyticsExtDisplayManager sendEventLazy:andDict:](self, "sendEventLazy:andDict:", @"com.apple.corebrightness.extdisplay.als.colorsample", [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:10]);
  objc_autoreleasePoolPop(context);
  *MEMORY[0x1E69E9840];
}

- (void)sendEventOnceADayLazyInternal:(id)a3 andDict:(id)a4
{
  v16 = self;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  queue = self->_queue;
  block = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __70__CBAnalyticsExtDisplayManager_sendEventOnceADayLazyInternal_andDict___block_invoke;
  v9 = &unk_1E867B750;
  v10 = v16;
  v11 = a3;
  v12 = a4;
  dispatch_sync(queue, &block);
}

void __70__CBAnalyticsExtDisplayManager_sendEventOnceADayLazyInternal_andDict___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isFirstEventToday:*(a1 + 40)])
  {
    if (*(*(a1 + 32) + 8))
    {
      v4 = *(*(a1 + 32) + 8);
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

      v4 = inited;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_64_8_64(v7, *(a1 + 40), *(a1 + 48));
      _os_log_impl(&dword_1DE8E5000, v4, OS_LOG_TYPE_DEFAULT, "Event {%@} has been already sent today {{%@}}", v7, 0x16u);
    }
  }

  else
  {
    if (*(*(a1 + 32) + 8))
    {
      v2 = *(*(a1 + 32) + 8);
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v1 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v1 = init_default_corebrightness_log();
      }

      v2 = v1;
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_64_8_64(v6, *(a1 + 40), *(a1 + 48));
      _os_log_impl(&dword_1DE8E5000, v2, OS_LOG_TYPE_DEFAULT, "First event today {%@} -> send event {{%@}}", v6, 0x16u);
    }

    [*(a1 + 32) sendEventLazy:*(a1 + 40) andDict:*(a1 + 48)];
  }

  *MEMORY[0x1E69E9840];
}

- (void)sendEventLazy:(id)a3 andDict:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
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
    __os_log_helper_16_2_2_8_64_8_64(v8, a3, a4);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Send event %@ {{%@}}", v8, 0x16u);
  }

  AnalyticsSendEventLazy();
  *MEMORY[0x1E69E9840];
}

- (void)startReporting
{
  v19 = self;
  v18 = a2;
  if (self->_userActive)
  {
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

    v17 = logHandle;
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      log = v17;
      type = v16;
      __os_log_helper_16_0_0(v15);
      _os_log_impl(&dword_1DE8E5000, log, type, "Start CoreAnalytics reporting", v15, 2u);
    }

    v14 = 1000000000;
    if (!v19->_reportTimer)
    {
      v2 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v19->_queue);
      v19->_reportTimer = v2;
    }

    if (v19->_reportTimer)
    {
      reportTimer = v19->_reportTimer;
      handler = MEMORY[0x1E69E9820];
      v9 = -1073741824;
      v10 = 0;
      v11 = __46__CBAnalyticsExtDisplayManager_startReporting__block_invoke;
      v12 = &unk_1E867B480;
      v13 = v19;
      dispatch_source_set_event_handler(reportTimer, &handler);
      dispatch_source_set_timer(v19->_reportTimer, v14, v14, 0xC8uLL);
      dispatch_resume(v19->_reportTimer);
    }
  }
}

- (void)setUserActive:(BOOL)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  queue = self->_queue;
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __46__CBAnalyticsExtDisplayManager_setUserActive___block_invoke;
  v8 = &unk_1E867B840;
  v9 = v13;
  v10 = a3;
  dispatch_sync(queue, &v4);
}

void __46__CBAnalyticsExtDisplayManager_setUserActive___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = a1;
  v13 = a1;
  if (*(*(a1 + 32) + 8))
  {
    v6 = *(*(a1 + 32) + 8);
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

  v12 = v6;
  v11 = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_0_2_4_0_4_0(v15, *(a1 + 40) & 1, *(*(a1 + 32) + 48) & 1);
    _os_log_impl(&dword_1DE8E5000, v12, v11, "CBAnalyticsExtDisplayManager setUserActive=%d _userActive=%d", v15, 0xEu);
  }

  if ((*(*(a1 + 32) + 48) & 1) != (*(a1 + 40) & 1))
  {
    *(*(a1 + 32) + 48) = *(a1 + 40) & 1;
    if (*(a1 + 40))
    {
      if ([*(*(a1 + 32) + 40) count] && !*(*(a1 + 32) + 24))
      {
        [*(a1 + 32) startReporting];
      }
    }

    else if (*(*(a1 + 32) + 24))
    {
      if (*(*(a1 + 32) + 8))
      {
        v4 = *(*(a1 + 32) + 8);
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v3 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v3 = init_default_corebrightness_log();
        }

        v4 = v3;
      }

      v10 = v4;
      v9 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v1 = v10;
        v2 = v9;
        __os_log_helper_16_0_0(v8);
        _os_log_impl(&dword_1DE8E5000, v1, v2, "User is inactive -> Stop CoreAnalytics reporting", v8, 2u);
      }

      dispatch_source_cancel(*(*(a1 + 32) + 24));
      dispatch_release(*(*(a1 + 32) + 24));
      *(*(a1 + 32) + 24) = 0;
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)stopReportingInternal:(unint64_t)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  queue = self->_queue;
  block = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __54__CBAnalyticsExtDisplayManager_stopReportingInternal___block_invoke;
  v8 = &unk_1E867B9D8;
  v9 = v13;
  v10 = a3;
  dispatch_sync(queue, &block);
}

void __54__CBAnalyticsExtDisplayManager_stopReportingInternal___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = a1;
  v13 = a1;
  [*(*(a1 + 32) + 40) removeObjectForKey:{objc_msgSend(*(a1 + 32), "stringForType:", *(a1 + 40))}];
  if (*(*(a1 + 32) + 8))
  {
    v6 = *(*(a1 + 32) + 8);
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

  v12 = v6;
  v11 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v15, [*(a1 + 32) stringForType:*(a1 + 40)]);
    _os_log_debug_impl(&dword_1DE8E5000, v12, v11, "%@ sensor removed from reported samples.", v15, 0xCu);
  }

  if (![*(*(a1 + 32) + 40) count] && *(*(a1 + 32) + 24))
  {
    if (*(*(a1 + 32) + 8))
    {
      v4 = *(*(a1 + 32) + 8);
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v3 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v3 = init_default_corebrightness_log();
      }

      v4 = v3;
    }

    v10 = v4;
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v1 = v10;
      v2 = v9;
      __os_log_helper_16_0_0(v8);
      _os_log_impl(&dword_1DE8E5000, v1, v2, "No ALS sample -> Stop CoreAnalytics reporting", v8, 2u);
    }

    dispatch_source_cancel(*(*(a1 + 32) + 24));
    dispatch_release(*(*(a1 + 32) + 24));
    *(*(a1 + 32) + 24) = 0;
  }

  *MEMORY[0x1E69E9840];
}

- (BOOL)isFirstEventToday:(id)a3
{
  v6 = 0;
  v5 = objc_alloc_init(MEMORY[0x1E695DF00]);
  v4 = [(NSMutableDictionary *)self->_timestamps objectForKey:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([(CBAnalyticsExtDisplayManager *)self isSameDay:v5 asDay:v4])
    {
      v6 = 1;
    }

    else
    {
      v6 = 0;
      [(CBAnalyticsExtDisplayManager *)self storeTimestamp:v5 forEventName:a3];
    }
  }

  else
  {
    [(CBAnalyticsExtDisplayManager *)self storeTimestamp:v5 forEventName:a3];
  }

  MEMORY[0x1E69E5920](v5);
  return v6 & 1;
}

- (BOOL)isSameDay:(id)a3 asDay:(id)a4
{
  v11 = [MEMORY[0x1E695DEE8] currentCalendar];
  v10 = [v11 components:28 fromDate:a3];
  v9 = [v11 components:28 fromDate:a4];
  v7 = [v10 day];
  v8 = 0;
  if (v7 == [v9 day])
  {
    v6 = [v10 month];
    v8 = 0;
    if (v6 == [v9 month])
    {
      v5 = [v10 year];
      return v5 == [v9 year];
    }
  }

  return v8;
}

- (id)stringForType:(unint64_t)a3
{
  v4 = @"Unknown";
  switch(a3)
  {
    case 1uLL:
      return @"Front";
    case 2uLL:
      return @"Rear";
    case 3uLL:
      return @"Merged";
  }

  return v4;
}

@end