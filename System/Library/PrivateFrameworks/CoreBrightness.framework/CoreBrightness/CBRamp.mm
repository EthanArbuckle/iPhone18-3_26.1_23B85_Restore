@interface CBRamp
+ (id)newLinearRampWithWithOrigin:(float)a3 target:(float)a4 length:(float)a5 frequency:(float)a6 identifier:(id)a7;
- (CBRamp)initWithOrigin:(float)a3 target:(float)a4 length:(float)a5 frequency:(float)a6 identifier:(id)a7 properties:(id)a8;
- (id)description;
- (void)clockRamp:(double)a3;
- (void)dealloc;
@end

@implementation CBRamp

+ (id)newLinearRampWithWithOrigin:(float)a3 target:(float)a4 length:(float)a5 frequency:(float)a6 identifier:(id)a7
{
  v7 = [CBRamp alloc];
  *&v8 = a3;
  *&v9 = a4;
  *&v10 = a5;
  *&v11 = a6;
  v13 = [(CBRamp *)v7 initWithOrigin:a7 target:v8 length:v9 frequency:v10 identifier:v11];
  [(CBRamp *)v13 setRampProgressCallback:&__block_literal_global_8];
  return v13;
}

float __73__CBRamp_newLinearRampWithWithOrigin_target_length_frequency_identifier___block_invoke(float a1, uint64_t a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a3[2])
  {
    v23 = a3[2];
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

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v20 = [a3 identifier];
    [a3 originalValue];
    *&v21 = v3;
    [a3 targetValue];
    __os_log_helper_16_2_4_8_64_8_0_8_0_8_0(v27, v20, v21, COERCE__INT64(v4), COERCE__INT64((a1 * 100.0)));
    _os_log_debug_impl(&dword_1DE8E5000, v23, OS_LOG_TYPE_DEBUG, "%@ ramp clocked: %f -> %f - %f %%", v27, 0x2Au);
  }

  [a3 targetValue];
  v19 = v5;
  [a3 originalValue];
  v6 = *&v7;
  *&v7 = v19;
  if (v19 >= v6)
  {
    [a3 originalValue];
    v15 = v11;
    [a3 targetValue];
    v16 = v12;
    [a3 originalValue];
    v26 = v15 + ((v16 - v13) * a1);
  }

  else
  {
    [a3 originalValue];
    v17 = v8;
    [a3 originalValue];
    v18 = v9;
    [a3 targetValue];
    v26 = v17 - ((v18 - v10) * a1);
  }

  *MEMORY[0x1E69E9840];
  return v26;
}

- (CBRamp)initWithOrigin:(float)a3 target:(float)a4 length:(float)a5 frequency:(float)a6 identifier:(id)a7 properties:(id)a8
{
  v26 = self;
  v25 = a2;
  v24 = a3;
  v23 = a4;
  v22 = a5;
  v21 = a6;
  v20 = a7;
  v19 = a8;
  v18.receiver = self;
  v18.super_class = CBRamp;
  v26 = [(CBRamp *)&v18 init];
  if (v26)
  {
    v8 = [v20 copy];
    v26->_identifier = v8;
    v26->_originalValue = v24;
    v26->_targetValue = v23;
    v26->_length = v22;
    v26->_remainingLength = v22;
    v26->_frequency = v21;
    v9 = [v19 copy];
    v26->_properties = v9;
    v26->_isFinished = 0;
    v15 = objc_alloc(MEMORY[0x1E696AEC0]);
    v14 = [+[CBRamp className](CBRamp "className")];
    v17 = [v15 initWithFormat:@"%s.%s.%s", "com.apple.CoreBrightness", v14, -[NSString cStringUsingEncoding:](v26->_identifier, "cStringUsingEncoding:", 1)];
    v10 = os_log_create([v17 cStringUsingEncoding:1], "default");
    v26->_logHandle = v10;
    MEMORY[0x1E69E5920](v17);
    info = 0;
    mach_timebase_info(&info);
    LODWORD(v12) = info.denom;
    LODWORD(v11) = info.numer;
    v26->_sMachTimebaseFactor = v11 / v12 * 0.000000001;
    v26->_startTime = mach_absolute_time() * v26->_sMachTimebaseFactor;
    v26->_currentTimestamp = v26->_startTime;
    v26->_largestStep = -1.0;
    v26->_totalSteps = -1;
    v26->_largestTimeDelta = 0.0;
    v26->_startAbsoluteTime = CFAbsoluteTimeGetCurrent();
    v26->_currentAbsoluteTimestamp = v26->_startAbsoluteTime;
    [(CBRamp *)v26 setRampFinishedCallback:0];
  }

  return v26;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  if (self->_logHandle)
  {
    MEMORY[0x1E69E5920](v5->_logHandle);
  }

  if (v5->_rampProgressCallback)
  {
    _Block_release(v5->_rampProgressCallback);
  }

  if (v5->_rampFinishedCallback)
  {
    _Block_release(v5->_rampFinishedCallback);
  }

  MEMORY[0x1E69E5920](v5->_identifier);
  MEMORY[0x1E69E5920](v5->_properties);
  *&v2 = MEMORY[0x1E69E5920](v5->_trackedAnimation).n128_u64[0];
  v3.receiver = v5;
  v3.super_class = CBRamp;
  [(CBRamp *)&v3 dealloc];
}

- (id)description
{
  v4 = self;
  v3 = a2;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"CBRamp: %@ | %f -> %f (%f) | %f sec | %f Hz", self->_identifier, self->_originalValue, self->_targetValue, self->_currentValue, self->_length, self->_frequency, a2, self];
}

- (void)clockRamp:(double)a3
{
  v21 = *MEMORY[0x1E69E9840];
  if (self->_isFinished)
  {
    __assert_rtn("[CBRamp clockRamp:]", "CBRamp.m", 140, "!_isFinished");
  }

  if (!self->_rampProgressCallback)
  {
    __assert_rtn("[CBRamp clockRamp:]", "CBRamp.m", 141, "_rampProgressCallback");
  }

  if (self->_trackedAnimation && ![(CBTrackedAnimation *)self->_trackedAnimation isTracking])
  {
    [(CBTrackedAnimation *)self->_trackedAnimation startTracking];
  }

  currentValue = self->_currentValue;
  currentTimestamp = self->_currentTimestamp;
  v15 = currentTimestamp;
  self->_currentTimestamp = a3;
  v13 = (self->_currentTimestamp - self->_startTime) / self->_length;
  v4 = self->_length - (self->_currentTimestamp - self->_startTime);
  self->_remainingLength = v4;
  self->_currentAbsoluteTimestamp = self->_startAbsoluteTime + self->_currentTimestamp - self->_startTime;
  v5 = v13;
  *&v14 = clamp(v5, 0.0, 1.0);
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

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_5_8_0_8_0_8_0_8_0_8_0(v20, v14, *&self->_startTime, *&self->_currentTimestamp, COERCE__INT64(self->_currentTimestamp - self->_startTime), COERCE__INT64(self->_length));
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "progress: %f, start = %f, current = %f, diff = %f, length = %f", v20, 0x34u);
  }

  v6 = *&v14;
  self->_currentValue = (*(self->_rampProgressCallback + 2))(v6);
  if (self->_totalSteps > 0)
  {
    v7 = fabs((self->_currentValue - currentValue));
    self->_largestStep = fmaxf(v7, self->_largestStep);
    v8 = fmax(vabdd_f64(self->_currentTimestamp, v15), self->_largestTimeDelta);
    self->_largestTimeDelta = v8;
  }

  ++self->_totalSteps;
  if (*&v14 >= 1.0)
  {
    self->_isFinished = 1;
    [(CBTrackedAnimation *)self->_trackedAnimation stopTracking];
    if (self->_rampFinishedCallback)
    {
      (*(self->_rampFinishedCallback + 2))();
      if (self->_logHandle)
      {
        v10 = self->_logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v9 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v9 = init_default_corebrightness_log();
        }

        v10 = v9;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_5_8_0_8_0_8_0_4_0_8_0(v19, COERCE__INT64(self->_length), COERCE__INT64(self->_largestStep), COERCE__INT64(fabs((self->_originalValue - self->_targetValue)) / self->_totalSteps), self->_totalSteps, COERCE__INT64(self->_largestTimeDelta));
        _os_log_impl(&dword_1DE8E5000, v10, OS_LOG_TYPE_DEFAULT, "Duration: %f s, Largest Step: %f s, Average Step: %f s, Total Steps: %d, Largest Time Delta: %f s", v19, 0x30u);
      }
    }
  }

  *MEMORY[0x1E69E9840];
}

@end