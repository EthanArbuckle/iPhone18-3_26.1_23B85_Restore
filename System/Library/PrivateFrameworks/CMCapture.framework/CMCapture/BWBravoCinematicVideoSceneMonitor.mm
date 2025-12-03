@interface BWBravoCinematicVideoSceneMonitor
- (BOOL)resolveSDOFStatusWithSampleBuffer:(opaqueCMSampleBuffer *)buffer frameStatisticsByPortType:(id)type sceneFlags:(unint64_t)flags flashOrTorchWillBeActive:(BOOL)active digitalFlashWillFire:(BOOL)fire thermalPressureLevel:(int)level peakPowerPressureLevel:(int)pressureLevel effectStatus:(int *)self0 stagePreviewStatus:(int *)self1;
- (BWBravoCinematicVideoSceneMonitor)initWithTuningParameters:(id)parameters attachDebugFrameStatistics:(BOOL)statistics;
- (void)dealloc;
- (void)focusScanDidComplete;
- (void)setAutoFocusInProgress:(BOOL)progress focusLocked:(BOOL)locked oneShotFocusScanInProgress:(BOOL)inProgress;
@end

@implementation BWBravoCinematicVideoSceneMonitor

- (BWBravoCinematicVideoSceneMonitor)initWithTuningParameters:(id)parameters attachDebugFrameStatistics:(BOOL)statistics
{
  v9.receiver = self;
  v9.super_class = BWBravoCinematicVideoSceneMonitor;
  v5 = [(BWBravoCinematicVideoSceneMonitor *)&v9 init:parameters];
  if (v5)
  {
    [objc_msgSend(parameters objectForKeyedSubscript:{@"TooDarkLuxLevelThreshold", "floatValue"}];
    v7 = v6;
    if (!v6)
    {
      v7 = 50;
    }

    v5->_sceneTooDarkLuxThreshold = v7;
    v5->_sceneIsTooDark = 0;
    v5->_sceneTooDarkMonitoringEnabled = 1;
  }

  return v5;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = BWBravoCinematicVideoSceneMonitor;
  [(BWBravoCinematicVideoSceneMonitor *)&v2 dealloc];
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
  v12 = [type objectForKeyedSubscript:{objc_msgSend(CMGetAttachment(buffer, *off_1E798A3C8, 0), "objectForKeyedSubscript:", *off_1E798B540)}];
  if (self->_sceneTooDarkMonitoringEnabled)
  {
    v13 = v12;
    if (self->_sceneIsTooDark)
    {
      goto LABEL_3;
    }

    if ([v12 luxLevel] <= self->_sceneTooDarkLuxThreshold)
    {
      v14 = 1;
LABEL_9:
      self->_sceneIsTooDark = v14;
      goto LABEL_10;
    }

    if (self->_sceneIsTooDark)
    {
LABEL_3:
      if ([v13 luxLevel] <= self->_sceneTooDarkLuxThreshold + 1)
      {
        goto LABEL_10;
      }

      v14 = 0;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (status)
  {
    if (self->_sceneIsTooDark)
    {
      v15 = 5;
    }

    else
    {
      v15 = 1;
    }

    *status = v15;
  }

  return 1;
}

@end