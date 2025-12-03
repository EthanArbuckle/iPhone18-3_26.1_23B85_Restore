@interface FigCaptureSystemPressureMonitor
- (FigCaptureSystemPressureMonitor)initWithPearlModuleType:(int)type sensorThermalLevelsByTemperatureByPortType:(id)portType fineGrainThermalMonitoringEnabled:(BOOL)enabled;
- (int)systemPressureLevelFromImageSensorWithPortType:(id)type;
- (uint64_t)_callChangeHandler;
- (uint64_t)_registerForPeakPowerNotifications;
- (uint64_t)_registerForThermalLevelNotifications;
- (uint64_t)_registerForThermalPressureNotifications;
- (uint64_t)_updateSystemPressureForPeakPowerAndCallChangeHandler:(uint64_t)result;
- (uint64_t)_updateSystemPressureForThermalLevelAndCallChangeHandler:(uint64_t)result;
- (uint64_t)_updateSystemPressureForThermalPressureAndCallChangeHandler:(uint64_t)result;
- (uint64_t)_updateWithPearlProjectorTemperature:(uint64_t)result;
- (void)_releasePearlProjectorPollingResources;
- (void)callSystemPressureLevelChangedHandler;
- (void)dealloc;
- (void)setSystemPressureLevelChangedHandler:(id)handler;
- (void)startMonitoringImageSensorTemperatureUntilNominalWithPortType:(id)type;
- (void)startMonitoringPearlProjectorTemperatureUntilNominal;
- (void)updateWithPearlProjectorTemperature:(float)temperature;
- (void)updateWithPortType:(id)type imageSensorTemperature:(float)temperature;
@end

@implementation FigCaptureSystemPressureMonitor

- (void)callSystemPressureLevelChangedHandler
{
  systemPressureLevelChangedHandlerQueue = self->_systemPressureLevelChangedHandlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__FigCaptureSystemPressureMonitor_callSystemPressureLevelChangedHandler__block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_async(systemPressureLevelChangedHandlerQueue, block);
}

- (uint64_t)_callChangeHandler
{
  if (result)
  {
    v1 = result;
    result = _FigIsCurrentDispatchQueue();
    if (!result)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      result = FigDebugAssert3();
    }

    if (*(v1 + 8))
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v3 = *(v1 + 192);
      v11 = OUTLINED_FUNCTION_17_0(dictionary, v4, v5, v6, v7, v8, v9, v10, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, 0);
      if (v11)
      {
        v12 = v11;
        v13 = MEMORY[0];
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (MEMORY[0] != v13)
            {
              objc_enumerationMutation(v3);
            }

            v15 = [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", objc_msgSend(objc_msgSend(*(v1 + 192), "objectForKeyedSubscript:", *(8 * i)), "systemPressureLevelFromImageSensorTemperature")), *(8 * i)}];
          }

          v12 = OUTLINED_FUNCTION_17_0(v15, v16, v17, v18, v19, v20, v21, v22, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v59);
        }

        while (v12);
      }

      return (*(*(v1 + 8) + 16))();
    }
  }

  return result;
}

- (FigCaptureSystemPressureMonitor)initWithPearlModuleType:(int)type sensorThermalLevelsByTemperatureByPortType:(id)portType fineGrainThermalMonitoringEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v33.receiver = self;
  v33.super_class = FigCaptureSystemPressureMonitor;
  v8 = [(FigCaptureSystemPressureMonitor *)&v33 init];
  if (v8)
  {
    *(v8 + 2) = FigDispatchQueueCreateWithPriority();
    v8[52] = enabledCopy;
    v10 = 28;
    if (enabledCopy)
    {
      v10 = 60;
    }

    v11 = 32;
    if (enabledCopy)
    {
      v11 = 64;
      v12 = 2;
    }

    else
    {
      v12 = 10;
    }

    v13 = 36;
    if (enabledCopy)
    {
      v13 = 68;
      v14 = 5;
    }

    else
    {
      v14 = 20;
    }

    v15 = 72;
    if (!enabledCopy)
    {
      v15 = 40;
    }

    *(v8 + 88) = xmmword_1AD056BD0;
    *(v8 + 26) = 40;
    *(v8 + 7) = xmmword_1AD056BE0;
    *(v8 + 16) = 0x426C000042480000;
    if (enabledCopy)
    {
      v16 = 10;
    }

    else
    {
      v16 = 30;
    }

    v17 = 44;
    if (enabledCopy)
    {
      v17 = 76;
      v18 = 12;
    }

    else
    {
      v18 = 40;
    }

    v19 = 61.0;
    if (type == 2)
    {
      v19 = 70.0;
    }

    *(v8 + 34) = 1112539136;
    *(v8 + 35) = v19;
    *(v8 + 18) = 0x42C6000042580000;
    *&v8[v10] = 0;
    *&v8[v11] = v12;
    *&v8[v13] = v14;
    *&v8[v15] = v16;
    v20 = MEMORY[0x1E6960C70];
    v21 = *MEMORY[0x1E6960C70];
    *&v8[v17] = v18;
    *(v8 + 168) = v21;
    *(v8 + 23) = *(v20 + 16);
    if ([portType count])
    {
      *(v8 + 24) = objc_alloc_init(MEMORY[0x1E695DF90]);
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v22 = [portType countByEnumeratingWithState:&v29 objects:v28 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v30;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v30 != v24)
            {
              objc_enumerationMutation(portType);
            }

            v26 = *(*(&v29 + 1) + 8 * i);
            v27 = -[FigCaptureImageSensorTemperatureMonitor initWithPortType:sensorThermalLevelsByTemperature:]([FigCaptureImageSensorTemperatureMonitor alloc], "initWithPortType:sensorThermalLevelsByTemperature:", v26, [portType objectForKeyedSubscript:v26]);
            [*(v8 + 24) setObject:v27 forKeyedSubscript:v26];
          }

          v23 = [portType countByEnumeratingWithState:&v29 objects:v28 count:16];
        }

        while (v23);
      }
    }

    if (v8[52] == 1)
    {
      [(FigCaptureSystemPressureMonitor *)v8 _registerForThermalLevelNotifications];
    }

    else
    {
      [(FigCaptureSystemPressureMonitor *)v8 _registerForThermalPressureNotifications];
    }

    [(FigCaptureSystemPressureMonitor *)v8 _registerForPeakPowerNotifications];
  }

  return v8;
}

- (void)dealloc
{
  thermalPressureNotificationToken = self->_thermalPressureNotificationToken;
  if (thermalPressureNotificationToken)
  {
    notify_cancel(thermalPressureNotificationToken);
  }

  thermalLevelNotificationToken = self->_thermalLevelNotificationToken;
  if (thermalLevelNotificationToken)
  {
    notify_cancel(thermalLevelNotificationToken);
  }

  peakPowerNotificationToken = self->_peakPowerNotificationToken;
  if (peakPowerNotificationToken)
  {
    notify_cancel(peakPowerNotificationToken);
  }

  systemPressureLevelChangedHandlerQueue = self->_systemPressureLevelChangedHandlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__FigCaptureSystemPressureMonitor_dealloc__block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_sync(systemPressureLevelChangedHandlerQueue, block);

  v7.receiver = self;
  v7.super_class = FigCaptureSystemPressureMonitor;
  [(FigCaptureSystemPressureMonitor *)&v7 dealloc];
}

void __42__FigCaptureSystemPressureMonitor_dealloc__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 8) = 0;
  *(*(a1 + 32) + 24) = 0;
  *(*(a1 + 32) + 84) = 0;
  [(FigCaptureSystemPressureMonitor *)*(a1 + 32) _releasePearlProjectorPollingResources];
  v2 = *(*(a1 + 32) + 192);
}

- (void)setSystemPressureLevelChangedHandler:(id)handler
{
  systemPressureLevelChangedHandlerQueue = self->_systemPressureLevelChangedHandlerQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __72__FigCaptureSystemPressureMonitor_setSystemPressureLevelChangedHandler___block_invoke;
  v4[3] = &unk_1E7990390;
  v4[4] = self;
  v4[5] = handler;
  dispatch_sync(systemPressureLevelChangedHandlerQueue, v4);
}

uint64_t __72__FigCaptureSystemPressureMonitor_setSystemPressureLevelChangedHandler___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 8) = [*(a1 + 40) copy];
  [FigCaptureSystemPressureMonitor _updateSystemPressureForPeakPowerAndCallChangeHandler:?];
  v2 = *(a1 + 32);
  if (*(v2 + 52) == 1)
  {

    return [FigCaptureSystemPressureMonitor _updateSystemPressureForThermalLevelAndCallChangeHandler:v2];
  }

  else
  {

    return [FigCaptureSystemPressureMonitor _updateSystemPressureForThermalPressureAndCallChangeHandler:v2];
  }
}

- (void)updateWithPearlProjectorTemperature:(float)temperature
{
  systemPressureLevelChangedHandlerQueue = self->_systemPressureLevelChangedHandlerQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __71__FigCaptureSystemPressureMonitor_updateWithPearlProjectorTemperature___block_invoke;
  v4[3] = &unk_1E7991CF0;
  v4[4] = self;
  temperatureCopy = temperature;
  dispatch_async(systemPressureLevelChangedHandlerQueue, v4);
}

- (void)startMonitoringPearlProjectorTemperatureUntilNominal
{
  if (!self->_pearlPollTimer)
  {
    v17 = v5;
    v18 = v4;
    v19 = v2;
    v20 = v3;
    v7 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_systemPressureLevelChangedHandlerQueue);
    self->_pearlPollTimer = v7;
    v8 = dispatch_time(0, 2000000000);
    dispatch_source_set_timer(v7, v8, 0x77359400uLL, 0xF4240uLL);
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&v15, HostTimeClock);
    CMTimeMake(&rhs, 60, 1);
    CMTimeAdd(&v16, &v15, &rhs);
    self->_pollingTimerStopTime = v16;
    pearlPollTimer = self->_pearlPollTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __87__FigCaptureSystemPressureMonitor_startMonitoringPearlProjectorTemperatureUntilNominal__block_invoke;
    handler[3] = &unk_1E798F870;
    handler[4] = self;
    dispatch_source_set_event_handler(pearlPollTimer, handler);
    v11 = self->_pearlPollTimer;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __87__FigCaptureSystemPressureMonitor_startMonitoringPearlProjectorTemperatureUntilNominal__block_invoke_2;
    v12[3] = &unk_1E798F870;
    v12[4] = self;
    dispatch_source_set_cancel_handler(v11, v12);
    dispatch_resume(self->_pearlPollTimer);
  }
}

void __87__FigCaptureSystemPressureMonitor_startMonitoringPearlProjectorTemperatureUntilNominal__block_invoke(uint64_t a1)
{
  v8 = 0;
  [+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor "sharedCaptureDeviceVendor")];
  if (!v8)
  {
    [(FigCaptureSystemPressureMonitor *)*(a1 + 32) _updateWithPearlProjectorTemperature:v2];
  }

  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&time1, HostTimeClock);
  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  v6 = *(v5 + 168);
  if (CMTimeCompare(&time1, &v6) >= 1)
  {
    __87__FigCaptureSystemPressureMonitor_startMonitoringPearlProjectorTemperatureUntilNominal__block_invoke_cold_1(v4);
  }

  if (!*(*v4 + 152))
  {
    [(FigCaptureSystemPressureMonitor *)*v4 _releasePearlProjectorPollingResources];
  }
}

- (int)systemPressureLevelFromImageSensorWithPortType:(id)type
{
  v3 = [(NSMutableDictionary *)self->_imageSensorTemperatureMonitorByPortType objectForKeyedSubscript:type];

  return [v3 systemPressureLevelFromImageSensorTemperature];
}

- (void)updateWithPortType:(id)type imageSensorTemperature:(float)temperature
{
  systemPressureLevelChangedHandlerQueue = self->_systemPressureLevelChangedHandlerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__FigCaptureSystemPressureMonitor_updateWithPortType_imageSensorTemperature___block_invoke;
  block[3] = &unk_1E7997358;
  block[4] = self;
  block[5] = type;
  temperatureCopy = temperature;
  dispatch_async(systemPressureLevelChangedHandlerQueue, block);
}

- (void)startMonitoringImageSensorTemperatureUntilNominalWithPortType:(id)type
{
  v4 = [(NSMutableDictionary *)self->_imageSensorTemperatureMonitorByPortType objectForKeyedSubscript:type];
  systemPressureLevelChangedHandlerQueue = self->_systemPressureLevelChangedHandlerQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __97__FigCaptureSystemPressureMonitor_startMonitoringImageSensorTemperatureUntilNominalWithPortType___block_invoke;
  v6[3] = &unk_1E798F870;
  v6[4] = self;
  [v4 startMonitoringImageSensorTemperatureUntilNominalWithQueue:systemPressureLevelChangedHandlerQueue changeHandler:v6];
}

- (uint64_t)_registerForThermalLevelNotifications
{
  if (result)
  {
    OUTLINED_FUNCTION_1_125();
    v5 = 3221225472;
    v6 = __72__FigCaptureSystemPressureMonitor__registerForThermalLevelNotifications__block_invoke;
    v7 = &unk_1E7991270;
    v8 = v1;
    return notify_register_dispatch(v3, (v1 + 56), v2, handler);
  }

  return result;
}

- (uint64_t)_registerForThermalPressureNotifications
{
  if (result)
  {
    OUTLINED_FUNCTION_1_125();
    v5 = 3221225472;
    v6 = __75__FigCaptureSystemPressureMonitor__registerForThermalPressureNotifications__block_invoke;
    v7 = &unk_1E7991270;
    v8 = v1;
    return notify_register_dispatch(v3, (v1 + 24), v2, handler);
  }

  return result;
}

- (uint64_t)_registerForPeakPowerNotifications
{
  if (result)
  {
    v1 = *(result + 16);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __69__FigCaptureSystemPressureMonitor__registerForPeakPowerNotifications__block_invoke;
    handler[3] = &unk_1E7991270;
    handler[4] = result;
    return notify_register_dispatch("com.apple.system.peakpowerpressurelevel", (result + 84), v1, handler);
  }

  return result;
}

- (void)_releasePearlProjectorPollingResources
{
  if (self)
  {
    if (!_FigIsCurrentDispatchQueue())
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    v2 = *(self + 160);
    if (v2)
    {

      dispatch_source_cancel(v2);
    }
  }
}

- (uint64_t)_updateSystemPressureForPeakPowerAndCallChangeHandler:(uint64_t)result
{
  if (result)
  {
    if (!OUTLINED_FUNCTION_3_101())
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    result = *(v1 + 84);
    if (result)
    {
      state64 = 0;
      result = notify_get_state(result, &state64);
      if (!result)
      {
        for (i = 0; i != 4; ++i)
        {
          if (state64 <= *(v1 + 4 * i + 88))
          {
            break;
          }
        }

        *(v1 + 108) = i;
        if (v2)
        {
          return [(FigCaptureSystemPressureMonitor *)v1 _callChangeHandler];
        }
      }
    }
  }

  return result;
}

- (uint64_t)_updateSystemPressureForThermalLevelAndCallChangeHandler:(uint64_t)result
{
  if (result)
  {
    if (!OUTLINED_FUNCTION_3_101())
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    result = *(v1 + 56);
    if (result)
    {
      state64 = 0;
      result = notify_get_state(result, &state64);
      if (!result)
      {
        for (i = 0; i != 4; ++i)
        {
          v4 = v1 + 4 * i;
          if (state64 >= *(v4 + 60) && state64 < *(v4 + 64))
          {
            break;
          }
        }

        *(v1 + 80) = i;
        if (v2)
        {
          return [(FigCaptureSystemPressureMonitor *)v1 _callChangeHandler];
        }
      }
    }
  }

  return result;
}

- (uint64_t)_updateSystemPressureForThermalPressureAndCallChangeHandler:(uint64_t)result
{
  if (result)
  {
    if (!OUTLINED_FUNCTION_3_101())
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    result = *(v1 + 24);
    if (result)
    {
      state64 = 0;
      result = notify_get_state(result, &state64);
      if (!result)
      {
        for (i = 0; i != 4; ++i)
        {
          if (state64 <= *(v1 + 4 * i + 28))
          {
            break;
          }
        }

        *(v1 + 48) = i;
        if (v2)
        {
          return [(FigCaptureSystemPressureMonitor *)v1 _callChangeHandler];
        }
      }
    }
  }

  return result;
}

uint64_t __71__FigCaptureSystemPressureMonitor_updateWithPearlProjectorTemperature___block_invoke(uint64_t a1)
{
  [(FigCaptureSystemPressureMonitor *)*(a1 + 32) _releasePearlProjectorPollingResources];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [(FigCaptureSystemPressureMonitor *)v2 _updateWithPearlProjectorTemperature:v3];
}

- (uint64_t)_updateWithPearlProjectorTemperature:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    result = _FigIsCurrentDispatchQueue();
    if (!result)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      result = FigDebugAssert3();
    }

    v4 = *(v3 + 152);
    v5 = (v3 + 112 + 8 * v4);
    if (*v5 > a2 || v5[1] < a2)
    {
      v7 = *v5 <= a2 ? 1 : -1;
      v8 = v4 + v7;
      if ((v4 + v7) > 4)
      {
        goto LABEL_17;
      }

      do
      {
        v9 = (v3 + 112 + 8 * v8);
        if (*v9 <= a2 && v9[1] >= a2)
        {
          break;
        }

        v8 += v7;
      }

      while (v8 < 5);
      if (v8 != v4)
      {
LABEL_17:
        *(v3 + 152) = v8;

        return [(FigCaptureSystemPressureMonitor *)v3 _callChangeHandler];
      }
    }
  }

  return result;
}

uint64_t __77__FigCaptureSystemPressureMonitor_updateWithPortType_imageSensorTemperature___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 192) objectForKeyedSubscript:*(a1 + 40)];
  LODWORD(v3) = *(a1 + 48);
  [v2 updateWithImageSensorTemperature:v3];
  v4 = *(a1 + 32);

  return [(FigCaptureSystemPressureMonitor *)v4 _callChangeHandler];
}

@end