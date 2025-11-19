@interface BWStereoVideoCaptureSceneMonitor
- (BOOL)resolveStereoVideoCaptureStatusWithFrameStatistics:(id)a3 sceneFlags:(unint64_t)a4 stereoVideoCaptureStatusOut:(int *)a5;
- (BWStereoVideoCaptureSceneMonitor)initWithTuningParametersByPortType:(id)a3 attachDebugFrameStatistics:(BOOL)a4;
- (void)dealloc;
- (void)focusScanDidComplete;
- (void)setAutoFocusInProgress:(BOOL)a3 focusLocked:(BOOL)a4 oneShotFocusScanInProgress:(BOOL)a5;
@end

@implementation BWStereoVideoCaptureSceneMonitor

- (BWStereoVideoCaptureSceneMonitor)initWithTuningParametersByPortType:(id)a3 attachDebugFrameStatistics:(BOOL)a4
{
  v14.receiver = self;
  v14.super_class = BWStereoVideoCaptureSceneMonitor;
  v5 = [(BWStereoVideoCaptureSceneMonitor *)&v14 init:a3];
  v6 = v5;
  if (v5)
  {
    *(v5 + 9) = 257;
    v7 = *off_1E798A0C0;
    [objc_msgSend(objc_msgSend(a3 objectForKeyedSubscript:{*off_1E798A0C0), "objectForKeyedSubscript:", @"TooDarkNormalizedSNRThreshold", "floatValue"}];
    if (v8 == 0.0)
    {
      v8 = 1.1755e-38;
    }

    *(v6 + 6) = v8;
    v9 = [objc_msgSend(objc_msgSend(a3 objectForKeyedSubscript:{v7), "objectForKeyedSubscript:", @"TooDarkLuxLevelThreshold", "intValue"}];
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = 75;
    }

    *(v6 + 7) = v10;
    [objc_msgSend(objc_msgSend(a3 objectForKeyedSubscript:{v7), "objectForKeyedSubscript:", @"TooCloseFocusDistanceThreshold", "doubleValue"}];
    if (v11 == 0.0)
    {
      v11 = 40.0;
    }

    *(v6 + 4) = v11;
    [objc_msgSend(objc_msgSend(a3 objectForKeyedSubscript:{v7), "objectForKeyedSubscript:", @"MinimumValidFocusDistance", "doubleValue"}];
    if (v12 == 0.0)
    {
      v12 = 20.0;
    }

    *(v6 + 2) = v12;
    *(v6 + 40) = vdupq_n_s64(0x7FF0000000000000uLL);
  }

  return v6;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = BWStereoVideoCaptureSceneMonitor;
  [(BWStereoVideoCaptureSceneMonitor *)&v2 dealloc];
}

- (void)setAutoFocusInProgress:(BOOL)a3 focusLocked:(BOOL)a4 oneShotFocusScanInProgress:(BOOL)a5
{
  if (a3 || a4 || a5)
  {
    self->_oneShotFocusScanInProgress = !a3 && !a4;
  }
}

- (void)focusScanDidComplete
{
  if (self->_oneShotFocusScanInProgress)
  {
    self->_oneShotFocusScanInProgress = 0;
  }
}

- (BOOL)resolveStereoVideoCaptureStatusWithFrameStatistics:(id)a3 sceneFlags:(unint64_t)a4 stereoVideoCaptureStatusOut:(int *)a5
{
  oneShotFocusScanInProgress = self->_oneShotFocusScanInProgress;
  if (oneShotFocusScanInProgress)
  {
    return !oneShotFocusScanInProgress;
  }

  v7 = a4;
  if (![objc_msgSend(a3 "portType")])
  {
    if ([objc_msgSend(a3 "portType")])
    {
      if (self->_subjectTooCloseMonitoringEnabled)
      {
        [a3 focusDistance];
        self->_lastSuperWideFocusDistance = v13;
        if (v13 <= 0.0)
        {
          self->_lastSuperWideFocusDistance = INFINITY;
        }
      }
    }

    goto LABEL_29;
  }

  if (self->_sceneTooDarkMonitoringEnabled)
  {
    [a3 normalizedSNR];
    v11 = v10;
    v12 = [a3 luxLevel];
  }

  else
  {
    v12 = -1;
    v11 = 1.1755e-38;
  }

  if (self->_subjectTooCloseMonitoringEnabled)
  {
    [a3 focusDistance];
    self->_lastWideFocusDistance = v14;
    if (v14 <= 0.0)
    {
      self->_lastWideFocusDistance = INFINITY;
    }
  }

  normalizedSNRThreshold = self->_normalizedSNRThreshold;
  if (normalizedSNRThreshold > 1.1755e-38 && v11 > 1.1755e-38)
  {
    if (self->_sceneIsTooDark || v11 > normalizedSNRThreshold)
    {
      if (self->_sceneIsTooDark && v11 > (normalizedSNRThreshold + (normalizedSNRThreshold / 5.0)))
      {
        goto LABEL_26;
      }

      goto LABEL_29;
    }

LABEL_28:
    self->_sceneIsTooDark = 1;
    goto LABEL_29;
  }

  if (v12 == -1)
  {
    goto LABEL_29;
  }

  luxLevelThreshold = self->_luxLevelThreshold;
  if (!self->_sceneIsTooDark)
  {
    if (v12 > luxLevelThreshold)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (v12 > luxLevelThreshold / 5 + luxLevelThreshold)
  {
LABEL_26:
    self->_sceneIsTooDark = 0;
  }

LABEL_29:
  lastSuperWideFocusDistance = self->_lastSuperWideFocusDistance;
  focusDistanceThreshold = self->_focusDistanceThreshold;
  if (self->_lastWideFocusDistance < lastSuperWideFocusDistance)
  {
    lastSuperWideFocusDistance = self->_lastWideFocusDistance;
  }

  subjectIsTooClose = self->_subjectIsTooClose;
  if (subjectIsTooClose)
  {
    if (lastSuperWideFocusDistance <= focusDistanceThreshold * 1.2)
    {
      v22 = 1;
      goto LABEL_39;
    }

    v21 = 0;
  }

  else
  {
    if (lastSuperWideFocusDistance > focusDistanceThreshold)
    {
      v22 = 0;
      goto LABEL_39;
    }

    v21 = 1;
  }

  v22 = !subjectIsTooClose;
  self->_subjectIsTooClose = v21;
LABEL_39:
  if (a5)
  {
    if (self->_sceneIsTooDark)
    {
      v23 = 2;
    }

    else
    {
      v23 = 0;
    }

    if ((v7 & 0x4000000) != 0)
    {
      v24 = 2;
    }

    else
    {
      v24 = v23;
    }

    if ((v7 & 0x8000000) != 0)
    {
      v24 = 3;
    }

    if (!self->_sceneTooDarkMonitoringEnabled)
    {
      v24 = v23;
    }

    if (v22)
    {
      v25 = v24 | 4;
    }

    else
    {
      v25 = v24;
    }

    *a5 = v25;
  }

  return !oneShotFocusScanInProgress;
}

@end