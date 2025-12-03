@interface BWBravoStreamSelector
+ (void)initialize;
- ($06E035DAA80D7DA92D7AC3530BEA5F2A)selectionConfiguration;
- (BOOL)_conditionsAllowSwitchToRecommendedMasterStream:(_BOOL8)result debugOverlayInfo:(void *)info;
- (BWBravoStreamSelector)initWithStreamSelectionAttributes:(id)attributes wideStream:(id)stream teleStream:(id)teleStream superWideStream:(id)wideStream cameraCalibrationValid:(BOOL)valid;
- (NSArray)eligibleFallbackPortTypes;
- (id)preferredMasterPortTypeForFrameStatisticsByPortType:(id)type zoomFactor:(float)factor;
- (id)recommendMasterStreamUsingCurrentMasterStream:(id)stream frameStatisticsByPortType:(id)type zoomFactor:(float)factor isAutoFlashScene:(BOOL)scene digitalFlashMode:(int)mode isStationary:(BOOL)stationary detectedObjects:(id)objects cameraControlsStatisticsMasterStream:(id)self0;
- (uint64_t)_exposureAllowsSwitchToRecommendedMasterStream:(uint64_t)result frameStatisticsByPortType:(uint64_t)type;
- (uint64_t)_exposureAndFocusStableForSwitchOverTo:(uint64_t)to forFrameStatisticsByPortType:(uint64_t)type debugOverlayInfo:;
- (uint64_t)_focusIsStable:(uint64_t)stable;
- (uint64_t)_selectionBehaviorAllowsSwitchOverTo:(void *)to forFrameStatisticsByPortType:(_BYTE *)type zoomFactor:blockedByExposureFocusStability:debugOverlayInfo:;
- (uint64_t)_telephotoLimitsReachedForFrameStatisticsByPortType:(uint64_t)type debugOverlayInfo:;
- (uint64_t)_updateSceneChangeMonitorWithFrameStatisticsByPortType:(uint64_t)result fromMasterStream:(float)stream zoomFactor:(uint64_t)factor digitalFlashMode:(void *)mode debugOverlayInfo:(int)info;
- (uint64_t)_updateStateWithFrameStatisticsByPortType:(void *)type detectedObjects:;
- (uint64_t)_updateSuperWideFocusIsStableOnceWithFrameStatisticsByPortType:(uint64_t)result;
- (void)_preferredMasterStreamForFrameStatisticsByPortType:(char)type zoomFactor:(int)factor isAutoFlashScene:(int)scene digitalFlashMode:(void *)mode isStationary:(int)stationary debugOverlayInfo:(_BYTE *)info ignoreEligibleFallbackPortTypes:(float)types requiresFocusExposeStabilityOut:(int *)self0 selectionReasonOut:;
- (void)dealloc;
- (void)resetWithZoomFactor:(float)factor currentMasterStream:(id)stream;
- (void)setEligibleFallbackPortTypes:(id)types;
- (void)setSelectionConfiguration:(id)configuration;
- (void)setTeleMaxAEGain:(float)gain;
- (void)setTeleMaxEIT:(float)t;
@end

@implementation BWBravoStreamSelector

- (NSArray)eligibleFallbackPortTypes
{
  os_unfair_lock_lock(&self->_eligibleFallbackPortTypesLock);
  v3 = self->_eligibleFallbackPortTypes;
  os_unfair_lock_unlock(&self->_eligibleFallbackPortTypesLock);
  return v3;
}

- ($06E035DAA80D7DA92D7AC3530BEA5F2A)selectionConfiguration
{
  os_unfair_lock_lock(&self->_pendingSelectionConfigurationLock);
  selectionBehavior = self->_pendingSelectionConfiguration.selectionBehavior;
  restrictedSelectionConditions = self->_pendingSelectionConfiguration.restrictedSelectionConditions;
  os_unfair_lock_unlock(&self->_pendingSelectionConfigurationLock);
  v5 = selectionBehavior;
  v6 = restrictedSelectionConditions;
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWBravoStreamSelector)initWithStreamSelectionAttributes:(id)attributes wideStream:(id)stream teleStream:(id)teleStream superWideStream:(id)wideStream cameraCalibrationValid:(BOOL)valid
{
  v48.receiver = self;
  v48.super_class = BWBravoStreamSelector;
  v11 = [(BWBravoStreamSelector *)&v48 init:attributes];
  if (v11)
  {
    *(v11 + 1) = stream;
    *(v11 + 2) = teleStream;
    *(v11 + 3) = wideStream;
    *(v11 + 216) = xmmword_1AD046500;
    *(v11 + 232) = *(v11 + 216);
    *(v11 + 62) = 0;
    [objc_msgSend(attributes objectForKeyedSubscript:{@"minFocusDistanceChange", "floatValue"}];
    *(v11 + 100) = v12;
    array = [MEMORY[0x1E695DF70] array];
    if (stream && teleStream)
    {
      [array addObject:{objc_msgSend(stream, "portType")}];
      [objc_msgSend(attributes objectForKeyedSubscript:{@"wideToTeleFocusDistance", "floatValue"}];
      *(v11 + 15) = v14;
      [objc_msgSend(attributes objectForKeyedSubscript:{@"teleToWideFocusDistance", "floatValue"}];
      *(v11 + 14) = v15;
      [objc_msgSend(objc_msgSend(teleStream "stream")];
      v17 = v16;
      [objc_msgSend(objc_msgSend(teleStream "stream")];
      if (v17 > v18)
      {
        v18 = v17;
      }

      v19 = v18 * 1.1;
      if (v19 > 0.0)
      {
        *(v11 + 14) = v19 + (*(v11 + 14) - *(v11 + 15));
        *(v11 + 15) = v19;
      }

      v11[184] = [objc_msgSend(attributes objectForKeyedSubscript:{@"autoFocusRecommendedPrimaryPortTypeEnabled", "BOOLValue"}];
    }

    hasFocus = [wideStream hasFocus];
    if (stream && hasFocus)
    {
      [array addObject:{objc_msgSend(wideStream, "portType")}];
      [objc_msgSend(attributes objectForKeyedSubscript:{@"superWideMaximumAETargetOffset", "floatValue"}];
      *(v11 + 21) = v21;
      [objc_msgSend(attributes objectForKeyedSubscript:{@"superWideMaximumAETargetOffsetHysteresisLag", "floatValue"}];
      *(v11 + 22) = v22;
      *(v11 + 24) = 10;
      v11[100] = [objc_msgSend(attributes objectForKeyedSubscript:{@"superWideAllowedInAutoFlashScenes", "BOOLValue"}];
      [objc_msgSend(objc_msgSend(stream "stream")];
      v24 = v23;
      [objc_msgSend(objc_msgSend(stream "stream")];
      if (v24 > v25)
      {
        v25 = v24;
      }

      v26 = v25 * 1.1;
      if (v26 == 0.0)
      {
        v26 = 12.0;
      }

      *(v11 + 19) = v26;
      [objc_msgSend(attributes objectForKeyedSubscript:{@"superWideToWideHysteresisLag", "floatValue"}];
      *(v11 + 20) = v27 + *(v11 + 19);
      v28 = [objc_msgSend(attributes objectForKeyedSubscript:{@"autoFocusRecommendedPrimaryPortTypeEnabled", "BOOLValue"}];
      v11[185] = v28;
      v11[432] = v28 ^ 1;
      *(v11 + 117) = 1000;
    }

    *(v11 + 46) = [array copy];
    *(v11 + 47) = [array copy];
    *(v11 + 90) = 0;
    [objc_msgSend(attributes objectForKeyedSubscript:{@"gainHysteresisLag", "floatValue"}];
    *(v11 + 9) = v29;
    [objc_msgSend(attributes objectForKeyedSubscript:{@"minLuxLevelChange", "floatValue"}];
    *(v11 + 96) = v30;
    [objc_msgSend(attributes objectForKeyedSubscript:{@"maxLuxLevelForSceneChangeMonitoring", "floatValue"}];
    *(v11 + 97) = v31;
    *(v11 + 16) = 2;
    [objc_msgSend(attributes objectForKeyedSubscript:{@"minTeleToWideEITThresholdPercentage", "floatValue"}];
    *(v11 + 12) = v32;
    [objc_msgSend(attributes objectForKeyedSubscript:{@"maxTeleToWideEITThresholdPercentage", "floatValue"}];
    *(v11 + 13) = v33;
    LODWORD(v34) = *(v11 + 12);
    v36 = v33 > 0.0 && *&v34 > 0.0;
    v11[40] = v36;
    *(v11 + 17) = 2;
    v11[72] = [objc_msgSend(attributes objectForKeyedSubscript:{@"teleSwitchBasedOnExposureAndFocusTargetOffsetEnabled", 0.0, v34), "BOOLValue"}];
    v11[73] = [objc_msgSend(attributes objectForKeyedSubscript:{@"teleSwitchBasedOnFocusTargetOffsetInRestrictedModeEnabled", "BOOLValue"}];
    v11[74] = [objc_msgSend(attributes objectForKeyedSubscript:{@"teleExposureLimitsDisabled", "BOOLValue"}] ^ 1;
    *(v11 + 476) = 0x3FB333333F4CCCCDLL;
    v37 = [attributes objectForKeyedSubscript:@"digitalFlash"];
    [objc_msgSend(v37 objectForKeyedSubscript:{@"minTeleToWideEITThreshold", "doubleValue"}];
    *(v11 + 13) = v38;
    [objc_msgSend(v37 objectForKeyedSubscript:{@"maxTeleToWideEITThreshold", "doubleValue"}];
    *(v11 + 14) = v39;
    [objc_msgSend(v37 objectForKeyedSubscript:{@"minTeleToWideEITThresholdWithHumansPresent", "doubleValue"}];
    *(v11 + 15) = v40;
    [objc_msgSend(v37 objectForKeyedSubscript:{@"maxTeleToWideEITThresholdWithHumansPresent", "doubleValue"}];
    *(v11 + 16) = v41;
    *(v11 + 34) = 2;
    [objc_msgSend(v37 objectForKeyedSubscript:{@"minEITPercentageChange", "doubleValue"}];
    *(v11 + 49) = v42;
    v11[140] = 0;
    v11[141] = [objc_msgSend(v37 objectForKeyedSubscript:{@"minTeleToWideEITTargetOffsetThreshold", "BOOLValue"}];
    [objc_msgSend(v37 objectForKeyedSubscript:{@"minTeleToWideEITTargetOffsetThreshold", "doubleValue"}];
    *(v11 + 18) = v43;
    [objc_msgSend(v37 objectForKeyedSubscript:{@"maxTeleToWideEITTargetOffsetThreshold", "doubleValue"}];
    *(v11 + 19) = v44;
    [objc_msgSend(v37 objectForKeyedSubscript:{@"minTripodTeleToWideEITTargetOffsetThreshold", "doubleValue"}];
    *(v11 + 20) = v45;
    [objc_msgSend(v37 objectForKeyedSubscript:{@"maxTripodTeleToWideEITTargetOffsetThreshold", "doubleValue"}];
    *(v11 + 21) = v46;
    *(v11 + 22) = 0x4024000000000000;
    v11[296] = 0;
    *(v11 + 47) = 2;
    v11[192] = 0;
  }

  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWBravoStreamSelector;
  [(BWBravoStreamSelector *)&v3 dealloc];
}

- (void)setTeleMaxAEGain:(float)gain
{
  if (self->_teleMaxAEGain < gain)
  {
    self->_sceneChangeDetected = 1;
  }

  self->_teleMaxAEGain = gain;
}

- (void)setTeleMaxEIT:(float)t
{
  if (self->_teleMaxEIT < t)
  {
    self->_sceneChangeDetected = 1;
  }

  self->_teleMaxEIT = t;
}

- (void)resetWithZoomFactor:(float)factor currentMasterStream:(id)stream
{
  self->_currentMasterStream = stream;
  self->_recommendedMasterStream = stream;
  self->_preferredMasterStreamIgnoringEligibleFallbackPortTypes = stream;
  self->_previousZoomFactor = factor;
  self->_timeOfLastZoomFactorChange = 0;
  self->_resetSceneChangeMonitoring = 0;
  *&self->_teleMaxGainReachedCounter = 0;
  self->_timeOfLastFocusModeChange = 0;
  self->_timeOfLastExposureModeChange = 0;
  self->_waitingForSlaveFocusAfterZoomChange = 0;
  teleStream = self->_teleStream;
  if (teleStream && ([(BWFigVideoCaptureStream *)teleStream baseZoomFactor], v7 <= factor) || self->_superWideStream && ([(BWFigVideoCaptureStream *)self->_wideStream baseZoomFactor], v8 <= factor))
  {
    self->_sceneChangeDetected = 1;
  }
}

- (void)setSelectionConfiguration:(id)configuration
{
  selectionBehavior = self->_pendingSelectionConfiguration.selectionBehavior;
  if (configuration.var0 != selectionBehavior)
  {
    self->_waitingForSlaveFocusAfterZoomChange = 0;
LABEL_5:
    if (configuration.var0 != 2)
    {
LABEL_18:
      self->_pendingSelectionConfiguration = configuration;
      return;
    }

    if (selectionBehavior == 2)
    {
      restrictedSelectionConditions = self->_pendingSelectionConfiguration.restrictedSelectionConditions;
      if ((configuration.var1 & 2) == 0)
      {
LABEL_12:
        if ((configuration.var1 & 4) != 0 && (restrictedSelectionConditions & 4) == 0)
        {
          self->_timeOfLastExposureModeChange = 0;
        }

        if ((configuration.var1 & 1) != 0 && (restrictedSelectionConditions & 1) == 0)
        {
          self->_timeOfLastZoomFactorChange = 0;
        }

        goto LABEL_18;
      }
    }

    else
    {
      LOBYTE(restrictedSelectionConditions) = 0;
      if ((configuration.var1 & 2) == 0)
      {
        goto LABEL_12;
      }
    }

    if ((restrictedSelectionConditions & 2) == 0)
    {
      self->_timeOfLastFocusModeChange = 0;
    }

    goto LABEL_12;
  }

  if (configuration.var1 != self->_pendingSelectionConfiguration.restrictedSelectionConditions)
  {
    goto LABEL_5;
  }
}

- (void)setEligibleFallbackPortTypes:(id)types
{
  os_unfair_lock_lock(&self->_eligibleFallbackPortTypesLock);

  self->_eligibleFallbackPortTypes = [types copy];

  os_unfair_lock_unlock(&self->_eligibleFallbackPortTypesLock);
}

- (void)_preferredMasterStreamForFrameStatisticsByPortType:(char)type zoomFactor:(int)factor isAutoFlashScene:(int)scene digitalFlashMode:(void *)mode isStationary:(int)stationary debugOverlayInfo:(_BYTE *)info ignoreEligibleFallbackPortTypes:(float)types requiresFocusExposeStabilityOut:(int *)self0 selectionReasonOut:
{
  if (!self)
  {
    return 0;
  }

  v15 = 200;
  if (stationary)
  {
    v15 = 288;
  }

  v16 = *(self + v15);
  eligibleFallbackPortTypes = [self eligibleFallbackPortTypes];
  v87 = eligibleFallbackPortTypes;
  if (stationary)
  {
    eligibleFallbackPortTypes = *(self + 376);
  }

  array = [MEMORY[0x1E695DF70] array];
  v19 = *(self + 16);
  if (v19)
  {
    [v19 baseZoomFactor];
    if (v20 <= types)
    {
      [array addObject:*(self + 16)];
    }
  }

  v21 = *(self + 8);
  if (v21)
  {
    [v21 baseZoomFactor];
    if (v22 <= types && (![array count] || objc_msgSend(eligibleFallbackPortTypes, "containsObject:", objc_msgSend(*(self + 8), "portType"))))
    {
      [array addObject:*(self + 8)];
    }
  }

  v23 = *(self + 24);
  if (v23)
  {
    [v23 baseZoomFactor];
    if (v24 <= types && (![array count] || objc_msgSend(eligibleFallbackPortTypes, "containsObject:", objc_msgSend(*(self + 24), "portType"))))
    {
      [array addObject:*(self + 24)];
    }
  }

  outCopy3 = out;
  v26 = [array containsObject:v16];
  firstObject = v16;
  if (![array count])
  {
    goto LABEL_113;
  }

  if ([array count] <= 1)
  {
    firstObject = [array firstObject];
    if (info)
    {
      goto LABEL_114;
    }

    goto LABEL_115;
  }

  if (v26 && *(self + 216) == 2)
  {
    v91[0] = MEMORY[0x1E69E9820];
    v91[1] = 3221225472;
    v91[2] = __234__BWBravoStreamSelector__preferredMasterStreamForFrameStatisticsByPortType_zoomFactor_isAutoFlashScene_digitalFlashMode_isStationary_debugOverlayInfo_ignoreEligibleFallbackPortTypes_requiresFocusExposeStabilityOut_selectionReasonOut___block_invoke;
    v91[3] = &unk_1E798FDF0;
    v91[4] = v16;
    v91[5] = self;
    v91[6] = mode;
    [array filterUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", v91)}];
  }

  if (!*(self + 16) || ![array containsObject:?])
  {
    goto LABEL_84;
  }

  v28 = *(self + 16);
  if (v16 == v28)
  {
    if (([BWBravoStreamSelector _telephotoLimitsReachedForFrameStatisticsByPortType:self debugOverlayInfo:?]& 1) != 0)
    {
      goto LABEL_84;
    }

LABEL_42:
    if (*(self + 74))
    {
      if (!factor)
      {
        goto LABEL_82;
      }
    }

    else if (!factor || (*(self + 141) & 1) == 0)
    {
      goto LABEL_82;
    }

    v43 = [a2 objectForKeyedSubscript:{objc_msgSend(*(self + 16), "portType")}];
    [v43 eit];
    v45 = v44;
    if (*(self + 141) == 1)
    {
      v46 = 1.0;
      if ([v43 aeTarget] && objc_msgSend(v43, "aeAverage"))
      {
        aeTarget = [v43 aeTarget];
        v46 = aeTarget / [v43 aeAverage];
      }

      v48 = 168;
      if (factor == 1)
      {
        v48 = 160;
      }

      v49 = 152;
      if (factor == 1)
      {
        v49 = 144;
      }

      if (!scene)
      {
        v48 = v49;
      }

      v50 = *(self + v48);
      firstObject = *(self + 16);
      if (v16 != firstObject)
      {
        v50 = v50 - *(self + 176);
      }

      if (v45 * v46 < v50)
      {
        goto LABEL_113;
      }

      goto LABEL_84;
    }

    if (*(self + 140) == 1)
    {
      v51 = 1.0;
      if ([v43 aeTarget] && objc_msgSend(v43, "aeAverage"))
      {
        aeTarget2 = [v43 aeTarget];
        v51 = aeTarget2 / [v43 aeAverage];
      }

      [v43 eit];
      v54 = v51 * v53;
      [v43 exposureBias];
      v45 = v54 / exp2(v55);
    }

    v56 = 112;
    if (factor == 1)
    {
      v56 = 104;
    }

    v57 = *(self + v56);
    v58 = 128;
    if (factor == 1)
    {
      v58 = 120;
    }

    v59 = v45 < *(self + v58) || *(self + 356) <= *(self + 136);
    if (v45 >= v57 || !v59)
    {
      goto LABEL_84;
    }

LABEL_82:
    firstObject = *(self + 16);
    if (!info)
    {
      goto LABEL_115;
    }

LABEL_114:
    *info = v26;
    goto LABEL_115;
  }

  v29 = [a2 objectForKeyedSubscript:{objc_msgSend(v28, "portType")}];
  v30 = v29;
  v31 = *(self + 36);
  if (v31 == 0.0)
  {
    v32 = 3.4028e38;
  }

  else
  {
    v32 = *(self + 32) / v31;
  }

  [v29 gain];
  v34 = v33;
  v35 = *(self + 48);
  if (v35 == 0.0)
  {
    v36 = 3.40282347e38;
  }

  else
  {
    v36 = ((v35 * *(self + 44)) / 100.0);
  }

  [v30 eit];
  if (*(self + 74) == 1)
  {
    v38 = v34 < v32;
    if (*(self + 40))
    {
      v38 = v37 < v36;
    }

    if (v38)
    {
      v39 = [BWBravoStreamSelector _exposureAllowsSwitchToRecommendedMasterStream:self frameStatisticsByPortType:*(self + 16)];
    }

    else
    {
      v39 = 0;
    }
  }

  else
  {
    v39 = 1;
  }

  if (*(self + 184) == 1)
  {
    v40 = [objc_msgSend(v30 "afRecommendedPrimaryPortType")];
    outCopy3 = out;
  }

  else
  {
    [objc_msgSend(a2 objectForKeyedSubscript:{objc_msgSend(*(self + 8), "portType")), "focusDistance"}];
    outCopy3 = out;
    if (v41 <= 0.0 || v41 < *(self + 60))
    {
      goto LABEL_84;
    }

    if ([eligibleFallbackPortTypes containsObject:{objc_msgSend(*(self + 24), "portType")}])
    {
      [objc_msgSend(a2 objectForKeyedSubscript:{objc_msgSend(*(self + 24), "portType")), "focusDistance"}];
      v40 = v42 >= *(self + 76);
    }

    else
    {
      v40 = 1;
    }
  }

  if ((v40 & v39) == 1)
  {
    goto LABEL_42;
  }

LABEL_84:
  if (*(self + 8) && [array containsObject:?])
  {
    if (([eligibleFallbackPortTypes containsObject:{objc_msgSend(*(self + 24), "portType")}] & 1) == 0)
    {
      goto LABEL_112;
    }

    v60 = *(self + 76);
    v61 = *(self + 24);
    v62 = *(self + 84) / *(self + 88);
    modeCopy = mode;
    if (v16 == v61 && [v87 containsObject:{objc_msgSend(v61, "portType")}])
    {
      v60 = *(self + 80);
      v62 = *(self + 84);
    }

    v63 = [a2 objectForKeyedSubscript:{objc_msgSend(*(self + 24), "portType")}];
    v64 = v63;
    if (*(self + 185) == 1)
    {
      v65 = [objc_msgSend(v63 "afRecommendedPrimaryPortType")];
    }

    else
    {
      [objc_msgSend(a2 objectForKeyedSubscript:{objc_msgSend(*(self + 8), "portType")), "focusDistance"}];
      v67 = v66;
      [v64 focusDistance];
      v65 = v68 > 0.0 && fminf(v68, v67) < v60;
    }

    v69 = type ^ 1;
    if (factor)
    {
      v69 = 0;
    }

    if ((v69 & 1) != 0 || (*(self + 100) & 1) == 0)
    {
      aeTarget3 = [v64 aeTarget];
      v73 = aeTarget3 / [v64 aeAverage];
      if (v73 <= v62)
      {
        *(self + 92) = 0;
        v70 = 1;
      }

      else if (v16 == *(self + 24))
      {
        v74 = *(self + 92);
        v75 = *(self + 96);
        *(self + 92) = v74 + 1;
        v70 = v74 < v75;
      }

      else
      {
        v70 = 0;
        *(self + 92) = 0;
      }

      if (modeCopy)
      {
        *&v72 = v62;
        [modeCopy setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v72), @"SuperWideAERatioThreshold"}];
        *&v76 = v73;
        [modeCopy setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v76), @"SuperWideAERatio"}];
      }
    }

    else
    {
      *(self + 92) = 0;
      v70 = 1;
    }

    if ((v65 & v70 & 1) == 0)
    {
LABEL_112:
      firstObject = *(self + 8);
      goto LABEL_113;
    }
  }

  firstObject = v16;
  if (!*(self + 24) || (firstObject = v16, ![array containsObject:?]))
  {
LABEL_113:
    if (!info)
    {
      goto LABEL_115;
    }

    goto LABEL_114;
  }

  firstObject = *(self + 24);
  if (info)
  {
    goto LABEL_114;
  }

LABEL_115:
  if (outCopy3)
  {
    if (stationary)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Cannot compute selection reason when ignoreEligibleFallbackPortTypes is YES.", 0}]);
    }

    if ([*(self + 280) isEqualToArray:eligibleFallbackPortTypes])
    {
      v77 = 0;
      v78 = 0;
    }

    else
    {
      portType = [firstObject portType];
      portType2 = [v16 portType];
      if ([eligibleFallbackPortTypes containsObject:portType])
      {
        v77 = [*(self + 280) containsObject:portType] ^ 1;
      }

      else
      {
        v77 = 0;
      }

      if ([*(self + 280) containsObject:portType2])
      {
        v78 = [eligibleFallbackPortTypes containsObject:portType2] ^ 1;
      }

      else
      {
        v78 = 0;
      }

      *(self + 280) = eligibleFallbackPortTypes;
    }

    if ([*(self + 272) isEqualToArray:array])
    {
      v81 = 1;
LABEL_137:
      *outCopy3 = v81;
      return firstObject;
    }

    if (*(self + 272) || firstObject == v16)
    {
      v83 = (firstObject != [array firstObject]) | v77 | v78;
      v82 = *(self + 272);
      if ((v83 & 1) == 0)
      {
        v81 = 0;
LABEL_136:

        *(self + 272) = array;
        goto LABEL_137;
      }
    }

    else
    {
      v82 = 0;
    }

    if (((v82 != 0) & (v77 | v78)) != 0)
    {
      v81 = 2;
    }

    else
    {
      v81 = 1;
    }

    goto LABEL_136;
  }

  return firstObject;
}

- (id)preferredMasterPortTypeForFrameStatisticsByPortType:(id)type zoomFactor:(float)factor
{
  v4 = [(BWBravoStreamSelector *)self _preferredMasterStreamForFrameStatisticsByPortType:type zoomFactor:0 isAutoFlashScene:0 digitalFlashMode:0 isStationary:0 debugOverlayInfo:1 ignoreEligibleFallbackPortTypes:0 requiresFocusExposeStabilityOut:factor selectionReasonOut:0];

  return [v4 portType];
}

- (id)recommendMasterStreamUsingCurrentMasterStream:(id)stream frameStatisticsByPortType:(id)type zoomFactor:(float)factor isAutoFlashScene:(BOOL)scene digitalFlashMode:(int)mode isStationary:(BOOL)stationary detectedObjects:(id)objects cameraControlsStatisticsMasterStream:(id)self0
{
  os_unfair_lock_lock(&self->_pendingSelectionConfigurationLock);
  self->_selectionConfiguration = self->_pendingSelectionConfiguration;
  os_unfair_lock_unlock(&self->_pendingSelectionConfigurationLock);
  if (self->_previousZoomFactor != factor)
  {
    self->_timeOfLastZoomFactorChange = mach_absolute_time();
    if (self->_selectionConfiguration.selectionBehavior == 2 && (self->_selectionConfiguration.restrictedSelectionConditions & 1) == 0)
    {
      if (self->_superWideStream && (p_wideStream = &self->_wideStream, wideStream = self->_wideStream, wideStream != stream) && (previousZoomFactor = self->_previousZoomFactor, [(BWFigVideoCaptureStream *)wideStream baseZoomFactor], previousZoomFactor < v19) && ([(BWFigVideoCaptureStream *)*p_wideStream baseZoomFactor], v20 <= factor) || (p_wideStream = &self->_teleStream, (teleStream = self->_teleStream) != 0) && teleStream != stream && (v22 = self->_previousZoomFactor, [(BWFigVideoCaptureStream *)teleStream baseZoomFactor], v22 < v23) && ([(BWFigVideoCaptureStream *)*p_wideStream baseZoomFactor], v24 <= factor))
      {
        portType = [(BWFigVideoCaptureStream *)*p_wideStream portType];
        self->_timeOfLastPortTypeMadeEligibleByZoom = self->_timeOfLastZoomFactorChange;
        self->_lastPortTypeMadeEligibleByZoom = portType;
      }
    }
  }

  if (self->_superWideWaitForStableFocusOnce)
  {
    [BWBravoStreamSelector _updateSuperWideFocusIsStableOnceWithFrameStatisticsByPortType:?];
  }

  [BWBravoStreamSelector _updateSceneChangeMonitorWithFrameStatisticsByPortType:factor fromMasterStream:type zoomFactor:stream digitalFlashMode:mode debugOverlayInfo:?];
  [(BWBravoStreamSelector *)self _updateStateWithFrameStatisticsByPortType:type detectedObjects:objects];
  self->_currentMasterStream = stream;
  v70[0] = self->_lastSelectionReason;
  if (self->_selectionConfiguration.selectionBehavior == 3)
  {
    superWideStream = 0;
    goto LABEL_60;
  }

  v67 = 0;
  v26 = OUTLINED_FUNCTION_1_21();
  v34 = [(BWBravoStreamSelector *)v27 _preferredMasterStreamForFrameStatisticsByPortType:v28 zoomFactor:v29 isAutoFlashScene:v30 digitalFlashMode:v31 isStationary:v32 debugOverlayInfo:0 ignoreEligibleFallbackPortTypes:v33 requiresFocusExposeStabilityOut:v26 selectionReasonOut:v70];
  v35 = [(NSArray *)self->_eligibleFallbackPortTypes count];
  v36 = v34;
  if (v35 < [(NSArray *)self->_supportedFallbackPortTypes count])
  {
    v37 = OUTLINED_FUNCTION_1_21();
    v36 = [(BWBravoStreamSelector *)v38 _preferredMasterStreamForFrameStatisticsByPortType:v39 zoomFactor:v40 isAutoFlashScene:v41 digitalFlashMode:v42 isStationary:v43 debugOverlayInfo:1 ignoreEligibleFallbackPortTypes:0 requiresFocusExposeStabilityOut:v37 selectionReasonOut:0];
  }

  if (v34 != stream && v67 == 1)
  {
    if (v34 == self->_teleStream && !self->_sceneChangeDetected)
    {
      superWideStream = 0;
      self->_switchDelayReasons |= 2uLL;
      goto LABEL_60;
    }

    LOBYTE(v61) = 0;
    if (([BWBravoStreamSelector _selectionBehaviorAllowsSwitchOverTo:v34 forFrameStatisticsByPortType:type zoomFactor:&v61 blockedByExposureFocusStability:? debugOverlayInfo:?]& 1) != 0)
    {
      superWideStream = 0;
      v59 = v34;
LABEL_63:
      v34 = v59;
      goto LABEL_32;
    }

    if (v61 == 1)
    {
      self->_switchDelayReasons |= 1uLL;
      if (v34 == self->_teleStream)
      {
        if (masterStream)
        {
          if (self->_superWideStream == stream)
          {
            v59 = self->_wideStream;
            if (v59 == masterStream)
            {
              superWideStream = v34;
              if (([BWBravoStreamSelector _selectionBehaviorAllowsSwitchOverTo:self->_wideStream forFrameStatisticsByPortType:type zoomFactor:&v61 blockedByExposureFocusStability:? debugOverlayInfo:?]& 1) != 0)
              {
                goto LABEL_63;
              }

              if (v61)
              {
                v34 = v59;
              }
            }
          }
        }
      }
    }

    else
    {
      v34 = 0;
    }

    superWideStream = v34;
    goto LABEL_60;
  }

  if (!self->_afHigherFPSDuringConvergenceEnabled)
  {
    goto LABEL_31;
  }

  [stream portType];
  if (![objc_msgSend(OUTLINED_FUNCTION_7() "objectForKeyedSubscript:"afConvergenceRequiresHigherFPSForPortType"")])
  {
    goto LABEL_31;
  }

  [(BWFigVideoCaptureStream *)self->_wideStream portType];
  if ([OUTLINED_FUNCTION_7() isEqualToString:?])
  {
    superWideStream = self->_wideStream;
    goto LABEL_32;
  }

  [(BWFigVideoCaptureStream *)self->_superWideStream portType];
  if ([OUTLINED_FUNCTION_7() isEqualToString:?])
  {
    superWideStream = self->_superWideStream;
    goto LABEL_32;
  }

  [(BWFigVideoCaptureStream *)self->_teleStream portType];
  if ([OUTLINED_FUNCTION_7() isEqualToString:?])
  {
    superWideStream = self->_teleStream;
  }

  else
  {
LABEL_31:
    superWideStream = 0;
  }

LABEL_32:
  if (v34 != self->_recommendedMasterStream)
  {
    if (dword_1EB58E260)
    {
      v69 = 0;
      v68 = OS_LOG_TYPE_DEFAULT;
      v45 = OUTLINED_FUNCTION_2_18();
      if (OUTLINED_FUNCTION_8_12(v45))
      {
        modeCopy = mode;
      }

      else
      {
        modeCopy = mode & 0xFFFFFFFE;
      }

      if (modeCopy)
      {
        portType2 = [(BWFigVideoCaptureStream *)self->_recommendedMasterStream portType];
        portType3 = [(BWFigVideoCaptureStream *)v34 portType];
        v61 = 136315906;
        v62 = "[BWBravoStreamSelector recommendMasterStreamUsingCurrentMasterStream:frameStatisticsByPortType:zoomFactor:isAutoFlashScene:digitalFlashMode:isStationary:detectedObjects:cameraControlsStatisticsMasterStream:]";
        v63 = 2112;
        *v64 = portType2;
        *&v64[8] = 2112;
        *v65 = portType3;
        *&v65[8] = 1024;
        v66 = v70[0];
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_6_10();
      }

      OUTLINED_FUNCTION_0_19();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    self->_timeOfLastZoomFactorChange = 0;
    self->_timeOfLastFocusModeChange = 0;
    self->_timeOfLastExposureModeChange = 0;
    self->_recommendedMasterStream = v34;
LABEL_50:
    self->_lastSelectionReason = v70[0];
    goto LABEL_51;
  }

  if (v70[0] == 1 && !self->_lastSelectionReason && v34 != [(NSArray *)self->_lastPotentialMasterStreams firstObject])
  {
    if (dword_1EB58E260)
    {
      v69 = 0;
      v68 = OS_LOG_TYPE_DEFAULT;
      v49 = OUTLINED_FUNCTION_2_18();
      if (OUTLINED_FUNCTION_8_12(v49))
      {
        modeCopy2 = mode;
      }

      else
      {
        modeCopy2 = mode & 0xFFFFFFFE;
      }

      if (modeCopy2)
      {
        lastSelectionReason = self->_lastSelectionReason;
        v60 = v70[0];
        portType4 = [(BWFigVideoCaptureStream *)v34 portType];
        v61 = 136315906;
        v62 = "[BWBravoStreamSelector recommendMasterStreamUsingCurrentMasterStream:frameStatisticsByPortType:zoomFactor:isAutoFlashScene:digitalFlashMode:isStationary:detectedObjects:cameraControlsStatisticsMasterStream:]";
        v63 = 1024;
        *v64 = lastSelectionReason;
        *&v64[4] = 1024;
        *&v64[6] = v60;
        *v65 = 2112;
        *&v65[2] = portType4;
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_6_10();
      }

      OUTLINED_FUNCTION_0_19();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_50;
  }

LABEL_51:
  if (v36 != self->_preferredMasterStreamIgnoringEligibleFallbackPortTypes)
  {
    if (dword_1EB58E260)
    {
      v69 = 0;
      v68 = OS_LOG_TYPE_DEFAULT;
      v53 = OUTLINED_FUNCTION_2_18();
      v54 = v69;
      if (os_log_type_enabled(v53, v68))
      {
        v55 = v54;
      }

      else
      {
        v55 = v54 & 0xFFFFFFFE;
      }

      if (v55)
      {
        portType5 = [(BWFigVideoCaptureStream *)self->_preferredMasterStreamIgnoringEligibleFallbackPortTypes portType];
        portType6 = [(BWFigVideoCaptureStream *)v36 portType];
        v61 = 136315650;
        v62 = "[BWBravoStreamSelector recommendMasterStreamUsingCurrentMasterStream:frameStatisticsByPortType:zoomFactor:isAutoFlashScene:digitalFlashMode:isStationary:detectedObjects:cameraControlsStatisticsMasterStream:]";
        v63 = 2112;
        *v64 = portType5;
        *&v64[8] = 2112;
        *v65 = portType6;
        OUTLINED_FUNCTION_5();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_0_19();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    self->_preferredMasterStreamIgnoringEligibleFallbackPortTypes = v36;
  }

LABEL_60:
  self->_previousZoomFactor = factor;
  self->_slaveStreamBlockingFocusAndExposureStability = superWideStream;
  return self->_recommendedMasterStream;
}

- (uint64_t)_updateSuperWideFocusIsStableOnceWithFrameStatisticsByPortType:(uint64_t)result
{
  if (result)
  {
    v1 = result;
    if ((*(result + 472) & 1) == 0)
    {
      [*(result + 24) portType];
      v2 = [OUTLINED_FUNCTION_4() objectForKeyedSubscript:?];
      v3 = v2;
      if ((*(v1 + 464) & 1) == 0)
      {
        if (v2)
        {
          [v2 pts];
          if ((v13 & 0x100000000) != 0)
          {
            v4 = (v1 + 436);
            if (*(v1 + 448))
            {
              v6 = *(v1 + 460);
              if (v6 != [v3 logicalFocusLensPosition] || (HostTimeClock = CMClockGetHostTimeClock(), CMClockGetTime(&lhs, HostTimeClock), *&v9.value = *v4, v9.epoch = *(v1 + 452), CMTimeSubtract(&time1, &lhs, &v9), CMTimeMake(&lhs, *(v1 + 468), 1000), CMTimeCompare(&time1, &lhs) >= 1))
              {
                *(v1 + 464) = 1;
              }
            }

            else
            {
              v5 = CMClockGetHostTimeClock();
              CMClockGetTime(&time1, v5);
              *v4 = *&time1.value;
              *(v1 + 452) = time1.epoch;
            }
          }
        }

        else
        {
          v12 = 0;
          v13 = 0;
          v14 = 0;
        }
      }

      result = [v3 logicalFocusLensPosition];
      *(v1 + 460) = result;
      if (*(v1 + 464) == 1)
      {
        result = [v3 afStationaryCount];
        v8 = result > 1;
      }

      else
      {
        v8 = 0;
      }

      *(v1 + 472) = v8;
    }
  }

  return result;
}

- (uint64_t)_updateSceneChangeMonitorWithFrameStatisticsByPortType:(uint64_t)result fromMasterStream:(float)stream zoomFactor:(uint64_t)factor digitalFlashMode:(void *)mode debugOverlayInfo:(int)info
{
  if (!result)
  {
    return result;
  }

  v8 = result;
  [mode portType];
  v9 = [OUTLINED_FUNCTION_8() objectForKeyedSubscript:?];
  luxLevel = [v9 luxLevel];
  [v9 eit];
  v12 = v11;
  result = [v9 focusDistance];
  v14 = v13;
  if (info)
  {
    v15 = 1;
  }

  else
  {
    v15 = *(v8 + 428) == 0;
  }

  v16 = !v15;
  *(v8 + 428) = info;
  if (*(v8 + 8) == mode && *(v8 + 200) == *(v8 + 16))
  {
    *(v8 + 404) = 1;
  }

  if (*(v8 + 404) != 1)
  {
    if (*(v8 + 405))
    {
      return result;
    }

    if (*(v8 + 200) != mode)
    {
      *(v8 + 408) = luxLevel;
      *(v8 + 416) = v12;
      *(v8 + 424) = v13;
      return result;
    }

    if (*(v8 + 300) != stream)
    {
      goto LABEL_20;
    }

    if ([v9 afStationaryCount] >= 2)
    {
      *(v8 + 405) = vabds_f32(*(v8 + 424), v14) > *(v8 + 400);
    }

    result = [v9 aeStable];
    v19 = *(v8 + 405);
    if ((v19 & 1) != 0 || !result)
    {
LABEL_34:
      if ((v19 & 1) != 0 || (*(v8 + 141) & v16 & 1) == 0)
      {
        return result;
      }

LABEL_20:
      *(v8 + 405) = 1;
      return result;
    }

    v20 = *(v8 + 408);
    v21 = *(v8 + 384);
    if (luxLevel >= v20)
    {
      v22 = luxLevel;
      if ((v21 * v20) < luxLevel)
      {
        goto LABEL_20;
      }

      v23 = *(v8 + 388);
      if (v23 <= 0.0)
      {
        v19 = 0;
        goto LABEL_31;
      }
    }

    else
    {
      v22 = v20;
      v23 = v21 * luxLevel;
    }

    v19 = v23 < v22;
LABEL_31:
    *(v8 + 405) = v19;
    if (info && (v19 & 1) == 0 && fabs((*(v8 + 416) - v12) / ((v12 + *(v8 + 416)) * 0.5)) >= *(v8 + 392))
    {
      goto LABEL_20;
    }

    goto LABEL_34;
  }

  if (*(v8 + 300) == stream)
  {
    v18 = *(v8 + 388);
    v17 = v18 > 0.0 && v18 < luxLevel;
  }

  else
  {
    v17 = 1;
  }

  *(v8 + 405) = v17;
  *(v8 + 408) = luxLevel;
  *(v8 + 416) = v12;
  *(v8 + 424) = v14;
  *(v8 + 404) = 0;
  return result;
}

- (uint64_t)_updateStateWithFrameStatisticsByPortType:(void *)type detectedObjects:
{
  if (result)
  {
    v4 = result;
    result = *(result + 16);
    if (result && *(v4 + 74) == 1)
    {
      [result portType];
      v5 = [OUTLINED_FUNCTION_8() objectForKeyedSubscript:?];
      [v5 gain];
      if (v6 >= *(v4 + 32))
      {
        v7 = *(v4 + 348) + 1;
      }

      else
      {
        v7 = 0;
      }

      *(v4 + 348) = v7;
      result = [v5 aeLimitsReached];
      if ((result & 1) != 0 || (result = [v5 eit], v8 >= ((*(v4 + 44) * *(v4 + 52)) / 100.0)))
      {
        ++*(v4 + 352);
      }

      else
      {
        *(v4 + 352) = 0;
      }
    }

    if (type && (v9 = [type objectForKeyedSubscript:*off_1E798ACB8], v10 = *off_1E798ACE8, v11 = objc_msgSend(objc_msgSend(v9, "objectForKeyedSubscript:", *off_1E798ACE8), "count"), result = objc_msgSend(objc_msgSend(objc_msgSend(type, "objectForKeyedSubscript:", *off_1E798ACB0), "objectForKeyedSubscript:", v10), "count"), result + v11 >= 1))
    {
      ++*(v4 + 356);
    }

    else
    {
      *(v4 + 356) = 0;
    }
  }

  return result;
}

- (uint64_t)_selectionBehaviorAllowsSwitchOverTo:(void *)to forFrameStatisticsByPortType:(_BYTE *)type zoomFactor:blockedByExposureFocusStability:debugOverlayInfo:
{
  if (!self)
  {
    v14 = 0;
    return v14 & 1;
  }

  v8 = [BWBravoStreamSelector _exposureAndFocusStableForSwitchOverTo:self forFrameStatisticsByPortType:a2 debugOverlayInfo:?];
  v9 = [BWBravoStreamSelector _exposureAllowsSwitchToRecommendedMasterStream:self frameStatisticsByPortType:a2];
  v10 = *(self + 16);
  v11 = v10 == a2 && *(self + 72) == 1 && [objc_msgSend(to objectForKeyedSubscript:{objc_msgSend(v10, "portType")), "filteredLogicalFocusLensPositionStep"}] < 4;
  v12 = *(self + 216);
  if (v12 == 1)
  {
    mach_absolute_time();
    v15 = FigHostTimeToNanoseconds();
    v17 = *(self + 304) > 0 && v15 < 200000000;
    v14 = v17 & v9 | v8 | v9 & v11;
    v13 = v14 ^ 1;
    if (!type)
    {
      return v14 & 1;
    }

LABEL_17:
    *type = v13 & 1;
    return v14 & 1;
  }

  if (v12 != 2)
  {
    v13 = 0;
    v14 = 0;
    if (!type)
    {
      return v14 & 1;
    }

    goto LABEL_17;
  }

  v19 = [BWBravoStreamSelector _conditionsAllowSwitchToRecommendedMasterStream:self debugOverlayInfo:a2];
  if (*(self + 16) != a2 || (*(self + 73) & 1) == 0)
  {
    v20 = [to objectForKeyedSubscript:{objc_msgSend(a2, "portType")}];
    if ([a2 hasFocus])
    {
      v11 = [(BWBravoStreamSelector *)self _focusIsStable:v20];
    }

    else
    {
      v11 = 1;
    }
  }

  v14 = v19 & v9 & v11;
  v13 = v19 & (v14 ^ 1);
  *(self + 344) = v13;
  if (type)
  {
    goto LABEL_17;
  }

  return v14 & 1;
}

- (BOOL)_conditionsAllowSwitchToRecommendedMasterStream:(_BOOL8)result debugOverlayInfo:(void *)info
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  mach_absolute_time();
  if (*(v3 + 224))
  {
    v4 = FigHostTimeToNanoseconds();
    if (*(v3 + 304) >= 1 && v4 < 1000000000)
    {
      return 1;
    }
  }

  else if (*(v3 + 320))
  {
    if (FigHostTimeToNanoseconds() <= 999999999)
    {
      [info portType];
      if ([OUTLINED_FUNCTION_7() isEqualToString:?])
      {
        return 1;
      }
    }

    else
    {
      *(v3 + 312) = 0;
      *(v3 + 320) = 0;
    }
  }

  v6 = *(v3 + 224);
  if ((v6 & 2) == 0)
  {
    goto LABEL_19;
  }

  v7 = FigHostTimeToNanoseconds();
  if (*(v3 + 328) >= 1 && v7 < 4000000000)
  {
    return 1;
  }

  v6 = *(v3 + 224);
LABEL_19:
  if ((v6 & 4) == 0)
  {
    return 0;
  }

  v9 = FigHostTimeToNanoseconds();
  return *(v3 + 336) > 0 && v9 < 1000000000;
}

- (uint64_t)_telephotoLimitsReachedForFrameStatisticsByPortType:(uint64_t)type debugOverlayInfo:
{
  if (type)
  {
    if (*(type + 74) == 1)
    {
      if (*(type + 40))
      {
        v2 = *(type + 352) > *(type + 68);
      }

      else
      {
        v2 = *(type + 348) > *(type + 64);
      }
    }

    else
    {
      v2 = 0;
    }

    if (*(type + 184) == 1)
    {
      [*(type + 16) portType];
      v3 = [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_4() "objectForKeyedSubscript:{"afRecommendedPrimaryPortType"), "isEqualToString:", *off_1E798A0D8}")] ^ 1;
    }

    else
    {
      [*(type + 8) portType];
      v4 = [OUTLINED_FUNCTION_4() objectForKeyedSubscript:?];
      [v4 focusDistance];
      if (v5 <= 0.0)
      {
        LOBYTE(v3) = 0;
      }

      else
      {
        [v4 focusDistance];
        LOBYTE(v3) = v6 < *(type + 56);
      }
    }

    v7 = v2 | v3;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (uint64_t)_exposureAllowsSwitchToRecommendedMasterStream:(uint64_t)result frameStatisticsByPortType:(uint64_t)type
{
  if (result)
  {
    v2 = result;
    if (*(result + 74) == 1 && *(result + 16) == type || *(result + 24) == type)
    {
      [*(result + 200) portType];
      v3 = [objc_msgSend(OUTLINED_FUNCTION_4() "objectForKeyedSubscript:"aeTarget"")];
      [*(v2 + 200) portType];
      v4 = [objc_msgSend(OUTLINED_FUNCTION_4() "objectForKeyedSubscript:"aeAverage"")];
      return (*(v2 + 476) * v3) <= v4 && (*(v2 + 480) * v3) >= v4;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (uint64_t)_exposureAndFocusStableForSwitchOverTo:(uint64_t)to forFrameStatisticsByPortType:(uint64_t)type debugOverlayInfo:
{
  if (!to)
  {
    return 0;
  }

  [*(to + 24) portType];
  v4 = [OUTLINED_FUNCTION_8() objectForKeyedSubscript:?];
  [*(to + 8) portType];
  v5 = [OUTLINED_FUNCTION_8() objectForKeyedSubscript:?];
  [*(to + 16) portType];
  v6 = [OUTLINED_FUNCTION_8() objectForKeyedSubscript:?];
  aeStable = [v5 aeStable];
  aeStable2 = [v6 aeStable];
  v9 = [(BWBravoStreamSelector *)to _focusIsStable:v4];
  v10 = [(BWBravoStreamSelector *)to _focusIsStable:v5];
  v11 = [(BWBravoStreamSelector *)to _focusIsStable:v6];
  v12 = *(to + 200);
  v13 = *(to + 24);
  v14 = *(to + 8);
  if (v12 == v13)
  {
    if (v14 == type)
    {
      return v9 & v10;
    }

    if (*(to + 16) != type)
    {
      if (v12 == type)
      {
        return v9;
      }

      else
      {
        return 0;
      }
    }

    v15 = *(to + 74) ^ 1 | aeStable2;
    v16 = v11 & v10;
    return v16 & v15;
  }

  if (v12 == v14)
  {
    if (*(to + 16) != type)
    {
      if (v13 != type)
      {
        if (v12 == type)
        {
          return v10;
        }

        else
        {
          return 0;
        }
      }

      return v9;
    }

    v15 = *(to + 74) ^ 1 | aeStable & aeStable2;
    v16 = v10 & v11;
    return v16 & v15;
  }

  if (v14 == type)
  {
    return v10;
  }

  if (v13 != type)
  {
    if (*(to + 16) == type)
    {
      return v11 & (*(to + 74) ^ 1 | aeStable2);
    }

    return 0;
  }

  return v9;
}

- (uint64_t)_focusIsStable:(uint64_t)stable
{
  result = 0;
  if (stable && a2)
  {
    if ([a2 afStatus] != 4)
    {
      if (([a2 logicalFocusLensPositionStep] & 0x80000000) != 0)
      {
        focusPositionStep = [a2 focusPositionStep];
        if ((focusPositionStep & 0x80000000) != 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        focusPositionStep = [a2 logicalFocusLensPositionStep];
        if ((focusPositionStep & 0x80000000) != 0)
        {
LABEL_9:
          [a2 focusingMethod];
          FigCaptureStreamFocusingMethodIsPhaseDetectionBased();
        }
      }

      if (focusPositionStep >= *(stable + 188))
      {
        goto LABEL_9;
      }
    }

    [a2 portType];
    [*(stable + 24) portType];
    if ([OUTLINED_FUNCTION_4() isEqualToString:?] && *(stable + 432) == 1)
    {
      return *(stable + 472);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

@end