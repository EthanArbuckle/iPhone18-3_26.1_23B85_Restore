@interface BWActionCameraFlickerAvoidanceMonitor
- (BOOL)detectFlickerWithSampleBuffer:(opaqueCMSampleBuffer *)a3 fromCaptureStreamWithPortType:(id)a4;
- (BWActionCameraFlickerAvoidanceMonitor)initWithDefaultMaxExposureDurationFrameworkOverrideByPortType:(id)a3;
- (float)_updateCurrentFrameRateWithFrameRate:(uint64_t)a1;
- (void)dealloc;
@end

@implementation BWActionCameraFlickerAvoidanceMonitor

- (BWActionCameraFlickerAvoidanceMonitor)initWithDefaultMaxExposureDurationFrameworkOverrideByPortType:(id)a3
{
  if (a3)
  {
    v7.receiver = self;
    v7.super_class = BWActionCameraFlickerAvoidanceMonitor;
    v4 = [(BWActionCameraFlickerAvoidanceMonitor *)&v7 init];
    v5 = v4;
    if (v4)
    {
      *&v4->_confidenceThreshold = 0x2710000088B8;
      v4->_frameRateAware = 1;
      v4->_defaultMaxExposureDurationFrameworkOverrideByPortType = [a3 copy];
    }
  }

  else
  {
    [BWActionCameraFlickerAvoidanceMonitor initWithDefaultMaxExposureDurationFrameworkOverrideByPortType:?];
    return 0;
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWActionCameraFlickerAvoidanceMonitor;
  [(BWActionCameraFlickerAvoidanceMonitor *)&v3 dealloc];
}

- (BOOL)detectFlickerWithSampleBuffer:(opaqueCMSampleBuffer *)a3 fromCaptureStreamWithPortType:(id)a4
{
  v6 = CMGetAttachment(a3, *off_1E798A3C8, 0);
  v7 = [v6 objectForKeyedSubscript:*off_1E798B528];
  if (v7)
  {
    v8 = v7;
    [objc_msgSend(v6 objectForKeyedSubscript:{*off_1E798B210), "floatValue"}];
    v10 = [(BWActionCameraFlickerAvoidanceMonitor *)self _updateCurrentFrameRateWithFrameRate:v9];
    v11 = [objc_msgSend(v8 objectForKeyedSubscript:{*off_1E798B980), "intValue"}];
    if (v11 > 3 || v11 == 0)
    {
LABEL_18:
      LOBYTE(v7) = 0;
      return v7;
    }

    if (v11 > 2)
    {
      goto LABEL_15;
    }

    v13 = [objc_msgSend(v8 objectForKeyedSubscript:{*off_1E798B960), "firstObject"}];
    v14 = [objc_msgSend(v13 objectForKeyedSubscript:{*off_1E798B950), "intValue"}];
    [objc_msgSend(v13 objectForKeyedSubscript:{*off_1E798B958), "floatValue"}];
    v16 = v15;
    confidenceThreshold = self->_confidenceThreshold - self->_confidenceHysteresis;
    if (!self->_flickerFrequency && !self->_frameRateCompatibleFlickerFrequency)
    {
      confidenceThreshold = self->_confidenceThreshold;
    }

    if (v14 < confidenceThreshold || v15 < 49.0)
    {
LABEL_15:
      v19 = 0;
    }

    else
    {
      v20 = llroundf(v15);
      CMTimeMakeFromDictionary(&time, [(NSDictionary *)self->_defaultMaxExposureDurationFrameworkOverrideByPortType objectForKeyedSubscript:a4]);
      v21 = CMTimeGetSeconds(&time) * v20;
      frameRateAware = self->_frameRateAware;
      v23 = frameRateAware && vabds_f32(v16 / v10, roundf(v16 / v10)) <= 0.03;
      if (v21 < 0.5 && !v23)
      {
        v19 = 0;
LABEL_17:
        self->_frameRateCompatibleFlickerFrequency = v19;
        if (v20 != self->_flickerFrequency)
        {
          self->_flickerFrequency = v20;
          LOBYTE(v7) = 1;
          return v7;
        }

        goto LABEL_18;
      }

      if (frameRateAware && v21 < 0.5)
      {
        v19 = v20;
      }

      else
      {
        v19 = 0;
      }
    }

    v20 = 0;
    goto LABEL_17;
  }

  return v7;
}

- (float)_updateCurrentFrameRateWithFrameRate:(uint64_t)a1
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = *(a1 + 28);
  if (v2 == 0.0)
  {
    *(a1 + 28) = a2;
    v3 = (a1 + 32);
LABEL_12:
    *v3 = 0;
    return a2;
  }

  v3 = (a1 + 32);
  if (vabds_f32(a2, v2) < 1.0)
  {
    goto LABEL_11;
  }

  v4 = v2 < a2 ? *v3 + 1 : *v3 - 1;
  *v3 = v4;
  if (v4 < 0)
  {
    v4 = -v4;
  }

  if (v4 >= 3)
  {
LABEL_11:
    *(a1 + 28) = a2;
    goto LABEL_12;
  }

  return v2;
}

- (void)initWithDefaultMaxExposureDurationFrameworkOverrideByPortType:(void *)a1 .cold.1(void *a1)
{
  fig_log_get_emitter();
  FigDebugAssert3();
}

@end