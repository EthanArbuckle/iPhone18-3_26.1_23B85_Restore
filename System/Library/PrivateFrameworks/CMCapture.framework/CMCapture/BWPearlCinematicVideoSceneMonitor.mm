@interface BWPearlCinematicVideoSceneMonitor
- (BOOL)resolveSDOFStatusWithSampleBuffer:(opaqueCMSampleBuffer *)buffer frameStatisticsByPortType:(id)type sceneFlags:(unint64_t)flags flashOrTorchWillBeActive:(BOOL)active digitalFlashWillFire:(BOOL)fire thermalPressureLevel:(int)level peakPowerPressureLevel:(int)pressureLevel effectStatus:(int *)self0 stagePreviewStatus:(int *)self1;
- (BWPearlCinematicVideoSceneMonitor)initWithTuningParameters:(id)parameters attachDebugFrameStatistics:(BOOL)statistics;
- (void)dealloc;
- (void)setSDOFBackgroundShiftSum:(float)sum invalidShiftRatio:(float)ratio closeCanonicalDisparityAverage:(float)average faceCanonicalDisparityAverages:(id)averages erodedForegroundRatio:(float)foregroundRatio foregroundRatio:(float)a8 occluded:(BOOL)occluded faces:(id)self0 personSegmentationRatio:(float)self1;
@end

@implementation BWPearlCinematicVideoSceneMonitor

- (BWPearlCinematicVideoSceneMonitor)initWithTuningParameters:(id)parameters attachDebugFrameStatistics:(BOOL)statistics
{
  v9.receiver = self;
  v9.super_class = BWPearlCinematicVideoSceneMonitor;
  v5 = [(BWPearlCinematicVideoSceneMonitor *)&v9 init:parameters];
  if (v5)
  {
    v5->_numberOfFramesToWaitForAEAndLTMToStabilize = [objc_msgSend(parameters objectForKeyedSubscript:{@"NumberOfFramesToWaitForAEAndLTMToStabilize", "unsignedIntValue"}];
    [objc_msgSend(parameters objectForKeyedSubscript:{@"TooDarkLuxLevelThreshold", "floatValue"}];
    v7 = v6;
    if (!v6)
    {
      v7 = 50;
    }

    v5->_sceneTooDarkLuxThreshold = v7;
    v5->_sceneTooDarkMonitoringEnabled = 1;
    v5->_sceneIsTooDark = 0;
  }

  return v5;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = BWPearlCinematicVideoSceneMonitor;
  [(BWPearlCinematicVideoSceneMonitor *)&v2 dealloc];
}

- (void)setSDOFBackgroundShiftSum:(float)sum invalidShiftRatio:(float)ratio closeCanonicalDisparityAverage:(float)average faceCanonicalDisparityAverages:(id)averages erodedForegroundRatio:(float)foregroundRatio foregroundRatio:(float)a8 occluded:(BOOL)occluded faces:(id)self0 personSegmentationRatio:(float)self1
{
  if (self->_occluded != occluded)
  {
    self->_occluded = occluded;
  }
}

- (BOOL)resolveSDOFStatusWithSampleBuffer:(opaqueCMSampleBuffer *)buffer frameStatisticsByPortType:(id)type sceneFlags:(unint64_t)flags flashOrTorchWillBeActive:(BOOL)active digitalFlashWillFire:(BOOL)fire thermalPressureLevel:(int)level peakPowerPressureLevel:(int)pressureLevel effectStatus:(int *)self0 stagePreviewStatus:(int *)self1
{
  v13 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
  if (!v13)
  {
    return v13;
  }

  if (!self->_occluded)
  {
    v15 = [type objectForKeyedSubscript:{objc_msgSend(v13, "objectForKeyedSubscript:", *off_1E798B540)}];
    v16 = v15;
    if (!self->_aeStableAfterStartStreaming)
    {
      if ([v15 aeStable])
      {
        sdofNumFramesSinceAEBecameStable = self->_sdofNumFramesSinceAEBecameStable;
        if (sdofNumFramesSinceAEBecameStable >= self->_numberOfFramesToWaitForAEAndLTMToStabilize)
        {
          self->_aeStableAfterStartStreaming = 1;
          self->_sdofNumFramesSinceAEBecameStable = sdofNumFramesSinceAEBecameStable + 1;
        }

        else
        {
          frameCount = [type frameCount];
          ++self->_sdofNumFramesSinceAEBecameStable;
          self->_aeStableAfterStartStreaming = frameCount > 0x13;
          if (frameCount <= 0x13)
          {
            goto LABEL_10;
          }
        }
      }

      else
      {
        frameCount2 = [type frameCount];
        self->_aeStableAfterStartStreaming = frameCount2 > 0x13;
        self->_sdofNumFramesSinceAEBecameStable = 0;
        if (frameCount2 < 0x14)
        {
LABEL_10:
          LOBYTE(v13) = 0;
          return v13;
        }
      }
    }

    if (!self->_sceneTooDarkMonitoringEnabled)
    {
      goto LABEL_21;
    }

    if (!self->_sceneIsTooDark)
    {
      if ([v16 luxLevel] <= self->_sceneTooDarkLuxThreshold)
      {
        v20 = 1;
LABEL_20:
        self->_sceneIsTooDark = v20;
        goto LABEL_21;
      }

      if (!self->_sceneIsTooDark)
      {
LABEL_21:
        if (self->_sceneIsTooDark)
        {
          v14 = 5;
        }

        else
        {
          v14 = 1;
        }

        goto LABEL_24;
      }
    }

    if ([v16 luxLevel] <= self->_sceneTooDarkLuxThreshold + 1)
    {
      goto LABEL_21;
    }

    v20 = 0;
    goto LABEL_20;
  }

  v14 = 4;
LABEL_24:
  if (status)
  {
    *status = v14;
  }

  LOBYTE(v13) = 1;
  return v13;
}

@end