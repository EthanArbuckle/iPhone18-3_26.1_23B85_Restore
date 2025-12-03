@interface HMIVideoAnalyzerScheduler
+ (id)sharedInstance;
- (BOOL)_shouldSkipLogState;
- (HMIVideoAnalyzerScheduler)init;
- (HMIVideoAnalyzerScheduler)initWithTimer:(id)timer;
- (NSArray)analyzerConfigurations;
- (NSArray)analyzerStates;
- (NSArray)analyzers;
- (id)analyzerWithConfiguration:(id)configuration block:(id)block;
- (id)reducedConfiguration:(id)configuration;
- (id)reducedConfiguration:(id)configuration analyzers:(id)analyzers;
- (int64_t)_getPeakPowerPressureLevel;
- (void)_compactInternalAnalyzers;
- (void)_logState;
- (void)_updateAnalyzer:(id)analyzer withIndex:(unint64_t)index;
- (void)registerAnalyzer:(id)analyzer;
- (void)systemResourceUsageDidUpdate:(int64_t)update maxNumberOfAnalyzers:(unint64_t)analyzers maxAnalysisFPS:(float)s;
- (void)timerDidFire:(id)fire;
@end

@implementation HMIVideoAnalyzerScheduler

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__HMIVideoAnalyzerScheduler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_1 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1, block);
  }

  v2 = sharedInstance_instance;

  return v2;
}

uint64_t __43__HMIVideoAnalyzerScheduler_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_instance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (HMIVideoAnalyzerScheduler)init
{
  v3 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:28 options:1.0];
  v4 = [(HMIVideoAnalyzerScheduler *)self initWithTimer:v3];

  return v4;
}

- (HMIVideoAnalyzerScheduler)initWithTimer:(id)timer
{
  timerCopy = timer;
  v22.receiver = self;
  v22.super_class = HMIVideoAnalyzerScheduler;
  v6 = [(HMIVideoAnalyzerScheduler *)&v22 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_20;
  }

  v6->_lock._os_unfair_lock_opaque = 0;
  v6->_registerLock._os_unfair_lock_opaque = 0;
  objc_storeStrong(&v6->_tick, timer);
  [(HMFTimer *)v7->_tick setDelegate:v7];
  weakObjectsPointerArray = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
  internalAnalyzers = v7->_internalAnalyzers;
  v7->_internalAnalyzers = weakObjectsPointerArray;

  v10 = objc_alloc_init(HMISystemResourceUsageMonitor);
  usageMonitor = v7->_usageMonitor;
  v7->_usageMonitor = v10;

  [(HMISystemResourceUsageMonitor *)v7->_usageMonitor setDelegate:v7];
  [(HMISystemResourceUsageMonitor *)v7->_usageMonitor start];
  v7->_ignoreThermalAndSystemResourceUsageLevel = 0;
  if (+[HMIPreference isProductTypeB620])
  {
    v12 = 3;
  }

  else if (+[HMIPreference isAudioAccessory])
  {
    v12 = 2;
  }

  else
  {
    v12 = 5;
  }

  v7->_maxH264VideoDecoders = v12;
  v13 = +[HMIPreference isAudioAccessory];
  v14 = 4;
  if (v13)
  {
    v14 = 2;
  }

  v7->_maxH264VideoEncoders = v14;
  v7->_maxH265VideoEncoders = 0;
  v15 = +[HMIPreference sharedInstance];
  if ([v15 BOOLPreferenceForKey:@"useHEVC" defaultValue:1])
  {
    if (+[HMIPreference isProductTypeJ305](HMIPreference, "isProductTypeJ305") || +[HMIPreference isProductTypeJ105])
    {
    }

    else
    {
      v21 = +[HMIPreference isProductTypeJ255];

      if (!v21)
      {
        goto LABEL_15;
      }
    }

    v7->_maxH265VideoEncoders = v7->_maxH264VideoEncoders;
    v7->_maxH264VideoEncoders = 0;
  }

  else
  {
  }

LABEL_15:
  v16 = +[HMIPreference sharedInstance];
  v17 = [v16 numberPreferenceForKey:@"maxH265Encoders"];

  if (v17)
  {
    v7->_maxH265VideoEncoders = [v17 unsignedIntegerValue];
  }

  v18 = +[HMIPreference sharedInstance];
  v19 = [v18 numberPreferenceForKey:@"maxH264Encoders"];

  if (v19)
  {
    v7->_maxH264VideoEncoders = [v19 unsignedIntegerValue];
  }

LABEL_20:
  return v7;
}

- (void)registerAnalyzer:(id)analyzer
{
  analyzerCopy = analyzer;
  os_unfair_lock_lock_with_options();
  [(NSPointerArray *)self->_internalAnalyzers hmf_addObject:analyzerCopy];
  [(HMFTimer *)self->_tick resume];
  os_unfair_lock_unlock(&self->_lock);
}

- (id)analyzerWithConfiguration:(id)configuration block:(id)block
{
  configurationCopy = configuration;
  blockCopy = block;
  os_unfair_lock_lock_with_options();
  v8 = [(HMIVideoAnalyzerScheduler *)self reducedConfiguration:configurationCopy];

  v9 = blockCopy[2](blockCopy, v8);
  [(HMIVideoAnalyzerScheduler *)self registerAnalyzer:v9];
  os_unfair_lock_unlock(&self->_registerLock);

  return v9;
}

- (NSArray)analyzerConfigurations
{
  v3 = objc_autoreleasePoolPush();
  analyzers = [(HMIVideoAnalyzerScheduler *)self analyzers];
  v5 = [analyzers na_map:&__block_literal_global_26];

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (NSArray)analyzerStates
{
  v3 = objc_autoreleasePoolPush();
  analyzers = [(HMIVideoAnalyzerScheduler *)self analyzers];
  v5 = [analyzers na_map:&__block_literal_global_52];

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (id)reducedConfiguration:(id)configuration
{
  configurationCopy = configuration;
  analyzers = [(HMIVideoAnalyzerScheduler *)self analyzers];
  v6 = [(HMIVideoAnalyzerScheduler *)self reducedConfiguration:configurationCopy analyzers:analyzers];

  return v6;
}

- (id)reducedConfiguration:(id)configuration analyzers:(id)analyzers
{
  v61 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  analyzersCopy = analyzers;
  if ([configurationCopy allowReducedConfiguration])
  {
    v56 = 0;
    v57 = &v56;
    v58 = 0x2020000000;
    v59 = 0;
    v52 = 0;
    v53 = &v52;
    v54 = 0x2020000000;
    v55 = 0;
    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v51 = 0;
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __60__HMIVideoAnalyzerScheduler_reducedConfiguration_analyzers___block_invoke;
    v47[3] = &unk_278754F50;
    v47[4] = &v56;
    v47[5] = &v52;
    v47[6] = &v48;
    [analyzersCopy na_each:v47];
    v8 = [configurationCopy copy];
    if ([v8 initialDecodeMode])
    {
      v9 = v57[3];
      if (v9 >= [(HMIVideoAnalyzerScheduler *)self maxH264VideoDecoders])
      {
        v10 = objc_autoreleasePoolPush();
        selfCopy = self;
        v12 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = HMFGetLogIdentifier();
          v14 = v57[3];
          *buf = 138543618;
          *&buf[4] = v13;
          *&buf[12] = 2048;
          *&buf[14] = v14;
          _os_log_impl(&dword_22D12F000, v12, OS_LOG_TYPE_INFO, "%{public}@Cannot decode additional streams using H.264, %lu H.264 decoders are already being used.", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v10);
        [v8 setInitialDecodeMode:0];
      }
    }

    if ([v8 initialDecodeMode])
    {
      if ([v8 transcode])
      {
        v15 = v49[3];
        if (v15 >= [(HMIVideoAnalyzerScheduler *)self maxH265VideoEncoders])
        {
          v16 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v18 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            v19 = HMFGetLogIdentifier();
            v20 = v49[3];
            *buf = 138543618;
            *&buf[4] = v19;
            *&buf[12] = 2048;
            *&buf[14] = v20;
            _os_log_impl(&dword_22D12F000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Cannot transcode additional streams using H.265, %lu H.265 encoders are already being used, trying with H.264.", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v16);
          v21 = v53[3];
          if (v21 >= [(HMIVideoAnalyzerScheduler *)selfCopy2 maxH264VideoEncoders])
          {
            v22 = objc_autoreleasePoolPush();
            v23 = selfCopy2;
            v24 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              v25 = HMFGetLogIdentifier();
              v26 = v53[3];
              *buf = 138543618;
              *&buf[4] = v25;
              *&buf[12] = 2048;
              *&buf[14] = v26;
              _os_log_impl(&dword_22D12F000, v24, OS_LOG_TYPE_INFO, "%{public}@Cannot transcode additional streams, %lu H.264 encoders are already being used.", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v22);
            [v8 setTranscode:0];
          }

          else
          {
            ++v53[3];
            [v8 setTranscodeCodecType:1635148593];
          }
        }

        else
        {
          ++v49[3];
          [v8 setTranscodeCodecType:1752589105];
        }
      }

      if (v8)
      {
        [v8 timelapseInterval];
        if ((v45 & 0x100000000) != 0)
        {
          v27 = v49[3];
          if (v27 >= [(HMIVideoAnalyzerScheduler *)self maxH265VideoEncoders])
          {
            v33 = objc_autoreleasePoolPush();
            selfCopy3 = self;
            v35 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
            {
              v36 = HMFGetLogIdentifier();
              v37 = v49[3];
              *buf = 138543618;
              *&buf[4] = v36;
              *&buf[12] = 2048;
              *&buf[14] = v37;
              _os_log_impl(&dword_22D12F000, v35, OS_LOG_TYPE_DEBUG, "%{public}@Cannot encode timelapse using H.265, %lu H.265 encoders are already being used, trying with H.264.", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v33);
            v38 = v53[3];
            if (v38 >= [(HMIVideoAnalyzerScheduler *)selfCopy3 maxH264VideoEncoders])
            {
              v39 = objc_autoreleasePoolPush();
              v40 = selfCopy3;
              v41 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
              {
                v42 = HMFGetLogIdentifier();
                v43 = v53[3];
                *buf = 138543618;
                *&buf[4] = v42;
                *&buf[12] = 2048;
                *&buf[14] = v43;
                _os_log_impl(&dword_22D12F000, v41, OS_LOG_TYPE_INFO, "%{public}@Cannot encode timelapse, %lu H.264 encoders are already being used.", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v39);
              *buf = *MEMORY[0x277CC0898];
              *&buf[16] = *(MEMORY[0x277CC0898] + 16);
              [v8 setTimelapseInterval:buf];
            }

            else
            {
              ++v53[3];
              [v8 setTimelapseCodecType:1635148593];
            }
          }

          else
          {
            ++v49[3];
            [v8 setTimelapseCodecType:1752589105];
          }
        }
      }

      else
      {
        v44 = 0;
        v45 = 0;
        v46 = 0;
      }
    }

    else
    {
      [v8 setTranscode:0];
      *buf = *MEMORY[0x277CC0898];
      *&buf[16] = *(MEMORY[0x277CC0898] + 16);
      [v8 setTimelapseInterval:buf];
    }

    if (![(HMIVideoAnalyzerScheduler *)self ignoreThermalAndSystemResourceUsageLevel:v44])
    {
      v28 = +[HMIPreference sharedInstance];
      [v28 maxAnalysisFPSForSystemResourceUsageLevel:self->_usageLevel];
      v30 = v29;

      [configurationCopy analysisFPS];
      if (v30 < v31)
      {
        v31 = v30;
      }

      [v8 setAnalysisFPS:v31];
    }

    _Block_object_dispose(&v48, 8);
    _Block_object_dispose(&v52, 8);
    _Block_object_dispose(&v56, 8);
  }

  else
  {
    v8 = configurationCopy;
  }

  return v8;
}

void __60__HMIVideoAnalyzerScheduler_reducedConfiguration_analyzers___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if ([v3 decodeMode])
  {
    ++*(*(a1[4] + 8) + 24);
  }

  v4 = [v3 configuration];
  v5 = [v4 transcode];

  if (v5)
  {
    v6 = [v3 configuration];
    v7 = [v6 transcodeCodecType];

    if (v7 == 1635148593)
    {
      v8 = 5;
    }

    else
    {
      v9 = [v3 configuration];
      v10 = [v9 transcodeCodecType];

      if (v10 != 1752589105)
      {
        goto LABEL_9;
      }

      v8 = 6;
    }

    ++*(*(a1[v8] + 8) + 24);
  }

LABEL_9:
  v11 = [v3 configuration];
  v12 = v11;
  if (v11)
  {
    [v11 timelapseInterval];

    if (v18)
    {
      v13 = [v3 configuration];
      v14 = [v13 timelapseCodecType];

      if (v14 == 1635148593)
      {
        v15 = a1[5];
LABEL_16:
        ++*(*(v15 + 8) + 24);
        goto LABEL_17;
      }

      v16 = [v3 configuration];
      v17 = [v16 timelapseCodecType];

      if (v17 == 1752589105)
      {
        v15 = a1[6];
        goto LABEL_16;
      }
    }
  }

  else
  {
  }

LABEL_17:
}

- (void)_compactInternalAnalyzers
{
  [(NSPointerArray *)self->_internalAnalyzers addPointer:0];
  internalAnalyzers = self->_internalAnalyzers;

  [(NSPointerArray *)internalAnalyzers compact];
}

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  v5 = objc_autoreleasePoolPush();
  os_unfair_lock_lock_with_options();
  [(HMIVideoAnalyzerScheduler *)self _compactInternalAnalyzers];
  if (![(NSPointerArray *)self->_internalAnalyzers count])
  {
    [(HMFTimer *)self->_tick suspend];
  }

  os_unfair_lock_unlock(&self->_lock);
  analyzers = [(HMIVideoAnalyzerScheduler *)self analyzers];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__HMIVideoAnalyzerScheduler_timerDidFire___block_invoke_3;
  v7[3] = &unk_278754FA0;
  v7[4] = self;
  [analyzers enumerateObjectsUsingBlock:v7];
  [(HMIVideoAnalyzerScheduler *)self _logState];

  objc_autoreleasePoolPop(v5);
}

- (void)systemResourceUsageDidUpdate:(int64_t)update maxNumberOfAnalyzers:(unint64_t)analyzers maxAnalysisFPS:(float)s
{
  v24 = *MEMORY[0x277D85DE8];
  if (![(HMIVideoAnalyzerScheduler *)self ignoreThermalAndSystemResourceUsageLevel])
  {
    self->_maxH264VideoDecoders = analyzers;
    if (self->_usageLevel != update)
    {
      self->_usageLevel = update;
      maxH264VideoDecoders = [(HMIVideoAnalyzerScheduler *)self maxH264VideoDecoders];
      if (update > 1)
      {
        if (update != 3)
        {
          return;
        }

        v14 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = HMFGetLogIdentifier();
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v16;
          _os_log_impl(&dword_22D12F000, v15, OS_LOG_TYPE_INFO, "%{public}@Enforcing bypass restriction on ongoing analysis sessions", &buf, 0xCu);
        }

        objc_autoreleasePoolPop(v14);
        *&buf = 0;
        *(&buf + 1) = &buf;
        v22 = 0x2020000000;
        v23 = 0;
        os_unfair_lock_lock_with_options();
        analyzers = [(HMIVideoAnalyzerScheduler *)selfCopy2 analyzers];
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __94__HMIVideoAnalyzerScheduler_systemResourceUsageDidUpdate_maxNumberOfAnalyzers_maxAnalysisFPS___block_invoke_55;
        v18[3] = &unk_278754FC8;
        v18[4] = &buf;
        v18[5] = maxH264VideoDecoders;
        [analyzers na_each:v18];
      }

      else
      {
        v9 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v11 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = HMFGetLogIdentifier();
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v12;
          _os_log_impl(&dword_22D12F000, v11, OS_LOG_TYPE_INFO, "%{public}@Lifting bypass restriction on ongoing analysis sessions", &buf, 0xCu);
        }

        objc_autoreleasePoolPop(v9);
        *&buf = 0;
        *(&buf + 1) = &buf;
        v22 = 0x2020000000;
        v23 = 0;
        os_unfair_lock_lock_with_options();
        analyzers2 = [(HMIVideoAnalyzerScheduler *)selfCopy2 analyzers];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __94__HMIVideoAnalyzerScheduler_systemResourceUsageDidUpdate_maxNumberOfAnalyzers_maxAnalysisFPS___block_invoke;
        v20[3] = &unk_278754F78;
        v20[4] = &buf;
        [analyzers2 na_each:v20];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __94__HMIVideoAnalyzerScheduler_systemResourceUsageDidUpdate_maxNumberOfAnalyzers_maxAnalysisFPS___block_invoke_2;
        v19[3] = &unk_278754FC8;
        v19[4] = &buf;
        v19[5] = maxH264VideoDecoders;
        [analyzers2 na_each:v19];
      }

      os_unfair_lock_unlock(&selfCopy2->_registerLock);
      _Block_object_dispose(&buf, 8);
    }
  }
}

uint64_t __94__HMIVideoAnalyzerScheduler_systemResourceUsageDidUpdate_maxNumberOfAnalyzers_maxAnalysisFPS___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 decodeMode];
  if (result)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

uint64_t __94__HMIVideoAnalyzerScheduler_systemResourceUsageDidUpdate_maxNumberOfAnalyzers_maxAnalysisFPS___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(*(a1 + 32) + 8) + 24) < *(a1 + 40))
  {
    v6 = v3;
    v3 = [v3 decodeMode];
    v4 = v6;
    if (!v3)
    {
      v3 = [v6 setDecodeMode:2];
      v4 = v6;
      ++*(*(*(a1 + 32) + 8) + 24);
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

void __94__HMIVideoAnalyzerScheduler_systemResourceUsageDidUpdate_maxNumberOfAnalyzers_maxAnalysisFPS___block_invoke_55(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 decodeMode])
  {
    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 24);
    if (v4 >= *(a1 + 40))
    {
      [v5 setDecodeMode:0];
    }

    else
    {
      *(v3 + 24) = v4 + 1;
    }
  }
}

- (void)_updateAnalyzer:(id)analyzer withIndex:(unint64_t)index
{
  analyzerCopy = analyzer;
  if ([analyzerCopy monitored])
  {
    [analyzerCopy delay];
    if (v5 <= 16.0)
    {
      v7 = 0.25;
      v8 = 1.0;
      if (v5 > 2.0)
      {
        v8 = 0.5;
      }

      if (v5 <= 4.0)
      {
        v7 = v8;
      }

      if (v5 <= 8.0)
      {
        v6 = v7;
      }

      else
      {
        v6 = 0.125;
      }
    }

    else
    {
      v6 = 1.0;
      if ([analyzerCopy decodeMode])
      {
        [analyzerCopy setDecodeMode:0];
      }
    }

    if (![(HMIVideoAnalyzerScheduler *)self ignoreThermalAndSystemResourceUsageLevel])
    {
      [(HMISystemResourceUsageMonitor *)self->_usageMonitor maxAnalysisFPS];
      v10 = v9;
      if (v6 > v10)
      {
        v6 = v10;
      }
    }

    [analyzerCopy setAnalysisFPS:v6];
  }
}

- (BOOL)_shouldSkipLogState
{
  logStateCount = [(HMIVideoAnalyzerScheduler *)self logStateCount];
  [(HMIVideoAnalyzerScheduler *)self setLogStateCount:[(HMIVideoAnalyzerScheduler *)self logStateCount]+ 1];
  v4 = +[HMIPreference sharedInstance];
  v5 = [v4 numberPreferenceForKey:@"schedulerStateLogFrequency" defaultValue:&unk_284075228];
  integerValue = [v5 integerValue];

  return logStateCount % integerValue != 0;
}

- (int64_t)_getPeakPowerPressureLevel
{
  if (!+[HMIPreference isProductTypeJ255])
  {
    return -1;
  }

  v2 = +[HMIPeakPowerPressureMonitor sharedInstance];
  peakPowerPressureLevel = [v2 peakPowerPressureLevel];

  return peakPowerPressureLevel;
}

- (void)_logState
{
  v96 = *MEMORY[0x277D85DE8];
  if (![(HMIVideoAnalyzerScheduler *)self _shouldSkipLogState])
  {
    usageLevel = self->_usageLevel;
    if (usageLevel > 3)
    {
      v4 = @"Undefined";
    }

    else
    {
      v4 = off_278755058[usageLevel];
    }

    v80 = 0;
    v81 = 0;
    v78 = 0;
    v79 = 0;
    v76 = 0;
    v77 = 0;
    HMIGetMemoryFootprint(&v81, &v80);
    v5 = +[HMIPreference sharedInstance];
    v6 = [v5 BOOLPreferenceForKey:@"logOtherProcessMemorySchedulerState" defaultValue:0];

    if (v6)
    {
      v7 = HMIGetProcessID(@"mediaserverd");
      HMIGetMemoryFootprintForProcessID(v7, &v77, &v76);
      v8 = HMIGetProcessID(@"homed");
      HMIGetMemoryFootprintForProcessID(v8, &v79, &v78);
    }

    v9 = objc_autoreleasePoolPush();
    analyzers = [(HMIVideoAnalyzerScheduler *)self analyzers];
    firstObject = [analyzers firstObject];

    if (firstObject)
    {
      v71 = v9;
      [analyzers na_each:&__block_literal_global_78];
      v12 = +[HMIPreference sharedInstance];
      v13 = [v12 BOOLPreferenceForKey:@"logHumanFriendlySchedulerState" defaultValue:0];

      v14 = 0x278751000;
      v72 = analyzers;
      if (v13)
      {
        v15 = [MEMORY[0x277CCAB68] stringWithString:@"Scheduler state: "];
        [v15 appendFormat:@"usage: %@", v4];
        v16 = +[HMIPreference sharedInstance];
        [v16 isIdle];
        v17 = HMFBooleanToString();
        [v15 appendFormat:@", idle: %@", v17];

        processInfo = [MEMORY[0x277CCAC38] processInfo];
        processName = [processInfo processName];
        [v15 appendFormat:@", %@: (%llu MB | %llu MB)", processName, v81 >> 20, v80 >> 20];

        v20 = +[HMIPreference sharedInstance];
        LODWORD(processName) = [v20 BOOLPreferenceForKey:@"logOtherProcessMemorySchedulerState" defaultValue:0];

        if (processName)
        {
          [v15 appendFormat:@", mediaserverd: (%llu MB | %llu MB)", v77 >> 20, v76 >> 20];
          [v15 appendFormat:@", homed: (%llu MB | %llu MB)", v79 >> 20, v78 >> 20];
        }

        v21 = +[HMIThermalMonitor sharedInstance];
        [v15 appendFormat:@", thermalLevel: %lu", objc_msgSend(v21, "thermalLevel")];

        [v15 appendFormat:@", peakPowerPressureLevel: %lu", -[HMIVideoAnalyzerScheduler _getPeakPowerPressureLevel](self, "_getPeakPowerPressureLevel")];
        v22 = HMIIsDebug();
        v23 = @"Release";
        if (v22)
        {
          v23 = @"Debug";
        }

        [v15 appendFormat:@", build: %@", v23];
        [v15 appendFormat:@", maxConcurrentAnalyzers: %lu", -[HMIVideoAnalyzerScheduler maxH264VideoDecoders](self, "maxH264VideoDecoders")];
        v24 = objc_autoreleasePoolPush();
        selfCopy = self;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543618;
          v93 = v27;
          v94 = 2112;
          v95 = v15;
          _os_log_impl(&dword_22D12F000, v26, OS_LOG_TYPE_INFO, "%{public}@%@", buf, 0x16u);

          analyzers = v72;
        }

        objc_autoreleasePoolPop(v24);
        firstObject2 = [analyzers firstObject];
        state = [firstObject2 state];
        tableColumns = [state tableColumns];

        v31 = objc_autoreleasePoolPush();
        v32 = selfCopy;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = HMFGetLogIdentifier();
          [tableColumns componentsJoinedByString:@" | "];
          v36 = v35 = v4;
          *buf = 138543618;
          v93 = v34;
          v94 = 2112;
          v95 = v36;
          _os_log_impl(&dword_22D12F000, v33, OS_LOG_TYPE_INFO, "%{public}@%@", buf, 0x16u);

          v4 = v35;
        }

        objc_autoreleasePoolPop(v31);
        v73[0] = MEMORY[0x277D85DD0];
        v73[1] = 3221225472;
        v73[2] = __38__HMIVideoAnalyzerScheduler__logState__block_invoke_121;
        v73[3] = &unk_278755038;
        v74 = tableColumns;
        v75 = v32;
        v37 = tableColumns;
        analyzers = v72;
        [v72 na_each:v73];

        v14 = 0x278751000uLL;
      }

      v66 = MEMORY[0x277CBEB38];
      v91[0] = v4;
      v90[0] = @"usage";
      v90[1] = @"idle";
      v38 = MEMORY[0x277CCABB0];
      v70 = +[HMIPreference sharedInstance];
      v69 = [v38 numberWithBool:{objc_msgSend(v70, "isIdle")}];
      v91[1] = v69;
      processInfo2 = [MEMORY[0x277CCAC38] processInfo];
      processName2 = [processInfo2 processName];
      v90[2] = processName2;
      v88[0] = @"footprint";
      v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v81 >> 20];
      v89[0] = v39;
      v88[1] = @"maxFootprint";
      v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v80 >> 20];
      v89[1] = v40;
      v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:2];
      v91[2] = v41;
      v90[3] = @"thermalLevel";
      v42 = MEMORY[0x277CCABB0];
      sharedInstance = [*(v14 + 3488) sharedInstance];
      v44 = [v42 numberWithUnsignedInteger:{objc_msgSend(sharedInstance, "thermalLevel")}];
      v91[3] = v44;
      v90[4] = @"peakPowerPressureLevel";
      v45 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMIVideoAnalyzerScheduler _getPeakPowerPressureLevel](self, "_getPeakPowerPressureLevel")}];
      v91[4] = v45;
      v90[5] = @"build";
      v46 = HMIIsDebug();
      v47 = @"Release";
      if (v46)
      {
        v47 = @"Debug";
      }

      v91[5] = v47;
      v90[6] = @"analyzers";
      v48 = [analyzers na_map:&__block_literal_global_159];
      v91[6] = v48;
      v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v91 forKeys:v90 count:7];
      v50 = [v66 dictionaryWithDictionary:v49];

      v51 = +[HMIPreference sharedInstance];
      v52 = [v51 BOOLPreferenceForKey:@"logOtherProcessMemorySchedulerState" defaultValue:0];

      if (v52)
      {
        v86[0] = @"mediaserverd";
        v84[0] = @"footprint";
        v53 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v77 >> 20];
        v84[1] = @"maxFootprint";
        v85[0] = v53;
        v54 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v76 >> 20];
        v85[1] = v54;
        v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:v84 count:2];
        v86[1] = @"homed";
        v87[0] = v55;
        v82[0] = @"footprint";
        v56 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v79 >> 20];
        v82[1] = @"maxFootprint";
        v83[0] = v56;
        v57 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v78 >> 20];
        v83[1] = v57;
        v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:2];
        v87[1] = v58;
        v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:2];
        [v50 addEntriesFromDictionary:v59];
      }

      v60 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v50 options:0 error:0];
      v61 = objc_autoreleasePoolPush();
      v62 = objc_alloc_init(HMIVideoAnalyzerSchedulerJSONLogger);
      v63 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        v64 = HMFGetLogIdentifier();
        v65 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v60 encoding:4];
        *buf = 138543618;
        v93 = v64;
        v94 = 2112;
        v95 = v65;
        _os_log_impl(&dword_22D12F000, v63, OS_LOG_TYPE_DEFAULT, "%{public}@%@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v61);
      v9 = v71;
      analyzers = v72;
    }

    objc_autoreleasePoolPop(v9);
  }
}

void __38__HMIVideoAnalyzerScheduler__logState__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 state];
  [v2 check];
}

void __38__HMIVideoAnalyzerScheduler__logState__block_invoke_121(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 state];
  v5 = [v4 tableValues];

  v6 = [MEMORY[0x277CBEB18] array];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __38__HMIVideoAnalyzerScheduler__logState__block_invoke_2;
  v16 = &unk_278755010;
  v17 = *(a1 + 32);
  v7 = v6;
  v18 = v7;
  [v5 enumerateObjectsUsingBlock:&v13];
  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 40);
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v7 componentsJoinedByString:{@" | ", v13, v14, v15, v16, v17}];
    *buf = 138543618;
    v20 = v11;
    v21 = 2112;
    v22 = v12;
    _os_log_impl(&dword_22D12F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
}

void __38__HMIVideoAnalyzerScheduler__logState__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  v5 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v6 = [v5 length];

  if ([v11 length] <= v6)
  {
    v8 = [&stru_284057FB8 stringByPaddingToLength:v6 - objc_msgSend(v11 withString:"length") startingAtIndex:{@" ", 0}];
    v9 = *(a1 + 40);
    v10 = [v8 stringByAppendingString:v11];
    [v9 addObject:v10];
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = [v11 substringToIndex:v6];
    [v7 addObject:v8];
  }
}

id __38__HMIVideoAnalyzerScheduler__logState__block_invoke_157(uint64_t a1, void *a2)
{
  v2 = [a2 state];
  v3 = [v2 JSONObject];

  return v3;
}

- (NSArray)analyzers
{
  os_unfair_lock_lock_with_options();
  allObjects = [(NSPointerArray *)self->_internalAnalyzers allObjects];
  os_unfair_lock_unlock(&self->_lock);

  return allObjects;
}

@end