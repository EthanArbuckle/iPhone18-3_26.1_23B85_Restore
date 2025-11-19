@interface BWPearlCinematicVideoSceneMonitor
- (BOOL)resolveSDOFStatusWithSampleBuffer:(opaqueCMSampleBuffer *)a3 frameStatisticsByPortType:(id)a4 sceneFlags:(unint64_t)a5 flashOrTorchWillBeActive:(BOOL)a6 digitalFlashWillFire:(BOOL)a7 thermalPressureLevel:(int)a8 peakPowerPressureLevel:(int)a9 effectStatus:(int *)a10 stagePreviewStatus:(int *)a11;
- (BWPearlCinematicVideoSceneMonitor)initWithTuningParameters:(id)a3 attachDebugFrameStatistics:(BOOL)a4;
- (void)dealloc;
- (void)setSDOFBackgroundShiftSum:(float)a3 invalidShiftRatio:(float)a4 closeCanonicalDisparityAverage:(float)a5 faceCanonicalDisparityAverages:(id)a6 erodedForegroundRatio:(float)a7 foregroundRatio:(float)a8 occluded:(BOOL)a9 faces:(id)a10 personSegmentationRatio:(float)a11;
@end

@implementation BWPearlCinematicVideoSceneMonitor

- (BWPearlCinematicVideoSceneMonitor)initWithTuningParameters:(id)a3 attachDebugFrameStatistics:(BOOL)a4
{
  v9.receiver = self;
  v9.super_class = BWPearlCinematicVideoSceneMonitor;
  v5 = [(BWPearlCinematicVideoSceneMonitor *)&v9 init:a3];
  if (v5)
  {
    v5->_numberOfFramesToWaitForAEAndLTMToStabilize = [objc_msgSend(a3 objectForKeyedSubscript:{@"NumberOfFramesToWaitForAEAndLTMToStabilize", "unsignedIntValue"}];
    [objc_msgSend(a3 objectForKeyedSubscript:{@"TooDarkLuxLevelThreshold", "floatValue"}];
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

- (void)setSDOFBackgroundShiftSum:(float)a3 invalidShiftRatio:(float)a4 closeCanonicalDisparityAverage:(float)a5 faceCanonicalDisparityAverages:(id)a6 erodedForegroundRatio:(float)a7 foregroundRatio:(float)a8 occluded:(BOOL)a9 faces:(id)a10 personSegmentationRatio:(float)a11
{
  if (self->_occluded != a9)
  {
    self->_occluded = a9;
  }
}

- (BOOL)resolveSDOFStatusWithSampleBuffer:(opaqueCMSampleBuffer *)a3 frameStatisticsByPortType:(id)a4 sceneFlags:(unint64_t)a5 flashOrTorchWillBeActive:(BOOL)a6 digitalFlashWillFire:(BOOL)a7 thermalPressureLevel:(int)a8 peakPowerPressureLevel:(int)a9 effectStatus:(int *)a10 stagePreviewStatus:(int *)a11
{
  v13 = CMGetAttachment(a3, *off_1E798A3C8, 0);
  if (!v13)
  {
    return v13;
  }

  if (!self->_occluded)
  {
    v15 = [a4 objectForKeyedSubscript:{objc_msgSend(v13, "objectForKeyedSubscript:", *off_1E798B540)}];
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
          v18 = [a4 frameCount];
          ++self->_sdofNumFramesSinceAEBecameStable;
          self->_aeStableAfterStartStreaming = v18 > 0x13;
          if (v18 <= 0x13)
          {
            goto LABEL_10;
          }
        }
      }

      else
      {
        v19 = [a4 frameCount];
        self->_aeStableAfterStartStreaming = v19 > 0x13;
        self->_sdofNumFramesSinceAEBecameStable = 0;
        if (v19 < 0x14)
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
  if (a10)
  {
    *a10 = v14;
  }

  LOBYTE(v13) = 1;
  return v13;
}

@end