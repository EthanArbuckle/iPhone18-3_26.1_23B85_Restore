@interface CBSBIM
+ (BOOL)needsSBIM;
- (BOOL)initialiseLimits;
- (CBSBIM)initWithQueue:(id)a3 andDisplayModule:(id)a4 andEDRModule:(id)a5;
- (const)mitigationStageToString:(int)a3;
- (float)mitigatedHeadroomFromRequestedHeadroom;
- (void)dataTimerHandler;
- (void)dealloc;
- (void)disable;
- (void)enable;
- (void)enableSBIM:(BOOL)a3;
- (void)enterEDR;
- (void)exitEDR;
- (void)mitigationTimerHandler;
- (void)resetMitigationState;
- (void)sendEDRHeadroomRequest:(float)a3;
- (void)startMonitoring;
- (void)stopMonitoring;
- (void)updateMitigationStateWithData:(IOMFBShortTermBIM *)a3 andCurrentHeadroom:(float)a4 andRequestedHeadroom:(float)a5 andSDRBrightness:(float)a6 andReset:(BOOL)a7;
@end

@implementation CBSBIM

- (void)mitigationTimerHandler
{
  v13 = *MEMORY[0x1E69E9840];
  [(CBSBIM *)self mitigatedHeadroomFromRequestedHeadroom];
  v10 = *&v2;
  [CBEDR headroomToScalingFactor:v2];
  v9 = v3;
  if (self->_log)
  {
    log = self->_log;
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

    log = inited;
  }

  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(CBSBIM *)self mitigationStageToString:self->mitigation.stage];
    if (self->mitigation.violation)
    {
      v5 = "YES";
    }

    else
    {
      v5 = "NO";
    }

    __os_log_helper_16_2_6_8_32_8_32_4_0_8_0_8_0_8_0(v12, v4, v5, self->mitigation.sbim_above_max - self->mitigation.sbim_above_num, COERCE__INT64(self->_currentHeadroom), COERCE__INT64(self->_currentHeadroomRequest), COERCE__INT64(v10));
    _os_log_impl(&dword_1DE8E5000, log, OS_LOG_TYPE_DEFAULT, "SBIM Mitigation\n{\n\tState=%s\n\tViolation=%s\n\tConsecutiveViolations=%d\n\tCurrentHeadroom=%f\n\tRequestedHeadroom=%f\n\tMitigatedHeadroom=%f\n}", v12, 0x3Au);
  }

  v6 = (std::__math::fabs[abi:de200100](self->mitigation.scalingFactor - v9) / self->mitigation.scalingFactor);
  if (self->mitigation.violation && v6 > 0.0001)
  {
    self->mitigation.scalingFactor = v9;
    self->_cap = v10;
    if (v10 < self->_currentHeadroom)
    {
      *&v6 = self->_cap;
      [(CBSBIM *)self sendEDRHeadroomRequest:v6];
    }
  }

  *MEMORY[0x1E69E9840];
}

- (float)mitigatedHeadroomFromRequestedHeadroom
{
  *&v2 = self->_currentHeadroom;
  [CBEDR headroomToStops:v2];
  v12 = v3;
  *&v4 = self->_currentHeadroomRequest;
  [CBEDR headroomToStops:v4];
  v11 = v5;
  {
    *&[CBSBIM mitigatedHeadroomFromRequestedHeadroom]::mitigationHRdelta = self->mitigation.mitigation_timer_interval / (self->mitigation.minutes_per_stop_mitigate * 60.0);
  }

  {
    *&[CBSBIM mitigatedHeadroomFromRequestedHeadroom]::recoveryHRdelta = self->mitigation.mitigation_timer_interval / (self->mitigation.minutes_per_stop_recovery * 60.0);
  }

  v10 = 0.0;
  stage = self->mitigation.stage;
  if (!stage)
  {
    v10 = v11;
    goto LABEL_21;
  }

  if (stage == 1)
  {
    goto LABEL_17;
  }

  if (stage != 2)
  {
    if (stage != 3)
    {
      goto LABEL_21;
    }

    if (self->mitigation.violation)
    {
      goto LABEL_17;
    }

    if (v12 <= v11)
    {
      *&v6 = std::__math::fmin[abi:de200100](v11, v12 + *&-[CBSBIM mitigatedHeadroomFromRequestedHeadroom]::recoveryHRdelta);
      goto LABEL_22;
    }

    v10 = std::__math::fmax[abi:de200100](v11, v12 - *&-[CBSBIM mitigatedHeadroomFromRequestedHeadroom]::recoveryHRdelta);
LABEL_21:
    *&v6 = std::__math::fmin[abi:de200100](v11, v10);
    goto LABEL_22;
  }

  if (self->mitigation.violation)
  {
LABEL_17:
    v7 = std::__math::fmax[abi:de200100]<int,float,0>(0, v12 - *&-[CBSBIM mitigatedHeadroomFromRequestedHeadroom]::mitigationHRdelta);
    *&v6 = std::__math::fmin[abi:de200100](v11, v7);
    goto LABEL_22;
  }

  *&v6 = std::__math::fmin[abi:de200100](v11, v12);
LABEL_22:
  [CBEDR stopsToHeadroom:v6];
  return result;
}

- (void)dataTimerHandler
{
  v46 = *MEMORY[0x1E69E9840];
  v42 = self;
  v41 = a2;
  dispatch_assert_queue_V2(self->_timerQueue);
  v40 = v42->mitigation.sbim_read_stage == 0;
  v37 = os_signpost_id_generate(v42->_log);
  if (v42->_log)
  {
    v14 = v42->_log;
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

    v14 = inited;
  }

  v36 = v14;
  v35 = 1;
  v34 = v37;
  if (v37 && v34 != -1 && os_signpost_enabled(v36))
  {
    log = v36;
    type = v35;
    spid = v34;
    __os_log_helper_16_0_0(v33);
    _os_signpost_emit_with_name_impl(&dword_1DE8E5000, log, type, spid, "SBIM Request", &unk_1DEAD656F, v33, 2u);
  }

  iomfb = v42->_iomfb;
  v32 = IOMobileFramebufferGetBlock();
  if (v32)
  {
    if (v42->_log)
    {
      v9 = v42->_log;
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

    v31 = v9;
    v30 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_0_1_4_0(v45, v32);
      _os_log_error_impl(&dword_1DE8E5000, v31, v30, "SBIM Sampling | Reading SBIM state from IOMFB failed | ErrorCode=0x%x", v45, 8u);
    }

    if (v42->_log)
    {
      v7 = v42->_log;
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

    v29 = v7;
    v28 = OS_SIGNPOST_INTERVAL_END;
    v27 = v37;
    if (v37 && v27 != -1 && os_signpost_enabled(v29))
    {
      __os_log_helper_16_0_1_4_0(v44, v32);
      _os_signpost_emit_with_name_impl(&dword_1DE8E5000, v29, v28, v27, "SBIM Request", "Failed with %d", v44, 8u);
    }
  }

  else
  {
    for (i = 0; i < v42->mitigation.sbim_size; ++i)
    {
      *(&v38 + i + 2) *= 2;
    }

    if (v42->_log)
    {
      v5 = v42->_log;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v4 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v4 = init_default_corebrightness_log();
      }

      v5 = v4;
    }

    v25 = v5;
    v24 = OS_SIGNPOST_INTERVAL_END;
    v23 = v37;
    if (v37 && v23 != -1 && os_signpost_enabled(v25))
    {
      __os_log_helper_16_0_4_4_0_4_0_4_0_8_0(v43, SDWORD2(v38), SHIDWORD(v38), v39, 1000 * *(&v39 + 1));
      _os_signpost_emit_with_name_impl(&dword_1DE8E5000, v25, v24, v23, "SBIM Request", "Violation RGB=(%u,%u,%u) over %{xcode:duration}llu", v43, 0x1Eu);
    }

    queue = v42->_queue;
    block = MEMORY[0x1E69E9820];
    v16 = -1073741824;
    v17 = 0;
    v18 = __26__CBSBIM_dataTimerHandler__block_invoke;
    v19 = &unk_1E867B458;
    v20 = v42;
    v21 = v38;
    v22 = v39;
    dispatch_async(queue, &block);
  }

  *MEMORY[0x1E69E9840];
}

void __26__CBSBIM_dataTimerHandler__block_invoke(uint64_t a1, double a2, double a3, double a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = a1;
  v14 = a1;
  if (*(*(a1 + 32) + 41))
  {
    v4 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = *(a1 + 56);
    HIDWORD(v5) = DWORD1(v13);
    v6 = *(a1 + 32);
    LODWORD(v5) = v6[57];
    LODWORD(a3) = v6[58];
    LODWORD(a4) = v6[56];
    [v4 updateMitigationStateWithData:&v12 andCurrentHeadroom:v6[44] == 1 andRequestedHeadroom:v5 andSDRBrightness:a3 andReset:a4];
    if (*(*(a1 + 32) + 24))
    {
      v10 = *(*(a1 + 32) + 24);
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

      v10 = inited;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) mitigationStageToString:*(*(a1 + 32) + 112)];
      if (*(*(a1 + 32) + 116))
      {
        v8 = "YES";
      }

      else
      {
        v8 = "NO";
      }

      __os_log_helper_16_2_11_8_32_8_32_4_0_4_0_4_0_4_0_8_0_8_0_8_0_8_0_4_0(v16, v7, v8, *(*(a1 + 32) + 148) - *(*(a1 + 32) + 156), *(a1 + 48), *(a1 + 52), *(a1 + 56), *(a1 + 64), COERCE__INT64(*(*(a1 + 32) + 224)), COERCE__INT64(*(*(a1 + 32) + 228)), COERCE__INT64(*(*(a1 + 32) + 232)), *(*(a1 + 32) + 176));
      _os_log_impl(&dword_1DE8E5000, v10, OS_LOG_TYPE_DEFAULT, "SBIM Sampling\n{\n\tState=%s\n\tViolation=%s\n\tConsecutiveViolations=%d\n\tRGB=(%u, %u, %u)\n\tDuration=%llu\n\tSDRBrightness=%f\n\tCurrentHeadroom=%f\n\tRequestedHeadroom=%f\n\tReadStage=%u\n}", v16, 0x5Cu);
    }

    *(*(a1 + 32) + 176) = (*(*(a1 + 32) + 176) + 1) % *(*(a1 + 32) + 120);
  }

  *MEMORY[0x1E69E9840];
}

- (CBSBIM)initWithQueue:(id)a3 andDisplayModule:(id)a4 andEDRModule:(id)a5
{
  v51 = *MEMORY[0x1E69E9840];
  v48 = self;
  v47 = a2;
  v46 = a3;
  v45 = a4;
  v44 = a5;
  v43.receiver = self;
  v43.super_class = CBSBIM;
  v48 = [(CBSBIM *)&v43 init];
  if (v48)
  {
    v5 = os_log_create("com.apple.CoreBrightness.SBIM", "default");
    *(v48 + 3) = v5;
    *(v48 + 1) = v46;
    dispatch_retain(*(v48 + 1));
    v6 = dispatch_queue_create("com.apple.CoreBrightness.SBIM", 0);
    *(v48 + 2) = v6;
    *(v48 + 4) = v45;
    v7 = MEMORY[0x1E69E5928](v44);
    *(v48 + 6) = v7;
    if (!+[CBSBIM needsSBIM])
    {
      if (*(v48 + 3))
      {
        v27 = *(v48 + 3);
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

        v27 = inited;
      }

      v42 = v27;
      v41 = 16;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        log = v42;
        type = v41;
        __os_log_helper_16_0_0(v40);
        _os_log_error_impl(&dword_1DE8E5000, log, type, "SBIM Initialization | Device does not use CoreBrightness SBIM", v40, 2u);
      }

LABEL_52:
      MEMORY[0x1E69E5920](v48);
      v49 = 0;
      goto LABEL_53;
    }

    MainDisplay = IOMobileFramebufferGetMainDisplay();
    if (MainDisplay)
    {
      if (*(v48 + 3))
      {
        v23 = *(v48 + 3);
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v22 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v22 = init_default_corebrightness_log();
        }

        v23 = v22;
      }

      v38 = v23;
      v37 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_0_1_4_0(v50, MainDisplay);
        _os_log_error_impl(&dword_1DE8E5000, v38, v37, "SBIM Initialization | Unable to obtain IOMFB display object | ErrorCode=0x%x", v50, 8u);
      }

      goto LABEL_52;
    }

    v8 = *(v48 + 8);
    *(v48 + 18) = IOMobileFramebufferGetServiceObject();
    if (!*(v48 + 18))
    {
      if (*(v48 + 3))
      {
        v21 = *(v48 + 3);
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

      v36 = v21;
      v35 = 16;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v18 = v36;
        v19 = v35;
        __os_log_helper_16_0_0(v34);
        _os_log_error_impl(&dword_1DE8E5000, v18, v19, "SBIM Initialization | Unable to obtain IOMFB service object", v34, 2u);
      }

      goto LABEL_52;
    }

    if (([v48 initialiseLimits] & 1) == 0)
    {
      if (*(v48 + 3))
      {
        v17 = *(v48 + 3);
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

      v33 = v17;
      v32 = 16;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v14 = v33;
        v15 = v32;
        __os_log_helper_16_0_0(v31);
        _os_log_error_impl(&dword_1DE8E5000, v14, v15, "SBIM Initialization | Unable to obtain SBIM tables", v31, 2u);
      }

      goto LABEL_52;
    }

    if (*(v48 + 3))
    {
      v13 = *(v48 + 3);
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

    v30 = v13;
    v29 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v30;
      v11 = v29;
      __os_log_helper_16_0_0(v28);
      _os_log_impl(&dword_1DE8E5000, v10, v11, "SBIM Initialization | SBIM supported", v28, 2u);
    }

    *(v48 + 57) = 1.0;
    *(v48 + 58) = 1.0;
    *(v48 + 40) = 1;
    *(v48 + 41) = 0;
    *(v48 + 56) = 0;
    [v48 resetMitigationState];
  }

  v49 = v48;
LABEL_53:
  *MEMORY[0x1E69E9840];
  return v49;
}

+ (BOOL)needsSBIM
{
  v4 = *MEMORY[0x1E69E9840];
  if (MGIsDeviceOneOfType())
  {
    v3 = 1;
  }

  else if (MGIsDeviceOneOfType())
  {
    v3 = 1;
  }

  else if (MGIsDeviceOneOfType())
  {
    v3 = 1;
  }

  else
  {
    v3 = (MGIsDeviceOneOfType() & 1) != 0 || (MGIsDeviceOneOfType() & 1) != 0 || (MGIsDeviceOneOfType() & 1) != 0;
  }

  *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)initialiseLimits
{
  v5 = *MEMORY[0x1E69E9840];
  if (MGIsDeviceOneOfType())
  {
    self->_limits = &CoreBrightness::sbimLimits1;
    self->_limitsSize = 121;
    v4 = 1;
  }

  else if (MGIsDeviceOneOfType())
  {
    self->_limits = &CoreBrightness::sbimLimits2;
    self->_limitsSize = 121;
    v4 = 1;
  }

  else if (MGIsDeviceOneOfType())
  {
    self->_limits = &CoreBrightness::sbimLimits3;
    self->_limitsSize = 121;
    v4 = 1;
  }

  else if (MGIsDeviceOneOfType())
  {
    self->_limits = &CoreBrightness::sbimLimits4;
    self->_limitsSize = 121;
    v4 = 1;
  }

  else if (MGIsDeviceOneOfType())
  {
    self->_limits = &CoreBrightness::sbimLimits5;
    self->_limitsSize = 121;
    v4 = 1;
  }

  else if (MGIsDeviceOneOfType())
  {
    self->_limits = &CoreBrightness::sbimLimitsD9x;
    self->_limitsSize = 121;
    v4 = 1;
  }

  else if (MGIsDeviceOneOfType())
  {
    self->_limits = &CoreBrightness::sbimLimitsD4y;
    self->_limitsSize = 121;
    v4 = 1;
  }

  else if (MGIsDeviceOneOfType())
  {
    self->_limits = &CoreBrightness::sbimLimits6;
    self->_limitsSize = 121;
    v4 = 1;
  }

  else if (MGIsDeviceOneOfType())
  {
    self->_limits = &CoreBrightness::sbimLimitsV5zD23;
    self->_limitsSize = 121;
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  *MEMORY[0x1E69E9840];
  return v4 & 1;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  [(CBSBIM *)self stopMonitoring];
  MEMORY[0x1E69E5920](v5->_edr);
  v2 = MEMORY[0x1E69E5920](v5->_timerQueue).n128_u64[0];
  if (v5->_queue)
  {
    dispatch_release(v5->_queue);
  }

  if (v5->_log)
  {
    v2 = MEMORY[0x1E69E5920](v5->_log).n128_u64[0];
  }

  v3.receiver = v5;
  v3.super_class = CBSBIM;
  [(CBSBIM *)&v3 dealloc];
}

- (void)startMonitoring
{
  v52 = *MEMORY[0x1E69E9840];
  v50 = self;
  v49 = a2;
  if (self->_log)
  {
    log = v50->_log;
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

    log = inited;
  }

  v48 = log;
  v47 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    if (v50->_isMonitoring)
    {
      v2 = "YES";
    }

    else
    {
      v2 = "NO";
    }

    __os_log_helper_16_2_1_8_32(v51, v2);
    _os_log_impl(&dword_1DE8E5000, v48, v47, "SBIM Monitoring | Start=YES IsMonitoring=%s", v51, 0xCu);
  }

  if (!v50->_isMonitoring)
  {
    [(CBSBIM *)v50 enableSBIM:1];
    [(CBSBIM *)v50 resetMitigationState];
    v50->_dataTimer = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v50->_timerQueue);
    if (v50->_dataTimer)
    {
      source = v50->_dataTimer;
      v3 = dispatch_time(0, 1000000000);
      dispatch_source_set_timer(source, v3, 1000000000 * v50->mitigation.sbim_timer_interval, 1000000000 * v50->mitigation.sbim_timer_interval);
      dataTimer = v50->_dataTimer;
      handler = MEMORY[0x1E69E9820];
      v42 = -1073741824;
      v43 = 0;
      v44 = __25__CBSBIM_startMonitoring__block_invoke;
      v45 = &unk_1E867B480;
      v46 = v50;
      dispatch_source_set_event_handler(dataTimer, &handler);
      dispatch_resume(v50->_dataTimer);
      v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v50->_queue);
      v50->_mitigationTimer = v5;
      if (v50->_mitigationTimer)
      {
        mitigationTimer = v50->_mitigationTimer;
        v6 = dispatch_time(0, 1000000000);
        dispatch_source_set_timer(mitigationTimer, v6, 1000000000 * v50->mitigation.mitigation_timer_interval, 1000000000 * v50->mitigation.mitigation_timer_interval);
        v7 = v50->_mitigationTimer;
        v32 = MEMORY[0x1E69E9820];
        v33 = -1073741824;
        v34 = 0;
        v35 = __25__CBSBIM_startMonitoring__block_invoke_57;
        v36 = &unk_1E867B480;
        v37 = v50;
        dispatch_source_set_event_handler(v7, &v32);
        dispatch_resume(v50->_mitigationTimer);
        if (v50->_log)
        {
          v12 = v50->_log;
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

        v28 = v12;
        v27 = 1;
        v26 = 0xEEEEB0B5B2B2EEEELL;
        if (os_signpost_enabled(v12))
        {
          v8 = v28;
          v9 = v27;
          spid = v26;
          __os_log_helper_16_0_0(v25);
          _os_signpost_emit_with_name_impl(&dword_1DE8E5000, v8, v9, spid, "SBIM Monitoring", &unk_1DEAD656F, v25, 2u);
        }

        v50->_isMonitoring = 1;
      }

      else
      {
        if (v50->_log)
        {
          v16 = v50->_log;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v15 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v15 = init_default_corebrightness_log();
          }

          v16 = v15;
        }

        v31 = v16;
        v30 = 16;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v13 = v31;
          v14 = v30;
          __os_log_helper_16_0_0(v29);
          _os_log_error_impl(&dword_1DE8E5000, v13, v14, "SBIM Mitigation | Unable to create a timer", v29, 2u);
        }

        [(CBSBIM *)v50 stopMonitoring];
      }
    }

    else
    {
      if (v50->_log)
      {
        v21 = v50->_log;
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

      v40 = v21;
      v39 = 16;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v18 = v40;
        v19 = v39;
        __os_log_helper_16_0_0(v38);
        _os_log_error_impl(&dword_1DE8E5000, v18, v19, "SBIM Data | Unable to create a timer", v38, 2u);
      }

      [(CBSBIM *)v50 stopMonitoring];
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)stopMonitoring
{
  v19 = *MEMORY[0x1E69E9840];
  v17 = self;
  v16 = a2;
  if (self->_log)
  {
    log = v17->_log;
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

    log = inited;
  }

  v15 = log;
  v14 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    if (v17->_isMonitoring)
    {
      v2 = "YES";
    }

    else
    {
      v2 = "NO";
    }

    __os_log_helper_16_2_1_8_32(v18, v2);
    _os_log_impl(&dword_1DE8E5000, v15, v14, "SBIM Monitoring | Stop=YES IsMonitoring=%s", v18, 0xCu);
  }

  if (v17->_isMonitoring)
  {
    if (v17->_log)
    {
      v7 = v17->_log;
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

    v13 = v7;
    v12 = 2;
    v11 = 0xEEEEB0B5B2B2EEEELL;
    if (os_signpost_enabled(v7))
    {
      v3 = v13;
      v4 = v12;
      spid = v11;
      __os_log_helper_16_0_0(v10);
      _os_signpost_emit_with_name_impl(&dword_1DE8E5000, v3, v4, spid, "SBIM Monitoring", &unk_1DEAD656F, v10, 2u);
    }

    if (v17->_dataTimer)
    {
      dispatch_source_cancel(v17->_dataTimer);
      dispatch_release(v17->_dataTimer);
      v17->_dataTimer = 0;
    }

    if (v17->_mitigationTimer)
    {
      dispatch_source_cancel(v17->_mitigationTimer);
      dispatch_release(v17->_mitigationTimer);
      v17->_mitigationTimer = 0;
    }

    [(CBSBIM *)v17 resetMitigationState];
    [(CBSBIM *)v17 enableSBIM:0];
    v17->_isMonitoring = 0;
  }

  *MEMORY[0x1E69E9840];
}

- (void)enable
{
  v10 = self;
  v9 = a2;
  if (self->_log)
  {
    v5 = v10->_log;
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

    v5 = inited;
  }

  v8 = v5;
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    log = v8;
    type = v7;
    __os_log_helper_16_0_0(v6);
    _os_log_impl(&dword_1DE8E5000, log, type, "SBIM State | Enabled=YES", v6, 2u);
  }

  v10->_sbimEnabled = 1;
  if (v10->_edrOn)
  {
    [(CBSBIM *)v10 startMonitoring];
  }
}

- (void)disable
{
  v12 = self;
  v11 = a2;
  if (self->_log)
  {
    v6 = v12->_log;
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

  v10 = v6;
  v9 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    log = v10;
    type = v9;
    __os_log_helper_16_0_0(v8);
    _os_log_impl(&dword_1DE8E5000, log, type, "SBIM State | Disabled=YES", v8, 2u);
  }

  v12->_sbimEnabled = 0;
  if (v12->_edrOn)
  {
    [(CBSBIM *)v12 stopMonitoring];
    cap = v12->_cap;
    [(CBEDR *)v12->_edr maxHeadroom];
    v12->_cap = *&v2;
    if (v12->_currentHeadroomRequest > cap)
    {
      *&v2 = v12->_currentHeadroomRequest;
      [(CBSBIM *)v12 sendEDRHeadroomRequest:v2];
    }
  }
}

- (void)enterEDR
{
  self->_edrOn = 1;
  if (self->_sbimEnabled)
  {
    [(CBSBIM *)self startMonitoring];
  }
}

- (void)exitEDR
{
  self->_edrOn = 0;
  if (self->_sbimEnabled)
  {
    [(CBSBIM *)self stopMonitoring];
  }
}

- (void)enableSBIM:(BOOL)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = "Enabling";
  if (!a3)
  {
    v3 = "Disabling";
  }

  v11 = v3;
  if (self->_log)
  {
    log = self->_log;
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

    log = inited;
  }

  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_32(v15, v11);
    _os_log_impl(&dword_1DE8E5000, log, OS_LOG_TYPE_DEFAULT, "SBIM IOMFB | %s SBIM", v15, 0xCu);
  }

  entry = self->_iomfbService;
  if (a3)
  {
    v4 = IORegistryEntrySetCFProperty(entry, @"enableSBIM", *MEMORY[0x1E695E4D0]);
  }

  else
  {
    v4 = IORegistryEntrySetCFProperty(entry, @"enableSBIM", *MEMORY[0x1E695E4C0]);
  }

  v10 = v4;
  if (v4)
  {
    if (self->_log)
    {
      v6 = self->_log;
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

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_4_0(v14, v11, v10);
      _os_log_error_impl(&dword_1DE8E5000, v6, OS_LOG_TYPE_ERROR, "SBIM IOMFB | %s SBIM failed | ErrorCode=0x%x", v14, 0x12u);
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)resetMitigationState
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = self;
  v14 = a2;
  self->mitigation.scalingFactor = 0.0;
  [(CBEDR *)v15->_edr maxHeadroom];
  v15->_cap = v2;
  if (v15->mitigation.stage)
  {
    v3 = mach_time_now_in_milliseconds();
    v4 = (60 * v15->mitigation.sbim_timer_interval);
    v5 = (v3 - v15->mitigation.lastStateUpdate_) / v4;
    v13 = std::__math::fmin[abi:de200100]<int,unsigned int,0>(6, vcvtad_u64_f64(v5), v5, v4);
    for (i = 0; i < v13; ++i)
    {
      v10 = *&v15->mitigation.lastSBIMBlock_.version;
      v11 = *&v15->mitigation.lastSBIMBlock_.var0.v1.sbim[2];
      LODWORD(v6) = 1.0;
      LODWORD(v7) = 1120403456;
      [(CBSBIM *)v15 updateMitigationStateWithData:&v10 andCurrentHeadroom:0 andRequestedHeadroom:COERCE_DOUBLE(__PAIR64__(DWORD1(v11) andSDRBrightness:1.0)) andReset:v6, v7];
    }

    if (v15->_log)
    {
      log = v15->_log;
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

      log = inited;
    }

    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_32(v16, [(CBSBIM *)v15 mitigationStageToString:v15->mitigation.stage]);
      _os_log_impl(&dword_1DE8E5000, log, OS_LOG_TYPE_DEFAULT, "SBIM Reset | CurrentStage=%s", v16, 0xCu);
    }
  }

  *MEMORY[0x1E69E9840];
}

- (const)mitigationStageToString:(int)a3
{
  switch(a3)
  {
    case 0:
      return "NoMitigation";
    case 1:
      return "InMitigation";
    case 2:
      return "Sustain";
    case 3:
      return "OutMitigation";
  }

  return "UnknownMitigationStage";
}

- (void)updateMitigationStateWithData:(IOMFBShortTermBIM *)a3 andCurrentHeadroom:(float)a4 andRequestedHeadroom:(float)a5 andSDRBrightness:(float)a6 andReset:(BOOL)a7
{
  v56 = *MEMORY[0x1E69E9840];
  v50 = self;
  v49 = a2;
  v48 = a3;
  v47 = a4;
  v46 = a5;
  v45 = a6;
  v44 = a7;
  dispatch_assert_queue_V2(self->_queue);
  {
    v43 = 0.0;
    std::valarray<float>::valarray(&[CBSBIM updateMitigationStateWithData:andCurrentHeadroom:andRequestedHeadroom:andSDRBrightness:andReset:]::previousAccumulatedSBIM, &v43, v50->mitigation.sbim_size);
    __cxa_atexit(std::valarray<float>::~valarray, &[CBSBIM updateMitigationStateWithData:andCurrentHeadroom:andRequestedHeadroom:andSDRBrightness:andReset:]::previousAccumulatedSBIM, &dword_1DE8E5000);
  }

  std::valarray<float>::valarray(v42, v50->mitigation.sbim_size);
  std::valarray<float>::valarray(v41, v50->mitigation.sbim_size);
  for (i = 0; i < std::valarray<float>::size[abi:de200100](v41); ++i)
  {
    v30 = a3->var0.v1.sbim[i];
    *std::valarray<float>::operator[][abi:de200100](v41, i) = v30;
  }

  if (v44)
  {
    v39 = 1107296256;
    std::operator/[abi:de200100]<std::valarray<float>,0>(v41, &v39, v55);
    std::valarray<float>::operator=<std::_BinaryOp<std::divides<float>,std::valarray<float>,std::__scalar_expr<float>>>(v42, v55);
  }

  else
  {
    std::operator-[abi:de200100]<std::valarray<float>,std::valarray<float>,0>(v41, &-[CBSBIM updateMitigationStateWithData:andCurrentHeadroom:andRequestedHeadroom:andSDRBrightness:andReset:]::previousAccumulatedSBIM, &v53);
    v38 = 1107296256;
    std::operator/[abi:de200100]<std::__val_expr<std::_BinaryOp<std::minus<float>,std::valarray<float>,std::valarray<float>>>,0>(&v53, &v38, v54);
    std::valarray<float>::operator=<std::_BinaryOp<std::divides<float>,std::__val_expr<std::_BinaryOp<std::minus<float>,std::valarray<float>,std::valarray<float>>>,std::__scalar_expr<float>>>(v42, v54);
  }

  v36 = v50->_limitsSize - 1;
  v35 = 0;
  v34 = vcvtmd_s64_f64(v45 / 10.0 + 0.5);
  v29 = std::max[abi:de200100]<int>(&v35, &v34);
  v37 = *std::min[abi:de200100]<int>(&v36, v29);
  std::valarray<float>::valarray(v33, v50->_limits[v37], v50->mitigation.sbim_size);
  std::operator>[abi:de200100]<std::valarray<float>,std::valarray<float>,0>(v42, v33, &v52);
  v50->mitigation.violation = std::__val_expr<std::_BinaryOp<std::greater<float>,std::valarray<float>,std::valarray<float>>>::max[abi:de200100](&v52);
  if (v50->_log)
  {
    log = v50->_log;
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

    log = inited;
  }

  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *&v26 = *std::valarray<float>::operator[][abi:de200100](v41, 0);
    *&v25 = *std::valarray<float>::operator[][abi:de200100](v41, 1uLL);
    *&v24 = *std::valarray<float>::operator[][abi:de200100](v41, 2uLL);
    *&v23 = *std::valarray<float>::operator[][abi:de200100](&-[CBSBIM updateMitigationStateWithData:andCurrentHeadroom:andRequestedHeadroom:andSDRBrightness:andReset:]::previousAccumulatedSBIM, 0);
    *&v22 = *std::valarray<float>::operator[][abi:de200100](&-[CBSBIM updateMitigationStateWithData:andCurrentHeadroom:andRequestedHeadroom:andSDRBrightness:andReset:]::previousAccumulatedSBIM, 1uLL);
    *&v21 = *std::valarray<float>::operator[][abi:de200100](&-[CBSBIM updateMitigationStateWithData:andCurrentHeadroom:andRequestedHeadroom:andSDRBrightness:andReset:]::previousAccumulatedSBIM, 2uLL);
    *&v20 = *std::valarray<float>::operator[][abi:de200100](v42, 0);
    *&v19 = *std::valarray<float>::operator[][abi:de200100](v42, 1uLL);
    *&v18 = *std::valarray<float>::operator[][abi:de200100](v42, 2uLL);
    *&v17 = *std::valarray<float>::operator[][abi:de200100](v33, 0);
    *&v15 = *std::valarray<float>::operator[][abi:de200100](v33, 1uLL);
    v16 = std::valarray<float>::operator[][abi:de200100](v33, 2uLL);
    __os_log_helper_16_0_12_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0(v51, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v15, COERCE__INT64(*v16));
    _os_log_impl(&dword_1DE8E5000, log, OS_LOG_TYPE_DEFAULT, "SBIM Data\n{\n\tCurrentAccumulatedSBIM=(%f, %f, %f)\n\tPreviousAccumulatedSBIM=(%f, %f, %f)\n\tCurrentSBIM=(%f, %f, %f)\n\tLimitSBIM=(%f, %f, %f)\n}", v51, 0x7Au);
  }

  std::valarray<float>::operator=(&[CBSBIM updateMitigationStateWithData:andCurrentHeadroom:andRequestedHeadroom:andSDRBrightness:andReset:]::previousAccumulatedSBIM, v41);
  stage = v50->mitigation.stage;
  if (stage)
  {
    switch(stage)
    {
      case 1:
        if (!v50->mitigation.violation)
        {
          v50->mitigation.stage = 2;
          v50->mitigation.sbim_sustain_num = v50->mitigation.sbim_sustain_max;
        }

        break;
      case 2:
        if (!--v50->mitigation.sbim_sustain_num)
        {
          v50->mitigation.stage = 3;
          v50->mitigation.sbim_sustain_num = v50->mitigation.sbim_sustain_max;
          v50->mitigation.sbim_above_num = v50->mitigation.sbim_above_max;
        }

        break;
      case 3:
        v32 = (v50->mitigation.delta_factor * v50->mitigation.mitigation_timer_interval) / (std::__math::fmin[abi:de200100](v50->mitigation.minutes_per_stop_mitigate, v50->mitigation.minutes_per_stop_recovery) * 60.0);
        *&v8 = v47;
        [CBEDR headroomToStops:v8];
        v13 = v9;
        *&v10 = v46;
        [CBEDR headroomToStops:v10];
        if (std::__math::fabs[abi:de200100](v13 - v11) < v32)
        {
          v50->mitigation.stage = 0;
        }

        break;
    }
  }

  else if (v50->mitigation.violation)
  {
    if (!--v50->mitigation.sbim_above_num)
    {
      v50->mitigation.stage = 1;
      v50->mitigation.sbim_above_num = v50->mitigation.sbim_above_max;
      *&v7 = v50->_sdrBrightness;
      [CBAnalytics sbimMitigationTriggeredWithBrightness:v7];
    }
  }

  else
  {
    v50->mitigation.sbim_above_num = v50->mitigation.sbim_above_max;
  }

  v50->mitigation.lastStateUpdate_ = mach_time_now_in_milliseconds();
  v12 = v50;
  *&v50->mitigation.lastSBIMBlock_.version = *&a3->version;
  *&v12->mitigation.lastSBIMBlock_.var0.v1.sbim[2] = *&a3->var0.v1.sbim[2];
  std::valarray<float>::~valarray(v33);
  std::valarray<float>::~valarray(v41);
  std::valarray<float>::~valarray(v42);
  *MEMORY[0x1E69E9840];
}

- (void)sendEDRHeadroomRequest:(float)a3
{
  v12 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  if (self->_log)
  {
    log = self->_log;
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

    log = inited;
  }

  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v11, COERCE__INT64(a3));
    _os_log_impl(&dword_1DE8E5000, log, OS_LOG_TYPE_DEFAULT, "SBIM EDR | Sending headroom request with headroom=%f", v11, 0xCu);
  }

  displayModule = self->_displayModule;
  v9 = *MEMORY[0x1E6979618];
  *&v3 = a3;
  v10 = [MEMORY[0x1E696AD98] numberWithFloat:v3];
  -[CBDisplayModuleiOS setProperty:forKey:](displayModule, "setProperty:forKey:", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1], @"EDRHeadroomRequest");
  *MEMORY[0x1E69E9840];
}

@end