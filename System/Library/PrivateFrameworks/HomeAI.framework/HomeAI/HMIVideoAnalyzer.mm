@interface HMIVideoAnalyzer
+ (id)allowedClasses;
+ (id)analyzerWithConfiguration:(id)configuration identifier:(id)identifier remote:(BOOL)remote error:(id *)error;
+ (id)analyzerWithOptions:(id)options error:(id *)error;
- (BOOL)boosted;
- (BOOL)encode;
- (BOOL)monitored;
- (HMIVideoAnalyzer)initWithConfiguration:(id)configuration identifier:(id)identifier;
- (HMIVideoAnalyzerDelegate)delegate;
- (double)analysisFPS;
- (double)delay;
- (id)finalizeFragmentResult:(id)result homePersonManager:(id)manager analysisStateManager:(id)stateManager;
- (id)logIdentifier;
- (int64_t)decodeMode;
- (void)analyzeFragment:(id)fragment configuration:(id)configuration;
- (void)cancel;
- (void)dealloc;
- (void)finishWithCompletionHandler:(id)handler;
- (void)flush;
- (void)flushAsync;
- (void)handleAssetData:(id)data withOptions:(id)options completionHandler:(id)handler;
- (void)handleMessageWithOptions:(id)options completionHandler:(id)handler;
- (void)setAnalysisFPS:(double)s;
- (void)setBoosted:(BOOL)boosted;
- (void)setDecodeMode:(int64_t)mode;
- (void)setEncode:(BOOL)encode;
- (void)setMonitored:(BOOL)monitored;
@end

@implementation HMIVideoAnalyzer

+ (id)allowedClasses
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v6 count:17];
  v4 = [v2 setWithArray:{v3, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21}];

  return v4;
}

+ (id)analyzerWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v7 = [optionsCopy objectForKeyedSubscript:@"configuration"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (!v9)
  {
    +[HMIVideoAnalyzer analyzerWithOptions:error:];
LABEL_13:
    v15 = [HMICamera initWithIdentifier:name:manufacturer:model:firmwareVersion:hasBattery:];
    return [(HMIVideoAnalyzer *)v15 analyzerWithConfiguration:v16 identifier:v17 error:v18, v19];
  }

  v10 = [optionsCopy objectForKeyedSubscript:@"identifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = [self analyzerWithConfiguration:v9 identifier:v12 remote:0 error:error];

  return v13;
}

+ (id)analyzerWithConfiguration:(id)configuration identifier:(id)identifier remote:(BOOL)remote error:(id *)error
{
  remoteCopy = remote;
  v27 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  identifierCopy = identifier;
  if (remoteCopy)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543874;
      v22 = v14;
      v23 = 2112;
      v24 = identifierCopy;
      v25 = 2112;
      v26 = configurationCopy;
      _os_log_impl(&dword_22D12F000, v13, OS_LOG_TYPE_INFO, "%{public}@Creating analyzer with identifier: %@, configuration: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [[HMIVideoAnalyzerClient alloc] initWithConfiguration:configurationCopy identifier:identifierCopy];
  }

  else
  {
    v16 = +[HMIVideoAnalyzerScheduler sharedInstance];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __70__HMIVideoAnalyzer_analyzerWithConfiguration_identifier_remote_error___block_invoke;
    v18[3] = &unk_278755CD0;
    selfCopy2 = self;
    v19 = identifierCopy;
    v15 = [v16 analyzerWithConfiguration:configurationCopy block:v18];
  }

  return v15;
}

HMIVideoAnalyzerServer *__70__HMIVideoAnalyzer_analyzerWithConfiguration_identifier_remote_error___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 40);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 32);
    v11 = 138543874;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_22D12F000, v6, OS_LOG_TYPE_INFO, "%{public}@Creating analyzer with identifier: %@, configuration: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = [[HMIVideoAnalyzerServer alloc] initWithConfiguration:v3 identifier:*(a1 + 32)];

  return v9;
}

- (HMIVideoAnalyzer)initWithConfiguration:(id)configuration identifier:(id)identifier
{
  configurationCopy = configuration;
  identifierCopy = identifier;
  v20.receiver = self;
  v20.super_class = HMIVideoAnalyzer;
  v9 = [(HMIVideoAnalyzer *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configuration, configuration);
    objc_storeStrong(&v10->_identifier, identifier);
    if ([configurationCopy saveAnalyzerResultsToDisk])
    {
      v11 = objc_alloc_init(MEMORY[0x277CCA968]);
      [v11 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
      v12 = [MEMORY[0x277CBEAA8] now];
      v13 = [v11 stringFromDate:v12];

      v14 = MEMORY[0x277CCACA8];
      uUIDString = [identifierCopy UUIDString];
      v16 = [v14 stringWithFormat:@"VideoAnalyzerReport %@ %@", v13, uUIDString];

      v17 = [[HMIVideoAnalyzerMutableReport alloc] initWithName:v16];
      report = v10->_report;
      v10->_report = v17;
    }
  }

  return v10;
}

- (void)dealloc
{
  v19 = *MEMORY[0x277D85DE8];
  report = [(HMIVideoAnalyzer *)self report];

  if (report)
  {
    v4 = MEMORY[0x277CCACA8];
    report2 = [(HMIVideoAnalyzer *)self report];
    name = [report2 name];
    v7 = [v4 stringWithFormat:@"/tmp/%@.plist", name];

    report3 = [(HMIVideoAnalyzer *)self report];
    data = [report3 data];
    [data writeToFile:v7 atomically:1];

    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v16 = v13;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_22D12F000, v12, OS_LOG_TYPE_INFO, "%{public}@VideoAnalyzerReport saved (%@)", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14.receiver = self;
  v14.super_class = HMIVideoAnalyzer;
  [(HMIVideoAnalyzer *)&v14 dealloc];
}

- (void)handleAssetData:(id)data withOptions:(id)options completionHandler:(id)handler
{
  dataCopy = data;
  optionsCopy = options;
  handlerCopy = handler;
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = NSStringFromSelector(a2);
  v15 = [v13 stringWithFormat:@"%@ is unavailable", v14];
  v16 = [v11 exceptionWithName:v12 reason:v15 userInfo:0];
  v17 = v16;

  objc_exception_throw(v16);
}

- (void)handleMessageWithOptions:(id)options completionHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"You must override %@ in a subclass", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (double)delay
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)analyzeFragment:(id)fragment configuration:(id)configuration
{
  fragmentCopy = fragment;
  configurationCopy = configuration;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"You must override %@ in a subclass", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)flush
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)flushAsync
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)finishWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)cancel
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)setAnalysisFPS:(double)s
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = MEMORY[0x277CCACA8];
  v6 = NSStringFromSelector(a2);
  v7 = [v5 stringWithFormat:@"You must override %@ in a subclass", v6];
  v8 = [v3 exceptionWithName:v4 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (void)setMonitored:(BOOL)monitored
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = MEMORY[0x277CCACA8];
  v6 = NSStringFromSelector(a2);
  v7 = [v5 stringWithFormat:@"You must override %@ in a subclass", v6];
  v8 = [v3 exceptionWithName:v4 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (void)setEncode:(BOOL)encode
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = MEMORY[0x277CCACA8];
  v6 = NSStringFromSelector(a2);
  v7 = [v5 stringWithFormat:@"You must override %@ in a subclass", v6];
  v8 = [v3 exceptionWithName:v4 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (void)setDecodeMode:(int64_t)mode
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = MEMORY[0x277CCACA8];
  v6 = NSStringFromSelector(a2);
  v7 = [v5 stringWithFormat:@"You must override %@ in a subclass", v6];
  v8 = [v3 exceptionWithName:v4 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (void)setBoosted:(BOOL)boosted
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = MEMORY[0x277CCACA8];
  v6 = NSStringFromSelector(a2);
  v7 = [v5 stringWithFormat:@"You must override %@ in a subclass", v6];
  v8 = [v3 exceptionWithName:v4 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (BOOL)encode
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (BOOL)monitored
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (double)analysisFPS
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (int64_t)decodeMode
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (BOOL)boosted
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (id)finalizeFragmentResult:(id)result homePersonManager:(id)manager analysisStateManager:(id)stateManager
{
  resultCopy = result;
  managerCopy = manager;
  stateManagerCopy = stateManager;
  if (resultCopy)
  {
    v11 = stateManagerCopy;
    v12 = +[HMIPreference sharedInstance];
    v13 = [v12 BOOLPreferenceForKey:@"uploadVideoAnalysisEvent" defaultValue:1];

    if (managerCopy)
    {
      frameResults = [resultCopy frameResults];
      v15 = [frameResults na_flatMap:&__block_literal_global_40];

      v16 = [MEMORY[0x277CBEB98] setWithArray:v15];
      [managerCopy handleNewFaceEvents:v16];

      if (v13)
      {
        v26 = MEMORY[0x277D85DD0];
        v27 = 3221225472;
        v28 = __82__HMIVideoAnalyzer_finalizeFragmentResult_homePersonManager_analysisStateManager___block_invoke_3;
        v29 = &unk_278755CF8;
        v30 = managerCopy;
        selfCopy = self;
        [v15 na_each:&v26];
      }
    }

    [HMIAnalytics sendEventsForFragmentResult:resultCopy, v26, v27, v28, v29];
    report = [(HMIVideoAnalyzer *)self report];

    if (report)
    {
      report2 = [(HMIVideoAnalyzer *)self report];
      identifier = [(HMIVideoAnalyzer *)self identifier];
      uUIDString = [identifier UUIDString];
      v21 = [uUIDString substringToIndex:4];
      identifier2 = [(HMIVideoAnalyzer *)self identifier];
      uUIDString2 = [identifier2 UUIDString];
      [report2 appendFragmentResult:resultCopy forKey:v21 source:uUIDString2 redactFrames:0];
    }

    return resultCopy;
  }

  else
  {
    v25 = [HMIVideoAnalyzer finalizeFragmentResult:homePersonManager:analysisStateManager:];
    return __82__HMIVideoAnalyzer_finalizeFragmentResult_homePersonManager_analysisStateManager___block_invoke(v25);
  }
}

id __82__HMIVideoAnalyzer_finalizeFragmentResult_homePersonManager_analysisStateManager___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 events];
  v3 = [v2 na_map:&__block_literal_global_58_0];
  v4 = [v3 allObjects];

  return v4;
}

id __82__HMIVideoAnalyzer_finalizeFragmentResult_homePersonManager_analysisStateManager___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 face];

    if (v6)
    {
      v6 = [v5 face];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __82__HMIVideoAnalyzer_finalizeFragmentResult_homePersonManager_analysisStateManager___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = [v3 UUID];
  v5 = [*(a1 + 40) configuration];
  v6 = [v5 camera];
  [HMIAnalytics videoAnalyzerDidFindFaceEvent:v4 homePersonManagerUUID:v7 camera:v6];
}

- (id)logIdentifier
{
  identifier = [(HMIVideoAnalyzer *)self identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (HMIVideoAnalyzerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end