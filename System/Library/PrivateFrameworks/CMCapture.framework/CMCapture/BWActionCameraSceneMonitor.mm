@interface BWActionCameraSceneMonitor
- (BOOL)resolveSDOFStatusWithSampleBuffer:(opaqueCMSampleBuffer *)buffer frameStatisticsByPortType:(id)type sceneFlags:(unint64_t)flags flashOrTorchWillBeActive:(BOOL)active digitalFlashWillFire:(BOOL)fire thermalPressureLevel:(int)level peakPowerPressureLevel:(int)pressureLevel effectStatus:(int *)self0 stagePreviewStatus:(int *)self1;
- (BWActionCameraSceneMonitor)initWithTuningParametersByPortType:(id)type videoStabilizationStrength:(int)strength bravoTelephotoEnabled:(BOOL)enabled attachDebugFrameStatistics:(BOOL)statistics;
- (void)dealloc;
- (void)focusScanDidComplete;
- (void)setAutoFocusInProgress:(BOOL)progress focusLocked:(BOOL)locked oneShotFocusScanInProgress:(BOOL)inProgress;
@end

@implementation BWActionCameraSceneMonitor

- (BWActionCameraSceneMonitor)initWithTuningParametersByPortType:(id)type videoStabilizationStrength:(int)strength bravoTelephotoEnabled:(BOOL)enabled attachDebugFrameStatistics:(BOOL)statistics
{
  if (strength <= 2)
  {
    [BWActionCameraSceneMonitor initWithTuningParametersByPortType:? videoStabilizationStrength:? bravoTelephotoEnabled:? attachDebugFrameStatistics:?];
    return 0;
  }

  enabledCopy = enabled;
  v27.receiver = self;
  v27.super_class = BWActionCameraSceneMonitor;
  v9 = [(BWActionCameraSceneMonitor *)&v27 init];
  v10 = v9;
  if (v9)
  {
    v9->_sceneTooDarkMonitoringEnabled = 1;
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v12 = off_1E798A0D8;
    if (strength == 3)
    {
      v26 = 300;
      v13 = 10;
      v14 = 100;
      v15 = @"HighStrength";
    }

    else
    {
      if (strength != 4)
      {
        goto LABEL_17;
      }

      v26 = 650;
      v13 = 24;
      v14 = 185;
      v15 = @"UltraStrength";
    }

    v16 = *off_1E798A0D0;
    v17 = [objc_msgSend(objc_msgSend(objc_msgSend(type objectForKeyedSubscript:{*off_1E798A0D0), "objectForKeyedSubscript:", v15), "objectForKeyedSubscript:", @"TooDarkLuxLevelThreshold", "intValue"}];
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v14;
    }

    -[NSDictionary setObject:forKeyedSubscript:](v11, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInt:v18], v16);
    v19 = *off_1E798A0C0;
    v20 = [objc_msgSend(objc_msgSend(objc_msgSend(type objectForKeyedSubscript:{*off_1E798A0C0), "objectForKeyedSubscript:", v15), "objectForKeyedSubscript:", @"TooDarkLuxLevelThreshold", "intValue"}];
    if (v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v13;
    }

    -[NSDictionary setObject:forKeyedSubscript:](v11, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInt:v21], v19);
    v12 = off_1E798A0D8;
    v22 = *off_1E798A0D8;
    v23 = [objc_msgSend(objc_msgSend(objc_msgSend(type objectForKeyedSubscript:{*off_1E798A0D8), "objectForKeyedSubscript:", v15), "objectForKeyedSubscript:", @"TooDarkLuxLevelThreshold", "intValue"}];
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = v26;
    }

    -[NSDictionary setObject:forKeyedSubscript:](v11, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInt:v24], v22);
LABEL_17:
    if (enabledCopy)
    {
      [(NSDictionary *)v11 setObject:0 forKeyedSubscript:*v12];
    }

    v10->_luxThresholdsByPortType = v11;
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWActionCameraSceneMonitor;
  [(BWActionCameraSceneMonitor *)&v3 dealloc];
}

- (void)setAutoFocusInProgress:(BOOL)progress focusLocked:(BOOL)locked oneShotFocusScanInProgress:(BOOL)inProgress
{
  if (progress || locked || inProgress)
  {
    self->_oneShotFocusScanInProgress = !progress && !locked;
  }
}

- (void)focusScanDidComplete
{
  if (self->_oneShotFocusScanInProgress)
  {
    self->_oneShotFocusScanInProgress = 0;
  }
}

- (BOOL)resolveSDOFStatusWithSampleBuffer:(opaqueCMSampleBuffer *)buffer frameStatisticsByPortType:(id)type sceneFlags:(unint64_t)flags flashOrTorchWillBeActive:(BOOL)active digitalFlashWillFire:(BOOL)fire thermalPressureLevel:(int)level peakPowerPressureLevel:(int)pressureLevel effectStatus:(int *)self0 stagePreviewStatus:(int *)self1
{
  v13 = [CMGetAttachment(buffer *off_1E798A3C8];
  v14 = [type objectForKeyedSubscript:v13];
  v15 = [-[NSDictionary objectForKeyedSubscript:](self->_luxThresholdsByPortType objectForKeyedSubscript:{v13), "intValue"}];
  oneShotFocusScanInProgress = self->_oneShotFocusScanInProgress;
  if (oneShotFocusScanInProgress)
  {
    return !oneShotFocusScanInProgress;
  }

  if (self->_sceneTooDarkMonitoringEnabled)
  {
    v17 = v15;
    if (!self->_sceneIsTooDark)
    {
      if ([v14 luxLevel] <= v15)
      {
        v18 = 1;
        goto LABEL_10;
      }

      if (!self->_sceneIsTooDark)
      {
        goto LABEL_11;
      }
    }

    if ([v14 luxLevel] > v17 / 5 + v17)
    {
      v18 = 0;
LABEL_10:
      self->_sceneIsTooDark = v18;
    }
  }

LABEL_11:
  if (status)
  {
    if (self->_sceneIsTooDark)
    {
      v19 = 5;
    }

    else
    {
      v19 = 0;
    }

    *status = v19;
  }

  if (previewStatus)
  {
    *previewStatus = 0;
  }

  return !oneShotFocusScanInProgress;
}

- (void)initWithTuningParametersByPortType:(void *)a1 videoStabilizationStrength:bravoTelephotoEnabled:attachDebugFrameStatistics:.cold.1(void *a1)
{
  fig_log_get_emitter();
  FigDebugAssert3();
}

@end