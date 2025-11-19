@interface BWBravoStreamSelector
+ (void)initialize;
- ($06E035DAA80D7DA92D7AC3530BEA5F2A)selectionConfiguration;
- (BOOL)_conditionsAllowSwitchToRecommendedMasterStream:(_BOOL8)result debugOverlayInfo:(void *)a2;
- (BWBravoStreamSelector)initWithStreamSelectionAttributes:(id)a3 wideStream:(id)a4 teleStream:(id)a5 superWideStream:(id)a6 cameraCalibrationValid:(BOOL)a7;
- (NSArray)eligibleFallbackPortTypes;
- (id)preferredMasterPortTypeForFrameStatisticsByPortType:(id)a3 zoomFactor:(float)a4;
- (id)recommendMasterStreamUsingCurrentMasterStream:(id)a3 frameStatisticsByPortType:(id)a4 zoomFactor:(float)a5 isAutoFlashScene:(BOOL)a6 digitalFlashMode:(int)a7 isStationary:(BOOL)a8 detectedObjects:(id)a9 cameraControlsStatisticsMasterStream:(id)a10;
- (uint64_t)_exposureAllowsSwitchToRecommendedMasterStream:(uint64_t)result frameStatisticsByPortType:(uint64_t)a2;
- (uint64_t)_exposureAndFocusStableForSwitchOverTo:(uint64_t)a1 forFrameStatisticsByPortType:(uint64_t)a2 debugOverlayInfo:;
- (uint64_t)_focusIsStable:(uint64_t)a1;
- (uint64_t)_selectionBehaviorAllowsSwitchOverTo:(void *)a3 forFrameStatisticsByPortType:(_BYTE *)a4 zoomFactor:blockedByExposureFocusStability:debugOverlayInfo:;
- (uint64_t)_telephotoLimitsReachedForFrameStatisticsByPortType:(uint64_t)a1 debugOverlayInfo:;
- (uint64_t)_updateSceneChangeMonitorWithFrameStatisticsByPortType:(uint64_t)result fromMasterStream:(float)a2 zoomFactor:(uint64_t)a3 digitalFlashMode:(void *)a4 debugOverlayInfo:(int)a5;
- (uint64_t)_updateStateWithFrameStatisticsByPortType:(void *)a3 detectedObjects:;
- (uint64_t)_updateSuperWideFocusIsStableOnceWithFrameStatisticsByPortType:(uint64_t)result;
- (void)_preferredMasterStreamForFrameStatisticsByPortType:(char)a3 zoomFactor:(int)a4 isAutoFlashScene:(int)a5 digitalFlashMode:(void *)a6 isStationary:(int)a7 debugOverlayInfo:(_BYTE *)a8 ignoreEligibleFallbackPortTypes:(float)a9 requiresFocusExposeStabilityOut:(int *)a10 selectionReasonOut:;
- (void)dealloc;
- (void)resetWithZoomFactor:(float)a3 currentMasterStream:(id)a4;
- (void)setEligibleFallbackPortTypes:(id)a3;
- (void)setSelectionConfiguration:(id)a3;
- (void)setTeleMaxAEGain:(float)a3;
- (void)setTeleMaxEIT:(float)a3;
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
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWBravoStreamSelector)initWithStreamSelectionAttributes:(id)a3 wideStream:(id)a4 teleStream:(id)a5 superWideStream:(id)a6 cameraCalibrationValid:(BOOL)a7
{
  v48.receiver = self;
  v48.super_class = BWBravoStreamSelector;
  v11 = [(BWBravoStreamSelector *)&v48 init:a3];
  if (v11)
  {
    *(v11 + 1) = a4;
    *(v11 + 2) = a5;
    *(v11 + 3) = a6;
    *(v11 + 216) = xmmword_1AD046500;
    *(v11 + 232) = *(v11 + 216);
    *(v11 + 62) = 0;
    [objc_msgSend(a3 objectForKeyedSubscript:{@"minFocusDistanceChange", "floatValue"}];
    *(v11 + 100) = v12;
    v13 = [MEMORY[0x1E695DF70] array];
    if (a4 && a5)
    {
      [v13 addObject:{objc_msgSend(a4, "portType")}];
      [objc_msgSend(a3 objectForKeyedSubscript:{@"wideToTeleFocusDistance", "floatValue"}];
      *(v11 + 15) = v14;
      [objc_msgSend(a3 objectForKeyedSubscript:{@"teleToWideFocusDistance", "floatValue"}];
      *(v11 + 14) = v15;
      [objc_msgSend(objc_msgSend(a5 "stream")];
      v17 = v16;
      [objc_msgSend(objc_msgSend(a5 "stream")];
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

      v11[184] = [objc_msgSend(a3 objectForKeyedSubscript:{@"autoFocusRecommendedPrimaryPortTypeEnabled", "BOOLValue"}];
    }

    v20 = [a6 hasFocus];
    if (a4 && v20)
    {
      [v13 addObject:{objc_msgSend(a6, "portType")}];
      [objc_msgSend(a3 objectForKeyedSubscript:{@"superWideMaximumAETargetOffset", "floatValue"}];
      *(v11 + 21) = v21;
      [objc_msgSend(a3 objectForKeyedSubscript:{@"superWideMaximumAETargetOffsetHysteresisLag", "floatValue"}];
      *(v11 + 22) = v22;
      *(v11 + 24) = 10;
      v11[100] = [objc_msgSend(a3 objectForKeyedSubscript:{@"superWideAllowedInAutoFlashScenes", "BOOLValue"}];
      [objc_msgSend(objc_msgSend(a4 "stream")];
      v24 = v23;
      [objc_msgSend(objc_msgSend(a4 "stream")];
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
      [objc_msgSend(a3 objectForKeyedSubscript:{@"superWideToWideHysteresisLag", "floatValue"}];
      *(v11 + 20) = v27 + *(v11 + 19);
      v28 = [objc_msgSend(a3 objectForKeyedSubscript:{@"autoFocusRecommendedPrimaryPortTypeEnabled", "BOOLValue"}];
      v11[185] = v28;
      v11[432] = v28 ^ 1;
      *(v11 + 117) = 1000;
    }

    *(v11 + 46) = [v13 copy];
    *(v11 + 47) = [v13 copy];
    *(v11 + 90) = 0;
    [objc_msgSend(a3 objectForKeyedSubscript:{@"gainHysteresisLag", "floatValue"}];
    *(v11 + 9) = v29;
    [objc_msgSend(a3 objectForKeyedSubscript:{@"minLuxLevelChange", "floatValue"}];
    *(v11 + 96) = v30;
    [objc_msgSend(a3 objectForKeyedSubscript:{@"maxLuxLevelForSceneChangeMonitoring", "floatValue"}];
    *(v11 + 97) = v31;
    *(v11 + 16) = 2;
    [objc_msgSend(a3 objectForKeyedSubscript:{@"minTeleToWideEITThresholdPercentage", "floatValue"}];
    *(v11 + 12) = v32;
    [objc_msgSend(a3 objectForKeyedSubscript:{@"maxTeleToWideEITThresholdPercentage", "floatValue"}];
    *(v11 + 13) = v33;
    LODWORD(v34) = *(v11 + 12);
    v36 = v33 > 0.0 && *&v34 > 0.0;
    v11[40] = v36;
    *(v11 + 17) = 2;
    v11[72] = [objc_msgSend(a3 objectForKeyedSubscript:{@"teleSwitchBasedOnExposureAndFocusTargetOffsetEnabled", 0.0, v34), "BOOLValue"}];
    v11[73] = [objc_msgSend(a3 objectForKeyedSubscript:{@"teleSwitchBasedOnFocusTargetOffsetInRestrictedModeEnabled", "BOOLValue"}];
    v11[74] = [objc_msgSend(a3 objectForKeyedSubscript:{@"teleExposureLimitsDisabled", "BOOLValue"}] ^ 1;
    *(v11 + 476) = 0x3FB333333F4CCCCDLL;
    v37 = [a3 objectForKeyedSubscript:@"digitalFlash"];
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

- (void)setTeleMaxAEGain:(float)a3
{
  if (self->_teleMaxAEGain < a3)
  {
    self->_sceneChangeDetected = 1;
  }

  self->_teleMaxAEGain = a3;
}

- (void)setTeleMaxEIT:(float)a3
{
  if (self->_teleMaxEIT < a3)
  {
    self->_sceneChangeDetected = 1;
  }

  self->_teleMaxEIT = a3;
}

- (void)resetWithZoomFactor:(float)a3 currentMasterStream:(id)a4
{
  self->_currentMasterStream = a4;
  self->_recommendedMasterStream = a4;
  self->_preferredMasterStreamIgnoringEligibleFallbackPortTypes = a4;
  self->_previousZoomFactor = a3;
  self->_timeOfLastZoomFactorChange = 0;
  self->_resetSceneChangeMonitoring = 0;
  *&self->_teleMaxGainReachedCounter = 0;
  self->_timeOfLastFocusModeChange = 0;
  self->_timeOfLastExposureModeChange = 0;
  self->_waitingForSlaveFocusAfterZoomChange = 0;
  teleStream = self->_teleStream;
  if (teleStream && ([(BWFigVideoCaptureStream *)teleStream baseZoomFactor], v7 <= a3) || self->_superWideStream && ([(BWFigVideoCaptureStream *)self->_wideStream baseZoomFactor], v8 <= a3))
  {
    self->_sceneChangeDetected = 1;
  }
}

- (void)setSelectionConfiguration:(id)a3
{
  selectionBehavior = self->_pendingSelectionConfiguration.selectionBehavior;
  if (a3.var0 != selectionBehavior)
  {
    self->_waitingForSlaveFocusAfterZoomChange = 0;
LABEL_5:
    if (a3.var0 != 2)
    {
LABEL_18:
      self->_pendingSelectionConfiguration = a3;
      return;
    }

    if (selectionBehavior == 2)
    {
      restrictedSelectionConditions = self->_pendingSelectionConfiguration.restrictedSelectionConditions;
      if ((a3.var1 & 2) == 0)
      {
LABEL_12:
        if ((a3.var1 & 4) != 0 && (restrictedSelectionConditions & 4) == 0)
        {
          self->_timeOfLastExposureModeChange = 0;
        }

        if ((a3.var1 & 1) != 0 && (restrictedSelectionConditions & 1) == 0)
        {
          self->_timeOfLastZoomFactorChange = 0;
        }

        goto LABEL_18;
      }
    }

    else
    {
      LOBYTE(restrictedSelectionConditions) = 0;
      if ((a3.var1 & 2) == 0)
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

  if (a3.var1 != self->_pendingSelectionConfiguration.restrictedSelectionConditions)
  {
    goto LABEL_5;
  }
}

- (void)setEligibleFallbackPortTypes:(id)a3
{
  os_unfair_lock_lock(&self->_eligibleFallbackPortTypesLock);

  self->_eligibleFallbackPortTypes = [a3 copy];

  os_unfair_lock_unlock(&self->_eligibleFallbackPortTypesLock);
}

- (void)_preferredMasterStreamForFrameStatisticsByPortType:(char)a3 zoomFactor:(int)a4 isAutoFlashScene:(int)a5 digitalFlashMode:(void *)a6 isStationary:(int)a7 debugOverlayInfo:(_BYTE *)a8 ignoreEligibleFallbackPortTypes:(float)a9 requiresFocusExposeStabilityOut:(int *)a10 selectionReasonOut:
{
  if (!a1)
  {
    return 0;
  }

  v15 = 200;
  if (a7)
  {
    v15 = 288;
  }

  v16 = *(a1 + v15);
  v17 = [a1 eligibleFallbackPortTypes];
  v87 = v17;
  if (a7)
  {
    v17 = *(a1 + 376);
  }

  v18 = [MEMORY[0x1E695DF70] array];
  v19 = *(a1 + 16);
  if (v19)
  {
    [v19 baseZoomFactor];
    if (v20 <= a9)
    {
      [v18 addObject:*(a1 + 16)];
    }
  }

  v21 = *(a1 + 8);
  if (v21)
  {
    [v21 baseZoomFactor];
    if (v22 <= a9 && (![v18 count] || objc_msgSend(v17, "containsObject:", objc_msgSend(*(a1 + 8), "portType"))))
    {
      [v18 addObject:*(a1 + 8)];
    }
  }

  v23 = *(a1 + 24);
  if (v23)
  {
    [v23 baseZoomFactor];
    if (v24 <= a9 && (![v18 count] || objc_msgSend(v17, "containsObject:", objc_msgSend(*(a1 + 24), "portType"))))
    {
      [v18 addObject:*(a1 + 24)];
    }
  }

  v25 = a10;
  v26 = [v18 containsObject:v16];
  v27 = v16;
  if (![v18 count])
  {
    goto LABEL_113;
  }

  if ([v18 count] <= 1)
  {
    v27 = [v18 firstObject];
    if (a8)
    {
      goto LABEL_114;
    }

    goto LABEL_115;
  }

  if (v26 && *(a1 + 216) == 2)
  {
    v91[0] = MEMORY[0x1E69E9820];
    v91[1] = 3221225472;
    v91[2] = __234__BWBravoStreamSelector__preferredMasterStreamForFrameStatisticsByPortType_zoomFactor_isAutoFlashScene_digitalFlashMode_isStationary_debugOverlayInfo_ignoreEligibleFallbackPortTypes_requiresFocusExposeStabilityOut_selectionReasonOut___block_invoke;
    v91[3] = &unk_1E798FDF0;
    v91[4] = v16;
    v91[5] = a1;
    v91[6] = a6;
    [v18 filterUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", v91)}];
  }

  if (!*(a1 + 16) || ![v18 containsObject:?])
  {
    goto LABEL_84;
  }

  v28 = *(a1 + 16);
  if (v16 == v28)
  {
    if (([BWBravoStreamSelector _telephotoLimitsReachedForFrameStatisticsByPortType:a1 debugOverlayInfo:?]& 1) != 0)
    {
      goto LABEL_84;
    }

LABEL_42:
    if (*(a1 + 74))
    {
      if (!a4)
      {
        goto LABEL_82;
      }
    }

    else if (!a4 || (*(a1 + 141) & 1) == 0)
    {
      goto LABEL_82;
    }

    v43 = [a2 objectForKeyedSubscript:{objc_msgSend(*(a1 + 16), "portType")}];
    [v43 eit];
    v45 = v44;
    if (*(a1 + 141) == 1)
    {
      v46 = 1.0;
      if ([v43 aeTarget] && objc_msgSend(v43, "aeAverage"))
      {
        v47 = [v43 aeTarget];
        v46 = v47 / [v43 aeAverage];
      }

      v48 = 168;
      if (a4 == 1)
      {
        v48 = 160;
      }

      v49 = 152;
      if (a4 == 1)
      {
        v49 = 144;
      }

      if (!a5)
      {
        v48 = v49;
      }

      v50 = *(a1 + v48);
      v27 = *(a1 + 16);
      if (v16 != v27)
      {
        v50 = v50 - *(a1 + 176);
      }

      if (v45 * v46 < v50)
      {
        goto LABEL_113;
      }

      goto LABEL_84;
    }

    if (*(a1 + 140) == 1)
    {
      v51 = 1.0;
      if ([v43 aeTarget] && objc_msgSend(v43, "aeAverage"))
      {
        v52 = [v43 aeTarget];
        v51 = v52 / [v43 aeAverage];
      }

      [v43 eit];
      v54 = v51 * v53;
      [v43 exposureBias];
      v45 = v54 / exp2(v55);
    }

    v56 = 112;
    if (a4 == 1)
    {
      v56 = 104;
    }

    v57 = *(a1 + v56);
    v58 = 128;
    if (a4 == 1)
    {
      v58 = 120;
    }

    v59 = v45 < *(a1 + v58) || *(a1 + 356) <= *(a1 + 136);
    if (v45 >= v57 || !v59)
    {
      goto LABEL_84;
    }

LABEL_82:
    v27 = *(a1 + 16);
    if (!a8)
    {
      goto LABEL_115;
    }

LABEL_114:
    *a8 = v26;
    goto LABEL_115;
  }

  v29 = [a2 objectForKeyedSubscript:{objc_msgSend(v28, "portType")}];
  v30 = v29;
  v31 = *(a1 + 36);
  if (v31 == 0.0)
  {
    v32 = 3.4028e38;
  }

  else
  {
    v32 = *(a1 + 32) / v31;
  }

  [v29 gain];
  v34 = v33;
  v35 = *(a1 + 48);
  if (v35 == 0.0)
  {
    v36 = 3.40282347e38;
  }

  else
  {
    v36 = ((v35 * *(a1 + 44)) / 100.0);
  }

  [v30 eit];
  if (*(a1 + 74) == 1)
  {
    v38 = v34 < v32;
    if (*(a1 + 40))
    {
      v38 = v37 < v36;
    }

    if (v38)
    {
      v39 = [BWBravoStreamSelector _exposureAllowsSwitchToRecommendedMasterStream:a1 frameStatisticsByPortType:*(a1 + 16)];
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

  if (*(a1 + 184) == 1)
  {
    v40 = [objc_msgSend(v30 "afRecommendedPrimaryPortType")];
    v25 = a10;
  }

  else
  {
    [objc_msgSend(a2 objectForKeyedSubscript:{objc_msgSend(*(a1 + 8), "portType")), "focusDistance"}];
    v25 = a10;
    if (v41 <= 0.0 || v41 < *(a1 + 60))
    {
      goto LABEL_84;
    }

    if ([v17 containsObject:{objc_msgSend(*(a1 + 24), "portType")}])
    {
      [objc_msgSend(a2 objectForKeyedSubscript:{objc_msgSend(*(a1 + 24), "portType")), "focusDistance"}];
      v40 = v42 >= *(a1 + 76);
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
  if (*(a1 + 8) && [v18 containsObject:?])
  {
    if (([v17 containsObject:{objc_msgSend(*(a1 + 24), "portType")}] & 1) == 0)
    {
      goto LABEL_112;
    }

    v60 = *(a1 + 76);
    v61 = *(a1 + 24);
    v62 = *(a1 + 84) / *(a1 + 88);
    v85 = a6;
    if (v16 == v61 && [v87 containsObject:{objc_msgSend(v61, "portType")}])
    {
      v60 = *(a1 + 80);
      v62 = *(a1 + 84);
    }

    v63 = [a2 objectForKeyedSubscript:{objc_msgSend(*(a1 + 24), "portType")}];
    v64 = v63;
    if (*(a1 + 185) == 1)
    {
      v65 = [objc_msgSend(v63 "afRecommendedPrimaryPortType")];
    }

    else
    {
      [objc_msgSend(a2 objectForKeyedSubscript:{objc_msgSend(*(a1 + 8), "portType")), "focusDistance"}];
      v67 = v66;
      [v64 focusDistance];
      v65 = v68 > 0.0 && fminf(v68, v67) < v60;
    }

    v69 = a3 ^ 1;
    if (a4)
    {
      v69 = 0;
    }

    if ((v69 & 1) != 0 || (*(a1 + 100) & 1) == 0)
    {
      v71 = [v64 aeTarget];
      v73 = v71 / [v64 aeAverage];
      if (v73 <= v62)
      {
        *(a1 + 92) = 0;
        v70 = 1;
      }

      else if (v16 == *(a1 + 24))
      {
        v74 = *(a1 + 92);
        v75 = *(a1 + 96);
        *(a1 + 92) = v74 + 1;
        v70 = v74 < v75;
      }

      else
      {
        v70 = 0;
        *(a1 + 92) = 0;
      }

      if (v85)
      {
        *&v72 = v62;
        [v85 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v72), @"SuperWideAERatioThreshold"}];
        *&v76 = v73;
        [v85 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v76), @"SuperWideAERatio"}];
      }
    }

    else
    {
      *(a1 + 92) = 0;
      v70 = 1;
    }

    if ((v65 & v70 & 1) == 0)
    {
LABEL_112:
      v27 = *(a1 + 8);
      goto LABEL_113;
    }
  }

  v27 = v16;
  if (!*(a1 + 24) || (v27 = v16, ![v18 containsObject:?]))
  {
LABEL_113:
    if (!a8)
    {
      goto LABEL_115;
    }

    goto LABEL_114;
  }

  v27 = *(a1 + 24);
  if (a8)
  {
    goto LABEL_114;
  }

LABEL_115:
  if (v25)
  {
    if (a7)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Cannot compute selection reason when ignoreEligibleFallbackPortTypes is YES.", 0}]);
    }

    if ([*(a1 + 280) isEqualToArray:v17])
    {
      v77 = 0;
      v78 = 0;
    }

    else
    {
      v79 = [v27 portType];
      v80 = [v16 portType];
      if ([v17 containsObject:v79])
      {
        v77 = [*(a1 + 280) containsObject:v79] ^ 1;
      }

      else
      {
        v77 = 0;
      }

      if ([*(a1 + 280) containsObject:v80])
      {
        v78 = [v17 containsObject:v80] ^ 1;
      }

      else
      {
        v78 = 0;
      }

      *(a1 + 280) = v17;
    }

    if ([*(a1 + 272) isEqualToArray:v18])
    {
      v81 = 1;
LABEL_137:
      *v25 = v81;
      return v27;
    }

    if (*(a1 + 272) || v27 == v16)
    {
      v83 = (v27 != [v18 firstObject]) | v77 | v78;
      v82 = *(a1 + 272);
      if ((v83 & 1) == 0)
      {
        v81 = 0;
LABEL_136:

        *(a1 + 272) = v18;
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

  return v27;
}

- (id)preferredMasterPortTypeForFrameStatisticsByPortType:(id)a3 zoomFactor:(float)a4
{
  v4 = [(BWBravoStreamSelector *)self _preferredMasterStreamForFrameStatisticsByPortType:a3 zoomFactor:0 isAutoFlashScene:0 digitalFlashMode:0 isStationary:0 debugOverlayInfo:1 ignoreEligibleFallbackPortTypes:0 requiresFocusExposeStabilityOut:a4 selectionReasonOut:0];

  return [v4 portType];
}

- (id)recommendMasterStreamUsingCurrentMasterStream:(id)a3 frameStatisticsByPortType:(id)a4 zoomFactor:(float)a5 isAutoFlashScene:(BOOL)a6 digitalFlashMode:(int)a7 isStationary:(BOOL)a8 detectedObjects:(id)a9 cameraControlsStatisticsMasterStream:(id)a10
{
  os_unfair_lock_lock(&self->_pendingSelectionConfigurationLock);
  self->_selectionConfiguration = self->_pendingSelectionConfiguration;
  os_unfair_lock_unlock(&self->_pendingSelectionConfigurationLock);
  if (self->_previousZoomFactor != a5)
  {
    self->_timeOfLastZoomFactorChange = mach_absolute_time();
    if (self->_selectionConfiguration.selectionBehavior == 2 && (self->_selectionConfiguration.restrictedSelectionConditions & 1) == 0)
    {
      if (self->_superWideStream && (p_wideStream = &self->_wideStream, wideStream = self->_wideStream, wideStream != a3) && (previousZoomFactor = self->_previousZoomFactor, [(BWFigVideoCaptureStream *)wideStream baseZoomFactor], previousZoomFactor < v19) && ([(BWFigVideoCaptureStream *)*p_wideStream baseZoomFactor], v20 <= a5) || (p_wideStream = &self->_teleStream, (teleStream = self->_teleStream) != 0) && teleStream != a3 && (v22 = self->_previousZoomFactor, [(BWFigVideoCaptureStream *)teleStream baseZoomFactor], v22 < v23) && ([(BWFigVideoCaptureStream *)*p_wideStream baseZoomFactor], v24 <= a5))
      {
        v25 = [(BWFigVideoCaptureStream *)*p_wideStream portType];
        self->_timeOfLastPortTypeMadeEligibleByZoom = self->_timeOfLastZoomFactorChange;
        self->_lastPortTypeMadeEligibleByZoom = v25;
      }
    }
  }

  if (self->_superWideWaitForStableFocusOnce)
  {
    [BWBravoStreamSelector _updateSuperWideFocusIsStableOnceWithFrameStatisticsByPortType:?];
  }

  [BWBravoStreamSelector _updateSceneChangeMonitorWithFrameStatisticsByPortType:a5 fromMasterStream:a4 zoomFactor:a3 digitalFlashMode:a7 debugOverlayInfo:?];
  [(BWBravoStreamSelector *)self _updateStateWithFrameStatisticsByPortType:a4 detectedObjects:a9];
  self->_currentMasterStream = a3;
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

  if (v34 != a3 && v67 == 1)
  {
    if (v34 == self->_teleStream && !self->_sceneChangeDetected)
    {
      superWideStream = 0;
      self->_switchDelayReasons |= 2uLL;
      goto LABEL_60;
    }

    LOBYTE(v61) = 0;
    if (([BWBravoStreamSelector _selectionBehaviorAllowsSwitchOverTo:v34 forFrameStatisticsByPortType:a4 zoomFactor:&v61 blockedByExposureFocusStability:? debugOverlayInfo:?]& 1) != 0)
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
        if (a10)
        {
          if (self->_superWideStream == a3)
          {
            v59 = self->_wideStream;
            if (v59 == a10)
            {
              superWideStream = v34;
              if (([BWBravoStreamSelector _selectionBehaviorAllowsSwitchOverTo:self->_wideStream forFrameStatisticsByPortType:a4 zoomFactor:&v61 blockedByExposureFocusStability:? debugOverlayInfo:?]& 1) != 0)
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

  [a3 portType];
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
        v46 = a7;
      }

      else
      {
        v46 = a7 & 0xFFFFFFFE;
      }

      if (v46)
      {
        v47 = [(BWFigVideoCaptureStream *)self->_recommendedMasterStream portType];
        v48 = [(BWFigVideoCaptureStream *)v34 portType];
        v61 = 136315906;
        v62 = "[BWBravoStreamSelector recommendMasterStreamUsingCurrentMasterStream:frameStatisticsByPortType:zoomFactor:isAutoFlashScene:digitalFlashMode:isStationary:detectedObjects:cameraControlsStatisticsMasterStream:]";
        v63 = 2112;
        *v64 = v47;
        *&v64[8] = 2112;
        *v65 = v48;
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
        v50 = a7;
      }

      else
      {
        v50 = a7 & 0xFFFFFFFE;
      }

      if (v50)
      {
        lastSelectionReason = self->_lastSelectionReason;
        v60 = v70[0];
        v52 = [(BWFigVideoCaptureStream *)v34 portType];
        v61 = 136315906;
        v62 = "[BWBravoStreamSelector recommendMasterStreamUsingCurrentMasterStream:frameStatisticsByPortType:zoomFactor:isAutoFlashScene:digitalFlashMode:isStationary:detectedObjects:cameraControlsStatisticsMasterStream:]";
        v63 = 1024;
        *v64 = lastSelectionReason;
        *&v64[4] = 1024;
        *&v64[6] = v60;
        *v65 = 2112;
        *&v65[2] = v52;
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
        v56 = [(BWFigVideoCaptureStream *)self->_preferredMasterStreamIgnoringEligibleFallbackPortTypes portType];
        v57 = [(BWFigVideoCaptureStream *)v36 portType];
        v61 = 136315650;
        v62 = "[BWBravoStreamSelector recommendMasterStreamUsingCurrentMasterStream:frameStatisticsByPortType:zoomFactor:isAutoFlashScene:digitalFlashMode:isStationary:detectedObjects:cameraControlsStatisticsMasterStream:]";
        v63 = 2112;
        *v64 = v56;
        *&v64[8] = 2112;
        *v65 = v57;
        OUTLINED_FUNCTION_5();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_0_19();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    self->_preferredMasterStreamIgnoringEligibleFallbackPortTypes = v36;
  }

LABEL_60:
  self->_previousZoomFactor = a5;
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

- (uint64_t)_updateSceneChangeMonitorWithFrameStatisticsByPortType:(uint64_t)result fromMasterStream:(float)a2 zoomFactor:(uint64_t)a3 digitalFlashMode:(void *)a4 debugOverlayInfo:(int)a5
{
  if (!result)
  {
    return result;
  }

  v8 = result;
  [a4 portType];
  v9 = [OUTLINED_FUNCTION_8() objectForKeyedSubscript:?];
  v10 = [v9 luxLevel];
  [v9 eit];
  v12 = v11;
  result = [v9 focusDistance];
  v14 = v13;
  if (a5)
  {
    v15 = 1;
  }

  else
  {
    v15 = *(v8 + 428) == 0;
  }

  v16 = !v15;
  *(v8 + 428) = a5;
  if (*(v8 + 8) == a4 && *(v8 + 200) == *(v8 + 16))
  {
    *(v8 + 404) = 1;
  }

  if (*(v8 + 404) != 1)
  {
    if (*(v8 + 405))
    {
      return result;
    }

    if (*(v8 + 200) != a4)
    {
      *(v8 + 408) = v10;
      *(v8 + 416) = v12;
      *(v8 + 424) = v13;
      return result;
    }

    if (*(v8 + 300) != a2)
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
    if (v10 >= v20)
    {
      v22 = v10;
      if ((v21 * v20) < v10)
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
      v23 = v21 * v10;
    }

    v19 = v23 < v22;
LABEL_31:
    *(v8 + 405) = v19;
    if (a5 && (v19 & 1) == 0 && fabs((*(v8 + 416) - v12) / ((v12 + *(v8 + 416)) * 0.5)) >= *(v8 + 392))
    {
      goto LABEL_20;
    }

    goto LABEL_34;
  }

  if (*(v8 + 300) == a2)
  {
    v18 = *(v8 + 388);
    v17 = v18 > 0.0 && v18 < v10;
  }

  else
  {
    v17 = 1;
  }

  *(v8 + 405) = v17;
  *(v8 + 408) = v10;
  *(v8 + 416) = v12;
  *(v8 + 424) = v14;
  *(v8 + 404) = 0;
  return result;
}

- (uint64_t)_updateStateWithFrameStatisticsByPortType:(void *)a3 detectedObjects:
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

    if (a3 && (v9 = [a3 objectForKeyedSubscript:*off_1E798ACB8], v10 = *off_1E798ACE8, v11 = objc_msgSend(objc_msgSend(v9, "objectForKeyedSubscript:", *off_1E798ACE8), "count"), result = objc_msgSend(objc_msgSend(objc_msgSend(a3, "objectForKeyedSubscript:", *off_1E798ACB0), "objectForKeyedSubscript:", v10), "count"), result + v11 >= 1))
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

- (uint64_t)_selectionBehaviorAllowsSwitchOverTo:(void *)a3 forFrameStatisticsByPortType:(_BYTE *)a4 zoomFactor:blockedByExposureFocusStability:debugOverlayInfo:
{
  if (!a1)
  {
    v14 = 0;
    return v14 & 1;
  }

  v8 = [BWBravoStreamSelector _exposureAndFocusStableForSwitchOverTo:a1 forFrameStatisticsByPortType:a2 debugOverlayInfo:?];
  v9 = [BWBravoStreamSelector _exposureAllowsSwitchToRecommendedMasterStream:a1 frameStatisticsByPortType:a2];
  v10 = *(a1 + 16);
  v11 = v10 == a2 && *(a1 + 72) == 1 && [objc_msgSend(a3 objectForKeyedSubscript:{objc_msgSend(v10, "portType")), "filteredLogicalFocusLensPositionStep"}] < 4;
  v12 = *(a1 + 216);
  if (v12 == 1)
  {
    mach_absolute_time();
    v15 = FigHostTimeToNanoseconds();
    v17 = *(a1 + 304) > 0 && v15 < 200000000;
    v14 = v17 & v9 | v8 | v9 & v11;
    v13 = v14 ^ 1;
    if (!a4)
    {
      return v14 & 1;
    }

LABEL_17:
    *a4 = v13 & 1;
    return v14 & 1;
  }

  if (v12 != 2)
  {
    v13 = 0;
    v14 = 0;
    if (!a4)
    {
      return v14 & 1;
    }

    goto LABEL_17;
  }

  v19 = [BWBravoStreamSelector _conditionsAllowSwitchToRecommendedMasterStream:a1 debugOverlayInfo:a2];
  if (*(a1 + 16) != a2 || (*(a1 + 73) & 1) == 0)
  {
    v20 = [a3 objectForKeyedSubscript:{objc_msgSend(a2, "portType")}];
    if ([a2 hasFocus])
    {
      v11 = [(BWBravoStreamSelector *)a1 _focusIsStable:v20];
    }

    else
    {
      v11 = 1;
    }
  }

  v14 = v19 & v9 & v11;
  v13 = v19 & (v14 ^ 1);
  *(a1 + 344) = v13;
  if (a4)
  {
    goto LABEL_17;
  }

  return v14 & 1;
}

- (BOOL)_conditionsAllowSwitchToRecommendedMasterStream:(_BOOL8)result debugOverlayInfo:(void *)a2
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
      [a2 portType];
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

- (uint64_t)_telephotoLimitsReachedForFrameStatisticsByPortType:(uint64_t)a1 debugOverlayInfo:
{
  if (a1)
  {
    if (*(a1 + 74) == 1)
    {
      if (*(a1 + 40))
      {
        v2 = *(a1 + 352) > *(a1 + 68);
      }

      else
      {
        v2 = *(a1 + 348) > *(a1 + 64);
      }
    }

    else
    {
      v2 = 0;
    }

    if (*(a1 + 184) == 1)
    {
      [*(a1 + 16) portType];
      v3 = [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_4() "objectForKeyedSubscript:{"afRecommendedPrimaryPortType"), "isEqualToString:", *off_1E798A0D8}")] ^ 1;
    }

    else
    {
      [*(a1 + 8) portType];
      v4 = [OUTLINED_FUNCTION_4() objectForKeyedSubscript:?];
      [v4 focusDistance];
      if (v5 <= 0.0)
      {
        LOBYTE(v3) = 0;
      }

      else
      {
        [v4 focusDistance];
        LOBYTE(v3) = v6 < *(a1 + 56);
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

- (uint64_t)_exposureAllowsSwitchToRecommendedMasterStream:(uint64_t)result frameStatisticsByPortType:(uint64_t)a2
{
  if (result)
  {
    v2 = result;
    if (*(result + 74) == 1 && *(result + 16) == a2 || *(result + 24) == a2)
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

- (uint64_t)_exposureAndFocusStableForSwitchOverTo:(uint64_t)a1 forFrameStatisticsByPortType:(uint64_t)a2 debugOverlayInfo:
{
  if (!a1)
  {
    return 0;
  }

  [*(a1 + 24) portType];
  v4 = [OUTLINED_FUNCTION_8() objectForKeyedSubscript:?];
  [*(a1 + 8) portType];
  v5 = [OUTLINED_FUNCTION_8() objectForKeyedSubscript:?];
  [*(a1 + 16) portType];
  v6 = [OUTLINED_FUNCTION_8() objectForKeyedSubscript:?];
  v7 = [v5 aeStable];
  v8 = [v6 aeStable];
  v9 = [(BWBravoStreamSelector *)a1 _focusIsStable:v4];
  v10 = [(BWBravoStreamSelector *)a1 _focusIsStable:v5];
  v11 = [(BWBravoStreamSelector *)a1 _focusIsStable:v6];
  v12 = *(a1 + 200);
  v13 = *(a1 + 24);
  v14 = *(a1 + 8);
  if (v12 == v13)
  {
    if (v14 == a2)
    {
      return v9 & v10;
    }

    if (*(a1 + 16) != a2)
    {
      if (v12 == a2)
      {
        return v9;
      }

      else
      {
        return 0;
      }
    }

    v15 = *(a1 + 74) ^ 1 | v8;
    v16 = v11 & v10;
    return v16 & v15;
  }

  if (v12 == v14)
  {
    if (*(a1 + 16) != a2)
    {
      if (v13 != a2)
      {
        if (v12 == a2)
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

    v15 = *(a1 + 74) ^ 1 | v7 & v8;
    v16 = v10 & v11;
    return v16 & v15;
  }

  if (v14 == a2)
  {
    return v10;
  }

  if (v13 != a2)
  {
    if (*(a1 + 16) == a2)
    {
      return v11 & (*(a1 + 74) ^ 1 | v8);
    }

    return 0;
  }

  return v9;
}

- (uint64_t)_focusIsStable:(uint64_t)a1
{
  result = 0;
  if (a1 && a2)
  {
    if ([a2 afStatus] != 4)
    {
      if (([a2 logicalFocusLensPositionStep] & 0x80000000) != 0)
      {
        v5 = [a2 focusPositionStep];
        if ((v5 & 0x80000000) != 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v5 = [a2 logicalFocusLensPositionStep];
        if ((v5 & 0x80000000) != 0)
        {
LABEL_9:
          [a2 focusingMethod];
          FigCaptureStreamFocusingMethodIsPhaseDetectionBased();
        }
      }

      if (v5 >= *(a1 + 188))
      {
        goto LABEL_9;
      }
    }

    [a2 portType];
    [*(a1 + 24) portType];
    if ([OUTLINED_FUNCTION_4() isEqualToString:?] && *(a1 + 432) == 1)
    {
      return *(a1 + 472);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

@end