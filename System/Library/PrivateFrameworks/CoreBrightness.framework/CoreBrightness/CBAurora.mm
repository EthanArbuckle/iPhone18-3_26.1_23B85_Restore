@interface CBAurora
- (BOOL)entryConditionsSatisfied;
- (CBAurora)initWithQueue:(id)queue andDisplayModule:(id)module andBrtCapabilities:(id)capabilities andFrameStats:(id)stats;
- (float)calculateCurrentLuxTargetScaler;
- (float)calculateCurrentRampDownTargetForAPCE:(float)e;
- (float)calculateCurrentRampUpTargetForAPCE:(float)e;
- (float)calculateEnergyConsumptionCap;
- (float)calculateLuxTargetScaler:(float)scaler;
- (float)calculateRampTargetForNits:(float)nits andAPCE:(float)e withTapPointAPCEMinimum:(float)minimum andTapPointAPCEMaximum:(float)maximum;
- (id)copyPropertyForKey:(id)key;
- (void)dealloc;
- (void)enter;
- (void)evaluateEntryConditions;
- (void)exit;
- (void)initializeMembers:(id)members;
- (void)processAPCESample;
- (void)restoreEDRHeadroom;
- (void)sendEDRHeadroomRequest:(float)request;
- (void)setAODIsOn:(BOOL)on;
- (void)setAuroraFactor:(float)factor withFadePeriod:(float)period;
- (void)setAutoBrightnessIsAvailable:(BOOL)available;
- (void)setAutoBrightnessIsEnabled:(BOOL)enabled;
- (void)setAutoDimIsEnabled:(BOOL)enabled;
- (void)setCLTMActivationThreshold:(float)threshold;
- (void)setCLTMCap:(float)cap;
- (void)setCurrentEDRHeadroomRequest:(float)request;
- (void)setCurrentScaler:(float)scaler;
- (void)setCurveLevel:(int)level;
- (void)setDisplayIsOn:(BOOL)on;
- (void)setDominoModeIsEnabled:(BOOL)enabled;
- (void)setIsEnabled:(BOOL)enabled;
- (void)setLowPowerModeIsEnabled:(BOOL)enabled;
- (void)setPropertyForKey:(id)key withValue:(id)value;
- (void)setRampDownTimeSecondsPerStop:(float)stop;
- (void)setRampUpTimeSecondsPerStop:(float)stop;
- (void)setUPOCap:(float)cap;
- (void)startMonitoring;
- (void)stop;
- (void)stopMonitoring;
- (void)updateAPCENitsLUT;
@end

@implementation CBAurora

- (void)evaluateEntryConditions
{
  if ([(CBAurora *)self entryConditionsSatisfied])
  {
    [(CBAurora *)self enter];
  }

  else
  {
    [(CBAurora *)self exit];
  }
}

- (BOOL)entryConditionsSatisfied
{
  v38 = *MEMORY[0x1E69E9840];
  isEnabled = self->_isEnabled;
  displayIsOn = self->_displayIsOn;
  lux = self->_lux;
  [(CBAurora *)self luxActivationThreshold];
  v33 = lux >= v2;
  autoBrightnessIsEnabled = 0;
  if (self->_autoBrightnessIsAvailable)
  {
    autoBrightnessIsEnabled = self->_autoBrightnessIsEnabled;
  }

  v32 = !self->_lowPowerModeIsEnabled;
  v31 = !self->_dominoModeIsEnabled;
  v30 = !self->_autoDimIsEnabled;
  v24 = 1;
  if (self->_gracePeriod.active)
  {
    v24 = (mach_time_now_in_seconds() - self->_gracePeriod.start) > self->_gracePeriod.length;
  }

  v29 = !self->_aodIsOn;
  v28 = self->_cpms.cltmCap > (self->_cpms.cltmActivationThreshold * self->_cpms.cltmEntryDelta);
  v27 = self->_cpms.upoCap > (self->_cpms.upoActivationThreshold * self->_cpms.upoEntryDelta);
  if ([(CBAurora *)self isActive])
  {
    v28 = self->_cpms.cltmCap > self->_cpms.cltmActivationThreshold;
    v27 = self->_cpms.upoCap > self->_cpms.upoActivationThreshold;
    v23 = self->_lux;
    [(CBAurora *)self luxExitThreshold];
    v33 = v23 >= v3;
  }

  v22 = 0;
  if (isEnabled)
  {
    v22 = 0;
    if (displayIsOn)
    {
      v22 = 0;
      if (v33)
      {
        v22 = 0;
        if (autoBrightnessIsEnabled)
        {
          v22 = 0;
          if (v32)
          {
            v22 = 0;
            if (v31)
            {
              v22 = 0;
              if (v30)
              {
                v22 = 0;
                if (v24)
                {
                  v22 = 0;
                  if (v29)
                  {
                    v22 = 0;
                    if (v28)
                    {
                      v22 = v27;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v21 = 1;
  if (isEnabled == self->_entryConditions.auroraStateSatisfied)
  {
    v21 = 1;
    if (displayIsOn == self->_entryConditions.displayStateSatisfied)
    {
      v21 = 1;
      if (v33 == self->_entryConditions.luxSatisfied)
      {
        v21 = 1;
        if (autoBrightnessIsEnabled == self->_entryConditions.autoBrightnessSatisfied)
        {
          v21 = 1;
          if (v32 == self->_entryConditions.lowPowerModeSatisfied)
          {
            v21 = 1;
            if (v31 == self->_entryConditions.dominoModeSatisfied)
            {
              v21 = 1;
              if (v30 == self->_entryConditions.autoDimSatisfied)
              {
                v21 = 1;
                if (v24 == self->_entryConditions.gracePeriodSatisfied)
                {
                  v21 = 1;
                  if (v29 == self->_entryConditions.aodStateSatisfied)
                  {
                    v21 = 1;
                    if (v28 == self->_entryConditions.cltmSatisfied)
                    {
                      v21 = v27 != self->_entryConditions.upoSatisfied;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (self->_entryConditions.firstEvaluation || v21)
  {
    if (self->_log)
    {
      log = self->_log;
    }

    else
    {
      v19 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      log = v19;
    }

    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v4 = "YES";
      if (isEnabled)
      {
        v5 = "YES";
      }

      else
      {
        v5 = "NO";
      }

      if (displayIsOn)
      {
        v6 = "YES";
      }

      else
      {
        v6 = "NO";
      }

      if (v33)
      {
        v7 = "YES";
      }

      else
      {
        v7 = "NO";
      }

      if (autoBrightnessIsEnabled)
      {
        v8 = "YES";
      }

      else
      {
        v8 = "NO";
      }

      if (v32)
      {
        v9 = "YES";
      }

      else
      {
        v9 = "NO";
      }

      if (v31)
      {
        v10 = "YES";
      }

      else
      {
        v10 = "NO";
      }

      if (v30)
      {
        v11 = "YES";
      }

      else
      {
        v11 = "NO";
      }

      if (v24)
      {
        v12 = "YES";
      }

      else
      {
        v12 = "NO";
      }

      if (v29)
      {
        v13 = "YES";
      }

      else
      {
        v13 = "NO";
      }

      if (v28)
      {
        v14 = "YES";
      }

      else
      {
        v14 = "NO";
      }

      if (!v27)
      {
        v4 = "NO";
      }

      __os_log_helper_16_2_11_8_32_8_32_8_32_8_32_8_32_8_32_8_32_8_32_8_32_8_32_8_32(v37, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v4);
      _os_log_impl(&dword_1DE8E5000, log, OS_LOG_TYPE_DEFAULT, "Aurora Conditions\n{\n\tAuroraEnabled=%s\n\tDisplayOn=%s\n\tLuxOverThreshold=%s\n\tAutoBrightnessOn=%s\n\tLowPowerModeOff=%s\n\tDominoModeOff=%s\n\tAutoDimOff=%s\n\tGracePeriodInactive=%s\n\tAODOff=%s\n\tCLTMCapOverThreshold=%s\n\tUPOCapOverThreshold=%s\n}", v37, 0x70u);
    }
  }

  if (self->_entryConditions.cltmSatisfied && !v28 && [(CBAurora *)self isBoostingBrightness])
  {
    [(CBAurora *)self currentPreAuroraNits];
    *&v16 = fminf(v15, self->_cpms.cltmCap);
    *&v17 = self->_currentNits;
    [CBAnalytics cltmBudgetUpdated:v16 currentSDRBrightness:v17];
  }

  self->_entryConditions.auroraStateSatisfied = isEnabled;
  self->_entryConditions.displayStateSatisfied = displayIsOn;
  self->_entryConditions.luxSatisfied = v33;
  self->_entryConditions.autoBrightnessSatisfied = autoBrightnessIsEnabled;
  self->_entryConditions.lowPowerModeSatisfied = v32;
  self->_entryConditions.dominoModeSatisfied = v31;
  self->_entryConditions.autoDimSatisfied = v30;
  self->_entryConditions.gracePeriodSatisfied = v24;
  self->_entryConditions.aodStateSatisfied = v29;
  self->_entryConditions.cltmSatisfied = v28;
  self->_entryConditions.upoSatisfied = v27;
  self->_entryConditions.firstEvaluation = 0;
  *MEMORY[0x1E69E9840];
  return v22;
}

- (void)exit
{
  v29 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v26 = a2;
  if (self->_isMonitoring)
  {
    if (selfCopy->_log)
    {
      v13 = selfCopy->_log;
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

      v13 = inited;
    }

    v25 = v13;
    v24 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      log = v25;
      type = v24;
      __os_log_helper_16_0_0(v23);
      _os_log_impl(&dword_1DE8E5000, log, type, "Aurora Exit | Start", v23, 2u);
    }

    [(CBAurora *)selfCopy stopMonitoring];
    if (selfCopy->_autoBrightnessIsAvailable)
    {
      *&v2 = selfCopy->_currentScaler;
      LODWORD(v3) = 1.0;
      [(CBAurora *)selfCopy calculateRampTimeForCurrentScaler:v2 andRequestedScaler:v3];
      v9 = v4;
    }

    else
    {
      v9 = 0.0;
    }

    autoDimRampLength = v9;
    if (selfCopy->_autoDimIsEnabled)
    {
      autoDimRampLength = selfCopy->_autoDimRampLength;
    }

    if (!selfCopy->_displayIsOn)
    {
      autoDimRampLength = 0.0;
      selfCopy->_edrHeadroomRestorePending = 0;
    }

    if (selfCopy->_aodIsOn)
    {
      autoDimRampLength = 0.0;
    }

    if (!selfCopy->_autoBrightnessIsEnabled && CBU_IsWatch())
    {
      autoDimRampLength = 0.0;
    }

    [CBAurora setAuroraFactor:selfCopy withFadePeriod:"setAuroraFactor:withFadePeriod:"];
    if (float_equal(selfCopy->_currentScaler, 1.0) && selfCopy->_edrHeadroomRestorePending)
    {
      [(CBAurora *)selfCopy restoreEDRHeadroom];
    }

    if (!selfCopy->_ignoreSessionLimit && [(CBAurora *)selfCopy energyConsumptionExceeded])
    {
      if (selfCopy->_log)
      {
        v8 = selfCopy->_log;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v7 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v7 = init_default_corebrightness_log();
        }

        v8 = v7;
      }

      v21 = v8;
      v20 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_2_8_0_8_0(v28, COERCE__INT64(selfCopy->_currentEnergyConsumption), COERCE__INT64(selfCopy->_maximumEnergyConsumption));
        _os_log_impl(&dword_1DE8E5000, v21, v20, "Aurora GracePeriod | Start=YES EnergyConsumption=%.0f EnergyBudget=%.0f", v28, 0x16u);
      }

      selfCopy->_gracePeriod.active = 1;
      selfCopy->_gracePeriod.start = mach_time_now_in_seconds();
      v5 = dispatch_time(0, (selfCopy->_gracePeriod.length * 1000000000.0));
      queue = selfCopy->_queue;
      block = MEMORY[0x1E69E9820];
      v15 = -1073741824;
      v16 = 0;
      v17 = __16__CBAurora_exit__block_invoke;
      v18 = &unk_1E867B480;
      v19 = selfCopy;
      dispatch_after(v5, queue, &block);
    }

    selfCopy->_rtplc.rampInProgress = 0;
    selfCopy->_currentEnergyConsumption = 0.0;
  }

  *MEMORY[0x1E69E9840];
}

- (void)initializeMembers:(id)members
{
  selfCopy = self;
  v41 = a2;
  membersCopy = members;
  self->_frameStats = 0;
  selfCopy->_apceTimer = 0;
  selfCopy->_lux = 0.0;
  selfCopy->_isEnabled = 1;
  selfCopy->_displayIsOn = 1;
  selfCopy->_autoBrightnessIsEnabled = 1;
  selfCopy->_lowPowerModeIsEnabled = 0;
  selfCopy->_dominoModeIsEnabled = 0;
  selfCopy->_autoDimIsEnabled = 0;
  selfCopy->_autoBrightnessIsAvailable = 1;
  selfCopy->_aodIsOn = 0;
  selfCopy->_currentNits = 0.0;
  selfCopy->_currentScaler = 1.0;
  selfCopy->_autoDimRampLength = 0.0;
  selfCopy->_isMonitoring = 0;
  selfCopy->_lastFrameInfoReceivedTimestamp = 0.0;
  selfCopy->_currentEDRHeadroom = 1.0;
  selfCopy->_currentEDRHeadroomRequest = 1.0;
  selfCopy->_edrHeadroomRestorePending = 0;
  selfCopy->_rampInProgress = 0;
  selfCopy->_lastRampTargetScaler = 1.0;
  selfCopy->_minimumReactionNitsDelta = 65.0;
  selfCopy->_curveLevel = 1;
  CBAuroraParams::CBAuroraParams(v6);
  CBAuroraParams::loadFromCapabilities(v6, membersCopy);
  v3 = selfCopy;
  *selfCopy->_luxActivationThreshold.__elems_ = v7;
  v3->_luxActivationThreshold.__elems_[2] = v8;
  v4 = selfCopy;
  *selfCopy->_luxExitThreshold.__elems_ = v9;
  v4->_luxExitThreshold.__elems_[2] = v10;
  v5 = selfCopy;
  *selfCopy->_luxSaturationThreshold.__elems_ = v11;
  v5->_luxSaturationThreshold.__elems_[2] = v12;
  selfCopy->_apceSamplingRate = 1.0;
  selfCopy->_averageAPCESamplingRate = v15;
  selfCopy->_ignorePeakAPCE = v16 & 1;
  selfCopy->_rampUpTimeSecondsPerStop = v17;
  selfCopy->_rampDownTimeSecondsPerStop = v18;
  selfCopy->_ignoreSessionLimit = v29 & 1;
  selfCopy->_ignoreAPCE = v30 & 1;
  selfCopy->_allowEDR = v31 & 1;
  selfCopy->_edrDurationPerStop = v19;
  selfCopy->_gracePeriod.active = 0;
  selfCopy->_gracePeriod.start = 0.0;
  selfCopy->_gracePeriod.length = 0.0;
  selfCopy->_rtplc.targetMargin = 1.0;
  selfCopy->_rtplc.rampInProgress = 0;
  selfCopy->_rtplc.targetScaler = 1.0;
  selfCopy->_rtplc.tripMaxBrightness = 0.0;
  selfCopy->_entryConditions.firstEvaluation = 1;
  selfCopy->_entryConditions.auroraStateSatisfied = 0;
  selfCopy->_entryConditions.displayStateSatisfied = 0;
  selfCopy->_entryConditions.luxSatisfied = 0;
  selfCopy->_entryConditions.autoBrightnessSatisfied = 0;
  selfCopy->_entryConditions.lowPowerModeSatisfied = 0;
  selfCopy->_entryConditions.dominoModeSatisfied = 0;
  selfCopy->_entryConditions.autoDimSatisfied = 0;
  selfCopy->_entryConditions.gracePeriodSatisfied = 0;
  selfCopy->_entryConditions.aodStateSatisfied = 0;
  selfCopy->_entryConditions.cltmSatisfied = 0;
  selfCopy->_entryConditions.upoSatisfied = 0;
  selfCopy->_supportCLTMAwareAurora = v32 & 1;
  if (selfCopy->_supportCLTMAwareAurora)
  {
    std::vector<float>::operator=[abi:de200100](&selfCopy->_powerAwareAurora, v33);
    std::vector<float>::operator=[abi:de200100](&selfCopy->_powerAwareAurora.rampUpMinAPCELUT, v34);
    std::vector<float>::operator=[abi:de200100](&selfCopy->_powerAwareAurora.rampUpMaxAPCELUT, v35);
    std::vector<float>::operator=[abi:de200100](&selfCopy->_powerAwareAurora.rampDownMinAPCELUT, v36);
    std::vector<float>::operator=[abi:de200100](&selfCopy->_powerAwareAurora.rampDownMaxAPCELUT, v37);
    std::vector<float>::operator=[abi:de200100](&selfCopy->_powerAwareAurora.maxGain, v38);
    std::vector<float>::operator=[abi:de200100](&selfCopy->_powerAwareAurora.energyConsumptionTarget, v39);
    selfCopy->_maximumScaler = *std::vector<float>::back[abi:de200100](&selfCopy->_powerAwareAurora.maxGain.__begin_);
    selfCopy->_minimumScaler = 1.0;
    selfCopy->_nitsMinimum = *std::vector<float>::back[abi:de200100](&selfCopy->_powerAwareAurora.sdrLUT.__begin_);
    selfCopy->_nitsMaximum = selfCopy->_nitsMinimum * selfCopy->_maximumScaler;
    selfCopy->_rampUpTapPointAPCEMinimum = *std::vector<float>::back[abi:de200100](&selfCopy->_powerAwareAurora.rampUpMinAPCELUT.__begin_);
    selfCopy->_rampUpTapPointAPCEMaximum = *std::vector<float>::back[abi:de200100](&selfCopy->_powerAwareAurora.rampUpMaxAPCELUT.__begin_);
    selfCopy->_rampDownTapPointAPCEMinimum = *std::vector<float>::back[abi:de200100](&selfCopy->_powerAwareAurora.rampDownMinAPCELUT.__begin_);
    selfCopy->_rampDownTapPointAPCEMaximum = *std::vector<float>::back[abi:de200100](&selfCopy->_powerAwareAurora.rampDownMaxAPCELUT.__begin_);
    selfCopy->_maximumEnergyConsumption = *std::vector<float>::back[abi:de200100](&selfCopy->_powerAwareAurora.energyConsumptionTarget.__begin_);
  }

  else
  {
    selfCopy->_nitsMinimum = v14;
    selfCopy->_nitsMaximum = v13;
    selfCopy->_maximumScaler = selfCopy->_nitsMaximum / selfCopy->_nitsMinimum;
    selfCopy->_minimumScaler = 1.0;
    selfCopy->_rampUpTapPointAPCEMinimum = v20;
    selfCopy->_rampUpTapPointAPCEMaximum = v21;
    selfCopy->_rampDownTapPointAPCEMinimum = v22;
    selfCopy->_rampDownTapPointAPCEMaximum = v23;
    selfCopy->_maximumEnergyConsumption = v28 * selfCopy->_nitsMaximum;
  }

  selfCopy->_currentEnergyConsumption = 0.0;
  selfCopy->_cpms.cltmCap = selfCopy->_nitsMaximum;
  selfCopy->_cltmCap = selfCopy->_nitsMaximum;
  selfCopy->_cpms.upoCap = selfCopy->_nitsMaximum;
  selfCopy->_upoCap = selfCopy->_nitsMaximum;
  selfCopy->_cpms.cltmActivationThreshold = v24;
  selfCopy->_cpms.cltmEntryDelta = v25;
  selfCopy->_cpms.upoActivationThreshold = v26;
  selfCopy->_cpms.upoEntryDelta = v27;
  CBAuroraParams::~CBAuroraParams(v6);
}

- (CBAurora)initWithQueue:(id)queue andDisplayModule:(id)module andBrtCapabilities:(id)capabilities andFrameStats:(id)stats
{
  selfCopy = self;
  v24 = a2;
  queueCopy = queue;
  moduleCopy = module;
  capabilitiesCopy = capabilities;
  statsCopy = stats;
  v19.receiver = self;
  v19.super_class = CBAurora;
  selfCopy = [(CBAurora *)&v19 init];
  if (selfCopy)
  {
    v6 = os_log_create("com.apple.CoreBrightness.Aurora", "default");
    *(selfCopy + 1) = v6;
    if (*(selfCopy + 1))
    {
      v15 = *(selfCopy + 1);
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

      v15 = inited;
    }

    oslog = v15;
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      v13 = type;
      __os_log_helper_16_0_0(v16);
      _os_log_impl(&dword_1DE8E5000, log, v13, "Aurora Initialization | Start", v16, 2u);
    }

    *(selfCopy + 2) = moduleCopy;
    *(selfCopy + 3) = queueCopy;
    dispatch_retain(*(selfCopy + 3));
    [selfCopy initializeMembers:capabilitiesCopy];
    v7 = MEMORY[0x1E69E5928](statsCopy);
    *(selfCopy + 4) = v7;
    [*(selfCopy + 4) setMovingAverageDuration:(1.0 / *(selfCopy + 30))];
    LODWORD(v8) = *(selfCopy + 55);
    [selfCopy setCLTMActivationThreshold:v8];
    LODWORD(v9) = *(selfCopy + 33);
    [selfCopy setRampUpTimeSecondsPerStop:v9];
    LODWORD(v10) = *(selfCopy + 34);
    [selfCopy setRampDownTimeSecondsPerStop:v10];
  }

  return selfCopy;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  v2 = MEMORY[0x1E69E5920](self->_frameStats).n128_u64[0];
  if (selfCopy->_queue)
  {
    dispatch_release(selfCopy->_queue);
    selfCopy->_queue = 0;
  }

  if (selfCopy->_log)
  {
    v2 = MEMORY[0x1E69E5920](selfCopy->_log).n128_u64[0];
    selfCopy->_log = 0;
  }

  v3.receiver = selfCopy;
  v3.super_class = CBAurora;
  [(CBAurora *)&v3 dealloc];
}

- (void)enter
{
  selfCopy = self;
  v18 = a2;
  if (!self->_isMonitoring)
  {
    if (selfCopy->_log)
    {
      v11 = selfCopy->_log;
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

      v11 = inited;
    }

    v17 = v11;
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      log = v17;
      type = v16;
      __os_log_helper_16_0_0(v15);
      _os_log_impl(&dword_1DE8E5000, log, type, "Aurora Entry | Start", v15, 2u);
    }

    if (!float_equal(selfCopy->_currentEDRHeadroomRequest, 1.0))
    {
      if (selfCopy->_log)
      {
        v7 = selfCopy->_log;
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

      v14 = v7;
      v13 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v4 = v14;
        v5 = v13;
        __os_log_helper_16_0_0(v12);
        _os_log_impl(&dword_1DE8E5000, v4, v5, "Aurora Entry | Ramping the EDR headroom to 1.0 before entering Aurora", v12, 2u);
      }

      LODWORD(v2) = 1.0;
      [(CBAurora *)selfCopy sendEDRHeadroomRequest:v2];
    }

    v3 = float_equal(selfCopy->_currentEDRHeadroomRequest, 1.0);
    selfCopy->_edrHeadroomRestorePending = !v3;
    [(CBAurora *)selfCopy startMonitoring];
  }
}

uint64_t __16__CBAurora_exit__block_invoke(uint64_t a1)
{
  v11 = a1;
  v10 = a1;
  if (*(*(a1 + 32) + 8))
  {
    v5 = *(*(a1 + 32) + 8);
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

  v9 = v5;
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    log = v9;
    type = v8;
    __os_log_helper_16_0_0(v7);
    _os_log_impl(&dword_1DE8E5000, log, type, "Aurora GracePeriod | End", v7, 2u);
  }

  *(*(a1 + 32) + 172) = 0;
  return [*(a1 + 32) evaluateEntryConditions];
}

- (void)startMonitoring
{
  selfCopy = self;
  v32 = a2;
  if (self->_log)
  {
    v8 = selfCopy->_log;
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

    v8 = inited;
  }

  v31 = v8;
  v30 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    log = v31;
    type = v30;
    __os_log_helper_16_0_0(v29);
    _os_log_impl(&dword_1DE8E5000, log, type, "Aurora Sampling | Start", v29, 2u);
  }

  if (!selfCopy->_isMonitoring)
  {
    frameStats = selfCopy->_frameStats;
    v23 = MEMORY[0x1E69E9820];
    v24 = -1073741824;
    v25 = 0;
    v26 = __27__CBAurora_startMonitoring__block_invoke;
    v27 = &unk_1E867CC78;
    v28 = selfCopy;
    [(CBFrameStats *)frameStats startMonitoring:?];
    selfCopy->_isMonitoring = 1;
  }

  if (!selfCopy->_apceTimer)
  {
    v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, selfCopy->_queue);
    selfCopy->_apceTimer = v3;
    if (selfCopy->_apceTimer)
    {
      apceTimer = selfCopy->_apceTimer;
      dispatch_source_set_timer(selfCopy->_apceTimer, 0, ((1.0 / selfCopy->_averageAPCESamplingRate) * 1000000000.0), 0);
      block = MEMORY[0x1E69E9820];
      v16 = -1073741824;
      v17 = 0;
      v18 = __27__CBAurora_startMonitoring__block_invoke_8;
      v19 = &unk_1E867B480;
      v20 = selfCopy;
      v21 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, &block);
      v4 = selfCopy->_apceTimer;
      handler = MEMORY[0x1E69E9820];
      v10 = -1073741824;
      v11 = 0;
      v12 = __27__CBAurora_startMonitoring__block_invoke_2_9;
      v13 = &unk_1E867B480;
      v14 = apceTimer;
      dispatch_source_set_cancel_handler(v4, &handler);
      if (v21)
      {
        dispatch_source_set_event_handler(selfCopy->_apceTimer, v21);
        _Block_release(v21);
      }

      dispatch_resume(selfCopy->_apceTimer);
    }
  }
}

void __27__CBAurora_startMonitoring__block_invoke(uint64_t a1, _OWORD *a2)
{
  v15 = a1;
  v14 = a2;
  v13 = a1;
  *(*(a1 + 32) + 52) = mach_time_now_in_milliseconds();
  v2 = *(*(a1 + 32) + 24);
  block = MEMORY[0x1E69E9820];
  v6 = -1073741824;
  v7 = 0;
  v8 = __27__CBAurora_startMonitoring__block_invoke_2;
  v9 = &unk_1E867B458;
  v11 = *a2;
  v12 = a2[1];
  v10 = *(a1 + 32);
  dispatch_async(v2, &block);
}

uint64_t __27__CBAurora_startMonitoring__block_invoke_2(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v39 = a1;
  v38 = a1;
  if (*(a1 + 53) & 1) == 0 && (*(*(a1 + 32) + 188))
  {
    if (*(*(a1 + 32) + 8))
    {
      v25 = *(*(a1 + 32) + 8);
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

      v25 = inited;
    }

    v37 = v25;
    v36 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *&v1 = *(*(a1 + 32) + 420);
      v23 = v1;
      LODWORD(v1) = *(*(a1 + 32) + 192);
      [*(a1 + 32) convertScalerToNits:*&v1];
      __os_log_helper_16_0_3_8_0_8_0_8_0(v42, v23, COERCE__INT64(v2), COERCE__INT64(*(a1 + 64)));
      _os_log_impl(&dword_1DE8E5000, v37, v36, "Aurora RTPLC | CapReleased=YES CurrentNits=%f TargetNits=%f ScaleFactor=%f", v42, 0x20u);
    }

    *(*(a1 + 32) + 188) = 0;
  }

  if (*(a1 + 53))
  {
    if (*(*(a1 + 32) + 8))
    {
      v22 = *(*(a1 + 32) + 8);
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v21 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v21 = init_default_corebrightness_log();
      }

      v22 = v21;
    }

    v35 = v22;
    v34 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 52))
      {
        v4 = "YES";
      }

      else
      {
        v4 = "NO";
      }

      if (*(a1 + 53))
      {
        v5 = "YES";
      }

      else
      {
        v5 = "NO";
      }

      __os_log_helper_16_2_5_8_32_8_32_8_0_8_0_8_0(v41, v4, v5, COERCE__INT64(*(a1 + 60)), COERCE__INT64(*(*(a1 + 32) + 420)), COERCE__INT64(*(a1 + 64)));
      _os_log_impl(&dword_1DE8E5000, v35, v34, "Aurora RTPLC | Triggered=%s CapApplied=%s ReducedNits=%f CurrentNits=%f ScaleFactor=%f", v41, 0x34u);
    }

    *&v3 = *(a1 + 60) - *(*(a1 + 32) + 184);
    [*(a1 + 32) calculateRampTargetScalerForNits:v3];
    v33 = *&v6;
    if (*(*(a1 + 32) + 56) > *&v6 && ((*(*(a1 + 32) + 188) & 1) == 0 || !float_equal(*(*(a1 + 32) + 56), v33)))
    {
      *(*(a1 + 32) + 192) = v33;
      *(*(a1 + 32) + 188) = 1;
      v8 = *(a1 + 32);
      LODWORD(v6) = v8[106];
      LODWORD(v7) = v8[48];
      [v8 calculateRampTimeForCurrentScaler:v6 andRequestedScaler:v7];
      v32 = v9;
      LODWORD(v10) = *(*(a1 + 32) + 192);
      *&v11 = v32;
      [*(a1 + 32) setAuroraFactor:v10 withFadePeriod:v11];
      *(*(a1 + 32) + 56) = *(*(a1 + 32) + 192);
      if (*(*(a1 + 32) + 8))
      {
        v20 = *(*(a1 + 32) + 8);
      }

      else
      {
        v19 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
        v20 = v19;
      }

      oslog = v20;
      v30 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_3_8_0_8_0_8_0(v40, COERCE__INT64(*(*(a1 + 32) + 424)), COERCE__INT64(*(*(a1 + 32) + 192)), COERCE__INT64(v32));
        _os_log_impl(&dword_1DE8E5000, oslog, v30, "Aurora RTPLC | CatchUpRamp=YES CurrentScaler=%f TargetScaler=%f RampTime=%f", v40, 0x20u);
      }
    }
  }

  v18 = 1;
  if ((*(a1 + 52) & 1) == 0)
  {
    v18 = *(a1 + 53);
  }

  v29 = v18 & 1;
  if ([*(*(a1 + 32) + 32) tripLength] && (v29 & 1) == 0)
  {
    v16 = mach_time_now_in_seconds();
    [*(*(a1 + 32) + 32) currentTripStartTime];
    v28 = v16 - v12;
    v17 = [*(*(a1 + 32) + 32) tripLength];
    [*(*(a1 + 32) + 32) tripMaxAPCE];
    v13 = *(*(a1 + 32) + 196);
    [CBAnalytics rtplcTriggeredWithLength:"rtplcTriggeredWithLength:maxAPCE:durationInSeconds:sdrBrightness:referenceModeEnabled:" maxAPCE:v17 durationInSeconds:0 sdrBrightness:? referenceModeEnabled:?];
    *(*(a1 + 32) + 196) = 0;
  }

  if (![*(*(a1 + 32) + 32) tripLength] && (v29 & 1) != 0)
  {
    *(*(a1 + 32) + 196) = *(*(a1 + 32) + 420);
  }

  if (v29)
  {
    *(*(a1 + 32) + 196) = fmaxf(*(*(a1 + 32) + 420), *(*(a1 + 32) + 196));
  }

  v14 = *(*(a1 + 32) + 32);
  v27[0] = *(a1 + 40);
  v27[1] = *(a1 + 56);
  result = [v14 processFrameInfo:v27];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)stopMonitoring
{
  selfCopy = self;
  v9 = a2;
  if (self->_log)
  {
    v5 = selfCopy->_log;
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
    _os_log_impl(&dword_1DE8E5000, log, type, "Aurora Sampling | Stop", v6, 2u);
  }

  if (selfCopy->_apceTimer)
  {
    dispatch_source_cancel(selfCopy->_apceTimer);
    selfCopy->_apceTimer = 0;
  }

  [(CBFrameStats *)selfCopy->_frameStats stopMonitoring];
  selfCopy->_isMonitoring = 0;
  selfCopy->_lastFrameInfoReceivedTimestamp = 0.0;
}

- (void)updateAPCENitsLUT
{
  v43 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v40 = a2;
  cltmCap = self->_cpms.cltmCap;
  if (cltmCap > *std::vector<float>::operator[][abi:de200100](&self->_powerAwareAurora.sdrLUT.__begin_, 0))
  {
    if (cltmCap < *std::vector<float>::back[abi:de200100](&selfCopy->_powerAwareAurora.sdrLUT.__begin_))
    {
      v38 = 0;
      v37 = 0;
      v16 = std::vector<float>::operator[][abi:de200100](&selfCopy->_powerAwareAurora.sdrLUT.__begin_, 0);
      v2 = std::vector<float>::size[abi:de200100](&selfCopy->_powerAwareAurora.sdrLUT.__begin_);
      find_bound(v16, v2, &v38, &v37, cltmCap);
      selfCopy->_nitsMinimum = cltmCap;
      v17 = cltmCap;
      v18 = *std::vector<float>::operator[][abi:de200100](&selfCopy->_powerAwareAurora.sdrLUT.__begin_, v38);
      v19 = *std::vector<float>::operator[][abi:de200100](&selfCopy->_powerAwareAurora.maxGain.__begin_, v38);
      v20 = *std::vector<float>::operator[][abi:de200100](&selfCopy->_powerAwareAurora.sdrLUT.__begin_, v37);
      v3 = std::vector<float>::operator[][abi:de200100](&selfCopy->_powerAwareAurora.maxGain.__begin_, v37);
      v4 = linear_interpolation(v17, v18, v19, v20, *v3);
      selfCopy->_maximumScaler = v4;
      selfCopy->_nitsMaximum = selfCopy->_nitsMinimum * selfCopy->_maximumScaler;
      v21 = cltmCap;
      v22 = *std::vector<float>::operator[][abi:de200100](&selfCopy->_powerAwareAurora.sdrLUT.__begin_, v38);
      v23 = *std::vector<float>::operator[][abi:de200100](&selfCopy->_powerAwareAurora.rampUpMaxAPCELUT.__begin_, v38);
      v24 = *std::vector<float>::operator[][abi:de200100](&selfCopy->_powerAwareAurora.sdrLUT.__begin_, v37);
      v5 = std::vector<float>::operator[][abi:de200100](&selfCopy->_powerAwareAurora.rampUpMaxAPCELUT.__begin_, v37);
      v6 = linear_interpolation(v21, v22, v23, v24, *v5);
      selfCopy->_rampUpTapPointAPCEMaximum = v6;
      v25 = cltmCap;
      v26 = *std::vector<float>::operator[][abi:de200100](&selfCopy->_powerAwareAurora.sdrLUT.__begin_, v38);
      v27 = *std::vector<float>::operator[][abi:de200100](&selfCopy->_powerAwareAurora.rampUpMinAPCELUT.__begin_, v38);
      v28 = *std::vector<float>::operator[][abi:de200100](&selfCopy->_powerAwareAurora.sdrLUT.__begin_, v37);
      v7 = std::vector<float>::operator[][abi:de200100](&selfCopy->_powerAwareAurora.rampUpMinAPCELUT.__begin_, v37);
      v8 = linear_interpolation(v25, v26, v27, v28, *v7);
      selfCopy->_rampUpTapPointAPCEMinimum = v8;
      v29 = cltmCap;
      v30 = *std::vector<float>::operator[][abi:de200100](&selfCopy->_powerAwareAurora.sdrLUT.__begin_, v38);
      v31 = *std::vector<float>::operator[][abi:de200100](&selfCopy->_powerAwareAurora.rampDownMaxAPCELUT.__begin_, v38);
      v32 = *std::vector<float>::operator[][abi:de200100](&selfCopy->_powerAwareAurora.sdrLUT.__begin_, v37);
      v9 = std::vector<float>::operator[][abi:de200100](&selfCopy->_powerAwareAurora.rampDownMaxAPCELUT.__begin_, v37);
      v10 = linear_interpolation(v29, v30, v31, v32, *v9);
      selfCopy->_rampDownTapPointAPCEMaximum = v10;
      v33 = cltmCap;
      v34 = *std::vector<float>::operator[][abi:de200100](&selfCopy->_powerAwareAurora.sdrLUT.__begin_, v38);
      v35 = *std::vector<float>::operator[][abi:de200100](&selfCopy->_powerAwareAurora.rampDownMinAPCELUT.__begin_, v38);
      v36 = *std::vector<float>::operator[][abi:de200100](&selfCopy->_powerAwareAurora.sdrLUT.__begin_, v37);
      v11 = std::vector<float>::operator[][abi:de200100](&selfCopy->_powerAwareAurora.rampDownMinAPCELUT.__begin_, v37);
      v12 = linear_interpolation(v33, v34, v35, v36, *v11);
      selfCopy->_rampDownTapPointAPCEMinimum = v12;
      v13 = std::vector<float>::operator[][abi:de200100](&selfCopy->_powerAwareAurora.energyConsumptionTarget.__begin_, v38);
      selfCopy->_maximumEnergyConsumption = *v13;
    }

    else
    {
      selfCopy->_maximumScaler = *std::vector<float>::back[abi:de200100](&selfCopy->_powerAwareAurora.maxGain.__begin_);
      selfCopy->_nitsMinimum = *std::vector<float>::back[abi:de200100](&selfCopy->_powerAwareAurora.sdrLUT.__begin_);
      selfCopy->_nitsMaximum = selfCopy->_nitsMinimum * selfCopy->_maximumScaler;
      selfCopy->_rampUpTapPointAPCEMaximum = *std::vector<float>::back[abi:de200100](&selfCopy->_powerAwareAurora.rampUpMaxAPCELUT.__begin_);
      selfCopy->_rampUpTapPointAPCEMinimum = *std::vector<float>::back[abi:de200100](&selfCopy->_powerAwareAurora.rampUpMinAPCELUT.__begin_);
      selfCopy->_rampDownTapPointAPCEMaximum = *std::vector<float>::back[abi:de200100](&selfCopy->_powerAwareAurora.rampDownMaxAPCELUT.__begin_);
      selfCopy->_rampDownTapPointAPCEMinimum = *std::vector<float>::back[abi:de200100](&selfCopy->_powerAwareAurora.rampDownMinAPCELUT.__begin_);
      selfCopy->_maximumEnergyConsumption = *std::vector<float>::back[abi:de200100](&selfCopy->_powerAwareAurora.energyConsumptionTarget.__begin_);
    }
  }

  else
  {
    selfCopy->_maximumScaler = *std::vector<float>::operator[][abi:de200100](&selfCopy->_powerAwareAurora.maxGain.__begin_, 0);
    selfCopy->_nitsMinimum = cltmCap;
    selfCopy->_nitsMaximum = selfCopy->_nitsMinimum * selfCopy->_maximumScaler;
    selfCopy->_rampUpTapPointAPCEMaximum = *std::vector<float>::operator[][abi:de200100](&selfCopy->_powerAwareAurora.rampUpMaxAPCELUT.__begin_, 0);
    selfCopy->_rampUpTapPointAPCEMinimum = *std::vector<float>::operator[][abi:de200100](&selfCopy->_powerAwareAurora.rampUpMinAPCELUT.__begin_, 0);
    selfCopy->_rampDownTapPointAPCEMaximum = *std::vector<float>::operator[][abi:de200100](&selfCopy->_powerAwareAurora.rampDownMaxAPCELUT.__begin_, 0);
    selfCopy->_rampDownTapPointAPCEMinimum = *std::vector<float>::operator[][abi:de200100](&selfCopy->_powerAwareAurora.rampDownMinAPCELUT.__begin_, 0);
    selfCopy->_maximumEnergyConsumption = *std::vector<float>::operator[][abi:de200100](&selfCopy->_powerAwareAurora.energyConsumptionTarget.__begin_, 0);
  }

  if (selfCopy->_log)
  {
    log = selfCopy->_log;
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
    __os_log_helper_16_0_8_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0(v42, COERCE__INT64(selfCopy->_nitsMinimum), COERCE__INT64(selfCopy->_nitsMaximum), COERCE__INT64(selfCopy->_maximumScaler), COERCE__INT64(selfCopy->_rampUpTapPointAPCEMinimum), COERCE__INT64(selfCopy->_rampUpTapPointAPCEMaximum), COERCE__INT64(selfCopy->_rampDownTapPointAPCEMinimum), COERCE__INT64(selfCopy->_rampDownTapPointAPCEMaximum), COERCE__INT64(selfCopy->_maximumEnergyConsumption));
    _os_log_impl(&dword_1DE8E5000, log, OS_LOG_TYPE_DEFAULT, "Aurora | Updated APCE-Nits LUT nitsMinimum = %f nitsMaximum = %f maximumScaler = %f rampUpAPCEMin = %f rampUpAPCEMax = %f rampDownAPCEMin = %f rampDownAPCEMax = %f energyConsumptionTarget = %f", v42, 0x52u);
  }

  *MEMORY[0x1E69E9840];
}

- (void)setAuroraFactor:(float)factor withFadePeriod:(float)period
{
  v11[2] = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v10[0] = @"AuroraFactor";
  *&v4 = factor;
  v11[0] = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  v10[1] = @"AuroraFadePeriod";
  *&v5 = period;
  v11[1] = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  -[CBDisplayModule setProperty:forKey:](self->_displayModule, "setProperty:forKey:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2], @"AuroraFactorWithFade");
  objc_autoreleasePoolPop(context);
  *MEMORY[0x1E69E9840];
}

- (float)calculateEnergyConsumptionCap
{
  if ([(CBAurora *)self energyConsumptionExceeded])
  {
    return self->_nitsMinimum;
  }

  else
  {
    return self->_nitsMaximum;
  }
}

- (void)processAPCESample
{
  v93 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v89 = a2;
  if (!self->_ignoreSessionLimit && selfCopy->_currentNits > selfCopy->_nitsMinimum)
  {
    selfCopy->_currentEnergyConsumption = selfCopy->_currentEnergyConsumption + (selfCopy->_currentNits / selfCopy->_averageAPCESamplingRate);
  }

  if (selfCopy->_allowEDR || float_equal(selfCopy->_currentEDRHeadroom, 1.0))
  {
    if (selfCopy->_rtplc.rampInProgress)
    {
      if (selfCopy->_log)
      {
        v63 = selfCopy->_log;
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

        v63 = inited;
      }

      v85 = v63;
      v84 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        v59 = v85;
        *v60 = v84;
        *&v2 = selfCopy->_currentScaler;
        *&v3 = selfCopy->_rtplc.targetScaler;
        v61 = v92;
        __os_log_helper_16_0_2_8_0_8_0(v92, v2, v3);
        _os_log_impl(&dword_1DE8E5000, v85, v84, "Aurora Sampling | RTPLC catch-up in progress, not processing the APCE sample | CurrentScaler=%f TargetScaler=%f", v92, 0x16u);
      }
    }

    else
    {
      if (selfCopy->_ignoreAPCE)
      {
        HIDWORD(v4) = 0;
        v58 = 0.0;
      }

      else
      {
        [(CBFrameStats *)selfCopy->_frameStats getMovingAverage];
        v57 = 1120403456;
        v58 = std::__math::round[abi:de200100](v5 * 100.0) / 100.0;
      }

      v83 = v58;
      v82 = selfCopy->_nitsMinimum * selfCopy->_currentScaler;
      *&v4 = v58;
      [(CBAurora *)selfCopy calculateCurrentRampUpTargetForAPCE:v4];
      v81 = *&v6;
      [(CBAurora *)selfCopy calculateRampTargetScalerForNits:v6];
      v80 = v7;
      *&v8 = v58;
      [(CBAurora *)selfCopy calculateCurrentRampDownTargetForAPCE:v8];
      v79 = *&v9;
      [(CBAurora *)selfCopy calculateRampTargetScalerForNits:v9];
      v78 = *&v10;
      v56 = 0;
      if (v81 > v82)
      {
        v56 = 0;
        if (v79 > v82)
        {
          *&v10 = abs[abi:de200100](v81 - v82);
          minimumReactionNitsDelta = selfCopy->_minimumReactionNitsDelta;
          v55 = 1;
          if (*&v10 <= minimumReactionNitsDelta)
          {
            v54 = v80;
            [(CBAurora *)selfCopy calculateCurrentLuxTargetScaler];
            v55 = float_equal(v80, v12);
          }

          v56 = v55;
        }
      }

      v77 = v56;
      *&v10 = v81;
      v53 = 0;
      if (v81 < v82)
      {
        *&v10 = v79;
        v53 = 0;
        if (v79 < v82)
        {
          *&v10 = abs[abi:de200100](v79 - v82);
          v53 = *&v10 > selfCopy->_minimumReactionNitsDelta;
        }
      }

      v76 = v53;
      [(CBFrameStats *)selfCopy->_frameStats getPeakAPCECap];
      v75 = *&v13;
      [(CBAurora *)selfCopy calculateRampTargetScalerForNits:v13];
      v74 = v14;
      v52 = selfCopy;
      [(CBAurora *)selfCopy calculateEnergyConsumptionCap];
      [(CBAurora *)selfCopy calculateRampTargetScalerForNits:?];
      v73 = v15;
      if (selfCopy->_log)
      {
        v51 = selfCopy->_log;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v50 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v50 = init_default_corebrightness_log();
        }

        v51 = v50;
      }

      v72 = v51;
      v71 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        v47 = v72;
        *v48 = v71;
        *&v39 = selfCopy->_currentNits;
        [(CBAurora *)selfCopy currentPreAuroraNits];
        *&v40 = v16;
        *&v41 = selfCopy->_currentScaler;
        *&v42 = selfCopy->_lux;
        *&v43 = v83;
        *&v44 = v81;
        *&v45 = v79;
        v17 = "YES";
        if (v77)
        {
          v18 = "YES";
        }

        else
        {
          v18 = "NO";
        }

        v28 = v18;
        if (!v76)
        {
          v17 = "NO";
        }

        v29 = v17;
        [(CBFrameStats *)selfCopy->_frameStats getPeakAPCE];
        *&v30 = v19;
        v31 = v75;
        *&v32 = selfCopy->_currentEnergyConsumption;
        *&v33 = selfCopy->_maximumEnergyConsumption;
        [(CBAurora *)selfCopy calculateEnergyConsumptionCap];
        *&v34 = v20;
        v35 = v80;
        v36 = v78;
        v37 = v74;
        v38 = v73;
        v21 = mach_time_now_in_milliseconds();
        *&v22 = selfCopy->_lastFrameInfoReceivedTimestamp;
        v46 = &v25;
        v49 = v91;
        __os_log_helper_16_2_20_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_32_8_32_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0(v91, v39, v40, v41, v42, v43, v44, v45, v28, v29, v30, COERCE__INT64(v75), v32, v33, v34, COERCE__INT64(v80), COERCE__INT64(v78), COERCE__INT64(v74), COERCE__INT64(v73), COERCE__INT64(v21), v22);
        _os_log_impl(&dword_1DE8E5000, v47, v48[0], "Aurora Sampling\n{\n\tNits=%.0f\n\tPre=%.0f\n\tCurrentScaler=%f\n\tLux=%.0f\n\tAPCE=%.2f\n\tRampUp.Target=%.0f\n\tRampDown.Target=%.0f\n\tRampUp=%s\n\tRampDown=%s\n\tPeakAPCE=%.2f\n\tPeakAPCE.Cap=%.0f\n\tEnergyConsumption=%.0f\n\tEnergyConsumptionBudget=%.0f\n\tEnergyConsumption.Cap=%.0f\n\tRampUp.TargetScaler=%f\n\tRampDown.TargetScaler=%f\n\tPeakAPCE.TargetScaler=%f\n\tEnergyConsumption.TargetScaler=%f\n\tNow=%.0f\n\tLastFrameInfoReceivedTimestamp=%.0f\n}", v49, 0xCAu);
      }

      nitsMaximum = selfCopy->_nitsMaximum;
      if (!selfCopy->_ignoreAPCE && !selfCopy->_ignorePeakAPCE)
      {
        nitsMaximum = *std::min[abi:de200100]<float>(&nitsMaximum, &v74);
      }

      nitsMaximum = *std::min[abi:de200100]<float>(&nitsMaximum, &v73);
      if (v77 || v76)
      {
        if (v77)
        {
          v27 = v80;
        }

        else
        {
          v27 = v78;
        }

        v69 = v27;
        v26 = selfCopy;
        *&v24 = *std::min[abi:de200100]<float>(&nitsMaximum, &v69);
        [(CBAurora *)v26 rampTo:v24];
      }

      else if (selfCopy->_currentScaler > nitsMaximum)
      {
        *&v23 = nitsMaximum;
        [(CBAurora *)selfCopy rampTo:v23];
      }
    }
  }

  else
  {
    if (selfCopy->_log)
    {
      v68 = selfCopy->_log;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v67 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v67 = init_default_corebrightness_log();
      }

      v68 = v67;
    }

    oslog = v68;
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      *v65 = type;
      buf = v86;
      __os_log_helper_16_0_0(v86);
      _os_log_impl(&dword_1DE8E5000, log, v65[0], "Aurora Sampling | We're still in EDR, not processing the APCE sample", v86, 2u);
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)restoreEDRHeadroom
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->_edrHeadroomRestorePending)
  {
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
      __os_log_helper_16_0_1_8_0(v6, COERCE__INT64(self->_currentEDRHeadroomRequest));
      _os_log_impl(&dword_1DE8E5000, log, OS_LOG_TYPE_DEFAULT, "Aurora Exit | Restoring EDR headroom to %f", v6, 0xCu);
    }

    *&v2 = self->_currentEDRHeadroomRequest;
    [(CBAurora *)self sendEDRHeadroomRequest:v2];
    self->_edrHeadroomRestorePending = 0;
  }

  *MEMORY[0x1E69E9840];
}

- (void)setCurrentScaler:(float)scaler
{
  self->_currentScaler = scaler;
  if (![(CBAurora *)self isActive]&& float_equal(self->_currentScaler, 1.0) && self->_edrHeadroomRestorePending)
  {
    [(CBAurora *)self restoreEDRHeadroom];
  }
}

- (void)setCurrentEDRHeadroomRequest:(float)request
{
  self->_currentEDRHeadroomRequest = request;
  if ([(CBAurora *)self isActive]|| (LOBYTE(v3) = 0, [(CBAurora *)self isBoostingBrightness]))
  {
    v3 = !float_equal(self->_currentEDRHeadroomRequest, 1.0);
  }

  self->_edrHeadroomRestorePending = v3;
}

- (void)setIsEnabled:(BOOL)enabled
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_isEnabled != enabled)
  {
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
      if (enabled)
      {
        v3 = "YES";
      }

      else
      {
        v3 = "NO";
      }

      __os_log_helper_16_2_1_8_32(v8, v3);
      _os_log_impl(&dword_1DE8E5000, log, OS_LOG_TYPE_DEFAULT, "Aurora State | Enabled=%s", v8, 0xCu);
    }

    self->_isEnabled = enabled;
    [(CBAurora *)self evaluateEntryConditions];
  }

  *MEMORY[0x1E69E9840];
}

- (void)setDisplayIsOn:(BOOL)on
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_displayIsOn != on)
  {
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
      if (on)
      {
        v3 = "YES";
      }

      else
      {
        v3 = "NO";
      }

      __os_log_helper_16_2_1_8_32(v8, v3);
      _os_log_impl(&dword_1DE8E5000, log, OS_LOG_TYPE_DEFAULT, "Aurora Display | On=%s", v8, 0xCu);
    }

    self->_displayIsOn = on;
    [(CBAurora *)self evaluateEntryConditions];
  }

  *MEMORY[0x1E69E9840];
}

- (void)setAODIsOn:(BOOL)on
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_aodIsOn != on)
  {
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
      if (on)
      {
        v3 = "YES";
      }

      else
      {
        v3 = "NO";
      }

      __os_log_helper_16_2_1_8_32(v8, v3);
      _os_log_impl(&dword_1DE8E5000, log, OS_LOG_TYPE_DEFAULT, "Aurora AOD | On=%s", v8, 0xCu);
    }

    self->_aodIsOn = on;
    [(CBAurora *)self evaluateEntryConditions];
  }

  *MEMORY[0x1E69E9840];
}

- (void)setAutoBrightnessIsEnabled:(BOOL)enabled
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_autoBrightnessIsEnabled != enabled)
  {
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
      if (enabled)
      {
        v3 = "YES";
      }

      else
      {
        v3 = "NO";
      }

      __os_log_helper_16_2_1_8_32(v8, v3);
      _os_log_impl(&dword_1DE8E5000, log, OS_LOG_TYPE_DEFAULT, "Aurora AutoBrightness | Enabled=%s", v8, 0xCu);
    }

    self->_autoBrightnessIsEnabled = enabled;
    [(CBAurora *)self evaluateEntryConditions];
  }

  *MEMORY[0x1E69E9840];
}

- (void)setCurveLevel:(int)level
{
  v17 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v14 = a2;
  levelCopy = level;
  v12 = 1;
  if (level > 2)
  {
    if (selfCopy->_log)
    {
      v8 = selfCopy->_log;
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

      v8 = inited;
    }

    v11 = v8;
    v10 = 16;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      log = v11;
      type = v10;
      __os_log_helper_16_0_0(v9);
      _os_log_error_impl(&dword_1DE8E5000, log, type, "Aurora Curve Level | Invalid curve level - using default.", v9, 2u);
    }

    v12 = 1;
  }

  else
  {
    v12 = levelCopy;
  }

  if (v12 != selfCopy->_curveLevel)
  {
    selfCopy->_curveLevel = v12;
    if (selfCopy->_log)
    {
      v4 = selfCopy->_log;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v3 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v3 = init_default_corebrightness_log();
      }

      v4 = v3;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_4_0(v16, selfCopy->_curveLevel);
      _os_log_impl(&dword_1DE8E5000, v4, OS_LOG_TYPE_DEFAULT, "Aurora Curve Level | Curve level set to %d", v16, 8u);
    }

    [(CBAurora *)selfCopy evaluateEntryConditions];
  }

  *MEMORY[0x1E69E9840];
}

- (void)setLowPowerModeIsEnabled:(BOOL)enabled
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_lowPowerModeIsEnabled != enabled)
  {
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
      if (enabled)
      {
        v3 = "YES";
      }

      else
      {
        v3 = "NO";
      }

      __os_log_helper_16_2_1_8_32(v8, v3);
      _os_log_impl(&dword_1DE8E5000, log, OS_LOG_TYPE_DEFAULT, "Aurora LowPowerMode | Enabled=%s", v8, 0xCu);
    }

    self->_lowPowerModeIsEnabled = enabled;
    [(CBAurora *)self evaluateEntryConditions];
  }

  *MEMORY[0x1E69E9840];
}

- (void)setDominoModeIsEnabled:(BOOL)enabled
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_dominoModeIsEnabled != enabled)
  {
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
      if (enabled)
      {
        v3 = "YES";
      }

      else
      {
        v3 = "NO";
      }

      __os_log_helper_16_2_1_8_32(v8, v3);
      _os_log_impl(&dword_1DE8E5000, log, OS_LOG_TYPE_DEFAULT, "Aurora DominoMode | Enabled=%s", v8, 0xCu);
    }

    self->_dominoModeIsEnabled = enabled;
    [(CBAurora *)self evaluateEntryConditions];
  }

  *MEMORY[0x1E69E9840];
}

- (void)setAutoDimIsEnabled:(BOOL)enabled
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_autoDimIsEnabled != enabled)
  {
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
      if (enabled)
      {
        v3 = "YES";
      }

      else
      {
        v3 = "NO";
      }

      __os_log_helper_16_2_1_8_32(v8, v3);
      _os_log_impl(&dword_1DE8E5000, log, OS_LOG_TYPE_DEFAULT, "Aurora AutoDim | Enabled=%s", v8, 0xCu);
    }

    self->_autoDimIsEnabled = enabled;
    [(CBAurora *)self evaluateEntryConditions];
  }

  *MEMORY[0x1E69E9840];
}

- (void)setAutoBrightnessIsAvailable:(BOOL)available
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_autoBrightnessIsAvailable != available)
  {
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
      if (available)
      {
        v3 = "YES";
      }

      else
      {
        v3 = "NO";
      }

      __os_log_helper_16_2_1_8_32(v8, v3);
      _os_log_impl(&dword_1DE8E5000, log, OS_LOG_TYPE_DEFAULT, "Aurora AutoBrightnessAvailable | Available=%s", v8, 0xCu);
    }

    self->_autoBrightnessIsAvailable = available;
    [(CBAurora *)self evaluateEntryConditions];
  }

  *MEMORY[0x1E69E9840];
}

- (void)setCLTMCap:(float)cap
{
  v8 = *MEMORY[0x1E69E9840];
  if (!float_equal(self->_cpms.cltmCap, cap))
  {
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
      __os_log_helper_16_0_1_8_0(v7, COERCE__INT64(cap));
      _os_log_impl(&dword_1DE8E5000, log, OS_LOG_TYPE_DEFAULT, "Aurora CPMS | CLTM.Cap=%f", v7, 0xCu);
    }

    self->_cpms.cltmCap = cap;
    self->_cltmCap = cap;
    if (self->_supportCLTMAwareAurora)
    {
      [(CBAurora *)self updateAPCENitsLUT];
    }

    [(CBAurora *)self evaluateEntryConditions];
  }

  *MEMORY[0x1E69E9840];
}

- (void)setUPOCap:(float)cap
{
  v8 = *MEMORY[0x1E69E9840];
  if (!float_equal(self->_cpms.upoCap, cap))
  {
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
      __os_log_helper_16_0_1_8_0(v7, COERCE__INT64(cap));
      _os_log_impl(&dword_1DE8E5000, log, OS_LOG_TYPE_DEFAULT, "Aurora CPMS | UPO.Cap=%f", v7, 0xCu);
    }

    self->_cpms.upoCap = cap;
    self->_upoCap = cap;
    [(CBAurora *)self evaluateEntryConditions];
  }

  *MEMORY[0x1E69E9840];
}

- (void)setCLTMActivationThreshold:(float)threshold
{
  self->_cpms.cltmActivationThreshold = threshold;
  v3 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v4 = self->_cpms.cltmActivationThreshold;
  v5 = [v3 initWithFloat:v4];
  [(CBDisplayModule *)self->_displayModule setProperty:v5 forKey:@"AuroraCLTMActivationThreshold"];
  MEMORY[0x1E69E5920](v5);
}

- (void)setRampUpTimeSecondsPerStop:(float)stop
{
  self->_rampUpTimeSecondsPerStop = stop;
  v3 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v4 = self->_rampUpTimeSecondsPerStop;
  v5 = [v3 initWithFloat:v4];
  [(CBDisplayModule *)self->_displayModule setProperty:v5 forKey:@"AuroraRampUpTimeSecondsPerStop"];
  MEMORY[0x1E69E5920](v5);
}

- (void)setRampDownTimeSecondsPerStop:(float)stop
{
  self->_rampDownTimeSecondsPerStop = stop;
  v3 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v4 = self->_rampDownTimeSecondsPerStop;
  v5 = [v3 initWithFloat:v4];
  [(CBDisplayModule *)self->_displayModule setProperty:v5 forKey:@"AuroraRampDownTimeSecondsPerStop"];
  MEMORY[0x1E69E5920](v5);
}

- (float)calculateLuxTargetScaler:(float)scaler
{
  [(CBAurora *)self luxActivationThreshold];
  v7 = v3;
  minimumScaler = self->_minimumScaler;
  [(CBAurora *)self luxSaturationThreshold];
  *&v5 = linear_interpolation(scaler, v7, minimumScaler, v4, self->_maximumScaler);
  [(CBAurora *)self clampScaler:v5];
  return result;
}

- (float)calculateCurrentLuxTargetScaler
{
  *&v2 = self->_lux;
  [(CBAurora *)self calculateLuxTargetScaler:v2, a2, self];
  return result;
}

- (float)calculateRampTargetForNits:(float)nits andAPCE:(float)e withTapPointAPCEMinimum:(float)minimum andTapPointAPCEMaximum:(float)maximum
{
  selfCopy = self;
  v12 = a2;
  nitsCopy = nits;
  eCopy = e;
  minimumCopy = minimum;
  maximumCopy = maximum;
  if (e < minimum)
  {
    return nitsCopy;
  }

  if (eCopy > maximumCopy)
  {
    return selfCopy->_nitsMinimum;
  }

  v7 = linear_interpolation(eCopy, maximumCopy, selfCopy->_nitsMinimum, minimumCopy, selfCopy->_nitsMaximum);
  return *std::min[abi:de200100]<float>(&nitsCopy, &v7);
}

- (float)calculateCurrentRampUpTargetForAPCE:(float)e
{
  [(CBAurora *)self calculateCurrentLuxTargetScaler];
  [(CBAurora *)self convertScalerToNits:?];
  [CBAurora calculateRampUpTargetForNits:"calculateRampUpTargetForNits:andAPCE:" andAPCE:?];
  return result;
}

- (float)calculateCurrentRampDownTargetForAPCE:(float)e
{
  [(CBAurora *)self calculateCurrentLuxTargetScaler];
  [(CBAurora *)self convertScalerToNits:?];
  [CBAurora calculateRampDownTargetForNits:"calculateRampDownTargetForNits:andAPCE:" andAPCE:?];
  return result;
}

- (void)sendEDRHeadroomRequest:(float)request
{
  v15 = *MEMORY[0x1E69E9840];
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
    __os_log_helper_16_0_2_8_0_8_0(v14, COERCE__INT64(request), COERCE__INT64(self->_edrDurationPerStop));
    _os_log_impl(&dword_1DE8E5000, log, OS_LOG_TYPE_DEFAULT, "Aurora EDR | Sending headroom request with headroom=%f and duration per stop = %f", v14, 0x16u);
  }

  v3 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v4 = request;
  v11 = [v3 initWithFloat:v4];
  if (v11)
  {
    v7 = objc_alloc(MEMORY[0x1E695DF20]);
    *&v5 = self->_edrDurationPerStop;
    v10 = [v7 initWithObjectsAndKeys:{v11, *MEMORY[0x1E6979618], *MEMORY[0x1E695E4D0], @"AuroraEDRHeadroomRequest", objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v5), @"EDRSecondsPerStop", 0}];
    *&v6 = MEMORY[0x1E69E5920](v11).n128_u64[0];
    if (v10)
    {
      [(CBDisplayModule *)self->_displayModule setProperty:v10 forKey:@"EDRHeadroomRequest", v6];
      MEMORY[0x1E69E5920](v10);
    }
  }

  *MEMORY[0x1E69E9840];
}

- (void)setPropertyForKey:(id)key withValue:(id)value
{
  v56 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v49 = a2;
  keyCopy = key;
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([keyCopy isEqualToString:@"AuroraEnabled"])
    {
      -[CBAurora setIsEnabled:](selfCopy, "setIsEnabled:", [valueCopy BOOLValue]);
    }

    if ([keyCopy isEqualToString:@"AuroraFactor"])
    {
      [valueCopy floatValue];
      [(CBAurora *)selfCopy setCurrentScaler:?];
    }

    if ([keyCopy isEqualToString:@"AuroraRampInProgress"])
    {
      -[CBAurora setRampInProgress:](selfCopy, "setRampInProgress:", [valueCopy BOOLValue]);
    }

    else if ([keyCopy isEqualToString:@"EcoMode"])
    {
      -[CBAurora setLowPowerModeIsEnabled:](selfCopy, "setLowPowerModeIsEnabled:", [valueCopy BOOLValue]);
    }

    else if ([keyCopy isEqualToString:@"DominoStateUpdate"])
    {
      -[CBAurora setDominoModeIsEnabled:](selfCopy, "setDominoModeIsEnabled:", [valueCopy BOOLValue]);
    }

    else if ([keyCopy isEqualToString:@"AmbientAdaptiveDimming"])
    {
      if (valueCopy)
      {
        TypeID = CFDictionaryGetTypeID();
        if (TypeID == CFGetTypeID(valueCopy))
        {
          valuePtr = 0;
          Value = CFDictionaryGetValue(valueCopy, @"AmbientAdaptiveDimmingEnable");
          if (Value)
          {
            v30 = CFNumberGetTypeID();
            if (v30 == CFGetTypeID(Value))
            {
              CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
            }
          }

          v44 = 0;
          v43 = CFDictionaryGetValue(valueCopy, @"AmbientAdaptiveDimmingPeriod");
          if (v43)
          {
            v29 = CFNumberGetTypeID();
            if (v29 == CFGetTypeID(v43))
            {
              CFNumberGetValue(v43, kCFNumberFloatType, &v44);
            }
          }

          LODWORD(v4) = v44;
          [(CBAurora *)selfCopy setAutoDimRampLength:v4];
          [(CBAurora *)selfCopy setAutoDimIsEnabled:valuePtr != 0];
        }
      }
    }

    else if ([keyCopy isEqualToString:@"CBDisplayPresetDisableAutoBrightness"])
    {
      -[CBAurora setAutoBrightnessIsAvailable:](selfCopy, "setAutoBrightnessIsAvailable:", [valueCopy BOOLValue] ^ 1);
    }

    else if ([keyCopy isEqualToString:@"DisplayOn"])
    {
      -[CBAurora setDisplayIsOn:](selfCopy, "setDisplayIsOn:", [valueCopy BOOLValue]);
      if (![valueCopy BOOLValue])
      {
        [(CBAurora *)selfCopy setAutoDimRampLength:0.0];
        [(CBAurora *)selfCopy setAutoDimIsEnabled:0];
      }
    }

    else if ([keyCopy isEqualToString:@"DisplayBrightnessAuto"])
    {
      -[CBAurora setAutoBrightnessIsEnabled:](selfCopy, "setAutoBrightnessIsEnabled:", [valueCopy BOOLValue]);
    }

    else if ([keyCopy isEqualToString:@"TrustedLux"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"AggregatedLux"))
    {
      [valueCopy floatValue];
      [(CBAurora *)selfCopy setLux:?];
    }

    else if ([keyCopy isEqualToString:@"CPMS.CLTM.Cap"])
    {
      [valueCopy floatValue];
      [(CBAurora *)selfCopy setCLTMCap:?];
    }

    else if ([keyCopy isEqualToString:@"CPMS.UPO.Cap"])
    {
      [valueCopy floatValue];
      [(CBAurora *)selfCopy setUPOCap:?];
    }

    else if ([keyCopy isEqualToString:@"AuroraGracePeriodDuration"])
    {
      if (selfCopy->_log)
      {
        log = selfCopy->_log;
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

      v42 = log;
      v41 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        [valueCopy floatValue];
        __os_log_helper_16_0_1_8_0(v55, COERCE__INT64(v5));
        _os_log_impl(&dword_1DE8E5000, v42, v41, "Aurora Override | GracePeriod.Duration=%f", v55, 0xCu);
      }

      [valueCopy floatValue];
      selfCopy->_gracePeriod.length = v6;
      [(CBAurora *)selfCopy evaluateEntryConditions];
    }

    else if ([keyCopy isEqualToString:@"AuroraEnergyBudget"])
    {
      if (selfCopy->_log)
      {
        v26 = selfCopy->_log;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v25 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v25 = init_default_corebrightness_log();
        }

        v26 = v25;
      }

      v40 = v26;
      v39 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        [valueCopy floatValue];
        __os_log_helper_16_0_1_8_0(v54, COERCE__INT64(v7));
        _os_log_impl(&dword_1DE8E5000, v40, v39, "Aurora Override | EnergyBudget=%f", v54, 0xCu);
      }

      [valueCopy floatValue];
      selfCopy->_maximumEnergyConsumption = v8;
    }

    else if ([keyCopy isEqualToString:@"AuroraRampUpTimeSecondsPerStopOverride"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (selfCopy->_log)
        {
          v24 = selfCopy->_log;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v23 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v23 = init_default_corebrightness_log();
          }

          v24 = v23;
        }

        v38 = v24;
        v37 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          [valueCopy floatValue];
          __os_log_helper_16_0_1_8_0(v53, COERCE__INT64(v9));
          _os_log_impl(&dword_1DE8E5000, v38, v37, "Aurora Override | RampUpTimeSecondsPerStop=%f", v53, 0xCu);
        }

        [valueCopy floatValue];
        if (v10 >= 0.0)
        {
          [valueCopy floatValue];
          [(CBAurora *)selfCopy setRampUpTimeSecondsPerStop:?];
        }
      }
    }

    else if ([keyCopy isEqualToString:@"AuroraRampDownTimeSecondsPerStopOverride"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (selfCopy->_log)
        {
          v22 = selfCopy->_log;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v21 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v21 = init_default_corebrightness_log();
          }

          v22 = v21;
        }

        v36 = v22;
        v35 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          [valueCopy floatValue];
          __os_log_helper_16_0_1_8_0(v52, COERCE__INT64(v11));
          _os_log_impl(&dword_1DE8E5000, v36, v35, "Aurora Override | RampDownTimeSecondsPerStop=%f", v52, 0xCu);
        }

        [valueCopy floatValue];
        if (v12 >= 0.0)
        {
          [valueCopy floatValue];
          [(CBAurora *)selfCopy setRampDownTimeSecondsPerStop:?];
        }
      }
    }

    else if ([keyCopy isEqualToString:@"BrightnessCurveLevel"])
    {
      if (CBU_IsWatch())
      {
        -[CBAurora setCurveLevel:](selfCopy, "setCurveLevel:", [valueCopy intValue]);
      }

      else
      {
        if (selfCopy->_log)
        {
          v20 = selfCopy->_log;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v19 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v19 = init_default_corebrightness_log();
          }

          v20 = v19;
        }

        v34 = v20;
        v33 = 2;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v17 = v34;
          v18 = v33;
          __os_log_helper_16_0_0(v32);
          _os_log_debug_impl(&dword_1DE8E5000, v17, v18, "Aurora Curve Level | Ignoring curve level on iOS", v32, 2u);
        }
      }
    }

    else if ([keyCopy isEqualToString:@"FrameInfoLoggingEnabled"])
    {
      -[CBFrameStats enableFrameInfoLogging:](selfCopy->_frameStats, "enableFrameInfoLogging:", [valueCopy BOOLValue]);
    }

    else if ([keyCopy isEqualToString:@"AuroraEDRDurationPerStop"])
    {
      if (selfCopy->_log)
      {
        v16 = selfCopy->_log;
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

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        [valueCopy floatValue];
        __os_log_helper_16_0_1_8_0(v51, COERCE__INT64(v13));
        _os_log_impl(&dword_1DE8E5000, v16, OS_LOG_TYPE_DEFAULT, "Aurora Override | setting CBAuroraEDRDurationPerStop = %f", v51, 0xCu);
      }

      [valueCopy floatValue];
      selfCopy->_edrDurationPerStop = v14;
    }
  }

  *MEMORY[0x1E69E9840];
}

- (id)copyPropertyForKey:(id)key
{
  v6 = 0;
  if ([key isEqualToString:@"DisplayNitsMaxAurora"])
  {
    v3 = objc_alloc(MEMORY[0x1E696AD98]);
    *&v4 = self->_nitsMaximum;
    return [v3 initWithFloat:v4];
  }

  return v6;
}

- (void)stop
{
  if (self->_isMonitoring)
  {
    [(CBAurora *)self stopMonitoring];
  }
}

@end