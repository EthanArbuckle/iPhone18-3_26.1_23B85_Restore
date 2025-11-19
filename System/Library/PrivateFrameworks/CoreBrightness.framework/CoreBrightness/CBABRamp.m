@interface CBABRamp
- (CBABRamp)initWithDisplayModule:(id)a3 andQueue:(id)a4;
- (void)dealloc;
- (void)setPerceptualBrightnessWithFade:(float)a3 length:(float)a4 current:(float)a5;
- (void)stopTransition;
- (void)transitionToBrightness:(float)a3 force:(BOOL)a4 periodOverride:(BOOL)a5 period:(float)a6;
@end

@implementation CBABRamp

- (CBABRamp)initWithDisplayModule:(id)a3 andQueue:(id)a4
{
  v20 = self;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v16.receiver = self;
  v16.super_class = CBABRamp;
  v20 = [(CBABRamp *)&v16 init];
  if (v20)
  {
    v4 = os_log_create("com.apple.CoreBrightness.CBABRamp", "default");
    *(v20 + 4) = v4;
    if (!*(v20 + 4))
    {
      v11 = (_COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log());
      v15 = v11;
      v14 = 16;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        log = v15;
        type = v14;
        __os_log_helper_16_0_0(v13);
        _os_log_error_impl(&dword_1DE8E5000, log, type, "Failed to create log handle", v13, 2u);
      }
    }

    *(v20 + 2) = v17;
    dispatch_retain(*(v20 + 2));
    v5 = os_log_create("com.apple.CoreBrightness.ABRamp", "default");
    *(v20 + 4) = v5;
    v6 = MEMORY[0x1E69E5928](v18);
    *(v20 + 1) = v6;
    *(v20 + 10) = 1.0;
    *(v20 + 11) = 981668463;
    v12 = [*(v20 + 1) copyPropertyForKey:@"DisplayBrightnessLinearMin"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 floatValue];
      *(v20 + 11) = v7;
    }

    MEMORY[0x1E69E5920](v12);
  }

  return v20;
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

  dispatch_release(v5->_queue);
  v5->_queue = 0;
  *&v2 = MEMORY[0x1E69E5920](v5->_displayModule).n128_u64[0];
  v3.receiver = v5;
  v3.super_class = CBABRamp;
  [(CBABRamp *)&v3 dealloc];
}

- (void)stopTransition
{
  v10 = self;
  v9 = a2;
  if (self->_fadeTimer)
  {
    if (v10->_logHandle)
    {
      logHandle = v10->_logHandle;
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
      _os_log_debug_impl(&dword_1DE8E5000, log, type, "Ramping module: stopping", v6, 2u);
    }

    dispatch_source_cancel(v10->_fadeTimer);
    v10->_fadeTimer = 0;
  }
}

- (void)transitionToBrightness:(float)a3 force:(BOOL)a4 periodOverride:(BOOL)a5 period:(float)a6
{
  v37 = *MEMORY[0x1E69E9840];
  v34 = self;
  v33 = a2;
  v32 = a3;
  v31 = a4;
  v30 = a5;
  v29 = a6;
  v28 = 0.0;
  v27 = 0;
  v26 = 0.0;
  v25 = 0;
  v24 = 0.0;
  v23 = 0.0;
  v22 = 0.0;
  v21 = 0;
  v27 = [(CBDisplayModule *)self->_displayModule copyPropertyForKey:@"DisplayBrightnessLinear"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v27 floatValue];
    v28 = v6;
    if (v31 || v28 == 0.0 || (vabds_f32(v32, v28) / v28) >= 0.1)
    {
      v23 = linearBrightnessToPerceptualBrightness(v28);
      v22 = linearBrightnessToPerceptualBrightness(v32);
      if (v30)
      {
        v24 = v29;
      }

      else
      {
        v26 = v22 - v23;
        v25 = 11;
        if ((v22 - v23) > -1.0)
        {
          if (v26 < *&AnimationRateTable[2 * v25 - 2])
          {
            while (v26 > *&AnimationRateTable[2 * v21])
            {
              ++v21;
            }

            v24 = timeLengthAtFromPointToPoint(v26, *&AnimationRateTable[2 * v21 - 2], *&AnimationRateTable[2 * v21 - 1], *&AnimationRateTable[2 * v21], *&AnimationRateTable[2 * v21 + 1]);
          }

          else
          {
            v24 = *&AnimationRateTable[2 * v25 - 1];
          }
        }

        else
        {
          v24 = 60.0;
        }
      }

      if (v34->_logHandle)
      {
        logHandle = v34->_logHandle;
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
        __os_log_helper_16_0_6_8_0_8_0_8_0_8_0_4_0_8_0(v35, COERCE__INT64(v22), COERCE__INT64(v32), COERCE__INT64(v23), COERCE__INT64(v28), v31, COERCE__INT64(v24));
        _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "targetPerceptual=%f (targetLinear=%f) currentPerceptual=%f (currentLinear=%f) forced=%d period=%f", v35, 0x3Au);
      }

      *&v7 = v22;
      *&v8 = v24;
      *&v9 = v23;
      [(CBABRamp *)v34 setPerceptualBrightnessWithFade:v7 length:v8 current:v9];
    }

    else
    {
      if (v34->_logHandle)
      {
        v13 = v34->_logHandle;
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

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_1_8_0(v36, COERCE__INT64((vabds_f32(v32, v28) / v28)));
        _os_log_debug_impl(&dword_1DE8E5000, v13, OS_LOG_TYPE_DEBUG, "ALS.changeBrightness NOT CHANGING percent change is %f", v36, 0xCu);
      }

      [(CBABRamp *)v34 stopTransition];
    }
  }

  else
  {
    if (v34->_logHandle)
    {
      v17 = v34->_logHandle;
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

    oslog = v17;
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v15 = type;
      __os_log_helper_16_0_0(v18);
      _os_log_error_impl(&dword_1DE8E5000, log, v15, "Get brightness failed", v18, 2u);
    }
  }

  MEMORY[0x1E69E5920](v27);
  *MEMORY[0x1E69E9840];
}

- (void)setPerceptualBrightnessWithFade:(float)a3 length:(float)a4 current:(float)a5
{
  v57 = *MEMORY[0x1E69E9840];
  v55 = self;
  v54 = a2;
  v53 = a3;
  v52 = a4;
  v51 = a5;
  v50 = 0.0;
  v49 = 0.0;
  v48 = 0.0;
  v47 = 0.0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x20000000;
  v45 = 32;
  v46 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x20000000;
  v40 = 32;
  v41 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 1375731712;
  v33 = 48;
  v34 = __Block_byref_object_copy__19;
  v35 = __Block_byref_object_dispose__19;
  v36 = 0;
  [(CBABRamp *)self stopTransition];
  v50 = v53 - v51;
  v5 = fabsf(v53 - v51) / 0.000978473581;
  *(v38 + 6) = vcvtms_s32_f32(v5);
  v47 = 0.00097847;
  v49 = v52 / *(v38 + 6);
  v48 = 0.01;
  if (v49 < 0.01)
  {
    v49 = v48;
    *(v38 + 6) = vcvtms_s32_f32(v52 / v48);
    v6 = fabs(v50) / *(v38 + 6);
    v47 = v6;
  }

  if (v55->_logHandle)
  {
    logHandle = v55->_logHandle;
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
  type = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_0_4_8_0_8_0_8_0_4_0(v56, COERCE__INT64(v51), COERCE__INT64(v53), COERCE__INT64(v52), *(v38 + 6));
    _os_log_impl(&dword_1DE8E5000, oslog, type, "Ramping from %f to %f (perceptual) over %f seconds with %d steps", v56, 0x26u);
  }

  v7 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v55->_queue);
  v55->_fadeTimer = v7;
  if (v55->_fadeTimer)
  {
    v31[5] = v55->_fadeTimer;
    v43[6] = v51;
    dispatch_source_set_timer(v55->_fadeTimer, 0, (v49 * 1000000000.0), 0);
    fadeTimer = v55->_fadeTimer;
    handler = MEMORY[0x1E69E9820];
    v19 = -1073741824;
    v20 = 0;
    v21 = __59__CBABRamp_setPerceptualBrightnessWithFade_length_current___block_invoke;
    v22 = &unk_1E867D160;
    v24 = &v37;
    v26 = v53;
    v23 = v55;
    v25 = &v42;
    v27 = v47;
    dispatch_source_set_event_handler(fadeTimer, &handler);
    v9 = v55->_fadeTimer;
    v12 = MEMORY[0x1E69E9820];
    v13 = -1073741824;
    v14 = 0;
    v15 = __59__CBABRamp_setPerceptualBrightnessWithFade_length_current___block_invoke_10;
    v16 = &unk_1E867B4F8;
    v17 = &v30;
    dispatch_source_set_cancel_handler(v9, &v12);
    dispatch_resume(v55->_fadeTimer);
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v42, 8);
  *MEMORY[0x1E69E9840];
}

void __59__CBABRamp_setPerceptualBrightnessWithFade_length_current___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v20 = a1;
  v19 = a1;
  v18 = 0.0;
  v17 = 1;
  if (*(*(*(a1 + 40) + 8) + 24) > 0)
  {
    if (*(a1 + 56) >= *(*(*(a1 + 48) + 8) + 24))
    {
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24) + *(a1 + 60);
    }

    else
    {
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24) - *(a1 + 60);
    }

    v18 = fminf(fmaxf(perceptualBrightnessToLinearBrightness(*(*(*(a1 + 48) + 8) + 24)), *(*(a1 + 32) + 44)), *(*(a1 + 32) + 40));
    v7 = objc_autoreleasePoolPush();
    *&v2 = v18;
    v17 = [*(*(a1 + 32) + 8) setProperty:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v2), @"DisplayBrightnessLinear"}];
    objc_autoreleasePoolPop(v7);
    if (v17)
    {
      --*(*(*(a1 + 40) + 8) + 24);
    }

    else
    {
      if (*(*(a1 + 32) + 32))
      {
        v6 = *(*(a1 + 32) + 32);
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

      v14 = v6;
      v13 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v3 = v14;
        v4 = v13;
        __os_log_helper_16_0_0(v12);
        _os_log_impl(&dword_1DE8E5000, v3, v4, "Unable to send update", v12, 2u);
      }

      [*(a1 + 32) stopTransition];
    }
  }

  else
  {
    v18 = fminf(fmaxf(perceptualBrightnessToLinearBrightness(*(a1 + 56)), *(*(a1 + 32) + 44)), *(*(a1 + 32) + 40));
    context = objc_autoreleasePoolPush();
    *&v1 = v18;
    [*(*(a1 + 32) + 8) setProperty:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v1), @"DisplayBrightnessLinear"}];
    objc_autoreleasePoolPop(context);
    if (*(*(a1 + 32) + 32))
    {
      v9 = *(*(a1 + 32) + 32);
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

    v16 = v9;
    v15 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_0_1_8_0(v21, COERCE__INT64(v18));
      _os_log_impl(&dword_1DE8E5000, v16, v15, "Ramp completed: last set = %f", v21, 0xCu);
    }

    [*(a1 + 32) stopTransition];
  }

  *MEMORY[0x1E69E9840];
}

@end