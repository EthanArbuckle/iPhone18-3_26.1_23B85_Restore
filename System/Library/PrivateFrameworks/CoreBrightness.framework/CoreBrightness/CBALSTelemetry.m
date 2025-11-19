@interface CBALSTelemetry
- (BOOL)setALSService:(__IOHIDServiceClient *)a3;
- (BOOL)setProperty:(id)a3 forKey:(id)a4;
- (CBALSTelemetry)initWithQueue:(id)a3;
- (id)copyALSSampleHistoryWithLength:(int)a3 frequency:(float)a4 lastTimestamp:(unint64_t *)a5;
- (id)copyPropertyForKey:(id)a3;
- (unint64_t)getBootTimeInMicroSeconds;
- (void)dealloc;
- (void)sendNotificationForKey:(id)a3 andValue:(id)a4;
- (void)start;
- (void)stop;
- (void)timerFired;
- (void)updateLastTimestampInDefaults;
@end

@implementation CBALSTelemetry

- (void)timerFired
{
  if (self->_alsLiveOnTelemetryEnabled)
  {
    LODWORD(v2) = 0.5;
    v3 = [(CBALSTelemetry *)self copyALSSampleHistoryWithLength:20 frequency:&self->_lastTimestampInMicroseconds lastTimestamp:v2];
    if (v3)
    {
      [(CBALSTelemetry *)self sendNotificationForKey:@"CBAmbientLightTelemetry" andValue:v3];
      MEMORY[0x1E69E5920](v3);
    }

    [(CBALSTelemetry *)self updateLastTimestampInDefaults];
  }
}

- (CBALSTelemetry)initWithQueue:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v19 = self;
  v18 = a2;
  v17 = a3;
  v16.receiver = self;
  v16.super_class = CBALSTelemetry;
  v19 = [(CBModule *)&v16 initWithQueue:a3];
  if (v19)
  {
    v3 = os_log_create("com.apple.CoreBrightness.CBALSTelemetry", "Default");
    v19->super._logHandle = v3;
    mach_timebase_info(&info);
    LODWORD(v4) = info.numer;
    LODWORD(v5) = info.denom;
    v19->_timeFactor = v4 / v5 * 0.000000001;
    v6 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.CoreBrightness"];
    v19->_defaults = v6;
    v7 = [(NSUserDefaults *)v19->_defaults BOOLForKey:@"CBAmbientLightTelemetry"];
    v19->_alsLiveOnTelemetryEnabled = v7;
    if (v19->_alsLiveOnTelemetryEnabled)
    {
      v14 = [(CBALSTelemetry *)v19 getBootTimeInMicroSeconds];
      if (v14 == [-[NSUserDefaults objectForKey:](v19->_defaults objectForKey:{@"CBAmbientLightTelemetryBootTime", "unsignedLongLongValue"}])
      {
        v13 = [(NSUserDefaults *)v19->_defaults objectForKey:@"CBAmbientLightTelemetryLastTimestamp"];
        if (v13)
        {
          v8 = [v13 unsignedLongLongValue];
          v19->_lastTimestampInMicroseconds = v8;
        }
      }

      else
      {
        [(NSUserDefaults *)v19->_defaults removeObjectForKey:@"CBAmbientLightTelemetryLastTimestamp"];
      }

      if (v19->super._logHandle)
      {
        logHandle = v19->super._logHandle;
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
        __os_log_helper_16_0_2_8_0_8_0(v21, v14, v19->_lastTimestampInMicroseconds);
        _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "bootTime=%llu _lastTimestampInMicroseconds=%llu", v21, 0x16u);
      }

      v12 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:v14];
      [(NSUserDefaults *)v19->_defaults setObject:v12 forKey:@"CBAmbientLightTelemetryBootTime"];
      MEMORY[0x1E69E5920](v12);
    }

    v20 = v19;
  }

  else
  {
    MEMORY[0x1E69E5920](0);
    v20 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v20;
}

- (void)start
{
  v10 = self;
  v9 = a2;
  if (self->_alsService && !v10->_timer && v10->_alsLiveOnTelemetryEnabled)
  {
    v10->_timer = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v10->super._queue);
    if (v10->_timer)
    {
      dispatch_source_set_timer(v10->_timer, 0, 0x29E8D60800uLL, 0x77359400uLL);
      timer = v10->_timer;
      handler = MEMORY[0x1E69E9820];
      v4 = -1073741824;
      v5 = 0;
      v6 = __23__CBALSTelemetry_start__block_invoke;
      v7 = &unk_1E867B480;
      v8 = v10;
      dispatch_source_set_event_handler(timer, &handler);
      dispatch_activate(v10->_timer);
    }
  }
}

- (void)stop
{
  if (self->_timer)
  {
    dispatch_source_cancel(self->_timer);
    dispatch_release(self->_timer);
    self->_timer = 0;
  }
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  [(CBALSTelemetry *)self stop];
  if (v5->super._logHandle)
  {
    MEMORY[0x1E69E5920](v5->super._logHandle);
    v5->super._logHandle = 0;
  }

  *&v2 = MEMORY[0x1E69E5920](v5->_defaults).n128_u64[0];
  v5->_defaults = 0;
  v3.receiver = v5;
  v3.super_class = CBALSTelemetry;
  [(CBModule *)&v3 dealloc];
}

- (id)copyPropertyForKey:(id)a3
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  if ([a3 isEqualToString:@"CBAmbientLightTelemetry"])
  {
    v5 = 0;
    LODWORD(v3) = 1.0;
    return [(CBALSTelemetry *)v9 copyALSSampleHistoryWithLength:30 frequency:&v5 lastTimestamp:v3];
  }

  return v6;
}

- (BOOL)setProperty:(id)a3 forKey:(id)a4
{
  v5 = 0;
  if ([a4 isEqualToString:@"CBSystemDidWakeFromSleep"])
  {
    [(CBALSTelemetry *)self handleSystemDidWakeFromSleepPropertyHandler:a3];
    return 1;
  }

  else if ([a4 isEqualToString:@"CBSystemPrepareForSleep"])
  {
    [(CBALSTelemetry *)self handleSystemPrepareForSleepPropertyHandler:a3];
    return 1;
  }

  return v5;
}

- (unint64_t)getBootTimeInMicroSeconds
{
  v8 = *MEMORY[0x1E69E9840];
  v5[2] = self;
  v5[1] = a2;
  *v7 = 0x1500000001;
  v5[0] = 16;
  if (sysctl(v7, 2u, &v3, v5, 0, 0) == -1)
  {
    v6 = 0;
  }

  else
  {
    v6 = (v4 + v3 * 1000000.0);
  }

  *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)setALSService:(__IOHIDServiceClient *)a3
{
  if (self->_alsService)
  {
    return 0;
  }

  v4 = IOHIDServiceClientCopyProperty(a3, @"ALSSensorType");
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v4 intValue] == 8 || objc_msgSend(v4, "intValue") == 9))
    {
      self->_alsService = a3;
    }

    MEMORY[0x1E69E5920](v4);
  }

  return self->_alsService != 0;
}

- (id)copyALSSampleHistoryWithLength:(int)a3 frequency:(float)a4 lastTimestamp:(unint64_t *)a5
{
  v71 = &v90;
  v104 = *MEMORY[0x1E69E9840];
  v101 = self;
  v100 = a2;
  v99 = a3;
  v98 = a4;
  v97 = a5;
  v96 = 0;
  v6 = std::__math::fmin[abi:de200100]<float,unsigned int,0>(2, a4, v5);
  *&v6 = v6;
  v98 = *&v6;
  LODWORD(v7) = 1232348160;
  *&v6 = ((1.0 / *&v6) * 1000000.0) + -50000.0;
  v95 = *&v6;
  v99 = std::__math::fmin[abi:de200100]<int,unsigned int,0>(v99, 20, v6, v7);
  if (v101->_alsService)
  {
    context = objc_autoreleasePoolPush();
    *(v71 + 23) = 0;
    v8 = mach_continuous_time();
    v9 = v71;
    *(v71 + 10) = v8;
    *(v71 + 9) = IOHIDServiceClientCopyProperty(*(*(v9 + 17) + 32), @"CBALSHistory");
    v10 = mach_continuous_time();
    v11 = v71;
    *(v71 + 8) = (v10 - *(v71 + 10)) * *(*(v71 + 17) + 56);
    if (*(v11 + 9))
    {
      if ([*(v71 + 9) length] == 684)
      {
        *v71 = mach_continuous_time() * *(*(v71 + 17) + 56);
        v89 = [MEMORY[0x1E695DF00] date];
        [v89 timeIntervalSinceReferenceDate];
        v88 = v16;
        v59 = 0x1E695D000uLL;
        v87 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(v71 + 31)];
        v86 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(v71 + 31)];
        v85 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(v71 + 31)];
        v84 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(v71 + 31)];
        v83 = [*(v71 + 9) bytes];
        for (i = 0; i < 0x14; ++i)
        {
          v81 = (*(v83 + 680) - (i + 1)) % 20;
          v58 = v81 < 0 ? v81 + 20 : v81;
          v19 = std::__math::fmin[abi:de200100]<int,unsigned int,0>(v58, 19, v17, v18);
          v17 = std::__math::fmax[abi:de200100]<int,int,0>(v19, 0);
          v81 = v17;
          if ((!**(v71 + 14) || *(v83 + 34 * v81 + 4) < **(v71 + 14) - *(v71 + 12)) && ((*(v83 + 34 * v81 + 28) & 1) == 0 || *(v83 + 34 * v81 + 31) != 65))
          {
            v56 = 34;
            v80 = *(v83 + 34 * v81 + 4) / 1000000.0;
            v79 = v88 + v80 - *v71;
            v52 = v87;
            v55 = 0x1E696A000uLL;
            [v87 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", v79)}];
            v53 = v86;
            LODWORD(v20) = *(v83 + 34 * v81 + 12);
            [v86 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v20)}];
            v54 = v85;
            LODWORD(v21) = *(v83 + 34 * v81 + 20);
            [v85 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v21)}];
            v57 = v84;
            LODWORD(v22) = *(v83 + 34 * v81 + 24);
            [v84 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v22)}];
            if (*(*(v71 + 17) + 16))
            {
              v51 = *(*(v71 + 17) + 16);
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

              v51 = inited;
            }

            oslog = v51;
            v77 = OS_LOG_TYPE_DEBUG;
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
            {
              v47 = oslog;
              *v48 = v77;
              *&v23 = *(v83 + 34 * v81 + 12);
              v49 = v103;
              __os_log_helper_16_0_4_4_0_8_0_4_0_8_0(v103, i, v23, v81, *&v79);
              _os_log_debug_impl(&dword_1DE8E5000, oslog, v77, "ALS samples history [%d]: lux = %f, index = %d, timestamp = %f", v103, 0x22u);
            }

            v24 = v71;
            ++*(v71 + 23);
            **(v24 + 14) = *(v83 + 34 * v81 + 4);
            if ([v87 count] >= *(v71 + 31))
            {
              break;
            }
          }
        }

        v46 = MEMORY[0x1E696AD98];
        v76 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v87, "count")}];
        if ([v76 unsignedIntValue])
        {
          v44 = objc_alloc(MEMORY[0x1E695DF20]);
          v43 = v76;
          v40 = [objc_msgSend(v87 "reverseObjectEnumerator")];
          v41 = [objc_msgSend(v86 "reverseObjectEnumerator")];
          v42 = [objc_msgSend(v85 "reverseObjectEnumerator")];
          v45 = &v32;
          v25 = [v44 initWithObjectsAndKeys:{v76, @"count", v40, @"timestamp", v41, @"lux", v42, @"color_x", objc_msgSend(objc_msgSend(v84, "reverseObjectEnumerator"), "allObjects"), @"color_y", 0}];
          *(v71 + 13) = v25;
        }

        v26 = (mach_continuous_time() - *(v71 + 10));
        v27 = *(v71 + 17);
        v39 = &OBJC_IVAR___CBAODState__thresholdsAPDeltaPBrightenBuckets;
        v75 = v26 * *(v27 + 56);
        v74 = (mach_continuous_time() - *(v71 + 10)) * *(*(v71 + 17) + 56);
        if (*(*(v71 + 17) + 16))
        {
          v38 = *(*(v71 + 17) + 16);
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v37 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v37 = init_default_corebrightness_log();
          }

          v38 = v37;
        }

        v73 = v38;
        v72 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v34 = v73;
          *v35 = v72;
          v28 = *(v71 + 23);
          v29 = *(*(v71 + 17) + 64);
          v30 = *(v71 + 8);
          v36 = v102;
          __os_log_helper_16_0_5_4_0_8_0_8_0_8_0_8_0(v102, v28, v29, v30, *&v75, *&v74);
          _os_log_impl(&dword_1DE8E5000, v34, v35[0], "ALS samples history: itemsProcessed=%u newLastTimestamp=%lluus durations=(dataRetrieval=%fs partial=%fs overall=%fs)", v36, 0x30u);
        }

        *(v71 + 9) = 0;
      }

      else
      {
        if (*(*(v71 + 17) + 16))
        {
          v64 = *(*(v71 + 17) + 16);
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v63 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v63 = init_default_corebrightness_log();
          }

          v64 = v63;
        }

        v14 = v71;
        *(v71 + 3) = v64;
        v92 = 16;
        if (os_log_type_enabled(v14[3], OS_LOG_TYPE_ERROR))
        {
          v60 = *(v71 + 3);
          *v61 = v92;
          v62 = v91;
          __os_log_helper_16_0_0(v91);
          _os_log_error_impl(&dword_1DE8E5000, v60, v61[0], "Unexpected size!", v91, 2u);
        }

        v15 = v71;
        *(v71 + 18) = 0;
        *(v15 + 9) = 1;
      }
    }

    else
    {
      if (*(*(v71 + 17) + 16))
      {
        v69 = *(*(v71 + 17) + 16);
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v68 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v68 = init_default_corebrightness_log();
        }

        v69 = v68;
      }

      v12 = v71;
      *(v71 + 7) = v69;
      v94 = 16;
      if (os_log_type_enabled(v12[7], OS_LOG_TYPE_ERROR))
      {
        log = *(v71 + 7);
        *type = v94;
        buf = v93;
        __os_log_helper_16_0_0(v93);
        _os_log_error_impl(&dword_1DE8E5000, log, type[0], "Unable to retrieve history from ALS!", v93, 2u);
      }

      v13 = v71;
      *(v71 + 18) = 0;
      *(v13 + 9) = 1;
    }

    objc_autoreleasePoolPop(context);
    if (!*(v71 + 9))
    {
      *(v71 + 18) = *(v71 + 13);
    }
  }

  else
  {
    *(v71 + 18) = 0;
  }

  v33 = *(v71 + 18);
  *MEMORY[0x1E69E9840];
  return v33;
}

- (void)updateLastTimestampInDefaults
{
  v2 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:self->_lastTimestampInMicroseconds];
  [(NSUserDefaults *)self->_defaults setObject:v2 forKey:@"CBAmbientLightTelemetryLastTimestamp"];
  [(NSUserDefaults *)self->_defaults synchronize];
  MEMORY[0x1E69E5920](v2);
}

- (void)sendNotificationForKey:(id)a3 andValue:(id)a4
{
  if (self->super._notificationBlock)
  {
    (*(self->super._notificationBlock + 2))();
  }
}

@end